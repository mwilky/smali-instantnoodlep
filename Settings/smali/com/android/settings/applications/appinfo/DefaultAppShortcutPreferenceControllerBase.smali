.class public abstract Lcom/android/settings/applications/appinfo/DefaultAppShortcutPreferenceControllerBase;
.super Lcom/android/settings/core/BasePreferenceController;
.source "DefaultAppShortcutPreferenceControllerBase.java"


# instance fields
.field private mAppQualified:Z

.field protected final mPackageName:Ljava/lang/String;

.field private mPreferenceScreen:Landroidx/preference/PreferenceScreen;

.field private final mRoleManager:Landroid/app/role/RoleManager;

.field private final mRoleName:Ljava/lang/String;

.field private mRoleVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/android/settings/applications/appinfo/DefaultAppShortcutPreferenceControllerBase;->mRoleName:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/settings/applications/appinfo/DefaultAppShortcutPreferenceControllerBase;->mPackageName:Ljava/lang/String;

    const-class p2, Landroid/app/role/RoleManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/role/RoleManager;

    iput-object p1, p0, Lcom/android/settings/applications/appinfo/DefaultAppShortcutPreferenceControllerBase;->mRoleManager:Landroid/app/role/RoleManager;

    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-class p2, Landroid/app/role/RoleControllerManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/role/RoleControllerManager;

    iget-object p2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p2

    iget-object p3, p0, Lcom/android/settings/applications/appinfo/DefaultAppShortcutPreferenceControllerBase;->mRoleName:Ljava/lang/String;

    new-instance p4, Lcom/android/settings/applications/appinfo/-$$Lambda$DefaultAppShortcutPreferenceControllerBase$PAhuwVBE2P_xbMKEkn5AwPD1_DQ;

    invoke-direct {p4, p0}, Lcom/android/settings/applications/appinfo/-$$Lambda$DefaultAppShortcutPreferenceControllerBase$PAhuwVBE2P_xbMKEkn5AwPD1_DQ;-><init>(Lcom/android/settings/applications/appinfo/DefaultAppShortcutPreferenceControllerBase;)V

    invoke-virtual {p1, p3, p2, p4}, Landroid/app/role/RoleControllerManager;->isRoleVisible(Ljava/lang/String;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    iget-object p3, p0, Lcom/android/settings/applications/appinfo/DefaultAppShortcutPreferenceControllerBase;->mRoleName:Ljava/lang/String;

    iget-object p4, p0, Lcom/android/settings/applications/appinfo/DefaultAppShortcutPreferenceControllerBase;->mPackageName:Ljava/lang/String;

    new-instance v0, Lcom/android/settings/applications/appinfo/-$$Lambda$DefaultAppShortcutPreferenceControllerBase$_GVkqHET8d1yF4IgDEBt_Ev5syM;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/appinfo/-$$Lambda$DefaultAppShortcutPreferenceControllerBase$_GVkqHET8d1yF4IgDEBt_Ev5syM;-><init>(Lcom/android/settings/applications/appinfo/DefaultAppShortcutPreferenceControllerBase;)V

    invoke-virtual {p1, p3, p4, p2, v0}, Landroid/app/role/RoleControllerManager;->isApplicationQualifiedForRole(Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    return-void
.end method

.method private isDefaultApp()Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/DefaultAppShortcutPreferenceControllerBase;->mRoleManager:Landroid/app/role/RoleManager;

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/DefaultAppShortcutPreferenceControllerBase;->mRoleName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/role/RoleManager;->getRoleHolders(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/CollectionUtils;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object p0, p0, Lcom/android/settings/applications/appinfo/DefaultAppShortcutPreferenceControllerBase;->mPackageName:Ljava/lang/String;

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private refreshAvailability()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/DefaultAppShortcutPreferenceControllerBase;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    iput-object p1, p0, Lcom/android/settings/applications/appinfo/DefaultAppShortcutPreferenceControllerBase;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isManagedProfile(Landroid/os/UserManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x4

    return p0

    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/applications/appinfo/DefaultAppShortcutPreferenceControllerBase;->mRoleVisible:Z

    if-eqz v0, :cond_1

    iget-boolean p0, p0, Lcom/android/settings/applications/appinfo/DefaultAppShortcutPreferenceControllerBase;->mAppQualified:Z

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    const/4 p0, 0x3

    :goto_0
    return p0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/applications/appinfo/DefaultAppShortcutPreferenceControllerBase;->isDefaultApp()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f121a75

    goto :goto_0

    :cond_0
    const v0, 0x7f120b5f

    :goto_0
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/core/BasePreferenceController;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.MANAGE_DEFAULT_APP"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/DefaultAppShortcutPreferenceControllerBase;->mRoleName:Ljava/lang/String;

    const-string v1, "android.intent.extra.ROLE_NAME"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 p0, 0x1

    return p0
.end method

.method public synthetic lambda$new$0$DefaultAppShortcutPreferenceControllerBase(Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/applications/appinfo/DefaultAppShortcutPreferenceControllerBase;->mRoleVisible:Z

    invoke-direct {p0}, Lcom/android/settings/applications/appinfo/DefaultAppShortcutPreferenceControllerBase;->refreshAvailability()V

    return-void
.end method

.method public synthetic lambda$new$1$DefaultAppShortcutPreferenceControllerBase(Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/applications/appinfo/DefaultAppShortcutPreferenceControllerBase;->mAppQualified:Z

    invoke-direct {p0}, Lcom/android/settings/applications/appinfo/DefaultAppShortcutPreferenceControllerBase;->refreshAvailability()V

    return-void
.end method
