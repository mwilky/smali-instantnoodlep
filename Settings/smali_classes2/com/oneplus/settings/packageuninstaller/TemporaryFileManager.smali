.class public Lcom/oneplus/settings/packageuninstaller/TemporaryFileManager;
.super Landroid/content/BroadcastReceiver;
.source "TemporaryFileManager.java"


# direct methods
.method public static getUninstallStateFile(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getNoBackupFilesDir()Ljava/io/File;

    move-result-object p0

    const-string v1, "uninstall_results.xml"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method
