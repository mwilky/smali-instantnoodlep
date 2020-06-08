.class public Lcom/android/settings/deletionhelper/AutomaticStorageManagerSwitchBarController;
.super Ljava/lang/Object;
.source "AutomaticStorageManagerSwitchBarController.java"

# interfaces
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDaysToRetainPreference:Landroidx/preference/Preference;

.field private mFragmentManager:Landroidx/fragment/app/FragmentManager;

.field private mMetrics:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchBar;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;Landroidx/preference/Preference;Landroidx/fragment/app/FragmentManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSwitchBarController;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/SwitchBar;

    iput-object p1, p0, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iput-object p1, p0, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSwitchBarController;->mMetrics:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-static {p4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/preference/Preference;

    iput-object p1, p0, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSwitchBarController;->mDaysToRetainPreference:Landroidx/preference/Preference;

    invoke-static {p5}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/FragmentManager;

    iput-object p1, p0, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSwitchBarController;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    iget-object p1, p0, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object p2, p0, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSwitchBarController;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/android/settingslib/Utils;->isStorageManagerEnabled(Landroid/content/Context;)Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    iget-object p1, p0, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p1, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    return-void
.end method


# virtual methods
.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 2

    iget-object p1, p0, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSwitchBarController;->mMetrics:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v0, p0, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSwitchBarController;->mContext:Landroid/content/Context;

    const/16 v1, 0x1e9

    invoke-virtual {p1, v0, v1, p2}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;IZ)V

    iget-object p1, p0, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSwitchBarController;->mDaysToRetainPreference:Landroidx/preference/Preference;

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object p1, p0, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSwitchBarController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "automatic_storage_manager_enabled"

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-eqz p2, :cond_1

    const/4 p1, 0x0

    const-string p2, "ro.storage_manager.enabled"

    invoke-static {p2, p1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/settings/deletionhelper/ActivationWarningFragment;->newInstance()Lcom/android/settings/deletionhelper/ActivationWarningFragment;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSwitchBarController;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    const-string p2, "ActivationWarningFragment"

    invoke-virtual {p1, p0, p2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public tearDown()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    return-void
.end method
