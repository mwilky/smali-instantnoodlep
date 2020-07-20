.class public Lcom/android/settings/deviceinfo/legal/WallpaperAttributionsPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "WallpaperAttributionsPreferenceController.java"


# static fields
.field private static final ONEPLUS_A5000:Ljava/lang/String; = "ONEPLUS A5000"

.field private static final ONEPLUS_A5010:Ljava/lang/String; = "ONEPLUS A5010"

.field private static final ONEPLUS_A6000:Ljava/lang/String; = "ONEPLUS A6000"

.field private static final ONEPLUS_A6003:Ljava/lang/String; = "ONEPLUS A6003"

.field private static final ONEPLUS_WALLPAPER_ATTRIBUTIONS_STARWAR_VALUES:Ljava/lang/String; = "\u00a9 &amp;\u2122 Lucasfilm Ltd."


# instance fields
.field private KEY:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mPreference:Landroidx/preference/Preference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/settings/deviceinfo/legal/WallpaperAttributionsPreferenceController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/deviceinfo/legal/WallpaperAttributionsPreferenceController;->KEY:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/legal/WallpaperAttributionsPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/deviceinfo/legal/WallpaperAttributionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v0, "ONEPLUS A5000"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/deviceinfo/legal/WallpaperAttributionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    const v0, 0x7f1210d4

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(I)V

    goto/16 :goto_2

    :cond_0
    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v0, "ONEPLUS A5010"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/deviceinfo/legal/WallpaperAttributionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    const v0, 0x7f1210d7

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_2

    :cond_1
    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v0, "ONEPLUS A6000"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    const v0, 0x7f1210d3

    if-nez p1, :cond_6

    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "ONEPLUS A6003"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/legal/WallpaperAttributionsPreferenceController;->mContext:Landroid/content/Context;

    const v2, 0x7f120e86

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5

    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/legal/WallpaperAttributionsPreferenceController;->mContext:Landroid/content/Context;

    const v2, 0x7f120e87

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSM8150Products()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/settings/deviceinfo/legal/WallpaperAttributionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    const v0, 0x7f1210d5

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_2

    :cond_4
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSM8250Products()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/android/settings/deviceinfo/legal/WallpaperAttributionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    const v0, 0x7f1210d6

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_2

    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/android/settings/deviceinfo/legal/WallpaperAttributionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_2

    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/android/settings/deviceinfo/legal/WallpaperAttributionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(I)V

    :cond_7
    :goto_2
    sget-object p1, Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;->SW:Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;

    invoke-static {}, Lcom/oneplus/custom/utils/OpCustomizeSettings;->getCustomType()Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p0, p0, Lcom/android/settings/deviceinfo/legal/WallpaperAttributionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    const-string p1, "\u00a9 &amp;\u2122 Lucasfilm Ltd."

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_8
    sget-object p1, Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;->AVG:Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;

    invoke-static {}, Lcom/oneplus/custom/utils/OpCustomizeSettings;->getCustomType()Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p0, p0, Lcom/android/settings/deviceinfo/legal/WallpaperAttributionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    const p1, 0x7f1210d8

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(I)V

    :cond_9
    :goto_3
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    iget-object p0, p0, Lcom/android/settings/deviceinfo/legal/WallpaperAttributionsPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f05004a

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x3

    :goto_0
    return p0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/deviceinfo/legal/WallpaperAttributionsPreferenceController;->KEY:Ljava/lang/String;

    return-object p0
.end method
