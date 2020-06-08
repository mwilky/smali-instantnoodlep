.class public Lcom/oneplus/settings/packageuninstaller/UninstallAppProgressFragment;
.super Landroid/app/Fragment;
.source "UninstallAppProgressFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress$ProgressFragment;


# instance fields
.field private mDeviceManagerButton:Landroid/widget/Button;

.field private mOkButton:Landroid/widget/Button;

.field private mUsersButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;

    iget-object p0, p0, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgressFragment;->mOkButton:Landroid/widget/Button;

    if-ne p1, p0, :cond_0

    if-eqz v0, :cond_0

    const-string p0, "Finished uninstalling pkg: "

    invoke-static {p0}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline23(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v0}, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;->getAppInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "UninstallAppProgressF"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;->setResultAndFinish()V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const p3, 0x7f0d026a

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a00a9

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;

    invoke-virtual {v0}, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;->getAppInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {p3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p3

    invoke-virtual {v0, p3}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, p3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p3

    const v0, 0x7f0a00a2

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f0a00a3

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f0a01fc

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgressFragment;->mDeviceManagerButton:Landroid/widget/Button;

    const p2, 0x7f0a07a4

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgressFragment;->mUsersButton:Landroid/widget/Button;

    iget-object p2, p0, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgressFragment;->mDeviceManagerButton:Landroid/widget/Button;

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setVisibility(I)V

    iget-object p2, p0, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgressFragment;->mDeviceManagerButton:Landroid/widget/Button;

    new-instance v0, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgressFragment$1;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgressFragment$1;-><init>(Lcom/oneplus/settings/packageuninstaller/UninstallAppProgressFragment;)V

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgressFragment;->mUsersButton:Landroid/widget/Button;

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setVisibility(I)V

    iget-object p2, p0, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgressFragment;->mUsersButton:Landroid/widget/Button;

    new-instance p3, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgressFragment$2;

    invoke-direct {p3, p0}, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgressFragment$2;-><init>(Lcom/oneplus/settings/packageuninstaller/UninstallAppProgressFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0a0483

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgressFragment;->mOkButton:Landroid/widget/Button;

    iget-object p2, p0, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgressFragment;->mOkButton:Landroid/widget/Button;

    invoke-virtual {p2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public setDeviceManagerButtonVisible(Z)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgressFragment;->mDeviceManagerButton:Landroid/widget/Button;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method public setUsersButtonVisible(Z)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgressFragment;->mUsersButton:Landroid/widget/Button;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method
