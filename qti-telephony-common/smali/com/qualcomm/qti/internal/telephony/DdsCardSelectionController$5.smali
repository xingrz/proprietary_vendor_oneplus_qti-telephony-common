.class Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$5;
.super Landroid/content/BroadcastReceiver;
.source "DdsCardSelectionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;


# direct methods
.method constructor <init>(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)V
    .locals 0

    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$5;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iget-object v6, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$5;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    iget-object v6, v6, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v6}, Landroid/media/AudioManager;->getMode()I

    move-result v3

    const-string/jumbo v6, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$5;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    const-wide/16 v8, 0x1770

    invoke-static {v6, v8, v9}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap3(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;J)V

    iget-object v6, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$5;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    invoke-static {v6}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-get6(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)Landroid/os/Handler;

    move-result-object v6

    const/16 v7, 0x1d

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v6, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$5;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    invoke-static {v6}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-get6(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)Landroid/os/Handler;

    move-result-object v6

    iget-object v7, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$5;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    invoke-static {v7}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-get6(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)Landroid/os/Handler;

    move-result-object v7

    const/16 v8, 0x1d

    const/4 v9, 0x1

    const/4 v10, 0x1

    invoke-virtual {v7, v8, v9, v10}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v7

    const-wide/16 v8, 0x2710

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-get2()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$5;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    invoke-static {v6}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-get6(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)Landroid/os/Handler;

    move-result-object v6

    const/16 v7, 0x1f

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v6, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$5;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    invoke-static {v6}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-get6(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)Landroid/os/Handler;

    move-result-object v6

    iget-object v7, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$5;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    invoke-static {v7}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-get6(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)Landroid/os/Handler;

    move-result-object v7

    const/16 v8, 0x1f

    const/4 v9, 0x1

    const/4 v10, 0x1

    invoke-virtual {v7, v8, v9, v10}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v7

    const-wide/16 v8, 0xbb8

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v6, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$5;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    const-wide/16 v8, 0x1770

    invoke-static {v6, v8, v9}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap3(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;J)V

    iget-object v6, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$5;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    invoke-static {v6}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-get6(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)Landroid/os/Handler;

    move-result-object v6

    const/16 v7, 0x1d

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v6, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$5;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    invoke-static {v6}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-get6(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)Landroid/os/Handler;

    move-result-object v6

    iget-object v7, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$5;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    invoke-static {v7}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-get6(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)Landroid/os/Handler;

    move-result-object v7

    const/16 v8, 0x1d

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v7

    const-wide/16 v8, 0x7530

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-get2()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$5;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    invoke-static {v6}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-get6(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)Landroid/os/Handler;

    move-result-object v6

    const/16 v7, 0x1f

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v6, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$5;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    invoke-static {v6}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-get6(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)Landroid/os/Handler;

    move-result-object v6

    iget-object v7, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$5;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    invoke-static {v7}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-get6(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)Landroid/os/Handler;

    move-result-object v7

    const/16 v8, 0x1f

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v7

    const-wide/16 v8, 0xbb8

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_2
    const-string/jumbo v6, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string/jumbo v6, "availableArray"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    const-string/jumbo v6, "tetherArray"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v6, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$5;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    invoke-static {v6}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-get6(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)Landroid/os/Handler;

    move-result-object v6

    iget-object v7, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$5;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    invoke-static {v7}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-get6(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)Landroid/os/Handler;

    move-result-object v7

    new-instance v8, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$TetherStateChange;

    iget-object v9, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$5;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    invoke-direct {v8, v9, v2, v1}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$TetherStateChange;-><init>(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    const/16 v9, 0x19

    invoke-virtual {v7, v9, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_3
    const-string/jumbo v6, "qualcomm.intent.action.ACTION_MCFG_MBN_DONE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$5;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    invoke-static {v6}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-get6(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)Landroid/os/Handler;

    move-result-object v6

    const/16 v7, 0x17

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v6, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$5;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    invoke-static {v6}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-get6(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)Landroid/os/Handler;

    move-result-object v6

    iget-object v7, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$5;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    invoke-static {v7}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-get6(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)Landroid/os/Handler;

    move-result-object v7

    const/16 v8, 0x17

    invoke-virtual {v7, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    const-wide/16 v8, 0xfa0

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    :cond_4
    const-string/jumbo v6, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string/jumbo v6, "ss"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "phone"

    const/4 v7, -0x1

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const/4 v6, -0x1

    if-ne v4, v6, :cond_5

    return-void

    :cond_5
    iget-object v6, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$5;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "phoneId "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "   sim_state "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap9(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$5;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    invoke-static {v6}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-get5(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    move-result-object v6

    aget-object v6, v6, v4

    const/4 v7, 0x0

    iput-boolean v7, v6, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;->isPinLocked:Z

    const-string/jumbo v6, "READY"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$5;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    invoke-static {v6}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-get6(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)Landroid/os/Handler;

    move-result-object v6

    iget-object v7, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$5;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    invoke-static {v7}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-get6(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)Landroid/os/Handler;

    move-result-object v7

    const/16 v8, 0x16

    const/4 v9, -0x1

    invoke-virtual {v7, v8, v4, v9}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v6, "LOADED"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$5;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    invoke-static {v6}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-get6(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)Landroid/os/Handler;

    move-result-object v6

    iget-object v7, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$5;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    invoke-static {v7}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-get6(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)Landroid/os/Handler;

    move-result-object v7

    const/16 v8, 0x18

    const/4 v9, -0x1

    invoke-virtual {v7, v8, v4, v9}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v6, "ABSENT"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$5;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v6, v4, v7, v8}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap16(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;IILjava/lang/String;)V

    const/4 v6, 0x1

    invoke-static {v6}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-set0(Z)Z

    const/4 v6, 0x0

    invoke-static {v6}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-set1(Z)Z

    goto/16 :goto_0

    :cond_8
    const-string/jumbo v6, "LOCKED"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$5;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    invoke-static {v6}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-get5(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    move-result-object v6

    aget-object v6, v6, v4

    const/4 v7, 0x1

    iput-boolean v7, v6, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;->isPinLocked:Z

    goto/16 :goto_0
.end method
