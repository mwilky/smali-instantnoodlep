.class public Lcom/android/settings/notification/ZenModeVoiceActivity;
.super Lcom/android/settings/utils/VoiceSettingsActivity;
.source "ZenModeVoiceActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/utils/VoiceSettingsActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onVoiceSettingInteraction(Landroid/content/Intent;)Z
    .locals 11

    const-string v0, "android.settings.extra.do_not_disturb_mode_enabled"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "ZenModeVoiceActivity"

    const/4 v3, 0x0

    if-eqz v1, :cond_b

    const/4 v1, -0x1

    const-string v4, "android.settings.extra.do_not_disturb_mode_minutes"

    invoke-virtual {p1, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    const/4 v0, 0x3

    const/4 v5, 0x0

    if-eqz p1, :cond_1

    if-lez v4, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    invoke-static {p0, v4, p1}, Landroid/service/notification/ZenModeConfig;->toTimeCondition(Landroid/content/Context;II)Landroid/service/notification/Condition;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v5

    :goto_0
    move-object v6, p1

    move p1, v0

    goto :goto_1

    :cond_1
    move p1, v3

    move-object v6, v5

    :goto_1
    if-eqz v6, :cond_2

    invoke-static {p0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v5

    iget-object v6, v6, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    invoke-virtual {v5, p1, v6, v2}, Landroid/app/NotificationManager;->setZenMode(ILandroid/net/Uri;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    invoke-static {p0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v6

    invoke-virtual {v6, p1, v5, v2}, Landroid/app/NotificationManager;->setZenMode(ILandroid/net/Uri;Ljava/lang/String;)V

    :goto_2
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    const/4 v6, 0x5

    invoke-virtual {v2, v6, v3, v5}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    :cond_3
    if-eqz p1, :cond_5

    if-eq p1, v0, :cond_4

    move v0, v1

    move v2, v0

    move v6, v2

    goto :goto_3

    :cond_4
    const v1, 0x7f121b2e

    const v0, 0x7f10005b

    const v2, 0x7f10005a

    const v6, 0x7f121b2d

    goto :goto_3

    :cond_5
    const v0, 0x7f121b2f

    move v2, v1

    move v6, v2

    move v1, v0

    move v0, v6

    :goto_3
    if-ltz v4, :cond_a

    if-nez p1, :cond_6

    goto :goto_5

    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const p1, 0xea60

    mul-int/2addr p1, v4

    int-to-long v9, p1

    add-long/2addr v7, v9

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    invoke-static {p0, p1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p1, "Hm"

    goto :goto_4

    :cond_7
    const-string p1, "hma"

    :goto_4
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v7, v8}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v7, 0x2

    const/16 v8, 0x3c

    if-ge v4, v8, :cond_8

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v3

    aput-object p1, v2, v5

    invoke-virtual {v1, v0, v4, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_6

    :cond_8
    rem-int/lit8 v0, v4, 0x3c

    if-eqz v0, :cond_9

    new-array v0, v5, [Ljava/lang/Object;

    aput-object p1, v0, v3

    invoke-virtual {v1, v6, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_6

    :cond_9
    div-int/2addr v4, v8

    new-array v0, v7, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v0, v3

    aput-object p1, v0, v5

    invoke-virtual {v1, v2, v4, v0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_6

    :cond_a
    :goto_5
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_6
    invoke-virtual {p0, p1}, Lcom/android/settings/utils/VoiceSettingsActivity;->notifySuccess(Ljava/lang/CharSequence;)V

    goto :goto_7

    :cond_b
    const-string p1, "Missing extra android.provider.Settings.EXTRA_DO_NOT_DISTURB_MODE_ENABLED"

    invoke-static {v2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_7
    return v3
.end method
