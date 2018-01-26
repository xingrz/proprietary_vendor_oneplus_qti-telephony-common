.class Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;
.super Ljava/lang/Object;
.source "DdsCardSelectionController.java"


# instance fields
.field public cardStatus:I

.field public iccId:Ljava/lang/String;

.field public isCDMACard:Z

.field public isCardReady:Z

.field public isPinLocked:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;->cardStatus:I

    iput-object p2, p0, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;->iccId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public isCDMACard()Z
    .locals 1

    iget-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;->isCDMACard:Z

    return v0
.end method
