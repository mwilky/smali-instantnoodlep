.class public Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;
.super Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;
.source "AutoSelectPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$OnNetworkSelectModeListener;
    }
.end annotation


# static fields
.field private static final MINIMUM_DIALOG_TIME_MILLIS:J


# instance fields
.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$OnNetworkSelectModeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOnlyAutoSelectInHome:Z

.field mProgressDialog:Landroid/app/ProgressDialog;

.field mSwitchPreference:Landroidx/preference/SwitchPreference;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private final mUiHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->MINIMUM_DIALOG_TIME_MILLIS:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-class p2, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mListeners:Ljava/util/List;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mUiHandler:Landroid/os/Handler;

    return-void
.end method

.method private dismissProgressBar()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method private showAutoSelectProgressBar()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f121328

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    :cond_0
    iget-object p0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method


# virtual methods
.method public addListener(Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$OnNetworkSelectModeListener;)Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SwitchPreference;

    iput-object p1, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mSwitchPreference:Landroidx/preference/SwitchPreference;

    return-void
.end method

.method public getAvailabilityStatus(I)I
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->shouldDisplayNetworkSelectOptions(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    :goto_0
    return p0
.end method

.method public init(I)Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;
    .locals 1

    iput p1, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object p1

    iget v0, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    invoke-virtual {p1, v0}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-class v0, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/CarrierConfigManager;

    iget v0, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    invoke-virtual {p1, v0}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "only_auto_select_in_home_network"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mOnlyAutoSelectInHome:Z

    return-object p0
.end method

.method public isChecked()Z
    .locals 1

    iget-object p0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkSelectionMode()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic lambda$setChecked$0$AutoSelectPreferenceController(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mSwitchPreference:Landroidx/preference/SwitchPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mSwitchPreference:Landroidx/preference/SwitchPreference;

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mListeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$OnNetworkSelectModeListener;

    invoke-interface {v0}, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$OnNetworkSelectModeListener;->onNetworkSelectModeChanged()V

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->dismissProgressBar()V

    return-void
.end method

.method public synthetic lambda$setChecked$1$AutoSelectPreferenceController(J)V
    .locals 5

    iget-object v0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->setNetworkSelectionModeAutomatic()V

    iget-object v0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkSelectionMode()I

    move-result v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sub-long/2addr v1, p1

    iget-object p1, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mUiHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/settings/network/telephony/gsm/-$$Lambda$AutoSelectPreferenceController$8cfdfDm3wWXeyQnNAtsWzhpWX1k;

    invoke-direct {p2, p0, v0}, Lcom/android/settings/network/telephony/gsm/-$$Lambda$AutoSelectPreferenceController$8cfdfDm3wWXeyQnNAtsWzhpWX1k;-><init>(Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;I)V

    sget-wide v3, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->MINIMUM_DIALOG_TIME_MILLIS:J

    sub-long/2addr v3, v1

    const-wide/16 v0, 0x0

    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public setChecked(Z)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-direct {p0}, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->showAutoSelectProgressBar()V

    iget-object p1, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mSwitchPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    new-instance p1, Lcom/android/settings/network/telephony/gsm/-$$Lambda$AutoSelectPreferenceController$EmUp4DFy_wYLjrc3Djbp4crtAHE;

    invoke-direct {p1, p0, v1, v2}, Lcom/android/settings/network/telephony/gsm/-$$Lambda$AutoSelectPreferenceController$EmUp4DFy_wYLjrc3Djbp4crtAHE;-><init>(Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;J)V

    invoke-static {p1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return v0

    :cond_0
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iget v1, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    const-string v2, "android.provider.extra.SUB_ID"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v1, Lcom/android/settings/core/SubSettingLauncher;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    const/16 v1, 0x62d

    invoke-virtual {p0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    const v1, 0x7f120440

    invoke-virtual {p0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return v0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->updateState(Landroidx/preference/Preference;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mOnlyAutoSelectInHome:Z

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-boolean v0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mOnlyAutoSelectInHome:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v2, 0x7f120a3f

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object p0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v3

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method
