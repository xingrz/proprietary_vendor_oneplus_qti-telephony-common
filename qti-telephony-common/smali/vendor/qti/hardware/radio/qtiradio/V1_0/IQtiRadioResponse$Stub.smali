.class public abstract Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadioResponse$Stub;
.super Landroid/os/HwBinder;
.source "IQtiRadioResponse.java"

# interfaces
.implements Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadioResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadioResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    return-object p0
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 4

    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    const/4 v1, -0x1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    return-object v0
.end method

.method public final getHashChain()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation

    const/16 v4, 0x20

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    new-array v1, v1, [[B

    new-array v2, v4, [B

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-array v2, v4, [B

    fill-array-data v2, :array_1

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    nop

    :array_0
    .array-data 1
        0x5bt
        0x61t
        -0x23t
        -0x66t
        -0x35t
        0x74t
        0x65t
        0x4dt
        -0x2bt
        0x20t
        0x3et
        -0x23t
        -0x6t
        -0x4dt
        -0x72t
        0x5bt
        -0x3et
        -0x29t
        -0x59t
        -0x52t
        0x64t
        0x78t
        -0x6ct
        0x54t
        0x1t
        -0xft
        0x47t
        -0x1bt
        0x6ft
        -0x7et
        0x74t
        -0x47t
    .end array-data

    :array_1
    .array-data 1
        -0x43t
        -0x26t
        -0x4at
        0x18t
        0x4dt
        0x7at
        0x34t
        0x6dt
        -0x5at
        -0x60t
        0x7dt
        -0x40t
        -0x7et
        -0x74t
        -0xft
        -0x66t
        0x69t
        0x6ft
        0x4ct
        -0x56t
        0x36t
        0x11t
        -0x3bt
        0x1ft
        0x2et
        0x14t
        0x56t
        0x5at
        0x14t
        -0x4ct
        0xft
        -0x27t
    .end array-data
.end method

.method public final interfaceChain()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "vendor.qti.hardware.radio.qtiradio@1.0::IQtiRadioResponse"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string/jumbo v2, "android.hidl.base@1.0::IBase"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "vendor.qti.hardware.radio.qtiradio@1.0::IQtiRadioResponse"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    invoke-static {}, Landroid/os/SystemProperties;->reportSyspropChanged()V

    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sparse-switch p1, :sswitch_data_0

    :goto_0
    :sswitch_0
    return-void

    :sswitch_1
    const-string/jumbo v15, "vendor.qti.hardware.radio.qtiradio@1.0::IQtiRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v14, Lvendor/qti/hardware/radio/qtiradio/V1_0/QtiRadioResponseInfo;

    invoke-direct {v14}, Lvendor/qti/hardware/radio/qtiradio/V1_0/QtiRadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Lvendor/qti/hardware/radio/qtiradio/V1_0/QtiRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v12}, Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadioResponse$Stub;->getAtrResponse(Lvendor/qti/hardware/radio/qtiradio/V1_0/QtiRadioResponseInfo;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_2
    const-string/jumbo v15, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadioResponse$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v8

    const/4 v15, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto :goto_0

    :sswitch_3
    const-string/jumbo v15, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    const/4 v15, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto :goto_0

    :sswitch_4
    const-string/jumbo v15, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadioResponse$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v7

    const/4 v15, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto :goto_0

    :sswitch_5
    const-string/jumbo v15, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadioResponse$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v9

    const/4 v15, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/HwParcel;->writeStatus(I)V

    new-instance v4, Landroid/os/HwBlob;

    const/16 v15, 0x10

    invoke-direct {v4, v15}, Landroid/os/HwBlob;-><init>(I)V

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v11

    const-wide/16 v16, 0x8

    move-wide/from16 v0, v16

    invoke-virtual {v4, v0, v1, v11}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v16, 0xc

    const/4 v15, 0x0

    move-wide/from16 v0, v16

    invoke-virtual {v4, v0, v1, v15}, Landroid/os/HwBlob;->putBool(JZ)V

    new-instance v13, Landroid/os/HwBlob;

    mul-int/lit8 v15, v11, 0x20

    invoke-direct {v13, v15}, Landroid/os/HwBlob;-><init>(I)V

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v11, :cond_1

    mul-int/lit8 v15, v5, 0x20

    int-to-long v2, v15

    const/4 v6, 0x0

    :goto_2
    const/16 v15, 0x20

    if-ge v6, v15, :cond_0

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [B

    aget-byte v15, v15, v6

    invoke-virtual {v13, v2, v3, v15}, Landroid/os/HwBlob;->putInt8(JB)V

    const-wide/16 v16, 0x1

    add-long v2, v2, v16

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    invoke-virtual {v4, v0, v1, v13}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_6
    const-string/jumbo v15, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadioResponse$Stub;->setHALInstrumentation()V

    goto/16 :goto_0

    :sswitch_7
    const-string/jumbo v15, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadioResponse$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v10

    const/4 v15, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, p3

    invoke-virtual {v10, v0}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_8
    const-string/jumbo v15, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadioResponse$Stub;->notifySyspropsChanged()V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0xf43484e -> :sswitch_2
        0xf444247 -> :sswitch_3
        0xf445343 -> :sswitch_4
        0xf485348 -> :sswitch_5
        0xf494e54 -> :sswitch_6
        0xf4c5444 -> :sswitch_0
        0xf504e47 -> :sswitch_0
        0xf524546 -> :sswitch_7
        0xf535953 -> :sswitch_8
        0xf555444 -> :sswitch_0
    .end sparse-switch
.end method

.method public final ping()V
    .locals 0

    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1

    const-string/jumbo v0, "vendor.qti.hardware.radio.qtiradio@1.0::IQtiRadioResponse"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public registerAsService(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadioResponse$Stub;->registerService(Ljava/lang/String;)V

    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadioResponse$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "@Stub"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
