.class public Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "BluetoothDashboardFragment.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static mOPBluetoothDiscoverablePreferenceController:Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController;


# instance fields
.field private mConnecttion:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mController:Lcom/android/settings/bluetooth/BluetoothSwitchPreferenceController;

.field private mFooterPreference:Lcom/oneplus/settings/widget/OPFooterPreference;

.field private mPodsService:Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mStub:Lcom/oos/onepluspods/service/aidl/IOnePlusUpdate$Stub;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mTwsPreferences:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/settings/bluetooth/BluetoothDevicePreference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment$1;

    invoke-direct {v0}, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment$1;-><init>()V

    sput-object v0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    invoke-static {}, Lcom/oneplus/lib/app/OneplusApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->mTwsPreferences:Ljava/util/HashMap;

    new-instance v0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment$2;-><init>(Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;)V

    iput-object v0, p0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->mConnecttion:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment$3;

    invoke-direct {v0, p0}, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment$3;-><init>(Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;)V

    iput-object v0, p0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->mStub:Lcom/oos/onepluspods/service/aidl/IOnePlusUpdate$Stub;

    new-instance v0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment$4;

    invoke-direct {v0, p0}, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment$4;-><init>(Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;)V

    iput-object v0, p0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;)Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->mPodsService:Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice;

    return-object p0
.end method

.method static synthetic access$002(Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice;)Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->mPodsService:Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->mTwsPreferences:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;)Lcom/oos/onepluspods/service/aidl/IOnePlusUpdate$Stub;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->mStub:Lcom/oos/onepluspods/service/aidl/IOnePlusUpdate$Stub;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->updatePreferecenSummary(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;III)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->getBatteryString(III)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;Ljava/lang/String;Ljava/lang/String;)Lcom/android/settings/bluetooth/BluetoothDevicePreference;
    .locals 4

    invoke-virtual {p0, p2}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    check-cast p2, Landroidx/preference/PreferenceCategory;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p2, v1}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v2

    instance-of v3, v2, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    invoke-virtual {v2}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getBluetoothDevice()Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object p0, p0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->mTwsPreferences:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_1
    return-object v2
.end method

