.class Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;
.super Ljava/lang/Object;
.source "QtiCardInfoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CardInfo"
.end annotation


# instance fields
.field private mCardType:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardType;

.field private mIccId:Ljava/lang/String;

.field private mMCCMNCLoaded:Z

.field private mMccMnc:Ljava/lang/String;

.field private mProvisionState:I

.field private mUpdateCardTypeState:I


# direct methods
.method static synthetic -get0(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;)Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardType;
    .locals 1

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->mCardType:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardType;

    return-object v0
.end method

.method static synthetic -get1(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->mIccId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->mMCCMNCLoaded:Z

    return v0
.end method

.method static synthetic -get3(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->mMccMnc:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get4(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;)I
    .locals 1

    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->mProvisionState:I

    return v0
.end method

.method static synthetic -get5(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;)I
    .locals 1

    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->mUpdateCardTypeState:I

    return v0
.end method

.method static synthetic -set0(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardType;)Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardType;
    .locals 0

    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->mCardType:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardType;

    return-object p1
.end method

.method static synthetic -set1(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->mIccId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set2(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->mMCCMNCLoaded:Z

    return p1
.end method

.method static synthetic -set3(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->mMccMnc:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set4(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;I)I
    .locals 0

    iput p1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->mProvisionState:I

    return p1
.end method

.method static synthetic -set5(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;I)I
    .locals 0

    iput p1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->mUpdateCardTypeState:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->reset()V

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private reset()V
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardType;->UNKNOWN:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardType;

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->mCardType:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardType;

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->mIccId:Ljava/lang/String;

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->mMccMnc:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->mUpdateCardTypeState:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->mProvisionState:I

    return-void
.end method


# virtual methods
.method public getIccId()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->setPrimaryCardOnDeAct()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->mProvisionState:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->mIccId:Ljava/lang/String;

    return-object v0
.end method

.method public getMccMnc()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->setPrimaryCardOnDeAct()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->mProvisionState:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->mMccMnc:Ljava/lang/String;

    return-object v0
.end method

.method public getProvisionState()I
    .locals 1

    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->mProvisionState:I

    return v0
.end method

.method public isCardInfoAvailable(I)Z
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget v3, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->mUpdateCardTypeState:I

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->mUpdateCardTypeState:I

    if-eq v3, v4, :cond_2

    const/4 v1, 0x1

    :goto_0
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;->isSubsidyLockFeatureEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->-get1()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;->isPermanentlyUnlocked(Landroid/content/Context;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v2

    iget v3, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->mProvisionState:I

    if-ne v3, v4, :cond_1

    if-eqz v2, :cond_1

    invoke-virtual {v2, v4}, Lcom/android/internal/telephony/uicc/UiccCard;->getApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v4}, Lcom/android/internal/telephony/uicc/UiccCard;->getApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_SUBSCRIPTION_PERSO:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-eq v3, v4, :cond_0

    iget-boolean v3, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->mMCCMNCLoaded:Z

    and-int/2addr v1, v3

    :cond_0
    iget-boolean v3, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->mMCCMNCLoaded:Z

    if-nez v3, :cond_1

    iput-object v5, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->mMccMnc:Ljava/lang/String;

    :cond_1
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isCardTypeSame(Ljava/lang/String;)Z
    .locals 2

    const/4 v1, 0x0

    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->setPrimaryCardOnDeAct()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->mProvisionState:I

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {p1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardType;->valueOf(Ljava/lang/String;)Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardType;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->mCardType:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardType;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
