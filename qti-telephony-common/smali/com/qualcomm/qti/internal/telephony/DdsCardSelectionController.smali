.class public Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;
.super Ljava/lang/Object;
.source "DdsCardSelectionController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$1;,
        Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$2;,
        Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$3;,
        Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$4;,
        Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$5;,
        Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$6;,
        Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;,
        Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$TetherStateChange;
    }
.end annotation


# static fields
.field private static final ACTION_MCFG_MBN_ACTIVATED_DONE:Ljava/lang/String; = "qualcomm.intent.action.ACTION_MCFG_MBN_DONE"

.field private static final BACKUP_DDS_ICCID:Ljava/lang/String; = "persist.radio.bksim.iccid"

.field private static final CONFIG_CURRENT_PRIMARY_SUB:Ljava/lang/String; = "config_current_primary_sub"

.field private static final DDS_ICCID:Ljava/lang/String; = "persist.radio.ddssim.iccid"

.field private static final DDS_NETWORK_TYPE:Ljava/lang/String; = "persist.radio.ddssim.rat"

.field private static final DEBUG:Z = true

.field private static final EVENT_ADD_SUBINFO_RECORD_FOR_MULTIMODE:I = 0xa

.field private static final EVENT_ANTENNA_SWITCH_RETRY:I = 0x14

.field private static final EVENT_CARD_ABSENT_FOR_MULTIMODE:I = 0xb

.field private static final EVENT_GET_ANTENNA_POS:I = 0x15

.field private static final EVENT_GET_ICC_STATUS_DONE:I = 0xe

.field private static final EVENT_GET_RADIO_CAPABILITY:I = 0x11

.field private static final EVENT_MBN_ACTIVATED_DONE:I = 0x17

.field private static final EVENT_PHONE_OBJECT_SWITCH:I = 0x1a

.field private static final EVENT_PRI_PERF_DONE:I = 0x12

.field private static final EVENT_PSENSOR_CHANGE:I = 0x1f

.field private static final EVENT_RADIO_AVAILABLE:I = 0xc

.field private static final EVENT_RADIO_NOT_AVAILABLE:I = 0xd

.field private static final EVENT_RESET_DDS:I = 0x1c

.field private static final EVENT_SCREEN_CHANGE:I = 0x1d

.field private static final EVENT_SET_GW_PERF_DONE:I = 0x10

.field private static final EVENT_SET_RAT_EX:I = 0x1e

.field private static final EVENT_SIM_LOADED_DONE:I = 0x18

.field private static final EVENT_SIM_STATUS_CHANGE:I = 0x16

.field private static final EVENT_SOFTSIM_SETTING_CHANGE:I = 0x1b

.field private static final EVENT_TEST_CARD_DETECT:I = 0x13

.field private static final EVENT_WAITING_TIME_OUT:I = 0xf

.field private static final EVENT_WAKE_LOCK_TIMEOUT:I = 0x20

.field private static final FIRST_BOOT:Ljava/lang/String; = "persist.radio.firstboot"

.field static final LOG_TAG:Ljava/lang/String; = "DdsCardSelectionController"

.field private static final NOT_PROVISIONED:I = 0x0

.field private static final OEM_CMD_RF_SAR_STATUS_CLOSE:I = 0x3

.field private static final OEM_CMD_RF_SAR_STATUS_OPEN:I = 0x2

.field private static final OEM_EVENT_TETHER_STATE_CHANGE:I = 0x19

.field private static final OEM_RF_SAR_2G_WIFIHOT:I = 0x1

.field private static final OEM_RF_SAR_2G_WIFIHOT_CALL:I = 0x4

.field private static final OEM_RF_SAR_5G_WIFIHOT:I = 0x2

.field private static final OEM_RF_SAR_5G_WIFIHOT_CALL:I = 0x5

.field private static final OEM_RF_SAR_CALLING_ONLY:I = 0x3

.field private static final OEM_SAR_DEFAULT:I = 0x6

.field private static final OEM_SAR_FRANCE:I = 0x7

.field private static final PROVISIONED:I = 0x1

.field private static final SOFTSIM_DISABLE_EVENT_DELAY:I = 0xfa0

.field private static final SOFT_SIM:Ljava/lang/String; = "softsim_iccid"

.field private static final VDBG:Z = false

.field private static final WAITING_OTHER_CARD_INSERT_DELAY:I = 0x1770

.field private static final WAITING_OTHER_CARD_READY_DELAY:I = 0xbb8

.field private static final WAKE_LOCK_TIMEOUT:I = 0x1770

.field private static isCMCCVersion:Z

.field private static isCardPlugIn2Out:Z

.field private static isEfsSyncFlageEnable:Z

.field private static isFranceSAROpen:Z

.field private static isSAREanble:Z

.field private static isSetedANTconfig:Z

.field private static isTestMode:Z

.field private static mIccidList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mNumPhones:I

.field private static mQtiRadioCapabilityController:Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;

.field private static mTMOIccidList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static retry_times:I

.field private static sInstance:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

