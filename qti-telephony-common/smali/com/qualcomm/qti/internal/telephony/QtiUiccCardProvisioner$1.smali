.class Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$1;
.super Landroid/content/BroadcastReceiver;
.source "QtiUiccCardProvisioner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;


# direct methods
.method constructor <init>(Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;)V
    .locals 0

    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$1;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$1;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onReceive action = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->-wrap0(Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;Ljava/lang/String;)V

    const-string/jumbo v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string/jumbo v3, "ss"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "phone"

    const/4 v4, -0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$1;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "phoneId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "   sim_state "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->-wrap0(Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;Ljava/lang/String;)V

    const-string/jumbo v3, "READY"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "IMSI"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "LOADED"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$1;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    invoke-static {v3, v1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->-wrap1(Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;I)V

    :cond_1
    const-string/jumbo v3, "LOADED"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->updateUserPreferences()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    const-string/jumbo v3, "com.android.phone.SIP_ADD_PHONE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string/jumbo v3, "com.android.phone.SIP_REMOVE_PHONE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_4
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$1;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    const-string/jumbo v4, "onReceive SIP phone change updateUserPreferences"

    invoke-static {v3, v4}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->-wrap0(Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;Ljava/lang/String;)V

    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->updateUserPreferences()V

    goto :goto_0
.end method
