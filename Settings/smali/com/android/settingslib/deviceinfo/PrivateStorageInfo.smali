.class public Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;
.super Ljava/lang/Object;
.source "PrivateStorageInfo.java"


# instance fields
.field public final freeBytes:J

.field public final totalBytes:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;->freeBytes:J

    iput-wide p3, p0, Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;->totalBytes:J

    return-void
.end method

.method public static getPrivateStorageInfo(Lcom/android/settingslib/deviceinfo/StorageVolumeProvider;)Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;
    .locals 9

    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v0

    const-class v1, Landroid/app/usage/StorageStatsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/StorageStatsManager;

    check-cast p0, Lcom/android/settingslib/deviceinfo/StorageManagerVolumeProvider;

    invoke-virtual {p0}, Lcom/android/settingslib/deviceinfo/StorageManagerVolumeProvider;->getVolumes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-wide/16 v2, 0x0

    move-wide v4, v2

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/storage/VolumeInfo;

    invoke-virtual {v6}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    invoke-virtual {v6}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v7

    if-eqz v7, :cond_0

    :try_start_0
    invoke-virtual {p0, v0, v6}, Lcom/android/settingslib/deviceinfo/StorageManagerVolumeProvider;->getTotalBytes(Landroid/app/usage/StorageStatsManager;Landroid/os/storage/VolumeInfo;)J

    move-result-wide v7

    add-long/2addr v4, v7

    invoke-virtual {v6}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/app/usage/StorageStatsManager;->getFreeBytes(Ljava/lang/String;)J

    move-result-wide v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-long/2addr v2, v6

    goto :goto_0

    :catch_0
    move-exception v6

    const-string v7, "PrivateStorageInfo"

    invoke-static {v7, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    new-instance p0, Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;-><init>(JJ)V

    return-object p0
.end method

.method public static getTotalSize(Landroid/os/storage/VolumeInfo;)J
    .locals 2

    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v0

    const-class v1, Landroid/app/usage/StorageStatsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/StorageStatsManager;

    :try_start_0
    invoke-virtual {p0}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/app/usage/StorageStatsManager;->getTotalBytes(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p0

    const-string v0, "PrivateStorageInfo"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    const-wide/16 v0, 0x0

    return-wide v0
.end method
