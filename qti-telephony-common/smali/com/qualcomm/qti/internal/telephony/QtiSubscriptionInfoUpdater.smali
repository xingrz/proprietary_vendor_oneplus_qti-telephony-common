.class public Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;
.super Lcom/android/internal/telephony/SubscriptionInfoUpdater;
.source "QtiSubscriptionInfoUpdater.java"


# static fields
.field private static final ACTION_ALL_ICC_QUERY_DONE:Ljava/lang/String; = "org.codeaurora.intent.action.ALL_ICC_QUERY_DONE"

.field private static final CARRIER_MODE_CT_CLASS_A:Ljava/lang/String; = "ct_class_a"

.field private static final EVENT_ADD_SUBINFO_RECORD:I = 0x64

.field private static final EVENT_UPDATE_NV_RECORD:I = 0x65

.field private static final ICCID_STRING_FOR_NO_SIM:Ljava/lang/String; = ""

.field private static final ICCID_STRING_FOR_NV:Ljava/lang/String; = "DUMMY_NV_ID"

.field private static final LOG_TAG:Ljava/lang/String; = "QtiSubscriptionInfoUpdater"

.field private static final ROAMING_SETTINGS_CONFIG:Ljava/lang/String; = "persist.vendor.radio.roamingsettings"

.field private static final mNumPhones:I

.field private static sContext:Landroid/content/Context;

.field private static sInstance:Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;


# instance fields
.field private isNVSubAvailable:Z

.field private mCarrierMode:Ljava/lang/String;

.field private mIsCTClassA:Z

