.class public Lcom/oneplus/settings/OPRebootWipeUserdata;
.super Ljava/lang/Object;
.source "OPRebootWipeUserdata.java"


# static fields
.field private static final COMMAND_FILE:Ljava/io/File;

.field private static final COMMAND_FILE_OP2:Ljava/io/File;

.field private static final LOG_FILE:Ljava/io/File;

.field private static final LOG_FILE_OP2:Ljava/io/File;

.field private static final RECOVERY_DIR:Ljava/io/File;

.field private static final RECOVERY_DIR_OP2:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/io/File;

    const-string v1, "/cache/recovery"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/oneplus/settings/OPRebootWipeUserdata;->RECOVERY_DIR:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/oneplus/settings/OPRebootWipeUserdata;->RECOVERY_DIR:Ljava/io/File;

    const-string v2, "command"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/oneplus/settings/OPRebootWipeUserdata;->COMMAND_FILE:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/oneplus/settings/OPRebootWipeUserdata;->RECOVERY_DIR:Ljava/io/File;

    const-string v3, "log"

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/oneplus/settings/OPRebootWipeUserdata;->LOG_FILE:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    const-string v1, "/op2/recovery"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/oneplus/settings/OPRebootWipeUserdata;->RECOVERY_DIR_OP2:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/oneplus/settings/OPRebootWipeUserdata;->RECOVERY_DIR_OP2:Ljava/io/File;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/oneplus/settings/OPRebootWipeUserdata;->COMMAND_FILE_OP2:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/oneplus/settings/OPRebootWipeUserdata;->RECOVERY_DIR_OP2:Ljava/io/File;

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/oneplus/settings/OPRebootWipeUserdata;->LOG_FILE_OP2:Ljava/io/File;

    return-void
.end method

.method public static rebootWipeUserData(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string p1, "--shutdown_after"

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    const-string v0, "--reason="

    invoke-static {v0}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline23(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3f

    invoke-virtual {p2, v2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p2

    const/16 v3, 0xa

    invoke-virtual {p2, v3, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    const-string p2, "--locale="

    invoke-static {p2}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline23(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "--password="

    invoke-static {v1, p4}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline17(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string v3, "--resetTime="

    invoke-static {v3}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline23(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/String;

    aput-object p1, v3, v2

    const/4 p1, 0x1

    aput-object p3, v3, p1

    const/4 p1, 0x2

    aput-object v0, v3, p1

    const/4 p1, 0x3

    aput-object p2, v3, p1

    const/4 p1, 0x4

    aput-object p4, v3, p1

    const/4 p1, 0x5

    aput-object v1, v3, p1

    const/4 p1, 0x6

    const-string p2, "--resetPackage=com.android.settings"

    aput-object p2, v3, p1

    const-string p1, ""

    const-string p2, "OPRebootWipeUserdata"

    const-string p3, "bootCommand start"

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportOP2Recovey()Z

    move-result p3

    if-eqz p3, :cond_2

    sget-object p3, Lcom/oneplus/settings/OPRebootWipeUserdata;->RECOVERY_DIR_OP2:Ljava/io/File;

    invoke-virtual {p3}, Ljava/io/File;->mkdirs()Z

    sget-object p3, Lcom/oneplus/settings/OPRebootWipeUserdata;->COMMAND_FILE_OP2:Ljava/io/File;

    invoke-virtual {p3}, Ljava/io/File;->delete()Z

    sget-object p3, Lcom/oneplus/settings/OPRebootWipeUserdata;->LOG_FILE_OP2:Ljava/io/File;

    invoke-virtual {p3}, Ljava/io/File;->delete()Z

    new-instance p3, Ljava/io/FileWriter;

    sget-object p4, Lcom/oneplus/settings/OPRebootWipeUserdata;->COMMAND_FILE_OP2:Ljava/io/File;

    invoke-direct {p3, p4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    goto :goto_1

    :cond_2
    sget-object p3, Lcom/oneplus/settings/OPRebootWipeUserdata;->RECOVERY_DIR:Ljava/io/File;

    invoke-virtual {p3}, Ljava/io/File;->mkdirs()Z

    sget-object p3, Lcom/oneplus/settings/OPRebootWipeUserdata;->COMMAND_FILE:Ljava/io/File;

    invoke-virtual {p3}, Ljava/io/File;->delete()Z

    sget-object p3, Lcom/oneplus/settings/OPRebootWipeUserdata;->LOG_FILE:Ljava/io/File;

    invoke-virtual {p3}, Ljava/io/File;->delete()Z

    new-instance p3, Ljava/io/FileWriter;

    sget-object p4, Lcom/oneplus/settings/OPRebootWipeUserdata;->COMMAND_FILE:Ljava/io/File;

    invoke-direct {p3, p4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    :goto_1
    :try_start_0
    array-length p4, v3

    :goto_2
    if-ge v2, p4, :cond_4

    aget-object v0, v3, v2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p3, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    const-string v0, "\n"

    invoke-virtual {p3, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {p3}, Ljava/io/FileWriter;->close()V

    :try_start_1
    const-string p3, "mount"

    invoke-static {p3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p3

    const-string p4, "bootCommand get mount Service"

    invoke-static {p2, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p3}, Landroid/os/storage/IStorageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageManager;

    move-result-object p3

    const-string p4, "SystemLocale"

    invoke-interface {p3, p4, p1}, Landroid/os/storage/IStorageManager;->setField(Ljava/lang/String;Ljava/lang/String;)V

    const-string p4, "bootCommand setField StorageManager.SYSTEM_LOCALE_KEY"

    invoke-static {p2, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p4, "PatternVisible"

    invoke-interface {p3, p4, p1}, Landroid/os/storage/IStorageManager;->setField(Ljava/lang/String;Ljava/lang/String;)V

    const-string p4, "bootCommand setField StorageManager.PATTERN_VISIBLE_KEY"

    invoke-static {p2, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p4, "PasswordVisible"

    invoke-interface {p3, p4, p1}, Landroid/os/storage/IStorageManager;->setField(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "bootCommand setField StorageManager.PASSWORD_VISIBLE_KEY"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_3
    const-string p1, "power"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    const-string p1, "recovery"

    invoke-virtual {p0, p1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    new-instance p0, Ljava/io/IOException;

    const-string p1, "Reboot failed (no permissions?)"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    invoke-virtual {p3}, Ljava/io/FileWriter;->close()V

    throw p0
.end method
