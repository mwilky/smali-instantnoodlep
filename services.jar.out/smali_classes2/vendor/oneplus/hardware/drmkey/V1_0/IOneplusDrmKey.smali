.class public interface abstract Lvendor/oneplus/hardware/drmkey/V1_0/IOneplusDrmKey;
.super Ljava/lang/Object;
.source "IOneplusDrmKey.java"

# interfaces
.implements Landroid/hidl/base/V1_0/IBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/oneplus/hardware/drmkey/V1_0/IOneplusDrmKey$Stub;,
        Lvendor/oneplus/hardware/drmkey/V1_0/IOneplusDrmKey$Proxy;,
        Lvendor/oneplus/hardware/drmkey/V1_0/IOneplusDrmKey$sendCommandCallback;
    }
.end annotation


# static fields
.field public static final kInterfaceName:Ljava/lang/String; = "vendor.oneplus.hardware.drmkey@1.0::IOneplusDrmKey"


# direct methods
.method public static asInterface(Landroid/os/IHwBinder;)Lvendor/oneplus/hardware/drmkey/V1_0/IOneplusDrmKey;
    .locals 7

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    nop

    const-string v1, "vendor.oneplus.hardware.drmkey@1.0::IOneplusDrmKey"

    invoke-interface {p0, v1}, Landroid/os/IHwBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;

    move-result-object v2

    if-eqz v2, :cond_1

    instance-of v3, v2, Lvendor/oneplus/hardware/drmkey/V1_0/IOneplusDrmKey;

    if-eqz v3, :cond_1

    move-object v0, v2

    check-cast v0, Lvendor/oneplus/hardware/drmkey/V1_0/IOneplusDrmKey;

    return-object v0

    :cond_1
    new-instance v3, Lvendor/oneplus/hardware/drmkey/V1_0/IOneplusDrmKey$Proxy;

    invoke-direct {v3, p0}, Lvendor/oneplus/hardware/drmkey/V1_0/IOneplusDrmKey$Proxy;-><init>(Landroid/os/IHwBinder;)V

    :try_start_0
    invoke-interface {v3}, Lvendor/oneplus/hardware/drmkey/V1_0/IOneplusDrmKey;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v6, :cond_2

    return-object v3

    :cond_2
    goto :goto_0

    :cond_3
    goto :goto_1

    :catch_0
    move-exception v1

    :goto_1
    return-object v0
.end method

.method public static castFrom(Landroid/os/IHwInterface;)Lvendor/oneplus/hardware/drmkey/V1_0/IOneplusDrmKey;
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Landroid/os/IHwInterface;->asBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/oneplus/hardware/drmkey/V1_0/IOneplusDrmKey;->asInterface(Landroid/os/IHwBinder;)Lvendor/oneplus/hardware/drmkey/V1_0/IOneplusDrmKey;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static getService()Lvendor/oneplus/hardware/drmkey/V1_0/IOneplusDrmKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "default"

    invoke-static {v0}, Lvendor/oneplus/hardware/drmkey/V1_0/IOneplusDrmKey;->getService(Ljava/lang/String;)Lvendor/oneplus/hardware/drmkey/V1_0/IOneplusDrmKey;

    move-result-object v0

    return-object v0
.end method

.method public static getService(Ljava/lang/String;)Lvendor/oneplus/hardware/drmkey/V1_0/IOneplusDrmKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "vendor.oneplus.hardware.drmkey@1.0::IOneplusDrmKey"

    invoke-static {v0, p0}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/oneplus/hardware/drmkey/V1_0/IOneplusDrmKey;->asInterface(Landroid/os/IHwBinder;)Lvendor/oneplus/hardware/drmkey/V1_0/IOneplusDrmKey;

    move-result-object v0

    return-object v0
.end method

.method public static getService(Ljava/lang/String;Z)Lvendor/oneplus/hardware/drmkey/V1_0/IOneplusDrmKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "vendor.oneplus.hardware.drmkey@1.0::IOneplusDrmKey"

    invoke-static {v0, p0, p1}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;Z)Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/oneplus/hardware/drmkey/V1_0/IOneplusDrmKey;->asInterface(Landroid/os/IHwBinder;)Lvendor/oneplus/hardware/drmkey/V1_0/IOneplusDrmKey;

    move-result-object v0

    return-object v0
.end method

.method public static getService(Z)Lvendor/oneplus/hardware/drmkey/V1_0/IOneplusDrmKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "default"

    invoke-static {v0, p0}, Lvendor/oneplus/hardware/drmkey/V1_0/IOneplusDrmKey;->getService(Ljava/lang/String;Z)Lvendor/oneplus/hardware/drmkey/V1_0/IOneplusDrmKey;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract asBinder()Landroid/os/IHwBinder;
.end method

.method public abstract debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/NativeHandle;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getHashChain()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract installKeybox(Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract interfaceChain()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract interfaceDescriptor()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract notifySyspropsChanged()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ping()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract sendCommand(Ljava/lang/String;Ljava/lang/String;Lvendor/oneplus/hardware/drmkey/V1_0/IOneplusDrmKey$sendCommandCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setHALInstrumentation()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract verifyKeybox()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