.field private static sProxyPhones:[Lcom/android/internal/telephony/Phone;


# instance fields
.field action:I

.field private isCtaSwitchNotOn:Z

.field private isPtcrb:Z

.field isWifiHotOpen:Z

.field isWifiHotOpenOld:Z

.field mAudioManager:Landroid/media/AudioManager;

.field private mCi:[Lcom/android/internal/telephony/CommandsInterface;

.field private mCm:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

.field private mHandler:Landroid/os/Handler;

.field private mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mObserver:Landroid/database/ContentObserver;

.field private mObserverPsensor:Landroid/database/ContentObserver;

.field mPSensorNegative:Z

.field private mQcRilHook:Lcom/qualcomm/qcrilhook/QcRilHook;

.field private mQcRilHookCallback:Lcom/qualcomm/qcrilhook/QcRilHookCallback;

.field private mQcRilHookReady:Z

.field private mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

.field private mRadioCapability:[Lcom/android/internal/telephony/RadioCapability;

.field private final mSARActionTable:[[I

.field private mTelecomManager:Landroid/telecom/TelecomManager;

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field oldAction:I


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isEfsSyncFlageEnable:Z

    return v0
.end method

.method static synthetic -get1()Z
    .locals 1

    sget-boolean v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isSetedANTconfig:Z

    return v0
.end method

.method static synthetic -get10(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)[Lcom/android/internal/telephony/RadioCapability;
    .locals 1

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mRadioCapability:[Lcom/android/internal/telephony/RadioCapability;

    return-object v0
.end method

.method static synthetic -get11()I
    .locals 1

    sget v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->retry_times:I

    return v0
.end method

.method static synthetic -get2()Z
    .locals 1

    sget-boolean v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isTestMode:Z

    return v0
.end method

.method static synthetic -get3(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)[Lcom/android/internal/telephony/CommandsInterface;
    .locals 1

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    return-object v0
.end method

.method static synthetic -get4(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get5(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;
    .locals 1

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    return-object v0
.end method

.method static synthetic -get6(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get7(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)Lcom/qualcomm/qcrilhook/QcRilHook;
    .locals 1

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mQcRilHook:Lcom/qualcomm/qcrilhook/QcRilHook;

    return-object v0
.end method

.method static synthetic -get8(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mQcRilHookReady:Z

    return v0
.end method

.method static synthetic -get9()Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;
    .locals 1

    sget-object v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mQtiRadioCapabilityController:Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;

    return-object v0
.end method

.method static synthetic -set0(Z)Z
    .locals 0

    sput-boolean p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isCardPlugIn2Out:Z

    return p0
.end method

.method static synthetic -set1(Z)Z
    .locals 0

    sput-boolean p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isSetedANTconfig:Z

    return p0
.end method

.method static synthetic -set2(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mQcRilHookReady:Z

    return p1
.end method

.method static synthetic -set3(I)I
    .locals 0

    sput p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->retry_times:I

    return p0
.end method

.method static synthetic -wrap0(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)Z
    .locals 1

    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->checkAllCardInsert()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)Z
    .locals 1

    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isOnlyOneCardInsert()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap11(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)V
    .locals 0

    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->oemSendSubscriptionSettings()V

    return-void
.end method

.method static synthetic -wrap12(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;Landroid/os/AsyncResult;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->onGetIccCardStatusDone(Landroid/os/AsyncResult;Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic -wrap13(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)V
    .locals 0

    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->processMbnActivatedDone()V

    return-void
.end method

.method static synthetic -wrap14(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->processSimStatusChange(I)V

    return-void
.end method

.method static synthetic -wrap15(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)V
    .locals 0

    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->processSoftSimIccidChange()V

    return-void
.end method

.method static synthetic -wrap16(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->updateCurrentCardStatus(IILjava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;Ljava/util/ArrayList;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isWifiTethered(Ljava/util/ArrayList;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;J)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->acquireWakeLockWithTimeOut(J)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)V
    .locals 0

    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->clearWakeLock()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)V
    .locals 0

    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->getPhoneMatchImei()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->handleAddSubInfoRecordforSelectMultiMode(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)V
    .locals 0

    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->handleSarEvet()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)V
    .locals 0

    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->handleTimeOut()V

    return-void
.end method

.method static synthetic -wrap9(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x6

    const/4 v1, 0x0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    sput v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mNumPhones:I

    sput v1, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->retry_times:I

    const/4 v0, 0x1

    sput-boolean v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isCardPlugIn2Out:Z

    sput-boolean v1, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isTestMode:Z

    sput-boolean v1, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isSAREanble:Z

    sput-boolean v1, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isFranceSAROpen:Z

    sput-boolean v1, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isSetedANTconfig:Z

    sput-boolean v1, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isEfsSyncFlageEnable:Z

    new-instance v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$1;

    invoke-direct {v0, v2}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$1;-><init>(I)V

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mIccidList:Ljava/util/ArrayList;

    new-instance v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$2;

    invoke-direct {v0, v2}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$2;-><init>(I)V

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mTMOIccidList:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;[Lcom/android/internal/telephony/CommandsInterface;[Lcom/android/internal/telephony/Phone;)V
    .locals 11

    const/4 v6, 0x3

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v4, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mNumPhones:I

    new-array v4, v4, [Lcom/android/internal/telephony/RadioCapability;

    iput-object v4, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mRadioCapability:[Lcom/android/internal/telephony/RadioCapability;

    iput-object v9, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mWifiManager:Landroid/net/wifi/WifiManager;

    iput-object v9, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    sget v4, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mNumPhones:I

    new-array v4, v4, [Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    iput-object v4, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    iput-boolean v8, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isCtaSwitchNotOn:Z

    iput-boolean v8, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mQcRilHookReady:Z

    iput-object v9, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    const/4 v4, 0x6

    new-array v4, v4, [[I

    const/4 v5, 0x6

    filled-new-array {v6, v5}, [I

    move-result-object v5

    aput-object v5, v4, v8

    filled-new-array {v7, v10}, [I

    move-result-object v5

    aput-object v5, v4, v10

    filled-new-array {v7, v7}, [I

    move-result-object v5

    aput-object v5, v4, v7

    filled-new-array {v7, v6}, [I

    move-result-object v5

    aput-object v5, v4, v6

    const/4 v5, 0x4

    filled-new-array {v7, v5}, [I

    move-result-object v5

    const/4 v6, 0x4

    aput-object v5, v4, v6

    const/4 v5, 0x5

    filled-new-array {v7, v5}, [I

    move-result-object v5

    const/4 v6, 0x5

    aput-object v5, v4, v6

    iput-object v4, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mSARActionTable:[[I

    iput-boolean v8, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isPtcrb:Z

    new-instance v4, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$3;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    invoke-direct {v4, p0, v5}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$3;-><init>(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;Landroid/os/Handler;)V

    iput-object v4, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mObserver:Landroid/database/ContentObserver;

    new-instance v4, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$4;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    invoke-direct {v4, p0, v5}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$4;-><init>(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;Landroid/os/Handler;)V

    iput-object v4, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mObserverPsensor:Landroid/database/ContentObserver;

    new-instance v4, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$5;

    invoke-direct {v4, p0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$5;-><init>(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)V

    iput-object v4, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iput-object v9, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCm:Landroid/net/ConnectivityManager;

    iput-boolean v8, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isWifiHotOpen:Z

    iput-boolean v8, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isWifiHotOpenOld:Z

    iput-boolean v8, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mPSensorNegative:Z

    iput v8, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->action:I

    iput v8, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->oldAction:I

    new-instance v4, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$6;

    invoke-direct {v4, p0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$6;-><init>(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)V

    iput-object v4, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mQcRilHookCallback:Lcom/qualcomm/qcrilhook/QcRilHookCallback;

    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    sput-object p4, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    sput-object p2, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mQtiRadioCapabilityController:Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;

    new-instance v3, Landroid/os/HandlerThread;

    const-string/jumbo v4, "DdsCardSelectionController"

    invoke-direct {v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    new-instance v4, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;-><init>(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;Landroid/os/Looper;)V

    iput-object v4, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->getInstance(Landroid/content/Context;)Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    move-result-object v4

    iput-object v4, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    invoke-static {p1}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v4

    iput-object v4, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mTelecomManager:Landroid/telecom/TelecomManager;

    const-string/jumbo v4, "persist.radio.cmcc"

    const-string/jumbo v5, "true"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "true"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    sput-boolean v4, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isCMCCVersion:Z

    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string/jumbo v5, "oem.ctaSwitch.support"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    iput-boolean v4, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isCtaSwitchNotOn:Z

    const-string/jumbo v4, "persist.radio.testmode"

    const-string/jumbo v5, "false"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "true"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    sput-boolean v4, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isTestMode:Z

    const-string/jumbo v4, "persist.radio.sar.enable"

    const-string/jumbo v5, "true"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "true"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    sput-boolean v4, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isSAREanble:Z

    const-string/jumbo v4, "persist.radio.efssync"

    const-string/jumbo v5, "false"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "true"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    sput-boolean v4, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isEfsSyncFlageEnable:Z

    sput-boolean v8, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isFranceSAROpen:Z

    const-string/jumbo v4, "power"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    const-string/jumbo v4, "DdsCardSelectionController"

    invoke-virtual {v2, v10, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4, v8}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "audio"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioManager;

    iput-object v4, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mAudioManager:Landroid/media/AudioManager;

    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "wifi"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    iput-object v4, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mWifiManager:Landroid/net/wifi/WifiManager;

    new-instance v4, Lcom/qualcomm/qcrilhook/QcRilHook;

    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mQcRilHookCallback:Lcom/qualcomm/qcrilhook/QcRilHookCallback;

    invoke-direct {v4, v5, v6}, Lcom/qualcomm/qcrilhook/QcRilHook;-><init>(Landroid/content/Context;Lcom/qualcomm/qcrilhook/QcRilHookCallback;)V

    iput-object v4, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mQcRilHook:Lcom/qualcomm/qcrilhook/QcRilHook;

    const/4 v1, 0x0

    :goto_0
    sget v4, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mNumPhones:I

    if-ge v1, v4, :cond_0

    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    new-instance v5, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    const/4 v6, -0x1

    invoke-direct {v5, v6, v9}, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;-><init>(ILjava/lang/String;)V

    aput-object v5, v4, v1

    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    aget-object v4, v4, v1

    iput-boolean v8, v4, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;->isCardReady:Z

    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    aget-object v4, v4, v1

    iput-boolean v8, v4, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;->isPinLocked:Z

    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    aget-object v4, v4, v1

    iput-boolean v8, v4, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;->isCDMACard:Z

    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mRadioCapability:[Lcom/android/internal/telephony/RadioCapability;

    aput-object v9, v4, v1

    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v4, v4, v1

    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mHandler:Landroid/os/Handler;

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v1}, Ljava/lang/Integer;-><init>(I)V

    const/16 v7, 0xc

    invoke-interface {v4, v5, v7, v6}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v4, v4, v1

    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mHandler:Landroid/os/Handler;

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v1}, Ljava/lang/Integer;-><init>(I)V

    const/16 v7, 0xd

    invoke-interface {v4, v5, v7, v6}, Lcom/android/internal/telephony/CommandsInterface;->registerForNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    sget-object v4, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v4, v4, v1

    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "softsim_iccid"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v4, v5, v8, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->registerPsensor()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v4, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v4, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v4, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v4, "qualcomm.intent.action.ACTION_MCFG_MBN_DONE"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v4, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string/jumbo v4, "Constructor - Exit"

    invoke-direct {p0, v4}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    return-void
.end method

.method private acquireWakeLockWithTimeOut(J)V
    .locals 5

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x20

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x20

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private backupDdsIccid(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "persist.radio.bksim.iccid"

    invoke-static {v0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private checkAllCardInsert()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    :goto_0
    sget v2, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mNumPhones:I

    if-ge v1, v2, :cond_1

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    aget-object v2, v2, v1

    iget v2, v2, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;->cardStatus:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;->iccId:Ljava/lang/String;

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    return v0
.end method

.method private checkAllCardIsReady()Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    :goto_0
    sget v2, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mNumPhones:I

    if-ge v1, v2, :cond_1

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    aget-object v2, v2, v1

    iget-boolean v0, v2, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;->isCardReady:Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    return v0
.end method

.method private checkAndSetConnectivityInstance()V
    .locals 2

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCm:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCm:Landroid/net/ConnectivityManager;

    :cond_0
    return-void
.end method

.method private checkAnyCardIsLocked()Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    sget v2, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mNumPhones:I

    if-ge v1, v2, :cond_1

    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    aget-object v2, v2, v1

    iget-boolean v0, v2, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;->isPinLocked:Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    return v0
.end method

.method private clearWakeLock()V
    .locals 2

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "no wakelock release"

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private doFlexMapping(I)V
    .locals 9

    sget v7, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mNumPhones:I

    new-array v6, v7, [Landroid/telephony/RadioAccessFamily;

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/internal/telephony/ProxyController;->getInstance()Lcom/android/internal/telephony/ProxyController;

    move-result-object v4

    const/4 v1, 0x0

    :goto_0
    sget v7, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mNumPhones:I

    if-ge v1, v7, :cond_1

    sget-object v7, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v3, v7, v1

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-virtual {v4}, Lcom/android/internal/telephony/ProxyController;->getMaxRafSupported()I

    move-result v5

    const/4 v0, 0x1

    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "[doFlexMapping] phoneId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " subId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " RAF="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    new-instance v7, Landroid/telephony/RadioAccessFamily;

    invoke-direct {v7, v1, v5}, Landroid/telephony/RadioAccessFamily;-><init>(II)V

    aput-object v7, v6, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Lcom/android/internal/telephony/ProxyController;->getMinRafSupported()I

    move-result v5

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/internal/telephony/ProxyController;->getInstance()Lcom/android/internal/telephony/ProxyController;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/android/internal/telephony/ProxyController;->setRadioCapability([Landroid/telephony/RadioAccessFamily;)Z

    :goto_2
    return-void

    :cond_2
    const-string/jumbo v7, "[doFlexMapping] no valid subId\'s found - not updating."

    invoke-direct {p0, v7}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public static getInstance()Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;
    .locals 2

    sget-object v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->sInstance:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    if-nez v0, :cond_0

    const-string/jumbo v0, "DdsCardSelectionController"

    const-string/jumbo v1, "DdsCardSelectionController.getInstance called before make"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->sInstance:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    return-object v0
.end method

.method private getMainStackPhoneId()I
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v0, 0x0

    :goto_0
    sget v4, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mNumPhones:I

    if-ge v0, v4, :cond_2

    sget-object v4, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v4, v0

    if-nez v2, :cond_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getModemUuId()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Logical Modem id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " phoneId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logv(Ljava/lang/String;)V

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_0

    move v3, v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Primay Stack phone id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " selected"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logv(Ljava/lang/String;)V

    :cond_2
    const/4 v4, -0x1

    if-ne v3, v4, :cond_3

    const-string/jumbo v4, "Returning default phone id"

    invoke-direct {p0, v4}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logv(Ljava/lang/String;)V

    const/4 v3, 0x0

    :cond_3
    return v3
.end method

.method private getNetworkModeFromDB(I)I
    .locals 8

    const/4 v7, 0x0

    const/4 v0, 0x0

    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SubscriptionController;->getSubId(I)[I

    move-result-object v3

    if-eqz v3, :cond_0

    array-length v4, v3

    if-lez v4, :cond_0

    aget v4, v3, v7

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/SubscriptionController;->isActiveSubId(I)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "preferred_network_mode"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v3, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget v6, Lcom/android/internal/telephony/Phone;->PREFERRED_NT_MODE:I

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " get sub based N/W mode, val["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logv(Ljava/lang/String;)V

    :goto_0
    return v1

    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "preferred_network_mode"

    invoke-static {v4, v5, p1}, Landroid/telephony/TelephonyManager;->getIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " get slot based N/W mode, val["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logv(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v2

    const-string/jumbo v4, "getPreferredNetworkMode: Could not find PREFERRED_NETWORK_MODE!!!"

    invoke-direct {p0, v4}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->loge(Ljava/lang/String;)V

    sget v1, Lcom/android/internal/telephony/Phone;->PREFERRED_NT_MODE:I

    goto :goto_1
.end method

.method private getPhoneMatchImei()V
    .locals 0

    return-void
.end method

.method private getPrimaryICCID()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    const-string/jumbo v1, "persist.radio.ddssim.iccid"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " getPrimaryICCID,DDS_ICCId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    return-object v0
.end method

.method private getPrimaryNetworkType()I
    .locals 3

    const-string/jumbo v1, "persist.radio.ddssim.rat"

    const/16 v2, 0x14

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " getPrimaryNetworkType  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    return v0
.end method

.method private getPrimarySlot()I
    .locals 4

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "config_current_primary_sub"

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " getPrimarySlot,CONFIG_CURRENT_PRIMARY_SUB="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    return v0
.end method

.method private getUiccProvisionStatus(I)I
    .locals 2

    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->getInstance()Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->getInstance()Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->getCurrentUiccCardProvisioningStatus(I)I

    move-result v1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private handleAddSubInfoRecordforSelectMultiMode(ILjava/lang/String;)V
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "detect iccid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "  slotId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    invoke-direct {p0, p1, v8, p2}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->updateCurrentCardStatus(IILjava/lang/String;)V

    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v3, v3, p1

    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0xe

    invoke-virtual {v4, v6, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->getIccCardStatus(Landroid/os/Message;)V

    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    aget-object v3, v3, p1

    iput-boolean v7, v3, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;->isCardReady:Z

    :cond_0
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->checkAllCardInsert()Z

    move-result v2

    const-string/jumbo v3, "fasle"

    const-string/jumbo v4, "persist.radio.firstboot"

    invoke-static {v4, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "this time is first boot up"

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    const-string/jumbo v3, "persist.radio.firstboot"

    const-string/jumbo v4, "fasle"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v3, v3, p1

    invoke-virtual {v3, v7}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    sget-object v3, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    rsub-int/lit8 v4, p1, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v3, v7}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    const-wide/16 v4, 0x3e8

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "airplane_mode_on"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    sget-object v3, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v3, v3, p1

    invoke-virtual {v3, v8}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    sget-object v3, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    rsub-int/lit8 v4, p1, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v3, v8}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    :cond_1
    return-void

    :catch_0
    move-exception v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleSarEvet()V
    .locals 10

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x0

    sget-boolean v5, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isSAREanble:Z

    if-eqz v5, :cond_0

    sget-boolean v5, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isFranceSAROpen:Z

    if-eqz v5, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-boolean v5, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mPSensorNegative:Z

    if-eqz v5, :cond_2

    const/4 v1, 0x0

    :goto_0
    iget-boolean v5, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isWifiHotOpen:Z

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v5

    iput-object v5, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v0, v5, Landroid/net/wifi/WifiConfiguration;->apBand:I

    if-nez v0, :cond_5

    const/4 v4, 0x1

    :goto_1
    add-int v5, v4, v1

    iput v5, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->action:I

    iget v5, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->action:I

    iget v6, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->oldAction:I

    if-ne v5, v6, :cond_8

    const-string/jumbo v5, "SAR: no action change, return"

    invoke-direct {p0, v5}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5}, Landroid/media/AudioManager;->getMode()I

    move-result v3

    const/4 v5, 0x2

    if-eq v3, v5, :cond_3

    const/4 v5, 0x3

    if-ne v3, v5, :cond_4

    :cond_3
    const/4 v1, 0x3

    goto :goto_0

    :cond_4
    if-eq v3, v9, :cond_3

    sget-boolean v5, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isTestMode:Z

    if-nez v5, :cond_3

    const/4 v1, 0x0

    goto :goto_0

    :cond_5
    if-ne v0, v9, :cond_6

    const/4 v4, 0x2

    goto :goto_1

    :cond_6
    const/4 v4, 0x0

    goto :goto_1

    :cond_7
    const/4 v4, 0x0

    goto :goto_1

    :cond_8
    iget v5, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->action:I

    iput v5, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->oldAction:I

    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mQcRilHook:Lcom/qualcomm/qcrilhook/QcRilHook;

    iget-object v6, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mSARActionTable:[[I

    iget v7, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->action:I

    aget-object v6, v6, v7

    aget v6, v6, v8

    iget-object v7, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mSARActionTable:[[I

    iget v8, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->action:I

    aget-object v7, v7, v8

    aget v7, v7, v9

    invoke-virtual {v5, v6, v7}, Lcom/qualcomm/qcrilhook/QcRilHook;->setFactoryModeModemGPIO(II)Z

    return-void
.end method

.method private handleTimeOut()V
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->getPrevPrimaryPhoneId()I

    move-result v1

    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/internal/telephony/SubscriptionController;->getSubId(I)[I

    move-result-object v2

    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v3

    aget v4, v2, v5

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/SubscriptionController;->isActiveSubId(I)Z

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleTimeOut isSubActive: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "  phoneId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v3

    aget v4, v2, v5

    invoke-virtual {v3, v4}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->setDefaultDataSubId(I)V

    :cond_0
    const-string/jumbo v3, "true"

    const-string/jumbo v4, "persist.radio.ptcrb.enable"

    const-string/jumbo v5, "false"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isPtcrb:Z

    iget-boolean v3, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isPtcrb:Z

    if-nez v3, :cond_3

    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->hasCdmaCardInsert()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->checkAnyCardIsLocked()Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "No SIM is Locked, and all SIM is READY"

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->setPreferredCdmaNetworkType()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->setPreferredGWNetworkType()V

    goto :goto_0

    :cond_3
    const-string/jumbo v3, "PTCRB prop is on, we won\'t set rat to modem after sim state change"

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private hasCdmaCardInsert()Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v1, 0x0

    :goto_0
    sget v2, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mNumPhones:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    aget-object v2, v2, v1

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    aget-object v2, v2, v1

    iget-boolean v2, v2, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;->isCDMACard:Z

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "hasCdmaCardInsert "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "  phoneId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private hasTwoCdmaCardInsert()Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    :goto_0
    sget v2, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mNumPhones:I

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    aget-object v2, v2, v0

    if-eqz v2, :cond_1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    aget-object v2, v2, v0

    iget-boolean v1, v2, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;->isCDMACard:Z

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "hasTwoCdmaCardInsert "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    return v1
.end method

.method private informDdsToRil(I)V
    .locals 4

    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getPhoneId(I)I

    move-result v0

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    invoke-virtual {v2}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->isServiceReady()Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "Oem hook service is not ready yet"

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v1, 0x0

    :goto_0
    sget v2, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mNumPhones:I

    if-ge v1, v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "InformDdsToRil rild= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", DDS="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    invoke-virtual {v2, v0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->qcRilSendDDSInfo(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private isCdmaRat(II)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x5

    if-eq v1, p1, :cond_0

    const/4 v1, 0x7

    if-ne v1, p1, :cond_2

    :cond_0
    :goto_0
    const/4 v0, 0x1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isCdmaRat  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "   phoneId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    return v0

    :cond_2
    const/16 v1, 0xa

    if-eq v1, p1, :cond_0

    const/4 v1, 0x6

    if-eq v1, p1, :cond_0

    const/16 v1, 0x8

    if-eq v1, p1, :cond_0

    const/4 v1, 0x4

    if-eq v1, p1, :cond_0

    const/16 v1, 0x15

    if-eq v1, p1, :cond_0

    const/16 v1, 0x16

    if-ne v1, p1, :cond_1

    goto :goto_0
.end method

.method private isOnlyOneCardInsert()Z
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    sget v2, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mNumPhones:I

    if-ge v0, v2, :cond_3

    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;->cardStatus:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;->iccId:Ljava/lang/String;

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    if-eqz v1, :cond_4

    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->checkAllCardInsert()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    :goto_2
    return v2

    :cond_4
    const/4 v2, 0x0

    goto :goto_2
.end method

.method private isRadioAvailable(I)Z
    .locals 1

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v0, v0, p1

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isAvailable()Z

    move-result v0

    return v0
.end method

.method private isSubProvisioned(I)Z
    .locals 3

    const/4 v0, 0x1

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSlotIndex(I)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " Invalid phoneId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->loge(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->getUiccProvisionStatus(I)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v0, 0x0

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isSubProvisioned, state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " phoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private isTestCard()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private isWifiTethered(Ljava/util/ArrayList;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v5, 0x0

    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->checkAndSetConnectivityInstance()V

    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    array-length v6, v3

    move v4, v5

    :goto_0
    if-ge v4, v6, :cond_0

    aget-object v2, v3, v4

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v4, 0x1

    return v4

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return v5
.end method

.method private logd(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "DdsCardSelectionController"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "DdsCardSelectionController"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private logi(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "DdsCardSelectionController"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private logv(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static make(Landroid/content/Context;Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;[Lcom/android/internal/telephony/CommandsInterface;[Lcom/android/internal/telephony/Phone;)Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;
    .locals 2

    const-string/jumbo v0, "DdsCardSelectionController"

    const-string/jumbo v1, "make and getInstance"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->sInstance:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    if-nez v0, :cond_0

    new-instance v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;-><init>(Landroid/content/Context;Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;[Lcom/android/internal/telephony/CommandsInterface;[Lcom/android/internal/telephony/Phone;)V

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->sInstance:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    :goto_0
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->sInstance:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    return-object v0

    :cond_0
    const-string/jumbo v0, "DdsCardSelectionController"

    const-string/jumbo v1, "DdsCardSelectionController.make() should be called once"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private notifyUiDdsChanaged(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "notifyUiDdsChanaged  dds_chanage "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    return-void
.end method

.method private oemSendSubscriptionSettings()V
    .locals 0

    return-void
.end method

.method private oemSetDefaultDataSubId(I)V
    .locals 5

    const/4 v4, 0x0

    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/SubscriptionController;->getSubId(I)[I

    move-result-object v1

    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v2

    aget v3, v1, v4

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/SubscriptionController;->isActiveSubId(I)Z

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "oemSetDefaultDataSubId isSubActive: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "  phoneId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v2

    aget v3, v1, v4

    invoke-virtual {v2, v3}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->setDefaultDataSubId(I)V

    :cond_0
    return-void
.end method

.method private onGetIccCardStatusDone(Landroid/os/AsyncResult;Ljava/lang/Integer;)V
    .locals 7

    const/4 v6, 0x0

    iget-object v4, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Error getting ICC status. RIL_REQUEST_GET_ICC_STATUS should never return an error:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->loge(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/uicc/IccCardStatus;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v2, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " applications"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    iget-object v4, v2, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    array-length v4, v4

    if-ge v1, v4, :cond_3

    iget-object v4, v2, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    aget-object v4, v4, v1

    iget-object v0, v4, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_type:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    sget-object v4, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_RUIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-eq v0, v4, :cond_1

    sget-object v4, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne v0, v4, :cond_2

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "CDMA card insert app_type:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "  phoneId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    const/4 v3, 0x1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget-object v4, v4, v5

    iput-boolean v3, v4, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;->isCDMACard:Z

    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget-object v4, v4, v5

    iget-boolean v4, v4, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;->isCardReady:Z

    if-nez v4, :cond_4

    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->checkAllCardInsert()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_4

    const/16 v4, 0x1770

    invoke-direct {p0, v4}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->sendSetNetWorkTypeMsg(I)V

    return-void

    :cond_4
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->checkAllCardIsReady()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isOnlyOneCardInsert()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-direct {p0, v6}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->sendSetNetWorkTypeMsg(I)V

    return-void

    :cond_5
    const/16 v4, 0xbb8

    invoke-direct {p0, v4}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->sendSetNetWorkTypeMsg(I)V

    return-void

    :cond_6
    invoke-direct {p0, v6}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->sendSetNetWorkTypeMsg(I)V

    return-void
.end method

.method private processCmccDemand()V
    .locals 10

    const/4 v8, 0x0

    const/4 v3, 0x0

    const-string/jumbo v7, "persist.radio.bksim.iccid"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->getPrimaryICCID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    xor-int/lit8 v5, v7, 0x1

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->backupDdsIccid(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->checkAllCardInsert()Z

    move-result v7

    if-eqz v7, :cond_0

    sget-boolean v7, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isCMCCVersion:Z

    :goto_0
    if-nez v7, :cond_1

    return-void

    :cond_0
    move v7, v8

    goto :goto_0

    :cond_1
    sput-boolean v8, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isCardPlugIn2Out:Z

    const/4 v4, 0x0

    :goto_1
    sget v7, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mNumPhones:I

    if-ge v4, v7, :cond_4

    sget-object v7, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mIccidList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v7, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    aget-object v7, v7, v4

    iget-object v7, v7, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;->iccId:Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v3, 0x1

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    if-nez v3, :cond_5

    return-void

    :cond_5
    invoke-direct {p0, v5}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->notifyUiDdsChanaged(Z)V

    return-void
.end method

.method private processMbnActivatedDone()V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    sget v2, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mNumPhones:I

    if-ge v0, v2, :cond_0

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->getNetworkModeFromDB(I)I

    move-result v1

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private processSimStatusChange(I)V
    .locals 6

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    aget-object v1, v1, p1

    iput-boolean v4, v1, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;->isCardReady:Z

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    aget-object v1, v1, p1

    iput v4, v1, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;->cardStatus:I

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;->iccId:Ljava/lang/String;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    aget-object v1, v1, p1

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    invoke-virtual {v2, p1}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->getUiccIccId(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;->iccId:Ljava/lang/String;

    :cond_0
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    rsub-int/lit8 v2, p1, 0x1

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;->iccId:Ljava/lang/String;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    rsub-int/lit8 v2, p1, 0x1

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    rsub-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->getUiccIccId(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;->iccId:Ljava/lang/String;

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    rsub-int/lit8 v2, p1, 0x1

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;->iccId:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    rsub-int/lit8 v2, p1, 0x1

    aget-object v1, v1, v2

    iput v4, v1, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;->cardStatus:I

    :cond_1
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, p1

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0xe

    invoke-virtual {v2, v4, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->getIccCardStatus(Landroid/os/Message;)V

    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isOnlyOneCardInsert()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->oemSetDefaultDataSubId(I)V

    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->savePrimarySlot(I)V

    :cond_2
    sget-object v1, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v1, p1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v1

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    return-void
.end method

.method private processSoftSimIccidChange()V
    .locals 8

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    sget v3, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mNumPhones:I

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, v3}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->getVirtualIccid(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "is_softsim insert "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    if-eqz v2, :cond_2

    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x1c

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v6, 0xfa0

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private processTMOCardAsdds()V
    .locals 10

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->getPrevPrimaryPhoneId()I

    move-result v0

    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/android/internal/telephony/SubscriptionController;->getSubId(I)[I

    move-result-object v5

    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v7

    aget v8, v5, v9

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/SubscriptionController;->isActiveSubId(I)Z

    move-result v2

    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->getMainStackPhoneId()I

    move-result v4

    iget-object v7, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    aget-object v7, v7, v0

    iget-object v1, v7, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;->iccId:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "processTMOCardAsDDS mstackphoneId "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " iccid "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " ddsphoneId "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    if-eq v4, v0, :cond_0

    xor-int/lit8 v7, v2, 0x1

    if-eqz v7, :cond_1

    :cond_0
    return-void

    :cond_1
    if-eqz v1, :cond_3

    sget-object v7, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mTMOIccidList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    aget v7, v5, v9

    invoke-direct {p0, v7}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->doFlexMapping(I)V

    :cond_3
    return-void
.end method

.method private registerPsensor()V
    .locals 4

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "display_ctrl_psensor_positive"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mObserverPsensor:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private savePrefNetworkInDb(II)V
    .locals 6

    const/4 v5, 0x0

    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/SubscriptionController;->getSubId(I)[I

    move-result-object v1

    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v2

    aget v3, v1, v5

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/SubscriptionController;->isActiveSubId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "preferred_network_mode"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v1, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "preferred_network_mode"

    invoke-static {v2, v3, p1, p2}, Landroid/telephony/TelephonyManager;->putIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method private savePrimaryICCID(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " savePrimaryICCID ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;->iccId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;->iccId:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "persist.radio.ddssim.iccid"

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;->iccId:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private savePrimarySlot(I)V
    .locals 2

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "config_current_primary_sub"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private sendSetNetWorkTypeMsg(I)V
    .locals 4

    const/16 v3, 0xf

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendSetNetWorkTypeMsg delay:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mHandler:Landroid/os/Handler;

    int-to-long v2, p1

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private setPreferredCdmaNetworkType()V
    .locals 9

    const/4 v0, 0x0

    const/4 v2, 0x1

    const/16 v1, 0x16

    const/16 v3, 0x14

    const/4 v5, -0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->getPrevPrimaryPhoneId()I

    move-result v5

    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->getPrimaryNetworkType()I

    move-result v4

    iget-object v7, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    aget-object v7, v7, v5

    iget-boolean v7, v7, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;->isCDMACard:Z

    if-eqz v7, :cond_1

    const-string/jumbo v7, "setPreferredCdmaNetworkType cdma card on dds"

    invoke-direct {p0, v7}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    move v0, v5

    rsub-int/lit8 v2, v5, 0x1

    invoke-direct {p0, v4, v5}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isCdmaRat(II)Z

    move-result v7

    if-eqz v7, :cond_0

    move v1, v4

    :goto_0
    invoke-virtual {p0, v1}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->setPrimaryNetworkType(I)V

    :goto_1
    invoke-direct {p0, v5}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->savePrimarySlot(I)V

    invoke-direct {p0, v5}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->savePrimaryICCID(I)V

    invoke-direct {p0, v0, v1}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->savePrefNetworkInDb(II)V

    invoke-direct {p0, v2, v3}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->savePrefNetworkInDb(II)V

    iget-object v7, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mHandler:Landroid/os/Handler;

    const/16 v8, 0x10

    invoke-virtual {v7, v8, v0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    sget-object v7, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mQtiRadioCapabilityController:Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;

    invoke-virtual {v7, v2, v3, v6}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->setPreferredNetworkType(IILandroid/os/Message;)V

    return-void

    :cond_0
    invoke-direct {p0, v4}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->switchGW2CDMARat(I)I

    move-result v1

    goto :goto_0

    :cond_1
    const-string/jumbo v7, "setPreferredCdmaNetworkType GW card on dds"

    invoke-direct {p0, v7}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    move v2, v5

    rsub-int/lit8 v0, v5, 0x1

    invoke-direct {p0, v4, v5}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isCdmaRat(II)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-direct {p0, v4}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->switchCDMA2GWRat(I)I

    move-result v3

    :goto_2
    invoke-virtual {p0, v3}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->setPrimaryNetworkType(I)V

    goto :goto_1

    :cond_2
    move v3, v4

    goto :goto_2
.end method

.method private setPreferredGWNetworkType()V
    .locals 8

    const/4 v0, 0x0

    const/16 v1, 0x14

    const/16 v2, 0x14

    const/4 v4, -0x1

    const/4 v3, 0x0

    const-string/jumbo v6, "setPreferredGWNetworkType all card is GW"

    invoke-direct {p0, v6}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->getPrevPrimaryPhoneId()I

    move-result v4

    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->getPrimaryNetworkType()I

    move-result v3

    invoke-direct {p0, v3, v4}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isCdmaRat(II)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->switchCDMA2GWRat(I)I

    move-result v1

    :goto_0
    rsub-int/lit8 v0, v4, 0x1

    invoke-direct {p0, v4}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->savePrimarySlot(I)V

    invoke-direct {p0, v4}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->savePrimaryICCID(I)V

    invoke-virtual {p0, v1}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->setPrimaryNetworkType(I)V

    invoke-direct {p0, v4, v1}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->savePrefNetworkInDb(II)V

    invoke-direct {p0, v0, v2}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->savePrefNetworkInDb(II)V

    iget-object v6, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x10

    invoke-virtual {v6, v7, v4, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    sget-object v6, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mQtiRadioCapabilityController:Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;

    invoke-virtual {v6, v0, v2, v5}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->setPreferredNetworkType(IILandroid/os/Message;)V

    return-void

    :cond_0
    move v1, v3

    goto :goto_0
.end method

.method private subscriptionIdToPhoneAccountHandle(I)Landroid/telecom/PhoneAccountHandle;
    .locals 5

    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v3

    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mTelecomManager:Landroid/telecom/TelecomManager;

    invoke-virtual {v4}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/PhoneAccountHandle;

    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mTelecomManager:Landroid/telecom/TelecomManager;

    invoke-virtual {v4, v1}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/telephony/TelephonyManager;->getSubIdForPhoneAccount(Landroid/telecom/PhoneAccount;)I

    move-result v4

    if-ne p1, v4, :cond_0

    return-object v1

    :cond_1
    const/4 v4, 0x0

    return-object v4
.end method

.method private switchAll2EURat(I)I
    .locals 3

    const/16 v0, 0x9

    sparse-switch p1, :sswitch_data_0

    const/16 v0, 0x9

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "switchAll2EURat  rat "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    return v0

    :sswitch_0
    const/16 v0, 0x9

    goto :goto_0

    :sswitch_1
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_2
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x3 -> :sswitch_1
        0x9 -> :sswitch_0
        0x12 -> :sswitch_1
        0x14 -> :sswitch_0
    .end sparse-switch
.end method

.method private switchCDMA2GWRat(I)I
    .locals 3

    const/16 v0, 0x14

    sparse-switch p1, :sswitch_data_0

    const/16 v0, 0x14

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "switchCDMA2GWRat  rat "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    return v0

    :sswitch_0
    const/16 v0, 0x14

    goto :goto_0

    :sswitch_1
    const/16 v0, 0x12

    goto :goto_0

    :sswitch_2
    const/4 v0, 0x1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_2
        0x7 -> :sswitch_1
        0x8 -> :sswitch_0
        0xa -> :sswitch_0
        0x15 -> :sswitch_1
        0x16 -> :sswitch_0
    .end sparse-switch
.end method

.method private switchGW2CDMARat(I)I
    .locals 3

    const/16 v0, 0xa

    sparse-switch p1, :sswitch_data_0

    const/16 v0, 0xa

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "switchGW2CDMARat  rat "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    return v0

    :sswitch_0
    const/16 v0, 0x16

    goto :goto_0

    :sswitch_1
    const/16 v0, 0x15

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_1
        0x3 -> :sswitch_1
        0x9 -> :sswitch_0
        0x12 -> :sswitch_1
        0x14 -> :sswitch_0
    .end sparse-switch
.end method

.method private updateCurrentCardStatus(IILjava/lang/String;)V
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    aget-object v1, v1, p1

    iput p2, v1, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;->cardStatus:I

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    aget-object v1, v1, p1

    iput-object p3, v1, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;->iccId:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public getPrevPrimaryPhoneId()I
    .locals 7

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->getPrimaryICCID()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    :goto_0
    sget v5, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mNumPhones:I

    if-ge v1, v5, :cond_1

    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    aget-object v5, v5, v1

    iget-object v5, v5, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;->iccId:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    aget-object v5, v5, v1

    iget-object v5, v5, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;->iccId:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isSubProvisioned(I)Z

    move-result v5

    if-eqz v5, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->getPrimarySlot()I

    move-result v3

    const/4 v5, -0x1

    if-eq v3, v5, :cond_2

    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    aget-object v5, v5, v3

    iget-object v5, v5, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;->iccId:Ljava/lang/String;

    if-eqz v5, :cond_2

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isSubProvisioned(I)Z

    move-result v5

    if-eqz v5, :cond_2

    return v3

    :cond_2
    const/4 v3, 0x0

    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/android/internal/telephony/SubscriptionController;->getSubId(I)[I

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    aget-object v5, v5, v3

    iget-object v5, v5, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;->iccId:Ljava/lang/String;

    if-eqz v5, :cond_3

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isSubProvisioned(I)Z

    move-result v5

    if-eqz v5, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, " getPrevPrimaryPhoneId 1 phoneId "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    return v3

    :cond_3
    const/4 v3, 0x1

    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/android/internal/telephony/SubscriptionController;->getSubId(I)[I

    move-result-object v4

    if-eqz v4, :cond_4

    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    aget-object v5, v5, v3

    iget-object v5, v5, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;->iccId:Ljava/lang/String;

    if-eqz v5, :cond_4

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isSubProvisioned(I)Z

    move-result v5

    if-eqz v5, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, " getPrevPrimaryPhoneId 2 phoneId "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    return v3

    :cond_4
    const-string/jumbo v5, " getPrevPrimaryPhoneId  default phoneId 0 "

    invoke-direct {p0, v5}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    const/4 v5, 0x0

    return v5
.end method

.method public getVirtualIccid(ILandroid/content/Context;)Ljava/lang/String;
    .locals 5

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "softsim_iccid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_0
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "softsim_iccid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "  slot=  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    return-object v1

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "exc: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method handleEX(Landroid/os/AsyncResult;I)V
    .locals 8

    const/4 v1, 0x0

    const/16 v3, 0x9

    iget-object v4, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_0

    :try_start_0
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v1, Lcom/android/internal/telephony/CommandException;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-direct {p0, p2}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->getNetworkModeFromDB(I)I

    move-result v3

    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x1e

    invoke-virtual {v4, v6, p2, v3, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x1388

    invoke-virtual {v4, v2, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void

    :catch_0
    move-exception v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception e = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public handleSar2France(Z)V
    .locals 3

    const/4 v2, 0x7

    sput-boolean p1, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isFranceSAROpen:Z

    sget-boolean v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isFranceSAROpen:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mQcRilHook:Lcom/qualcomm/qcrilhook/QcRilHook;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->setFactoryModeModemGPIO(II)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mQcRilHook:Lcom/qualcomm/qcrilhook/QcRilHook;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->setFactoryModeModemGPIO(II)Z

    goto :goto_0
.end method

.method public handleSimAbsentforSelectMultiMode(I)V
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v0, -0x1

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "card absent phoneId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    sget-object v3, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v3

    iput-object v3, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    aget-object v3, v3, p1

    invoke-direct {p0, p1, v5, v6}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->updateCurrentCardStatus(IILjava/lang/String;)V

    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    aget-object v3, v3, p1

    iput-boolean v5, v3, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;->isCardReady:Z

    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    aget-object v3, v3, p1

    iput-boolean v5, v3, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;->isPinLocked:Z

    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    aget-object v3, v3, p1

    iput-boolean v5, v3, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;->isCDMACard:Z

    const-string/jumbo v3, "true"

    const-string/jumbo v4, "persist.radio.ptcrb.enable"

    const-string/jumbo v5, "false"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isPtcrb:Z

    iget-boolean v3, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isPtcrb:Z

    if-eqz v3, :cond_1

    const-string/jumbo v3, "isPtcrb is true, we won\'t set rat when sim absent"

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    :cond_1
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    rsub-int/lit8 v4, p1, 0x1

    aget-object v3, v3, v4

    iget-object v3, v3, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;->iccId:Ljava/lang/String;

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isPtcrb:Z

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string/jumbo v4, "oem.ctaSwitch.support"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "card absent phoneId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->getMainStackPhoneId()I

    move-result v0

    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v3, v3, v0

    const/16 v4, 0x8

    invoke-interface {v3, v4, v6}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    :cond_2
    return-void
.end method

.method public oemDdsSwitch(IZ)V
    .locals 6

    const/4 v5, 0x0

    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/internal/telephony/SubscriptionController;->getSubId(I)[I

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "oemDdsSwitch subId is null  phoneId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v3

    aget v4, v2, v5

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/SubscriptionController;->isActiveSubId(I)Z

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "oemDdsSwitch isSubActive: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "  phoneId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    if-eqz v0, :cond_3

    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->savePrimaryICCID(I)V

    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->savePrimarySlot(I)V

    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->getNetworkModeFromDB(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->setPrimaryNetworkType(I)V

    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v3

    aget v4, v2, v5

    invoke-virtual {v3, v4}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->setDefaultDataSubId(I)V

    if-eqz p2, :cond_1

    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v3

    aget v4, v2, v5

    invoke-virtual {v3, v4}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->setDefaultSmsSubId(I)V

    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v3

    aget v4, v2, v5

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultVoiceSubId(I)V

    aget v3, v2, v5

    invoke-virtual {p0, v3}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->setConfigOfChangeDefaultVoiceSub(I)V

    :cond_1
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->hasTwoCdmaCardInsert()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->setPreferredCdmaNetworkType()V

    :cond_2
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    aget-object v3, v3, p1

    iget-object v3, v3, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;->iccId:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->backupDdsIccid(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->oemSendSubscriptionSettings()V

    :cond_3
    return-void
.end method

.method public sendAddSubInfoRecordforSelectMultiMode(ILjava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xa

    const/4 v3, -0x1

    invoke-virtual {v1, v2, p1, v3, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public sendSimAbsentforSelectMultiMode(I)V
    .locals 4

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xb

    const/4 v3, -0x1

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setConfigOfChangeDefaultVoiceSub(I)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->subscriptionIdToPhoneAccountHandle(I)Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mTelecomManager:Landroid/telecom/TelecomManager;

    invoke-virtual {v1, v0}, Landroid/telecom/TelecomManager;->setUserSelectedOutgoingPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V

    return-void
.end method

.method public setPrimaryNetworkType(I)V
    .locals 2

    const-string/jumbo v0, "persist.radio.ddssim.rat"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " setPrimaryNetworkType ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    return-void
.end method
