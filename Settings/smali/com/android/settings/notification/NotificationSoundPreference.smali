.class public Lcom/android/settings/notification/NotificationSoundPreference;
.super Lcom/android/settings/RingtonePreference;
.source "NotificationSoundPreference.java"


# instance fields
.field private mRingtone:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/settings/RingtonePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Landroid/content/Intent;

    const-class v0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;

    invoke-direct {p2, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 0

    if-eqz p3, :cond_0

    const-string p1, "android.intent.extra.ringtone.PICKED_URI"

    invoke-virtual {p3, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lcom/android/settings/notification/NotificationSoundPreference;->setRingtone(Landroid/net/Uri;)V

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method protected onRestoreRingtone()Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/notification/NotificationSoundPreference;->mRingtone:Landroid/net/Uri;

    return-object p0
.end method

.method public setRingtone(Landroid/net/Uri;)V
    .locals 1

    iput-object p1, p0, Lcom/android/settings/notification/NotificationSoundPreference;->mRingtone:Landroid/net/Uri;

    const-string p1, "\u00a0"

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/settings/notification/NotificationSoundPreference;->mRingtone:Landroid/net/Uri;

    new-instance v0, Lcom/android/settings/notification/NotificationSoundPreference$1;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/notification/NotificationSoundPreference$1;-><init>(Lcom/android/settings/notification/NotificationSoundPreference;Landroid/net/Uri;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
