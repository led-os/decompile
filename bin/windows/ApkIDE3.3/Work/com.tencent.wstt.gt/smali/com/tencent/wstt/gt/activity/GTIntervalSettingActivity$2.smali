.class Lcom/tencent/wstt/gt/activity/GTIntervalSettingActivity$2;
.super Ljava/lang/Object;
.source "GTIntervalSettingActivity.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wstt/gt/activity/GTIntervalSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wstt/gt/activity/GTIntervalSettingActivity;


# direct methods
.method constructor <init>(Lcom/tencent/wstt/gt/activity/GTIntervalSettingActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/wstt/gt/activity/GTIntervalSettingActivity$2;->this$0:Lcom/tencent/wstt/gt/activity/GTIntervalSettingActivity;

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 8
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 116
    iget-object v2, p0, Lcom/tencent/wstt/gt/activity/GTIntervalSettingActivity$2;->this$0:Lcom/tencent/wstt/gt/activity/GTIntervalSettingActivity;

    # getter for: Lcom/tencent/wstt/gt/activity/GTIntervalSettingActivity;->sb_refresh_FPS:Landroid/widget/SeekBar;
    invoke-static {v2}, Lcom/tencent/wstt/gt/activity/GTIntervalSettingActivity;->access$6(Lcom/tencent/wstt/gt/activity/GTIntervalSettingActivity;)Landroid/widget/SeekBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    invoke-static {v2}, Lcom/tencent/wstt/gt/activity/GTIntervalSettingActivity;->access$7(I)V

    .line 117
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/tencent/wstt/gt/activity/GTIntervalSettingActivity;->access$8(F)V

    .line 118
    const/4 v1, 0x5

    .line 119
    .local v1, "interval":I
    # getter for: Lcom/tencent/wstt/gt/activity/GTIntervalSettingActivity;->pos_FPS:I
    invoke-static {}, Lcom/tencent/wstt/gt/activity/GTIntervalSettingActivity;->access$9()I

    move-result v2

    div-int v0, v2, v1

    .line 120
    .local v0, "cnt":I
    const/16 v2, 0x9

    if-gt v0, v2, :cond_1

    .line 121
    mul-int/lit8 v2, v0, 0x1

    rsub-int/lit8 v2, v2, 0xa

    int-to-float v2, v2

    invoke-static {v2}, Lcom/tencent/wstt/gt/activity/GTIntervalSettingActivity;->access$8(F)V

    .line 128
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/tencent/wstt/gt/activity/GTIntervalSettingActivity$2;->this$0:Lcom/tencent/wstt/gt/activity/GTIntervalSettingActivity;

    # getter for: Lcom/tencent/wstt/gt/activity/GTIntervalSettingActivity;->tv_op_refresh_inter_time_FPS:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/tencent/wstt/gt/activity/GTIntervalSettingActivity;->access$11(Lcom/tencent/wstt/gt/activity/GTIntervalSettingActivity;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/tencent/wstt/gt/activity/GTIntervalSettingActivity$2;->this$0:Lcom/tencent/wstt/gt/activity/GTIntervalSettingActivity;

    const v5, 0x7f090062

    invoke-virtual {v4, v5}, Lcom/tencent/wstt/gt/activity/GTIntervalSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    # getter for: Lcom/tencent/wstt/gt/activity/GTIntervalSettingActivity;->second_FPS:F
    invoke-static {}, Lcom/tencent/wstt/gt/activity/GTIntervalSettingActivity;->access$10()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "s"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    # getter for: Lcom/tencent/wstt/gt/activity/GTIntervalSettingActivity;->second_FPS:F
    invoke-static {}, Lcom/tencent/wstt/gt/activity/GTIntervalSettingActivity;->access$10()F

    move-result v2

    const/high16 v3, 0x447a0000    # 1000.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sput v2, Lcom/tencent/wstt/gt/activity/GTIntervalSettingActivity;->msecond_FPS:I

    .line 130
    invoke-static {}, Lcom/tencent/wstt/gt/dao/GTPref;->getGTPref()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "interval_fps"

    sget v4, Lcom/tencent/wstt/gt/activity/GTIntervalSettingActivity;->msecond_FPS:I

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 131
    invoke-static {}, Lcom/tencent/wstt/gt/dao/GTPref;->getGTPref()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "interval_fps_pos"

    # getter for: Lcom/tencent/wstt/gt/activity/GTIntervalSettingActivity;->pos_FPS:I
    invoke-static {}, Lcom/tencent/wstt/gt/activity/GTIntervalSettingActivity;->access$9()I

    move-result v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 132
    return-void

    .line 123
    :cond_1
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-wide v4, 0x3fb999999999999aL    # 0.1

    add-int/lit8 v6, v0, -0xa

    int-to-double v6, v6

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    double-to-float v2, v2

    invoke-static {v2}, Lcom/tencent/wstt/gt/activity/GTIntervalSettingActivity;->access$8(F)V

    .line 124
    # getter for: Lcom/tencent/wstt/gt/activity/GTIntervalSettingActivity;->second_FPS:F
    invoke-static {}, Lcom/tencent/wstt/gt/activity/GTIntervalSettingActivity;->access$10()F

    move-result v2

    const v3, 0x3e4ccccd    # 0.2f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 125
    const v2, 0x3dcccccd    # 0.1f

    invoke-static {v2}, Lcom/tencent/wstt/gt/activity/GTIntervalSettingActivity;->access$8(F)V

    goto/16 :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 140
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 136
    return-void
.end method
