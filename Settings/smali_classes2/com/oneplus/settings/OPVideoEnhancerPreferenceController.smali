.class public Lcom/oneplus/settings/OPVideoEnhancerPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "OPVideoEnhancerPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;
.implements Lcom/android/settingslib/core/lifecycle/events/OnDestroy;


# static fields
.field static final KEY_VIDEO_SOURCE:Ljava/lang/String; = "video_source"


# instance fields
.field private mVideoPreference:Lcom/oneplus/settings/widget/OPVideoPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1

    const-string v0, "video_source"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "video_source"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/oneplus/settings/widget/OPVideoPreference;

    iput-object p1, p0, Lcom/oneplus/settings/OPVideoEnhancerPreferenceController;->mVideoPreference:Lcom/oneplus/settings/widget/OPVideoPreference;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportVideoEnhancer()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x3

    :goto_0
    return p0
.end method

.method public onDestroy()V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/OPVideoEnhancerPreferenceController;->mVideoPreference:Lcom/oneplus/settings/widget/OPVideoPreference;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/settings/widget/OPVideoPreference;->release()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/OPVideoEnhancerPreferenceController;->mVideoPreference:Lcom/oneplus/settings/widget/OPVideoPreference;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/settings/widget/OPVideoPreference;->setVideoPaused()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/OPVideoEnhancerPreferenceController;->mVideoPreference:Lcom/oneplus/settings/widget/OPVideoPreference;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/settings/widget/OPVideoPreference;->setVideoResume()V

    :cond_0
    return-void
.end method
