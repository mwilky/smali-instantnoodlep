.class public Lcom/android/settings/backup/PrivacySettingsUtils;
.super Ljava/lang/Object;
.source "PrivacySettingsUtils.java"


# direct methods
.method static isAdminUser(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/UserManager;->isAdminUser()Z

    move-result p0

    return p0
.end method

.method static isInvisibleKey(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6

    const-string v0, "PrivacySettingsUtils"

    const-string v1, "backup"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-interface {v1, v3}, Landroid/app/backup/IBackupManager;->isBackupServiceActive(I)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "Failed querying backup manager service activity status. Assuming it is inactive."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v3, "com.google.settings"

    invoke-virtual {p0, v3, v2}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object p0

    const/4 v3, 0x1

    if-nez p0, :cond_0

    move p0, v3

    goto :goto_1

    :cond_0
    move p0, v2

    :goto_1
    new-instance v4, Ljava/util/TreeSet;

    invoke-direct {v4}, Ljava/util/TreeSet;-><init>()V

    if-nez p0, :cond_1

    if-eqz v1, :cond_2

    :cond_1
    const-string v5, "backup_inactive"

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2
    if-nez p0, :cond_3

    if-nez v1, :cond_4

    :cond_3
    const-string p0, "backup_data"

    invoke-interface {v4, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string p0, "auto_restore"

    invoke-interface {v4, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string p0, "configure_account"

    invoke-interface {v4, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_4
    const/4 p0, 0x3

    invoke-static {v0, p0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_5

    const-string p0, "keysToRemove size="

    invoke-static {p0}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline23(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " keysToRemove="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-interface {v4, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    return v3

    :cond_6
    return v2
.end method

.method public static updatePrivacyBuffer(Landroid/content/Context;Lcom/android/settings/backup/PrivacySettingsConfigData;)V
    .locals 4

    const-string v0, "backup"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v0

    :try_start_0
    invoke-interface {v0}, Landroid/app/backup/IBackupManager;->isBackupEnabled()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/settings/backup/PrivacySettingsConfigData;->setBackupEnabled(Z)V

    invoke-interface {v0}, Landroid/app/backup/IBackupManager;->getCurrentTransport()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/app/backup/IBackupManager;->getConfigurationIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "config"

    invoke-static {p0, v2, v3}, Lcom/android/settings/backup/PrivacySettingsUtils;->validatedActivityIntent(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/settings/backup/PrivacySettingsConfigData;->setConfigIntent(Landroid/content/Intent;)V

    invoke-interface {v0, v1}, Landroid/app/backup/IBackupManager;->getDestinationString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/settings/backup/PrivacySettingsConfigData;->setConfigSummary(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Landroid/app/backup/IBackupManager;->getDataManagementIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "management"

    invoke-static {p0, v2, v3}, Lcom/android/settings/backup/PrivacySettingsUtils;->validatedActivityIntent(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settings/backup/PrivacySettingsConfigData;->setManageIntent(Landroid/content/Intent;)V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p0

    invoke-interface {v0, p0, v1}, Landroid/app/backup/IBackupManager;->getDataManagementLabelForUser(ILjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settings/backup/PrivacySettingsConfigData;->setManageLabel(Ljava/lang/CharSequence;)V

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Lcom/android/settings/backup/PrivacySettingsConfigData;->setBackupGray(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Lcom/android/settings/backup/PrivacySettingsConfigData;->setBackupGray(Z)V

    :goto_0
    return-void
.end method

.method private static validatedActivityIntent(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p1, 0x0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Backup "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " intent "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " fails to resolve; ignoring"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "PrivacySettingsUtils"

    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object p1
.end method
