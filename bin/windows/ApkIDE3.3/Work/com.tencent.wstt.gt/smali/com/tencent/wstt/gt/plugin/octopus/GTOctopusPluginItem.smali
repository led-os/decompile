.class public Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusPluginItem;
.super Lcom/tencent/wstt/gt/plugin/PluginItem;
.source "GTOctopusPluginItem.java"


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    .line 33
    const-string v1, "octopus"

    .line 34
    invoke-static {}, Lcom/tencent/wstt/gt/GTApp;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0900f5

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 35
    invoke-static {}, Lcom/tencent/wstt/gt/GTApp;->getContext()Landroid/content/Context;

    move-result-object v0

    const v3, 0x7f0900f6

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 36
    const v4, 0x7f02004f

    .line 37
    const-class v5, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusActivity;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/tencent/wstt/gt/plugin/PluginItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Class;)V

    .line 39
    invoke-static {}, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusEngine;->getInstance()Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusEngine;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/wstt/gt/plugin/octopus/GTOctopusPluginItem;->setTaskExecutor(Lcom/tencent/wstt/gt/plugin/PluginTaskExecutor;)V

    .line 40
    return-void
.end method
