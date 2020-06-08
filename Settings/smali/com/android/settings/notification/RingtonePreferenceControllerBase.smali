.class public abstract Lcom/android/settings/notification/RingtonePreferenceControllerBase;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "RingtonePreferenceControllerBase.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public abstract getRingtoneType()I
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public synthetic lambda$updateState$0$RingtonePreferenceControllerBase(Landroidx/preference/Preference;)V
    .locals 11

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/settings/notification/RingtonePreferenceControllerBase;->getRingtoneType()I

    move-result v1

    invoke-static {v0, v1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto/16 :goto_8

    :cond_0
    iget-object v8, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/settings/notification/RingtonePreferenceControllerBase;->getRingtoneType()I

    move-result p0

    const-string v9, "RingtonePreferenceControllerBase"

    const-string v2, "RingtonePreferenceControllerBase start getLocatRingtoneTitle"

    invoke-static {v9, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Landroid/media/RingtoneManager;->isDefault(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_8

    :cond_1
    :try_start_0
    invoke-static {v8, v0, p0}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->isSystemRingtone(Landroid/content/Context;Landroid/net/Uri;I)Z

    move-result v2
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-string v3, "mime_type"

    const-string v4, "_data"

    const-string v10, "title"

    if-eqz v2, :cond_2

    :try_start_1
    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    filled-new-array {v10, v4, v3}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, v0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    goto :goto_0

    :cond_2
    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "_display_name"

    filled-new-array {v5, v4, v3, v10}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, v0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_0
    if-eqz v2, :cond_4

    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x0

    invoke-static {v8, v0, v2, p0, v3}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->updateRingtoneForInternal(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;II)Landroid/net/Uri;

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/oneplus/settings/utils/OPUtils;->getFileNameNoEx(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_3
    move-object v1, p0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_8

    :catch_0
    move-object v1, p0

    goto :goto_1

    :catch_1
    move-object v1, p0

    goto :goto_2

    :catchall_0
    move-exception p0

    move-object v1, v2

    goto :goto_3

    :catch_2
    :goto_1
    move-object p0, v1

    move-object v1, v2

    goto :goto_4

    :catch_3
    :goto_2
    move-object p0, v1

    move-object v1, v2

    goto :goto_5

    :cond_4
    if-eqz v2, :cond_7

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_7

    :catchall_1
    move-exception p0

    :goto_3
    if-eqz v1, :cond_5

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    throw p0

    :catch_4
    move-object p0, v1

    :goto_4
    if-eqz v1, :cond_6

    goto :goto_6

    :catch_5
    move-object p0, v1

    :goto_5
    if-eqz v1, :cond_6

    :goto_6
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_6
    move-object v1, p0

    :cond_7
    :goto_7
    const-string p0, "RingtonePreferenceControllerBase getLocatRingtoneTitle end"

    invoke-static {v9, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_8
    if-eqz v1, :cond_8

    new-instance p0, Lcom/android/settings/notification/-$$Lambda$RingtonePreferenceControllerBase$DGmnmcDCcHzdJN6wPwVZkSTCfk0;

    invoke-direct {p0, p1, v1}, Lcom/android/settings/notification/-$$Lambda$RingtonePreferenceControllerBase$DGmnmcDCcHzdJN6wPwVZkSTCfk0;-><init>(Landroidx/preference/Preference;Ljava/lang/CharSequence;)V

    invoke-static {p0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    goto :goto_9

    :cond_8
    new-instance p0, Lcom/android/settings/notification/-$$Lambda$RingtonePreferenceControllerBase$gFsZQNi0jHi_HOuyL6S9nWK-FtM;

    invoke-direct {p0, p1}, Lcom/android/settings/notification/-$$Lambda$RingtonePreferenceControllerBase$gFsZQNi0jHi_HOuyL6S9nWK-FtM;-><init>(Landroidx/preference/Preference;)V

    invoke-static {p0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    :goto_9
    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    new-instance v0, Lcom/android/settings/notification/-$$Lambda$RingtonePreferenceControllerBase$Y95tp89vC8fk0DlynP4A12MKPAU;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/notification/-$$Lambda$RingtonePreferenceControllerBase$Y95tp89vC8fk0DlynP4A12MKPAU;-><init>(Lcom/android/settings/notification/RingtonePreferenceControllerBase;Landroidx/preference/Preference;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method
