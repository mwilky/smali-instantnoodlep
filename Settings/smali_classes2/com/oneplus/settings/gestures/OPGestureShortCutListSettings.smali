.class public Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;
.super Lcom/oneplus/settings/BaseActivity;
.source "OPGestureShortCutListSettings.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private mAppDrawable:Landroid/graphics/drawable/Drawable;

.field private mApplicationInfo:Landroid/content/pm/ApplicationInfo;

.field private mGestureAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oneplus/settings/gestures/OPGestureAppModel;",
            ">;"
        }
    .end annotation
.end field

.field private mGestureKey:Ljava/lang/String;

.field private mGesturePackage:Ljava/lang/String;

.field private mGestureShortcutListView:Landroid/widget/ListView;

.field private mGestureSummary:Ljava/lang/String;

.field private mGestureUid:I

.field private mOPGestureShortcutsAdapter:Lcom/oneplus/settings/gestures/OPGestureShortcutsAdapter;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mShortcutInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/oneplus/settings/BaseActivity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->mGestureAppList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/oneplus/settings/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d01dc

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "op_gesture_key"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->mGestureKey:Ljava/lang/String;

    const-string v0, "op_gesture_package"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->mGesturePackage:Ljava/lang/String;

    const-string v0, "op_gesture_package_uid"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->mGestureUid:I

    const-string v0, "op_gesture_package_app"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->mTitle:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    iget-object v0, p0, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    :try_start_0
    iget-object p1, p0, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v0, p0, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->mGesturePackage:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p0, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, p0, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v0}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->mAppDrawable:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const p1, 0x7f0a04d0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->mGestureShortcutListView:Landroid/widget/ListView;

    sget-object p1, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    iget-object v0, p0, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->mGestureShortcutListView:Landroid/widget/ListView;

    const v1, 0x7f080585

    const v2, 0x7f080584

    const v3, 0x7f070385

    invoke-static {p1, v0, v1, v2, v3}, Lcom/oneplus/settings/utils/OPUtils;->setListDivider(Landroid/content/Context;Landroid/widget/ListView;III)V

    iget-object p1, p0, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->mGestureShortcutListView:Landroid/widget/ListView;

    invoke-virtual {p1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->mGestureShortcutListView:Landroid/widget/ListView;

    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oneplus/settings/gestures/OPGestureAppModel;

    const-string p2, ";"

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    iget-object p4, p0, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->mGestureKey:Ljava/lang/String;

    const-string p5, "OpenShortcut:"

    invoke-static {p5}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline23(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual {p1}, Lcom/oneplus/settings/gestures/OPGestureAppModel;->getPkgName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/oneplus/settings/gestures/OPGestureAppModel;->getShortCutId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->mGestureUid:I

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p4, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    iget-object p4, p0, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->mGestureKey:Ljava/lang/String;

    const-string p5, "OpenApp:"

    invoke-static {p5}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline23(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual {p1}, Lcom/oneplus/settings/gestures/OPGestureAppModel;->getPkgName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->mGestureUid:I

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p4, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :goto_0
    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 8

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const-string v0, "launcherapps"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherApps;

    iget-object v0, p0, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->mGesturePackage:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/oneplus/lib/app/appcompat/MenuWrapperFactory;->loadShortCuts(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->mShortcutInfo:Ljava/util/List;

    iget-object v0, p0, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->mShortcutInfo:Ljava/util/List;

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->mGestureAppList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    new-instance v0, Lcom/oneplus/settings/gestures/OPGestureAppModel;

    iget-object v1, p0, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->mGesturePackage:Ljava/lang/String;

    iget-object v2, p0, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->mTitle:Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, ""

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/oneplus/settings/gestures/OPGestureAppModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->mAppDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/gestures/OPGestureAppModel;->setAppIcon(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->mGestureAppList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->mShortcutInfo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v1, v3

    :goto_0
    if-ge v1, v0, :cond_3

    iget-object v2, p0, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->mShortcutInfo:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getLongLabel()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getShortLabel()Ljava/lang/CharSequence;

    move-result-object v4

    :cond_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v4

    :cond_2
    new-instance v5, Lcom/oneplus/settings/gestures/OPGestureAppModel;

    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v4, v7, v3}, Lcom/oneplus/settings/gestures/OPGestureAppModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    :try_start_0
    iget-object v4, p0, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->mGesturePackage:Ljava/lang/String;

    invoke-virtual {p0, v4, v3}, Landroid/app/Activity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getIconResourceId()I

    move-result v2

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/oneplus/settings/gestures/OPGestureAppModel;->setAppIcon(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    iget-object v2, p0, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->mGestureAppList:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->mGesturePackage:Ljava/lang/String;

    iget-object v1, p0, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->mGestureKey:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/oneplus/lib/app/appcompat/MenuWrapperFactory;->getGesturePackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->mGestureKey:Ljava/lang/String;

    const-string v2, "OpenApp:"

    invoke-static {v2}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline23(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->mGesturePackage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_4
    iget-object v0, p0, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->mGesturePackage:Ljava/lang/String;

    iget-object v1, p0, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->mGestureKey:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/oneplus/lib/app/appcompat/MenuWrapperFactory;->getShortCutIdByGestureKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/oneplus/lib/app/appcompat/MenuWrapperFactory;->getShortCutsNameByID(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->mGestureSummary:Ljava/lang/String;

    new-instance v0, Lcom/oneplus/settings/gestures/OPGestureShortcutsAdapter;

    iget-object v1, p0, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->mGestureAppList:Ljava/util/List;

    iget-object v2, p0, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->mGestureSummary:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->mTitle:Ljava/lang/String;

    goto :goto_3

    :cond_5
    iget-object v2, p0, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->mGestureSummary:Ljava/lang/String;

    :goto_3
    invoke-direct {v0, p0, v1, v2}, Lcom/oneplus/settings/gestures/OPGestureShortcutsAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->mOPGestureShortcutsAdapter:Lcom/oneplus/settings/gestures/OPGestureShortcutsAdapter;

    iget-object v0, p0, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->mGestureShortcutListView:Landroid/widget/ListView;

    iget-object p0, p0, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->mOPGestureShortcutsAdapter:Lcom/oneplus/settings/gestures/OPGestureShortcutsAdapter;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method
