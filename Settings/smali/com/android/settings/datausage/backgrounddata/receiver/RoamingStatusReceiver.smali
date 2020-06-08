.class public Lcom/android/settings/datausage/backgrounddata/receiver/RoamingStatusReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RoamingStatusReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportUss()Z

    move-result p0

    if-eqz p0, :cond_4

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p1}, Lcom/android/settings/datausage/backgrounddata/utils/BackgroundDataUtils;->getSqliteDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p0}, Lcom/android/settings/datausage/backgrounddata/utils/BackgroundDataUtils;->queryAllApp(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {p1, p2}, Lcom/android/settings/datausage/backgrounddata/utils/BackgroundDataUtils;->changeRoamingAppStatus(Landroid/content/Context;Ljava/util/List;)V

    goto :goto_1

    :cond_3
    :goto_0
    invoke-static {p1, p0}, Lcom/android/settings/datausage/backgrounddata/utils/BackgroundDataUtils;->initAppBackgroundDataType(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)V

    :goto_1
    const-string p0, "RoamingStatusReceiver"

    const-string p1, "RoamingStatusReceiver onReceive"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void
.end method
