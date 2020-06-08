.class public Lcom/android/settings/applications/AppStateSmsPremBridge;
.super Lcom/android/settings/applications/AppStateBaseBridge;
.source "AppStateSmsPremBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/AppStateSmsPremBridge$SmsState;
    }
.end annotation


# static fields
.field public static final FILTER_APP_PREMIUM_SMS:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;


# instance fields
.field private final mSmsManager:Lcom/android/internal/telephony/ISms;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/applications/AppStateSmsPremBridge$1;

    invoke-direct {v0}, Lcom/android/settings/applications/AppStateSmsPremBridge$1;-><init>()V

    sput-object v0, Lcom/android/settings/applications/AppStateSmsPremBridge;->FILTER_APP_PREMIUM_SMS:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V
    .locals 0

    invoke-direct {p0, p2, p3}, Lcom/android/settings/applications/AppStateBaseBridge;-><init>(Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V

    const-string p1, "isms"

    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/AppStateSmsPremBridge;->mSmsManager:Lcom/android/internal/telephony/ISms;

    return-void
.end method


# virtual methods
.method protected loadAllExtraInfo()V
    .locals 8

    iget-object v0, p0, Lcom/android/settings/applications/AppStateBaseBridge;->mAppSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settingslib/applications/ApplicationsState$Session;->getAllApps()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v5, v4, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v6, v4, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    new-instance v6, Lcom/android/settings/applications/AppStateSmsPremBridge$SmsState;

    invoke-direct {v6}, Lcom/android/settings/applications/AppStateSmsPremBridge$SmsState;-><init>()V

    :try_start_0
    iget-object v7, p0, Lcom/android/settings/applications/AppStateSmsPremBridge;->mSmsManager:Lcom/android/internal/telephony/ISms;

    invoke-interface {v7, v5}, Lcom/android/internal/telephony/ISms;->getPremiumSmsPermission(Ljava/lang/String;)I

    move-result v5
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move v5, v2

    :goto_1
    iput v5, v6, Lcom/android/settings/applications/AppStateSmsPremBridge$SmsState;->smsState:I

    iput-object v6, v4, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setSmsState(Ljava/lang/String;I)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/android/settings/applications/AppStateSmsPremBridge;->mSmsManager:Lcom/android/internal/telephony/ISms;

    invoke-interface {p0, p1, p2}, Lcom/android/internal/telephony/ISms;->setPremiumSmsPermission(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method protected updateExtraInfo(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Ljava/lang/String;I)V
    .locals 0

    new-instance p3, Lcom/android/settings/applications/AppStateSmsPremBridge$SmsState;

    invoke-direct {p3}, Lcom/android/settings/applications/AppStateSmsPremBridge$SmsState;-><init>()V

    :try_start_0
    iget-object p0, p0, Lcom/android/settings/applications/AppStateSmsPremBridge;->mSmsManager:Lcom/android/internal/telephony/ISms;

    invoke-interface {p0, p2}, Lcom/android/internal/telephony/ISms;->getPremiumSmsPermission(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    iput p0, p3, Lcom/android/settings/applications/AppStateSmsPremBridge$SmsState;->smsState:I

    iput-object p3, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    return-void
.end method
