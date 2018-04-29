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
    .locals 17

    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->what:I

    packed-switch v13, :pswitch_data_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "not support this handle msg.what = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->what:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap9(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Ljava/lang/String;

    invoke-static {v14, v15, v13}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap6(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;ILjava/lang/String;)V

    goto :goto_0

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v13, v14}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->handleSimAbsentforSelectMultiMode(I)V

    goto :goto_0

    :pswitch_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    const-string/jumbo v14, "oem EVENT_RADIO_NOT_AVAILABLE recv "

    invoke-static {v13, v14}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap9(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    iget-object v6, v2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    invoke-static {v13}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-get5(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    move-result-object v13

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v14

    aget-object v13, v13, v14

    const/4 v14, 0x0

    iput-boolean v14, v13, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;->isCardReady:Z

    goto :goto_0

    :pswitch_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    const-string/jumbo v14, "oem EVENT_GET_ICC_STATUS_DONE recv "

    invoke-static {v13, v14}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap9(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    iget-object v13, v2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v13, v2, v14}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap13(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;Landroid/os/AsyncResult;Ljava/lang/Integer;)V

    goto :goto_0

    :pswitch_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    invoke-static {v13}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap8(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)V

    goto :goto_0

    :pswitch_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    const-string/jumbo v14, "oem EVENT_SET_GW_PERF_DONE recv "

    invoke-static {v13, v14}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap9(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg1:I

    const/16 v14, 0x12

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v13, v15}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v11

    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-get9()Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;

    move-result-object v13

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v13, v14, v15, v11}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->setPreferredNetworkType(IILandroid/os/Message;)V

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    rsub-int/lit8 v14, v14, 0x1

    invoke-virtual {v13, v2, v14}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->handleEX(Landroid/os/AsyncResult;I)V

    goto/16 :goto_0

    :pswitch_6
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    iget-object v6, v2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    invoke-static {v13}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-get3(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v13

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v14

    aget-object v13, v13, v14

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v14

    const/16 v15, 0x11

    const/16 v16, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v15, v14, v1}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v14

    invoke-interface {v13, v14}, Lcom/android/internal/telephony/CommandsInterface;->getRadioCapability(Landroid/os/Message;)V

    goto/16 :goto_0

    :pswitch_7
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    iget-object v9, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v9, Lcom/android/internal/telephony/RadioCapability;

    iget-object v13, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    const-string/jumbo v14, "get phone radio capability fail,no need to change RadioCapability"

    invoke-static {v13, v14}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap10(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    invoke-static {v13}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-get10(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)[Lcom/android/internal/telephony/RadioCapability;

    move-result-object v13

    invoke-virtual {v9}, Lcom/android/internal/telephony/RadioCapability;->getPhoneId()I

    move-result v14

    aput-object v9, v13, v14

    goto/16 :goto_0

    :pswitch_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    const-string/jumbo v14, "EVENT_PRI_PERF_DONE recv "

    invoke-static {v13, v14}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap9(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    invoke-static {v13}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap11(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)V

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v13, v2, v14}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->handleEX(Landroid/os/AsyncResult;I)V

    goto/16 :goto_0

    :pswitch_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    const-string/jumbo v14, "EVENT_TEST_CARD_DETECT recv "

    invoke-static {v13, v14}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap9(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    invoke-static {v13}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-get8(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-get1()Z

    move-result v13

    xor-int/lit8 v13, v13, 0x1

    if-eqz v13, :cond_3

    const/4 v13, 0x1

    invoke-static {v13}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-set1(Z)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    invoke-static {v13}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-get7(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)Lcom/qualcomm/qcrilhook/QcRilHook;

    move-result-object v13

    sget-object v14, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;->AP_2_MODEM_SET_ANTENNA:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    const/4 v15, 0x2

    new-array v15, v15, [B

    fill-array-data v15, :array_0

    const/16 v16, 0x2

    invoke-virtual/range {v13 .. v16}, Lcom/qualcomm/qcrilhook/QcRilHook;->oemAPSendRequest2Modem(Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;[BI)Landroid/os/AsyncResult;

    move-result-object v2

    const/4 v13, 0x0

    invoke-static {v13}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-set3(I)I

    iget-object v13, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    const-string/jumbo v14, "switch Antenna failed, retry it"

    invoke-static {v13, v14}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap10(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;Ljava/lang/String;)V

    const/16 v13, 0x14

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v14, 0x64

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v14, v15}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    :cond_2
    const/16 v13, 0x15

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v14, 0x1f4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v14, v15}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    :cond_3
    const/16 v13, 0x13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v14, 0x3e8

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v14, v15}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    :pswitch_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "EVENT_ANTENNA_SWITCH_RETRY recv  retry_times "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-get11()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap9(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    invoke-static {v13}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-get7(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)Lcom/qualcomm/qcrilhook/QcRilHook;

    move-result-object v13

    sget-object v14, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;->AP_2_MODEM_SET_ANTENNA:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    const/4 v15, 0x2

    new-array v15, v15, [B

    fill-array-data v15, :array_1

    const/16 v16, 0x2

    invoke-virtual/range {v13 .. v16}, Lcom/qualcomm/qcrilhook/QcRilHook;->oemAPSendRequest2Modem(Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;[BI)Landroid/os/AsyncResult;

    move-result-object v2

    iget-object v13, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v13, :cond_5

    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-get11()I

    move-result v13

    const/4 v14, 0x3

    if-ge v13, v14, :cond_5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    const-string/jumbo v14, "retry switch Antenna failed, again retry"

    invoke-static {v13, v14}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap10(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;Ljava/lang/String;)V

    const/16 v13, 0x14

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v14, 0x64

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v14, v15}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_4
    :goto_1
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-get11()I

    move-result v13

    add-int/lit8 v13, v13, 0x1

    invoke-static {v13}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-set3(I)I

    goto/16 :goto_0

    :cond_5
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-get11()I

    move-result v13

    const/4 v14, 0x3

    if-ge v13, v14, :cond_4

    const/16 v13, 0x15

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v14, 0x1f4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v14, v15}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    :pswitch_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    const-string/jumbo v14, "EVENT_GET_ANTENNA_POS recv "

    invoke-static {v13, v14}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap9(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    invoke-static {v13}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-get7(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)Lcom/qualcomm/qcrilhook/QcRilHook;

    move-result-object v13

    sget-object v14, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;->AP_2_MODEM_GET_ANTENNA_POS:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    const/4 v15, 0x2

    new-array v15, v15, [B

    fill-array-data v15, :array_2

    const/16 v16, 0x2

    invoke-virtual/range {v13 .. v16}, Lcom/qualcomm/qcrilhook/QcRilHook;->oemAPSendRequest2Modem(Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;[BI)Landroid/os/AsyncResult;

    move-result-object v2

    iget-object v13, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v13, :cond_6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    const-string/jumbo v14, "retry switch Antenna failed, again retry"

    invoke-static {v13, v14}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap10(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;Ljava/lang/String;)V

    const/16 v13, 0x14

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v14, 0x64

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v14, v15}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    :cond_6
    iget-object v13, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v13, :cond_0

    iget-object v3, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [B

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "current antenna pos status is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x0

    aget-byte v15, v3, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap9(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;Ljava/lang/String;)V

    const/4 v13, 0x0

    aget-byte v13, v3, v13

    if-eqz v13, :cond_0

    const/16 v13, 0x14

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v14, 0x64

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v14, v15}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    :pswitch_c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    const-string/jumbo v14, "EVENT_SIM_STATUS_CHANGE recv "

    invoke-static {v13, v14}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap9(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    invoke-static {v13, v14}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap15(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;I)V

    goto/16 :goto_0

    :pswitch_d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    const-string/jumbo v14, "EVENT_MBN_ACTIVATED_DONE recv "

    invoke-static {v13, v14}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap9(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    invoke-static {v13}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap14(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)V

    goto/16 :goto_0

    :pswitch_e
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    const-string/jumbo v14, "EVENT_SIM_LOADED_DONE recv "

    invoke-static {v13, v14}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap9(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;Ljava/lang/String;)V

    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v13

    invoke-virtual {v13}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getDefaultDataSubId()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    invoke-virtual {v13}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->getPrevPrimaryPhoneId()I

    move-result v7

    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v13

    invoke-virtual {v13, v7}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getSubId(I)[I

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "EVENT_SIM_LOADED_DONE dataSubId = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " primaryPhoneId = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " primarySubId = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x0

    aget v15, v8, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap9(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;Ljava/lang/String;)V

    const/4 v13, 0x0

    aget v13, v8, v13

    if-eq v13, v4, :cond_7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    invoke-static {v13, v7}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap12(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;I)V

    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    invoke-static {v13}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap5(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)V

    goto/16 :goto_0

    :pswitch_f
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    const-string/jumbo v14, "OEM_EVENT_TETHER_STATE_CHANGE receive"

    invoke-static {v13, v14}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap9(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$TetherStateChange;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    iget-object v15, v12, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$TetherStateChange;->active:Ljava/util/ArrayList;

    invoke-static {v14, v15}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap2(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;Ljava/util/ArrayList;)Z

    move-result v14

    iput-boolean v14, v13, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isWifiHotOpen:Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "OEM_EVENT_TETHER_STATE_CHANGE receive isWifiHotOpen = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    iget-boolean v15, v15, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isWifiHotOpen:Z

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap9(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    invoke-static {v13}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap7(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)V

    goto/16 :goto_0

    :pswitch_10
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    const-string/jumbo v14, "EVENT_PSENSOR_CHANGE receive"

    invoke-static {v13, v14}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap9(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg1:I

    const/4 v15, 0x1

    if-ne v13, v15, :cond_8

    const/4 v13, 0x1

    :goto_2
    iput-boolean v13, v14, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mPSensorNegative:Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    invoke-static {v13}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap7(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    invoke-static {v13}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap4(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)V

    goto/16 :goto_0

    :cond_8
    const/4 v13, 0x0

    goto :goto_2

    :pswitch_11
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    const-string/jumbo v14, "EVENT_PHONE_OBJECT_SWITCH receive"

    invoke-static {v13, v14}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap9(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    invoke-static {v13}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap0(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)Z

    move-result v13

    if-nez v13, :cond_9

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    invoke-static {v13}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap1(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)Z

    move-result v13

    if-eqz v13, :cond_0

    :cond_9
    const/16 v13, 0xf

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v14, 0x7d0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v14, v15}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    :pswitch_12
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    invoke-static {v13}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap16(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)V

    goto/16 :goto_0

    :pswitch_13
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    const-string/jumbo v14, "EVENT_RESET_DDS receive"

    invoke-static {v13, v14}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap9(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    invoke-static {v13}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap0(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)Z

    move-result v13

    if-eqz v13, :cond_a

    return-void

    :cond_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    const-string/jumbo v14, "EVENT_RESET_DDS handleTimeOut"

    invoke-static {v13, v14}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap9(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    invoke-static {v13}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap8(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)V

    goto/16 :goto_0

    :pswitch_14
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-get9()Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;

    move-result-object v13

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg2:I

    const/16 v16, 0x0

    invoke-virtual/range {v13 .. v16}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->setPreferredNetworkType(IILandroid/os/Message;)V

    goto/16 :goto_0

    :pswitch_15
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg1:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_c

    const/4 v10, 0x0

    :goto_3
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-get0()Z

    move-result v13

    if-eqz v13, :cond_b

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    invoke-static {v13}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-get7(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)Lcom/qualcomm/qcrilhook/QcRilHook;

    move-result-object v13

    sget-object v14, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;->AP_2_MODEM_UPDATE_EFS_SYNC_FLAG:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    const/4 v15, 0x1

    new-array v15, v15, [B

    const/16 v16, 0x0

    aput-byte v10, v15, v16

    const/16 v16, 0x1

    invoke-virtual/range {v13 .. v16}, Lcom/qualcomm/qcrilhook/QcRilHook;->oemAPSendRequest2Modem(Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;[BI)Landroid/os/AsyncResult;

    :cond_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    invoke-static {v13}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap4(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)V

    goto/16 :goto_0

    :cond_c
    const/4 v10, 0x1

    goto :goto_3

    :pswitch_16
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    const-string/jumbo v14, "EVENT_WAKE_LOCK_TIMEOUT receive"

    invoke-static {v13, v14}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap9(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    invoke-static {v13}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap4(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)V

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
