.class public Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;
.super Landroid/os/Handler;
.source "QtiPrimaryCardController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$1;,
        Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$PrimaryCardState;
    }
.end annotation


# static fields
.field private static final ACTION_PRIMARY_CARD_CHANGED_IN_SERVICE:Ljava/lang/String; = "org.codeaurora.intent.action.PRIMARY_CARD_CHANGED_IN_SERVICE"

.field private static final ACTION_SET_PRIMARY_CARD_DONE:Ljava/lang/String; = "org.codeaurora.intent.action.ACTION_SET_PRIMARY_CARD_DONE"

.field private static final CARRIER_MODE_CMCC:Ljava/lang/String; = "cmcc"

.field private static final DBG:Z = true

.field private static final EVENT_ALL_CARDS_INFO_AVAILABLE:I = 0x1

.field private static final EVENT_GET_NWMODE_DONE:I = 0x4

.field private static final EVENT_OEM_HOOK_SERVICE_READY:I = 0x8

.field private static final EVENT_PRIMARY_CARD_SET_DONE:I = 0x5

.field private static final EVENT_SERVICE_STATE_CHANGED:I = 0x7

.field private static final EVENT_SET_NWMODE_DONE:I = 0x3

.field private static final EVENT_SET_PRIMARY_SUB:I = 0x6

.field private static final EVENT_SET_RADIO_CAPABILITY_DONE:I = 0x2

.field private static final FWK_PRIMARY_CARD_REQUEST:I = 0x3e8

.field private static final LOG_TAG:Ljava/lang/String; = "QtiPcController"

.field private static final PRIMARYCARD_SUBSCRIPTION_KEY:Ljava/lang/String; = "primarycard_sub"

.field private static final PRIMARY_CARD_RESULT:Ljava/lang/String; = "result"

.field private static final SETTING_USER_PREF_DATA_SUB:Ljava/lang/String; = "user_preferred_data_sub"

.field private static final USER_PRIMARY_CARD_REQUEST:I = 0x3e9

.field private static final VDBG:Z

