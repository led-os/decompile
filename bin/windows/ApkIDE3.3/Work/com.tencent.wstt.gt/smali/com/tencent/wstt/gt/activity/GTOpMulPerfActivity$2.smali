.class Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$2;
.super Ljava/lang/Object;
.source "GTOpMulPerfActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;


# direct methods
.method constructor <init>(Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$2;->this$0:Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;

    .line 503
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$2;)Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;
    .locals 1

    .prologue
    .line 503
    iget-object v0, p0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$2;->this$0:Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 506
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$2;->this$0:Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;

    # getter for: Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->dataSet:Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->access$6(Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;)Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$2;->this$0:Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;

    # getter for: Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->dataSet:Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->access$6(Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;)Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getSubTagEntrys()[Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_0

    .line 507
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$2;->this$0:Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;

    # getter for: Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->dataSet:Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;
    invoke-static {v1}, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->access$6(Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;)Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getSubTagEntrys()[Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/tencent/wstt/gt/ui/model/TagTimeEntry;->getRecordSize()I

    move-result v1

    if-nez v1, :cond_1

    .line 550
    :cond_0
    :goto_0
    return-void

    .line 512
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$2;->this$0:Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 513
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$2;->this$0:Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;

    const v2, 0x7f09006f

    invoke-virtual {v1, v2}, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 514
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$2;->this$0:Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;

    const v2, 0x7f09006e

    invoke-virtual {v1, v2}, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 515
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$2;->this$0:Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;

    const v2, 0x7f090071

    invoke-virtual {v1, v2}, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 516
    new-instance v2, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$2$1;

    invoke-direct {v2, p0}, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$2$1;-><init>(Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$2;)V

    .line 515
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 523
    iget-object v1, p0, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$2;->this$0:Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;

    const v2, 0x7f090070

    invoke-virtual {v1, v2}, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 524
    new-instance v2, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$2$2;

    invoke-direct {v2, p0}, Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$2$2;-><init>(Lcom/tencent/wstt/gt/activity/GTOpMulPerfActivity$2;)V

    .line 523
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 549
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method
