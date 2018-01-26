.class public Lcom/qualcomm/qti/internal/telephony/QtiRadioResponse;
.super Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadioResponse$Stub;
.source "QtiRadioResponse.java"


# static fields
.field static final QTI_RILJ_LOG_TAG:Ljava/lang/String; = "QtiRadioResponse"


# instance fields
.field mRil:Lcom/qualcomm/qti/internal/telephony/QtiRIL;


# direct methods
.method public constructor <init>(Lcom/qualcomm/qti/internal/telephony/QtiRIL;)V
    .locals 0

    invoke-direct {p0}, Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadioResponse$Stub;-><init>()V

    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioResponse;->mRil:Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    return-void
.end method

.method private responseString(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V
    .locals 3

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioResponse;->mRil:Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    invoke-virtual {v2, p1}, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->qtiProcessResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioResponse;->mRil:Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    invoke-virtual {v2, v0}, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->qtiGetMessageFromRequest(Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    if-eqz v1, :cond_1

    iget v2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v2, :cond_0

    invoke-static {v1, p2}, Lcom/qualcomm/qti/internal/telephony/QtiRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    :cond_0
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioResponse;->mRil:Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    invoke-virtual {v2, v0, p1, p2}, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->qtiProcessResponseDone(Ljava/lang/Object;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method static sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-static {p0, p1, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method static toRadioResponseInfo(Lvendor/qti/hardware/radio/qtiradio/V1_0/QtiRadioResponseInfo;)Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .locals 2

    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    iget v1, p0, Lvendor/qti/hardware/radio/qtiradio/V1_0/QtiRadioResponseInfo;->type:I

    iput v1, v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;->type:I

    iget v1, p0, Lvendor/qti/hardware/radio/qtiradio/V1_0/QtiRadioResponseInfo;->serial:I

    iput v1, v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;->serial:I

    iget v1, p0, Lvendor/qti/hardware/radio/qtiradio/V1_0/QtiRadioResponseInfo;->error:I

    iput v1, v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    return-object v0
.end method


# virtual methods
.method public getAtrResponse(Lvendor/qti/hardware/radio/qtiradio/V1_0/QtiRadioResponseInfo;Ljava/lang/String;)V
    .locals 3

    const-string/jumbo v1, "QtiRadioResponse"

    const-string/jumbo v2, "getAtrResponse"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/qualcomm/qti/internal/telephony/QtiRadioResponse;->toRadioResponseInfo(Lvendor/qti/hardware/radio/qtiradio/V1_0/QtiRadioResponseInfo;)Landroid/hardware/radio/V1_0/RadioResponseInfo;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/qualcomm/qti/internal/telephony/QtiRadioResponse;->responseString(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    return-void
.end method
