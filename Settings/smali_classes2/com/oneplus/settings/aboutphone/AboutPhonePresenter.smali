.class public Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;
.super Ljava/lang/Object;
.source "AboutPhonePresenter.java"

# interfaces
.implements Lcom/oneplus/settings/aboutphone/Contract$Presenter;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mDebuggingFeaturesDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

.field private mDebuggingFeaturesDisallowedBySystem:Z

.field private mDevHitCountdown:I

.field private mFragment:Landroidx/fragment/app/Fragment;

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;",
            ">;"
        }
    .end annotation
.end field

.field public mProcessingLastDevHit:Z

.field private final mUm:Landroid/os/UserManager;

.field private mView:Lcom/oneplus/settings/aboutphone/Contract$View;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroidx/fragment/app/Fragment;Lcom/oneplus/settings/aboutphone/Contract$View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mList:Ljava/util/List;

    iput-object p1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mView:Lcom/oneplus/settings/aboutphone/Contract$View;

    iput-object p2, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mFragment:Landroidx/fragment/app/Fragment;

    iget-object p1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    const-string p2, "user"

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mUm:Landroid/os/UserManager;

    iget-object p1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p2

    const-string p3, "no_debugging_features"

    invoke-static {p1, p3, p2}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mDebuggingFeaturesDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    iget-object p1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/android/settingslib/RestrictedLockUtils;->isDevelopmentSettingsEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x7

    :goto_0
    iput p1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mDevHitCountdown:I

    iget-object p1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p2

    invoke-static {p1, p3, p2}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mDebuggingFeaturesDisallowedBySystem:Z

    return-void
.end method

