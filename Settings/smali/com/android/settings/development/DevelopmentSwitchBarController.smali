.class public Lcom/android/settings/development/DevelopmentSwitchBarController;
.super Ljava/lang/Object;
.source "DevelopmentSwitchBarController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;


# instance fields
.field private final mIsAvailable:Z

.field private final mSettings:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

.field private final mSwitchBar:Lcom/android/settings/widget/SwitchBar;


# direct methods
.method public constructor <init>(Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;Lcom/android/settings/widget/SwitchBar;ZLcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/settings/development/DevelopmentSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const/4 p2, 0x0

    if-eqz p3, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result p3

    if-nez p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    move p3, p2

    :goto_0
    iput-boolean p3, p0, Lcom/android/settings/development/DevelopmentSwitchBarController;->mIsAvailable:Z

    iput-object p1, p0, Lcom/android/settings/development/DevelopmentSwitchBarController;->mSettings:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    iget-boolean p1, p0, Lcom/android/settings/development/DevelopmentSwitchBarController;->mIsAvailable:Z

    if-eqz p1, :cond_1

    invoke-virtual {p4, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/android/settings/development/DevelopmentSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p0, p2}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    :goto_1
    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/development/DevelopmentSwitchBarController;->mSettings:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settingslib/RestrictedLockUtils;->isDevelopmentSettingsEnabled(Landroid/content/Context;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/settings/development/DevelopmentSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/development/DevelopmentSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object p0, p0, Lcom/android/settings/development/DevelopmentSwitchBarController;->mSettings:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/development/DevelopmentSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object p0, p0, Lcom/android/settings/development/DevelopmentSwitchBarController;->mSettings:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    return-void
.end method