.field private static final sCmccIins:[I

.field private static final sCtIins:[I

.field private static sInstance:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;


# instance fields
.field private mCardChanged:Z

.field mCardInfoMgr:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;

.field private mCarrierMode:Ljava/lang/String;

.field private mCi:[Lcom/android/internal/telephony/CommandsInterface;

.field private mCmdMessage:Landroid/os/Message;

.field private final mContext:Landroid/content/Context;

.field private mCurrentIccIds:[Ljava/lang/String;

.field private mIsCMCC:Z

.field private mPcTriggeredFlexMapDone:Z

.field mPcUtils:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;

.field private mPhone:[Lcom/android/internal/telephony/Phone;

.field private mPrefNwModes:[I

.field private mPrefPrimarySlot:I

.field private mPrimaryCardState:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$PrimaryCardState;

.field mPriorityHandler:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;

.field private mPriorityMatch:Z

.field private mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRetryArray:[I

.field private mRetryCount:I

.field private mRetryPrimarySlot:I

.field mSubsidyLockSettingsObserver:Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;


# direct methods
.method static synthetic -get0(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;)I
    .locals 1

    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPrefPrimarySlot:I

    return v0
.end method

.method static synthetic -get1(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;)I
    .locals 1

    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mRetryPrimarySlot:I

    return v0
.end method

.method static synthetic -wrap0(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;)V
    .locals 0

    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->resetSetNwModeFailureCount()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->setPrimaryCardIfRequired(ZZ)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const v0, 0xdb62b

    const v1, 0xdb633

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->sCtIins:[I

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->sCmccIins:[I

    return-void

    nop

    :array_0
    .array-data 4
        0xdb628
        0xdb62a
        0xdb62f
        0xdb630
        0xdb5d9
        0xdb4a4
    .end array-data
.end method

.method private constructor <init>(Landroid/content/Context;[Lcom/android/internal/telephony/Phone;[Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v1, -0x1

    iput v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPrefPrimarySlot:I

    iput-boolean v2, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mCardChanged:Z

    iput-boolean v2, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPriorityMatch:Z

    iput-boolean v2, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPcTriggeredFlexMapDone:Z

    const/4 v1, 0x2

    const/4 v2, 0x5

    const/16 v3, 0xa

    const/16 v4, 0x14

    const/16 v5, 0x1e

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mRetryArray:[I

    const-string/jumbo v1, "persist.radio.carrier_mode"

    const-string/jumbo v2, "default"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mCarrierMode:Ljava/lang/String;

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mCarrierMode:Ljava/lang/String;

    const-string/jumbo v2, "cmcc"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mIsCMCC:Z

    sget-object v1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$PrimaryCardState;->IDLE:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$PrimaryCardState;

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPrimaryCardState:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$PrimaryCardState;

    new-instance v1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$1;

    invoke-direct {v1, p0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$1;-><init>(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;)V

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPhone:[Lcom/android/internal/telephony/Phone;

    iput-object p3, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->init(Landroid/content/Context;)Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;

    move-result-object v1

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPcUtils:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;

    new-instance v1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPriorityHandler:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mContext:Landroid/content/Context;

    invoke-static {v1, p3}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->init(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;

    move-result-object v1

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mCardInfoMgr:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mCardInfoMgr:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v2, v6}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->registerAllCardsInfoAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    sget v1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->PHONE_COUNT:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPrefNwModes:[I

    sget v1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->PHONE_COUNT:I

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mCurrentIccIds:[Ljava/lang/String;

    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->resetPrimaryCardParams()V

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.ACTION_SET_RADIO_CAPABILITY_DONE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;->isSubsidyLockFeatureEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mSubsidyLockSettingsObserver:Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mSubsidyLockSettingsObserver:Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mCardInfoMgr:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;

    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPriorityHandler:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;

    invoke-virtual {v1, v2, v3}, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;->observe(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;)V

    :cond_0
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-static {p1}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->getInstance(Landroid/content/Context;)Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    move-result-object v1

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    const/16 v2, 0x8

    invoke-virtual {v1, p0, v2, v6}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->registerForServiceReadyEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public static getInstance()Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;
    .locals 3

    const-class v1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->sInstance:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "QtiPrimaryCardController was not initialized!"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_1
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->sInstance:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0
.end method

.method private handleGetNwModeDone(Landroid/os/Message;)V
    .locals 5

    const/4 v2, -0x1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_0

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    const/4 v4, 0x0

    aget v2, v3, v4

    invoke-direct {p0, v2, v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->saveNwModesToDB(II)V

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "got nwMode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " on slot"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", saved to DB, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->logd(Ljava/lang/String;)V

    return-void
.end method

.method private handleOnSetPrimaryCardDone(Landroid/os/Message;)V
    .locals 11

    const/4 v10, 0x1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v8, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v8, :cond_8

    invoke-static {v3}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->savePrimarySlotToDB(I)V

    invoke-virtual {p0, v3}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->broadcastPrimarySlotServiceChanged(I)V

    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->getUserSelectionMode()I

    move-result v7

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    :goto_0
    sget v8, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->PHONE_COUNT:I

    if-ge v2, v8, :cond_1

    iget-object v8, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mCardInfoMgr:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;

    invoke-virtual {v8, v2}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->getCardInfo(I)Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;

    move-result-object v8

    invoke-virtual {v8}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->getIccId()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->sCmccIins:[I

    invoke-direct {p0, v8, v9}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->isCardMatchesIins(Ljava/lang/String;[I)Z

    move-result v8

    if-eqz v8, :cond_0

    add-int/lit8 v5, v5, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "userSelectionMode = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", mPriorityMatch"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPriorityMatch:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", numCmccCards = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->logd(Ljava/lang/String;)V

    const/4 v8, 0x3

    if-eq v7, v8, :cond_2

    const/4 v8, 0x2

    if-ne v7, v8, :cond_3

    iget-boolean v8, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPriorityMatch:Z

    if-eqz v8, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    iget-boolean v8, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mIsCMCC:Z

    if-eqz v8, :cond_6

    if-nez v5, :cond_4

    const/4 v1, 0x1

    :cond_4
    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->saveEnableUserSelectioninDB(Z)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "handleOnSetPrimaryCardDone: enableUserSelection ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", mCardChanged:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mCardChanged:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", numCardsValid:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->numCardsValid()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->logd(Ljava/lang/String;)V

    if-eqz v1, :cond_5

    iget-boolean v8, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mCardChanged:Z

    if-eqz v8, :cond_5

    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->numCardsValid()I

    move-result v8

    if-le v8, v10, :cond_5

    iget-boolean v8, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPriorityMatch:Z

    if-eqz v8, :cond_5

    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->startLTEConifgActivity()V

    :cond_5
    return-void

    :cond_6
    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->saveEnableUserSelectioninDB(Z)V

    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;->isSubsidyLockFeatureEnabled()Z

    move-result v6

    const/4 v4, 0x1

    if-eqz v6, :cond_7

    iget-object v8, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mSubsidyLockSettingsObserver:Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;

    iget-object v8, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;->isPermanentlyUnlocked(Landroid/content/Context;)Z

    move-result v4

    :cond_7
    if-eqz v1, :cond_8

    iget-boolean v8, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mCardChanged:Z

    if-eqz v8, :cond_8

    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->numCardsValid()I

    move-result v8

    if-le v8, v10, :cond_8

    if-eqz v4, :cond_8

    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->startLTEConifgActivity()V

    :cond_8
    return-void
.end method

.method private handleServiceStateChanged(Landroid/os/Message;)V
    .locals 5

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->getCurrentPrimarySlotFromDB(Landroid/content/Context;)I

    move-result v1

    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->isValidSlotIndex(I)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v3, v3, v2

    invoke-virtual {v3, p0}, Lcom/android/internal/telephony/Phone;->unregisterForServiceStateChanged(Landroid/os/Handler;)V

    :goto_0
    invoke-virtual {p0, v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->broadcastPrimarySlotServiceChanged(I)V

    :cond_0
    return-void

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " Error, Invalid slotId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleSetNwModeDone(Landroid/os/Message;)V
    .locals 9

    const/4 v7, 0x0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "set "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPrefNwModes:[I

    aget v6, v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " for slot "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " done, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->logd(Ljava/lang/String;)V

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_2

    iget v5, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mRetryCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mRetryCount:I

    iget-object v6, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mRetryArray:[I

    array-length v6, v6

    if-gt v5, v6, :cond_0

    const/16 v5, 0x3e8

    if-ne v4, v5, :cond_0

    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mRetryArray:[I

    iget v6, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mRetryCount:I

    add-int/lit8 v6, v6, -0x1

    aget v5, v5, v6

    mul-int/lit16 v1, v5, 0x3e8

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Scheduling retry for failed set primary card request: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " ms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->logd(Ljava/lang/String;)V

    iget v5, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPrefPrimarySlot:I

    iput v5, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mRetryPrimarySlot:I

    new-instance v5, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$2;

    invoke-direct {v5, p0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$2;-><init>(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;)V

    int-to-long v6, v1

    invoke-virtual {p0, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->resetSetNwModeFailureCount()V

    const/4 v2, 0x0

    :goto_1
    sget v5, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->PHONE_COUNT:I

    if-ge v2, v5, :cond_1

    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v5, v5, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x4

    invoke-virtual {p0, v7, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x2

    invoke-direct {p0, v5}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->sendSetPrimaryCardResult(I)V

    goto :goto_0

    :cond_2
    iget v5, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mRetryCount:I

    if-lez v5, :cond_3

    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->resetSetNwModeFailureCount()V

    :cond_3
    iget-boolean v5, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPcTriggeredFlexMapDone:Z

    if-nez v5, :cond_4

    iget v5, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPrefPrimarySlot:I

    if-ne v3, v5, :cond_5

    :cond_4
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->setDdsOnPrimaryCardIfRequired()V

    invoke-direct {p0, v7}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->sendSetPrimaryCardResult(I)V

    :goto_2
    return-void

    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "set NwMode["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPrefNwModes:[I

    iget v7, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPrefPrimarySlot:I

    aget v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "] on Primarycard:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPrefPrimarySlot:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->logd(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPhone:[Lcom/android/internal/telephony/Phone;

    iget v6, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPrefPrimarySlot:I

    aget-object v5, v5, v6

    iget-object v6, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPrefNwModes:[I

    iget v7, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPrefPrimarySlot:I

    aget v6, v6, v7

    iget v7, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPrefPrimarySlot:I

    const/4 v8, 0x3

    invoke-virtual {p0, v8, v7, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_2
.end method

.method private handleSetRadioCapsDone()V
    .locals 2

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPrimaryCardState:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$PrimaryCardState;

    sget-object v1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$PrimaryCardState;->PENDING_DUE_TO_FLEXMAP_IN_PROGRESS:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$PrimaryCardState;

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$PrimaryCardState;->IDLE:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$PrimaryCardState;

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPrimaryCardState:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$PrimaryCardState;

    const-string/jumbo v0, "Flex mapping completed, try setting primary card now"

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->logd(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->setPrimaryCardIfRequired(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPrimaryCardState:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$PrimaryCardState;

    sget-object v1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$PrimaryCardState;->IN_PROGRESS:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$PrimaryCardState;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPrimaryCardState:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$PrimaryCardState;

    sget-object v1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$PrimaryCardState;->PENDING_DUE_TO_PC_IN_PROGRESS:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$PrimaryCardState;

    if-ne v0, v1, :cond_0

    :cond_2
    const-string/jumbo v0, "Primary card trigerred Flex Mapping completed."

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->logd(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPcTriggeredFlexMapDone:Z

    goto :goto_0
.end method

.method private haveCMCCSimCard()Z
    .locals 6

    const/4 v5, 0x0

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->numCardsValid()I

    move-result v3

    if-ge v0, v3, :cond_2

    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mCardInfoMgr:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;

    invoke-virtual {v3, v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->getCardInfo(I)Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->getIccId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x6

    invoke-virtual {v1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "iccId is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " on slot"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->logd(Ljava/lang/String;)V

    const-string/jumbo v3, "898600"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "898602"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "898607"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "898608"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v3, 0x1

    return v3

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v5
.end method

.method public static init(Landroid/content/Context;[Lcom/android/internal/telephony/Phone;[Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 2

    const-class v1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->sInstance:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->isPrimaryCardFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;

    invoke-direct {v0, p0, p1, p2}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;-><init>(Landroid/content/Context;[Lcom/android/internal/telephony/Phone;[Lcom/android/internal/telephony/CommandsInterface;)V

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->sInstance:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private isCardMatchesIins(Ljava/lang/String;[I)Z
    .locals 5

    const/4 v4, 0x6

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v4, :cond_1

    :cond_0
    return v3

    :cond_1
    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    array-length v4, p2

    move v2, v3

    :goto_0
    if-ge v2, v4, :cond_3

    aget v1, p2, v2

    if-ne v1, v0, :cond_2

    const/4 v2, 0x1

    return v2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v3
.end method

.method private isCardsInfoChanged()Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    sget v2, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->PHONE_COUNT:I

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->isCardsInfoChanged(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private logd(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "QtiPcController"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "QtiPcController"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private logi(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "QtiPcController"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private notifySetPrimaryCardDone(Z)V
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifySetPrimaryCardDone: Set Primary Card SUCCESS: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->logd(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "org.codeaurora.intent.action.ACTION_SET_PRIMARY_CARD_DONE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "result"

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "phone"

    iget v2, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPrefPrimarySlot:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private numCardsValid()I
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    sget v2, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->PHONE_COUNT:I

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mCardInfoMgr:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;

    invoke-virtual {v2, v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->getCardInfo(I)Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->getIccId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private resetPrimaryCardParams()V
    .locals 3

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPriorityMatch:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mCmdMessage:Landroid/os/Message;

    iput-boolean v2, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPcTriggeredFlexMapDone:Z

    const/4 v0, 0x0

    :goto_0
    sget v1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->PHONE_COUNT:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPrefNwModes:[I

    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->getDefaultNwMode()I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private resetSetNwModeFailureCount()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mRetryCount:I

    return-void
.end method

.method private saveCardIccIdInfoInSp()V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    sget v2, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->PHONE_COUNT:I

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mCurrentIccIds:[Ljava/lang/String;

    aget-object v1, v2, v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "save IccId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", on slotId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", in SP."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->logd(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "primarycard_sub"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private saveNwModesToDB(II)V
    .locals 5

    const/4 v4, 0x0

    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/SubscriptionController;->getSubId(I)[I

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "saveNwModesToDB: subId["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v2, v0, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", new Nw mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->logi(Ljava/lang/String;)V

    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v1

    aget v2, v0, v4

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/SubscriptionController;->isActiveSubId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "preferred_network_mode"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v0, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "preferred_network_mode"

    invoke-static {v1, v2, p2, p1}, Landroid/telephony/TelephonyManager;->putIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void

    :cond_1
    const-string/jumbo v1, "saveNwModesToDB: subId is null, do not save nwMode in subId based DB"

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private sendSetPrimaryCardResult(I)V
    .locals 4

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mCmdMessage:Landroid/os/Message;

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mCmdMessage:Landroid/os/Message;

    invoke-static {v1, v2, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mCmdMessage:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    iput-object v2, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mCmdMessage:Landroid/os/Message;

    :cond_0
    if-nez p1, :cond_2

    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->saveCardIccIdInfoInSp()V

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->notifySetPrimaryCardDone(Z)V

    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPrefPrimarySlot:I

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->savePrimarySlotToDB(I)V

    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPrefPrimarySlot:I

    invoke-virtual {p0, v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->broadcastPrimarySlotServiceChanged(I)V

    :goto_0
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPrimaryCardState:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$PrimaryCardState;

    sget-object v2, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$PrimaryCardState;->PENDING_DUE_TO_PC_IN_PROGRESS:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$PrimaryCardState;

    if-ne v1, v2, :cond_3

    sget-object v1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$PrimaryCardState;->IDLE:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$PrimaryCardState;

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPrimaryCardState:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$PrimaryCardState;

    const-string/jumbo v1, "Primary Card request completed, check for pending reqeusts"

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->logi(Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->setPrimaryCardIfRequired(Z)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->notifySetPrimaryCardDone(Z)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPrimaryCardState:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$PrimaryCardState;

    sget-object v2, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$PrimaryCardState;->IN_PROGRESS:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$PrimaryCardState;

    if-ne v1, v2, :cond_1

    sget-object v1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$PrimaryCardState;->IDLE:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$PrimaryCardState;

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPrimaryCardState:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$PrimaryCardState;

    goto :goto_1
.end method

.method private setDdsOnPrimaryCardIfRequired()V
    .locals 4

    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v0

    iget v2, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPrefPrimarySlot:I

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/SubscriptionController;->getSubIdUsingPhoneId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultDataSubId(I)V

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "user_preferred_data_sub"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Cofigure DDS on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->logd(Ljava/lang/String;)V

    return-void
.end method

.method private setPrimaryCardIfRequired(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->setPrimaryCardIfRequired(ZZ)V

    return-void
.end method

.method private setPrimaryCardIfRequired(ZZ)V
    .locals 7

    const/4 v5, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setPrimaryCardIfRequired: force: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->logd(Ljava/lang/String;)V

    const/4 v3, -0x1

    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPrimaryCardState:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$PrimaryCardState;

    sget-object v6, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$PrimaryCardState;->IN_PROGRESS:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$PrimaryCardState;

    if-eq v4, v6, :cond_0

    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPrimaryCardState:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$PrimaryCardState;

    sget-object v6, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$PrimaryCardState;->PENDING_DUE_TO_PC_IN_PROGRESS:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$PrimaryCardState;

    if-ne v4, v6, :cond_1

    :cond_0
    xor-int/lit8 v4, p2, 0x1

    if-eqz v4, :cond_1

    sget-object v4, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$PrimaryCardState;->PENDING_DUE_TO_PC_IN_PROGRESS:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$PrimaryCardState;

    iput-object v4, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPrimaryCardState:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$PrimaryCardState;

    const-string/jumbo v4, "Primary Card setting in progress. WAIT!"

    invoke-direct {p0, v4}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->logi(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    move-result-object v4

    invoke-virtual {v4}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->isFlexMapInProgress()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPrimaryCardState:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$PrimaryCardState;

    sget-object v6, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$PrimaryCardState;->PENDING_DUE_TO_FLEXMAP_IN_PROGRESS:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$PrimaryCardState;

    if-ne v4, v6, :cond_3

    :cond_2
    sget-object v4, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$PrimaryCardState;->PENDING_DUE_TO_FLEXMAP_IN_PROGRESS:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$PrimaryCardState;

    iput-object v4, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPrimaryCardState:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$PrimaryCardState;

    const-string/jumbo v4, "Flex Map in progress. WAIT!"

    invoke-direct {p0, v4}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->logi(Ljava/lang/String;)V

    return-void

    :cond_3
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    move-result-object v4

    invoke-virtual {v4}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->isAnyProvisionRequestInProgress()Z

    move-result v4

    if-eqz v4, :cond_4

    const-string/jumbo v4, "Manual provisioning in progress. EXIT!"

    invoke-direct {p0, v4}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->logi(Ljava/lang/String;)V

    return-void

    :cond_4
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->isCardsInfoChanged()Z

    move-result v0

    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;->isSubsidyLockFeatureEnabled()Z

    move-result v4

    if-nez v4, :cond_5

    move v2, p1

    :goto_0
    iget-object v6, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPriorityHandler:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;

    if-nez v2, :cond_6

    move v4, v0

    :goto_1
    invoke-virtual {v6, v4}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->loadCurrentPriorityConfigs(Z)V

    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPriorityHandler:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;

    invoke-virtual {v4}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->getPrefPrimarySlot()I

    move-result v4

    iput v4, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPrefPrimarySlot:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mPrefPrimarySlot: setPrimaryCardIfRequired: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPrefPrimarySlot:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->loge(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    invoke-virtual {v4}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->getLpluslSupportStatus()Z

    move-result v4

    if-eqz v4, :cond_7

    const/4 v1, 0x0

    :goto_2
    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->savePrimarySetable(Z)V

    if-nez v0, :cond_9

    xor-int/lit8 v4, p2, 0x1

    if-eqz v4, :cond_9

    xor-int/lit8 v4, p1, 0x1

    if-eqz v4, :cond_9

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "primary card "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->getCurrentPrimarySlotFromDB(Landroid/content/Context;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " ,Cards not changed, IGNORE!!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->logd(Ljava/lang/String;)V

    return-void

    :cond_5
    const/4 v2, 0x1

    goto :goto_0

    :cond_6
    move v4, v5

    goto :goto_1

    :cond_7
    iget v4, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPrefPrimarySlot:I

    const/4 v6, -0x1

    if-eq v4, v6, :cond_8

    const/4 v1, 0x1

    goto :goto_2

    :cond_8
    const/4 v1, 0x0

    goto :goto_2

    :cond_9
    iput-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mCardChanged:Z

    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->resetPrimaryCardParams()V

    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->updateDdsPreferenceInDb()V

    iget v4, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPrefPrimarySlot:I

    const/4 v6, -0x2

    if-ne v4, v6, :cond_b

    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->getDefaultPrimarySlot()I

    move-result v4

    iput v4, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPrefPrimarySlot:I

    iput-boolean v5, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPriorityMatch:Z

    :cond_a
    iget v4, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPrefPrimarySlot:I

    iget v5, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPrefPrimarySlot:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x5

    invoke-virtual {p0, v6, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-direct {p0, v4, v5, p2}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->setPrimaryCardOnSlot(ILandroid/os/Message;Z)V

    return-void

    :cond_b
    iget v4, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPrefPrimarySlot:I

    if-gez v4, :cond_a

    const-string/jumbo v4, "Both slots do not have cards with priority config defined. EXIT!"

    invoke-direct {p0, v4}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->logi(Ljava/lang/String;)V

    return-void
.end method

.method private declared-synchronized setPrimaryCardOnSlot(ILandroid/os/Message;)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, p2, v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->setPrimaryCardOnSlot(ILandroid/os/Message;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized setPrimaryCardOnSlot(ILandroid/os/Message;Z)V
    .locals 8

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/internal/telephony/SubscriptionController;->getSubIdUsingPhoneId(I)I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setPrimaryCardOnSlot: for slotId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", Start."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->logd(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPrimaryCardState:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$PrimaryCardState;

    sget-object v6, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$PrimaryCardState;->IDLE:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$PrimaryCardState;

    if-eq v5, v6, :cond_0

    xor-int/lit8 v5, p3, 0x1

    if-nez v5, :cond_1

    :cond_0
    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPriorityHandler:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;

    invoke-virtual {v5}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->isConfigLoadDone()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_1

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSlotIndex(I)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_1

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/SubscriptionController;->isActiveSubId(I)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_2

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Primary Card State is not IDLE, mPrimaryCardState:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPrimaryCardState:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$PrimaryCardState;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " subId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", or configs not yet loaded EXIT!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->loge(Ljava/lang/String;)V

    const/4 v5, 0x2

    invoke-direct {p0, v5}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->sendSetPrimaryCardResult(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    if-nez p2, :cond_3

    const/4 v0, 0x0

    :goto_0
    :try_start_1
    sget v5, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->PHONE_COUNT:I

    if-ge v0, v5, :cond_3

    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mCurrentIccIds:[Ljava/lang/String;

    iget-object v6, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mCardInfoMgr:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;

    invoke-virtual {v6, v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->getCardInfo(I)Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->getIccId()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    sget-object v5, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$PrimaryCardState;->IN_PROGRESS:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$PrimaryCardState;

    iput-object v5, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPrimaryCardState:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$PrimaryCardState;

    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPriorityHandler:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;

    invoke-virtual {v5, p1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->getNwModesFromConfig(I)[I

    move-result-object v5

    iput-object v5, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPrefNwModes:[I

    iput p1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPrefPrimarySlot:I

    iput-object p2, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mCmdMessage:Landroid/os/Message;

    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mCmdMessage:Landroid/os/Message;

    if-eqz v5, :cond_4

    const/16 v2, 0x3e8

    :goto_1
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPcTriggeredFlexMapDone:Z

    const/4 v0, 0x0

    :goto_2
    sget v5, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->PHONE_COUNT:I

    if-ge v0, v5, :cond_5

    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPrefNwModes:[I

    aget v5, v5, v0

    invoke-direct {p0, v5, v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->saveNwModesToDB(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    const/16 v2, 0x3e9

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    :goto_3
    sget v5, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->PHONE_COUNT:I

    if-ge v1, v5, :cond_7

    if-eq v1, p1, :cond_6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "set NwMode["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPrefNwModes:[I

    aget v6, v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "]  on Secondary card:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->logd(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v5, v5, v1

    iget-object v6, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPrefNwModes:[I

    aget v6, v6, v1

    const/4 v7, 0x3

    invoke-virtual {p0, v7, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_7
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method private startLTEConifgActivity()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "codeaurora.intent.action.ACTION_LTE_CONFIGURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x30800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private updateDdsPreferenceInDb()V
    .locals 5

    const/4 v0, 0x0

    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->isPrimaryCardFeatureEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->isPrimary7Plus5Enabled()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x0

    const/4 v1, 0x0

    :goto_0
    sget v3, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->PHONE_COUNT:I

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mCardInfoMgr:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;

    invoke-virtual {v3, v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->getCardInfo(I)Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->getIccId()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->sCmccIins:[I

    invoke-direct {p0, v3, v4}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->isCardMatchesIins(Ljava/lang/String;[I)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "numCmccCards: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->logi(Ljava/lang/String;)V

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    const-string/jumbo v3, "updateDdsPreferenceInDb: Disable DDS in UI."

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->logi(Ljava/lang/String;)V

    const/4 v0, 0x1

    :cond_2
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->disableDds()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v0, 0x1

    :cond_3
    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->saveDisableDdsPreferenceInDB(Z)V

    return-void
.end method


# virtual methods
.method broadcastPrimarySlotServiceChanged(I)V
    .locals 5

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSlotIndex(I)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " Error!!! Invalid slotId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->logd(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, p1

    invoke-virtual {v2, p0}, Lcom/android/internal/telephony/Phone;->unregisterForServiceStateChanged(Landroid/os/Handler;)V

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v2

    const/16 v3, 0x12

    if-eq v2, v3, :cond_2

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " broadcastPrimarySlotServiceChanged, slotId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->logd(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "org.codeaurora.intent.action.PRIMARY_CARD_CHANGED_IN_SERVICE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "phone"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_2
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, p1

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    const/4 v4, 0x7

    invoke-virtual {v2, p0, v4, v3}, Lcom/android/internal/telephony/Phone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const-string/jumbo v0, "on EVENT_ALL_CARDS_INFO_AVAILABLE"

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->logd(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->setPrimaryCardIfRequired(Z)V

    goto :goto_0

    :pswitch_1
    const-string/jumbo v0, "on EVENT_SET_RADIO_CAPABILITY_DONE"

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->logd(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->handleSetRadioCapsDone()V

    goto :goto_0

    :pswitch_2
    const-string/jumbo v0, "on EVENT_SET_NWMODE_DONE"

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->logd(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->handleSetNwModeDone(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_3
    const-string/jumbo v0, "on EVENT_GET_NWMODE_DONE"

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->logd(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->handleGetNwModeDone(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_4
    const-string/jumbo v0, "on EVENT_PRIMARY_CARD_SET_DONE"

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->logd(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->handleOnSetPrimaryCardDone(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_5
    const-string/jumbo v0, "on EVENT_OEM_HOOK_SERVICE_READY"

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->logd(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPriorityHandler:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;

    invoke-virtual {v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->reloadPriorityConfig()V

    goto :goto_0

    :pswitch_6
    const-string/jumbo v0, "on EVENT_SET_PRIMARY_SUB "

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->logd(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->setPrimaryCardIfRequired(Z)V

    :pswitch_7
    const-string/jumbo v0, "on EVENT_SERVICE_STATE_CHANGED "

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->logd(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->handleServiceStateChanged(Landroid/os/Message;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_5
    .end packed-switch
.end method

.method protected isCardsInfoChanged(I)Z
    .locals 5

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mCardInfoMgr:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;

    invoke-virtual {v2, p1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->getCardInfo(I)Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->getIccId()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mCurrentIccIds:[Ljava/lang/String;

    aput-object v0, v2, p1

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "primarycard_sub"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " phoneId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " icc id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", icc id in sp="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->logd(Ljava/lang/String;)V

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    return v2
.end method

.method public saveUserSelectionMode()V
    .locals 4

    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->getUserSelectionMode()I

    move-result v1

    const/4 v0, 0x0

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget-boolean v2, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPriorityMatch:Z

    if-eqz v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "saveUserSelectionMode: enableUserSelection ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->logd(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->saveEnableUserSelectioninDB(Z)V

    return-void
.end method

.method public setPrimaryCardOnSlot(I)V
    .locals 2

    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->isRadioInValidState()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setPrimaryCardOnSlot["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]: Radio is in Invalid State, EXIT!!!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->loge(Ljava/lang/String;)V

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->sendSetPrimaryCardResult(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->setPrimaryCardOnSlot(ILandroid/os/Message;)V

    return-void
.end method

.method public trySetPrimarySub()V
    .locals 1

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
