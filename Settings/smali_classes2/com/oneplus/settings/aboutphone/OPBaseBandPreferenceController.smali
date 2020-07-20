.class public Lcom/oneplus/settings/aboutphone/OPBaseBandPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "OPBaseBandPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;


# static fields
.field static final BASEBAND_PROPERTY:Ljava/lang/String; = "gsm.version.baseband"

.field private static final KEY_BASEBAND_VERSION:Ljava/lang/String; = "baseband_version"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPreference:Landroidx/preference/Preference;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "baseband_version"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oneplus/settings/aboutphone/OPBaseBandPreferenceController;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/oneplus/settings/aboutphone/OPBaseBandPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/aboutphone/OPBaseBandPreferenceController;->mPreference:Landroidx/preference/Preference;

    iget-object p1, p0, Lcom/oneplus/settings/aboutphone/OPBaseBandPreferenceController;->mPreference:Landroidx/preference/Preference;

    iget-object p0, p0, Lcom/oneplus/settings/aboutphone/OPBaseBandPreferenceController;->mContext:Landroid/content/Context;

    const v0, 0x7f1205f3

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "gsm.version.baseband"

    invoke-static {v0, p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "baseband_version"

    return-object p0
.end method
