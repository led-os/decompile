.class public Lcom/tencent/wstt/gt/plugin/screenlock/ScreenlockPluginItem;
.super Lcom/tencent/wstt/gt/plugin/PluginItem;
.source "ScreenlockPluginItem.java"


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    .line 34
    const-string v1, "screekLock"

    .line 35
    invoke-static {}, Lcom/tencent/wstt/gt/GTApp;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0900d6

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 36
    invoke-static {}, Lcom/tencent/wstt/gt/GTApp;->getContext()Landroid/content/Context;

    move-result-object v0

    const v3, 0x7f0900d7

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 37
    const v4, 0x7f020058

    .line 38
    const-class v5, Lcom/tencent/wstt/gt/plugin/screenlock/GTScreenlockActivity;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/tencent/wstt/gt/plugin/PluginItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Class;)V

    .line 39
    return-void
.end method
