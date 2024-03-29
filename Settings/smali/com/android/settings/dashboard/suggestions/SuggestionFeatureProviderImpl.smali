.class public Lcom/android/settings/dashboard/suggestions/SuggestionFeatureProviderImpl;
.super Ljava/lang/Object;
.source "SuggestionFeatureProviderImpl.java"

# interfaces
.implements Lcom/android/settings/dashboard/suggestions/SuggestionFeatureProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    return-void
.end method


# virtual methods
.method public getSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 1

    const-string p0, "suggestions"

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method public getSuggestionServiceComponent()Landroid/content/ComponentName;
    .locals 2

    new-instance p0, Landroid/content/ComponentName;

    const-string v0, "com.android.settings.intelligence"

    const-string v1, "com.android.settings.intelligence.suggestions.SuggestionService"

    invoke-direct {p0, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public isSuggestionComplete(Landroid/content/Context;Landroid/content/ComponentName;)Z
    .locals 1

    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p0

    const-class p2, Lcom/android/settings/wallpaper/WallpaperSuggestionActivity;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {p1}, Lcom/android/settings/wallpaper/WallpaperSuggestionActivity;->isSuggestionComplete(Landroid/content/Context;)Z

    move-result p0

    return p0

    :cond_0
    const-class p2, Lcom/android/settings/wallpaper/StyleSuggestionActivity;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {p1}, Lcom/android/settings/wallpaper/StyleSuggestionActivity;->isSuggestionComplete(Landroid/content/Context;)Z

    move-result p0

    return p0

    :cond_1
    const-class p2, Lcom/android/settings/biometrics/fingerprint/FingerprintSuggestionActivity;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-static {p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintSuggestionActivity;->isSuggestionComplete(Landroid/content/Context;)Z

    move-result p0

    return p0

    :cond_2
    const-class p2, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSuggestionActivity;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-static {p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSuggestionActivity;->isSuggestionComplete(Landroid/content/Context;)Z

    move-result p0

    return p0

    :cond_3
    const-class p2, Lcom/android/settings/password/ScreenLockSuggestionActivity;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-static {p1}, Lcom/android/settings/password/ScreenLockSuggestionActivity;->isSuggestionComplete(Landroid/content/Context;)Z

    move-result p0

    return p0

    :cond_4
    const-class p2, Lcom/android/settings/wifi/calling/WifiCallingSuggestionActivity;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-static {p1}, Lcom/android/settings/wifi/calling/WifiCallingSuggestionActivity;->isSuggestionComplete(Landroid/content/Context;)Z

    move-result p0

    return p0

    :cond_5
    const-class p2, Lcom/android/settings/Settings$NightDisplaySuggestionActivity;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_8

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f050016

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    const/4 p2, 0x1

    if-nez p0, :cond_6

    goto :goto_0

    :cond_6
    const-class p0, Landroid/hardware/display/ColorDisplayManager;

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/display/ColorDisplayManager;

    invoke-virtual {p0}, Landroid/hardware/display/ColorDisplayManager;->getNightDisplayAutoMode()I

    move-result p0

    if-eqz p0, :cond_7

    goto :goto_0

    :cond_7
    move p2, v0

    :goto_0
    return p2

    :cond_8
    const-class p2, Lcom/android/settings/notification/ZenSuggestionActivity;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    invoke-static {p1}, Lcom/android/settings/notification/ZenOnboardingActivity;->isSuggestionComplete(Landroid/content/Context;)Z

    move-result p0

    return p0

    :cond_9
    return v0
.end method
