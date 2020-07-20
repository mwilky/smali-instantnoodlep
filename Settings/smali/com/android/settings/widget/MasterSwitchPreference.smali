.class public Lcom/android/settings/widget/MasterSwitchPreference;
.super Lcom/android/settingslib/TwoTargetPreference;
.source "MasterSwitchPreference.java"


# instance fields
.field private mChecked:Z

.field private mEnableSwitch:Z

.field private mSwitch:Lcom/oneplus/lib/widget/button/OPSwitch;

.field protected mVibratePattern:[J

.field protected mVibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settingslib/TwoTargetPreference;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/widget/MasterSwitchPreference;->mEnableSwitch:Z

    const v0, 0x7f0d021d

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setLayoutResource(I)V

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportXVibrate()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Vibrator;

    iput-object p1, p0, Lcom/android/settings/widget/MasterSwitchPreference;->mVibrator:Landroid/os/Vibrator;

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/TwoTargetPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/android/settings/widget/MasterSwitchPreference;->mEnableSwitch:Z

    const p2, 0x7f0d021d

    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->setLayoutResource(I)V

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportXVibrate()Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "vibrator"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Vibrator;

    iput-object p1, p0, Lcom/android/settings/widget/MasterSwitchPreference;->mVibrator:Landroid/os/Vibrator;

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settingslib/TwoTargetPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/android/settings/widget/MasterSwitchPreference;->mEnableSwitch:Z

    const p2, 0x7f0d021d

    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->setLayoutResource(I)V

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportXVibrate()Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "vibrator"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Vibrator;

    iput-object p1, p0, Lcom/android/settings/widget/MasterSwitchPreference;->mVibrator:Landroid/os/Vibrator;

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settingslib/TwoTargetPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/android/settings/widget/MasterSwitchPreference;->mEnableSwitch:Z

    const p2, 0x7f0d021d

    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->setLayoutResource(I)V

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportXVibrate()Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "vibrator"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Vibrator;

    iput-object p1, p0, Lcom/android/settings/widget/MasterSwitchPreference;->mVibrator:Landroid/os/Vibrator;

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/widget/MasterSwitchPreference;)Lcom/oneplus/lib/widget/button/OPSwitch;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/widget/MasterSwitchPreference;->mSwitch:Lcom/oneplus/lib/widget/button/OPSwitch;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/widget/MasterSwitchPreference;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/settings/widget/MasterSwitchPreference;->mChecked:Z

    return p0
.end method

.method static synthetic access$200(Lcom/android/settings/widget/MasterSwitchPreference;Z)Z
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->persistBoolean(Z)Z

    move-result p0

    return p0
.end method


# virtual methods
.method protected getSecondTargetResId()I
    .locals 0

    const p0, 0x7f0d02a6

    return p0
.end method

.method public isChecked()Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/widget/MasterSwitchPreference;->mSwitch:Lcom/oneplus/lib/widget/button/OPSwitch;

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/settings/widget/MasterSwitchPreference;->mChecked:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settingslib/TwoTargetPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x1020018

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/android/settings/widget/MasterSwitchPreference$1;

    invoke-direct {v1, p0}, Lcom/android/settings/widget/MasterSwitchPreference$1;-><init>(Lcom/android/settings/widget/MasterSwitchPreference;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const v0, 0x7f0a06e9

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/oneplus/lib/widget/button/OPSwitch;

    iput-object p1, p0, Lcom/android/settings/widget/MasterSwitchPreference;->mSwitch:Lcom/oneplus/lib/widget/button/OPSwitch;

    iget-object p1, p0, Lcom/android/settings/widget/MasterSwitchPreference;->mSwitch:Lcom/oneplus/lib/widget/button/OPSwitch;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/settings/widget/MasterSwitchPreference;->mSwitch:Lcom/oneplus/lib/widget/button/OPSwitch;

    iget-boolean v0, p0, Lcom/android/settings/widget/MasterSwitchPreference;->mChecked:Z

    invoke-virtual {p1, v0}, Lcom/oneplus/lib/widget/button/OPSwitch;->setChecked(Z)V

    iget-object p1, p0, Lcom/android/settings/widget/MasterSwitchPreference;->mSwitch:Lcom/oneplus/lib/widget/button/OPSwitch;

    iget-boolean p0, p0, Lcom/android/settings/widget/MasterSwitchPreference;->mEnableSwitch:Z

    invoke-virtual {p1, p0}, Landroid/widget/Switch;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method public setChecked(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/widget/MasterSwitchPreference;->mChecked:Z

    iget-object p0, p0, Lcom/android/settings/widget/MasterSwitchPreference;->mSwitch:Lcom/oneplus/lib/widget/button/OPSwitch;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/button/OPSwitch;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/MasterSwitchPreference;->setSwitchEnabled(Z)V

    return-void
.end method

.method public setSwitchEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/widget/MasterSwitchPreference;->mEnableSwitch:Z

    iget-object p0, p0, Lcom/android/settings/widget/MasterSwitchPreference;->mSwitch:Lcom/oneplus/lib/widget/button/OPSwitch;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/Switch;->setEnabled(Z)V

    :cond_0
    return-void
.end method
