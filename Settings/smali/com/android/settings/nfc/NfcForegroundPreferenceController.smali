.class public Lcom/android/settings/nfc/NfcForegroundPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "NfcForegroundPreferenceController.java"

# interfaces
.implements Lcom/android/settings/nfc/PaymentBackend$Callback;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;


# instance fields
.field private mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

.field private mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

.field private mPreference:Lcom/android/settings/nfc/OPNfcForegroundPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/nfc/NfcForegroundPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/nfc/OPNfcForegroundPreference;

    iput-object p1, p0, Lcom/android/settings/nfc/NfcForegroundPreferenceController;->mPreference:Lcom/android/settings/nfc/OPNfcForegroundPreference;

    iget-object p1, p0, Lcom/android/settings/nfc/NfcForegroundPreferenceController;->mPreference:Lcom/android/settings/nfc/OPNfcForegroundPreference;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/settings/nfc/NfcForegroundPreferenceController;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    if-eqz p0, :cond_0

    invoke-virtual {p1, p0}, Lcom/android/settings/nfc/OPNfcForegroundPreference;->setPaymentBackend(Lcom/android/settings/nfc/PaymentBackend;)V

    :cond_0
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 2

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.nfc"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x3

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lcom/android/settings/nfc/NfcForegroundPreferenceController;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    if-nez p0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/nfc/PaymentBackend;->getPaymentAppInfos()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_2

    const/4 v1, 0x0

    :cond_2
    return v1
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/nfc/NfcForegroundPreferenceController;->mPreference:Lcom/android/settings/nfc/OPNfcForegroundPreference;

    invoke-virtual {p0}, Lcom/android/settings/nfc/OPNfcForegroundPreference;->getEntry()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onPaymentAppsChanged()V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/nfc/NfcForegroundPreferenceController;->mPreference:Lcom/android/settings/nfc/OPNfcForegroundPreference;

    invoke-virtual {p0}, Lcom/android/settings/nfc/OPNfcForegroundPreference;->onPaymentAppsChanged()V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Landroidx/preference/DropDownPreference;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Landroidx/preference/DropDownPreference;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1}, Landroidx/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, p2}, Landroidx/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    aget-object v0, v0, v2

    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_1

    move p1, p2

    goto :goto_0

    :cond_1
    move p1, v1

    :goto_0
    iget-object v0, p0, Lcom/android/settings/nfc/NfcForegroundPreferenceController;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    invoke-virtual {v0, p1}, Lcom/android/settings/nfc/PaymentBackend;->setForegroundMode(Z)V

    iget-object v0, p0, Lcom/android/settings/nfc/NfcForegroundPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_2

    const/16 p1, 0x656

    goto :goto_1

    :cond_2
    const/16 p1, 0x657

    :goto_1
    new-array v1, v1, [Landroid/util/Pair;

    invoke-virtual {v0, p0, p1, v1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    return p2
.end method

.method public onStart()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/nfc/NfcForegroundPreferenceController;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/android/settings/nfc/PaymentBackend;->registerCallback(Lcom/android/settings/nfc/PaymentBackend$Callback;)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/nfc/NfcForegroundPreferenceController;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/android/settings/nfc/PaymentBackend;->unregisterCallback(Lcom/android/settings/nfc/PaymentBackend$Callback;)V

    :cond_0
    return-void
.end method

.method public setPaymentBackend(Lcom/android/settings/nfc/PaymentBackend;)V
    .locals 1

    iput-object p1, p0, Lcom/android/settings/nfc/NfcForegroundPreferenceController;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    iget-object v0, p0, Lcom/android/settings/nfc/NfcForegroundPreferenceController;->mPreference:Lcom/android/settings/nfc/OPNfcForegroundPreference;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/nfc/NfcForegroundPreferenceController;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    if-eqz p0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/settings/nfc/OPNfcForegroundPreference;->setPaymentBackend(Lcom/android/settings/nfc/PaymentBackend;)V

    :cond_0
    return-void
.end method

.method public updateNonIndexableKeys(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 2

    instance-of v0, p1, Landroidx/preference/DropDownPreference;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Landroidx/preference/DropDownPreference;

    iget-object v1, p0, Lcom/android/settings/nfc/NfcForegroundPreferenceController;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    invoke-virtual {v1}, Lcom/android/settings/nfc/PaymentBackend;->isForegroundMode()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "1"

    goto :goto_0

    :cond_0
    const-string v1, "0"

    :goto_0
    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    :cond_1
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method
