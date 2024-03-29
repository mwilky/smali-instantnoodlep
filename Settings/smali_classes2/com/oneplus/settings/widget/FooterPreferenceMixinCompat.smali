.class public Lcom/oneplus/settings/widget/FooterPreferenceMixinCompat;
.super Ljava/lang/Object;
.source "FooterPreferenceMixinCompat.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/SetPreferenceScreen;


# instance fields
.field private mFooterPreference:Lcom/oneplus/settings/widget/OPFooterPreference;

.field private final mFragment:Landroidx/preference/PreferenceFragmentCompat;


# direct methods
.method public constructor <init>(Landroidx/preference/PreferenceFragmentCompat;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oneplus/settings/widget/FooterPreferenceMixinCompat;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method


# virtual methods
.method public createFooterPreference()Lcom/oneplus/settings/widget/OPFooterPreference;
    .locals 3

    iget-object v0, p0, Lcom/oneplus/settings/widget/FooterPreferenceMixinCompat;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    invoke-virtual {v0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/widget/FooterPreferenceMixinCompat;->mFooterPreference:Lcom/oneplus/settings/widget/OPFooterPreference;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_0
    new-instance v1, Lcom/oneplus/settings/widget/OPFooterPreference;

    iget-object v2, p0, Lcom/oneplus/settings/widget/FooterPreferenceMixinCompat;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    invoke-virtual {v2}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/preference/PreferenceManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/oneplus/settings/widget/OPFooterPreference;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/oneplus/settings/widget/FooterPreferenceMixinCompat;->mFooterPreference:Lcom/oneplus/settings/widget/OPFooterPreference;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/oneplus/settings/widget/FooterPreferenceMixinCompat;->mFooterPreference:Lcom/oneplus/settings/widget/OPFooterPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :cond_1
    iget-object p0, p0, Lcom/oneplus/settings/widget/FooterPreferenceMixinCompat;->mFooterPreference:Lcom/oneplus/settings/widget/OPFooterPreference;

    return-object p0
.end method

.method public hasFooter()Z
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/widget/FooterPreferenceMixinCompat;->mFooterPreference:Lcom/oneplus/settings/widget/OPFooterPreference;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setPreferenceScreen(Landroidx/preference/PreferenceScreen;)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/widget/FooterPreferenceMixinCompat;->mFooterPreference:Lcom/oneplus/settings/widget/OPFooterPreference;

    if-eqz p0, :cond_0

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :cond_0
    return-void
.end method
