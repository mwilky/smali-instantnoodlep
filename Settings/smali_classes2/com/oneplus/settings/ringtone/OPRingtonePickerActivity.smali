.class public Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;
.super Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;
.source "OPRingtonePickerActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private mCursor:Landroid/database/Cursor;

.field private mDefualtPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

.field private mLocalPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

.field private mMainRoot:Landroid/preference/PreferenceCategory;

.field private mNOPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

.field private mRequestCode:I

.field private mRingtoneVibrateCategory:Landroid/preference/PreferenceCategory;

.field private mSMSNotificationVibrateIntensityPreference:Landroid/preference/Preference;

.field private mSim1Layout:Landroid/preference/Preference;

.field private mSim1Uri:Landroid/net/Uri;

.field private mSim2Layout:Landroid/preference/Preference;

.field private mSim2Uri:Landroid/net/Uri;

.field private final mSimStateReceiver:Landroid/content/BroadcastReceiver;

.field private mSwitch:Landroid/preference/SwitchPreference;

.field private mSystemRings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mUriForLocalItem:Landroid/net/Uri;

.field private mVibrateCategory:Landroid/preference/PreferenceCategory;

.field protected mVibratePattern:[J

.field private mVibrateRingPreference:Landroid/preference/Preference;

.field private mVibrateWhenRingObserver:Landroid/database/ContentObserver;

.field private mVibrateWhenRingPreference:Landroid/preference/SwitchPreference;

.field protected mVibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSystemRings:Ljava/util/List;

    const/16 v0, 0x64

    iput v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mRequestCode:I

    new-instance v0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity$2;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity$2;-><init>(Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;)V

    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity$3;-><init>(Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mVibrateWhenRingObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;)Landroid/preference/Preference;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSim1Layout:Landroid/preference/Preference;

    return-object p0
.end method

.method static synthetic access$100(Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;)Landroid/preference/Preference;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSim2Layout:Landroid/preference/Preference;

    return-object p0
.end method

.method static synthetic access$200(Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;)Landroid/preference/SwitchPreference;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mVibrateWhenRingPreference:Landroid/preference/SwitchPreference;

    return-object p0
.end method

.method private initPreference(Z)V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSystemRings:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSystemRings:Ljava/util/List;

    iget-object p1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_0
    new-instance p1, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-direct {p1, p0}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;-><init>(Landroid/content/Context;)V

    iget v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mType:I

    invoke-static {v0}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->getSettingForType(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v0}, Lcom/oneplus/settings/utils/OPNotificationUtils;->replaceWith(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    invoke-static {v0}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->getUriFromCursor(Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSystemRings:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mUriForDefaultItem:Landroid/net/Uri;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :goto_0
    iget-object p1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_3

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSystemRings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSystemRings:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSystemRings:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity$1;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity$1;-><init>(Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_5
    :goto_3
    return-void
.end method

.method private initVibrateWhenRingPreference()V
    .locals 3

    const-string v0, "vibrate_when_ringing"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mVibrateWhenRingPreference:Landroid/preference/SwitchPreference;

    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mVibrateWhenRingPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const-string v1, "telephony"

    const-string v2, "ramping_ringer_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mVibrateCategory:Landroid/preference/PreferenceCategory;

    iget-object p0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mVibrateWhenRingPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_1
    return-void
.end method

.method private updateChecks(Ljava/lang/String;)V
    .locals 2

    iget-object p0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSystemRings:Ljava/util/List;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    iget p2, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mRequestCode:I

    if-ne p1, p2, :cond_0

    if-eqz p3, :cond_0

    const-string p1, "android.intent.extra.ringtone.PICKED_URI"

    invoke-virtual {p3, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mUriForDefaultItem:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    iput-object p1, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mUriForDefaultItem:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->updateSelected()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportXVibrate()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "vibrator"

    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Vibrator;

    iput-object p1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mVibrator:Landroid/os/Vibrator;

    :cond_0
    iget-object p1, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mRingtoneManager:Lcom/oneplus/settings/ringtone/OPRingtoneManager;

    invoke-virtual {p1}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->getCursor()Landroid/database/Cursor;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    iget-object p1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    if-eqz p1, :cond_1

    instance-of v0, p1, Landroid/database/CursorWrapper;

    if-eqz v0, :cond_1

    check-cast p1, Landroid/database/CursorWrapper;

    invoke-virtual {p1}, Landroid/database/CursorWrapper;->getWrappedCursor()Landroid/database/Cursor;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    :cond_1
    iget p1, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mType:I

    const-string v0, "vibrate_strength"

    const-string v1, "vibrate"

    const-string v2, "setting_title"

    const-string v3, "no_select"

    const-string v4, "local_select"

    const/4 v5, 0x1

    if-ne p1, v5, :cond_5

    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->isMultiSimEnabled()Z

    move-result p1

    if-eqz p1, :cond_5

    const p1, 0x7f1600bc

    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mMainRoot:Landroid/preference/PreferenceCategory;

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mVibrateCategory:Landroid/preference/PreferenceCategory;

    const-string p1, "setting_key"

    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/SwitchPreference;

    iput-object p1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSwitch:Landroid/preference/SwitchPreference;

    const-string p1, "sim1_select"

    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSim1Layout:Landroid/preference/Preference;

    const-string p1, "sim2_select"

    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSim2Layout:Landroid/preference/Preference;

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    iput-object p1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mLocalPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    iput-object p1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mNOPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    iget-object p1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {p1, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object p1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSim1Layout:Landroid/preference/Preference;

    invoke-virtual {p1, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object p1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSim2Layout:Landroid/preference/Preference;

    invoke-virtual {p1, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object p1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->isRingSimSwitchOn(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-boolean p1, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mContactsRingtone:Z

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->isProfileId()Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    iget-object p1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mMainRoot:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_3
    iget-object p1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {p1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mContactsRingtone:Z

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mMainRoot:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mLocalPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    iget-object p1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mMainRoot:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mNOPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mMainRoot:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSim1Layout:Landroid/preference/Preference;

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    iget-object p1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mMainRoot:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSim2Layout:Landroid/preference/Preference;

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    invoke-direct {p0, v5}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->initPreference(Z)V

    :goto_0
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mVibrateRingPreference:Landroid/preference/Preference;

    iget-object p1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mVibrateRingPreference:Landroid/preference/Preference;

    invoke-virtual {p1, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    invoke-direct {p0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->initVibrateWhenRingPreference()V

    iget-boolean p1, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mContactsRingtone:Z

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mVibrateCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_2

    :cond_5
    const p1, 0x7f1600bd

    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    iput-object p1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mLocalPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    iput-object p1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mNOPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    const-string p1, "defualt_select"

    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    iput-object p1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mDefualtPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    iget-object p1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mDefualtPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {p1, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string p1, "sms_notification_vibrate_intensity"

    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSMSNotificationVibrateIntensityPreference:Landroid/preference/Preference;

    iget-object p1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSMSNotificationVibrateIntensityPreference:Landroid/preference/Preference;

    invoke-virtual {p1, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mMainRoot:Landroid/preference/PreferenceCategory;

    const-string p1, "ringtone_vibrate"

    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mRingtoneVibrateCategory:Landroid/preference/PreferenceCategory;

    iget p1, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mType:I

    if-ne p1, v5, :cond_6

    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->isMultiSimEnabled()Z

    move-result p1

    if-nez p1, :cond_6

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mVibrateCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mVibrateCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mVibrateRingPreference:Landroid/preference/Preference;

    iget-object p1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mVibrateRingPreference:Landroid/preference/Preference;

    invoke-virtual {p1, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    invoke-direct {p0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->initVibrateWhenRingPreference()V

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mRingtoneVibrateCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :goto_1
    iget-object p1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mMainRoot:Landroid/preference/PreferenceCategory;

    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mDefualtPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    invoke-direct {p0, v5}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->initPreference(Z)V

    :cond_7
    :goto_2
    iget-object p1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mLocalPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {p1, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object p1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mNOPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {p1, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->updateSelected()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    :cond_0
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->onPause()V

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mVibrateWhenRingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 9

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->isSelectedNone:Z

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v1, "setting_key"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_f

    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->stopAnyPlayingRingtone()V

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    invoke-static {p1, v1}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->setRingSimSwitch(Landroid/content/Context;I)V

    iget-object p1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {p1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result p1

    const-string v1, "none"

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "op_ringtone1_df"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "op_ringtone2_df"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p1}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->getStaticDefaultRingtoneUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v6

    if-eqz v4, :cond_0

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_0

    :cond_0
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_1
    :goto_0
    move-object v4, v2

    :cond_2
    :goto_1
    if-eqz v5, :cond_4

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    move-object v1, v5

    goto :goto_3

    :cond_4
    if-eqz v6, :cond_5

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_5
    :goto_2
    move-object v1, v2

    :goto_3
    if-nez v4, :cond_6

    move-object v4, v2

    goto :goto_4

    :cond_6
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    :goto_4
    if-nez v1, :cond_7

    goto :goto_5

    :cond_7
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    :goto_5
    invoke-static {p1, v0, v4}, Landroid/media/RingtoneManager;->setActualRingtoneUriBySubId(Landroid/content/Context;ILandroid/net/Uri;)V

    invoke-static {p1, v3, v2}, Landroid/media/RingtoneManager;->setActualRingtoneUriBySubId(Landroid/content/Context;ILandroid/net/Uri;)V

    iget-object p1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mMainRoot:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mLocalPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    iget-object p1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mMainRoot:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mNOPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    iget-object p1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mMainRoot:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSim1Layout:Landroid/preference/Preference;

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    iget-object p1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mMainRoot:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSim2Layout:Landroid/preference/Preference;

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    invoke-direct {p0, v0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->initPreference(Z)V

    goto/16 :goto_9

    :cond_8
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "op_ringtone_df"

    invoke-static {v0, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->getStaticDefaultRingtoneUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    if-eqz v0, :cond_a

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    goto :goto_6

    :cond_9
    move-object v6, v0

    goto :goto_7

    :cond_a
    if-eqz v4, :cond_b

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_7

    :cond_b
    :goto_6
    move-object v6, v2

    :goto_7
    const-string v7, "ringtone"

    invoke-static {v5, v7, v6}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    if-eqz v0, :cond_d

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    goto :goto_8

    :cond_c
    move-object v2, v0

    goto :goto_8

    :cond_d
    if-eqz v4, :cond_e

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_e
    :goto_8
    const-string v0, "ringtone_2"

    invoke-static {p1, v0, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object p1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mMainRoot:Landroid/preference/PreferenceCategory;

    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mLocalPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    iget-object p1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mMainRoot:Landroid/preference/PreferenceCategory;

    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mNOPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    iget-object p1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mMainRoot:Landroid/preference/PreferenceCategory;

    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSim1Layout:Landroid/preference/Preference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    iget-object p1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mMainRoot:Landroid/preference/PreferenceCategory;

    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSim2Layout:Landroid/preference/Preference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    invoke-direct {p0, v3}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->initPreference(Z)V

    :goto_9
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->startVibrate()V

    goto/16 :goto_a

    :cond_f
    const-string v1, "local_select"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v4, "android.intent.extra.ringtone.EXISTING_URI"

    const-string v5, "android.intent.extra.ringtone.TYPE"

    if-eqz v1, :cond_10

    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->stopAnyPlayingRingtone()V

    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mType:I

    invoke-virtual {p1, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-boolean v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mHasDefaultItem:Z

    const-string v1, "android.intent.extra.ringtone.SHOW_DEFAULT"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mUriForLocalItem:Landroid/net/Uri;

    invoke-virtual {p1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-boolean v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mContactsRingtone:Z

    const-string v1, "ringtone_for_contacts"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-boolean v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mIsAlarmNeedVibrate:Z

    const-string v1, "needVibrate"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mRequestCode:I

    invoke-virtual {p0, p1, v0}, Landroid/preference/PreferenceActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_a

    :cond_10
    const-string v1, "no_select"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v6, "-1"

    const v7, 0x7f120ea3

    if-eqz v1, :cond_13

    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->stopAnyPlayingRingtone()V

    invoke-direct {p0, v6}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->updateChecks(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->isThreePart()Z

    move-result p1

    if-nez p1, :cond_11

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget v1, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mType:I

    invoke-static {p1, v1, v2}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    :cond_11
    iget-boolean p1, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mHasDefaultItem:Z

    if-eqz p1, :cond_12

    iget-object p1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mDefualtPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    if-eqz p1, :cond_12

    invoke-virtual {p1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_12
    iget-object p1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mLocalPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {p1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mNOPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {p1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iput-boolean v3, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->isSelectedNone:Z

    iget-object p1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mLocalPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {p1, v7}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    iput-object v2, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mUriForLocalItem:Landroid/net/Uri;

    iput-object v2, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mUriForDefaultItem:Landroid/net/Uri;

    goto/16 :goto_a

    :cond_13
    const-string v1, "sim1_select"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v8, "oneplus.intent.extra.ringtone.simid"

    if-eqz v1, :cond_14

    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v8, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSim1Uri:Landroid/net/Uri;

    invoke-virtual {p1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mType:I

    invoke-virtual {p1, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_a

    :cond_14
    const-string v1, "sim2_select"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v0, 0x2

    invoke-virtual {p1, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSim2Uri:Landroid/net/Uri;

    invoke-virtual {p1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mType:I

    invoke-virtual {p1, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_a

    :cond_15
    const-string v1, "defualt_select"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v4, 0x12c

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mDefualtUri:Landroid/net/Uri;

    iput-object v1, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mUriForDefaultItem:Landroid/net/Uri;

    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mUriForDefaultItem:Landroid/net/Uri;

    invoke-virtual {p0, v4, v1}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->playRingtone(ILandroid/net/Uri;)V

    invoke-direct {p0, v6}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->updateChecks(Ljava/lang/String;)V

    const-string v1, "mUriForDefaultItem:"

    invoke-static {v1}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline23(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mUriForDefaultItem:Landroid/net/Uri;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " key:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object p1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mLocalPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {p1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mNOPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {p1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mDefualtPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    if-eqz p1, :cond_16

    invoke-virtual {p1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_16
    iget-object p1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mLocalPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {p1, v7}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    iput-object v2, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mUriForLocalItem:Landroid/net/Uri;

    goto/16 :goto_a

    :cond_17
    const-string v1, "vibrate_when_ringing"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->startVibrate()V

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mVibrateWhenRingPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result p0

    invoke-static {p1, v1, p0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_a

    :cond_18
    const-string v1, "vibrate_strength"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v5, 0x270f

    if-eqz v1, :cond_19

    const-class p1, Lcom/oneplus/settings/notification/OPRingtoneVibrateStrengthSettings;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v5}, Lcom/oneplus/settings/utils/OPUtils;->startFragment(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_a

    :cond_19
    const-string v1, "sms_notification_vibrate_intensity"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    const-class p1, Lcom/oneplus/settings/notification/OPSMSNotificationVibrateIntensitySettings;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v5}, Lcom/oneplus/settings/utils/OPUtils;->startFragment(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_a

    :cond_1a
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mUriForDefaultItem:Landroid/net/Uri;

    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mUriForDefaultItem:Landroid/net/Uri;

    invoke-virtual {p0, v4, v1}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->playRingtone(ILandroid/net/Uri;)V

    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->isThreePart()Z

    move-result v1

    if-nez v1, :cond_1b

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget v4, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mType:I

    iget-object v5, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mUriForDefaultItem:Landroid/net/Uri;

    invoke-static {v1, v4, v5}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    :cond_1b
    invoke-direct {p0, p1}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->updateChecks(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mHasDefaultItem:Z

    if-eqz p1, :cond_1c

    iget-object p1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mDefualtPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    if-eqz p1, :cond_1c

    invoke-virtual {p1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_1c
    iget-object p1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mLocalPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {p1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mNOPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {p1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mLocalPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {p1, v7}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    iput-object v2, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mUriForLocalItem:Landroid/net/Uri;

    :goto_a
    return v3
.end method

.method protected onResume()V
    .locals 4

    invoke-super {p0}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->onResume()V

    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mVibrateWhenRingPreference:Landroid/preference/SwitchPreference;

    const/4 v1, 0x1

    const-string v2, "vibrate_when_ringing"

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    move v3, v1

    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mVibrateWhenRingPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_1
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object p0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mVibrateWhenRingObserver:Landroid/database/ContentObserver;

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v1, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method protected onStart()V
    .locals 2

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStart()V

    iget v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/preference/PreferenceActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 2

    iget v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    return-void
.end method

.method public startVibrate()V
    .locals 3

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/mediarouter/R$string;->systemVibrateEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mVibrator:Landroid/os/Vibrator;

    const/16 v2, 0x3eb

    invoke-static {v0, v1, v2}, Landroidx/mediarouter/R$string;->getVibratorScenePattern(Landroid/content/Context;Landroid/os/Vibrator;I)[J

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mVibratePattern:[J

    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mVibratePattern:[J

    iget-object p0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mVibrator:Landroid/os/Vibrator;

    invoke-static {v0, p0}, Landroidx/mediarouter/R$string;->vibrateIfNeeded([JLandroid/os/Vibrator;)V

    :cond_0
    return-void
.end method

.method protected updateSelected()V
    .locals 21

    move-object/from16 v1, p0

    iget v0, v1, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mType:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v2, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->isMultiSimEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, v1, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSim1Layout:Landroid/preference/Preference;

    if-eqz v0, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->getSim1Enable()Z

    move-result v4

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_1
    iget-object v0, v1, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSim2Layout:Landroid/preference/Preference;

    if-eqz v0, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->getSim2Enable()Z

    move-result v4

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->getActualRingtoneUriBySubId(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v1, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSim1Uri:Landroid/net/Uri;

    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->getActualRingtoneUriBySubId(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v1, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSim2Uri:Landroid/net/Uri;

    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v4, v1, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSim1Uri:Landroid/net/Uri;

    iget v5, v1, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mType:I

    invoke-static {v0, v4, v5, v2}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->getLocatRingtoneTitle(Landroid/content/Context;Landroid/net/Uri;II)Lcom/oneplus/settings/ringtone/OPRingtoneManager$ResultRing;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, v1, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSim2Uri:Landroid/net/Uri;

    iget v6, v1, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mType:I

    const/4 v7, 0x2

    invoke-static {v4, v5, v6, v7}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->getLocatRingtoneTitle(Landroid/content/Context;Landroid/net/Uri;II)Lcom/oneplus/settings/ringtone/OPRingtoneManager$ResultRing;

    move-result-object v4

    iget-object v5, v0, Lcom/oneplus/settings/ringtone/OPRingtoneManager$ResultRing;->ringUri:Landroid/net/Uri;

    iput-object v5, v1, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSim1Uri:Landroid/net/Uri;

    iget-object v5, v4, Lcom/oneplus/settings/ringtone/OPRingtoneManager$ResultRing;->ringUri:Landroid/net/Uri;

    iput-object v5, v1, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSim2Uri:Landroid/net/Uri;

    iget v5, v1, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mType:I

    invoke-static {v5}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->getSettingForType(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSim1Layout:Landroid/preference/Preference;

    const v7, 0x7f120ea6

    if-eqz v6, :cond_4

    iget-object v0, v0, Lcom/oneplus/settings/ringtone/OPRingtoneManager$ResultRing;->title:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-static {v1, v0, v5}, Lcom/oneplus/settings/utils/OPNotificationUtils;->replaceWith(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-virtual {v1, v7}, Landroid/preference/PreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v6, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_4
    iget-object v0, v1, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSim2Layout:Landroid/preference/Preference;

    if-eqz v0, :cond_6

    iget-object v4, v4, Lcom/oneplus/settings/ringtone/OPRingtoneManager$ResultRing;->title:Ljava/lang/String;

    if-eqz v4, :cond_5

    invoke-static {v1, v4, v5}, Lcom/oneplus/settings/utils/OPNotificationUtils;->replaceWith(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_5
    invoke-virtual {v1, v7}, Landroid/preference/PreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_6
    :goto_2
    iget-object v0, v1, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mUriForDefaultItem:Landroid/net/Uri;

    const-string v4, "-1"

    const/4 v5, 0x0

    const v6, 0x7f120ea3

    if-nez v0, :cond_7

    iget-object v0, v1, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mLocalPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, v1, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mNOPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    invoke-direct {v1, v4}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->updateChecks(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mLocalPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {v0, v6}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    iput-object v5, v1, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mUriForLocalItem:Landroid/net/Uri;

    iget-boolean v0, v1, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mHasDefaultItem:Z

    if-eqz v0, :cond_14

    iget-object v0, v1, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mDefualtPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    if-eqz v0, :cond_14

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_9

    :cond_7
    iget-object v0, v1, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mNOPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, v1, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mUriForDefaultItem:Landroid/net/Uri;

    invoke-static {v0}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->isDefault(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-boolean v0, v1, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mHasDefaultItem:Z

    if-eqz v0, :cond_9

    iget-object v0, v1, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mDefualtPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    if-eqz v0, :cond_8

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_8
    iget-object v0, v1, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mLocalPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, v1, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mLocalPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {v0, v6}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    invoke-direct {v1, v4}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->updateChecks(Ljava/lang/String;)V

    iput-object v5, v1, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mUriForLocalItem:Landroid/net/Uri;

    return-void

    :cond_9
    iget-object v0, v1, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mUriForDefaultItem:Landroid/net/Uri;

    invoke-static {v0}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->isDefault(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget v7, v1, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mType:I

    iget-object v8, v1, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mUriForDefaultItem:Landroid/net/Uri;

    const-string v9, "RingtoneManager"

    invoke-static {v7}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->getSettingForType(I)Ljava/lang/String;

    move-result-object v10

    and-int/lit8 v11, v7, 0x1

    if-eqz v11, :cond_a

    const-string v11, "is_ringtone"

    goto :goto_3

    :cond_a
    move-object v11, v5

    :goto_3
    and-int/lit8 v12, v7, 0x2

    if-eqz v12, :cond_b

    const-string v11, "is_notification"

    :cond_b
    and-int/lit8 v7, v7, 0x4

    if-eqz v7, :cond_c

    const-string v11, "is_alarm"

    :cond_c
    if-eqz v11, :cond_f

    const-string v7, "ringtone"

    invoke-virtual {v10, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_d

    move-object v10, v7

    :cond_d
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ro.config."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v12, "."

    invoke-virtual {v7, v12}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v7, v3, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ringtoneRestoreFromDefault: title = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    sget-object v15, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v0, "_id"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v16

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "=1 and "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "title"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "=?"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    new-array v0, v2, [Ljava/lang/String;

    aput-object v7, v0, v3

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v18, v0

    invoke-virtual/range {v14 .. v20}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v7, :cond_e

    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_e

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v11, v12}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ringtoneRestoreFromDefault: ["

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "] = "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_5

    :catch_0
    move-exception v0

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object v7, v5

    goto :goto_6

    :catch_1
    move-exception v0

    move-object v7, v5

    :goto_4
    :try_start_2
    const-string v10, "RemoteException: "

    invoke-static {v9, v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_e
    :goto_5
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_7

    :catchall_1
    move-exception v0

    :goto_6
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0

    :cond_f
    :goto_7
    iput-object v8, v1, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mUriForDefaultItem:Landroid/net/Uri;

    :cond_10
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v7, v1, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mUriForDefaultItem:Landroid/net/Uri;

    iget v8, v1, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mType:I

    invoke-static {v0, v7, v8}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->isSystemRingtone(Landroid/content/Context;Landroid/net/Uri;I)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, v1, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mLocalPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, v1, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mUriForDefaultItem:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->updateChecks(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mLocalPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {v0, v6}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    iput-object v5, v1, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mUriForLocalItem:Landroid/net/Uri;

    iget-boolean v0, v1, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mHasDefaultItem:Z

    if-eqz v0, :cond_14

    iget-object v0, v1, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mDefualtPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    if-eqz v0, :cond_14

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_9

    :cond_11
    iget-object v0, v1, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mLocalPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-boolean v0, v1, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mHasDefaultItem:Z

    if-eqz v0, :cond_12

    iget-object v0, v1, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mDefualtPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    if-eqz v0, :cond_12

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_12
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, v1, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mUriForDefaultItem:Landroid/net/Uri;

    iget v5, v1, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mType:I

    invoke-static {v0, v2, v5, v3}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->getLocatRingtoneTitle(Landroid/content/Context;Landroid/net/Uri;II)Lcom/oneplus/settings/ringtone/OPRingtoneManager$ResultRing;

    move-result-object v0

    iget-object v2, v1, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mLocalPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    iget-object v3, v0, Lcom/oneplus/settings/ringtone/OPRingtoneManager$ResultRing;->title:Ljava/lang/String;

    if-eqz v3, :cond_13

    goto :goto_8

    :cond_13
    invoke-virtual {v1, v6}, Landroid/preference/PreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_8
    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, v0, Lcom/oneplus/settings/ringtone/OPRingtoneManager$ResultRing;->ringUri:Landroid/net/Uri;

    iput-object v0, v1, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mUriForDefaultItem:Landroid/net/Uri;

    iput-object v0, v1, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mUriForLocalItem:Landroid/net/Uri;

    invoke-direct {v1, v4}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->updateChecks(Ljava/lang/String;)V

    :cond_14
    :goto_9
    return-void
.end method
