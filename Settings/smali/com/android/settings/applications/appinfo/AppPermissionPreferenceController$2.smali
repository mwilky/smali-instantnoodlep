.class Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController$2;
.super Ljava/lang/Object;
.source "AppPermissionPreferenceController.java"

# interfaces
.implements Lcom/oneplus/settings/permission/PermissionManager$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;->loadCustomPermission(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController$2;->this$0:Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;

    iput-object p2, p0, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController$2;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPermissionDataObtained(Landroid/util/GlobalPermissionState$PackagePermissionState;)V
    .locals 13

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController$2;->this$0:Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;

    invoke-static {v0}, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;->access$200(Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_c

    iget-object v0, p1, Landroid/util/GlobalPermissionState$PackagePermissionState;->mPermMap:Ljava/util/LinkedHashMap;

    if-nez v0, :cond_0

    goto/16 :goto_6

    :cond_0
    const-string v0, "PermissionManager onPermissionDataObtained permissionState.mPkgName:"

    invoke-static {v0}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline23(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/util/GlobalPermissionState$PackagePermissionState;->mPkgName:Ljava/lang/String;

    const-string v2, "PermissionPrefControl"

    invoke-static {v0, v1, v2}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline45(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p1, Landroid/util/GlobalPermissionState$PackagePermissionState;->mPermMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v3, "CUSTOM_PERMISSION_CONTROL_BLUETOOTH"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "CUSTOM_PERMISSION_CONTROL_WIFI"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {v1}, Lcom/oneplus/settings/permission/CustomPermissionUtils;->isCustomPermission(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/GlobalPermissionState$PermissionState;

    iget-boolean v0, v0, Landroid/util/GlobalPermissionState$PermissionState;->isGranted:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/oneplus/settings/permission/CustomPermissionUtils;->mCustomPermissionToOriginalGroup:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const-string v6, ""

    if-eqz v5, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_1

    :cond_4
    move-object v0, v6

    :goto_1
    iget-object v5, p0, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController$2;->this$0:Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;

    invoke-static {v5}, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;->access$000(Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v7

    const/4 v8, 0x4

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v11, 0x1

    const/4 v12, -0x1

    sparse-switch v7, :sswitch_data_0

    goto :goto_2

    :sswitch_0
    const-string v3, "CUSTOM_PERMISSION_READ_MMS"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v3, 0x0

    goto :goto_3

    :sswitch_1
    const-string v3, "CUSTOM_PERMISSION_CONTROL_READ_BOOKMARKS"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    move v3, v8

    goto :goto_3

    :sswitch_2
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    move v3, v9

    goto :goto_3

    :sswitch_3
    const-string v3, "CUSTOM_PERMISSION_SEND_MMS"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    move v3, v11

    goto :goto_3

    :sswitch_4
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    move v3, v10

    goto :goto_3

    :cond_5
    :goto_2
    move v3, v12

    :goto_3
    if-eqz v3, :cond_9

    if-eq v3, v11, :cond_9

    if-eq v3, v10, :cond_8

    if-eq v3, v9, :cond_7

    if-eq v3, v8, :cond_6

    move v3, v12

    goto :goto_4

    :cond_6
    const v3, 0x7f120510

    goto :goto_4

    :cond_7
    const v3, 0x7f12050f

    goto :goto_4

    :cond_8
    const v3, 0x7f120512

    goto :goto_4

    :cond_9
    const v3, 0x7f120511

    :goto_4
    if-ne v3, v12, :cond_a

    goto :goto_5

    :cond_a
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    :goto_5
    iget-object v3, p0, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController$2;->this$0:Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;

    invoke-static {v3}, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;->access$200(Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CustomPermissionUtils getGroupForCustomPermission affectedGroupName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", permName:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", groupLabel:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_b
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController$2;->this$0:Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;

    invoke-static {p1}, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;->access$000(Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController$2;->val$packageName:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController$2;->this$0:Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;

    iget-object p0, p0, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;->mPermissionCallback:Lcom/android/settingslib/applications/PermissionsSummaryHelper$PermissionsResultCallback;

    invoke-static {p1, v0, p0}, Lcom/android/settingslib/applications/PermissionsSummaryHelper;->getPermissionSummary(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/applications/PermissionsSummaryHelper$PermissionsResultCallback;)V

    return-void

    :cond_c
    :goto_6
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController$2;->this$0:Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;

    invoke-static {p1}, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;->access$000(Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController$2;->val$packageName:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController$2;->this$0:Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;

    iget-object p0, p0, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;->mPermissionCallback:Lcom/android/settingslib/applications/PermissionsSummaryHelper$PermissionsResultCallback;

    invoke-static {p1, v0, p0}, Lcom/android/settingslib/applications/PermissionsSummaryHelper;->getPermissionSummary(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/applications/PermissionsSummaryHelper$PermissionsResultCallback;)V

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x24e97187 -> :sswitch_4
        -0x2115dfe2 -> :sswitch_3
        -0x193e1656 -> :sswitch_2
        0x474ad4d8 -> :sswitch_1
        0x60d9f32c -> :sswitch_0
    .end sparse-switch
.end method

.method public onPermissionDataUpdated(I)V
    .locals 1

    const-string p0, "onPermissionDataUpdated result:"

    const-string v0, "PermissionPrefControl"

    invoke-static {p0, p1, v0}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline31(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public onServiceConnected()V
    .locals 3

    const-string v0, "PermissionManager queryPermissionData packageName:"

    invoke-static {v0}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline23(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController$2;->val$packageName:Ljava/lang/String;

    const-string v2, "PermissionPrefControl"

    invoke-static {v0, v1, v2}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline45(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController$2;->this$0:Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;

    invoke-static {v0}, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;->access$400(Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;)Lcom/oneplus/settings/permission/PermissionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController$2;->this$0:Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;

    invoke-static {v1}, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;->access$000(Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;)Landroid/content/Context;

    move-result-object v1

    iget-object p0, p0, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController$2;->val$packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/oneplus/settings/permission/PermissionManager;->queryPermissionData(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
