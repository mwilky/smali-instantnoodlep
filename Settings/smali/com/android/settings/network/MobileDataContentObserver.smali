.class public Lcom/android/settings/network/MobileDataContentObserver;
.super Landroid/database/ContentObserver;
.source "MobileDataContentObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/network/MobileDataContentObserver$OnMobileDataChangedListener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/android/settings/network/MobileDataContentObserver$OnMobileDataChangedListener;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method

.method public static getObservableUri(I)Landroid/net/Uri;
    .locals 4

    const-string v0, "mobile_data"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    :cond_0
    return-object v1
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object p0, p0, Lcom/android/settings/network/MobileDataContentObserver;->mListener:Lcom/android/settings/network/MobileDataContentObserver$OnMobileDataChangedListener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/settings/network/MobileDataContentObserver$OnMobileDataChangedListener;->onMobileDataChanged()V

    :cond_0
    return-void
.end method

.method public register(Landroid/content/Context;I)V
    .locals 1

    invoke-static {p2}, Lcom/android/settings/network/MobileDataContentObserver;->getObservableUri(I)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public setOnMobileDataChangedListener(Lcom/android/settings/network/MobileDataContentObserver$OnMobileDataChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/network/MobileDataContentObserver;->mListener:Lcom/android/settings/network/MobileDataContentObserver$OnMobileDataChangedListener;

    return-void
.end method

.method public unRegister(Landroid/content/Context;)V
    .locals 0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
