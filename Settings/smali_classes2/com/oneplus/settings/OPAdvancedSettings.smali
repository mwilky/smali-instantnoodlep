.class public Lcom/oneplus/settings/OPAdvancedSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "OPAdvancedSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# static fields
.field private static final OVERLAY_INFO_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/content/om/OverlayInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

.field private static isSupportReadingMode:Z


# instance fields
.field private mContentObserver:Landroid/database/ContentObserver;

.field private mContext:Landroid/content/Context;

.field private mDisplaySizeAdaptionPreference:Landroidx/preference/Preference;

.field private mFrontCameraFullscreenAppPreference:Landroidx/preference/Preference;

.field private mFrontCameraModePreference:Landroidx/preference/Preference;

.field private mNotchModeAppPreference:Landroidx/preference/Preference;

.field private mNotchModePreference:Landroidx/preference/Preference;

.field private mOverlayManager:Landroid/content/om/IOverlayManager;

.field private mScreenColorModePreference:Landroidx/preference/Preference;

.field private mScreenRefreshRate:Landroidx/preference/Preference;

.field private mScreenResolutionAdjust:Landroidx/preference/Preference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/oneplus/settings/-$$Lambda$OPAdvancedSettings$7du_tj1b_8sZ0NW6ptIJhCKfhQ0;->INSTANCE:Lcom/oneplus/settings/-$$Lambda$OPAdvancedSettings$7du_tj1b_8sZ0NW6ptIJhCKfhQ0;

    invoke-static {v0}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v0

    sput-object v0, Lcom/oneplus/settings/OPAdvancedSettings;->OVERLAY_INFO_COMPARATOR:Ljava/util/Comparator;

    new-instance v0, Lcom/oneplus/settings/OPAdvancedSettings$2;

    invoke-direct {v0}, Lcom/oneplus/settings/OPAdvancedSettings$2;-><init>()V

    sput-object v0, Lcom/oneplus/settings/OPAdvancedSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Lcom/oneplus/settings/OPAdvancedSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/oneplus/settings/OPAdvancedSettings$1;-><init>(Lcom/oneplus/settings/OPAdvancedSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/oneplus/settings/OPAdvancedSettings;->mContentObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/OPAdvancedSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/settings/OPAdvancedSettings;->updateState()V

    return-void
.end method

.method private getCurrenMode()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "package_device_default"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    iget-object p0, p0, Lcom/oneplus/settings/OPAdvancedSettings;->mOverlayManager:Landroid/content/om/IOverlayManager;

    const-string v3, "android"

    const/4 v4, 0x0

    invoke-interface {p0, v3, v4}, Landroid/content/om/IOverlayManager;->getOverlayInfosForTarget(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/om/OverlayInfo;

    const-string v4, "com.android.internal.display_cutout_emulation"

    iget-object v5, v3, Landroid/content/om/OverlayInfo;->category:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/oneplus/settings/OPAdvancedSettings;->OVERLAY_INFO_COMPARATOR:Ljava/util/Comparator;

    invoke-interface {v2, p0}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/om/OverlayInfo;

    iget-object v3, v2, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Landroid/content/om/OverlayInfo;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_1

    :cond_3
    return-object v1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method static synthetic lambda$static$0(Landroid/content/om/OverlayInfo;)I
    .locals 0

    iget p0, p0, Landroid/content/om/OverlayInfo;->priority:I

    return p0
.end method

.method private updateScreenColorModePreference()V
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/oneplus/settings/OPAdvancedSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x2

    const/4 v2, 0x1

    const-string v3, "screen_color_mode_settings_value"

    invoke-static {v0, v3, v2, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportMMDisplayColorScreenMode()Z

    move-result v1

    const/4 v3, 0x3

    if-eqz v1, :cond_2

    if-ne v2, v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/OPAdvancedSettings;->mScreenColorModePreference:Landroidx/preference/Preference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f1213ae

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_0
    if-ne v3, v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/settings/OPAdvancedSettings;->mScreenColorModePreference:Landroidx/preference/Preference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f1213ac

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_1
    const/16 v1, 0xa

    if-ne v1, v0, :cond_8

    iget-object v0, p0, Lcom/oneplus/settings/OPAdvancedSettings;->mScreenColorModePreference:Landroidx/preference/Preference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f120f9d

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_2
    if-ne v2, v0, :cond_3

    iget-object v0, p0, Lcom/oneplus/settings/OPAdvancedSettings;->mScreenColorModePreference:Landroidx/preference/Preference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f120fa5

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x2

    if-ne v1, v0, :cond_4

    iget-object v0, p0, Lcom/oneplus/settings/OPAdvancedSettings;->mScreenColorModePreference:Landroidx/preference/Preference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f120fa3

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_4
    if-ne v3, v0, :cond_5

    iget-object v0, p0, Lcom/oneplus/settings/OPAdvancedSettings;->mScreenColorModePreference:Landroidx/preference/Preference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f120fa6

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_5
    const/4 v1, 0x4

    if-ne v1, v0, :cond_6

    iget-object v0, p0, Lcom/oneplus/settings/OPAdvancedSettings;->mScreenColorModePreference:Landroidx/preference/Preference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f120fa4

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_6
    const/4 v1, 0x5

    if-ne v1, v0, :cond_7

    iget-object v0, p0, Lcom/oneplus/settings/OPAdvancedSettings;->mScreenColorModePreference:Landroidx/preference/Preference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f120c41

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_7
    const/4 v1, 0x6

    if-ne v1, v0, :cond_8

    iget-object v0, p0, Lcom/oneplus/settings/OPAdvancedSettings;->mScreenColorModePreference:Landroidx/preference/Preference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f120fa9

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_8
    :goto_0
    return-void
.end method

.method private updateState()V
    .locals 6

    iget-object v0, p0, Lcom/oneplus/settings/OPAdvancedSettings;->mScreenColorModePreference:Landroidx/preference/Preference;

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, -0x2

    const/4 v3, 0x0

    const-string v4, "night_display_activated"

    invoke-static {v0, v4, v3, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "reading_mode_status"

    invoke-static {v4, v5, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "accessibility_display_grayscale_enabled"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_2

    move v4, v1

    goto :goto_2

    :cond_2
    move v4, v3

    :goto_2
    if-eqz v4, :cond_3

    iget-object v0, p0, Lcom/oneplus/settings/OPAdvancedSettings;->mScreenColorModePreference:Landroidx/preference/Preference;

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    invoke-direct {p0}, Lcom/oneplus/settings/OPAdvancedSettings;->updateScreenColorModePreference()V

    goto :goto_3

    :cond_3
    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oneplus/settings/OPAdvancedSettings;->mScreenColorModePreference:Landroidx/preference/Preference;

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/OPAdvancedSettings;->mScreenColorModePreference:Landroidx/preference/Preference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f120fab

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_4
    if-eqz v2, :cond_5

    sget-boolean v0, Lcom/oneplus/settings/OPAdvancedSettings;->isSupportReadingMode:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/oneplus/settings/OPAdvancedSettings;->mScreenColorModePreference:Landroidx/preference/Preference;

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/OPAdvancedSettings;->mScreenColorModePreference:Landroidx/preference/Preference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f120fa8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_5
    invoke-direct {p0}, Lcom/oneplus/settings/OPAdvancedSettings;->updateScreenColorModePreference()V

    iget-object v0, p0, Lcom/oneplus/settings/OPAdvancedSettings;->mScreenColorModePreference:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_6
    :goto_3
    iget-object v0, p0, Lcom/oneplus/settings/OPAdvancedSettings;->mScreenResolutionAdjust:Landroidx/preference/Preference;

    const/4 v2, 0x2

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/oneplus/settings/OPAdvancedSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "oneplus_screen_resolution_adjust"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const v3, 0x7f120fbb

    if-ne v0, v1, :cond_7

    iget-object v1, p0, Lcom/oneplus/settings/OPAdvancedSettings;->mScreenResolutionAdjust:Landroidx/preference/Preference;

    const v4, 0x7f120fb6

    invoke-virtual {v1, v4}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_4

    :cond_7
    if-nez v0, :cond_8

    iget-object v1, p0, Lcom/oneplus/settings/OPAdvancedSettings;->mScreenResolutionAdjust:Landroidx/preference/Preference;

    invoke-virtual {v1, v3}, Landroidx/preference/Preference;->setSummary(I)V

    :cond_8
    :goto_4
    if-ne v0, v2, :cond_9

    iget-object v0, p0, Lcom/oneplus/settings/OPAdvancedSettings;->mScreenResolutionAdjust:Landroidx/preference/Preference;

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setSummary(I)V

    :cond_9
    iget-object v0, p0, Lcom/oneplus/settings/OPAdvancedSettings;->mScreenRefreshRate:Landroidx/preference/Preference;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/oneplus/settings/OPAdvancedSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oneplus_screen_refresh_rate"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/oneplus/settings/OPAdvancedSettings;->mScreenRefreshRate:Landroidx/preference/Preference;

    if-ne v0, v2, :cond_b

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportHighVsync()Z

    move-result v0

    if-eqz v0, :cond_a

    const v0, 0x7f120fb3

    goto :goto_5

    :cond_a
    const v0, 0x7f120fb1

    goto :goto_5

    :cond_b
    const v0, 0x7f120faf

    :goto_5
    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setSummary(I)V

    :cond_c
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportScreenCutting()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/oneplus/settings/OPAdvancedSettings;->mNotchModeAppPreference:Landroidx/preference/Preference;

    const-string v1, "package_device_default"

    if-eqz v0, :cond_d

    invoke-direct {p0}, Lcom/oneplus/settings/OPAdvancedSettings;->getCurrenMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_d
    iget-object v0, p0, Lcom/oneplus/settings/OPAdvancedSettings;->mFrontCameraFullscreenAppPreference:Landroidx/preference/Preference;

    if-eqz v0, :cond_e

    invoke-direct {p0}, Lcom/oneplus/settings/OPAdvancedSettings;->getCurrenMode()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_e
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x270f

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/OPAdvancedSettings;->mContext:Landroid/content/Context;

    const p1, 0x7f160083

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    const-string p1, "overlay"

    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/content/om/IOverlayManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/om/IOverlayManager;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/OPAdvancedSettings;->mOverlayManager:Landroid/content/om/IOverlayManager;

    const-string p1, "screen_color_mode"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/OPAdvancedSettings;->mScreenColorModePreference:Landroidx/preference/Preference;

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isGuestMode()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oneplus/settings/OPAdvancedSettings;->mScreenColorModePreference:Landroidx/preference/Preference;

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_0
    const-string p1, "oneplus_screen_resolution_adjust"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/OPAdvancedSettings;->mScreenResolutionAdjust:Landroidx/preference/Preference;

    iget-object p1, p0, Lcom/oneplus/settings/OPAdvancedSettings;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/oneplus/settings/utils/OPUtils;->isSupportMultiScreenResolution(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isGuestMode()Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    iget-object p1, p0, Lcom/oneplus/settings/OPAdvancedSettings;->mScreenResolutionAdjust:Landroidx/preference/Preference;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_2
    const-string p1, "oneplus_screen_refresh_rate"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/OPAdvancedSettings;->mScreenRefreshRate:Landroidx/preference/Preference;

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportScreenRefreshRate()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/oneplus/settings/OPAdvancedSettings;->mScreenRefreshRate:Landroidx/preference/Preference;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_3
    const-string p1, "display_size_adaption"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/OPAdvancedSettings;->mDisplaySizeAdaptionPreference:Landroidx/preference/Preference;

    iget-object p1, p0, Lcom/oneplus/settings/OPAdvancedSettings;->mDisplaySizeAdaptionPreference:Landroidx/preference/Preference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    const-string p1, "oneplus_front_camera_display_guide"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/OPAdvancedSettings;->mFrontCameraModePreference:Landroidx/preference/Preference;

    const-string p1, "oneplus_front_camera_fullscreen_app"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/OPAdvancedSettings;->mFrontCameraFullscreenAppPreference:Landroidx/preference/Preference;

    iget-object p1, p0, Lcom/oneplus/settings/OPAdvancedSettings;->mFrontCameraFullscreenAppPreference:Landroidx/preference/Preference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    const-string p1, "oneplus_notch_display_guide"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/OPAdvancedSettings;->mNotchModePreference:Landroidx/preference/Preference;

    const-string p1, "oneplus_notch_fullscreen_app"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/OPAdvancedSettings;->mNotchModeAppPreference:Landroidx/preference/Preference;

    iget-object p1, p0, Lcom/oneplus/settings/OPAdvancedSettings;->mNotchModeAppPreference:Landroidx/preference/Preference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportScreenCutting()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/oneplus/settings/OPAdvancedSettings;->mFrontCameraModePreference:Landroidx/preference/Preference;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/OPAdvancedSettings;->mFrontCameraFullscreenAppPreference:Landroidx/preference/Preference;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/OPAdvancedSettings;->mNotchModePreference:Landroidx/preference/Preference;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/OPAdvancedSettings;->mNotchModeAppPreference:Landroidx/preference/Preference;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportScreenDisplayAdaption()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportAppsDisplayInFullscreen()Z

    move-result p1

    if-nez p1, :cond_7

    :cond_4
    iget-object p1, p0, Lcom/oneplus/settings/OPAdvancedSettings;->mDisplaySizeAdaptionPreference:Landroidx/preference/Preference;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lcom/oneplus/settings/OPAdvancedSettings;->mDisplaySizeAdaptionPreference:Landroidx/preference/Preference;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportHolePunchFrontCam()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/oneplus/settings/OPAdvancedSettings;->mNotchModePreference:Landroidx/preference/Preference;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/OPAdvancedSettings;->mNotchModeAppPreference:Landroidx/preference/Preference;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_0

    :cond_6
    iget-object p1, p0, Lcom/oneplus/settings/OPAdvancedSettings;->mFrontCameraModePreference:Landroidx/preference/Preference;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/OPAdvancedSettings;->mFrontCameraFullscreenAppPreference:Landroidx/preference/Preference;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_7
    :goto_0
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isGuestMode()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/oneplus/settings/OPAdvancedSettings;->mNotchModePreference:Landroidx/preference/Preference;

    if-eqz p1, :cond_8

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_8
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isGuestMode()Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/oneplus/settings/OPAdvancedSettings;->mFrontCameraModePreference:Landroidx/preference/Preference;

    if-eqz p1, :cond_9

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_9
    iget-object p1, p0, Lcom/oneplus/settings/OPAdvancedSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v0, "oem.read_mode.support"

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    sput-boolean p1, Lcom/oneplus/settings/OPAdvancedSettings;->isSupportReadingMode:Z

    invoke-direct {p0}, Lcom/oneplus/settings/OPAdvancedSettings;->updateState()V

    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onPause()V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/oneplus/settings/OPAdvancedSettings;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 2

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "display_size_adaption"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "oneplus_notch_fullscreen_app"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "oneplus_front_camera_fullscreen_app"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p1, 0x0

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.action.DISPLAYSIZEADAPTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string p1, "classname"

    const-class v1, Lcom/android/settings/Settings$DisplaySizeAdaptionAppListActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-object p1, v0

    :catch_1
    const-string p0, "No activity found for "

    const-string v0, "OPAdvancedSettings"

    invoke-static {p0, p1, v0}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline35(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public onResume()V
    .locals 6

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-direct {p0}, Lcom/oneplus/settings/OPAdvancedSettings;->updateState()V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/16 v1, 0xc

    const-string v2, "accessibility_display_daltonizer_enabled"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "accessibility_display_inversion_enabled"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "accessibility_display_grayscale_enabled"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_2

    move v4, v2

    goto :goto_2

    :cond_2
    move v4, v1

    :goto_2
    if-nez v0, :cond_3

    if-nez v3, :cond_3

    if-eqz v4, :cond_5

    :cond_3
    iget-object v5, p0, Lcom/oneplus/settings/OPAdvancedSettings;->mScreenColorModePreference:Landroidx/preference/Preference;

    if-eqz v5, :cond_5

    if-nez v0, :cond_4

    if-nez v3, :cond_4

    if-nez v4, :cond_4

    move v1, v2

    :cond_4
    invoke-virtual {v5, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "night_display_activated"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object p0, p0, Lcom/oneplus/settings/OPAdvancedSettings;->mContentObserver:Landroid/database/ContentObserver;

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method
