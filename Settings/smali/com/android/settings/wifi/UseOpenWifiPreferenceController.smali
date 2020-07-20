.class public Lcom/android/settings/wifi/UseOpenWifiPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "UseOpenWifiPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/UseOpenWifiPreferenceController$SettingObserver;
    }
.end annotation


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;

.field private mDoFeatureSupportedScorersExist:Z

.field private mEnableUseWifiComponentName:Landroid/content/ComponentName;

.field private final mFragment:Landroidx/fragment/app/Fragment;

.field private final mNetworkScoreManager:Landroid/net/NetworkScoreManager;

.field private mPreference:Landroidx/preference/Preference;

.field private final mSettingObserver:Lcom/android/settings/wifi/UseOpenWifiPreferenceController$SettingObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/fragment/app/Fragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    iput-object p2, p0, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->mFragment:Landroidx/fragment/app/Fragment;

    const-string p2, "network_score"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/NetworkScoreManager;

    iput-object p1, p0, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->mNetworkScoreManager:Landroid/net/NetworkScoreManager;

    new-instance p1, Lcom/android/settings/wifi/UseOpenWifiPreferenceController$SettingObserver;

    invoke-direct {p1, p0}, Lcom/android/settings/wifi/UseOpenWifiPreferenceController$SettingObserver;-><init>(Lcom/android/settings/wifi/UseOpenWifiPreferenceController;)V

    iput-object p1, p0, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->mSettingObserver:Lcom/android/settings/wifi/UseOpenWifiPreferenceController$SettingObserver;

    iget-object p1, p0, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->mNetworkScoreManager:Landroid/net/NetworkScoreManager;

    invoke-virtual {p1}, Landroid/net/NetworkScoreManager;->getActiveScorer()Landroid/net/NetworkScorerAppData;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/net/NetworkScorerAppData;->getEnableUseOpenWifiActivity()Landroid/content/ComponentName;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->mEnableUseWifiComponentName:Landroid/content/ComponentName;

    iget-object p1, p0, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->mEnableUseWifiComponentName:Landroid/content/ComponentName;

    const/4 p2, 0x1

    if-eqz p1, :cond_1

    iput-boolean p2, p0, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->mDoFeatureSupportedScorersExist:Z

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->mNetworkScoreManager:Landroid/net/NetworkScoreManager;

    invoke-virtual {p1}, Landroid/net/NetworkScoreManager;->getAllValidScorers()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkScorerAppData;

    invoke-virtual {v0}, Landroid/net/NetworkScorerAppData;->getEnableUseOpenWifiActivity()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_2

    iput-boolean p2, p0, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->mDoFeatureSupportedScorersExist:Z

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->mDoFeatureSupportedScorersExist:Z

    :goto_1
    invoke-virtual {p3, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/UseOpenWifiPreferenceController;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->mNetworkScoreManager:Landroid/net/NetworkScoreManager;

    invoke-virtual {v0}, Landroid/net/NetworkScoreManager;->getActiveScorer()Landroid/net/NetworkScorerAppData;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkScorerAppData;->getEnableUseOpenWifiActivity()Landroid/content/ComponentName;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->mEnableUseWifiComponentName:Landroid/content/ComponentName;

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/UseOpenWifiPreferenceController;)Landroidx/preference/Preference;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->mPreference:Landroidx/preference/Preference;

    return-object p0
.end method

.method private isSettingEnabled()Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "use_open_wifi_package"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->mEnableUseWifiComponentName:Landroid/content/ComponentName;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "use_open_wifi_automatically"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->mPreference:Landroidx/preference/Preference;

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "use_open_wifi_automatically"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->mDoFeatureSupportedScorersExist:Z

    return p0
.end method

.method public onActivityResult(II)Z
    .locals 1

    const/16 v0, 0x190

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    iget-object p0, p0, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->mEnableUseWifiComponentName:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string p2, "use_open_wifi_package"

    invoke-static {p1, p2, p0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->mSettingObserver:Lcom/android/settings/wifi/UseOpenWifiPreferenceController$SettingObserver;

    iget-object p0, p0, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, p0}, Lcom/android/settings/wifi/UseOpenWifiPreferenceController$SettingObserver;->unregister(Landroid/content/ContentResolver;)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string p2, "use_open_wifi_automatically"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->isAvailable()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->isSettingEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    const-string p1, "use_open_wifi_package"

    const-string p2, ""

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const/4 p0, 0x1

    return p0

    :cond_1
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.net.scoring.CUSTOM_ENABLE"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->mEnableUseWifiComponentName:Landroid/content/ComponentName;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->mFragment:Landroidx/fragment/app/Fragment;

    const/16 v0, 0x190

    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_2
    :goto_0
    return p2
.end method

.method public onResume()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->mSettingObserver:Lcom/android/settings/wifi/UseOpenWifiPreferenceController$SettingObserver;

    iget-object p0, p0, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, p0}, Lcom/android/settings/wifi/UseOpenWifiPreferenceController$SettingObserver;->register(Landroid/content/ContentResolver;)V

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 5

    instance-of v0, p1, Landroidx/preference/SwitchPreference;

    if-nez v0, :cond_0

    return-void

    :cond_0
    check-cast p1, Landroidx/preference/SwitchPreference;

    iget-object v0, p0, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->mNetworkScoreManager:Landroid/net/NetworkScoreManager;

    invoke-virtual {v0}, Landroid/net/NetworkScoreManager;->getActiveScorerPackage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->mEnableUseWifiComponentName:Landroid/content/ComponentName;

    if-eqz v3, :cond_2

    move v3, v1

    goto :goto_1

    :cond_2
    move v3, v2

    :goto_1
    invoke-direct {p0}, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->isSettingEnabled()Z

    move-result v4

    invoke-virtual {p1, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->isAvailable()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setVisible(Z)V

    if-eqz v0, :cond_3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_2
    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    if-nez v0, :cond_4

    const p0, 0x7f1217b4

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_3

    :cond_4
    if-nez v3, :cond_5

    const p0, 0x7f1217b3

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_3

    :cond_5
    const p0, 0x7f1217b2

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(I)V

    :goto_3
    return-void
.end method
