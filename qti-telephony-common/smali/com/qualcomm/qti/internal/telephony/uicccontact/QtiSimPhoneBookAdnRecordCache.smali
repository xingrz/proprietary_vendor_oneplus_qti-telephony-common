.class public final Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;
.super Landroid/os/Handler;
.source "QtiSimPhoneBookAdnRecordCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache$1;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field static final EVENT_INIT_ADN_DONE:I = 0x1

.field static final EVENT_LOAD_ADN_RECORD_DONE:I = 0x3

.field static final EVENT_LOAD_ALL_ADN_LIKE_DONE:I = 0x4

.field static final EVENT_QUERY_ADN_RECORD_DONE:I = 0x2

.field static final EVENT_SIM_REFRESH:I = 0x6

.field static final EVENT_UPDATE_ADN_RECORD_DONE:I = 0x5

.field private static final LOG_TAG:Ljava/lang/String; = "QtiSimPhoneBookAdnRecordCache"


# instance fields
.field extRecList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<[I>;"
        }
    .end annotation
.end field

.field private mAddNumCount:I

.field private mAdnCount:I

.field mAdnLoadingWaiters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field mAdnUpdatingWaiter:Landroid/os/Message;

.field protected final mCi:Lcom/android/internal/telephony/CommandsInterface;

.field protected mContext:Landroid/content/Context;

.field private mCurrentAdnEventState:I

.field private mEmailCount:I

.field private mIsQueryFinished:Z

.field private mLock:Ljava/lang/Object;

.field private mMaxAnrLen:I

.field private mMaxEmailLen:I

.field private mMaxNameLen:I

.field private mMaxNumberLen:I

.field protected mPhoneId:I

.field private mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

.field private mRecCount:I

.field private mRefreshAdnCache:Z

.field private mSimPbRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mValidAddNumCount:I

.field private mValidAdnCount:I

.field private mValidEmailCount:I

