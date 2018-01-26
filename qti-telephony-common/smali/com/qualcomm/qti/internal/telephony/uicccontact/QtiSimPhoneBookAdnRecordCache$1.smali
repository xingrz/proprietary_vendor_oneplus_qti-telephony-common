.class Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache$1;
.super Landroid/content/BroadcastReceiver;
.source "QtiSimPhoneBookAdnRecordCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;


# direct methods
.method constructor <init>(Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;)V
    .locals 0

    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache$1;->this$0:Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "phone"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string/jumbo v2, "ss"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "ABSENT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache$1;->this$0:Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;

    iget v2, v2, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mPhoneId:I

    if-ne v2, v0, :cond_0

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache$1;->this$0:Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ACTION_SIM_STATE_CHANGED intent received simStatus: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "phoneId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->-wrap0(Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache$1;->this$0:Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;

    invoke-virtual {v2}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->invalidateAdnCache()V

    :cond_0
    return-void
.end method