.method private addAwardInfo()V
    .locals 3

    new-instance v0, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;

    invoke-direct {v0}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;-><init>()V

    iget-object v1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    const v2, 0x7f120da1

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setTitle(Ljava/lang/String;)V

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isO2()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    const v2, 0x7f120eea

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setSummary(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    const v2, 0x7f120df5

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setSummary(Ljava/lang/String;)V

    :goto_0
    const v1, 0x7f08045e

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setResIcon(I)V

    const-string v1, "com.oneplus.intent.OPForumContributorsActivity"

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setIntent(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mList:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addProductIntroduce()V
    .locals 3

    new-instance v0, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;

    invoke-direct {v0}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;-><init>()V

    iget-object v1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    const v2, 0x7f120f2f

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setTitle(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    const v2, 0x7f120f31

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setSummary(Ljava/lang/String;)V

    const v1, 0x7f0805c1

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setResIcon(I)V

    const-string v1, "com.oneplus.action.PRODUCT_INFO"

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setIntent(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mList:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public enableDevelopmentSettings()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mDevHitCountdown:I

    iput-boolean v0, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mProcessingLastDevHit:Z

    iget-object v0, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settingslib/RestrictedLockUtils;->setDevelopmentSettingsEnabled(Landroid/content/Context;Z)V

    iget-object v0, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mView:Lcom/oneplus/settings/aboutphone/Contract$View;

    invoke-interface {v0}, Lcom/oneplus/settings/aboutphone/Contract$View;->cancelToast()V

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportXVibrate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mView:Lcom/oneplus/settings/aboutphone/Contract$View;

    invoke-interface {v0}, Lcom/oneplus/settings/aboutphone/Contract$View;->performHapticFeedback()V

    :cond_0
    iget-object p0, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mView:Lcom/oneplus/settings/aboutphone/Contract$View;

    const v0, 0x7f1214b7

    invoke-interface {p0, v0}, Lcom/oneplus/settings/aboutphone/Contract$View;->showLongToast(I)V

    return-void
.end method

.method public onItemClick(I)V
    .locals 5

    iget-object v0, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;

    invoke-virtual {p1}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->getIntent()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_a

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string v0, "com.android.FirmwareVersionDialogFragment"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    const-class p1, Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionSettings;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x270f

    invoke-static {p0, p1, v0}, Lcom/oneplus/settings/utils/OPUtils;->startFragment(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_1
    const-string v0, "build.number"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    :cond_2
    iget-object p1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mUm:Landroid/os/UserManager;

    invoke-virtual {p1}, Landroid/os/UserManager;->isAdminUser()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mUm:Landroid/os/UserManager;

    invoke-virtual {p1}, Landroid/os/UserManager;->isDemoUser()Z

    move-result p1

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/android/settings/Utils;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_4

    return-void

    :cond_4
    iget-object p1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mUm:Landroid/os/UserManager;

    const-string v0, "no_debugging_features"

    invoke-virtual {p1, v0}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mUm:Landroid/os/UserManager;

    invoke-virtual {p1}, Landroid/os/UserManager;->isDemoUser()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/android/settings/Utils;->getDeviceOwnerComponent(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_5

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string v1, "com.android.settings.action.REQUEST_DEBUG_FEATURES"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    iget-object v1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object p0, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_5
    iget-object p1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mDebuggingFeaturesDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    if-eqz p1, :cond_6

    iget-boolean v1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mDebuggingFeaturesDisallowedBySystem:Z

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    invoke-static {v1, p1}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    :cond_6
    iget p1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mDevHitCountdown:I

    if-lez p1, :cond_8

    const/4 v1, 0x1

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mDevHitCountdown:I

    iget p1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mDevHitCountdown:I

    if-nez p1, :cond_7

    iget-boolean v2, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mProcessingLastDevHit:Z

    if-nez v2, :cond_7

    add-int/2addr p1, v1

    iput p1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mDevHitCountdown:I

    new-instance p1, Lcom/android/settings/password/ChooseLockSettingsHelper;

    iget-object v0, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-direct {p1, v0, v1}, Lcom/android/settings/password/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroidx/fragment/app/Fragment;)V

    const/16 v0, 0x64

    iget-object v1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    const v2, 0x7f121747

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/settings/password/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mProcessingLastDevHit:Z

    iget-boolean p1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mProcessingLastDevHit:Z

    if-nez p1, :cond_a

    invoke-virtual {p0}, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->enableDevelopmentSettings()V

    goto :goto_0

    :cond_7
    iget p1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mDevHitCountdown:I

    if-lez p1, :cond_a

    const/4 v2, 0x5

    if-ge p1, v2, :cond_a

    iget-object p1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mView:Lcom/oneplus/settings/aboutphone/Contract$View;

    invoke-interface {p1}, Lcom/oneplus/settings/aboutphone/Contract$View;->cancelToast()V

    iget-object p1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mView:Lcom/oneplus/settings/aboutphone/Contract$View;

    iget-object v2, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100046

    iget p0, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mDevHitCountdown:I

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v0

    invoke-virtual {v2, v3, p0, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/oneplus/settings/aboutphone/Contract$View;->showLongToast(Ljava/lang/String;)V

    goto :goto_0

    :cond_8
    if-gez p1, :cond_a

    iget-object p1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mView:Lcom/oneplus/settings/aboutphone/Contract$View;

    invoke-interface {p1}, Lcom/oneplus/settings/aboutphone/Contract$View;->cancelToast()V

    iget-object p0, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mView:Lcom/oneplus/settings/aboutphone/Contract$View;

    const p1, 0x7f1214b6

    invoke-interface {p0, p1}, Lcom/oneplus/settings/aboutphone/Contract$View;->showLongToast(I)V

    goto :goto_0

    :cond_9
    iget-object p0, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mFragment:Landroidx/fragment/app/Fragment;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    :cond_a
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 20

    move-object/from16 v1, p0

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSM8250Products()Z

    move-result v0

    const-string v2, "ONEPLUS A5000"

    const v3, 0x7f120e77

    const v4, 0x7f120e75

    const v5, 0x7f120e76

    const v6, 0x7f120e73

    const v7, 0x7f120e83

    const-string v8, "ONEPLUS A6000"

    const-string v9, "ONEPLUS A6003"

    const-string v10, "ONEPLUS A5010"

    const/4 v11, 0x1

    if-eqz v0, :cond_0

    goto/16 :goto_4

    :cond_0
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v12, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v12, v7}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v7, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v7, v6}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v6, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v6, v5}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v6, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v6, v4}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v6, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v6, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v11

    :goto_1
    if-eqz v0, :cond_3

    invoke-static {}, Lcom/oneplus/settings/utils/OPThemeUtils;->isSupportMclTheme()Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f080195

    goto/16 :goto_5

    :cond_3
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isHDProject()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isMEARom()Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_4

    :cond_4
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto/16 :goto_6

    :cond_5
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const v0, 0x7f080432

    goto :goto_5

    :cond_6
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const v0, 0x7f080433

    goto :goto_5

    :cond_7
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isOP3()Z

    move-result v0

    if-eqz v0, :cond_8

    const v0, 0x7f080430

    goto :goto_5

    :cond_8
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isOP3T()Z

    move-result v0

    if-eqz v0, :cond_9

    const v0, 0x7f080431

    goto :goto_5

    :cond_9
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0300ad

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    :goto_2
    array-length v6, v0

    if-ge v3, v6, :cond_b

    aget-object v6, v0, v3

    if-eqz v6, :cond_a

    aget-object v6, v0, v3

    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    move v0, v11

    goto :goto_3

    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_b
    const/4 v0, 0x0

    :goto_3
    if-eqz v0, :cond_c

    const v0, 0x7f08043c

    goto :goto_5

    :cond_c
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->is18857Project()Z

    move-result v0

    if-eqz v0, :cond_d

    const v0, 0x7f08042f

    goto :goto_5

    :cond_d
    invoke-static {}, Lcom/oneplus/lib/app/appcompat/MenuWrapperFactory;->isOlder6tProducts()Z

    move-result v0

    if-nez v0, :cond_e

    :goto_4
    const v0, 0x7f080446

    :goto_5
    move v13, v0

    goto :goto_7

    :cond_e
    :goto_6
    const v0, 0x7f080434

    goto :goto_5

    :goto_7
    iget-object v12, v1, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mView:Lcom/oneplus/settings/aboutphone/Contract$View;

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "A60"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v6, "none"

    const-string v7, "A50"

    if-nez v0, :cond_17

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto/16 :goto_8

    :cond_f
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isOP3T()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, v1, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    const v14, 0x7f120c26

    invoke-virtual {v0, v14}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_9

    :cond_10
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isOP3()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, v1, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    const v14, 0x7f120c25

    invoke-virtual {v0, v14}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    :cond_11
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->is18857Project()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, v1, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    const v14, 0x7f120c08

    invoke-virtual {v0, v14}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    :cond_12
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isGuaProject()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, v1, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    const v14, 0x7f120c2b

    invoke-virtual {v0, v14}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    :cond_13
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isHDProject()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isMEARom()Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, v1, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    const v14, 0x7f120e01

    invoke-virtual {v0, v14}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    :cond_14
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isOP_19_2nd()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isMEARom()Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, v1, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    const v14, 0x7f120c22

    invoke-virtual {v0, v14}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    :cond_15
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSM8250Products()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isOnePlusBrand()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, v1, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    const v14, 0x7f120e12

    invoke-virtual {v0, v14}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    :cond_16
    move-object v14, v6

    goto :goto_a

    :cond_17
    :goto_8
    const-string v0, "16 + 20 MP Dual Camera"

    :goto_9
    move-object v14, v0
    
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isOp8()Z

    move-result v0
    
    if-eqz v0, :cond_8pro
    
    const-string v0, "oneplus_in_project_camera_info_op8"

    const-string v14, "string"

    invoke-static {v0, v14}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v14
    
    iget-object v0, v1, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v14}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v14

    :cond_8pro
    :goto_a
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v15, "ONEPLUS A60"

    invoke-virtual {v0, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    const-string v0, "Snapdragon\u2122 845"

    goto/16 :goto_b

    :cond_18
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v15, "ONEPLUS A50"

    invoke-virtual {v0, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    const-string v0, "Snapdragon\u2122 835"

    goto :goto_b

    :cond_19
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isOP3T()Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string v0, "Snapdragon\u2122 821"

    goto :goto_b

    :cond_1a
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isOP3()Z

    move-result v0

    if-eqz v0, :cond_1b

    const-string v0, "Snapdragon\u2122 820"

    goto :goto_b

    :cond_1b
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isGuaProject()Z

    move-result v0

    if-eqz v0, :cond_1c

    const-string v0, "Snapdragon\u2122 855"

    goto :goto_b

    :cond_1c
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isHDProject()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isMEARom()Z

    move-result v0

    if-nez v0, :cond_1d

    iget-object v0, v1, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    const v15, 0x7f120e02

    invoke-virtual {v0, v15}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :cond_1d
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isOP_19_2nd()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isMEARom()Z

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, v1, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    const v15, 0x7f120c23

    invoke-virtual {v0, v15}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :cond_1e
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSM8250Products()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isOnePlusBrand()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, v1, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    const v15, 0x7f120e13

    invoke-virtual {v0, v15}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_b
    move-object v15, v0

    goto :goto_c

    :cond_1f
    move-object v15, v6

    :goto_c
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v5, "A30"

    if-nez v0, :cond_29

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    goto/16 :goto_f

    :cond_20
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, v1, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    const v6, 0x7f120c28

    invoke-virtual {v0, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_10

    :cond_21
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_28

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_22

    goto :goto_e

    :cond_22
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v4, "ONEPLUS A6010"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_27

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v4, "ONEPLUS A6013"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_27

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->is18857Project()Z

    move-result v0

    if-eqz v0, :cond_23

    goto :goto_d

    :cond_23
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isGuaProject()Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, v1, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    const v4, 0x7f120c2c

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    :cond_24
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isHDProject()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isMEARom()Z

    move-result v0

    if-nez v0, :cond_25

    iget-object v0, v1, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    const v4, 0x7f120e03

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    :cond_25
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSM8250Products()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isOnePlusBrand()Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, v1, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    const v4, 0x7f120e14

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    :cond_26
    move-object/from16 v16, v6

    goto :goto_11

    :cond_27
    :goto_d
    iget-object v0, v1, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    const v4, 0x7f120c2a

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    :cond_28
    :goto_e
    iget-object v0, v1, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    const v4, 0x7f120c27

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    :cond_29
    :goto_f
    iget-object v0, v1, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    const v4, 0x7f120c29

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_10
    move-object/from16 v16, v0
    
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isOp8()Z

    move-result v0
    
    if-eqz v0, :cond_8pro2
    
    const-string v0, "oneplus_in_project_screen_info_op8"

    const-string v4, "string"

    invoke-static {v0, v4}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4
    
    iget-object v0, v1, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4
    
    move-object/from16 v16, v4

    :cond_8pro2
    :goto_11
    const-string v0, "/proc/meminfo"

    :try_start_0
    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/io/BufferedReader;

    const/16 v6, 0x2000

    invoke-direct {v0, v4, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    const-string v6, "\\s+"

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_13

    :catch_0
    move-exception v0

    goto :goto_12

    :catch_1
    move-exception v0

    const/4 v4, 0x0

    :goto_12
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_13
    if-eqz v4, :cond_2a

    new-instance v0, Ljava/lang/Float;

    invoke-static {v4}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    const/high16 v6, 0x49800000    # 1048576.0f

    div-float/2addr v4, v6

    invoke-direct {v0, v4}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v0}, Ljava/lang/Float;->doubleValue()D

    move-result-wide v18

    move-object v6, v3

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v0, v3

    goto :goto_14

    :cond_2a
    move-object v6, v3

    const/4 v0, 0x0

    :goto_14
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v17

    invoke-interface/range {v12 .. v17}, Lcom/oneplus/settings/aboutphone/Contract$View;->displayHardWarePreference(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    new-instance v0, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;

    invoke-direct {v0}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;-><init>()V

    iget-object v3, v1, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    const v4, 0x7f120afe

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setTitle(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "oem_oneplus_devicename"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setSummary(Ljava/lang/String;)V

    const v3, 0x7f08049f

    invoke-virtual {v0, v3}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setResIcon(I)V

    const-string v3, "com.oneplus.intent.OPDeviceNameActivity"

    invoke-virtual {v0, v3}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setIntent(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v1, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const v4, 0x7f120eec

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v11, "ro.rf_version"

    const v12, 0x7f120ef5

    const v13, 0x7f120ef3

    const v14, 0x7f120e6f

    if-nez v4, :cond_2b

    invoke-virtual {v0, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2b

    const v4, 0x7f120e75

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2b

    invoke-virtual {v0, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2c

    :cond_2b
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isEUVersion()Z

    move-result v4

    if-nez v4, :cond_34

    :cond_2c
    const v4, 0x7f120e7f

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2d

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isOnePlusBrand()Z

    move-result v4

    if-nez v4, :cond_34

    :cond_2d
    const v4, 0x7f120e7a

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2e

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isOnePlusBrand()Z

    move-result v4

    if-nez v4, :cond_34

    :cond_2e
    const v4, 0x7f120eed

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_34

    const v4, 0x7f120ef4

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_34

    const v4, 0x7f120ef0

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_34

    invoke-virtual {v0, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_34

    const-string v4, "ONEPLUS A3003"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2f

    goto :goto_16

    :cond_2f
    const-string v4, "ONEPLUS A3000"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_32

    const-string v4, "ONEPLUS A3010"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_30

    goto :goto_15

    :cond_30
    const v4, 0x7f120e76

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_34

    const v4, 0x7f120e70

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_34

    const v4, 0x7f120e80

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_31

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isOnePlusBrand()Z

    move-result v4

    if-nez v4, :cond_34

    :cond_31
    const v4, 0x7f120e7b

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isOnePlusBrand()Z

    move-result v0

    if-eqz v0, :cond_33

    goto :goto_16

    :cond_32
    :goto_15
    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "Eu"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_34

    const-string v3, "In"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_33

    goto :goto_16

    :cond_33
    const/4 v0, 0x1

    goto :goto_17

    :cond_34
    :goto_16
    const/4 v0, 0x0

    :goto_17
    const-string v3, ""

    if-eqz v0, :cond_4c

    new-instance v0, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;

    invoke-direct {v0}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;-><init>()V

    iget-object v4, v1, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    const v12, 0x7f120f83

    invoke-virtual {v4, v12}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setSummary(Ljava/lang/String;)V

    const v4, 0x7f080457

    invoke-virtual {v0, v4}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setResIcon(I)V

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iget-object v12, v1, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    const v15, 0x7f120e86

    invoke-virtual {v12, v15}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const v12, 0x7f120c79

    const v15, 0x7f12132c

    const-string v16, "com.oneplus.intent.OPAuthenticationInformationSettings"

    if-nez v4, :cond_4a

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4a

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4a

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    goto/16 :goto_1d

    :cond_35
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iget-object v4, v1, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    const v8, 0x7f120e87

    invoke-virtual {v4, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_49

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    goto/16 :goto_1c

    :cond_36
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isOP3()Z

    move-result v2

    if-nez v2, :cond_47

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isOP3T()Z

    move-result v2

    if-eqz v2, :cond_37

    goto/16 :goto_1b

    :cond_37
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iget-object v4, v1, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    const v8, 0x7f120eec

    invoke-virtual {v4, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_46

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iget-object v4, v1, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4, v14}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_46

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iget-object v4, v1, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    const v8, 0x7f120e75

    invoke-virtual {v4, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_46

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iget-object v4, v1, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4, v13}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_46

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iget-object v4, v1, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    const v8, 0x7f120eee

    invoke-virtual {v4, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_46

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iget-object v4, v1, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    const v8, 0x7f120ef1

    invoke-virtual {v4, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_46

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iget-object v4, v1, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    const v8, 0x7f120ef5

    invoke-virtual {v4, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_46

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iget-object v4, v1, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    const v8, 0x7f120eef

    invoke-virtual {v4, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isO2()Z

    move-result v2

    if-nez v2, :cond_46

    :cond_38
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iget-object v4, v1, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    const v9, 0x7f120ef7

    invoke-virtual {v4, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_39

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iget-object v4, v1, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    const v9, 0x7f120e77

    invoke-virtual {v4, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_39

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iget-object v4, v1, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    const v9, 0x7f120e72

    invoke-virtual {v4, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_39

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iget-object v4, v1, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    const v9, 0x7f120e71

    invoke-virtual {v4, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_39

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iget-object v4, v1, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    const v9, 0x7f120e83

    invoke-virtual {v4, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_39

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iget-object v4, v1, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    const v9, 0x7f120e84

    invoke-virtual {v4, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    :cond_39
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isMEARom()Z

    move-result v2

    if-eqz v2, :cond_46

    :cond_3a
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iget-object v4, v1, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    const v9, 0x7f120e82

    invoke-virtual {v4, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isOnePlusBrand()Z

    move-result v2

    if-nez v2, :cond_46

    :cond_3b
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iget-object v4, v1, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    const v9, 0x7f120e81

    invoke-virtual {v4, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isOnePlusBrand()Z

    move-result v2

    if-nez v2, :cond_46

    :cond_3c
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iget-object v4, v1, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    const v9, 0x7f120e85

    invoke-virtual {v4, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3d

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isOnePlusBrand()Z

    move-result v2

    if-nez v2, :cond_46

    :cond_3d
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iget-object v4, v1, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    const v9, 0x7f120e7c

    invoke-virtual {v4, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isOnePlusBrand()Z

    move-result v2

    if-eqz v2, :cond_3e

    goto/16 :goto_1a

    :cond_3e
    iget-object v2, v1, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const v9, 0x7f120eeb

    invoke-virtual {v2, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_44

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const v9, 0x7f120ef2

    invoke-virtual {v2, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_44

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3f

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isO2()Z

    move-result v4

    if-eqz v4, :cond_44

    :cond_3f
    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const v8, 0x7f120e73

    invoke-virtual {v2, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_40

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isMEARom()Z

    move-result v4

    if-eqz v4, :cond_44

    :cond_40
    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const v8, 0x7f120e6d

    invoke-virtual {v2, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_41

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isMEARom()Z

    move-result v4

    if-eqz v4, :cond_44

    :cond_41
    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const v8, 0x7f120e78

    invoke-virtual {v2, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_42

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isOnePlusBrand()Z

    move-result v4

    if-nez v4, :cond_44

    :cond_42
    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const v8, 0x7f120e7d

    invoke-virtual {v2, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_43

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isOnePlusBrand()Z

    move-result v2

    if-eqz v2, :cond_43

    goto :goto_18

    :cond_43
    const/4 v2, 0x0

    goto :goto_19

    :cond_44
    :goto_18
    const/4 v2, 0x1

    :goto_19
    if-eqz v2, :cond_45

    iget-object v2, v1, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v12}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1f

    :cond_45
    move-object v2, v3

    move-object v4, v2

    goto :goto_20

    :cond_46
    :goto_1a
    iget-object v2, v1, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v15}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1e

    :cond_47
    :goto_1b
    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "Am"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_48

    iget-object v2, v1, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v15}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1e

    :cond_48
    iget-object v2, v1, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v12}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1f

    :cond_49
    :goto_1c
    iget-object v2, v1, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v15}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1e

    :cond_4a
    :goto_1d
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isO2()Z

    move-result v2

    if-eqz v2, :cond_4b

    iget-object v2, v1, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v15}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_1e
    const-string v4, "android.settings.SHOW_REGULATORY_INFO"

    goto :goto_20

    :cond_4b
    iget-object v2, v1, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v12}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_1f
    move-object/from16 v4, v16

    :goto_20
    invoke-virtual {v0, v2}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setTitle(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setIntent(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4c
    new-instance v0, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;

    invoke-direct {v0}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;-><init>()V

    iget-object v2, v1, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    const v4, 0x7f12076e

    invoke-virtual {v2, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setTitle(Ljava/lang/String;)V

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setSummary(Ljava/lang/String;)V

    const v2, 0x7f080454

    invoke-virtual {v0, v2}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setResIcon(I)V

    const-string v2, "com.android.FirmwareVersionDialogFragment"

    invoke-virtual {v0, v2}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setIntent(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSM8X50Products()Z

    move-result v0

    const-string v2, "ro.rom.version"

    const v4, 0x7f1205f3

    if-nez v0, :cond_4e

    new-instance v0, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;

    invoke-direct {v0}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;-><init>()V

    const/4 v8, 0x1

    new-array v9, v8, [I

    const/4 v10, 0x0

    aput v8, v9, v10

    invoke-static {v9}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v9

    if-eqz v9, :cond_4d

    const v9, 0x7f0805b0

    iget-object v10, v1, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f120f15

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    iget-object v11, v1, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v11}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string v12, "ro.oxygen.version"

    invoke-static {v12, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "O2"

    const-string v13, "O\u2082"

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    goto :goto_21

    :cond_4d
    const v9, 0x7f0804c4

    iget-object v10, v1, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f120e0f

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, "H\u2082"

    const-string v12, "H2"

    invoke-virtual {v10, v12, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    iget-object v13, v1, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v13}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v2, v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v12, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    :goto_21
    invoke-virtual {v0, v10}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setTitle(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setSummary(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setResIcon(I)V

    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setIntent(Ljava/lang/String;)V

    iget-object v9, v1, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mList:Ljava/util/List;

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_22

    :cond_4e
    const/4 v8, 0x1

    :goto_22
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportUss()Z

    move-result v0

    const-string v9, "build.number"

    if-nez v0, :cond_50

    new-instance v0, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;

    invoke-direct {v0}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;-><init>()V

    iget-object v10, v1, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    const v11, 0x7f1203d2

    invoke-virtual {v10, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setTitle(Ljava/lang/String;)V

    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v10

    sget-object v11, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSM8X50Products()Z

    move-result v11

    if-eqz v11, :cond_4f

    iget-object v10, v1, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    :cond_4f
    invoke-virtual {v0, v10}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setSummary(Ljava/lang/String;)V

    const v10, 0x7f08060a

    invoke-virtual {v0, v10}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setResIcon(I)V

    invoke-virtual {v0, v9}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setIntent(Ljava/lang/String;)V

    iget-object v10, v1, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mList:Ljava/util/List;

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_50
    new-instance v0, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;

    invoke-direct {v0}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;-><init>()V

    iget-object v10, v1, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    const v11, 0x7f120ace

    invoke-virtual {v10, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setTitle(Ljava/lang/String;)V

    const v10, 0x7f0805a6

    invoke-virtual {v0, v10}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setResIcon(I)V

    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setIntent(Ljava/lang/String;)V

    sget-object v10, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v10, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_52

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_52

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_51

    goto :goto_23

    :cond_51
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setSummary(Ljava/lang/String;)V

    goto :goto_24

    :cond_52
    :goto_23
    const-string v5, "ONEPLUS\n"

    invoke-static {v5}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline23(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v7, "ONEPLUS "

    invoke-virtual {v6, v7, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setSummary(Ljava/lang/String;)V

    :goto_24
    iget-object v3, v1, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;

    invoke-direct {v0}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;-><init>()V

    iget-object v3, v1, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    const v5, 0x7f12094f

    invoke-virtual {v3, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setTitle(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    const v5, 0x7f120e34

    invoke-virtual {v3, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setSummary(Ljava/lang/String;)V

    const v3, 0x7f080583

    invoke-virtual {v0, v3}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setResIcon(I)V

    const-string v3, "com.oneplus.intent.LegalSettingsActivity"

    invoke-virtual {v0, v3}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setIntent(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;

    invoke-direct {v0}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;-><init>()V

    iget-object v3, v1, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    const v5, 0x7f1205f8

    invoke-virtual {v3, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setTitle(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    const v5, 0x7f121043

    invoke-virtual {v3, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setSummary(Ljava/lang/String;)V

    const v3, 0x7f080611

    invoke-virtual {v0, v3}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setResIcon(I)V

    const-string v3, "com.oneplus.intent.MyDeviceInfoFragmentActivity"

    invoke-virtual {v0, v3}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setIntent(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/oneplus/lib/app/appcompat/MenuWrapperFactory;->isOlder6tProducts()Z

    move-result v0

    if-nez v0, :cond_57

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isO2()Z

    move-result v0

    if-nez v0, :cond_56

    iget-object v0, v1, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->isSurportProductInfo16859(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_54

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "oem.product_info_dumpling.support"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_53

    goto :goto_25

    :cond_53
    const/4 v8, 0x0

    :cond_54
    :goto_25
    if-nez v8, :cond_55

    goto :goto_26

    :cond_55
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->addProductIntroduce()V

    invoke-direct/range {p0 .. p0}, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->addAwardInfo()V

    goto :goto_27

    :cond_56
    :goto_26
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->addAwardInfo()V

    goto :goto_27

    :cond_57
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isO2()Z

    move-result v0

    if-nez v0, :cond_58

    invoke-direct/range {p0 .. p0}, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->addProductIntroduce()V

    :cond_58
    :goto_27
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportUss()Z

    move-result v0

    if-nez v0, :cond_59

    invoke-static {}, Lcom/oneplus/lib/app/appcompat/MenuWrapperFactory;->isUsvMode()Z

    move-result v0

    if-eqz v0, :cond_62

    :cond_59
    new-instance v0, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;

    invoke-direct {v0}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;-><init>()V

    iget-object v3, v1, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    const v5, 0x7f1210fe

    invoke-virtual {v3, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setTitle(Ljava/lang/String;)V

    const v3, 0x7f08060b

    invoke-virtual {v0, v3}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setResIcon(I)V

    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v3

    sget-object v5, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSM8X50Products()Z

    move-result v5

    const-string v6, "hw_version_ui"

    const-string v7, "ro.boot.hw_version"

    if-eqz v5, :cond_5e

    iget-object v3, v1, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/oneplus/lib/app/appcompat/MenuWrapperFactory;->isUsvMode()Z

    move-result v5

    if-eqz v5, :cond_5d

    const-string v2, "ro.build.display.id"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5c

    const-string v5, "_"

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_5c

    array-length v10, v8

    const/4 v11, 0x3

    if-ne v10, v11, :cond_5c

    iget-object v2, v1, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    iget-object v2, v1, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_5a

    move-object v2, v3

    :cond_5a
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5b

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/16 v10, 0xd

    if-le v3, v10, :cond_5b

    const-string v2, "15"

    :cond_5b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v10, 0x0

    aget-object v10, v8, v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x2

    aget-object v2, v8, v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_28

    :cond_5c
    move-object v3, v2

    goto :goto_28

    :cond_5d
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_5e
    :goto_28
    invoke-virtual {v0, v3}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setSummary(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setIntent(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;

    invoke-direct {v0}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;-><init>()V

    iget-object v2, v1, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    const v3, 0x7f1210fd

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setTitle(Ljava/lang/String;)V

    const v2, 0x7f0804c5

    invoke-virtual {v0, v2}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setResIcon(I)V

    iget-object v2, v1, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5f

    goto :goto_29

    :cond_5f
    move-object v2, v3

    :goto_29
    invoke-static {}, Lcom/oneplus/lib/app/appcompat/MenuWrapperFactory;->isUsvMode()Z

    move-result v3

    if-eqz v3, :cond_61

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0xd

    if-gt v3, v4, :cond_60

    invoke-virtual {v0, v2}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setSummary(Ljava/lang/String;)V

    goto :goto_2a

    :cond_60
    const-string v2, "15"

    invoke-virtual {v0, v2}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setSummary(Ljava/lang/String;)V

    goto :goto_2a

    :cond_61
    invoke-virtual {v0, v2}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setSummary(Ljava/lang/String;)V

    :goto_2a
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setIntent(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_62
    iget-object v0, v1, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mView:Lcom/oneplus/settings/aboutphone/Contract$View;

    iget-object v1, v1, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mList:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/oneplus/settings/aboutphone/Contract$View;->displaySoftWarePreference(Ljava/util/List;)V

    return-void
.end method
