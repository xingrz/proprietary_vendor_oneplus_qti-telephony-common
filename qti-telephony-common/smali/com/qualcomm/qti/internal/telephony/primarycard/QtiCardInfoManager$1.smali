.class Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$1;
.super Landroid/content/BroadcastReceiver;
.source "QtiCardInfoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;


# direct methods
.method constructor <init>(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;)V
    .locals 0

    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$1;->this$0:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const/4 v5, 0x0

    const-string/jumbo v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "slot"

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string/jumbo v2, "ss"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$1;->this$0:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " SIM_STATE_CHANGED intent received state is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " slotId + "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->-wrap0(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSlotIndex(I)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    const-string/jumbo v2, "LOADED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$1;->this$0:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;

    invoke-static {v2}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->-get0(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;)[Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-static {v2}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->-get2(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$1;->this$0:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;

    invoke-static {v2}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->-get0(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;)[Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;

    move-result-object v2

    aget-object v2, v2, v0

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->-set2(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;Z)Z

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$1;->this$0:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;

    invoke-static {v2, v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->-wrap1(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$1;->this$0:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;

    invoke-static {v2}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->-get0(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;)[Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-static {v2, v5}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->-set2(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;Z)Z

    goto :goto_0
.end method
