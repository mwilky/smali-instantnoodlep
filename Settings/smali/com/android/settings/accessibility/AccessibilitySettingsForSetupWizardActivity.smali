.class public Lcom/android/settings/accessibility/AccessibilitySettingsForSetupWizardActivity;
.super Lcom/android/settings/SettingsActivity;
.source "AccessibilitySettingsForSetupWizardActivity.java"


# static fields
.field static final CLASS_NAME_FONT_SIZE_SETTINGS_FOR_SUW:Ljava/lang/String; = "com.android.settings.FontSizeSettingsForSetupWizardActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsForSetupWizardActivity;->tryLaunchFontSizeSettings()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onNavigateUp()Z
    .locals 1

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    const/4 p0, 0x1

    return p0
.end method

.method public onPreferenceStartFragment(Landroidx/preference/PreferenceFragmentCompat;Landroidx/preference/Preference;)Z
    .locals 3

    invoke-virtual {p2}, Landroidx/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :cond_0
    const/4 v1, 0x0

    const-string v2, "help_uri_resource"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "need_search_icon_in_action_bar"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance v2, Lcom/android/settings/core/SubSettingLauncher;

    invoke-direct {v2, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2}, Landroidx/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    instance-of p2, p1, Lcom/android/settingslib/core/instrumentation/Instrumentable;

    if-eqz p2, :cond_1

    check-cast p1, Lcom/android/settingslib/core/instrumentation/Instrumentable;

    invoke-interface {p1}, Lcom/android/settingslib/core/instrumentation/Instrumentable;->getMetricsCategory()I

    move-result v1

    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    const/4 p0, 0x1

    return p0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const-string v0, "activity_title"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    const-string v1, "activity_title"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    invoke-super {p0, p1}, Lcom/android/settings/SettingsActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method tryLaunchFontSizeSettings()V
    .locals 7

    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->isAnySetupWizard(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.settings.FontSizeSettingsForSetupWizardActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x0

    const-string v2, "help_uri_resource"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "need_search_icon_in_action_bar"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance v2, Lcom/android/settings/core/SubSettingLauncher;

    invoke-direct {v2, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v3, Lcom/android/settings/display/FontSizePreferenceFragmentForSetupWizard;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "firstRun"

    const-string v5, "isSetupFlow"

    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v5, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    invoke-virtual {v3, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v3}, Lcom/android/settings/core/SubSettingLauncher;->setExtras(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    const-string v1, "A11ySettingsForSUW"

    const-string v2, "Launch font size settings"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method
