.class public Lcom/qualcomm/qti/internal/telephony/QtiSmscHelper;
.super Landroid/os/Handler;
.source "QtiSmscHelper.java"


# static fields
.field private static final EVENT_GET_SMSC:I = 0x2

.field private static final EVENT_SET_SMSC:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "QtiSmscHelper"

.field private static final PHONE_COUNT:I


# instance fields
.field private mGetLock:Ljava/lang/Object;

.field private final mPhones:[Lcom/android/internal/telephony/Phone;

.field private mSetLock:Ljava/lang/Object;

.field private final mSmscArray:Ljava/util/concurrent/atomic/AtomicReferenceArray;

.field private volatile mSuccess:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    sput v0, Lcom/qualcomm/qti/internal/telephony/QtiSmscHelper;->PHONE_COUNT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmscHelper;->mSetLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmscHelper;->mGetLock:Ljava/lang/Object;

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmscHelper;->mPhones:[Lcom/android/internal/telephony/Phone;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    sget v1, Lcom/qualcomm/qti/internal/telephony/QtiSmscHelper;->PHONE_COUNT:I

    new-array v1, v1, [Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>([Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmscHelper;->mSmscArray:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmscHelper;->mSuccess:Z

    return-void
.end method

.method private isValidPhoneId(I)Z
    .locals 2

    const/4 v0, 0x0

    if-ltz p1, :cond_0

    sget v1, Lcom/qualcomm/qti/internal/telephony/QtiSmscHelper;->PHONE_COUNT:I

    if-ge p1, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method


# virtual methods
.method public getSmscAddress(I)Ljava/lang/String;
    .locals 5

    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiSmscHelper;->isValidPhoneId(I)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "QtiSmscHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid phone id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1

    :cond_0
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmscHelper;->mGetLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmscHelper;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v1, p1

    const/4 v3, 0x2

    const/4 v4, -0x1

    invoke-virtual {p0, v3, p1, v4}, Lcom/qualcomm/qti/internal/telephony/QtiSmscHelper;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/Phone;->getSmscAddress(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmscHelper;->mGetLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmscHelper;->mSmscArray:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v2

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmscHelper;->mGetLock:Ljava/lang/Object;

    monitor-enter v2

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_0

    const-string/jumbo v1, "QtiSmscHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "smsc = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " on phone = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmscHelper;->mSmscArray:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v1, v3, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmscHelper;->mGetLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    :pswitch_1
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmscHelper;->mSetLock:Ljava/lang/Object;

    monitor-enter v2

    if-eqz v0, :cond_1

    :try_start_1
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    iput-boolean v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmscHelper;->mSuccess:Z

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmscHelper;->mSetLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    monitor-exit v2

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setSmscAddress(ILjava/lang/String;)Z
    .locals 6

    const/4 v5, 0x1

    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiSmscHelper;->isValidPhoneId(I)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "QtiSmscHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid phone id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1

    :cond_0
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmscHelper;->mSetLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmscHelper;->mSmscArray:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "QtiSmscHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "the same smsc is there on phone = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return v5

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmscHelper;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v1, p1

    const/4 v3, 0x1

    const/4 v4, -0x1

    invoke-virtual {p0, v3, p1, v4}, Lcom/qualcomm/qti/internal/telephony/QtiSmscHelper;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, p2, v3}, Lcom/android/internal/telephony/Phone;->setSmscAddress(Ljava/lang/String;Landroid/os/Message;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmscHelper;->mSetLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    :try_start_3
    iget-boolean v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmscHelper;->mSuccess:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmscHelper;->mSmscArray:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v1, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    :cond_2
    iget-boolean v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmscHelper;->mSuccess:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v2

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    :catch_0
    move-exception v0

    goto :goto_0
.end method
