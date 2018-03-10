.class Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;
.super Landroid/os/Handler;
.source "DdsCardSelectionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;


# direct methods
.method public constructor <init>(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 20

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v16, v0

    packed-switch v16, :pswitch_data_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v16, v0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "not support this handle msg.what = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap9(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Ljava/lang/String;

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap6(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;ILjava/lang/String;)V

    goto :goto_0

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->handleSimAbsentforSelectMultiMode(I)V

    goto :goto_0

    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v16, v0

    const-string/jumbo v17, "oem EVENT_RADIO_NOT_AVAILABLE recv "

    invoke-static/range {v16 .. v17}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap9(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    iget-object v9, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-get5(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    move-result-object v16

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v17

    aget-object v16, v16, v17

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;->isCardReady:Z

    goto :goto_0

    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v16, v0

    const-string/jumbo v17, "oem EVENT_GET_ICC_STATUS_DONE recv "

    invoke-static/range {v16 .. v17}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap9(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v16, v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v4, v1}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap12(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;Landroid/os/AsyncResult;Ljava/lang/Integer;)V

    goto/16 :goto_0

    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap8(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)V

    goto/16 :goto_0

    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v16, v0

    const-string/jumbo v17, "oem EVENT_SET_GW_PERF_DONE recv "

    invoke-static/range {v16 .. v17}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap9(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v16, v0

    const/16 v17, 0x12

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v16

    move/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v14

    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-get9()Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;

    move-result-object v16

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v17, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v18, v0

    move-object/from16 v0, v16

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2, v14}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->setPreferredNetworkType(IILandroid/os/Message;)V

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v17, v0

    rsub-int/lit8 v17, v17, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v0, v4, v1}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->handleEX(Landroid/os/AsyncResult;I)V

    goto/16 :goto_0

    :pswitch_6
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    iget-object v9, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-get3(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v16

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v17

    aget-object v16, v16, v17

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v17

    const/16 v18, 0x11

    const/16 v19, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v17

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v17

    invoke-interface/range {v16 .. v17}, Lcom/android/internal/telephony/CommandsInterface;->getRadioCapability(Landroid/os/Message;)V

    goto/16 :goto_0

    :pswitch_7
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    iget-object v12, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v12, Lcom/android/internal/telephony/RadioCapability;

    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v16, v0

    if-eqz v16, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v16, v0

    const-string/jumbo v17, "get phone radio capability fail,no need to change RadioCapability"

    invoke-static/range {v16 .. v17}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap10(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-get10(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)[Lcom/android/internal/telephony/RadioCapability;

    move-result-object v16

    invoke-virtual {v12}, Lcom/android/internal/telephony/RadioCapability;->getPhoneId()I

    move-result v17

    aput-object v12, v16, v17

    goto/16 :goto_0

    :pswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v16, v0

    const-string/jumbo v17, "EVENT_PRI_PERF_DONE recv "

    invoke-static/range {v16 .. v17}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap9(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap11(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)V

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v17, v0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v0, v4, v1}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->handleEX(Landroid/os/AsyncResult;I)V

    goto/16 :goto_0

    :pswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v16, v0

    const-string/jumbo v17, "EVENT_TEST_CARD_DETECT recv "

    invoke-static/range {v16 .. v17}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap9(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-get8(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)Z

    move-result v16

    if-eqz v16, :cond_3

    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-get1()Z

    move-result v16

    xor-int/lit8 v16, v16, 0x1

    if-eqz v16, :cond_3

    const/16 v16, 0x1

    invoke-static/range {v16 .. v16}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-set1(Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-get7(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)Lcom/qualcomm/qcrilhook/QcRilHook;

    move-result-object v16

    sget-object v17, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;->AP_2_MODEM_SET_ANTENNA:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [B

    move-object/from16 v18, v0

    fill-array-data v18, :array_0

    const/16 v19, 0x2

    invoke-virtual/range {v16 .. v19}, Lcom/qualcomm/qcrilhook/QcRilHook;->oemAPSendRequest2Modem(Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;[BI)Landroid/os/AsyncResult;

    move-result-object v4

    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-set3(I)I

    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v16, v0

    if-eqz v16, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v16, v0

    const-string/jumbo v17, "switch Antenna failed, retry it"

    invoke-static/range {v16 .. v17}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap10(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;Ljava/lang/String;)V

    const/16 v16, 0x14

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v16, 0x64

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, v16

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    :cond_2
    const/16 v16, 0x15

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v16, 0x1f4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, v16

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    :cond_3
    const/16 v16, 0x13

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v16, 0x3e8

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, v16

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    :pswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v16, v0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "EVENT_ANTENNA_SWITCH_RETRY recv  retry_times "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-get11()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap9(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-get7(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)Lcom/qualcomm/qcrilhook/QcRilHook;

    move-result-object v16

    sget-object v17, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;->AP_2_MODEM_SET_ANTENNA:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [B

    move-object/from16 v18, v0

    fill-array-data v18, :array_1

    const/16 v19, 0x2

    invoke-virtual/range {v16 .. v19}, Lcom/qualcomm/qcrilhook/QcRilHook;->oemAPSendRequest2Modem(Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;[BI)Landroid/os/AsyncResult;

    move-result-object v4

    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v16, v0

    if-eqz v16, :cond_5

    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-get11()I

    move-result v16

    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v16, v0

    const-string/jumbo v17, "retry switch Antenna failed, again retry"

    invoke-static/range {v16 .. v17}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap10(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;Ljava/lang/String;)V

    const/16 v16, 0x14

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v16, 0x64

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, v16

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_4
    :goto_1
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-get11()I

    move-result v16

    add-int/lit8 v16, v16, 0x1

    invoke-static/range {v16 .. v16}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-set3(I)I

    goto/16 :goto_0

    :cond_5
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-get11()I

    move-result v16

    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_4

    const/16 v16, 0x15

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v16, 0x1f4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, v16

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    :pswitch_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v16, v0

    const-string/jumbo v17, "EVENT_GET_ANTENNA_POS recv "

    invoke-static/range {v16 .. v17}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap9(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-get7(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)Lcom/qualcomm/qcrilhook/QcRilHook;

    move-result-object v16

    sget-object v17, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;->AP_2_MODEM_GET_ANTENNA_POS:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [B

    move-object/from16 v18, v0

    fill-array-data v18, :array_2

    const/16 v19, 0x2

    invoke-virtual/range {v16 .. v19}, Lcom/qualcomm/qcrilhook/QcRilHook;->oemAPSendRequest2Modem(Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;[BI)Landroid/os/AsyncResult;

    move-result-object v4

    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v16, v0

    if-eqz v16, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v16, v0

    const-string/jumbo v17, "retry switch Antenna failed, again retry"

    invoke-static/range {v16 .. v17}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap10(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;Ljava/lang/String;)V

    const/16 v16, 0x14

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v16, 0x64

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, v16

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    :cond_6
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v16, v0

    if-eqz v16, :cond_0

    iget-object v5, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [B

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v16, v0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "current antenna pos status is "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v18, 0x0

    aget-byte v18, v5, v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap9(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;Ljava/lang/String;)V

    const/16 v16, 0x0

    aget-byte v16, v5, v16

    if-eqz v16, :cond_0

    const/16 v16, 0x14

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v16, 0x64

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, v16

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    :pswitch_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v16, v0

    const-string/jumbo v17, "EVENT_SIM_STATUS_CHANGE recv "

    invoke-static/range {v16 .. v17}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap9(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v17, v0

    invoke-static/range {v16 .. v17}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap14(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;I)V

    goto/16 :goto_0

    :pswitch_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v16, v0

    const-string/jumbo v17, "EVENT_MBN_ACTIVATED_DONE recv "

    invoke-static/range {v16 .. v17}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap9(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap13(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)V

    goto/16 :goto_0

    :pswitch_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v16, v0

    const-string/jumbo v17, "EVENT_SIM_LOADED_DONE recv "

    invoke-static/range {v16 .. v17}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap9(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;Ljava/lang/String;)V

    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->getPrevPrimaryPhoneId()I

    move-result v10

    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Lcom/android/internal/telephony/SubscriptionController;->getSubId(I)[I

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v16, v0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "EVENT_SIM_LOADED_DONE dataSubId = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, " primaryPhoneId = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, " primarySubId = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v18, 0x0

    aget v18, v11, v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap9(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;Ljava/lang/String;)V

    const/16 v16, 0x0

    aget v16, v11, v16

    move/from16 v0, v16

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap5(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)V

    goto/16 :goto_0

    :pswitch_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v16, v0

    const-string/jumbo v17, "OEM_EVENT_TETHER_STATE_CHANGE receive"

    invoke-static/range {v16 .. v17}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap9(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v15, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$TetherStateChange;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v17, v0

    iget-object v0, v15, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$TetherStateChange;->active:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-static/range {v17 .. v18}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap2(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;Ljava/util/ArrayList;)Z

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isWifiHotOpen:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v16, v0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "OEM_EVENT_TETHER_STATE_CHANGE receive isWifiHotOpen = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isWifiHotOpen:Z

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap9(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap7(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)V

    goto/16 :goto_0

    :pswitch_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v16, v0

    const-string/jumbo v17, "EVENT_PSENSOR_CHANGE receive"

    invoke-static/range {v16 .. v17}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap9(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v16, v0

    const/16 v18, 0x1

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    const/16 v16, 0x1

    :goto_2
    move/from16 v0, v16

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mPSensorNegative:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap7(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap4(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)V

    goto/16 :goto_0

    :cond_8
    const/16 v16, 0x0

    goto :goto_2

    :pswitch_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v16, v0

    const-string/jumbo v17, "EVENT_PHONE_OBJECT_SWITCH receive"

    invoke-static/range {v16 .. v17}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap9(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap0(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)Z

    move-result v16

    if-nez v16, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap1(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)Z

    move-result v16

    if-eqz v16, :cond_0

    :cond_9
    const/16 v16, 0xf

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v16, 0x7d0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, v16

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    :pswitch_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap15(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)V

    goto/16 :goto_0

    :pswitch_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap0(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)Z

    move-result v16

    if-eqz v16, :cond_a

    return-void

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap8(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)V

    goto/16 :goto_0

    :pswitch_14
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-get9()Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;

    move-result-object v16

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v17, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v16 .. v19}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->setPreferredNetworkType(IILandroid/os/Message;)V

    goto/16 :goto_0

    :pswitch_15
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_c

    const/4 v13, 0x0

    :goto_3
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-get0()Z

    move-result v16

    if-eqz v16, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-get7(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)Lcom/qualcomm/qcrilhook/QcRilHook;

    move-result-object v16

    sget-object v17, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;->AP_2_MODEM_UPDATE_EFS_SYNC_FLAG:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [B

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-byte v13, v18, v19

    const/16 v19, 0x1

    invoke-virtual/range {v16 .. v19}, Lcom/qualcomm/qcrilhook/QcRilHook;->oemAPSendRequest2Modem(Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;[BI)Landroid/os/AsyncResult;

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap4(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)V

    goto/16 :goto_0

    :cond_c
    const/4 v13, 0x1

    goto :goto_3

    :pswitch_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v16, v0

    const-string/jumbo v17, "EVENT_WAKE_LOCK_TIMEOUT receive"

    invoke-static/range {v16 .. v17}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap9(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap4(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
        :pswitch_6
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_15
        :pswitch_14
        :pswitch_10
        :pswitch_16
    .end packed-switch

    :array_0
    .array-data 1
        0x0t
        0x1t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x0t
        0x1t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x0t
        0x1t
    .end array-data
.end method
