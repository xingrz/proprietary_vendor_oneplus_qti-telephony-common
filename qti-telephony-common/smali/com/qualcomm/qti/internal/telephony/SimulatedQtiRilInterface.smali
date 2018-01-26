.class public Lcom/qualcomm/qti/internal/telephony/SimulatedQtiRilInterface;
.super Ljava/lang/Object;
.source "SimulatedQtiRilInterface.java"

# interfaces
.implements Lcom/qualcomm/qti/internal/telephony/BaseRilInterface;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SimulatedQtiRilInterface"

.field private static mIsServiceReady:Z

.field private static sInstance:Lcom/qualcomm/qti/internal/telephony/SimulatedQtiRilInterface;


# instance fields
.field private mQcRilHook:Lcom/qualcomm/qcrilhook/QcRilHook;

.field private mServiceReadyRegistrantList:Landroid/os/RegistrantList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/SimulatedQtiRilInterface;->sInstance:Lcom/qualcomm/qti/internal/telephony/SimulatedQtiRilInterface;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/qualcomm/qti/internal/telephony/SimulatedQtiRilInterface;->mIsServiceReady:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, " in constructor "

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/SimulatedQtiRilInterface;->logd(Ljava/lang/String;)V

    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/SimulatedQtiRilInterface;->mServiceReadyRegistrantList:Landroid/os/RegistrantList;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/qualcomm/qti/internal/telephony/SimulatedQtiRilInterface;
    .locals 4

    const-class v1, Lcom/qualcomm/qti/internal/telephony/SimulatedQtiRilInterface;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/SimulatedQtiRilInterface;->sInstance:Lcom/qualcomm/qti/internal/telephony/SimulatedQtiRilInterface;

    if-nez v0, :cond_0

    new-instance v0, Lcom/qualcomm/qti/internal/telephony/SimulatedQtiRilInterface;

    invoke-direct {v0, p0}, Lcom/qualcomm/qti/internal/telephony/SimulatedQtiRilInterface;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/SimulatedQtiRilInterface;->sInstance:Lcom/qualcomm/qti/internal/telephony/SimulatedQtiRilInterface;

    :goto_0
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/SimulatedQtiRilInterface;->sInstance:Lcom/qualcomm/qti/internal/telephony/SimulatedQtiRilInterface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    const-string/jumbo v0, "SimulatedQtiRilInterface"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "instance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/qualcomm/qti/internal/telephony/SimulatedQtiRilInterface;->sInstance:Lcom/qualcomm/qti/internal/telephony/SimulatedQtiRilInterface;

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

.method private logd(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "SimulatedQtiRilInterface"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public getOmhCallProfile(ILandroid/os/Message;I)V
    .locals 4

    const/4 v3, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getOmhCallProfile, modemApnType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", phoneId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/SimulatedQtiRilInterface;->logd(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    new-instance v1, Landroid/os/AsyncResult;

    iget-object v2, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {v1, v2, v3, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public isServiceReady()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public registerForServiceReadyEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/SimulatedQtiRilInterface;->mServiceReadyRegistrantList:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/SimulatedQtiRilInterface;->isServiceReady()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/os/AsyncResult;

    sget-boolean v2, Lcom/qualcomm/qti/internal/telephony/SimulatedQtiRilInterface;->mIsServiceReady:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v1, v3, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_0
    return-void
.end method

.method public sendPhoneStatus(II)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendPhoneStatus, isReady: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", phoneId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/SimulatedQtiRilInterface;->logd(Ljava/lang/String;)V

    return-void
.end method

.method public setLocalCallHold(IZ)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public unRegisterForServiceReadyEvent(Landroid/os/Handler;)V
    .locals 1

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/SimulatedQtiRilInterface;->mServiceReadyRegistrantList:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method