.field private mIsRecordUpdateRequired:[Z

.field private needEnableRoamingSettings:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    sput-object v1, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->sContext:Landroid/content/Context;

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    sput v0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->mNumPhones:I

    sput-object v1, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->sInstance:Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;[Lcom/android/internal/telephony/Phone;[Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;-><init>(Landroid/content/Context;[Lcom/android/internal/telephony/Phone;[Lcom/android/internal/telephony/CommandsInterface;)V

    iput-boolean v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->isNVSubAvailable:Z

    iput-boolean v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->needEnableRoamingSettings:Z

    const-string/jumbo v1, "persist.radio.carrier_mode"

    const-string/jumbo v2, "default"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->mCarrierMode:Ljava/lang/String;

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->mCarrierMode:Ljava/lang/String;

    const-string/jumbo v2, "ct_class_a"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->mIsCTClassA:Z

    sget v1, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->mNumPhones:I

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->mIsRecordUpdateRequired:[Z

    sput-object p1, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->sContext:Landroid/content/Context;

    const/4 v0, 0x0

    :goto_0
    sget v1, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->mNumPhones:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->mIsRecordUpdateRequired:[Z

    aput-boolean v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private checkUiccCard(Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->isCtCard(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne v2, v3, :cond_0

    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/UiccCard;->isApplicationOnIcc(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/UiccCard;->isApplicationOnIcc(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_RUIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/UiccCard;->isApplicationOnIcc(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Z

    move-result v0

    :goto_0
    if-nez v0, :cond_0

    const-string/jumbo v2, "QtiSubscriptionInfoUpdater"

    const-string/jumbo v3, "This is a 3G CT card."

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->sendBroadCastToApp()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    const-string/jumbo v2, "QtiSubscriptionInfoUpdater"

    const-string/jumbo v3, "This is a non-CT card."

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->sendBroadCastToApp()V

    goto :goto_1
.end method

.method public static getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;
    .locals 2

    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->sInstance:Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;

    if-nez v0, :cond_0

    const-string/jumbo v0, "QtiSubscriptionInfoUpdater"

    const-string/jumbo v1, "getInstance null"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->sInstance:Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;

    return-object v0
.end method

.method private declared-synchronized handleAddSubInfoRecordEvent(ILjava/lang/String;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v0, v0, p1

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const-string/jumbo v0, "QtiSubscriptionInfoUpdater"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Record already exists ignore duplicate update, existing IccId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " recvd iccId["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Landroid/telephony/SubscriptionInfo;->givePrintableIccid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v0, v0, p1

    if-eqz v0, :cond_1

    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v0, v0, p1

    const-string/jumbo v1, ""

    if-ne v0, v1, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->mIsRecordUpdateRequired:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    :cond_2
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aput-object p2, v0, p1

    const-string/jumbo v0, "QtiSubscriptionInfoUpdater"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " slotId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", iccId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Landroid/telephony/SubscriptionInfo;->givePrintableIccid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " needEnableRoamingSettings = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->needEnableRoamingSettings:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-direct {p0, p2}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->isCtCard(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string/jumbo v0, "persist.vendor.radio.roamingsettings"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->sContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->setRoamingSettingsState(Landroid/content/Context;Z)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->needEnableRoamingSettings:Z

    :cond_3
    :goto_0
    iget-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->mIsCTClassA:Z

    if-eqz v0, :cond_4

    if-nez p1, :cond_4

    invoke-direct {p0, p2}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->checkUiccCard(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->isAllIccIdQueryDone()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->updateSubscriptionInfoByIccId()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_5
    monitor-exit p0

    return-void

    :cond_6
    :try_start_2
    iget-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->needEnableRoamingSettings:Z

    if-nez v0, :cond_3

    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->sContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->setRoamingSettingsState(Landroid/content/Context;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static init(Landroid/content/Context;[Lcom/android/internal/telephony/Phone;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;
    .locals 4

    const-class v1, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->sInstance:Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;

    if-nez v0, :cond_0

    new-instance v0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;

    invoke-direct {v0, p0, p1, p2}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;-><init>(Landroid/content/Context;[Lcom/android/internal/telephony/Phone;[Lcom/android/internal/telephony/CommandsInterface;)V

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->sInstance:Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;

    :goto_0
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->sInstance:Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    const-string/jumbo v0, "QtiSubscriptionInfoUpdater"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "init() called multiple times!  sInstance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->sInstance:Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private isCtCard(Ljava/lang/String;)Z
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x6

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "898603"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "898611"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "8985231"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "8985302"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "8985307"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    return v1

    :cond_1
    return v2
.end method

.method private sendBroadCastToApp()V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.qualcomm.qti.networksetting"

    const-string/jumbo v2, "com.qualcomm.qti.networksetting.SimAlertNotification"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "QtiSubscriptionInfoUpdater"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Sending broadcast to NetworkSetting"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->sContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private setRoamingSettingsState(Landroid/content/Context;Z)V
    .locals 3

    if-nez p1, :cond_0

    const-string/jumbo v1, "QtiSubscriptionInfoUpdater"

    const-string/jumbo v2, "setRoamingSettingsState, context null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-nez v0, :cond_1

    const-string/jumbo v1, "QtiSubscriptionInfoUpdater"

    const-string/jumbo v2, "setRoamingSettingsState, PackageManager null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    return-void
.end method


# virtual methods
.method addSubInfoRecord(ILjava/lang/String;)V
    .locals 3

    if-eqz p2, :cond_0

    if-ltz p1, :cond_0

    sget v0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->mNumPhones:I

    if-lt p1, v0, :cond_1

    :cond_0
    const-string/jumbo v0, "QtiSubscriptionInfoUpdater"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "addSubInfoRecord, invalid input IccId["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Landroid/telephony/SubscriptionInfo;->givePrintableIccid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->handleAddSubInfoRecordEvent(ILjava/lang/String;)V

    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->sendAddSubInfoRecordforSelectMultiMode(ILjava/lang/String;)V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    const-string/jumbo v3, "QtiSubscriptionInfoUpdater"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " handleMessage: EVENT:  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    invoke-super {p0, p1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->handleMessage(Landroid/os/Message;)V

    :goto_0
    return-void

    :sswitch_0
    iget v4, p1, Landroid/os/Message;->arg1:I

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v4, v3}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->handleAddSubInfoRecordEvent(ILjava/lang/String;)V

    goto :goto_0

    :sswitch_1
    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v3}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->handleUpdateNVRecord(I)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;

    iget v1, v2, Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;->slotId:I

    sget-object v3, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v3, v3, v1

    if-eqz v3, :cond_0

    sget-object v3, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v3, v3, v1

    const-string/jumbo v4, ""

    if-ne v3, v4, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->mIsRecordUpdateRequired:[Z

    const/4 v4, 0x1

    aput-boolean v4, v3, v1

    :cond_1
    invoke-super {p0, p1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x64 -> :sswitch_0
        0x65 -> :sswitch_1
    .end sparse-switch
.end method

.method protected handleSimAbsentOrError(ILjava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->isNVSubAvailable:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v0, v0, p1

    if-eqz v0, :cond_1

    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v0, v0, p1

    const-string/jumbo v1, ""

    if-eq v0, v1, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->mIsRecordUpdateRequired:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    :cond_2
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->handleSimAbsentOrError(ILjava/lang/String;)V

    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->sendSimAbsentforSelectMultiMode(I)V

    return-void
.end method

.method protected handleSimLoaded(I)V
    .locals 2

    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v0, v0, p1

    const-string/jumbo v1, ""

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->mIsRecordUpdateRequired:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    :cond_1
    invoke-super {p0, p1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->handleSimLoaded(I)V

    return-void
.end method

.method public handleUpdateNVRecord(I)V
    .locals 5

    const/4 v4, 0x0

    iget-boolean v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->isNVSubAvailable:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->mIsRecordUpdateRequired:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, p1

    const-string/jumbo v1, "DUMMY_NV_ID"

    invoke-direct {p0, p1, v1}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->handleAddSubInfoRecordEvent(ILjava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v1

    sget-object v2, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->sContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v4, v2}, Lcom/android/internal/telephony/SubscriptionController;->getSubInfoUsingSlotIndexWithCheck(IZLjava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v2, "QtiSubscriptionInfoUpdater"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleUpdateNVRecord, active IccID: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/SubscriptionInfo;->givePrintableIccid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "DUMMY_NV_ID"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "ABSENT"

    invoke-virtual {p0, p1, v1}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->handleSimAbsentOrError(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public updateNVRecord(ZI)V
    .locals 3

    const-string/jumbo v0, "QtiSubscriptionInfoUpdater"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateNVRecord, isNVReady: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " slotId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->isNVSubAvailable:Z

    const/16 v0, 0x65

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, p2, v1, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected declared-synchronized updateSubscriptionInfoByIccId()V
    .locals 4

    monitor-enter p0

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    sget v2, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->mNumPhones:I

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->mIsRecordUpdateRequired:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    :cond_0
    if-eqz v1, :cond_3

    invoke-super {p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->updateSubscriptionInfoByIccId()V

    const-string/jumbo v2, "QtiSubscriptionInfoUpdater"

    const-string/jumbo v3, "SIM state changed, Updating user preference "

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->isAllCardProvisionInfoReceived()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->updateUserPreferences()V

    :cond_1
    const/4 v0, 0x0

    :goto_1
    sget v2, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->mNumPhones:I

    if-ge v0, v2, :cond_4

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->mIsRecordUpdateRequired:[Z

    const/4 v3, 0x0

    aput-boolean v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const-string/jumbo v2, "QtiSubscriptionInfoUpdater"

    const-string/jumbo v3, "Ignoring subscription update event"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method
