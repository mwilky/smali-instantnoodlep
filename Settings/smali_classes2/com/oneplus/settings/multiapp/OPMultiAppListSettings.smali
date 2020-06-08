.class public Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;
.super Lcom/oneplus/settings/BaseActivity;
.source "OPMultiAppListSettings.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$CreateManagedProfileTask;,
        Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$PackageDeleteObserver;
    }
.end annotation


# instance fields
.field private mAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oneplus/settings/better/OPAppModel;",
            ">;"
        }
    .end annotation
.end field

.field private mAppListView:Landroid/widget/ListView;

.field private mAppOpsManager:Landroid/app/AppOpsManager;

.field private mContext:Landroid/content/Context;

.field private mCreateManagedProfileTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask<",
            "Ljava/lang/String;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mFirstLoad:Z

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mInitPosition:I

.field private mInstallMultiApphandler:Landroid/os/Handler;

.field private mIsInCreating:Z

.field private mIsWarnDialogShowing:Z

.field private mLoadingContainer:Landroid/view/View;

.field private mLoadingHelper:Lcom/oneplus/lib/util/loading/LoadingHelper;

.field private mManagedProfileOrUserInfo:Landroid/content/pm/UserInfo;

.field private mNeedReloadData:Z

.field private mOPApplicationLoader:Lcom/oneplus/settings/apploader/OPApplicationLoader;

.field private mOPMultiAppAdapter:Lcom/oneplus/settings/multiapp/OPMultiAppAdapter;

.field private final mPackageBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mRefreshUIHandler:Landroid/os/Handler;

.field private mUserManager:Landroid/os/UserManager;

.field private mVibratePattern:[J

.field private mVibrator:Landroid/os/Vibrator;

.field private mWarnDialog:Landroid/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com.oneplus.settings.multiapp/com.oneplus.settings.multiapp.OPBasicDeviceAdminReceiver"

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/oneplus/settings/BaseActivity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mAppList:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mNeedReloadData:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mFirstLoad:Z

    iput-boolean v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mIsWarnDialogShowing:Z

    iput-boolean v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mIsInCreating:Z

    new-instance v0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$1;-><init>(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$2;-><init>(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mRefreshUIHandler:Landroid/os/Handler;

    new-instance v0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$9;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$9;-><init>(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)V

    iput-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mPackageBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)Lcom/oneplus/settings/multiapp/OPMultiAppAdapter;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mOPMultiAppAdapter:Lcom/oneplus/settings/multiapp/OPMultiAppAdapter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)Lcom/oneplus/settings/apploader/OPApplicationLoader;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mOPApplicationLoader:Lcom/oneplus/settings/apploader/OPApplicationLoader;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mIsWarnDialogShowing:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;I)V
    .locals 9

    iget-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mAppListView:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/better/OPAppModel;

    iget-object v1, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mInstallMultiApphandler:Landroid/os/Handler;

    add-int/lit8 v2, p1, 0x58

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {v0}, Lcom/oneplus/settings/better/OPAppModel;->getPkgName()Ljava/lang/String;

    move-result-object v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeMultiApp ,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OPMultiAppListSettings"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mManagedProfileOrUserInfo:Landroid/content/pm/UserInfo;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "package"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v3

    :try_start_0
    new-instance v6, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$PackageDeleteObserver;

    const/4 v1, 0x0

    invoke-direct {v6, p0, v1}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$PackageDeleteObserver;-><init>(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$1;)V

    const/4 v5, -0x1

    iget-object v1, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mManagedProfileOrUserInfo:Landroid/content/pm/UserInfo;

    iget v7, v1, Landroid/content/pm/UserInfo;->id:I

    const/4 v8, 0x0

    invoke-interface/range {v3 .. v8}, Landroid/content/pm/IPackageManager;->deletePackageAsUser(Ljava/lang/String;ILandroid/content/pm/IPackageDeleteObserver;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    iget-object v1, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mOPMultiAppAdapter:Lcom/oneplus/settings/multiapp/OPMultiAppAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/oneplus/settings/multiapp/OPMultiAppAdapter;->setSelected(IZ)V

    iget-object p1, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mAppOpsManager:Landroid/app/AppOpsManager;

    const/16 v1, 0x3ed

    invoke-virtual {v0}, Lcom/oneplus/settings/better/OPAppModel;->getUid()I

    move-result v2

    invoke-virtual {v0}, Lcom/oneplus/settings/better/OPAppModel;->getPkgName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    invoke-virtual {v0}, Lcom/oneplus/settings/better/OPAppModel;->getPkgName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Lcom/oneplus/settings/better/OPAppModel;->getUid()I

    move-result v0

    invoke-static {p0, p1, v0, v4}, Lcom/oneplus/settings/utils/OPUtils;->notifyMultiPackageRemoved(Landroid/content/Context;Ljava/lang/String;IZ)V

    return-void
.end method

.method static synthetic access$1300(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)Landroid/os/UserManager;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mUserManager:Landroid/os/UserManager;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)Landroid/content/pm/UserInfo;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mManagedProfileOrUserInfo:Landroid/content/pm/UserInfo;

    return-object p0
