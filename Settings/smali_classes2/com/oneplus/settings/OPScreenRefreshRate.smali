.class public Lcom/oneplus/settings/OPScreenRefreshRate;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "OPScreenRefreshRate.java"

# interfaces
.implements Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;
.implements Lcom/android/settings/search/Indexable;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field private m60HzMode:Lcom/android/settings/ui/RadioButtonPreference;

.field private mAutoMode:Lcom/android/settings/ui/RadioButtonPreference;

.field private mContext:Landroid/content/Context;

.field private mEnterValue:I

.field private mFooterPreference:Lcom/oneplus/settings/widget/OPFooterPreference;

.field private mHandler:Landroid/os/Handler;

.field private mHighVsyncMode:Lcom/android/settings/ui/RadioButtonPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/oneplus/settings/OPScreenRefreshRate$2;

    invoke-direct {v0}, Lcom/oneplus/settings/OPScreenRefreshRate$2;-><init>()V

    sput-object v0, Lcom/oneplus/settings/OPScreenRefreshRate;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/OPScreenRefreshRate;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/OPScreenRefreshRate;)Lcom/android/settings/ui/RadioButtonPreference;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/OPScreenRefreshRate;->mAutoMode:Lcom/android/settings/ui/RadioButtonPreference;

    return-object p0
.end method

.method static synthetic access$100(Lcom/oneplus/settings/OPScreenRefreshRate;)Lcom/android/settings/ui/RadioButtonPreference;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/OPScreenRefreshRate;->m60HzMode:Lcom/android/settings/ui/RadioButtonPreference;

    return-object p0
.end method

