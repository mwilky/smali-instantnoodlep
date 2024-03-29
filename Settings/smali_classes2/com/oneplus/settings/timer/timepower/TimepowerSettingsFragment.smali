.class public Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "TimepowerSettingsFragment.java"

# interfaces
.implements Lcom/oneplus/lib/app/TimePickerDialog$OnTimeSetListener;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment$TimeSetDialogListener;
    }
.end annotation


# instance fields
.field private mCode:I

.field private mDlgVisible:Z

.field private mPowerOffPref:Lcom/oneplus/settings/timer/timepower/TimepowerPreference;

.field private mPowerOffPreference:Landroidx/preference/Preference;

.field private mPowerOffStatePref:Landroidx/preference/SwitchPreference;

.field private mPowerOnPref:Lcom/oneplus/settings/timer/timepower/TimepowerPreference;

.field private mPowerOnPreference:Landroidx/preference/Preference;

.field private mPowerOnStatePref:Landroidx/preference/SwitchPreference;

.field private mPowerState:Z

.field private mStateArray:[[Z

.field private mTimeArray:[[I

.field private mTimePicker:Lcom/oneplus/lib/widget/TimePicker;

.field onDismissListener:Landroid/content/DialogInterface$OnDismissListener;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x2

    filled-new-array {v0, v0}, [I

    move-result-object v1

    const-class v2, I

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    iput-object v1, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mTimeArray:[[I

    filled-new-array {v0, v0}, [I

    move-result-object v0

    const-class v1, Z

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    iput-object v0, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mStateArray:[[Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mDlgVisible:Z

    new-instance v0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment$5;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment$5;-><init>(Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;)V

    iput-object v0, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->onDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mDlgVisible:Z

    return p0
.end method

.method static synthetic access$002(Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mDlgVisible:Z

    return p1
.end method

.method static synthetic access$100(Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;I)Landroid/content/Intent;
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->getTimeSettingsIntent(I)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;Landroid/content/Intent;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->startDialogForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private cancleNewPlanLastPowerOn()V
    .locals 4

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportNewPlanPowerOffAlarm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "def_timepower_config"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/settings/timer/timepower/SettingsUtil;->getNearestTime(Ljava/lang/String;)[J

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "org.codeaurora.poweroffalarm.action.CANCEL_ALARM"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    aget-wide v2, v0, v2

    const-string v0, "time"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v0, "com.qualcomm.qti.poweroffalarm"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x11000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private formatTime(II)Ljava/lang/String;
    .locals 6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    const-string v1, ":"

    const/4 v2, 0x0

    const-string v3, "%1$02d"

    const/4 v4, 0x1

    if-ne v0, v4, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    new-array v0, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v2

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array p1, v4, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v2

    invoke-static {v3, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_0
    const v0, 0x7f120131

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v5, 0xc

    if-lt p1, v5, :cond_1

    const v0, 0x7f120138

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-le p1, v5, :cond_2

    add-int/lit8 p1, p1, -0xc

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    move p1, v5

    :cond_2
    :goto_0
    invoke-static {v0}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline23(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    new-array v0, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v2

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array p1, v4, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v2

    invoke-static {v3, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method private getTimeSettingsIntent(I)Landroid/content/Intent;
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    if-eq p1, v1, :cond_0

    return-object v0

    :cond_0
    iget-object v2, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mStateArray:[[Z

    const/4 v3, 0x0

    aget-object v2, v2, v3

    aget-boolean v2, v2, v3

    iget-object v4, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mPowerOnPreference:Landroidx/preference/Preference;

    invoke-virtual {v4}, Landroidx/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "TIMER"

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mPowerOnPreference:Landroidx/preference/Preference;

    invoke-virtual {v4}, Landroidx/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mTimeArray:[[I

    aget-object v7, v6, v3

    aget v7, v7, v3

    aget-object v6, v6, v3

    aget v6, v6, v1

    if-ne p1, v1, :cond_1

    iget-object v2, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mStateArray:[[Z

    aget-object v2, v2, v1

    aget-boolean v2, v2, v3

    iget-object v4, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mPowerOffPref:Lcom/oneplus/settings/timer/timepower/TimepowerPreference;

    invoke-virtual {v4}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    iget-object v4, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mPowerOffPreference:Landroidx/preference/Preference;

    invoke-virtual {v4}, Landroidx/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mPowerOffPreference:Landroidx/preference/Preference;

    invoke-virtual {v4}, Landroidx/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mTimeArray:[[I

    aget-object v6, v5, v1

    aget v7, v6, v3

    aget-object v3, v5, v1

    aget v6, v3, v1

    :cond_1
    if-eqz p1, :cond_2

    if-eq p1, v1, :cond_2

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-direct {p0}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->is24Hour()Z

    move-result p0

    const-string v3, "24hour"

    invoke-virtual {v1, v3, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p0, "power_state"

    invoke-virtual {v1, p0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p0, "display_time"

    invoke-virtual {v1, p0, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "hour"

    invoke-virtual {v1, p0, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "minute"

    invoke-virtual {v1, p0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "power_type"

    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :goto_0
    return-object v0
.end method

.method private static intToBool(I)Z
    .locals 0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private is24Hour()Z
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method private setPowerOn()V
    .locals 5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "def_timepower_config"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/settings/timer/timepower/SettingsUtil;->getNearestTime(Ljava/lang/String;)[J

    move-result-object v0

    const-string v1, "setPowerOn writeData: "

    invoke-static {v1}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline23(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    aget-wide v3, v0, v2

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "TimepowerSettingsFragment"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.android.settings.POWER_OP_ON"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    const-string v4, "alarm"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AlarmManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const/high16 v4, 0x8000000

    invoke-static {p0, v2, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    aget-wide v0, v0, v2

    invoke-virtual {v3, v2, v0, v1, p0}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    return-void
.end method

.method private startDialogForResult(Landroid/content/Intent;I)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    :cond_0
    iput p2, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mCode:I

    new-instance p2, Lcom/oneplus/lib/widget/TimePicker;

    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f130541

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    const/4 v1, 0x0

    const v2, 0x7f0404e9

    const/4 v3, 0x0

    invoke-direct {p2, v0, v3, v2, v1}, Lcom/oneplus/lib/widget/TimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object p2, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mTimePicker:Lcom/oneplus/lib/widget/TimePicker;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "power_state"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mPowerState:Z

    const-string p2, "24hour"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    const-string p2, "hour"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string p2, "minute"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string p2, "power_type"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const/4 p2, 0x1

    iget-object p1, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mTimePicker:Lcom/oneplus/lib/widget/TimePicker;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/oneplus/lib/widget/TimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    iget-object p1, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mTimePicker:Lcom/oneplus/lib/widget/TimePicker;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/oneplus/lib/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    iget-object p1, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mTimePicker:Lcom/oneplus/lib/widget/TimePicker;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/oneplus/lib/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    new-instance p1, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment$TimeSetDialogListener;

    invoke-direct {p1, p0}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment$TimeSetDialogListener;-><init>(Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;)V

    new-instance p1, Lcom/oneplus/lib/app/TimePickerDialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f1301c5

    move-object v0, p1

    move-object v3, p0

    invoke-direct/range {v0 .. v6}, Lcom/oneplus/lib/app/TimePickerDialog;-><init>(Landroid/content/Context;ILcom/oneplus/lib/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->onDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {p1}, Lcom/oneplus/lib/app/TimePickerDialog;->show()V

    iput-boolean p2, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mDlgVisible:Z

    return-void
.end method

.method private updateState(IZ)V
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mStateArray:[[Z

    aget-object v1, v1, p1

    aput-boolean p2, v1, v0

    const-string v1, "com.android.settings.POWER_OP_ON"

    const/high16 v2, 0x11000000

    if-nez p1, :cond_1

    if-ne p2, v0, :cond_1

    invoke-direct {p0}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->cancleNewPlanLastPowerOn()V

    invoke-direct {p0}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->writeData()V

    invoke-static {v1, v2}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline3(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportNewPlanPowerOffAlarm()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-direct {p0}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->setPowerOn()V

    goto/16 :goto_0

    :cond_1
    if-ne p1, v0, :cond_2

    if-ne p2, v0, :cond_2

    invoke-direct {p0}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->writeData()V

    const/4 p1, 0x2

    new-array p1, p1, [J

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    aget-wide v0, p1, v0

    const-string p1, "trigger_time"

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.android.settings.action.REQUEST_POWER_OFF"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {p0, p2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    if-ne p1, v0, :cond_3

    if-nez p2, :cond_3

    invoke-direct {p0}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->writeData()V

    const-string p1, "com.android.settings.POWER_CANCEL_OP_OFF"

    invoke-static {p1, v2}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline3(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {p0, p2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    if-nez p1, :cond_4

    if-nez p2, :cond_4

    invoke-direct {p0}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->writeData()V

    invoke-static {v1, v2}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline3(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportNewPlanPowerOffAlarm()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "def_timepower_config"

    invoke-static {p1, p2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/oneplus/settings/timer/timepower/SettingsUtil;->getNearestTime(Ljava/lang/String;)[J

    move-result-object p1

    new-instance p2, Landroid/content/Intent;

    const-string v0, "org.codeaurora.poweroffalarm.action.CANCEL_ALARM"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    aget-wide v0, p1, v0

    const-string p1, "time"

    invoke-virtual {p2, p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string p1, "com.qualcomm.qti.poweroffalarm"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p2, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    :cond_4
    :goto_0
    return-void
.end method

.method private writeData()V
    .locals 8

    new-instance v0, Ljava/lang/String;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    move-object v2, v0

    move v0, v1

    :goto_0
    const/4 v3, 0x2

    if-ge v0, v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mTimeArray:[[I

    aget-object v6, v6, v0

    aget v6, v6, v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    const-string v6, "%1$02d"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v5, v4, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mTimeArray:[[I

    aget-object v7, v7, v0

    aget v7, v7, v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v1

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v5, v4, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mStateArray:[[Z

    aget-object v6, v6, v0

    aget-boolean v6, v6, v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    const-string v6, "%1$01d"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v5, v4, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mStateArray:[[Z

    aget-object v7, v7, v0

    aget-boolean v4, v7, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v1

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline17(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "writeData: "

    const-string v1, "TimepowerSettingsFragment"

    invoke-static {v0, v2, v1}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline40(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "def_timepower_config"

    invoke-static {p0, v0, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x270f

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f1600cc

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "def_timepower_config"

    invoke-static {p1, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    move v2, v0

    move v3, v2

    :goto_0
    const/4 v4, 0x6

    if-gt v2, v4, :cond_1

    add-int/lit8 v5, v2, 0x6

    invoke-virtual {p1, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iget-object v6, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mTimeArray:[[I

    aget-object v6, v6, v3

    const/4 v7, 0x2

    invoke-virtual {v2, v0, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    aput v8, v6, v0

    iget-object v6, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mTimeArray:[[I

    aget-object v6, v6, v3

    const/4 v8, 0x4

    invoke-virtual {v2, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    aput v7, v6, v1

    iget-object v6, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mStateArray:[[Z

    aget-object v6, v6, v3

    const/4 v7, 0x5

    invoke-virtual {v2, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->intToBool(I)Z

    move-result v8

    aput-boolean v8, v6, v0

    iget-object v6, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mStateArray:[[Z

    aget-object v6, v6, v3

    invoke-virtual {v2, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->intToBool(I)Z

    move-result v2

    aput-boolean v2, v6, v1

    add-int/2addr v3, v1

    move v2, v5

    goto :goto_0

    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mStateArray:[[Z

    aget-object p1, p1, v0

    aget-boolean p1, p1, v1

    iget-object v2, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mTimeArray:[[I

    aget-object v3, v2, v0

    aget v3, v3, v0

    aget-object v2, v2, v0

    aget v2, v2, v1

    invoke-direct {p0, v3, v2}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->formatTime(II)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mStateArray:[[Z

    aget-object v3, v3, v1

    aget-boolean v3, v3, v1

    iget-object v4, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mTimeArray:[[I

    aget-object v5, v4, v1

    aget v0, v5, v0

    aget-object v4, v4, v1

    aget v1, v4, v1

    invoke-direct {p0, v0, v1}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->formatTime(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "power_on_switch"

    invoke-virtual {p0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/SwitchPreference;

    iput-object v1, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mPowerOnStatePref:Landroidx/preference/SwitchPreference;

    iget-object v1, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mPowerOnStatePref:Landroidx/preference/SwitchPreference;

    invoke-virtual {v1, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mPowerOnStatePref:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string p1, "power_off_switch"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SwitchPreference;

    iput-object p1, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mPowerOffStatePref:Landroidx/preference/SwitchPreference;

    iget-object p1, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mPowerOffStatePref:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mPowerOffStatePref:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string p1, "power_on_settings"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/oneplus/settings/timer/timepower/TimepowerPreference;

    iput-object v1, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mPowerOnPref:Lcom/oneplus/settings/timer/timepower/TimepowerPreference;

    iget-object v1, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mPowerOnPref:Lcom/oneplus/settings/timer/timepower/TimepowerPreference;

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mPowerOnPref:Lcom/oneplus/settings/timer/timepower/TimepowerPreference;

    new-instance v3, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment$1;

    invoke-direct {v3, p0}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment$1;-><init>(Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;)V

    invoke-virtual {v1, v3}, Lcom/oneplus/settings/timer/timepower/TimepowerPreference;->setViewClickListener(Landroid/view/View$OnClickListener;)V

    const-string v1, "oneplus_power_on_settings"

    invoke-virtual {p0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mPowerOnPreference:Landroidx/preference/Preference;

    iget-object v1, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mPowerOnPreference:Landroidx/preference/Preference;

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mPowerOnPreference:Landroidx/preference/Preference;

    new-instance v2, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment$2;

    invoke-direct {v2, p0}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment$2;-><init>(Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;)V

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    const-string v1, "power_off_settings"

    invoke-virtual {p0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/oneplus/settings/timer/timepower/TimepowerPreference;

    iput-object v2, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mPowerOffPref:Lcom/oneplus/settings/timer/timepower/TimepowerPreference;

    iget-object v2, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mPowerOffPref:Lcom/oneplus/settings/timer/timepower/TimepowerPreference;

    invoke-virtual {v2, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mPowerOffPref:Lcom/oneplus/settings/timer/timepower/TimepowerPreference;

    new-instance v3, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment$3;

    invoke-direct {v3, p0}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment$3;-><init>(Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;)V

    invoke-virtual {v2, v3}, Lcom/oneplus/settings/timer/timepower/TimepowerPreference;->setViewClickListener(Landroid/view/View$OnClickListener;)V

    const-string v2, "oneplus_power_off_settings"

    invoke-virtual {p0, v2}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mPowerOffPreference:Landroidx/preference/Preference;

    iget-object v2, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mPowerOffPreference:Landroidx/preference/Preference;

    invoke-virtual {v2, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mPowerOffPreference:Landroidx/preference/Preference;

    new-instance v2, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment$4;

    invoke-direct {v2, p0}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment$4;-><init>(Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;)V

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Landroidx/preference/SwitchPreference;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    goto :goto_0

    :cond_0
    move p2, v1

    :goto_0
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "power_on_switch"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-direct {p0, v1, p2}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->updateState(IZ)V

    return v2

    :cond_1
    const-string v0, "power_off_switch"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0, v2, p2}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->updateState(IZ)V

    return v2

    :cond_2
    return v1
.end method

.method public onTimeSet(Lcom/oneplus/lib/widget/TimePicker;II)V
    .locals 12

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iget-boolean v0, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mPowerState:Z

    const-string v1, "power_state"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "hour"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "minute"

    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance p3, Landroid/content/Intent;

    invoke-direct {p3}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p3, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget p1, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mCode:I

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p3

    const/4 v2, 0x0

    if-eqz p3, :cond_8

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    if-ne p1, v5, :cond_0

    move v6, v2

    move v7, v5

    goto :goto_0

    :cond_0
    move v7, v2

    move v6, v5

    :goto_0
    const-string v8, "hour : "

    const-string v9, "  mTimeArray["

    const-string v10, "][0]"

    invoke-static {v8, v3, v9, v6, v10}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline25(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v10, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mTimeArray:[[I

    aget-object v10, v10, v6

    aget v10, v10, v2

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v10, "TimepowerSettingsFragment"

    invoke-static {v10, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "minute : "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "][1]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mTimeArray:[[I

    aget-object v9, v9, v6

    aget v9, v9, v5

    invoke-static {v8, v9, v10}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline44(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object v8, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mTimeArray:[[I

    aget-object v9, v8, v6

    aget v9, v9, v2

    if-ne v3, v9, :cond_1

    aget-object v3, v8, v6

    aget v3, v3, v5

    if-ne v4, v3, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const p2, 0x7f1216b2

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2

    :cond_1
    iget-object v3, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mTimeArray:[[I

    aget-object v3, v3, v7

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    aput v0, v3, v2

    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mTimeArray:[[I

    aget-object v0, v0, v7

    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    aput p2, v0, v5

    iget-object p2, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mTimeArray:[[I

    aget-object v0, p2, v7

    aget v0, v0, v2

    aget-object p2, p2, v7

    aget p2, p2, v5

    invoke-direct {p0, v0, p2}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->formatTime(II)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mStateArray:[[Z

    aget-object v0, v0, v7

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p3

    aput-boolean p3, v0, v2

    iget-object p3, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mStateArray:[[Z

    aget-object p3, p3, v7

    aget-boolean p3, p3, v5

    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mPowerOnPref:Lcom/oneplus/settings/timer/timepower/TimepowerPreference;

    invoke-virtual {v0, p2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mPowerOnPreference:Landroidx/preference/Preference;

    invoke-virtual {v0, p2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    if-ne p1, v5, :cond_3

    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mPowerOffPref:Lcom/oneplus/settings/timer/timepower/TimepowerPreference;

    invoke-virtual {v0, p2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mPowerOffPreference:Landroidx/preference/Preference;

    invoke-virtual {v0, p2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_1
    if-nez p3, :cond_5

    if-nez p1, :cond_4

    invoke-direct {p0, v2, v5}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->updateState(IZ)V

    iget-object p1, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mPowerOnStatePref:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, v5}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_2

    :cond_4
    invoke-direct {p0, v5, v5}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->updateState(IZ)V

    iget-object p1, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mPowerOffStatePref:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, v5}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_2

    :cond_5
    iget p1, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mCode:I

    const/high16 p2, 0x11000000

    if-nez p1, :cond_6

    invoke-direct {p0}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->cancleNewPlanLastPowerOn()V

    invoke-direct {p0}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->writeData()V

    const-string p1, "com.android.settings.POWER_OP_ON"

    invoke-static {p1, p2}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline3(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    invoke-direct {p0}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->setPowerOn()V

    goto :goto_2

    :cond_6
    if-ne p1, v5, :cond_7

    invoke-direct {p0}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->writeData()V

    const-string p1, "com.android.settings.action.REQUEST_POWER_OFF"

    invoke-static {p1, p2}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline3(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_2

    :cond_7
    invoke-direct {p0}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->writeData()V

    :cond_8
    :goto_2
    iput-boolean v2, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mDlgVisible:Z

    return-void
.end method
