.class public Lcom/oneplus/settings/backup/OPBackupSettingsActivityPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "OPBackupSettingsActivityPreferenceController.java"


# static fields
.field private static final KEY_BACKUP_SETTINGS:Ljava/lang/String; = "backup_settings"

.field private static final TAG:Ljava/lang/String; = "BackupSettingActivityPC"


# instance fields
.field private final mBackupManager:Landroid/app/backup/BackupManager;

.field private final mUm:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "backup_settings"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/oneplus/settings/backup/OPBackupSettingsActivityPreferenceController;->mUm:Landroid/os/UserManager;

    new-instance v0, Landroid/app/backup/BackupManager;

    invoke-direct {v0, p1}, Landroid/app/backup/BackupManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/settings/backup/OPBackupSettingsActivityPreferenceController;->mBackupManager:Landroid/app/backup/BackupManager;

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/backup/OPBackupSettingsActivityPreferenceController;->mUm:Landroid/os/UserManager;

    invoke-virtual {p0}, Landroid/os/UserManager;->isAdminUser()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isO2()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x3

    :goto_0
    return p0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/backup/OPBackupSettingsActivityPreferenceController;->mBackupManager:Landroid/app/backup/BackupManager;

    invoke-virtual {v0}, Landroid/app/backup/BackupManager;->isBackupEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v0, 0x7f120062

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v0, 0x7f120061

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    :goto_0
    return-object p0
.end method
