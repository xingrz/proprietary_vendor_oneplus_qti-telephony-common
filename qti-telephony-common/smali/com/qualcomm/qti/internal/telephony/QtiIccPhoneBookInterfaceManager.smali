.class public Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;
.super Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
.source "QtiIccPhoneBookInterfaceManager.java"


# static fields
.field private static final DBG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "QtiIccPhoneBookInterfaceManager"


# instance fields
.field private mSimPbAdnCache:Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/Phone;)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;-><init>(Lcom/android/internal/telephony/Phone;)V

    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->isSimPhoneBookEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->mSimPbAdnCache:Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;

    if-nez v0, :cond_0

    new-instance v0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    iget-object v3, p1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {v0, v1, v2, v3}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;-><init>(Landroid/content/Context;ILcom/android/internal/telephony/CommandsInterface;)V

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->mSimPbAdnCache:Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;

    :cond_0
    return-void
.end method

.method private isSimPhoneBookEnabled()Z
    .locals 2

    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x112008e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public dispose()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mRecords:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->mSimPbAdnCache:Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;

    invoke-virtual {v0}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->reset()V

    return-void
.end method

.method public getAdnEventState()I
    .locals 1

    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->isSimPhoneBookEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->mSimPbAdnCache:Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->mSimPbAdnCache:Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;

    invoke-virtual {v0}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->getAdnEventState()I

    move-result v0

    return v0

    :cond_0
    const-string/jumbo v0, "mAdnCache is NULL when getAdnRecordsCapacity."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->loge(Ljava/lang/String;)V

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public getAdnRecordsCapacity()[I
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v1, 0xa

    new-array v0, v1, [I

    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->isSimPhoneBookEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->mSimPbAdnCache:Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->mSimPbAdnCache:Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;

    invoke-virtual {v1}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->getAdnCount()I

    move-result v1

    aput v1, v0, v3

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->mSimPbAdnCache:Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;

    invoke-virtual {v1}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->getUsedAdnCount()I

    move-result v1

    aput v1, v0, v4

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->mSimPbAdnCache:Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;

    invoke-virtual {v1}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->getEmailCount()I

    move-result v1

    aput v1, v0, v5

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->mSimPbAdnCache:Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;

    invoke-virtual {v1}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->getUsedEmailCount()I

    move-result v1

    aput v1, v0, v6

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->mSimPbAdnCache:Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;

    invoke-virtual {v1}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->getAnrCount()I

    move-result v1

    aput v1, v0, v7

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->mSimPbAdnCache:Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;

    invoke-virtual {v1}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->getUsedAnrCount()I

    move-result v1

    const/4 v2, 0x5

    aput v1, v0, v2

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->mSimPbAdnCache:Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;

    invoke-virtual {v1}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->getMaxNameLen()I

    move-result v1

    const/4 v2, 0x6

    aput v1, v0, v2

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->mSimPbAdnCache:Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;

    invoke-virtual {v1}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->getMaxNumberLen()I

    move-result v1

    const/4 v2, 0x7

    aput v1, v0, v2

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->mSimPbAdnCache:Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;

    invoke-virtual {v1}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->getMaxEmailLen()I

    move-result v1

    const/16 v2, 0x8

    aput v1, v0, v2

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->mSimPbAdnCache:Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;

    invoke-virtual {v1}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->getMaxAnrLen()I

    move-result v1

    const/16 v2, 0x9

    aput v1, v0, v2

    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getAdnRecordsCapacity: max adn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v2, v0, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", used adn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v2, v0, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", max email="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v2, v0, v5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", used email="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v2, v0, v6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", max anr="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v2, v0, v7

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", used anr="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x5

    aget v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", max name length ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x6

    aget v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", max number length ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x7

    aget v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", max email length ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x8

    aget v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", max anr length ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x9

    aget v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    return-object v0

    :cond_1
    const-string/jumbo v1, "mAdnCache is NULL when getAdnRecordsCapacity."

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->loge(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public getAdnRecordsInEf(I)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;"
        }
    .end annotation

    iget-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "android.permission.READ_CONTACTS"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/SecurityException;

    const-string/jumbo v3, "Requires android.permission.READ_CONTACTS permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->updateEfForIccType(I)I

    move-result p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getAdnRecordsInEF: efid=0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->checkThread()V

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iget-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mBaseHandler:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$IccPbHandler;

    const/4 v4, 0x2

    invoke-virtual {v2, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getAdnRecordsInEf response = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->isSimPhoneBookEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0x4f30

    if-eq p1, v2, :cond_1

    const/16 v2, 0x6f3a

    if-ne p1, v2, :cond_3

    :cond_1
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->mSimPbAdnCache:Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->mSimPbAdnCache:Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;

    invoke-virtual {v2, v0}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->requestLoadAllAdnLike(Landroid/os/Message;)V

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->waitForResult(Ljava/util/concurrent/atomic/AtomicBoolean;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v3

    iget-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mRecords:Ljava/util/List;

    if-eqz v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getAdnRecordsInEF: mRecords size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mRecords:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    :goto_1
    iget-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mRecords:Ljava/util/List;

    return-object v2

    :cond_2
    :try_start_1
    const-string/jumbo v2, "Failure while trying to load from SIM due to uninit  sim pb adncache"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->loge(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_3
    :try_start_2
    iget-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    iget-object v4, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v4, p1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->extensionEfForEf(I)I

    move-result v4

    invoke-virtual {v2, p1, v4, v0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->requestLoadAllAdnLike(IILandroid/os/Message;)V

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->waitForResult(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    goto :goto_0

    :cond_4
    const-string/jumbo v2, "Failure while trying to load from SIM due to uninitialised adncache"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->loge(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_5
    const-string/jumbo v2, "getAdnRecordsInEF: mRecords is null"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public updateAdnRecordsWithContentValuesInEfBySearch(ILandroid/content/ContentValues;Ljava/lang/String;)Z
    .locals 24

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "android.permission.WRITE_CONTACTS"

    invoke-virtual {v4, v5}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/SecurityException;

    const-string/jumbo v5, "Requires android.permission.WRITE_CONTACTS permission"

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    const-string/jumbo v4, "tag"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    const-string/jumbo v4, "newTag"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v4, "number"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const-string/jumbo v4, "newNumber"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v4, "emails"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string/jumbo v4, "newEmails"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v4, "anrs"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string/jumbo v4, "newAnrs"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v19, 0x0

    :goto_0
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v13, 0x0

    :goto_1
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/16 v17, 0x0

    :goto_2
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v11, 0x0

    :goto_3
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->updateEfForIccType(I)I

    move-result p1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateAdnRecordsWithContentValuesInEfBySearch: efid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", values = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", pin2="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    move-object/from16 v23, v0

    monitor-enter v23

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->checkThread()V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mSuccess:Z

    new-instance v22, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    move-object/from16 v0, v22

    invoke-direct {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mBaseHandler:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$IccPbHandler;

    const/4 v5, 0x3

    move-object/from16 v0, v22

    invoke-virtual {v4, v5, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    new-instance v6, Lcom/android/internal/telephony/uicc/AdnRecord;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    move-object/from16 v3, v17

    invoke-direct {v6, v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    new-instance v7, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-direct {v7, v15, v14, v13, v11}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->isSimPhoneBookEnabled()Z

    move-result v4

    if-eqz v4, :cond_7

    const/16 v4, 0x4f30

    move/from16 v0, p1

    if-eq v0, v4, :cond_1

    const/16 v4, 0x6f3a

    move/from16 v0, p1

    if-ne v0, v4, :cond_7

    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->mSimPbAdnCache:Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;

    if-eqz v4, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->mSimPbAdnCache:Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;

    invoke-virtual {v4, v6, v7, v9}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->updateSimPbAdnBySearch(Lcom/android/internal/telephony/uicc/AdnRecord;Lcom/android/internal/telephony/uicc/AdnRecord;Landroid/os/Message;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->waitForResult(Ljava/util/concurrent/atomic/AtomicBoolean;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_4
    monitor-exit v23

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mSuccess:Z

    return v4

    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_0

    :cond_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_1

    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getAnrStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_2

    :cond_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getAnrStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_3

    :cond_6
    :try_start_1
    const-string/jumbo v4, "Failure while trying to update by search due to uninit sim pb adncache"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->loge(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v4

    monitor-exit v23

    throw v4

    :cond_7
    :try_start_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    if-eqz v4, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    move/from16 v5, p1

    move-object/from16 v8, p3

    invoke-virtual/range {v4 .. v9}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->updateAdnBySearch(ILcom/android/internal/telephony/uicc/AdnRecord;Lcom/android/internal/telephony/uicc/AdnRecord;Ljava/lang/String;Landroid/os/Message;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->waitForResult(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    goto :goto_4

    :cond_8
    const-string/jumbo v4, "Failure while trying to update by search due to uninitialised adncache"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->loge(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4
.end method
