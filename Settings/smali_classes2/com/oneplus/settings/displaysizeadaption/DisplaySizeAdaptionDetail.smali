.class public Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "DisplaySizeAdaptionDetail.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static mManager:Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDefault:Landroid/widget/Checkable;

.field private mFullScreen:Landroid/widget/Checkable;

.field private mLabel:Ljava/lang/CharSequence;

.field private mOriginValue:I

.field private mOriginalSize:Landroid/widget/Checkable;

.field private mPackageName:Ljava/lang/String;

.field private mSelectedValue:I

.field private mUid:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method public static getSummary(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Ljava/lang/CharSequence;
    .locals 1

    iget-object p1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {p0}, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->getInstance(Landroid/content/Context;)Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->getAppTypeValue(Ljava/lang/String;)I

    move-result p0

    const p1, 0x7f1205d2

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportScreenCutting()Z

    move-result p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    const p1, 0x7f120d13

    invoke-virtual {p0, p1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {p0, p1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    if-nez p0, :cond_3

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportScreenCutting()Z

    move-result p0

    if-nez p0, :cond_2

    sget-object p0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    const p1, 0x7f120d14

    invoke-virtual {p0, p1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {p0, p1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_3
    sget-object p0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    const p1, 0x7f120c54

    invoke-virtual {p0, p1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private updateViews()V
    .locals 5

    iget-object v0, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;->mFullScreen:Landroid/widget/Checkable;

    iget v1, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;->mSelectedValue:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-interface {v0, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;->mOriginalSize:Landroid/widget/Checkable;

    iget v1, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;->mSelectedValue:I

    if-nez v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-interface {v0, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;->mDefault:Landroid/widget/Checkable;

    iget v1, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;->mSelectedValue:I

    const/4 v4, 0x3

    if-eq v1, v4, :cond_2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_3

    :cond_2
    move v2, v3

    :cond_3
    invoke-interface {v0, v2}, Landroid/widget/Checkable;->setChecked(Z)V

    iget v0, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;->mSelectedValue:I

    if-nez v0, :cond_4

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportScreenCutting()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;->mFullScreen:Landroid/widget/Checkable;

    invoke-interface {p0, v3}, Landroid/widget/Checkable;->setChecked(Z)V

    :cond_4
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x270f

    return p0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 p1, -0x1

    if-ne p2, p1, :cond_2

    iget p1, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;->mSelectedValue:I

    const/4 p2, 0x3

    if-ne p1, p2, :cond_0

    const/4 p1, 0x2

    iput p1, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;->mSelectedValue:I

    :cond_0
    sget-object p1, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;->mManager:Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;

    iget p2, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;->mUid:I

    iget-object v0, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;->mPackageName:Ljava/lang/String;

    iget v1, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;->mSelectedValue:I

    invoke-virtual {p1, p2, v0, v1}, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->setClassApp(ILjava/lang/String;I)V

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportScreenCutting()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    iget p1, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;->mOriginValue:I

    iget p2, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;->mSelectedValue:I

    if-eq p1, p2, :cond_2

    iget-object p0, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f12070b

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_2
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;->mFullScreen:Landroid/widget/Checkable;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    iput p1, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;->mSelectedValue:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;->mOriginalSize:Landroid/widget/Checkable;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    iput p1, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;->mSelectedValue:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;->mDefault:Landroid/widget/Checkable;

    if-ne p1, v0, :cond_2

    const/4 p1, 0x2

    iput p1, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;->mSelectedValue:I

    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;->updateViews()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservableDialogFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "package"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;->mContext:Landroid/content/Context;

    :try_start_0
    iget-object v0, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;->mPackageName:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;->mLabel:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    iput p1, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;->mUid:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object p1, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;->mPackageName:Ljava/lang/String;

    iput-object p1, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;->mLabel:Ljava/lang/CharSequence;

    :goto_0
    iget-object p1, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->getInstance(Landroid/content/Context;)Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;

    move-result-object p1

    sput-object p1, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;->mManager:Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;

    sget-object p1, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;->mManager:Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;

    iget-object v0, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->getAppTypeValue(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;->mSelectedValue:I

    iget p1, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;->mSelectedValue:I

    iput p1, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;->mOriginValue:I

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f1203f6

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f120667

    invoke-virtual {p1, v0, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const p1, 0x7f0d01ad

    invoke-virtual {p0, p1}, Landroid/app/AlertDialog$Builder;->setView(I)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getTargetRequestCode()I

    move-result p0

    const/4 v0, 0x0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p1, p0, v0, v1}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 4

    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableDialogFragment;->onStart()V

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const v1, 0x7f0a0317

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x3

    invoke-virtual {p0, v0, v2}, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;->setup(Landroid/view/View;I)Landroid/widget/Checkable;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;->mDefault:Landroid/widget/Checkable;

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportScreenCutting()Z

    move-result v0

    const v2, 0x7f0a0319

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;->setup(Landroid/view/View;I)Landroid/widget/Checkable;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;->mOriginalSize:Landroid/widget/Checkable;

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const v1, 0x7f0a0318

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;->setup(Landroid/view/View;I)Landroid/widget/Checkable;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;->mFullScreen:Landroid/widget/Checkable;

    invoke-direct {p0}, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;->updateViews()V

    return-void
.end method

.method public setup(Landroid/view/View;I)Landroid/widget/Checkable;
    .locals 2

    const/4 v0, 0x1

    const v1, 0x1020016

    if-ne p2, v0, :cond_1

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportScreenCutting()Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const v1, 0x7f120d13

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const v1, 0x7f1205d2

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const v1, 0x7f120d14

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const v1, 0x7f120c54

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    check-cast p1, Landroid/widget/Checkable;

    return-object p1
.end method