.method static synthetic access$200(Lcom/oneplus/settings/OPScreenRefreshRate;)Lcom/android/settings/ui/RadioButtonPreference;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/OPScreenRefreshRate;->mHighVsyncMode:Lcom/android/settings/ui/RadioButtonPreference;

    return-object p0
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x270f

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f1600c0

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    sget-object p1, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    iput-object p1, p0, Lcom/oneplus/settings/OPScreenRefreshRate;->mContext:Landroid/content/Context;

    const-string p1, "op_auto_mode"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/ui/RadioButtonPreference;

    iput-object p1, p0, Lcom/oneplus/settings/OPScreenRefreshRate;->mAutoMode:Lcom/android/settings/ui/RadioButtonPreference;

    const-string p1, "op_60hz_mode"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/ui/RadioButtonPreference;

    iput-object p1, p0, Lcom/oneplus/settings/OPScreenRefreshRate;->m60HzMode:Lcom/android/settings/ui/RadioButtonPreference;

    const-string p1, "high_vsync_mode"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/ui/RadioButtonPreference;

    iput-object p1, p0, Lcom/oneplus/settings/OPScreenRefreshRate;->mHighVsyncMode:Lcom/android/settings/ui/RadioButtonPreference;

    iget-object p1, p0, Lcom/oneplus/settings/OPScreenRefreshRate;->mAutoMode:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {p1, p0}, Lcom/android/settings/ui/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;)V

    iget-object p1, p0, Lcom/oneplus/settings/OPScreenRefreshRate;->m60HzMode:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {p1, p0}, Lcom/android/settings/ui/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;)V

    iget-object p1, p0, Lcom/oneplus/settings/OPScreenRefreshRate;->mHighVsyncMode:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {p1, p0}, Lcom/android/settings/ui/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;)V

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportHighVsync()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oneplus/settings/OPScreenRefreshRate;->mAutoMode:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/oneplus/settings/OPScreenRefreshRate;->mHighVsyncMode:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    :goto_0
    const-string p1, "footer_preference"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/oneplus/settings/widget/OPFooterPreference;

    iput-object p1, p0, Lcom/oneplus/settings/OPScreenRefreshRate;->mFooterPreference:Lcom/oneplus/settings/widget/OPFooterPreference;

    iget-object p1, p0, Lcom/oneplus/settings/OPScreenRefreshRate;->mFooterPreference:Lcom/oneplus/settings/widget/OPFooterPreference;

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    const v0, 0x7f120f9c

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportHighVsync()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "90"

    const-string v1, "120"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_2
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method public onRadioButtonClicked(Lcom/android/settings/ui/RadioButtonPreference;)V
    .locals 6

    iget-object v0, p0, Lcom/oneplus/settings/OPScreenRefreshRate;->mAutoMode:Lcom/android/settings/ui/RadioButtonPreference;

    const/4 v1, 0x2

    const-string v2, "oneplus_screen_refresh_rate"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne p1, v0, :cond_0

    invoke-virtual {v0, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/OPScreenRefreshRate;->m60HzMode:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {p1, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/OPScreenRefreshRate;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v2, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_0
    iget-object v5, p0, Lcom/oneplus/settings/OPScreenRefreshRate;->m60HzMode:Lcom/android/settings/ui/RadioButtonPreference;

    if-ne p1, v5, :cond_1

    invoke-virtual {v0, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/OPScreenRefreshRate;->m60HzMode:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {p1, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/OPScreenRefreshRate;->mHighVsyncMode:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {p1, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/OPScreenRefreshRate;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/OPScreenRefreshRate;->mHighVsyncMode:Lcom/android/settings/ui/RadioButtonPreference;

    if-ne p1, v0, :cond_2

    invoke-virtual {v0, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/OPScreenRefreshRate;->m60HzMode:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {p1, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/OPScreenRefreshRate;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v2, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/oneplus/settings/OPScreenRefreshRate;->mAutoMode:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {p1, v4}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/OPScreenRefreshRate;->m60HzMode:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {p1, v4}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/OPScreenRefreshRate;->mHighVsyncMode:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {p1, v4}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/OPScreenRefreshRate;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/oneplus/settings/OPScreenRefreshRate$1;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/OPScreenRefreshRate$1;-><init>(Lcom/oneplus/settings/OPScreenRefreshRate;)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onResume()V
    .locals 7

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    iget-object v0, p0, Lcom/oneplus/settings/OPScreenRefreshRate;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oneplus_screen_refresh_rate"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v3, p0, Lcom/oneplus/settings/OPScreenRefreshRate;->mAutoMode:Lcom/android/settings/ui/RadioButtonPreference;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v0, v2, :cond_0

    move v6, v5

    goto :goto_0

    :cond_0
    move v6, v4

    :goto_0
    invoke-virtual {v3, v6}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v3, p0, Lcom/oneplus/settings/OPScreenRefreshRate;->m60HzMode:Lcom/android/settings/ui/RadioButtonPreference;

    if-ne v0, v5, :cond_1

    move v6, v5

    goto :goto_1

    :cond_1
    move v6, v4

    :goto_1
    invoke-virtual {v3, v6}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v3, p0, Lcom/oneplus/settings/OPScreenRefreshRate;->mHighVsyncMode:Lcom/android/settings/ui/RadioButtonPreference;

    if-ne v0, v2, :cond_2

    move v4, v5

    :cond_2
    invoke-virtual {v3, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/OPScreenRefreshRate;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/OPScreenRefreshRate;->mEnterValue:I

    return-void
.end method

.method public onStop()V
    .locals 3

    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onStop()V

    iget-object v0, p0, Lcom/oneplus/settings/OPScreenRefreshRate;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x2

    const-string v2, "oneplus_screen_refresh_rate"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget p0, p0, Lcom/oneplus/settings/OPScreenRefreshRate;->mEnterValue:I

    if-eq v0, p0, :cond_1

    const-string p0, "status"

    const-string v2, "refresh rate"

    if-ne v0, v1, :cond_0

    const-string v0, "0"

    invoke-static {v2, p0, v0}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const-string v0, "1"

    invoke-static {v2, p0, v0}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