.method private getBatteryString(III)Ljava/lang/String;
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "%"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez p1, :cond_0

    iget-object v4, p0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->mContext:Landroid/content/Context;

    const v5, 0x7f120686

    new-array v6, v3, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const v4, 0x7f120684

    if-lez p2, :cond_2

    if-lez p1, :cond_1

    iget-object v5, p0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v5, p0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->mContext:Landroid/content/Context;

    const v6, 0x7f120687

    new-array v7, v3, [Ljava/lang/Object;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    if-lez p3, :cond_5

    if-gtz p1, :cond_3

    if-lez p2, :cond_4

    :cond_3
    iget-object p1, p0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    iget-object p0, p0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->mContext:Landroid/content/Context;

    const p1, 0x7f120685

    new-array p2, v3, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    aput-object p3, p2, v2

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private updateAllPreferenceSummary()V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->mTwsPreferences:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->mTwsPreferences:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getBluetoothDevice()Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->getCachedDevice(Ljava/lang/String;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnectedHfpDevice()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnectedA2dpDevice()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    :try_start_0
    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->updatePreferecenSummary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "updateBluetoothDevicePreferenceSummary = "

    const-string v3, "BluetoothDashboardFrag"

    invoke-static {v2, v1, v3}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline35(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private updatePreferecenSummary(Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->mPodsService:Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice;

    invoke-interface {v0, p1}, Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice;->getBattaryInfo(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    rem-int/lit16 v1, v0, 0x3e8

    div-int/lit16 v0, v0, 0x3e8

    rem-int/lit16 v2, v0, 0x3e8

    div-int/lit16 v0, v0, 0x3e8

    rem-int/lit16 v3, v0, 0x3e8

    const-string v4, "updateView battery = "

    const-string v5, " left = "

    const-string v6, " right="

    invoke-static {v4, v0, v5, v1, v6}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline25(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " box = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "BluetoothDashboardFrag"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->getBatteryString(III)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->mTwsPreferences:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    if-eqz p0, :cond_0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->setTwsBattery(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public checkOnePlusPods(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V
    .locals 5

    invoke-virtual {p1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getBluetoothDevice()Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->getCachedDevice(Ljava/lang/String;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    const-string v1, "onActivityCreated device.getname = "

    invoke-static {v1}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline23(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " isConnectedHfpDevice = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnectedHfpDevice()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " isConnectedA2dpDevice = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnectedA2dpDevice()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BluetoothDashboardFrag"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnectedHfpDevice()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnectedA2dpDevice()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_0
    iget-object v1, p0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->mPodsService:Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice;

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    :try_start_0
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice;->isOnePlusPods(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->mPodsService:Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice;

    iget-object v4, p0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->mStub:Lcom/oos/onepluspods/service/aidl/IOnePlusUpdate$Stub;

    invoke-interface {v1, v4}, Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice;->setIOnePlusUpdate(Lcom/oos/onepluspods/service/aidl/IOnePlusUpdate;)V

    iget-object v1, p0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->mTwsPreferences:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->updatePreferecenSummary(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->setTwsAddress(Z)V

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->setTwsAddress(Z)V

    const-string p0, ""

    invoke-virtual {p1, p0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->setTwsBattery(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "checkOnePlusPods isOnePlusPods e = "

    invoke-static {p1, p0, v2}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline35(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->mTwsPreferences:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.oneplus.twspods"

    const-string v2, "com.oos.onepluspods.service.MultiDeviceCoreService"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    const-string v2, "address"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    const-string v1, "device"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->mConnecttion:Landroid/content/ServiceConnection;

    invoke-virtual {v0, p1, p0, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    :cond_3
    :goto_0
    return-void
.end method

.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController;

    invoke-direct {v1, p1, p0}, Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    sput-object v1, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->mOPBluetoothDiscoverablePreferenceController:Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController;

    sget-object p0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->mOPBluetoothDiscoverablePreferenceController:Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p0, Lcom/android/settings/bluetooth/BluetoothFilesPreferenceController;

    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothFilesPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method getCachedDevice(Ljava/lang/String;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->getLocalBluetoothManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object p0

    return-object p0
.end method

.method public getHelpResource()I
    .locals 0

    const p0, 0x7f1207f3

    return p0
.end method

.method getLocalBluetoothManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;
    .locals 0

    invoke-static {p1}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object p0

    return-object p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "BluetoothDashboardFrag"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x56e

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f16002c

    return p0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/settings/SettingsActivity;

    invoke-virtual {p1}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    new-instance v0, Lcom/android/settings/bluetooth/BluetoothSwitchPreferenceController;

    new-instance v1, Lcom/android/settings/widget/SwitchBarController;

    iget-object v2, p0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-direct {v1, v2}, Lcom/android/settings/widget/SwitchBarController;-><init>(Lcom/android/settings/widget/SwitchBar;)V

    iget-object v2, p0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->mFooterPreference:Lcom/oneplus/settings/widget/OPFooterPreference;

    new-instance v3, Lcom/android/settings/bluetooth/RestrictionUtils;

    invoke-direct {v3}, Lcom/android/settings/bluetooth/RestrictionUtils;-><init>()V

    invoke-direct {v0, p1, v3, v1, v2}, Lcom/android/settings/bluetooth/BluetoothSwitchPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/bluetooth/RestrictionUtils;Lcom/android/settings/widget/SwitchWidgetController;Lcom/oneplus/settings/widget/OPFooterPreference;)V

    iput-object v0, p0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->mController:Lcom/android/settings/bluetooth/BluetoothSwitchPreferenceController;

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->mController:Lcom/android/settings/bluetooth/BluetoothSwitchPreferenceController;

    invoke-virtual {p1, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    const-class p1, Lcom/android/settings/bluetooth/BluetoothDeviceRenamePreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/bluetooth/BluetoothDeviceRenamePreferenceController;

    invoke-virtual {p1, p0}, Lcom/android/settings/bluetooth/BluetoothDeviceRenamePreferenceController;->setFragment(Landroidx/fragment/app/Fragment;)V

    const-class p1, Lcom/android/settings/connecteddevice/AvailableMediaDeviceGroupController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/connecteddevice/AvailableMediaDeviceGroupController;

    invoke-virtual {p1, p0}, Lcom/android/settings/connecteddevice/AvailableMediaDeviceGroupController;->init(Lcom/android/settings/dashboard/DashboardFragment;)V

    const-class p1, Lcom/android/settings/connecteddevice/ConnectedDeviceGroupController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/connecteddevice/ConnectedDeviceGroupController;

    invoke-virtual {p1, p0}, Lcom/android/settings/connecteddevice/ConnectedDeviceGroupController;->init(Lcom/android/settings/dashboard/DashboardFragment;)V

    const-class p1, Lcom/android/settings/connecteddevice/PreviouslyConnectedDevicePreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/connecteddevice/PreviouslyConnectedDevicePreferenceController;

    invoke-virtual {p1, p0}, Lcom/android/settings/connecteddevice/PreviouslyConnectedDevicePreferenceController;->init(Lcom/android/settings/dashboard/DashboardFragment;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mFooterPreferenceMixin:Lcom/oneplus/settings/widget/FooterPreferenceMixinCompat;

    invoke-virtual {p1}, Lcom/oneplus/settings/widget/FooterPreferenceMixinCompat;->createFooterPreference()Lcom/oneplus/settings/widget/OPFooterPreference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->mFooterPreference:Lcom/oneplus/settings/widget/OPFooterPreference;

    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.bluetooth.headset.action.VENDOR_SPECIFIC_HEADSET_EVENT"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onDestroy()V
    .locals 4

    const-string v0, "BluetoothDashboardFrag"

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->mPodsService:Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice;->setIOnePlusUpdate(Lcom/oos/onepluspods/service/aidl/IOnePlusUpdate;)V

    iget-object v1, p0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->mConnecttion:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iput-object v2, p0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->mPodsService:Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "unbindService e = "

    invoke-static {v2, v1, v0}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline35(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    const-string v2, "unregisterReceiver e = "

    invoke-static {v2, v1, v0}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline35(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    sget-object v0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->mOPBluetoothDiscoverablePreferenceController:Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController;->setVisible()V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->mPodsService:Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->mStub:Lcom/oos/onepluspods/service/aidl/IOnePlusUpdate$Stub;

    invoke-interface {v0, v1}, Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice;->setIOnePlusUpdate(Lcom/oos/onepluspods/service/aidl/IOnePlusUpdate;)V

    iget-object v0, p0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->mTwsPreferences:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_1

    invoke-direct {p0}, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->updateAllPreferenceSummary()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "onResume e = "

    const-string v1, "BluetoothDashboardFrag"

    invoke-static {v0, p0, v1}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline35(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
