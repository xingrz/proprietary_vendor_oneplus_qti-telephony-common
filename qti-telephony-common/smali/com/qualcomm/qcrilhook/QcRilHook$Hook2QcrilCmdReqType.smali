.class public final enum Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;
.super Ljava/lang/Enum;
.source "QcRilHook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qcrilhook/QcRilHook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Hook2QcrilCmdReqType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

.field public static final enum AKA_END_EAP_SESSION_CMD:Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

.field public static final enum AKA_GET_BIND_SUBSCRIPTION_CMD:Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

.field public static final enum AKA_GET_EAP_SESSION_KEY_CMD:Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

.field public static final enum AKA_SEND_EAP_PKG_CMD:Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

.field public static final enum AKA_SET_BIND_SUBSCRIPTION_CMD:Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

.field public static final enum AKA_START_EAP_SESSION_CMD:Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

.field public static final enum QCRILHOOK_E_NONE:Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

.field public static final enum QCRILHOOK_GET_Country_Code:Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

.field public static final enum QCRILHOOK_MAX_CMD:Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

.field public static final enum QCRILHOOK_RADIO_FTM_CMD:Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

.field public static final enum QCRILHOOK_RADIO_LPM_CMD:Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

.field public static final enum QCRILHOOK_RADIO_OFF_CMD:Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

.field public static final enum QCRILHOOK_RADIO_ON_CMD:Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

    const-string/jumbo v1, "QCRILHOOK_E_NONE"

    invoke-direct {v0, v1, v4, v4}, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;->QCRILHOOK_E_NONE:Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

    new-instance v0, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

    const-string/jumbo v1, "QCRILHOOK_RADIO_FTM_CMD"

    invoke-direct {v0, v1, v5, v5}, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;->QCRILHOOK_RADIO_FTM_CMD:Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

    new-instance v0, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

    const-string/jumbo v1, "QCRILHOOK_RADIO_ON_CMD"

    invoke-direct {v0, v1, v6, v6}, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;->QCRILHOOK_RADIO_ON_CMD:Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

    new-instance v0, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

    const-string/jumbo v1, "QCRILHOOK_RADIO_LPM_CMD"

    invoke-direct {v0, v1, v7, v7}, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;->QCRILHOOK_RADIO_LPM_CMD:Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

    new-instance v0, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

    const-string/jumbo v1, "QCRILHOOK_RADIO_OFF_CMD"

    invoke-direct {v0, v1, v8, v8}, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;->QCRILHOOK_RADIO_OFF_CMD:Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

    new-instance v0, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

    const-string/jumbo v1, "QCRILHOOK_GET_Country_Code"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;->QCRILHOOK_GET_Country_Code:Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

    new-instance v0, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

    const-string/jumbo v1, "AKA_START_EAP_SESSION_CMD"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;->AKA_START_EAP_SESSION_CMD:Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

    new-instance v0, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

    const-string/jumbo v1, "AKA_END_EAP_SESSION_CMD"

    const/4 v2, 0x7

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;->AKA_END_EAP_SESSION_CMD:Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

    new-instance v0, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

    const-string/jumbo v1, "AKA_SEND_EAP_PKG_CMD"

    const/16 v2, 0x8

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;->AKA_SEND_EAP_PKG_CMD:Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

    new-instance v0, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

    const-string/jumbo v1, "AKA_GET_EAP_SESSION_KEY_CMD"

    const/16 v2, 0x9

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;->AKA_GET_EAP_SESSION_KEY_CMD:Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

    new-instance v0, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

    const-string/jumbo v1, "AKA_GET_BIND_SUBSCRIPTION_CMD"

    const/16 v2, 0xa

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;->AKA_GET_BIND_SUBSCRIPTION_CMD:Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

    new-instance v0, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

    const-string/jumbo v1, "AKA_SET_BIND_SUBSCRIPTION_CMD"

    const/16 v2, 0xb

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3}, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;->AKA_SET_BIND_SUBSCRIPTION_CMD:Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

    new-instance v0, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

    const-string/jumbo v1, "QCRILHOOK_MAX_CMD"

    const/16 v2, 0xc

    const v3, 0x7fffffff

    invoke-direct {v0, v1, v2, v3}, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;->QCRILHOOK_MAX_CMD:Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

    const/16 v0, 0xd

    new-array v0, v0, [Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

    sget-object v1, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;->QCRILHOOK_E_NONE:Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;->QCRILHOOK_RADIO_FTM_CMD:Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;->QCRILHOOK_RADIO_ON_CMD:Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;->QCRILHOOK_RADIO_LPM_CMD:Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;->QCRILHOOK_RADIO_OFF_CMD:Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;->QCRILHOOK_GET_Country_Code:Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;->AKA_START_EAP_SESSION_CMD:Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;->AKA_END_EAP_SESSION_CMD:Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;->AKA_SEND_EAP_PKG_CMD:Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;->AKA_GET_EAP_SESSION_KEY_CMD:Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;->AKA_GET_BIND_SUBSCRIPTION_CMD:Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;->AKA_SET_BIND_SUBSCRIPTION_CMD:Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;->QCRILHOOK_MAX_CMD:Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sput-object v0, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;->$VALUES:[Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 1

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;->value:I

    iput p3, p0, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;
    .locals 1

    const-class v0, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

    return-object v0
.end method

.method public static values()[Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;
    .locals 1

    sget-object v0, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;->$VALUES:[Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

    return-object v0
.end method


# virtual methods
.method public value()I
    .locals 1

    iget v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;->value:I

    return v0
.end method
