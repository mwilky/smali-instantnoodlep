.class Lcom/android/settings/applications/manageapplications/ResetAppsHelper$1;
.super Ljava/lang/Object;
.source "ResetAppsHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/manageapplications/ResetAppsHelper;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/manageapplications/ResetAppsHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ResetAppsHelper$1;->this$0:Lcom/android/settings/applications/manageapplications/ResetAppsHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    const-string v0, "miscellaneous"

    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ResetAppsHelper$1;->this$0:Lcom/android/settings/applications/manageapplications/ResetAppsHelper;

    invoke-static {v1}, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->access$000(Lcom/android/settings/applications/manageapplications/ResetAppsHelper;)Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x200

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    const/16 v5, 0x3e7

    const/16 v6, 0x25

    const/4 v7, 0x1

    if-ge v3, v4, :cond_6

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ApplicationInfo;

    :try_start_0
    iget-object v8, p0, Lcom/android/settings/applications/manageapplications/ResetAppsHelper$1;->this$0:Lcom/android/settings/applications/manageapplications/ResetAppsHelper;

    invoke-static {v8}, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->access$100(Lcom/android/settings/applications/manageapplications/ResetAppsHelper;)Landroid/app/INotificationManager;

    move-result-object v8

    iget-object v9, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v10, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-interface {v8, v9, v10, v2}, Landroid/app/INotificationManager;->clearData(Ljava/lang/String;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v8, 0x3

    :try_start_1
    iget-object v9, p0, Lcom/android/settings/applications/manageapplications/ResetAppsHelper$1;->this$0:Lcom/android/settings/applications/manageapplications/ResetAppsHelper;

    invoke-static {v9}, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->access$100(Lcom/android/settings/applications/manageapplications/ResetAppsHelper;)Landroid/app/INotificationManager;

    move-result-object v9

    iget-object v10, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v11, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-interface {v9, v10, v11, v0, v7}, Landroid/app/INotificationManager;->getNotificationChannelForPackage(Ljava/lang/String;ILjava/lang/String;Z)Landroid/app/NotificationChannel;

    move-result-object v9

    if-eqz v9, :cond_1

    iget-object v10, p0, Lcom/android/settings/applications/manageapplications/ResetAppsHelper$1;->this$0:Lcom/android/settings/applications/manageapplications/ResetAppsHelper;

    invoke-static {v10}, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->access$100(Lcom/android/settings/applications/manageapplications/ResetAppsHelper;)Landroid/app/INotificationManager;

    move-result-object v10

    iget-object v11, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v12, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-interface {v10, v11, v12}, Landroid/app/INotificationManager;->onlyHasDefaultChannel(Ljava/lang/String;I)Z

    move-result v10

    if-nez v10, :cond_0

    invoke-virtual {v9}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    :cond_0
    const/16 v10, -0x3e8

    invoke-virtual {v9, v10}, Landroid/app/NotificationChannel;->setImportance(I)V

    iget-object v10, p0, Lcom/android/settings/applications/manageapplications/ResetAppsHelper$1;->this$0:Lcom/android/settings/applications/manageapplications/ResetAppsHelper;

    invoke-static {v10}, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->access$100(Lcom/android/settings/applications/manageapplications/ResetAppsHelper;)Landroid/app/INotificationManager;

    move-result-object v10

    iget-object v11, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v12, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-interface {v10, v11, v12, v9}, Landroid/app/INotificationManager;->updateNotificationChannelForPackage(Ljava/lang/String;ILandroid/app/NotificationChannel;)V

    :cond_1
    iget-object v9, p0, Lcom/android/settings/applications/manageapplications/ResetAppsHelper$1;->this$0:Lcom/android/settings/applications/manageapplications/ResetAppsHelper;

    invoke-static {v9}, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->access$100(Lcom/android/settings/applications/manageapplications/ResetAppsHelper;)Landroid/app/INotificationManager;

    move-result-object v9

    iget-object v10, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v11, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-interface {v9, v10, v11, v7}, Landroid/app/INotificationManager;->setNotificationsEnabledForPackage(Ljava/lang/String;IZ)V

    new-array v9, v7, [I

    aput v6, v9, v2

    invoke-static {v9}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/settings/applications/manageapplications/ResetAppsHelper$1;->this$0:Lcom/android/settings/applications/manageapplications/ResetAppsHelper;

    invoke-static {v6}, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->access$200(Lcom/android/settings/applications/manageapplications/ResetAppsHelper;)Landroid/app/AppOpsManager;

    move-result-object v6

    const/16 v9, 0x3ed

    iget v10, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v11, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v9, v10, v11}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result v6

    if-nez v6, :cond_4

    iget v6, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v5, v6}, Landroid/os/UserHandle;->getUid(II)I

    move-result v5

    iget-object v6, p0, Lcom/android/settings/applications/manageapplications/ResetAppsHelper$1;->this$0:Lcom/android/settings/applications/manageapplications/ResetAppsHelper;

    invoke-static {v6}, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->access$100(Lcom/android/settings/applications/manageapplications/ResetAppsHelper;)Landroid/app/INotificationManager;

    move-result-object v6

    iget-object v9, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v6, v9, v5, v0, v7}, Landroid/app/INotificationManager;->getNotificationChannelForPackage(Ljava/lang/String;ILjava/lang/String;Z)Landroid/app/NotificationChannel;

    move-result-object v6

    if-eqz v6, :cond_3

    iget-object v9, p0, Lcom/android/settings/applications/manageapplications/ResetAppsHelper$1;->this$0:Lcom/android/settings/applications/manageapplications/ResetAppsHelper;

    invoke-static {v9}, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->access$100(Lcom/android/settings/applications/manageapplications/ResetAppsHelper;)Landroid/app/INotificationManager;

    move-result-object v9

    iget-object v10, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v9, v10, v5}, Landroid/app/INotificationManager;->onlyHasDefaultChannel(Ljava/lang/String;I)Z

    move-result v9

    if-nez v9, :cond_2

    invoke-virtual {v6}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    :cond_2
    invoke-virtual {v6, v8}, Landroid/app/NotificationChannel;->setImportance(I)V

    iget-object v9, p0, Lcom/android/settings/applications/manageapplications/ResetAppsHelper$1;->this$0:Lcom/android/settings/applications/manageapplications/ResetAppsHelper;

    invoke-static {v9}, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->access$100(Lcom/android/settings/applications/manageapplications/ResetAppsHelper;)Landroid/app/INotificationManager;

    move-result-object v9

    iget-object v10, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v9, v10, v5, v6}, Landroid/app/INotificationManager;->updateNotificationChannelForPackage(Ljava/lang/String;ILandroid/app/NotificationChannel;)V

    :cond_3
    iget-object v6, p0, Lcom/android/settings/applications/manageapplications/ResetAppsHelper$1;->this$0:Lcom/android/settings/applications/manageapplications/ResetAppsHelper;

    invoke-static {v6}, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->access$100(Lcom/android/settings/applications/manageapplications/ResetAppsHelper;)Landroid/app/INotificationManager;

    move-result-object v6

    iget-object v9, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v6, v9, v5, v7}, Landroid/app/INotificationManager;->setNotificationsEnabledForPackage(Ljava/lang/String;IZ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v5

    invoke-virtual {v5}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_4
    :goto_1
    iget-boolean v5, v4, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/android/settings/applications/manageapplications/ResetAppsHelper$1;->this$0:Lcom/android/settings/applications/manageapplications/ResetAppsHelper;

    invoke-static {v5}, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->access$000(Lcom/android/settings/applications/manageapplications/ResetAppsHelper;)Landroid/content/pm/PackageManager;

    move-result-object v5

    iget-object v6, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v8, :cond_5

    iget-object v5, p0, Lcom/android/settings/applications/manageapplications/ResetAppsHelper$1;->this$0:Lcom/android/settings/applications/manageapplications/ResetAppsHelper;

    invoke-static {v5}, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->access$000(Lcom/android/settings/applications/manageapplications/ResetAppsHelper;)Landroid/content/pm/PackageManager;

    move-result-object v5

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v4, v2, v7}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_6
    :try_start_2
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ResetAppsHelper$1;->this$0:Lcom/android/settings/applications/manageapplications/ResetAppsHelper;

    invoke-static {v0}, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->access$300(Lcom/android/settings/applications/manageapplications/ResetAppsHelper;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/content/pm/IPackageManager;->resetApplicationPreferences(I)V

    new-array v0, v7, [I

    aput v6, v0, v2

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ResetAppsHelper$1;->this$0:Lcom/android/settings/applications/manageapplications/ResetAppsHelper;

    invoke-static {v0}, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->access$300(Lcom/android/settings/applications/manageapplications/ResetAppsHelper;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/content/pm/IPackageManager;->resetApplicationPreferences(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :cond_7
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ResetAppsHelper$1;->this$0:Lcom/android/settings/applications/manageapplications/ResetAppsHelper;

    invoke-static {v0}, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->access$400(Lcom/android/settings/applications/manageapplications/ResetAppsHelper;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->access$500(Lcom/android/settings/applications/manageapplications/ResetAppsHelper;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ResetAppsHelper$1;->this$0:Lcom/android/settings/applications/manageapplications/ResetAppsHelper;

    invoke-static {v0}, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->access$200(Lcom/android/settings/applications/manageapplications/ResetAppsHelper;)Landroid/app/AppOpsManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AppOpsManager;->resetAllModes()V

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ResetAppsHelper$1;->this$0:Lcom/android/settings/applications/manageapplications/ResetAppsHelper;

    invoke-static {v0}, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->access$600(Lcom/android/settings/applications/manageapplications/ResetAppsHelper;)Landroid/net/NetworkPolicyManager;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/net/NetworkPolicyManager;->getUidsWithPolicy(I)[I

    move-result-object v0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    array-length v3, v0

    move v4, v2

    :goto_2
    if-ge v4, v3, :cond_9

    aget v5, v0, v4

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    if-ne v6, v1, :cond_8

    iget-object v6, p0, Lcom/android/settings/applications/manageapplications/ResetAppsHelper$1;->this$0:Lcom/android/settings/applications/manageapplications/ResetAppsHelper;

    invoke-static {v6}, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->access$600(Lcom/android/settings/applications/manageapplications/ResetAppsHelper;)Landroid/net/NetworkPolicyManager;

    move-result-object v6

    invoke-virtual {v6, v5, v2}, Landroid/net/NetworkPolicyManager;->setUidPolicy(II)V

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_9
    sget-boolean v0, Landroid/os/Build$VERSION;->IS_CTA_BUILD:Z

    if-eqz v0, :cond_a

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.oneplus.cta.permission.RESET"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.oneplus.permissionutil"

    const-string v2, "com.oneplus.permissionutil.ResetReceiver"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ResetAppsHelper$1;->this$0:Lcom/android/settings/applications/manageapplications/ResetAppsHelper;

    invoke-static {p0}, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->access$400(Lcom/android/settings/applications/manageapplications/ResetAppsHelper;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_a
    return-void
.end method
