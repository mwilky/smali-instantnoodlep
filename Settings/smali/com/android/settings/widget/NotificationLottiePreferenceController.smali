.class public Lcom/android/settings/widget/NotificationLottiePreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "NotificationLottiePreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;
.implements Lcom/android/settingslib/core/lifecycle/events/OnDestroy;


# instance fields
.field private mLottiePreference:Lcom/android/settings/widget/NotificationLottiePreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/NotificationLottiePreference;

    iput-object p1, p0, Lcom/android/settings/widget/NotificationLottiePreferenceController;->mLottiePreference:Lcom/android/settings/widget/NotificationLottiePreference;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onDestroy()V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/widget/NotificationLottiePreferenceController;->mLottiePreference:Lcom/android/settings/widget/NotificationLottiePreference;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/widget/NotificationLottiePreference;->releaseAnimation()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/widget/NotificationLottiePreferenceController;->mLottiePreference:Lcom/android/settings/widget/NotificationLottiePreference;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/widget/NotificationLottiePreference;->stopAnimation()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/widget/NotificationLottiePreferenceController;->mLottiePreference:Lcom/android/settings/widget/NotificationLottiePreference;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/widget/NotificationLottiePreference;->startAnimation()V

    :cond_0
    return-void
.end method
