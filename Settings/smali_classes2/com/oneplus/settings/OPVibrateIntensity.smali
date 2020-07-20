.class public Lcom/oneplus/settings/OPVibrateIntensity;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "OPVibrateIntensity.java"

# interfaces
.implements Lcom/oneplus/settings/ui/OPListDialog$OnDialogListItemClickListener;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCunrrentType:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mOPListDialog:Lcom/oneplus/settings/ui/OPListDialog;

.field private mTempTouchTapIntensity:I

.field private mVibrateOnTouchIntensityPreference:Landroidx/preference/Preference;

.field private mVibrator:Landroid/os/Vibrator;

.field private sNoticeVibrateIntensity:[[J

.field private sTouchVibrateIntensity:[[J

.field private sVibratePatternrhythm:[[J


# direct methods
.method public constructor <init>()V
    .locals 9

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const-string v0, "incoming_call_vibrate_intensity"

    iput-object v0, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mCunrrentType:Ljava/lang/String;

    const/4 v0, 0x5

    new-array v1, v0, [[J

    new-array v2, v0, [J

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/16 v2, 0x9

    new-array v4, v2, [J

    fill-array-data v4, :array_1

    const/4 v5, 0x1

    aput-object v4, v1, v5

    const/16 v4, 0xd

    new-array v6, v4, [J

    fill-array-data v6, :array_2

    const/4 v7, 0x2

    aput-object v6, v1, v7

    const/16 v6, 0x11

    new-array v6, v6, [J

    fill-array-data v6, :array_3

    const/4 v8, 0x3

    aput-object v6, v1, v8

    new-array v4, v4, [J

    fill-array-data v4, :array_4

    const/4 v6, 0x4

    aput-object v4, v1, v6

    iput-object v1, p0, Lcom/oneplus/settings/OPVibrateIntensity;->sVibratePatternrhythm:[[J

    new-array v1, v8, [[J

    new-array v4, v0, [J

    fill-array-data v4, :array_5

    aput-object v4, v1, v3

    new-array v4, v0, [J

    fill-array-data v4, :array_6

    aput-object v4, v1, v5

    new-array v4, v0, [J

    fill-array-data v4, :array_7

    aput-object v4, v1, v7

    new-array v1, v8, [[J

    new-array v4, v6, [J

    fill-array-data v4, :array_8

    aput-object v4, v1, v3

    new-array v4, v6, [J

    fill-array-data v4, :array_9

    aput-object v4, v1, v5

    new-array v4, v6, [J

    fill-array-data v4, :array_a

    aput-object v4, v1, v7

    new-array v1, v8, [[J

    new-array v4, v2, [J

    fill-array-data v4, :array_b

    aput-object v4, v1, v3

    new-array v4, v2, [J

    fill-array-data v4, :array_c

    aput-object v4, v1, v5

    new-array v2, v2, [J

    fill-array-data v2, :array_d

    aput-object v2, v1, v7

    iput-object v1, p0, Lcom/oneplus/settings/OPVibrateIntensity;->sNoticeVibrateIntensity:[[J

    new-array v1, v8, [[J

    new-array v2, v0, [J

    fill-array-data v2, :array_e

    aput-object v2, v1, v3

    new-array v2, v0, [J

    fill-array-data v2, :array_f

    aput-object v2, v1, v5

    new-array v0, v0, [J

    fill-array-data v0, :array_10

    aput-object v0, v1, v7

    iput-object v1, p0, Lcom/oneplus/settings/OPVibrateIntensity;->sTouchVibrateIntensity:[[J

    new-instance v0, Lcom/oneplus/settings/OPVibrateIntensity$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oneplus/settings/OPVibrateIntensity$1;-><init>(Lcom/oneplus/settings/OPVibrateIntensity;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mHandler:Landroid/os/Handler;

    return-void

    :array_0
    .array-data 8
        -0x2
        0x0
        0x3e8
        0x3e8
        0x3e8
    .end array-data

    :array_1
    .array-data 8
        -0x2
        0x0
        0x1f4
        0xfa
        0xa
        0x3e8
        0x1f4
        0xfa
        0xa
    .end array-data

    :array_2
    .array-data 8
        -0x2
        0x0
        0x12c
        0x190
        0x12c
        0x190
        0x12c
        0x3e8
        0x12c
        0x190
        0x12c
        0x190
        0x12c
    .end array-data

    :array_3
    .array-data 8
        -0x2
        0x0
        0x1e
        0x50
        0x1e
        0x50
        0x32
        0xb4
        0x258
        0x3e8
        0x1e
        0x50
        0x1e
        0x50
        0x32
        0xb4
        0x258
    .end array-data

    :array_4
    .array-data 8
        -0x2
        0x0
        0x50
        0xc8
        0x258
        0x96
        0xa
        0x3e8
        0x50
        0xc8
        0x258
        0x96
        0xa
    .end array-data

    :array_5
    .array-data 8
        -0x1
        0x1f4
        0x3e8
        0x5dc
        0x3e8
    .end array-data

    :array_6
    .array-data 8
        -0x2
        0x1f4
        0x3e8
        0x5dc
        0x3e8
    .end array-data

    :array_7
    .array-data 8
        -0x3
        0x1f4
        0x3e8
        0x5dc
        0x3e8
    .end array-data

    :array_8
    .array-data 8
        -0x1
        0x1f4
        0x3e8
        0x1f4
    .end array-data

    :array_9
    .array-data 8
        -0x2
        0x1f4
        0x3e8
        0x1f4
    .end array-data

    :array_a
    .array-data 8
        -0x3
        0x1f4
        0x3e8
        0x1f4
    .end array-data

    :array_b
    .array-data 8
        -0x1
        0x0
        0x64
        0x96
        0x64
        0x3e8
        0x64
        0x96
        0x64
    .end array-data

    :array_c
    .array-data 8
        -0x2
        0x0
        0x64
        0x96
        0x64
        0x3e8
        0x64
        0x96
        0x64
    .end array-data

    :array_d
    .array-data 8
        -0x3
        0x0
        0x64
        0x96
        0x64
        0x3e8
        0x64
        0x96
        0x64
    .end array-data

    :array_e
    .array-data 8
        -0x1
        0x0
        0xa
        0x3e8
        0xa
    .end array-data

    :array_f
    .array-data 8
        -0x2
        0x0
        0xa
        0x3e8
        0xa
    .end array-data

    :array_10
    .array-data 8
        -0x3
        0x0
        0xa
        0x3e8
        0xa
    .end array-data
.end method

.method static synthetic access$000(Lcom/oneplus/settings/OPVibrateIntensity;)Lcom/oneplus/settings/ui/OPListDialog;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mOPListDialog:Lcom/oneplus/settings/ui/OPListDialog;

    return-object p0
.end method

.method static synthetic access$100(Lcom/oneplus/settings/OPVibrateIntensity;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/oneplus/settings/OPVibrateIntensity;)I
    .locals 0

    iget p0, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mTempTouchTapIntensity:I

    return p0
.end method

.method private updateVibratePreferenceDescription(Ljava/lang/String;I)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f030121

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, p2

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public OnDialogListCancelClick()V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mVibrator:Landroid/os/Vibrator;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/os/Vibrator;->cancel()V

    :cond_0
    return-void
.end method

.method public OnDialogListConfirmClick(I)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mCunrrentType:Ljava/lang/String;

    const-string v1, "incoming_call_vibrate_intensity"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0, v1, p1}, Lcom/oneplus/settings/OPVibrateIntensity;->updateVibratePreferenceDescription(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mCunrrentType:Ljava/lang/String;

    const-string v1, "notice_vibrate_intensity"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0, v1, p1}, Lcom/oneplus/settings/OPVibrateIntensity;->updateVibratePreferenceDescription(Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mCunrrentType:Ljava/lang/String;

    const-string v1, "vibrate_on_touch_intensity"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0, v1, p1}, Lcom/oneplus/settings/OPVibrateIntensity;->updateVibratePreferenceDescription(Ljava/lang/String;I)V

    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mVibrator:Landroid/os/Vibrator;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/os/Vibrator;->cancel()V

    :cond_3
    return-void
.end method

.method public OnDialogListItemClick(I)V
    .locals 6

    const-string v0, "OnDialogListItemClick--index:"

    const-string v1, "OPVibrateIntensity"

    invoke-static {v0, p1, v1}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline31(Ljava/lang/String;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mCunrrentType:Ljava/lang/String;

    const-string v2, "incoming_call_vibrate_intensity"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, -0x1

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "incoming_call_vibrate_mode"

    invoke-static {v0, v3, p1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v3, p0, Lcom/oneplus/settings/OPVibrateIntensity;->sVibratePatternrhythm:[[J

    array-length v3, v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    const/4 v5, 0x0

    if-le v0, v3, :cond_0

    move v0, v5

    :cond_0
    iget-object v3, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v3}, Landroid/os/Vibrator;->cancel()V

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/oneplus/settings/OPVibrateIntensity;->sVibratePatternrhythm:[[J

    aget-object p1, p1, v0

    const-wide/16 v3, -0x1

    aput-wide v3, p1, v5

    goto :goto_0

    :cond_1
    if-ne p1, v4, :cond_2

    iget-object p1, p0, Lcom/oneplus/settings/OPVibrateIntensity;->sVibratePatternrhythm:[[J

    aget-object p1, p1, v0

    const-wide/16 v3, -0x2

    aput-wide v3, p1, v5

    goto :goto_0

    :cond_2
    const/4 v3, 0x2

    if-ne p1, v3, :cond_3

    iget-object p1, p0, Lcom/oneplus/settings/OPVibrateIntensity;->sVibratePatternrhythm:[[J

    aget-object p1, p1, v0

    const-wide/16 v3, -0x3

    aput-wide v3, p1, v5

    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/oneplus/settings/OPVibrateIntensity;->sVibratePatternrhythm:[[J

    aget-object v3, p1, v0

    array-length v3, v3

    if-ge v5, v3, :cond_4

    const-string p1, "sVibratePatternrhythm ["

    const-string v3, "]["

    const-string v4, "] = "

    invoke-static {p1, v0, v3, v5, v4}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline25(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v3, p0, Lcom/oneplus/settings/OPVibrateIntensity;->sVibratePatternrhythm:[[J

    aget-object v3, v3, v0

    aget-wide v3, v3, v5

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    iget-object p0, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mVibrator:Landroid/os/Vibrator;

    aget-object p1, p1, v0

    invoke-virtual {p0, p1, v2}, Landroid/os/Vibrator;->vibrate([JI)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mCunrrentType:Ljava/lang/String;

    const-string v1, "notice_vibrate_intensity"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    iget-object v0, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mVibrator:Landroid/os/Vibrator;

    iget-object p0, p0, Lcom/oneplus/settings/OPVibrateIntensity;->sNoticeVibrateIntensity:[[J

    aget-object p0, p0, p1

    invoke-virtual {v0, p0, v2}, Landroid/os/Vibrator;->vibrate([JI)V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mCunrrentType:Ljava/lang/String;

    const-string v1, "vibrate_on_touch_intensity"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportZVibrationMotor()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p1, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mHandler:Landroid/os/Handler;

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x64

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    iget-object v0, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mVibrator:Landroid/os/Vibrator;

    iget-object p0, p0, Lcom/oneplus/settings/OPVibrateIntensity;->sTouchVibrateIntensity:[[J

    aget-object p0, p0, p1

    invoke-virtual {v0, p0, v2}, Landroid/os/Vibrator;->vibrate([JI)V

    :cond_8
    :goto_1
    return-void
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x270f

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f1600ce

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Vibrator;

    iput-object p1, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mVibrator:Landroid/os/Vibrator;

    iget-object p1, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mVibrator:Landroid/os/Vibrator;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mVibrator:Landroid/os/Vibrator;

    :cond_0
    const-string p1, "incoming_call_vibrate_intensity"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    const-string v0, "notice_vibrate_intensity"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    const-string v1, "vibrate_on_touch_intensity"

    invoke-virtual {p0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mVibrateOnTouchIntensityPreference:Landroidx/preference/Preference;

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportXVibrate()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mVibrateOnTouchIntensityPreference:Landroidx/preference/Preference;

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, p1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-direct {p0, p1, v2}, Lcom/oneplus/settings/OPVibrateIntensity;->updateVibratePreferenceDescription(Ljava/lang/String;I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v0, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/oneplus/settings/OPVibrateIntensity;->updateVibratePreferenceDescription(Ljava/lang/String;I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mTempTouchTapIntensity:I

    invoke-direct {p0, v1, p1}, Lcom/oneplus/settings/OPVibrateIntensity;->updateVibratePreferenceDescription(Ljava/lang/String;I)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 5

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f030122

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f030121

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/oneplus/settings/ui/OPListDialog;

    iget-object v4, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-direct {v3, v4, p1, v1, v2}, Lcom/oneplus/settings/ui/OPListDialog;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/String;)V

    iput-object v3, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mOPListDialog:Lcom/oneplus/settings/ui/OPListDialog;

    iget-object p1, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mOPListDialog:Lcom/oneplus/settings/ui/OPListDialog;

    invoke-virtual {p1, p0}, Lcom/oneplus/settings/ui/OPListDialog;->setOnDialogListItemClickListener(Lcom/oneplus/settings/ui/OPListDialog$OnDialogListItemClickListener;)V

    const-string p1, "incoming_call_vibrate_intensity"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mOPListDialog:Lcom/oneplus/settings/ui/OPListDialog;

    invoke-virtual {v0, p1}, Lcom/oneplus/settings/ui/OPListDialog;->setVibrateLevelKey(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mCunrrentType:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, "notice_vibrate_intensity"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mOPListDialog:Lcom/oneplus/settings/ui/OPListDialog;

    invoke-virtual {v0, p1}, Lcom/oneplus/settings/ui/OPListDialog;->setVibrateLevelKey(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mCunrrentType:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string p1, "vibrate_on_touch_intensity"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mOPListDialog:Lcom/oneplus/settings/ui/OPListDialog;

    invoke-virtual {v0, p1}, Lcom/oneplus/settings/ui/OPListDialog;->setVibrateLevelKey(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mCunrrentType:Ljava/lang/String;

    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mOPListDialog:Lcom/oneplus/settings/ui/OPListDialog;

    invoke-virtual {p0}, Lcom/oneplus/settings/ui/OPListDialog;->show()V

    const/4 p0, 0x1

    return p0
.end method
