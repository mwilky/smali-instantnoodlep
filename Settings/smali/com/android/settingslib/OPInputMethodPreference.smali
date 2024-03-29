.class public Lcom/android/settingslib/OPInputMethodPreference;
.super Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;
.source "OPInputMethodPreference.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/OPInputMethodPreference$OnSavePreferenceListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDialog:Lcom/oneplus/lib/app/OPAlertDialog;

.field private final mHasPriorityInSorting:Z

.field private final mImi:Landroid/view/inputmethod/InputMethodInfo;

.field private final mInputMethodSettingValues:Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;

.field private final mIsAllowedByOrganization:Z

.field private final mOnSaveListener:Lcom/android/settingslib/OPInputMethodPreference$OnSavePreferenceListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/settingslib/inputmethod/InputMethodPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settingslib/OPInputMethodPreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;Ljava/lang/CharSequence;ZLcom/android/settingslib/OPInputMethodPreference$OnSavePreferenceListener;)V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0d0216

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setLayoutResource(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settingslib/OPInputMethodPreference;->mDialog:Lcom/oneplus/lib/app/OPAlertDialog;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setPersistent(Z)V

    iput-object p2, p0, Lcom/android/settingslib/OPInputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    iput-boolean p4, p0, Lcom/android/settingslib/OPInputMethodPreference;->mIsAllowedByOrganization:Z

    iput-object p5, p0, Lcom/android/settingslib/OPInputMethodPreference;->mOnSaveListener:Lcom/android/settingslib/OPInputMethodPreference$OnSavePreferenceListener;

    const-string p4, ""

    invoke-virtual {p0, p4}, Landroidx/preference/SwitchPreference;->setSwitchTextOn(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, p4}, Landroidx/preference/SwitchPreference;->setSwitchTextOff(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p4}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodInfo;->getSettingsActivity()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    new-instance p4, Landroid/content/Intent;

    const-string p5, "android.intent.action.MAIN"

    invoke-direct {p4, p5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5, p3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, p4}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    :goto_0
    invoke-static {p1}, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->getInstance(Landroid/content/Context;)Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/OPInputMethodPreference;->mInputMethodSettingValues:Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;

    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodInfo;->isSystem()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {p2}, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeUtil;->isValidNonAuxAsciiCapableIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    iput-boolean v1, p0, Lcom/android/settingslib/OPInputMethodPreference;->mHasPriorityInSorting:Z

    invoke-virtual {p0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    invoke-virtual {p0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;ZZLcom/android/settingslib/OPInputMethodPreference$OnSavePreferenceListener;)V
    .locals 7

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/inputmethod/InputMethodInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/settingslib/OPInputMethodPreference;-><init>(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;Ljava/lang/CharSequence;ZLcom/android/settingslib/OPInputMethodPreference$OnSavePreferenceListener;)V

    if-nez p3, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setWidgetLayoutResource(I)V

    :cond_0
    return-void
.end method

.method private isImeEnabler()Z
    .locals 0

    invoke-virtual {p0}, Landroidx/preference/Preference;->getWidgetLayoutResource()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isTv()Z
    .locals 1

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0xf

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private setCheckedInternal(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/android/settingslib/OPInputMethodPreference;->mOnSaveListener:Lcom/android/settingslib/OPInputMethodPreference$OnSavePreferenceListener;

    invoke-interface {p1, p0}, Lcom/android/settingslib/OPInputMethodPreference$OnSavePreferenceListener;->onSaveInputMethodPreference(Lcom/android/settingslib/OPInputMethodPreference;)V

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method private showDirectBootWarnDialog()V
    .locals 3

    iget-object v0, p0, Lcom/android/settingslib/OPInputMethodPreference;->mDialog:Lcom/oneplus/lib/app/OPAlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/OPInputMethodPreference;->mDialog:Lcom/oneplus/lib/app/OPAlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    invoke-direct {v1, v0}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->setCancelable(Z)Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    const v2, 0x7f120d0a

    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    const v0, 0x104000a

    new-instance v2, Lcom/android/settingslib/-$$Lambda$OPInputMethodPreference$yMl-XX3I3tK-5RiM6_O1-O-FwaI;

    invoke-direct {v2, p0}, Lcom/android/settingslib/-$$Lambda$OPInputMethodPreference$yMl-XX3I3tK-5RiM6_O1-O-FwaI;-><init>(Lcom/android/settingslib/OPInputMethodPreference;)V

    invoke-virtual {v1, v0, v2}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    const/high16 v0, 0x1040000

    new-instance v2, Lcom/android/settingslib/-$$Lambda$OPInputMethodPreference$yH6VYPB5Z40X5PvlMG_brlVWQN0;

    invoke-direct {v2, p0}, Lcom/android/settingslib/-$$Lambda$OPInputMethodPreference$yH6VYPB5Z40X5PvlMG_brlVWQN0;-><init>(Lcom/android/settingslib/OPInputMethodPreference;)V

    invoke-virtual {v1, v0, v2}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    invoke-virtual {v1}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->create()Lcom/oneplus/lib/app/OPAlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/OPInputMethodPreference;->mDialog:Lcom/oneplus/lib/app/OPAlertDialog;

    iget-object p0, p0, Lcom/android/settingslib/OPInputMethodPreference;->mDialog:Lcom/oneplus/lib/app/OPAlertDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/settingslib/OPInputMethodPreference;Ljava/text/Collator;)I
    .locals 4

    const/4 v0, 0x0

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    iget-boolean v1, p0, Lcom/android/settingslib/OPInputMethodPreference;->mHasPriorityInSorting:Z

    iget-boolean v2, p1, Lcom/android/settingslib/OPInputMethodPreference;->mHasPriorityInSorting:Z

    const/4 v3, -0x1

    if-eq v1, v2, :cond_2

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_2
    invoke-virtual {p0}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v1, :cond_3

    if-nez v2, :cond_3

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    goto :goto_2

    :cond_3
    if-eqz v1, :cond_4

    move p0, v3

    goto :goto_1

    :cond_4
    move p0, v0

    :goto_1
    if-eqz v2, :cond_5

    move v0, v3

    :cond_5
    sub-int/2addr p0, v0

    :goto_2
    return p0
.end method

.method public synthetic lambda$showDirectBootWarnDialog$3$OPInputMethodPreference(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/android/settingslib/OPInputMethodPreference;->setCheckedInternal(Z)V

    return-void
.end method

.method public synthetic lambda$showDirectBootWarnDialog$4$OPInputMethodPreference(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/settingslib/OPInputMethodPreference;->setCheckedInternal(Z)V

    return-void
.end method

.method public synthetic lambda$showSecurityWarnDialog$0$OPInputMethodPreference(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/android/settingslib/OPInputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object p1

    iget-boolean p1, p1, Landroid/content/pm/ServiceInfo;->directBootAware:Z

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/android/settingslib/OPInputMethodPreference;->isTv()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/android/settingslib/OPInputMethodPreference;->showDirectBootWarnDialog()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/android/settingslib/OPInputMethodPreference;->setCheckedInternal(Z)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$showSecurityWarnDialog$1$OPInputMethodPreference(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/settingslib/OPInputMethodPreference;->setCheckedInternal(Z)V

    return-void
.end method

.method public synthetic lambda$showSecurityWarnDialog$2$OPInputMethodPreference(Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/settingslib/OPInputMethodPreference;->setCheckedInternal(Z)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    invoke-direct {p0}, Lcom/android/settingslib/OPInputMethodPreference;->isImeEnabler()Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return p2

    :cond_0
    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0, p2}, Lcom/android/settingslib/OPInputMethodPreference;->setCheckedInternal(Z)V

    return p2

    :cond_1
    iget-object p1, p0, Lcom/android/settingslib/OPInputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->isSystem()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/settingslib/OPInputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object p1

    iget-boolean p1, p1, Landroid/content/pm/ServiceInfo;->directBootAware:Z

    if-nez p1, :cond_2

    invoke-direct {p0}, Lcom/android/settingslib/OPInputMethodPreference;->isTv()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-direct {p0}, Lcom/android/settingslib/OPInputMethodPreference;->isTv()Z

    move-result p1

    if-nez p1, :cond_5

    invoke-direct {p0}, Lcom/android/settingslib/OPInputMethodPreference;->showDirectBootWarnDialog()V

    goto :goto_0

    :cond_2
    invoke-direct {p0, v0}, Lcom/android/settingslib/OPInputMethodPreference;->setCheckedInternal(Z)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/android/settingslib/OPInputMethodPreference;->mDialog:Lcom/oneplus/lib/app/OPAlertDialog;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/settingslib/OPInputMethodPreference;->mDialog:Lcom/oneplus/lib/app/OPAlertDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_4
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v1, Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    invoke-direct {v1, p1}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->setCancelable(Z)Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    const v2, 0x7f120e1c

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->setTitle(I)Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    iget-object v2, p0, Lcom/android/settingslib/OPInputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    const v3, 0x7f120e10

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v2, v0, p2

    invoke-virtual {p1, v3, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    const p1, 0x7f120e11

    new-instance v0, Lcom/android/settingslib/-$$Lambda$OPInputMethodPreference$NtGeHnMX1DAJE-2ckpe_W-H3DV4;

    invoke-direct {v0, p0}, Lcom/android/settingslib/-$$Lambda$OPInputMethodPreference$NtGeHnMX1DAJE-2ckpe_W-H3DV4;-><init>(Lcom/android/settingslib/OPInputMethodPreference;)V

    invoke-virtual {v1, p1, v0}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    const/high16 p1, 0x1040000

    new-instance v0, Lcom/android/settingslib/-$$Lambda$OPInputMethodPreference$w8BKl7yJpqRQX2CpoF6jWCdUeAk;

    invoke-direct {v0, p0}, Lcom/android/settingslib/-$$Lambda$OPInputMethodPreference$w8BKl7yJpqRQX2CpoF6jWCdUeAk;-><init>(Lcom/android/settingslib/OPInputMethodPreference;)V

    invoke-virtual {v1, p1, v0}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    new-instance p1, Lcom/android/settingslib/-$$Lambda$OPInputMethodPreference$USk-e2EHba4uew-PWvqFx-6i4X0;

    invoke-direct {p1, p0}, Lcom/android/settingslib/-$$Lambda$OPInputMethodPreference$USk-e2EHba4uew-PWvqFx-6i4X0;-><init>(Lcom/android/settingslib/OPInputMethodPreference;)V

    invoke-virtual {v1, p1}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    invoke-virtual {v1}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->create()Lcom/oneplus/lib/app/OPAlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/OPInputMethodPreference;->mDialog:Lcom/oneplus/lib/app/OPAlertDialog;

    iget-object p0, p0, Lcom/android/settingslib/OPInputMethodPreference;->mDialog:Lcom/oneplus/lib/app/OPAlertDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    :cond_5
    :goto_0
    return p2
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 5

    invoke-direct {p0}, Lcom/android/settingslib/OPInputMethodPreference;->isImeEnabler()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    :try_start_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/android/settingslib/OPInputMethodPreference;->TAG:Ljava/lang/String;

    const-string v3, "IME\'s Settings Activity Not Found"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const v1, 0x7f120722

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object p0, p0, Lcom/android/settingslib/OPInputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/view/inputmethod/InputMethodInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p0

    aput-object p0, v2, v3

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_1
    :goto_0
    return v0
.end method

.method public updatePreferenceViews()V
    .locals 4

    iget-object v0, p0, Lcom/android/settingslib/OPInputMethodPreference;->mInputMethodSettingValues:Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;

    iget-object v1, p0, Lcom/android/settingslib/OPInputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->isAlwaysCheckedIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/settingslib/OPInputMethodPreference;->isImeEnabler()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settingslib/RestrictedSwitchPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settingslib/RestrictedSwitchPreference;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/android/settingslib/OPInputMethodPreference;->mIsAllowedByOrganization:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settingslib/OPInputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-static {v0, v2, v3}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfInputMethodDisallowed(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settingslib/RestrictedSwitchPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/settingslib/RestrictedSwitchPreference;->setEnabled(Z)V

    :goto_0
    iget-object v0, p0, Lcom/android/settingslib/OPInputMethodPreference;->mInputMethodSettingValues:Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;

    iget-object v2, p0, Lcom/android/settingslib/OPInputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v0, v2}, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->isEnabledImi(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/android/settingslib/RestrictedSwitchPreference;->isDisabledByAdmin()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "input_method"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, p0, Lcom/android/settingslib/OPInputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settingslib/OPInputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-static {v0, v1, v2}, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeUtil;->getSubtypeLocaleNameListAsSentence(Ljava/util/List;Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method
