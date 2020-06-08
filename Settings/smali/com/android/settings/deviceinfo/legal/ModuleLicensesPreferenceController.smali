.class public Lcom/android/settings/deviceinfo/legal/ModuleLicensesPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "ModuleLicensesPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/legal/ModuleLicensesPreferenceController$Predicate;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$displayPreference$0(Landroid/content/pm/ModuleInfo;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Landroid/content/pm/ModuleInfo;->getName()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$displayPreference$1(Landroidx/preference/PreferenceGroup;Landroid/content/pm/ModuleInfo;)V
    .locals 2

    new-instance v0, Lcom/android/settings/deviceinfo/legal/ModuleLicensePreference;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/settings/deviceinfo/legal/ModuleLicensePreference;-><init>(Landroid/content/Context;Landroid/content/pm/ModuleInfo;)V

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledModules(I)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceGroup;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/settings/deviceinfo/legal/-$$Lambda$ModuleLicensesPreferenceController$pL1-6SYxY49RqinLaZMvrs6bc0c;->INSTANCE:Lcom/android/settings/deviceinfo/legal/-$$Lambda$ModuleLicensesPreferenceController$pL1-6SYxY49RqinLaZMvrs6bc0c;

    invoke-static {v1}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/settings/deviceinfo/legal/ModuleLicensesPreferenceController$Predicate;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0}, Lcom/android/settings/deviceinfo/legal/ModuleLicensesPreferenceController$Predicate;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/settings/deviceinfo/legal/-$$Lambda$ModuleLicensesPreferenceController$w7w_sPbPSDjsJT4DO8L9NvJUpS0;

    invoke-direct {v0, p1}, Lcom/android/settings/deviceinfo/legal/-$$Lambda$ModuleLicensesPreferenceController$w7w_sPbPSDjsJT4DO8L9NvJUpS0;-><init>(Landroidx/preference/PreferenceGroup;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
