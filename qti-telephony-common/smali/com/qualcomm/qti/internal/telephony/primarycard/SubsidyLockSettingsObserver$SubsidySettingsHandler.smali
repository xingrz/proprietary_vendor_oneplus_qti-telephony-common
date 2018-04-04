.class Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver$SubsidySettingsHandler;
.super Landroid/os/Handler;
.source "SubsidyLockSettingsObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SubsidySettingsHandler"
.end annotation


# static fields
.field public static final MSG_ALL_CARDS_READY:I = 0x4

.field public static final MSG_EXIT:I = 0x3

.field public static final MSG_LOCKED:I = 0x0

.field public static final MSG_RESTRICTED:I = 0x1

.field public static final MSG_SET_PRIMARY_CARD:I = 0x5

.field public static final MSG_UNLOCKED:I = 0x2

.field static final PROVISIONED:I = 0x1

.field static final SUCCESS:I


# instance fields
.field private mNumSimSlots:I

.field final synthetic this$0:Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;


# direct methods
.method public constructor <init>(Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;Landroid/os/Looper;)V
    .locals 1

    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver$SubsidySettingsHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver$SubsidySettingsHandler;->mNumSimSlots:I

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    iput v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver$SubsidySettingsHandler;->mNumSimSlots:I

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14

    const/4 v13, 0x3

    const/4 v12, 0x1

    const/4 v11, 0x0

    const-string/jumbo v8, "SubsidyLockSettingsObserver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, " handleMessage, event  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Landroid/os/Message;->what:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " current state "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;->-get1()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v8, p1, Landroid/os/Message;->what:I

    packed-switch v8, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v8, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver$SubsidySettingsHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;

    invoke-virtual {v8, v11}, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;->onChange(Z)V

    goto :goto_0

    :pswitch_1
    const-string/jumbo v8, "extphone"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Lorg/codeaurora/internal/IExtTelephony$Stub;->asInterface(Landroid/os/IBinder;)Lorg/codeaurora/internal/IExtTelephony;

    move-result-object v3

    const/4 v2, 0x0

    :goto_1
    :try_start_0
    iget v8, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver$SubsidySettingsHandler;->mNumSimSlots:I

    if-ge v2, v8, :cond_4

    iget-object v8, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver$SubsidySettingsHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;

    invoke-static {v8}, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;->-get0(Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;)Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-virtual {v7}, Landroid/telephony/SubscriptionInfo;->getMcc()I

    move-result v8

    if-nez v8, :cond_3

    :cond_1
    const-string/jumbo v8, "SubsidyLockSettingsObserver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Invalid sub info for slot id: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", not proceeding further."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    invoke-interface {v3, v2}, Lorg/codeaurora/internal/IExtTelephony;->isPrimaryCarrierSlotId(I)Z

    move-result v8

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver$SubsidySettingsHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;

    invoke-static {v8}, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;->-get0(Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;)Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->make(Landroid/content/Context;)Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    move-result-object v8

    invoke-virtual {v8, v2}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->activateUiccCard(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_4
    :goto_3
    iget-object v8, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver$SubsidySettingsHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;

    const/16 v9, 0x66

    invoke-static {v8, v9}, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;->-wrap0(Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;I)V

    invoke-virtual {p0, v13}, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver$SubsidySettingsHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_5
    :try_start_1
    invoke-interface {v3, v2}, Lorg/codeaurora/internal/IExtTelephony;->getCurrentUiccCardProvisioningStatus(I)I

    move-result v8

    if-ne v8, v12, :cond_2

    iget-object v8, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver$SubsidySettingsHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;

    invoke-static {v8}, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;->-get0(Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;)Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->make(Landroid/content/Context;)Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    move-result-object v8

    invoke-virtual {v8, v2}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->deactivateUiccCard(I)I

    move-result v6

    if-nez v6, :cond_2

    new-instance v8, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver$SIMDeactivationRecords;

    iget-object v9, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver$SubsidySettingsHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;

    invoke-direct {v8, v9}, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver$SIMDeactivationRecords;-><init>(Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;)V

    invoke-virtual {v7}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver$SIMDeactivationRecords;->addRecord(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_3

    :pswitch_2
    const-string/jumbo v8, "extphone"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Lorg/codeaurora/internal/IExtTelephony$Stub;->asInterface(Landroid/os/IBinder;)Lorg/codeaurora/internal/IExtTelephony;

    move-result-object v4

    const/4 v2, 0x0

    :goto_4
    :try_start_2
    iget v8, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver$SubsidySettingsHandler;->mNumSimSlots:I

    if-ge v2, v8, :cond_9

    iget-object v8, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver$SubsidySettingsHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;

    invoke-static {v8}, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;->-get0(Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;)Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v7

    if-eqz v7, :cond_6

    invoke-virtual {v7}, Landroid/telephony/SubscriptionInfo;->getMcc()I

    move-result v8

    if-nez v8, :cond_8

    :cond_6
    const-string/jumbo v8, "SubsidyLockSettingsObserver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Invalid subscription info for slot id: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", not proceeding further."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_8
    invoke-interface {v4, v2}, Lorg/codeaurora/internal/IExtTelephony;->isPrimaryCarrierSlotId(I)Z

    move-result v8

    if-nez v8, :cond_b

    new-instance v5, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver$SIMDeactivationRecords;

    iget-object v8, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver$SubsidySettingsHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;

    invoke-direct {v5, v8}, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver$SIMDeactivationRecords;-><init>(Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;)V

    invoke-virtual {v7}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver$SIMDeactivationRecords;->isDeactivated(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v4, v2}, Lorg/codeaurora/internal/IExtTelephony;->activateUiccCard(I)I

    move-result v6

    if-nez v6, :cond_7

    invoke-virtual {v7}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver$SIMDeactivationRecords;->removeRecord(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_5

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_9
    :goto_6
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v8, :cond_a

    iget-object v9, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver$SubsidySettingsHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v9, v8}, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;->-wrap0(Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;I)V

    :cond_a
    invoke-virtual {p0, v13}, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver$SubsidySettingsHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    :cond_b
    :try_start_3
    iget-object v8, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver$SubsidySettingsHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;

    invoke-static {v8}, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;->-get0(Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;)Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;->isSubsidyUnlocked(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v4, v2}, Lorg/codeaurora/internal/IExtTelephony;->isPrimaryCarrierSlotId(I)Z

    move-result v8

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver$SubsidySettingsHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;

    invoke-static {v8}, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;->-get0(Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;)Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->make(Landroid/content/Context;)Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    move-result-object v8

    invoke-virtual {v8, v2}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->activateUiccCard(I)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_5

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_6

    :pswitch_3
    const/16 v8, 0x64

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p0, v12, v8}, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver$SubsidySettingsHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    :pswitch_4
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver$SubsidySettingsHandler;->getLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v9

    if-eq v8, v9, :cond_0

    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver$SubsidySettingsHandler;->getLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/Looper;->quitSafely()V

    goto/16 :goto_0

    :pswitch_5
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->getInstance()Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;

    move-result-object v8

    invoke-virtual {v8}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->trySetPrimarySub()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method