.end method

.method static synthetic access$1402(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;Landroid/content/pm/UserInfo;)Landroid/content/pm/UserInfo;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mManagedProfileOrUserInfo:Landroid/content/pm/UserInfo;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mManagedProfileOrUserInfo:Landroid/content/pm/UserInfo;

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    iget-object v1, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mUserManager:Landroid/os/UserManager;

    const v2, 0x7f120e74

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/UserManager;->setUserName(ILjava/lang/String;)V

    iget-object v1, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, v0}, Landroid/os/UserManager;->setUserEnabled(I)V

    iget-object v1, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, v0}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MANAGED_PROFILE_ADDED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, v0}, Landroid/os/UserHandle;-><init>(I)V

    const-string v0, "android.intent.extra.USER"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/high16 v0, 0x50000000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/os/UserHandle;

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {v3, v1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    :try_start_0
    iget-object p0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mManagedProfileOrUserInfo:Landroid/content/pm/UserInfo;

    iget p0, p0, Landroid/content/pm/UserInfo;->id:I

    invoke-interface {v0, p0}, Landroid/app/IActivityManager;->startUserInBackground(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method static synthetic access$1600(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)Lcom/oneplus/lib/util/loading/LoadingHelper;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mLoadingHelper:Lcom/oneplus/lib/util/loading/LoadingHelper;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)I
    .locals 0

    iget p0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mInitPosition:I

    return p0
.end method

.method static synthetic access$1800(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;I)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mAppListView:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/better/OPAppModel;

    invoke-direct {p0, p1}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->refreshList1(I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;I)Lcom/oneplus/settings/better/OPAppModel;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mAppListView:Landroid/widget/ListView;

    invoke-virtual {p0, p1}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oneplus/settings/better/OPAppModel;

    return-object p0
.end method

.method static synthetic access$200(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mAppList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mLoadingHelper:Lcom/oneplus/lib/util/loading/LoadingHelper;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$8;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$8;-><init>(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)V

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/util/loading/LoadingHelper;->finishShowProgress(Lcom/oneplus/lib/util/loading/LoadingHelper$FinishShowCallback;)V

    :cond_0
    return-void
.end method

.method static synthetic access$2102(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mIsInCreating:Z

    return p1
.end method

.method static synthetic access$2202(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mNeedReloadData:Z

    return p1
.end method

.method static synthetic access$300(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)Landroid/widget/ListView;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mAppListView:Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)Landroid/app/AppOpsManager;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mAppOpsManager:Landroid/app/AppOpsManager;

    return-object p0
.end method

.method static synthetic access$500(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$600(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;Ljava/lang/String;Lcom/oneplus/settings/better/OPAppModel;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->installMultiApp(Ljava/lang/String;Lcom/oneplus/settings/better/OPAppModel;)V

    return-void
.end method

.method static synthetic access$700(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mRefreshUIHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$800(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)Landroid/app/ProgressDialog;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method private installMultiApp(Ljava/lang/String;Lcom/oneplus/settings/better/OPAppModel;)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "installMultiApp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "OPMultiAppListSettings"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mManagedProfileOrUserInfo:Landroid/content/pm/UserInfo;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, p1, v0}, Landroid/content/pm/PackageManager;->installExistingPackageAsUser(Ljava/lang/String;I)I

    move-result v0

    const/16 v3, -0x6f

    if-eq v0, v3, :cond_3

    const/4 v3, -0x3

    if-eq v0, v3, :cond_2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Could not install mobile device management app on managed profile. Unknown status: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "success"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mAppOpsManager:Landroid/app/AppOpsManager;

    const/16 v0, 0x3ed

    invoke-virtual {p2}, Lcom/oneplus/settings/better/OPAppModel;->getUid()I

    move-result v1

    invoke-virtual {p2}, Lcom/oneplus/settings/better/OPAppModel;->getPkgName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p1, v0, v1, v3, v4}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    invoke-virtual {p2}, Lcom/oneplus/settings/better/OPAppModel;->getPkgName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/oneplus/settings/better/OPAppModel;->getUid()I

    move-result p2

    invoke-static {p0, p1, p2, v4}, Lcom/oneplus/settings/utils/OPUtils;->notifyMultiPackageRemoved(Landroid/content/Context;Ljava/lang/String;IZ)V

    goto :goto_0

    :cond_2
    const-string p0, "Could not install mobile device management app on managed profile because the package could not be found"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string p0, "Could not install mobile device management app on managed profile because the user is restricted"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "This should not happen."

    invoke-static {v2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private refreshList1(I)V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mOPMultiAppAdapter:Lcom/oneplus/settings/multiapp/OPMultiAppAdapter;

    invoke-virtual {v0, p1}, Lcom/oneplus/settings/multiapp/OPMultiAppAdapter;->getSelected(I)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_0

    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    add-int/lit8 v2, p1, 0x58

    iput v2, v1, Landroid/os/Message;->what:I

    iput p1, v1, Landroid/os/Message;->arg1:I

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mInstallMultiApphandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f120e76

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f120be3

    new-instance v3, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$6;

    invoke-direct {v3, p0, p1}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$6;-><init>(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;I)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f1203ef

    new-instance v2, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$5;

    invoke-direct {v2, p0}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$5;-><init>(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)V

    invoke-virtual {p1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mWarnDialog:Landroid/app/AlertDialog;

    iget-object p1, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mWarnDialog:Landroid/app/AlertDialog;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mWarnDialog:Landroid/app/AlertDialog;

    new-instance v0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$7;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$7;-><init>(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)V

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-boolean p1, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mIsWarnDialogShowing:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mWarnDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    iput-boolean v1, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mIsWarnDialogShowing:Z

    :cond_2
    :goto_0
    return-void
.end method

.method private startLoadData()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mOPApplicationLoader:Lcom/oneplus/settings/apploader/OPApplicationLoader;

    const/16 v1, 0x3ed

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/apploader/OPApplicationLoader;->loadSelectedGameOrReadAppMap(I)Ljava/util/Map;

    iget-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mOPApplicationLoader:Lcom/oneplus/settings/apploader/OPApplicationLoader;

    iget-object p0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p0}, Lcom/oneplus/settings/apploader/OPApplicationLoader;->initData(ILandroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public getEnabledString(Lcom/oneplus/settings/better/OPAppModel;)Ljava/lang/String;
    .locals 2

    const v0, 0x7f120e7b

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/oneplus/settings/better/OPAppModel;->getLabel()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/oneplus/settings/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d017a

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    iput-object p0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportXVibrate()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "vibrator"

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Vibrator;

    iput-object p1, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mVibrator:Landroid/os/Vibrator;

    :cond_0
    const-string p1, "package"

    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    const-string v0, "account"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/AccountManager;

    const-string v0, "user"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mUserManager:Landroid/os/UserManager;

    const-string v0, "appops"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    new-instance v0, Lcom/oneplus/settings/apploader/OPApplicationLoader;

    iget-object v1, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget-object v2, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-direct {v0, p0, v1, v2}, Lcom/oneplus/settings/apploader/OPApplicationLoader;-><init>(Landroid/content/Context;Landroid/app/AppOpsManager;Landroid/content/pm/PackageManager;)V

    iput-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mOPApplicationLoader:Lcom/oneplus/settings/apploader/OPApplicationLoader;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "install-multiapp-handler-thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mHandlerThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$3;

    iget-object v1, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$3;-><init>(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mInstallMultiApphandler:Landroid/os/Handler;

    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    const v0, 0x7f0a04b2

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mAppListView:Landroid/widget/ListView;

    new-instance v0, Lcom/oneplus/settings/multiapp/OPMultiAppAdapter;

    iget-object v1, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mAppList:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/oneplus/settings/multiapp/OPMultiAppAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mOPMultiAppAdapter:Lcom/oneplus/settings/multiapp/OPMultiAppAdapter;

    iget-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mAppListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mOPMultiAppAdapter:Lcom/oneplus/settings/multiapp/OPMultiAppAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mAppListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const v0, 0x7f0a03c9

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mLoadingContainer:Landroid/view/View;

    iget-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mLoadingContainer:Landroid/view/View;

    const v1, 0x7f0a03cb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$4;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$4;-><init>(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)V

    iput-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mLoadingHelper:Lcom/oneplus/lib/util/loading/LoadingHelper;

    iget-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mOPApplicationLoader:Lcom/oneplus/settings/apploader/OPApplicationLoader;

    iget-object v1, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mLoadingContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/apploader/OPApplicationLoader;->setmLoadingContainer(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->startLoadData()V

    iget-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUserHandle()I

    move-result v0

    iget-object v1, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    iget v3, v2, Landroid/content/pm/UserInfo;->id:I

    const/16 v4, 0x3e7

    if-eq v3, v4, :cond_2

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v4, v3}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    if-ne v3, v0, :cond_1

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    :goto_1
    iput-object v2, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mManagedProfileOrUserInfo:Landroid/content/pm/UserInfo;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mPackageBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mPackageBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object p0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/os/HandlerThread;->quit()Z

    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const-string p1, "Oneplus multi app list item click:"

    invoke-static {p1}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline23(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean p2, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mIsInCreating:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "OPMultiAppListSettings"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/oneplus/lib/app/appcompat/MenuWrapperFactory;->systemVibrateEnabled1(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mVibrator:Landroid/os/Vibrator;

    const/16 p2, 0x3eb

    invoke-static {p0, p1, p2}, Lcom/oneplus/lib/app/appcompat/MenuWrapperFactory;->getVibratorScenePattern1(Landroid/content/Context;Landroid/os/Vibrator;I)[J

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mVibratePattern:[J

    iget-object p1, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mVibratePattern:[J

    iget-object p2, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mVibrator:Landroid/os/Vibrator;

    invoke-static {p1, p2}, Lcom/oneplus/lib/app/appcompat/MenuWrapperFactory;->vibrateIfNeeded1([JLandroid/os/Vibrator;)V

    :cond_0
    iget-boolean p1, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mIsInCreating:Z

    if-eqz p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mManagedProfileOrUserInfo:Landroid/content/pm/UserInfo;

    if-nez p1, :cond_2

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mIsInCreating:Z

    iput p3, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mInitPosition:I

    new-instance p2, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$CreateManagedProfileTask;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$CreateManagedProfileTask;-><init>(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$1;)V

    iput-object p2, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mCreateManagedProfileTask:Landroid/os/AsyncTask;

    iget-object p2, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mLoadingHelper:Lcom/oneplus/lib/util/loading/LoadingHelper;

    invoke-virtual {p2}, Lcom/oneplus/lib/util/loading/LoadingHelper;->beginShowProgress()V

    iget-object p2, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mCreateManagedProfileTask:Landroid/os/AsyncTask;

    new-array p1, p1, [Ljava/lang/String;

    const/4 p3, 0x0

    const p4, 0x7f120e74

    invoke-virtual {p0, p4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, p1, p3

    invoke-virtual {p2, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mAppListView:Landroid/widget/ListView;

    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oneplus/settings/better/OPAppModel;

    invoke-direct {p0, p3}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->refreshList1(I)V

    :goto_0
    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-boolean v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mNeedReloadData:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mFirstLoad:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mOPApplicationLoader:Lcom/oneplus/settings/apploader/OPApplicationLoader;

    const/16 v2, 0x3ed

    invoke-virtual {v0, v2}, Lcom/oneplus/settings/apploader/OPApplicationLoader;->loadSelectedGameOrReadAppMap(I)Ljava/util/Map;

    iget-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mOPApplicationLoader:Lcom/oneplus/settings/apploader/OPApplicationLoader;

    iget-object v2, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-virtual {v0, v3, v2}, Lcom/oneplus/settings/apploader/OPApplicationLoader;->initData(ILandroid/os/Handler;)V

    iput-boolean v1, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mNeedReloadData:Z

    :cond_0
    iput-boolean v1, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->mFirstLoad:Z

    return-void
.end method
