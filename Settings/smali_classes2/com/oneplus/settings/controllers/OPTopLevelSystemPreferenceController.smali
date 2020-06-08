.class public Lcom/oneplus/settings/controllers/OPTopLevelSystemPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "OPTopLevelSystemPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnCreate;
.implements Lcom/android/settingslib/core/lifecycle/events/OnDestroy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/controllers/OPTopLevelSystemPreferenceController$SystemUpdateObserver;
    }
.end annotation


# static fields
.field private static final KEY_TOP_LEVEL_SYSTEM:Ljava/lang/String; = "top_level_system"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSystemUpdateObserver:Lcom/oneplus/settings/controllers/OPTopLevelSystemPreferenceController$SystemUpdateObserver;

.field private final mUm:Landroid/os/UserManager;

.field mUpdatePreference:Lcom/oneplus/settings/system/OPSystemUpdatePreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    const-string p2, "top_level_system"

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p2

    iput-object p2, p0, Lcom/oneplus/settings/controllers/OPTopLevelSystemPreferenceController;->mUm:Landroid/os/UserManager;

    iput-object p1, p0, Lcom/oneplus/settings/controllers/OPTopLevelSystemPreferenceController;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/controllers/OPTopLevelSystemPreferenceController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/controllers/OPTopLevelSystemPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/settings/controllers/OPTopLevelSystemPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/oneplus/settings/system/OPSystemUpdatePreference;

    iput-object p1, p0, Lcom/oneplus/settings/controllers/OPTopLevelSystemPreferenceController;->mUpdatePreference:Lcom/oneplus/settings/system/OPSystemUpdatePreference;

    :cond_0
    invoke-static {}, Lcom/oneplus/lib/app/appcompat/MenuWrapperFactory;->isUsvMode()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/oneplus/settings/controllers/OPTopLevelSystemPreferenceController;->mUpdatePreference:Lcom/oneplus/settings/system/OPSystemUpdatePreference;

    const p1, 0x7f12108f

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(I)V

    :cond_1
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "top_level_system"

    return-object p0
.end method

.method public isNeedAvailable()Z
    .locals 2

    iget-object v0, p0, Lcom/oneplus/settings/controllers/OPTopLevelSystemPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050051

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportUss()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/oneplus/settings/controllers/OPTopLevelSystemPreferenceController;->mUm:Landroid/os/UserManager;

    invoke-virtual {p0}, Landroid/os/UserManager;->isAdminUser()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/oneplus/settings/controllers/OPTopLevelSystemPreferenceController$SystemUpdateObserver;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p1, p0, v0}, Lcom/oneplus/settings/controllers/OPTopLevelSystemPreferenceController$SystemUpdateObserver;-><init>(Lcom/oneplus/settings/controllers/OPTopLevelSystemPreferenceController;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/oneplus/settings/controllers/OPTopLevelSystemPreferenceController;->mSystemUpdateObserver:Lcom/oneplus/settings/controllers/OPTopLevelSystemPreferenceController$SystemUpdateObserver;

    iget-object p0, p0, Lcom/oneplus/settings/controllers/OPTopLevelSystemPreferenceController;->mSystemUpdateObserver:Lcom/oneplus/settings/controllers/OPTopLevelSystemPreferenceController$SystemUpdateObserver;

    invoke-virtual {p0}, Lcom/oneplus/settings/controllers/OPTopLevelSystemPreferenceController$SystemUpdateObserver;->startObserving()V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/settings/controllers/OPTopLevelSystemPreferenceController;->mSystemUpdateObserver:Lcom/oneplus/settings/controllers/OPTopLevelSystemPreferenceController$SystemUpdateObserver;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/oneplus/settings/controllers/OPTopLevelSystemPreferenceController$SystemUpdateObserver;->this$0:Lcom/oneplus/settings/controllers/OPTopLevelSystemPreferenceController;

    invoke-static {v1}, Lcom/oneplus/settings/controllers/OPTopLevelSystemPreferenceController;->access$000(Lcom/oneplus/settings/controllers/OPTopLevelSystemPreferenceController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/settings/controllers/OPTopLevelSystemPreferenceController;->mSystemUpdateObserver:Lcom/oneplus/settings/controllers/OPTopLevelSystemPreferenceController$SystemUpdateObserver;

    :cond_0
    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result p0

    if-eqz p0, :cond_0

    check-cast p1, Lcom/oneplus/settings/system/OPSystemUpdatePreference;

    invoke-virtual {p1}, Lcom/oneplus/settings/system/OPSystemUpdatePreference;->updateView()V

    :cond_0
    return-void
.end method
