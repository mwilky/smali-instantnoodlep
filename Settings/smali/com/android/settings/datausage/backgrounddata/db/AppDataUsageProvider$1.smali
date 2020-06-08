.class Lcom/android/settings/datausage/backgrounddata/db/AppDataUsageProvider$1;
.super Lcom/android/internal/content/PackageMonitor;
.source "AppDataUsageProvider.java"


# instance fields
.field final synthetic this$0:Lcom/android/settings/datausage/backgrounddata/db/AppDataUsageProvider;


# direct methods
.method constructor <init>(Lcom/android/settings/datausage/backgrounddata/db/AppDataUsageProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/datausage/backgrounddata/db/AppDataUsageProvider$1;->this$0:Lcom/android/settings/datausage/backgrounddata/db/AppDataUsageProvider;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;I)V
    .locals 11

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/settings/datausage/backgrounddata/db/AppDataUsageProvider$1;->this$0:Lcom/android/settings/datausage/backgrounddata/db/AppDataUsageProvider;

    invoke-virtual {v0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/datausage/backgrounddata/utils/BackgroundDataUtils;->getSqliteDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v0, 0x0

    const/4 v9, 0x2

    if-eqz v1, :cond_3

    if-eqz p1, :cond_3

    const/4 v3, 0x0

    new-array v5, v9, [Ljava/lang/String;

    aput-object p1, v5, v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v10, 0x1

    aput-object v2, v5, v10

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v2, "background_data"

    const-string v4, "package_name = ? and uid = ?"

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    move v0, v10

    :cond_3
    :goto_1
    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/datausage/backgrounddata/db/AppDataUsageProvider$1;->this$0:Lcom/android/settings/datausage/backgrounddata/db/AppDataUsageProvider;

    invoke-virtual {v0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/settings/datausage/backgrounddata/utils/BackgroundDataUtils;->isHaveInternetPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/datausage/backgrounddata/db/AppDataUsageProvider$1;->this$0:Lcom/android/settings/datausage/backgrounddata/db/AppDataUsageProvider;

    invoke-virtual {v0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    if-gez p2, :cond_4

    goto :goto_2

    :cond_4
    invoke-static {v0}, Lcom/android/settings/datausage/backgrounddata/utils/BackgroundDataUtils;->getSqliteDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-static {v0, p1, p2, v9}, Lcom/android/settings/datausage/backgrounddata/utils/BackgroundDataUtils;->addBackgroundDataApp(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;II)V

    :cond_5
    :goto_2
    const-string v0, "AppDataUsageProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPackageAdded: packageName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", uid = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/settings/datausage/backgrounddata/db/AppDataUsageProvider$1;->this$0:Lcom/android/settings/datausage/backgrounddata/db/AppDataUsageProvider;

    invoke-virtual {v0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    if-gez p2, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v0}, Lcom/android/settings/datausage/backgrounddata/utils/BackgroundDataUtils;->getSqliteDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-nez p1, :cond_1

    const-string v1, ""

    goto :goto_0

    :cond_1
    move-object v1, p1

    :goto_0
    invoke-static {v0, v1, p2}, Lcom/android/settings/datausage/backgrounddata/utils/BackgroundDataUtils;->deleteBackgroundDataApp(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I)I

    :cond_2
    :goto_1
    const-string v0, "AppDataUsageProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPackageRemoved: packageName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", uid = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
