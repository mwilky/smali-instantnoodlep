.class public Lcom/android/settings/security/LockscreenDashboardFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "LockscreenDashboardFragment.java"

# interfaces
.implements Lcom/android/settings/security/OwnerInfoPreferenceController$OwnerInfoCallback;


# static fields
.field static final KEY_ADD_USER_FROM_LOCK_SCREEN:Ljava/lang/String; = "security_lockscreen_add_users_when_locked"

.field static final KEY_LOCK_SCREEN_NOTIFICATON:Ljava/lang/String; = "security_setting_lock_screen_notif"

.field static final KEY_LOCK_SCREEN_NOTIFICATON_WORK_PROFILE:Ljava/lang/String; = "security_setting_lock_screen_notif_work"

.field static final KEY_LOCK_SCREEN_NOTIFICATON_WORK_PROFILE_HEADER:Ljava/lang/String; = "security_setting_lock_screen_notif_work_header"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

.field private mOwnerInfoPreferenceController:Lcom/android/settings/security/OwnerInfoPreferenceController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/security/LockscreenDashboardFragment$1;

    invoke-direct {v0}, Lcom/android/settings/security/LockscreenDashboardFragment$1;-><init>()V

    sput-object v0, Lcom/android/settings/security/LockscreenDashboardFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method public static synthetic lambda$iqjy4Hrw-hPte-Ll6wL10EqUYKM(Lcom/android/settings/security/LockscreenDashboardFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->updatePreferenceStates()V

    return-void
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v1

    new-instance v2, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;

    const-string v3, "security_setting_lock_screen_notif"

    const-string v4, "security_setting_lock_screen_notif_work_header"

    const-string v5, "security_setting_lock_screen_notif_work"

    invoke-direct {v2, p1, v3, v4, v5}, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/android/settings/security/OwnerInfoPreferenceController;

    invoke-direct {v2, p1, p0, v1}, Lcom/android/settings/security/OwnerInfoPreferenceController;-><init>(Landroid/content/Context;Landroidx/fragment/app/Fragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    iput-object v2, p0, Lcom/android/settings/security/LockscreenDashboardFragment;->mOwnerInfoPreferenceController:Lcom/android/settings/security/OwnerInfoPreferenceController;

    iget-object p0, p0, Lcom/android/settings/security/LockscreenDashboardFragment;->mOwnerInfoPreferenceController:Lcom/android/settings/security/OwnerInfoPreferenceController;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getHelpResource()I
    .locals 0

    const p0, 0x7f120820

    return p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "LockscreenDashboardFragment"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x372

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f1600ed

    return p0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    const-class v0, Lcom/android/settings/display/AmbientDisplayAlwaysOnPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/display/AmbientDisplayAlwaysOnPreferenceController;

    iget-object v1, p0, Lcom/android/settings/security/LockscreenDashboardFragment;->mConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    if-nez v1, :cond_0

    new-instance v1, Landroid/hardware/display/AmbientDisplayConfiguration;

    invoke-direct {v1, p1}, Landroid/hardware/display/AmbientDisplayConfiguration;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/security/LockscreenDashboardFragment;->mConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    :cond_0
    iget-object v1, p0, Lcom/android/settings/security/LockscreenDashboardFragment;->mConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    invoke-virtual {v0, v1}, Lcom/android/settings/display/AmbientDisplayAlwaysOnPreferenceController;->setConfig(Landroid/hardware/display/AmbientDisplayConfiguration;)Lcom/android/settings/display/AmbientDisplayAlwaysOnPreferenceController;

    move-result-object v0

    new-instance v1, Lcom/android/settings/security/-$$Lambda$LockscreenDashboardFragment$iqjy4Hrw-hPte-Ll6wL10EqUYKM;

    invoke-direct {v1, p0}, Lcom/android/settings/security/-$$Lambda$LockscreenDashboardFragment$iqjy4Hrw-hPte-Ll6wL10EqUYKM;-><init>(Lcom/android/settings/security/LockscreenDashboardFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/display/AmbientDisplayAlwaysOnPreferenceController;->setCallback(Lcom/android/settings/display/AmbientDisplayAlwaysOnPreferenceController$OnPreferenceChangedCallback;)Lcom/android/settings/display/AmbientDisplayAlwaysOnPreferenceController;

    const-class v0, Lcom/android/settings/display/AmbientDisplayNotificationsPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/display/AmbientDisplayNotificationsPreferenceController;

    iget-object v1, p0, Lcom/android/settings/security/LockscreenDashboardFragment;->mConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    if-nez v1, :cond_1

    new-instance v1, Landroid/hardware/display/AmbientDisplayConfiguration;

    invoke-direct {v1, p1}, Landroid/hardware/display/AmbientDisplayConfiguration;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/security/LockscreenDashboardFragment;->mConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    :cond_1
    iget-object v1, p0, Lcom/android/settings/security/LockscreenDashboardFragment;->mConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    invoke-virtual {v0, v1}, Lcom/android/settings/display/AmbientDisplayNotificationsPreferenceController;->setConfig(Landroid/hardware/display/AmbientDisplayConfiguration;)Lcom/android/settings/display/AmbientDisplayNotificationsPreferenceController;

    const-class v0, Lcom/android/settings/gestures/DoubleTapScreenPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/gestures/DoubleTapScreenPreferenceController;

    iget-object v1, p0, Lcom/android/settings/security/LockscreenDashboardFragment;->mConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    if-nez v1, :cond_2

    new-instance v1, Landroid/hardware/display/AmbientDisplayConfiguration;

    invoke-direct {v1, p1}, Landroid/hardware/display/AmbientDisplayConfiguration;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/security/LockscreenDashboardFragment;->mConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    :cond_2
    iget-object v1, p0, Lcom/android/settings/security/LockscreenDashboardFragment;->mConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    invoke-virtual {v0, v1}, Lcom/android/settings/gestures/DoubleTapScreenPreferenceController;->setConfig(Landroid/hardware/display/AmbientDisplayConfiguration;)Lcom/android/settings/gestures/DoubleTapScreenPreferenceController;

    const-class v0, Lcom/android/settings/gestures/PickupGesturePreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/gestures/PickupGesturePreferenceController;

    iget-object v1, p0, Lcom/android/settings/security/LockscreenDashboardFragment;->mConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    if-nez v1, :cond_3

    new-instance v1, Landroid/hardware/display/AmbientDisplayConfiguration;

    invoke-direct {v1, p1}, Landroid/hardware/display/AmbientDisplayConfiguration;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/security/LockscreenDashboardFragment;->mConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    :cond_3
    iget-object p0, p0, Lcom/android/settings/security/LockscreenDashboardFragment;->mConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    invoke-virtual {v0, p0}, Lcom/android/settings/gestures/PickupGesturePreferenceController;->setConfig(Landroid/hardware/display/AmbientDisplayConfiguration;)Lcom/android/settings/gestures/PickupGesturePreferenceController;

    return-void
.end method

.method public onOwnerInfoUpdated()V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/security/LockscreenDashboardFragment;->mOwnerInfoPreferenceController:Lcom/android/settings/security/OwnerInfoPreferenceController;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/security/OwnerInfoPreferenceController;->updateSummary()V

    :cond_0
    return-void
.end method
