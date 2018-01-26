.class public Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;
.super Lcom/android/internal/telephony/PhoneSwitcher;
.source "QtiPhoneSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher$1;
    }
.end annotation


# static fields
.field private static final OEM_DDS_SETTING_EVENT_CHANGE:I = 0x889900


# instance fields
.field private final EVENT_ALLOW_DATA_FALSE_RESPONSE:I

.field private final EVENT_ALLOW_DATA_TRUE_RESPONSE:I

.field private final MAX_CONNECT_FAILURE_COUNT:I

.field private mAllowDataFailure:[I

.field private mCm:Lcom/android/internal/telephony/CallManager;

.field private mDefaultDataPhoneId:I

.field private mManualDdsSwitch:Z

.field private mNewActivePhones:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

.field private final mRetryArray:[I

.field private mSendDdsSwitchDoneIntent:Z

.field private mSimStateIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mSimStates:[Ljava/lang/String;

.field private mWaitForDetachResponse:Z


# direct methods
.method static synthetic -get0(Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mSimStates:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->isPhoneIdValidForRetry(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->isSimReady(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->getConnectFailureCount(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/PhoneSwitcher;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->resetConnectFailureCount(I)V

    return-void
.end method

.method public constructor <init>(IILandroid/content/Context;Lcom/android/internal/telephony/SubscriptionController;Landroid/os/Looper;Lcom/android/internal/telephony/ITelephonyRegistry;[Lcom/android/internal/telephony/CommandsInterface;[Lcom/android/internal/telephony/Phone;)V
    .locals 6

    invoke-direct/range {p0 .. p8}, Lcom/android/internal/telephony/PhoneSwitcher;-><init>(IILandroid/content/Context;Lcom/android/internal/telephony/SubscriptionController;Landroid/os/Looper;Lcom/android/internal/telephony/ITelephonyRegistry;[Lcom/android/internal/telephony/CommandsInterface;[Lcom/android/internal/telephony/Phone;)V

    const/4 v1, 0x5

    iput v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->MAX_CONNECT_FAILURE_COUNT:I

    const/4 v1, 0x5

    const/16 v2, 0xa

    const/16 v3, 0x14

    const/16 v4, 0x28

    const/16 v5, 0x3c

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mRetryArray:[I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mManualDdsSwitch:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mSendDdsSwitchDoneIntent:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mDefaultDataPhoneId:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mWaitForDetachResponse:Z

    const/16 v1, 0x70

    iput v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->EVENT_ALLOW_DATA_FALSE_RESPONSE:I

    const/16 v1, 0x71

    iput v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->EVENT_ALLOW_DATA_TRUE_RESPONSE:I

    new-instance v1, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher$1;

    invoke-direct {v1, p0}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher$1;-><init>(Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;)V

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mSimStateIntentReceiver:Landroid/content/BroadcastReceiver;

    new-array v1, p2, [I

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mAllowDataFailure:[I

    new-array v1, p2, [Ljava/lang/String;

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mSimStates:[Ljava/lang/String;

    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v1

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mCm:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mCm:Lcom/android/internal/telephony/CallManager;

    const/16 v2, 0x6c

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-static {p3}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->getInstance(Landroid/content/Context;)Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    move-result-object v1

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    invoke-virtual {v1}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->isServiceReady()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->queryMaxDataAllowed()V

    :goto_0
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    const/16 v2, 0x6e

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v2, v3}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->registerForUnsol(Landroid/os/Handler;ILjava/lang/Object;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mSimStateIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void

    :cond_0
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    const/16 v2, 0x6f

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v2, v3}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->registerForServiceReadyEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private broadcastNetworkSpecifier()V
    .locals 7

    const/4 v6, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    iget v4, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mNumPhones:I

    if-ge v0, v4, :cond_1

    iget-object v4, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v4, v0}, Lcom/android/internal/telephony/SubscriptionController;->getSubId(I)[I

    move-result-object v2

    if-eqz v2, :cond_0

    array-length v4, v2

    if-lez v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    aget v5, v2, v6

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/SubscriptionController;->isActiveSubId(I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->isUiccProvisioned(I)Z

    move-result v4

    if-eqz v4, :cond_0

    aget v4, v2, v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v4, "org.codeaurora.intent.action.ACTION_NETWORK_SPECIFIER_SET"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "SubIdList"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putIntegerArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const-string/jumbo v4, "Broadcast network specifier set intent"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/PhoneSwitcher;->log(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_2
    return-void
.end method

.method private enforceDds(I)V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/SubscriptionController;->getSubId(I)[I

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "enforceDds: subId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v2, v0, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/PhoneSwitcher;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    aget v2, v0, v3

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultDataSubId(I)V

    return-void
.end method

.method private getConnectFailureCount(I)I
    .locals 1

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mAllowDataFailure:[I

    aget v0, v0, p1

    return v0
.end method

.method private handleConnectMaxFailure(I)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->resetConnectFailureCount(I)V

    iget-object v2, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v2}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v0

    if-lez v0, :cond_0

    iget v2, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mNumPhones:I

    if-ge v0, v2, :cond_0

    if-eq p1, v0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ALLOW_DATA retries exhausted on phoneId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/PhoneSwitcher;->log(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->enforceDds(I)V

    :cond_0
    return-void
.end method

.method private handleUnsolMaxDataAllowedChange(Landroid/os/Message;)V
    .locals 5

    if-eqz p1, :cond_0

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v3, :cond_1

    :cond_0
    const-string/jumbo v3, "Null data received in handleUnsolMaxDataAllowedChange"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/PhoneSwitcher;->log(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [B

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    const v3, 0x8041e

    if-ne v2, v3, :cond_3

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    if-gez v1, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Response size is Invalid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/PhoneSwitcher;->log(Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mMaxActivePhones:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " Unsol Max Data Changed to: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mMaxActivePhones:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/PhoneSwitcher;->log(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method private incConnectFailureCount(I)V
    .locals 2

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mAllowDataFailure:[I

    aget v1, v0, p1

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, p1

    return-void
.end method

.method private informDdsToRil(I)V
    .locals 5

    iget-object v3, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v3, p1}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v0

    iget-object v3, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->getInstance(Landroid/content/Context;)Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->isServiceReady()Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "Oem hook service is not ready yet"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/PhoneSwitcher;->log(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget v3, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mNumPhones:I

    if-ge v1, v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "InformDdsToRil rild= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", DDS="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/PhoneSwitcher;->log(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->qcRilSendDDSInfo(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private isAnyVoiceCallActiveOnDevice()Z
    .locals 3

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mCm:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isAnyVoiceCallActiveOnDevice: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/PhoneSwitcher;->log(Ljava/lang/String;)V

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPhoneIdValidForRetry(I)Z
    .locals 5

    const/4 v2, 0x0

    const/4 v1, -0x1

    iget-object v3, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPrioritizedDcRequests:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPrioritizedDcRequests:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/DcRequest;

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/DcRequest;->networkRequest:Landroid/net/NetworkRequest;

    iget v4, v0, Lcom/android/internal/telephony/dataconnection/DcRequest;->apnId:I

    invoke-virtual {p0, v3, v4}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->phoneIdForRequest(Landroid/net/NetworkRequest;I)I

    move-result v1

    :cond_0
    if-ne v1, p1, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method private isSimReady(I)Z
    .locals 3

    const/4 v2, 0x0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return v2

    :cond_0
    const-string/jumbo v0, "READY"

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mSimStates:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "LOADED"

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mSimStates:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "IMSI"

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mSimStates:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SIM READY for phoneId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/PhoneSwitcher;->log(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_2
    return v2
.end method

.method private isUiccProvisioned(I)Z
    .locals 4

    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getCurrentUiccCardProvisioningStatus(I)I

    move-result v2

    if-lez v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isUiccProvisioned = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/PhoneSwitcher;->log(Ljava/lang/String;)V

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onAllowDataResponse(ILandroid/os/AsyncResult;)V
    .locals 6

    iget-object v3, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_3

    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->incConnectFailureCount(I)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Allow_data failed on phoneId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", failureCount = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->getConnectFailureCount(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/PhoneSwitcher;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->isAnyVoiceCallActiveOnDevice()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "Wait for call end indication"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/PhoneSwitcher;->log(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->isSimReady(I)Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "Wait for SIM to get READY"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/PhoneSwitcher;->log(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->getConnectFailureCount(I)I

    move-result v0

    const/4 v3, 0x5

    if-le v0, v3, :cond_2

    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->handleConnectMaxFailure(I)V

    :goto_0
    return-void

    :cond_2
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mRetryArray:[I

    add-int/lit8 v4, v0, -0x1

    aget v3, v3, v4

    mul-int/lit16 v2, v3, 0x3e8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Scheduling retry connect/allow_data after: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/PhoneSwitcher;->log(Ljava/lang/String;)V

    new-instance v3, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher$2;

    invoke-direct {v3, p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher$2;-><init>(Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;I)V

    int-to-long v4, v2

    invoke-virtual {p0, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Allow_data success on phoneId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/PhoneSwitcher;->log(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mSendDdsSwitchDoneIntent:Z

    if-eqz v3, :cond_4

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mSendDdsSwitchDoneIntent:Z

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "org.codeaurora.intent.action.ACTION_DDS_SWITCH_DONE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "subscription"

    iget-object v4, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v4}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v3, 0x1000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v3, "Broadcast dds switch done intent"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/PhoneSwitcher;->log(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_4
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->resetConnectFailureCount(I)V

    iget-object v3, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mActivePhoneRegistrants:[Landroid/os/RegistrantList;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto :goto_0
.end method

.method private queryMaxDataAllowed()V
    .locals 1

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    invoke-virtual {v0}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->getMaxDataAllowed()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mMaxActivePhones:I

    return-void
.end method

.method private resetConnectFailureCount(I)V
    .locals 2

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mAllowDataFailure:[I

    const/4 v1, 0x0

    aput v1, v0, p1

    return-void
.end method


# virtual methods
.method protected activate(I)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPhoneStates:[Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;

    aget-object v0, v1, p1

    iget-boolean v1, v0, Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;->active:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mManualDdsSwitch:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->getConnectFailureCount(I)I

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iput-boolean v5, v0, Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;->active:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "activate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/PhoneSwitcher;->log(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;->lastRequested:J

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, p1

    const/16 v2, 0x71

    invoke-virtual {p0, v2, p1, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v5, v2}, Lcom/android/internal/telephony/CommandsInterface;->setDataAllowed(ZLandroid/os/Message;)V

    return-void
.end method

.method protected deactivate(I)V
    .locals 5

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPhoneStates:[Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;

    aget-object v0, v1, p1

    iget-boolean v1, v0, Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;->active:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    iput-boolean v4, v0, Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;->active:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "deactivate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/PhoneSwitcher;->log(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;->lastRequested:J

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    iget-object v2, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPhoneSubscriptions:[I

    aget v2, v2, p1

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/SubscriptionController;->isActiveSubId(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, p1

    const/16 v2, 0x70

    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v4, v2}, Lcom/android/internal/telephony/CommandsInterface;->setDataAllowed(ZLandroid/os/Message;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mWaitForDetachResponse:Z

    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mActivePhoneRegistrants:[Landroid/os/RegistrantList;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Landroid/os/RegistrantList;->notifyRegistrants()V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 10

    const/4 v9, 0x0

    iget-object v7, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v7}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v2

    iget-object v7, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v7, v2}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "handle event - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->what:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/PhoneSwitcher;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    iget v7, p1, Landroid/os/Message;->what:I

    sparse-switch v7, :sswitch_data_0

    invoke-super {p0, p1}, Lcom/android/internal/telephony/PhoneSwitcher;->handleMessage(Landroid/os/Message;)V

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->isAnyVoiceCallActiveOnDevice()Z

    move-result v7

    if-eqz v7, :cond_1

    const-string/jumbo v7, "Voice call active. Waiting for call end"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/PhoneSwitcher;->log(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string/jumbo v7, "defaultChanged"

    invoke-virtual {p0, v9, v7}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->onEvaluate(ZLjava/lang/String;)V

    goto :goto_0

    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v7, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v7, :cond_2

    iget-object v7, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->queryMaxDataAllowed()V

    goto :goto_0

    :cond_2
    const-string/jumbo v7, "Error: empty result, EVENT_OEM_HOOK_SERVICE_READY"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/PhoneSwitcher;->log(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v7, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v7, :cond_3

    iget-object v7, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v7, Landroid/os/Message;

    invoke-direct {p0, v7}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->handleUnsolMaxDataAllowedChange(Landroid/os/Message;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v7, "Error: empty result, EVENT_UNSOL_MAX_DATA_ALLOWED_CHANGED"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/PhoneSwitcher;->log(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_3
    iget v8, p1, Landroid/os/Message;->arg1:I

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/os/AsyncResult;

    invoke-direct {p0, v8, v7}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->onAllowDataResponse(ILandroid/os/AsyncResult;)V

    goto :goto_0

    :sswitch_4
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->broadcastNetworkSpecifier()V

    const-string/jumbo v7, "subChanged"

    invoke-virtual {p0, v9, v7}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->onEvaluate(ZLjava/lang/String;)V

    goto :goto_0

    :sswitch_5
    const-string/jumbo v7, "EVENT_VOICE_CALL_ENDED"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/PhoneSwitcher;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->isAnyVoiceCallActiveOnDevice()Z

    move-result v7

    if-nez v7, :cond_0

    const/4 v3, 0x0

    :goto_1
    iget v7, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mNumPhones:I

    if-ge v3, v7, :cond_0

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->getConnectFailureCount(I)I

    move-result v7

    if-lez v7, :cond_4

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->isPhoneIdValidForRetry(I)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/PhoneSwitcher;->resendDataAllowed(I)V

    goto :goto_0

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :sswitch_6
    const-string/jumbo v7, "OEM_DDS_SETTING_EVENT_CHANGE"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/PhoneSwitcher;->log(Ljava/lang/String;)V

    const-string/jumbo v7, "oemSetting"

    const/4 v8, 0x1

    invoke-virtual {p0, v8, v7}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->onEvaluate(ZLjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_7
    const-string/jumbo v7, "EVENT_ALLOW_DATA_FALSE_RESPONSE"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/PhoneSwitcher;->log(Ljava/lang/String;)V

    iput-boolean v9, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mWaitForDetachResponse:Z

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->informDdsToRil(I)V

    iget-object v7, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mNewActivePhones:Ljava/util/List;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->activate(I)V

    goto :goto_2

    :cond_5
    iget-object v7, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mNewActivePhones:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    iput-boolean v9, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mManualDdsSwitch:Z

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x65 -> :sswitch_0
        0x66 -> :sswitch_4
        0x6c -> :sswitch_5
        0x6e -> :sswitch_2
        0x6f -> :sswitch_1
        0x70 -> :sswitch_7
        0x71 -> :sswitch_3
        0x889900 -> :sswitch_6
    .end sparse-switch
.end method

.method public oemSendDdsSettingConfig(I)V
    .locals 4

    const/4 v3, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "oemSendDdsSettingConfig: phoneId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/PhoneSwitcher;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPhones:[Lcom/android/internal/telephony/Phone;

    array-length v1, v1

    if-le v1, v3, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPhoneStates:[Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;

    aget-object v1, v1, p1

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;->active:Z

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPhoneStates:[Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;

    rsub-int/lit8 v2, p1, 0x1

    aget-object v1, v1, v2

    iput-boolean v3, v1, Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;->active:Z

    :cond_0
    const-string/jumbo v1, "send OEM_DDS_SETTING_EVENT_CHANGE"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/PhoneSwitcher;->log(Ljava/lang/String;)V

    const v1, 0x889900

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected onEvaluate(ZLjava/lang/String;)V
    .locals 20

    new-instance v16, Ljava/lang/StringBuilder;

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/PhoneSwitcher;->isEmergency()Z

    move-result v18

    if-eqz v18, :cond_0

    const-string/jumbo v18, "onEvalute aborted due to Emergency"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneSwitcher;->log(Ljava/lang/String;)V

    return-void

    :cond_0
    move/from16 v7, p1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneSwitcher;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneSwitcher;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v6

    const-string/jumbo v18, "oemSetting"

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mManualDdsSwitch:Z

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/telephony/PhoneSwitcher;->mDefaultDataSubscription:I

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mSendDdsSwitchDoneIntent:Z

    move-object/from16 v0, p0

    iput v6, v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mDefaultDataPhoneId:I

    const/4 v7, 0x1

    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/PhoneSwitcher;->mDefaultDataSubscription:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ne v3, v0, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mDefaultDataPhoneId:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-eq v6, v0, :cond_3

    :cond_2
    const-string/jumbo v18, " default "

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/PhoneSwitcher;->mDefaultDataSubscription:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "->"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mManualDdsSwitch:Z

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/telephony/PhoneSwitcher;->mDefaultDataSubscription:I

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mSendDdsSwitchDoneIntent:Z

    move-object/from16 v0, p0

    iput v6, v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mDefaultDataPhoneId:I

    const/4 v7, 0x1

    :cond_3
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "mManualDdsSwitch="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mManualDdsSwitch:Z

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneSwitcher;->log(Ljava/lang/String;)V

    const/4 v8, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/PhoneSwitcher;->mNumPhones:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v8, v0, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneSwitcher;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Lcom/android/internal/telephony/SubscriptionController;->getSubIdUsingPhoneId(I)I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneSwitcher;->mPhoneSubscriptions:[I

    move-object/from16 v18, v0

    aget v18, v18, v8

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_4

    const-string/jumbo v18, " phone["

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "] "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneSwitcher;->mPhoneSubscriptions:[I

    move-object/from16 v19, v0

    aget v19, v19, v8

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v18, "->"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneSwitcher;->mPhoneSubscriptions:[I

    move-object/from16 v18, v0

    aput v17, v18, v8

    const/4 v7, 0x1

    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_5
    if-eqz v7, :cond_d

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "evaluating due to "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneSwitcher;->log(Ljava/lang/String;)V

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneSwitcher;->mPrioritizedDcRequests:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/dataconnection/DcRequest;

    iget-object v0, v4, Lcom/android/internal/telephony/dataconnection/DcRequest;->networkRequest:Landroid/net/NetworkRequest;

    move-object/from16 v18, v0

    iget v0, v4, Lcom/android/internal/telephony/dataconnection/DcRequest;->apnId:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->phoneIdForRequest(Landroid/net/NetworkRequest;I)I

    move-result v15

    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v15, v0, :cond_6

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v12, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_6

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/PhoneSwitcher;->mMaxActivePhones:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_6

    :cond_7
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "default subId = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/PhoneSwitcher;->mDefaultDataSubscription:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneSwitcher;->log(Ljava/lang/String;)V

    const/4 v8, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/PhoneSwitcher;->mNumPhones:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v8, v0, :cond_8

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, " phone["

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "] using sub["

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneSwitcher;->mPhoneSubscriptions:[I

    move-object/from16 v19, v0

    aget v19, v19, v8

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "]"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneSwitcher;->log(Ljava/lang/String;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_8
    const-string/jumbo v18, " newActivePhones:"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneSwitcher;->log(Ljava/lang/String;)V

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_9

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "  "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneSwitcher;->log(Ljava/lang/String;)V

    goto :goto_2

    :cond_9
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mNewActivePhones:Ljava/util/List;

    const/4 v13, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/PhoneSwitcher;->mNumPhones:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v13, v0, :cond_b

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v12, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_a

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->deactivate(I)V

    :cond_a
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    :cond_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mWaitForDetachResponse:Z

    move/from16 v18, v0

    if-nez v18, :cond_d

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->informDdsToRil(I)V

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_4
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_c

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->activate(I)V

    goto :goto_4

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mNewActivePhones:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_d

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mManualDdsSwitch:Z

    :cond_d
    return-void
.end method

.method protected onResendDataAllowed(Landroid/os/Message;)V
    .locals 5

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPhoneStates:[Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;

    aget-object v2, v2, v0

    iget-boolean v2, v2, Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;->active:Z

    const/16 v3, 0x71

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v0, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->setDataAllowed(ZLandroid/os/Message;)V

    return-void
.end method

.method protected phoneIdForRequest(Landroid/net/NetworkRequest;I)I
    .locals 9

    const/4 v4, 0x0

    iget-object v6, p1, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v6}, Landroid/net/NetworkCapabilities;->getNetworkSpecifier()Landroid/net/NetworkSpecifier;

    move-result-object v2

    if-eqz v2, :cond_0

    instance-of v6, v2, Landroid/net/StringNetworkSpecifier;

    if-eqz v6, :cond_0

    nop

    nop

    iget-object v4, v2, Landroid/net/StringNetworkSpecifier;->specifier:Ljava/lang/String;

    :cond_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget v5, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mDefaultDataSubscription:I

    :goto_0
    const/4 v3, -0x1

    const/4 v6, -0x1

    if-ne v5, v6, :cond_3

    return v3

    :cond_1
    const/4 v6, 0x5

    if-ne v6, p2, :cond_2

    iget-boolean v6, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mManualDdsSwitch:Z

    if-eqz v6, :cond_2

    iget v5, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mDefaultDataSubscription:I

    goto :goto_0

    :cond_2
    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v6, "PhoneSwitcher"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "NumberFormatException on "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, -0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_1
    iget v6, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mNumPhones:I

    if-ge v1, v6, :cond_4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mPhoneSubscriptions["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "]="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPhoneSubscriptions:[I

    aget v7, v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/PhoneSwitcher;->log(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPhoneSubscriptions:[I

    aget v6, v6, v1

    if-ne v6, v5, :cond_5

    move v3, v1

    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "subId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ",phoneId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ",mDefaultDataSubscription="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mDefaultDataSubscription:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ",netRequest = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/PhoneSwitcher;->log(Ljava/lang/String;)V

    return v3

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
