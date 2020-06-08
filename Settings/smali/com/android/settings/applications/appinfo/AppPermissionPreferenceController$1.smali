.class Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController$1;
.super Lcom/android/settingslib/applications/PermissionsSummaryHelper$PermissionsResultCallback;
.source "AppPermissionPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController$1;->this$0:Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;

    invoke-direct {p0}, Lcom/android/settingslib/applications/PermissionsSummaryHelper$PermissionsResultCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPermissionSummaryResult(IIILjava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController$1;->this$0:Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;

    iget-object p1, p1, Lcom/android/settings/applications/appinfo/AppInfoPreferenceControllerBase;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController$1;->this$0:Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;

    invoke-static {p1}, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;->access$000(Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController$1;->this$0:Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;

    invoke-static {v0}, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;->access$100(Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController$1;->this$0:Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;

    invoke-static {v0}, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;->access$100(Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "com.heytap.speechassist"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    if-nez p2, :cond_3

    :cond_2
    move p2, v2

    goto :goto_0

    :cond_3
    move p2, v1

    :goto_0
    if-eqz p2, :cond_4

    const p2, 0x7f121385

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController$1;->this$0:Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;

    iget-object p2, p2, Lcom/android/settings/applications/appinfo/AppInfoPreferenceControllerBase;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p2, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_2

    :cond_4
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, p4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object p4, p0, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController$1;->this$0:Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;

    invoke-static {p4}, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;->access$200(Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;)Ljava/util/List;

    move-result-object p4

    invoke-static {p2, p4}, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;->access$300(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    if-lez p3, :cond_5

    const p4, 0x7f100040

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-virtual {p1, p4, p3, v0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-nez p3, :cond_6

    const p2, 0x7f121384

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_6
    invoke-static {}, Landroid/icu/text/ListFormatter;->getInstance()Landroid/icu/text/ListFormatter;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/icu/text/ListFormatter;->format(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object p1

    :goto_1
    iget-object p2, p0, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController$1;->this$0:Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;

    iget-object p2, p2, Lcom/android/settings/applications/appinfo/AppInfoPreferenceControllerBase;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p2, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    :goto_2
    iget-object p0, p0, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController$1;->this$0:Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;

    iget-object p0, p0, Lcom/android/settings/applications/appinfo/AppInfoPreferenceControllerBase;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method
