.class public Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;
.super Landroid/database/ContentObserver;
.source "SubsidyLockSettingsObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver$SIMDeactivationRecords;,
        Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver$SubsidySettingsHandler;
    }
.end annotation


# static fields
.field public static final AP_LOCKED:I = 0x66

.field public static final PERMANENTLY_UNLOCKED:I = 0x64

.field public static final SUBSIDY_LOCKED:I = 0x65

.field private static final SUBSIDY_LOCK_SETTINGS:Ljava/lang/String; = "subsidy_status"

.field private static final SUBSIDY_LOCK_SYSTEM_PROPERY:Ljava/lang/String; = "ro.radio.subsidylock"

.field private static final SUBSIDY_STATE_KEY:Ljava/lang/String; = "device_Subsidy_state"

.field public static final SUBSIDY_UNLOCKED:I = 0x67

.field private static final TAG:Ljava/lang/String; = "SubsidyLockSettingsObserver"

.field private static mCurrentState:I


# instance fields
.field private mCardInfoManager:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;

.field private mContext:Landroid/content/Context;

.field private mPriorityHandler:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;

.field private mSettingsHandler:Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver$SubsidySettingsHandler;


# direct methods
.method static synthetic -get0(Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1()I
    .locals 1

    sget v0, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;->mCurrentState:I

    return v0
.end method

.method static synthetic -wrap0(Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;->updateDeviceState(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;->mCurrentState:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "device_Subsidy_state"

    sget v2, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;->mCurrentState:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;->mCurrentState:I

    const-string/jumbo v0, "SubsidyLockSettingsObserver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " in constructor, context =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " device state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;->mCurrentState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static isPermanentlyUnlocked(Landroid/content/Context;)Z
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "subsidy_status"

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isSubsidyLockFeatureEnabled()Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string/jumbo v3, "ro.radio.subsidylock"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public static isSubsidyLocked(Landroid/content/Context;)Z
    .locals 5

    const/4 v1, 0x1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "subsidy_status"

    const/4 v4, -0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/16 v2, 0x65

    if-eq v0, v2, :cond_0

    const/16 v2, 0x66

    if-ne v0, v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isSubsidyUnlocked(Landroid/content/Context;)Z
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "subsidy_status"

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0x67

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private registerAllCardsAvailableCallback()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;->mSettingsHandler:Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver$SubsidySettingsHandler;

    if-nez v0, :cond_0

    new-instance v0, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver$SubsidySettingsHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver$SubsidySettingsHandler;-><init>(Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;->mSettingsHandler:Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver$SubsidySettingsHandler;

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;->mCardInfoManager:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;->mSettingsHandler:Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver$SubsidySettingsHandler;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2, v3}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->registerAllCardsInfoAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private saveDeviceState(I)V
    .locals 2

    sput p1, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;->mCurrentState:I

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "device_Subsidy_state"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private updateDeviceState(I)V
    .locals 4

    const/16 v3, 0x64

    sget v0, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;->mCurrentState:I

    if-eq v0, p1, :cond_4

    const-string/jumbo v0, "SubsidyLockSettingsObserver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " updateDeviceState, new state  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eq p1, v3, :cond_0

    sget v0, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;->mCurrentState:I

    if-ne v0, v3, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;->mPriorityHandler:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;->mPriorityHandler:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;

    invoke-virtual {v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->reloadPriorityConfig()V

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;->mPriorityHandler:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->loadCurrentPriorityConfigs(Z)V

    :cond_1
    sget v0, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;->mCurrentState:I

    if-ne v0, v3, :cond_5

    const/16 v0, 0x66

    if-eq p1, v0, :cond_2

    const/16 v0, 0x67

    if-ne p1, v0, :cond_5

    :cond_2
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;->mSettingsHandler:Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver$SubsidySettingsHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver$SubsidySettingsHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_3
    :goto_0
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;->saveDeviceState(I)V

    :cond_4
    return-void

    :cond_5
    if-ne p1, v3, :cond_3

    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->getInstance()Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->saveUserSelectionMode()V

    goto :goto_0
.end method


# virtual methods
.method public observe(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;)V
    .locals 3

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;->mCardInfoManager:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;

    iput-object p2, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;->mPriorityHandler:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;

    const-string/jumbo v1, "subsidy_status"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;->registerAllCardsAvailableCallback()V

    return-void
.end method

.method public onChange(Z)V
    .locals 4

    const/4 v3, 0x1

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;->mPriorityHandler:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;->mPriorityHandler:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;

    invoke-virtual {v2}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->reloadPriorityConfig()V

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;->mPriorityHandler:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;

    invoke-virtual {v2, v3}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->loadCurrentPriorityConfigs(Z)V

    :cond_0
    new-instance v1, Landroid/os/HandlerThread;

    const-string/jumbo v2, "Subsidy Settings handler thread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver$SubsidySettingsHandler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver$SubsidySettingsHandler;-><init>(Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;Landroid/os/Looper;)V

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;->isSubsidyLocked(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;->isPermanentlyUnlocked(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;->isSubsidyUnlocked(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x67

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method
