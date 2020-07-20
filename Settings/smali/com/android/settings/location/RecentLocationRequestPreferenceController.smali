.class public Lcom/android/settings/location/RecentLocationRequestPreferenceController;
.super Lcom/android/settings/location/LocationBasePreferenceController;
.source "RecentLocationRequestPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/location/RecentLocationRequestPreferenceController$PackageEntryClickedListener;
    }
.end annotation


# static fields
.field static final KEY_SEE_ALL_BUTTON:Ljava/lang/String; = "recent_location_requests_see_all_button"


# instance fields
.field private final mFragment:Lcom/android/settings/location/LocationSettings;

.field private final mRecentLocationApps:Lcom/android/settingslib/location/RecentLocationApps;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/location/LocationSettings;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1

    new-instance v0, Lcom/android/settingslib/location/RecentLocationApps;

    invoke-direct {v0, p1}, Lcom/android/settingslib/location/RecentLocationApps;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, p3}, Lcom/android/settings/location/LocationBasePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    iput-object p2, p0, Lcom/android/settings/location/RecentLocationRequestPreferenceController;->mFragment:Lcom/android/settings/location/LocationSettings;

    iput-object v0, p0, Lcom/android/settings/location/RecentLocationRequestPreferenceController;->mRecentLocationApps:Lcom/android/settingslib/location/RecentLocationApps;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/settings/location/LocationSettings;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settingslib/location/RecentLocationApps;)V
    .locals 0

    invoke-direct {p0, p1, p3}, Lcom/android/settings/location/LocationBasePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    iput-object p2, p0, Lcom/android/settings/location/RecentLocationRequestPreferenceController;->mFragment:Lcom/android/settings/location/LocationSettings;

    iput-object p4, p0, Lcom/android/settings/location/RecentLocationRequestPreferenceController;->mRecentLocationApps:Lcom/android/settingslib/location/RecentLocationApps;

    return-void
.end method


# virtual methods
.method createAppPreference(Landroid/content/Context;Lcom/android/settingslib/location/RecentLocationApps$Request;Ljava/util/List;)Landroidx/preference/Preference;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/settingslib/location/RecentLocationApps$Request;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroidx/preference/Preference;"
        }
    .end annotation

    new-instance v0, Lcom/oneplus/settings/ui/OPButtonPreference;

    invoke-direct {v0, p1}, Lcom/oneplus/settings/ui/OPButtonPreference;-><init>(Landroid/content/Context;)V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "-"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    iget-object v1, p2, Lcom/android/settingslib/location/RecentLocationApps$Request;->contentDescription:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/ui/OPButtonPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v1, p2, Lcom/android/settingslib/location/RecentLocationApps$Request;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/ui/OPButtonPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p2, Lcom/android/settingslib/location/RecentLocationApps$Request;->label:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/ui/OPButtonPreference;->setTitle(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/android/settings/location/RecentLocationRequestPreferenceController$PackageEntryClickedListener;

    iget-object v2, p0, Lcom/android/settings/location/RecentLocationRequestPreferenceController;->mFragment:Lcom/android/settings/location/LocationSettings;

    iget-object v3, p2, Lcom/android/settingslib/location/RecentLocationApps$Request;->packageName:Ljava/lang/String;

    iget-object v4, p2, Lcom/android/settingslib/location/RecentLocationApps$Request;->userHandle:Landroid/os/UserHandle;

    invoke-direct {v1, v2, v3, v4}, Lcom/android/settings/location/RecentLocationRequestPreferenceController$PackageEntryClickedListener;-><init>(Lcom/android/settings/dashboard/DashboardFragment;Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    const/4 v1, 0x0

    if-eqz p3, :cond_2

    iget v2, p2, Lcom/android/settingslib/location/RecentLocationApps$Request;->uid:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    iget-object p3, p2, Lcom/android/settingslib/location/RecentLocationApps$Request;->userHandle:Landroid/os/UserHandle;

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p3

    iget-object v2, p0, Lcom/android/settings/location/LocationBasePreferenceController;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v3, p2, Lcom/android/settingslib/location/RecentLocationApps$Request;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3, p3}, Lcom/android/settingslib/applications/ApplicationsState;->getEntry(Ljava/lang/String;I)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-result-object p3

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    const-string v3, "no_control_apps"

    invoke-static {p1, v3, v2}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v2

    iget-object v3, p0, Lcom/android/settings/location/LocationBasePreferenceController;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v4, p2, Lcom/android/settingslib/location/RecentLocationApps$Request;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const p2, 0x7f120df4

    invoke-virtual {v0, p2}, Landroidx/preference/Preference;->setSummary(I)V

    const/4 p2, 0x1

    invoke-virtual {v0, p2}, Lcom/oneplus/settings/ui/OPButtonPreference;->setButtonVisible(Z)V

    invoke-virtual {v0, p2}, Lcom/oneplus/settings/ui/OPButtonPreference;->setButtonEnable(Z)V

    const p2, 0x7f121044

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/oneplus/settings/ui/OPButtonPreference;->setButtonString(Ljava/lang/String;)V

    new-instance p1, Lcom/android/settings/location/RecentLocationRequestPreferenceController$1;

    invoke-direct {p1, p0, p3, v0}, Lcom/android/settings/location/RecentLocationRequestPreferenceController$1;-><init>(Lcom/android/settings/location/RecentLocationRequestPreferenceController;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Lcom/oneplus/settings/ui/OPButtonPreference;)V

    invoke-virtual {v0, p1}, Lcom/oneplus/settings/ui/OPButtonPreference;->setOnButtonClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_1
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "packageHasActiveAdmins:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", mAppsControlDisallowedBySystem:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PrefControllerMixin"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/ui/OPButtonPreference;->setButtonEnable(Z)V

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/ui/OPButtonPreference;->setButtonVisible(Z)V

    iget-object p0, p2, Lcom/android/settingslib/location/RecentLocationApps$Request;->contentDescription:Ljava/lang/CharSequence;

    invoke-virtual {v0, p0}, Lcom/oneplus/settings/ui/OPButtonPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v1}, Lcom/oneplus/settings/ui/OPButtonPreference;->setButtonVisible(Z)V

    :goto_1
    return-object v0