.field private final sReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static synthetic -wrap0(Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->log(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/android/internal/telephony/CommandsInterface;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    iput v2, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mAdnCount:I

    iput v2, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mValidAdnCount:I

    iput v2, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mEmailCount:I

    iput v2, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mValidEmailCount:I

    iput v2, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mAddNumCount:I

    iput v2, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mValidAddNumCount:I

    iput v2, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mMaxNameLen:I

    iput v2, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mMaxNumberLen:I

    iput v2, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mMaxEmailLen:I

    iput v2, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mMaxAnrLen:I

    iput v2, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mRecCount:I

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mLock:Ljava/lang/Object;

    iput-boolean v2, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mRefreshAdnCache:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mAdnLoadingWaiters:Ljava/util/ArrayList;

    iput-object v3, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mAdnUpdatingWaiter:Landroid/os/Message;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->extRecList:Landroid/util/SparseArray;

    const/4 v1, -0x1

    iput v1, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mCurrentAdnEventState:I

    iput-boolean v4, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mIsQueryFinished:Z

    new-instance v1, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache$1;

    invoke-direct {v1, p0}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache$1;-><init>(Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;)V

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->sReceiver:Landroid/content/BroadcastReceiver;

    iput-object p3, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mSimPbRecords:Ljava/util/ArrayList;

    iput p2, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mPhoneId:I

    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->getInstance(Landroid/content/Context;)Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    move-result-object v1

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    invoke-virtual {v1, p0, v4, v3}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->registerForAdnInitDone(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x6

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForIccRefresh(Landroid/os/Handler;ILjava/lang/Object;)V

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->sReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private clearUpdatingWriter()V
    .locals 2

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mAdnUpdatingWaiter:Landroid/os/Message;

    const-string/jumbo v1, "QtiSimPhoneBookAdnRecordCache reset"

    invoke-direct {p0, v0, v1}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mAdnUpdatingWaiter:Landroid/os/Message;

    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 3

    const-string/jumbo v0, "QtiSimPhoneBookAdnRecordCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private notifyAndClearWaiters()V
    .locals 5

    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mAdnLoadingWaiters:Ljava/util/ArrayList;

    if-nez v3, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mAdnLoadingWaiters:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_0
    if-ge v0, v2, :cond_2

    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mAdnLoadingWaiters:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Message;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "notifyAndClearWaiters i = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", response = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->log(Ljava/lang/String;)V

    if-eqz v1, :cond_1

    invoke-static {v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v3

    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mSimPbRecords:Ljava/util/ArrayList;

    iput-object v4, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mAdnLoadingWaiters:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private refreshAdnCache()V
    .locals 1

    const-string/jumbo v0, "refreshAdnCache"

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mSimPbRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->queryAdnRecord()V

    return-void
.end method

.method private sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method


# virtual methods
.method public getAdnCount()I
    .locals 1

    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mAdnCount:I

    return v0
.end method

.method public getAdnEventState()I
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getAdnEventState currentAdnEventState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mCurrentAdnEventState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " phoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->log(Ljava/lang/String;)V

    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mCurrentAdnEventState:I

    return v0
.end method

.method public getAnrCount()I
    .locals 1

    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mAddNumCount:I

    return v0
.end method

.method public getEmailCount()I
    .locals 1

    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mEmailCount:I

    return v0
.end method

.method public getMaxAnrLen()I
    .locals 1

    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mMaxAnrLen:I

    return v0
.end method

.method public getMaxEmailLen()I
    .locals 1

    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mMaxEmailLen:I

    return v0
.end method

.method public getMaxNameLen()I
    .locals 1

    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mMaxNameLen:I

    return v0
.end method

.method public getMaxNumberLen()I
    .locals 1

    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mMaxNumberLen:I

    return v0
.end method

.method public getUsedAdnCount()I
    .locals 1

    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mValidAdnCount:I

    return v0
.end method

.method public getUsedAnrCount()I
    .locals 1

    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mValidAddNumCount:I

    return v0
.end method

.method public getUsedEmailCount()I
    .locals 1

    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mValidEmailCount:I

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 23

    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    iget-object v2, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mPhoneId:I

    if-ne v2, v3, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Initialized ADN done mPhoneId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mPhoneId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->log(Ljava/lang/String;)V

    iget-object v2, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_1

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mCurrentAdnEventState:I

    invoke-virtual/range {p0 .. p0}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->invalidateAdnCache()V

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Init ADN done Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->log(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const-string/jumbo v2, "Querying ADN record done"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->log(Ljava/lang/String;)V

    iget-object v2, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mAdnLoadingWaiters:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_1
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/os/Message;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Query adn record failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v2}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mAdnLoadingWaiters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mIsQueryFinished:Z

    goto/16 :goto_0

    :cond_3
    iget-object v2, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    const/4 v3, 0x0

    aget v2, v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mAdnCount:I

    iget-object v2, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    const/4 v3, 0x1

    aget v2, v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mValidAdnCount:I

    iget-object v2, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    const/4 v3, 0x2

    aget v2, v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mEmailCount:I

    iget-object v2, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    const/4 v3, 0x3

    aget v2, v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mValidEmailCount:I

    iget-object v2, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    const/4 v3, 0x4

    aget v2, v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mAddNumCount:I

    iget-object v2, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    const/4 v3, 0x5

    aget v2, v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mValidAddNumCount:I

    iget-object v2, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    const/4 v3, 0x6

    aget v2, v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mMaxNameLen:I

    iget-object v2, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    const/4 v3, 0x7

    aget v2, v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mMaxNumberLen:I

    iget-object v2, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    const/16 v3, 0x8

    aget v2, v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mMaxEmailLen:I

    iget-object v2, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    const/16 v3, 0x9

    aget v2, v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mMaxAnrLen:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Max ADN count is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mAdnCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", Valid ADN count is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mValidAdnCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", Email count is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mEmailCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", Valid email count is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mValidEmailCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", Add number count is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mAddNumCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", Valid add number count is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mValidAddNumCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", Max name length is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mMaxNameLen:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", Max number length is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mMaxNumberLen:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", Max email length is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mMaxEmailLen:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", Valid anr length is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mMaxAnrLen:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mValidAdnCount:I

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget v2, v0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mRecCount:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mValidAdnCount:I

    if-ne v2, v3, :cond_0

    :cond_4
    const/4 v2, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :pswitch_2
    iget-object v13, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v13, Landroid/os/Bundle;

    const-string/jumbo v2, "phone"

    invoke-virtual {v13, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v17

    move-object/from16 v0, p0

    iget v2, v0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mPhoneId:I

    move/from16 v0, v17

    if-ne v0, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Loading ADN record done mPhoneId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mPhoneId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->log(Ljava/lang/String;)V

    iget-object v2, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    const-string/jumbo v2, "adn_records"

    invoke-virtual {v13, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v9

    check-cast v9, [Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecord;

    const/4 v15, 0x0

    :goto_2
    array-length v2, v9

    if-ge v15, v2, :cond_6

    aget-object v2, v9, v15

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mSimPbRecords:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    new-instance v2, Lcom/android/internal/telephony/uicc/AdnRecord;

    aget-object v3, v9, v15

    invoke-virtual {v3}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecord;->getRecordIndex()I

    move-result v4

    aget-object v3, v9, v15

    invoke-virtual {v3}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v5

    aget-object v3, v9, v15

    invoke-virtual {v3}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v6

    aget-object v3, v9, v15

    invoke-virtual {v3}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v7

    aget-object v3, v9, v15

    invoke-virtual {v3}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecord;->getAdNumbers()[Ljava/lang/String;

    move-result-object v8

    const/4 v3, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget v2, v0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mRecCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mRecCount:I

    :cond_5
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "EVENT_LOAD_ADN_RECORD_DONE mRecCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mRecCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mRecCount:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mValidAdnCount:I

    if-ne v2, v3, :cond_0

    const/4 v2, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :pswitch_3
    const-string/jumbo v2, "Loading all ADN records done"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v3

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mIsQueryFinished:Z

    invoke-direct/range {p0 .. p0}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->notifyAndClearWaiters()V

    goto/16 :goto_0

    :catchall_1
    move-exception v2

    monitor-exit v3

    throw v2

    :pswitch_4
    const-string/jumbo v2, "Update ADN record done"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->log(Ljava/lang/String;)V

    const/4 v14, 0x0

    iget-object v2, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_b

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v16, v0

    iget-object v10, v12, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v10, Lcom/android/internal/telephony/uicc/AdnRecord;

    iget-object v2, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    const/4 v3, 0x0

    aget v18, v2, v3

    if-nez v16, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Record number for added ADN is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->log(Ljava/lang/String;)V

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Lcom/android/internal/telephony/uicc/AdnRecord;->setRecordNumber(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mSimPbRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget v2, v0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mValidAdnCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mValidAdnCount:I

    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mAdnUpdatingWaiter:Landroid/os/Message;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mAdnUpdatingWaiter:Landroid/os/Message;

    const/4 v3, 0x0

    invoke-static {v2, v3, v14}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mAdnUpdatingWaiter:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mAdnUpdatingWaiter:Landroid/os/Message;

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v10}, Lcom/android/internal/telephony/uicc/AdnRecord;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mSimPbRecords:Ljava/util/ArrayList;

    add-int/lit8 v3, v16, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/AdnRecord;->getRecordNumber()I

    move-result v11

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Record number for deleted ADN is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->log(Ljava/lang/String;)V

    move/from16 v0, v18

    if-ne v0, v11, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mSimPbRecords:Ljava/util/ArrayList;

    add-int/lit8 v3, v16, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mValidAdnCount:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mValidAdnCount:I

    goto :goto_3

    :cond_8
    new-instance v14, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "The index for deleted ADN record did not match"

    invoke-direct {v14, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mSimPbRecords:Ljava/util/ArrayList;

    add-int/lit8 v3, v16, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/AdnRecord;->getRecordNumber()I

    move-result v11

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Record number for changed ADN is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->log(Ljava/lang/String;)V

    move/from16 v0, v18

    if-ne v0, v11, :cond_a

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Lcom/android/internal/telephony/uicc/AdnRecord;->setRecordNumber(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mSimPbRecords:Ljava/util/ArrayList;

    add-int/lit8 v3, v16, -0x1

    invoke-virtual {v2, v3, v10}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    :cond_a
    new-instance v14, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "The index for changed ADN record did not match"

    invoke-direct {v14, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_b
    new-instance v14, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Update adn record failed"

    iget-object v3, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v14, v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3

    :pswitch_5
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    const-string/jumbo v2, "SIM REFRESH occurred"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->log(Ljava/lang/String;)V

    iget-object v2, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_e

    iget-object v0, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Lcom/android/internal/telephony/uicc/IccRefreshResponse;

    if-nez v19, :cond_c

    const-string/jumbo v2, "IccRefreshResponse received is null"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_c
    move-object/from16 v0, v19

    iget v2, v0, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->refreshResult:I

    if-eqz v2, :cond_d

    move-object/from16 v0, v19

    iget v2, v0, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->refreshResult:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->invalidateAdnCache()V

    goto/16 :goto_0

    :cond_e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SIM refresh Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public invalidateAdnCache()V
    .locals 1

    const-string/jumbo v0, "invalidateAdnCache"

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->log(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mRefreshAdnCache:Z

    return-void
.end method

.method public queryAdnRecord()V
    .locals 4

    const/4 v1, 0x0

    iput v1, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mRecCount:I

    iput v1, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mAdnCount:I

    iput v1, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mValidAdnCount:I

    iput v1, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mEmailCount:I

    iput v1, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mAddNumCount:I

    iput-boolean v1, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mIsQueryFinished:Z

    const-string/jumbo v1, "start to queryAdnRecord"

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    iget v3, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mPhoneId:I

    invoke-virtual {v1, v2, v3}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->getAdnRecord(Landroid/os/Message;I)V

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v2, v3}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->registerForAdnRecordsInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    invoke-virtual {v1, p0}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->unregisterForAdnRecordsInfo(Landroid/os/Handler;)V

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "QtiSimPhoneBookAdnRecordCache"

    const-string/jumbo v2, "Interrupted Exception in queryAdnRecord"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public requestLoadAllAdnLike(Landroid/os/Message;)V
    .locals 2

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mAdnLoadingWaiters:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mAdnLoadingWaiters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mSimPbRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "ADN cache has already filled in"

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->log(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mRefreshAdnCache:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mRefreshAdnCache:Z

    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->refreshAdnCache()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    return-void

    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->notifyAndClearWaiters()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_2
    :try_start_2
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->queryAdnRecord()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v1

    return-void
.end method

.method public reset()V
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v2, "reset()"

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->log(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mAdnLoadingWaiters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->clearUpdatingWriter()V

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mSimPbRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iput v3, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mRecCount:I

    iput-boolean v3, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mRefreshAdnCache:Z

    const/4 v2, -0x1

    iput v2, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mCurrentAdnEventState:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mIsQueryFinished = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mIsQueryFinished:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->log(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mIsQueryFinished:Z

    if-nez v2, :cond_1

    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mAdnLoadingWaiters:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    const-string/jumbo v2, "Query adn record failed"

    invoke-direct {p0, v0, v2}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_0
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mAdnLoadingWaiters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mIsQueryFinished:Z

    :cond_1
    return-void
.end method

.method public updateSimPbAdnBySearch(Lcom/android/internal/telephony/uicc/AdnRecord;Lcom/android/internal/telephony/uicc/AdnRecord;Landroid/os/Message;)V
    .locals 9

    const/4 v8, 0x0

    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mSimPbRecords:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    iget-object v6, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mSimPbRecords:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    const-string/jumbo v6, "ADN cache has already filled in"

    invoke-direct {p0, v6}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->log(Ljava/lang/String;)V

    iget-boolean v6, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mRefreshAdnCache:Z

    if-eqz v6, :cond_0

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mRefreshAdnCache:Z

    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->refreshAdnCache()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v7

    if-nez v3, :cond_2

    const-string/jumbo v6, "Sim PhoneBook Adn list not exist"

    invoke-direct {p0, p3, v6}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->queryAdnRecord()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    :cond_2
    const/4 v1, -0x1

    const/4 v0, 0x1

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/AdnRecord;->isEmpty()Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_4

    const/4 v1, 0x0

    :cond_3
    :goto_1
    const/4 v6, -0x1

    if-ne v1, v6, :cond_6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Sim PhoneBook Adn record don\'t exist for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, p3, v6}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    return-void

    :cond_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-virtual {p1, v6}, Lcom/android/internal/telephony/uicc/AdnRecord;->isEqual(Lcom/android/internal/telephony/uicc/AdnRecord;)Z

    move-result v6

    if-eqz v6, :cond_5

    move v1, v0

    goto :goto_1

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    if-nez v1, :cond_7

    iget v6, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mValidAdnCount:I

    iget v7, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mAdnCount:I

    if-ne v6, v7, :cond_7

    const-string/jumbo v6, "Sim PhoneBook Adn record is full"

    invoke-direct {p0, p3, v6}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    return-void

    :cond_7
    if-nez v1, :cond_a

    const/4 v4, 0x0

    :goto_3
    new-instance v5, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecord;

    invoke-direct {v5}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecord;-><init>()V

    iput v4, v5, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecord;->mRecordIndex:I

    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_8

    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecord;->mEmails:[Ljava/lang/String;

    iget-object v6, v5, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecord;->mEmails:[Ljava/lang/String;

    array-length v6, v6

    iput v6, v5, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecord;->mEmailCount:I

    :cond_8
    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAdditionalNumbers()[Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_9

    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAdditionalNumbers()[Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecord;->mAdNumbers:[Ljava/lang/String;

    iget-object v6, v5, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecord;->mAdNumbers:[Ljava/lang/String;

    array-length v6, v6

    iput v6, v5, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecord;->mAdNumCount:I

    :cond_9
    iget-object v6, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mAdnUpdatingWaiter:Landroid/os/Message;

    if-eqz v6, :cond_b

    const-string/jumbo v6, "Have pending update for Sim PhoneBook Adn"

    invoke-direct {p0, p3, v6}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    return-void

    :cond_a
    add-int/lit8 v6, v1, -0x1

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/AdnRecord;->getRecordNumber()I

    move-result v4

    goto :goto_3

    :cond_b
    iput-object p3, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mAdnUpdatingWaiter:Landroid/os/Message;

    iget-object v6, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    const/4 v7, 0x5

    invoke-virtual {p0, v7, v1, v8, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    iget v8, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mPhoneId:I

    invoke-virtual {v6, v5, v7, v8}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->updateAdnRecord(Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecord;Landroid/os/Message;I)V

    return-void
.end method
