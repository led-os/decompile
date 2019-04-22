/**
 * Copyright (c) Facebook, Inc. and its affiliates.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 */

#include <gtest/gtest.h>

#include "ControlFlow.h"
#include "IRAssembler.h"
#include "IRCode.h"
#include "ResultPropagation.h"

const DexMethodRef* get_invoked_method(cfg::ControlFlowGraph* cfg) {
  auto iterable = cfg::InstructionIterable(*cfg);
  for (auto it = iterable.begin(); it != iterable.end(); ++it) {
    if (is_invoke(it->insn->opcode())) {
      return it->insn->get_method();
    }
  }
  always_assert_log(false, "can't find invoke in %s", SHOW(*cfg));
}

void test_get_return_param_index(const std::string& code_str,
                                 boost::optional<ParamIndex> expected) {
  g_redex = new RedexContext();

  auto code = assembler::ircode_from_string(code_str);
  code->build_cfg(true);
  auto& cfg = code->cfg();

  method_override_graph::Graph graph;
  ReturnParamResolver resolver(graph);
  std::unordered_map<const DexMethod*, ParamIndex>
      methods_which_return_parameter;
  auto const actual =
      resolver.get_return_param_index(cfg, methods_which_return_parameter);

  EXPECT_EQ(expected, actual);

  delete g_redex;
};

TEST(CFGInliner, trivial) {
  const auto& code_str = R"(
    (
      (return-void)
    )
  )";
  test_get_return_param_index(code_str, boost::none);
}

TEST(CFGInliner, return_non_param) {
  const auto& code_str = R"(
    (
      (const v0 1)
      (return v0)
    )
  )";
  test_get_return_param_index(code_str, boost::none);
}

TEST(CFGInliner, return_first_param) {
  const auto& code_str = R"(
    (
      (load-param v0)
      (return v0)
    )
  )";
  test_get_return_param_index(code_str, 0);
}

TEST(CFGInliner, return_second_param) {
  const auto& code_str = R"(
    (
      (load-param v0)
      (load-param v1)
      (return v1)
    )
  )";
  test_get_return_param_index(code_str, 1);
}

TEST(CFGInliner, return_first_param_after_move) {
  const auto& code_str = R"(
    (
      (load-param v0)
      (move v1 v0)
      (return v1)
    )
  )";
  test_get_return_param_index(code_str, 0);
}

TEST(CFGInliner, return_second_param_wide) {
  const auto& code_str = R"(
    (
      (load-param-wide v0)
      (load-param-wide v1)
      (return-wide v1)
    )
  )";
  test_get_return_param_index(code_str, 1);
}

TEST(CFGInliner, return_second_param_wide_after_move) {
  const auto& code_str = R"(
    (
      (load-param-wide v0)
      (load-param-wide v1)
      (move-wide v2 v1)
      (return-wide v2)
    )
  )";
  test_get_return_param_index(code_str, 1);
}

TEST(CFGInliner, return_second_param_wide_clobbered) {
  const auto& code_str = R"(
    (
      (load-param v0)
      (load-param-wide v1)
      (move v2 v0)
      (return-wide v1)
    )
  )";
  test_get_return_param_index(code_str, boost::none);
}

TEST(CFGInliner, return_check_cast) {
  const auto& code_str = R"(
    (
      (load-param-object v0)
      (check-cast v0 "LFoo;")
      (move-result-pseudo-object v1)
      (return-object v1)
    )
  )";
  test_get_return_param_index(code_str, 0);
}

TEST(CFGInliner, return_unknown_invoke) {
  const auto& code_str = R"(
    (
      (load-param v0)
      (invoke-static (v0) "LCls;.foo:(I)V")
      (move-result v1)
      (return v1)
    )
  )";
  test_get_return_param_index(code_str, boost::none);
}

TEST(CFGInliner, return_unknown_irrelevant_invoke) {
  const auto& code_str = R"(
    (
      (load-param v0)
      (const v0 1)
      (invoke-static (v0) "LCls;.foo:(I)V")
      (move-result v1)
      (return v1)
    )
  )";
  test_get_return_param_index(code_str, boost::none);
}

TEST(CFGInliner, return_receiver_of_framework_method) {
  const auto& code_str = R"(
    (
      (load-param-object v0)
      (const v1 "foo")
      (invoke-virtual (v0 v1) "Ljava/lang/StringBuilder;.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;")
      (move-result v2)
      (return v2)
    )
  )";
  test_get_return_param_index(code_str, 0);
}
