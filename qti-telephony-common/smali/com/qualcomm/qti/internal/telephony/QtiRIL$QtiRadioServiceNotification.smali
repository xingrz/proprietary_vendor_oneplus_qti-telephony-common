.class final Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioServiceNotification;
.super Landroid/hidl/manager/V1_0/IServiceNotification$Stub;
.source "QtiRIL.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/internal/telephony/QtiRIL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "QtiRadioServiceNotification"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/qti/internal/telephony/QtiRIL;


# direct methods
.method constructor <init>(Lcom/qualcomm/qti/internal/telephony/QtiRIL;)V
    .locals 0

    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioServiceNotification;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    invoke-direct {p0}, Landroid/hidl/manager/V1_0/IServiceNotification$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onRegistration(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    const-string/jumbo v0, "QTIRILJ"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "QtiRadio interface service started "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " preexisting ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioServiceNotification;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->-wrap0(Lcom/qualcomm/qti/internal/telephony/QtiRIL;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioServiceNotification;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->-wrap1(Lcom/qualcomm/qti/internal/telephony/QtiRIL;)V

    :cond_0
    return-void
.end method
