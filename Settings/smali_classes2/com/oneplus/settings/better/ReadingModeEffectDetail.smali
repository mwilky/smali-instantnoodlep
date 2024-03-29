.class public Lcom/oneplus/settings/better/ReadingModeEffectDetail;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "ReadingModeEffectDetail.java"


# static fields
.field private static mManager:Lcom/oneplus/settings/better/ReadingModeEffectManager;

.field private static mUid:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLabel:Ljava/lang/CharSequence;

.field private mPackageName:Ljava/lang/String;

.field private mSelectedValue:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    sget v0, Lcom/oneplus/settings/better/ReadingModeEffectDetail;->mUid:I

    return v0
.end method

.method static synthetic access$100(Lcom/oneplus/settings/better/ReadingModeEffectDetail;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/better/ReadingModeEffectDetail;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200()Lcom/oneplus/settings/better/ReadingModeEffectManager;
    .locals 1

    sget-object v0, Lcom/oneplus/settings/better/ReadingModeEffectDetail;->mManager:Lcom/oneplus/settings/better/ReadingModeEffectManager;

    return-object v0
.end method

.method public static getSummary(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Ljava/lang/CharSequence;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0}, Lcom/oneplus/settings/better/ReadingModeEffectManager;->getInstance(Landroid/content/Context;)Lcom/oneplus/settings/better/ReadingModeEffectManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oneplus/settings/better/ReadingModeEffectManager;->getAppEffectSelectValue(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const p1, 0x7f120f65

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    const p1, 0x7f120f69

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const p1, 0x7f120f63

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x270f

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservableDialogFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "package"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/better/ReadingModeEffectDetail;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/better/ReadingModeEffectDetail;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/oneplus/settings/better/ReadingModeEffectDetail;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/better/ReadingModeEffectDetail;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "uid"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    sput p1, Lcom/oneplus/settings/better/ReadingModeEffectDetail;->mUid:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object p1, p0, Lcom/oneplus/settings/better/ReadingModeEffectDetail;->mPackageName:Ljava/lang/String;

    iput-object p1, p0, Lcom/oneplus/settings/better/ReadingModeEffectDetail;->mLabel:Ljava/lang/CharSequence;

    :goto_0
    iget-object p1, p0, Lcom/oneplus/settings/better/ReadingModeEffectDetail;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/oneplus/settings/better/ReadingModeEffectManager;->getInstance(Landroid/content/Context;)Lcom/oneplus/settings/better/ReadingModeEffectManager;

    move-result-object p1

    sput-object p1, Lcom/oneplus/settings/better/ReadingModeEffectDetail;->mManager:Lcom/oneplus/settings/better/ReadingModeEffectManager;

    sget-object p1, Lcom/oneplus/settings/better/ReadingModeEffectDetail;->mManager:Lcom/oneplus/settings/better/ReadingModeEffectManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/oneplus/settings/better/ReadingModeEffectDetail;->mUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/settings/better/ReadingModeEffectDetail;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/oneplus/settings/better/ReadingModeEffectManager;->getAppEffectSelectValue(Ljava/lang/String;)I

    move-result p1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    iput v0, p0, Lcom/oneplus/settings/better/ReadingModeEffectDetail;->mSelectedValue:I

    goto :goto_1

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x1

    iput p1, p0, Lcom/oneplus/settings/better/ReadingModeEffectDetail;->mSelectedValue:I

    goto :goto_1

    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    iput v1, p0, Lcom/oneplus/settings/better/ReadingModeEffectDetail;->mSelectedValue:I

    :cond_2
    :goto_1
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    new-instance p1, Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/oneplus/settings/better/ReadingModeEffectDetail;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/oneplus/settings/better/ReadingModeEffectDetail;->mLabel:Ljava/lang/CharSequence;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f120f6b

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    iget v0, p0, Lcom/oneplus/settings/better/ReadingModeEffectDetail;->mSelectedValue:I

    new-instance v1, Lcom/oneplus/settings/better/ReadingModeEffectDetail$2;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/better/ReadingModeEffectDetail$2;-><init>(Lcom/oneplus/settings/better/ReadingModeEffectDetail;)V

    const v2, 0x7f0300db

    invoke-virtual {p1, v2, v0, v1}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    new-instance v0, Lcom/oneplus/settings/better/ReadingModeEffectDetail$1;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/better/ReadingModeEffectDetail$1;-><init>(Lcom/oneplus/settings/better/ReadingModeEffectDetail;)V

    const p0, 0x7f120113

    invoke-virtual {p1, p0, v0}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    invoke-virtual {p1}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->create()Lcom/oneplus/lib/app/OPAlertDialog;

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