.end method

.method createAppPreference(Landroid/content/Context;)Lcom/android/settings/widget/AppPreference;
    .locals 0

    new-instance p0, Lcom/android/settings/widget/AppPreference;

    invoke-direct {p0, p1}, Lcom/android/settings/widget/AppPreference;-><init>(Landroid/content/Context;)V

    return-object p0
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "recent_location_requests"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/android/settings/location/LocationBasePreferenceController;->mCategoryRecentLocationRequests:Landroidx/preference/PreferenceCategory;

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "recent_location_requests"

    return-object p0
.end method

.method public onLocationModeChanged(IZ)V
    .locals 0

    iget-object p2, p0, Lcom/android/settings/location/LocationBasePreferenceController;->mCategoryRecentLocationRequests:Landroidx/preference/PreferenceCategory;

    iget-object p0, p0, Lcom/android/settings/location/LocationBasePreferenceController;->mLocationEnabler:Lcom/android/settings/location/LocationEnabler;

    invoke-virtual {p0, p1}, Lcom/android/settings/location/LocationEnabler;->isEnabled(I)Z

    move-result p0

    invoke-virtual {p2, p0}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 6

    iget-object v0, p0, Lcom/android/settings/location/LocationBasePreferenceController;->mCategoryRecentLocationRequests:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/location/RecentLocationRequestPreferenceController;->mRecentLocationApps:Lcom/android/settingslib/location/RecentLocationApps;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settingslib/location/RecentLocationApps;->getAppListSorted(Z)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/location/LocationBasePreferenceController;->getCurrentUsingGpsListForUid()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x3

    if-le v3, v4, :cond_0

    :goto_0
    if-ge v1, v4, :cond_2

    iget-object v3, p0, Lcom/android/settings/location/LocationBasePreferenceController;->mCategoryRecentLocationRequests:Landroidx/preference/PreferenceCategory;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settingslib/location/RecentLocationApps$Request;

    invoke-virtual {p0, p1, v5, v2}, Lcom/android/settings/location/RecentLocationRequestPreferenceController;->createAppPreference(Landroid/content/Context;Lcom/android/settingslib/location/RecentLocationApps$Request;Ljava/util/List;)Landroidx/preference/Preference;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/location/RecentLocationApps$Request;

    iget-object v3, p0, Lcom/android/settings/location/LocationBasePreferenceController;->mCategoryRecentLocationRequests:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/settings/location/RecentLocationRequestPreferenceController;->createAppPreference(Landroid/content/Context;Lcom/android/settingslib/location/RecentLocationApps$Request;Ljava/util/List;)Landroidx/preference/Preference;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/settings/location/RecentLocationRequestPreferenceController;->createAppPreference(Landroid/content/Context;)Lcom/android/settings/widget/AppPreference;

    move-result-object p1

    const v0, 0x7f120971

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(I)V

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setSelectable(Z)V

    iget-object p0, p0, Lcom/android/settings/location/LocationBasePreferenceController;->mCategoryRecentLocationRequests:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :cond_2
    return-void
.end method
