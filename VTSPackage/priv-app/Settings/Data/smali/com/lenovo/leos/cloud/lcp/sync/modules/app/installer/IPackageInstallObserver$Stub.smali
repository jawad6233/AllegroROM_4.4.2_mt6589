.class public abstract Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/IPackageInstallObserver$Stub;
.super Landroid/os/Binder;
.source "IPackageInstallObserver.java"

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/IPackageInstallObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/IPackageInstallObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/IPackageInstallObserver$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_packageInstalled:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "android.content.pm.IPackageInstallObserver"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/IPackageInstallObserver;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 20
    if-nez p0, :cond_0

    .line 21
    const/4 v0, 0x0

    .line 27
    :goto_0
    return-object v0

    .line 23
    :cond_0
    const-string v1, "android.content.pm.IPackageInstallObserver"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 24
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/IPackageInstallObserver;

    if-eqz v1, :cond_1

    .line 25
    check-cast v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/IPackageInstallObserver;

    goto :goto_0

    .line 27
    :cond_1
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/IPackageInstallObserver$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/IPackageInstallObserver$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 31
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 36
    sparse-switch p1, :sswitch_data_0

    .line 50
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 38
    :sswitch_0
    const-string v3, "android.content.pm.IPackageInstallObserver"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 41
    :sswitch_1
    const-string v3, "android.content.pm.IPackageInstallObserver"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 43
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, "arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 46
    .local v1, "arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/IPackageInstallObserver$Stub;->packageInstalled(Ljava/lang/String;I)V

    goto :goto_0

    .line 36
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method