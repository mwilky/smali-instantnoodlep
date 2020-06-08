.class public Lcom/oneplus/settings/OPPowerOffControlPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "OPPowerOffControlPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnDestroy;


# static fields
.field private static final KEY_POWER_OFF:Ljava/lang/String; = "power_off"


# instance fields
.field private mDialog:Landroid/app/AlertDialog;

.field private mPreference:Landroidx/preference/Preference;

.field onClickListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1

    const-string v0, "power_off"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance p1, Lcom/oneplus/settings/OPPowerOffControlPreferenceController$1;

    invoke-direct {p1, p0}, Lcom/oneplus/settings/OPPowerOffControlPreferenceController$1;-><init>(Lcom/oneplus/settings/OPPowerOffControlPreferenceController;)V

    iput-object p1, p0, Lcom/oneplus/settings/OPPowerOffControlPreferenceController;->onClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz p2, :cond_0

    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/OPPowerOffControlPreferenceController;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/settings/OPPowerOffControlPreferenceController;->fireShutDown()V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/settings/OPPowerOffControlPreferenceController;)Landroid/app/AlertDialog;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/OPPowerOffControlPreferenceController;->mDialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method private fireShutDown()V
    .locals 3

    const/4 v0, 0x0

    const-string v1, "sys.debug.watchdog"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.internal.intent.action.REQUEST_SHUTDOWN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.extra.KEY_CONFIRM"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v0, 0x800000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 2

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "power_off"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oneplus/settings/OPPowerOffControlPreferenceController;->mDialog:Landroid/app/AlertDialog;

    if-nez p1, :cond_0

    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f12120c

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x104000a

    iget-object v1, p0, Lcom/oneplus/settings/OPPowerOffControlPreferenceController;->onClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/high16 v0, 0x1040000

    iget-object v1, p0, Lcom/oneplus/settings/OPPowerOffControlPreferenceController;->onClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/OPPowerOffControlPreferenceController;->mDialog:Landroid/app/AlertDialog;

    :cond_0
    iget-object p0, p0, Lcom/oneplus/settings/OPPowerOffControlPreferenceController;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/OPPowerOffControlPreferenceController;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/settings/OPPowerOffControlPreferenceController;->mDialog:Landroid/app/AlertDialog;

    :cond_0
    return-void
.end method
