.class public Lcom/android/settings/network/SubscriptionsPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "SubscriptionsPreferenceController.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;
.implements Lcom/android/settings/network/SubscriptionsChangeListener$SubscriptionsChangeListenerClient;
.implements Lcom/android/settings/network/MobileDataEnabledListener$Client;
.implements Lcom/android/settings/network/telephony/DataConnectivityListener$Client;
.implements Lcom/android/settings/network/telephony/SignalStrengthListener$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/network/SubscriptionsPreferenceController$UpdateListener;
    }
.end annotation


# instance fields
.field private mConnectivityListener:Lcom/android/settings/network/telephony/DataConnectivityListener;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mDataEnabledListener:Lcom/android/settings/network/MobileDataEnabledListener;

.field private mManager:Landroid/telephony/SubscriptionManager;

.field private mPreferenceGroup:Landroidx/preference/PreferenceGroup;

.field private mPreferenceGroupKey:Ljava/lang/String;

.field private mSignalStrengthListener:Lcom/android/settings/network/telephony/SignalStrengthListener;

.field private mStartOrder:I

.field private mSubscriptionPreferences:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroidx/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private mSubscriptionsListener:Lcom/android/settings/network/SubscriptionsChangeListener;

.field private mUpdateListener:Lcom/android/settings/network/SubscriptionsPreferenceController$UpdateListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/lifecycle/Lifecycle;Lcom/android/settings/network/SubscriptionsPreferenceController$UpdateListener;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mUpdateListener:Lcom/android/settings/network/SubscriptionsPreferenceController$UpdateListener;

    iput-object p4, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mPreferenceGroupKey:Ljava/lang/String;

    iput p5, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mStartOrder:I

    const-class p3, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/telephony/SubscriptionManager;

    iput-object p3, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mManager:Landroid/telephony/SubscriptionManager;

    iget-object p3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-class p4, Landroid/net/ConnectivityManager;

    invoke-virtual {p3, p4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/net/ConnectivityManager;

    iput-object p3, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    new-instance p3, Landroidx/collection/ArrayMap;

    invoke-direct {p3}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object p3, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mSubscriptionPreferences:Ljava/util/Map;

    new-instance p3, Lcom/android/settings/network/SubscriptionsChangeListener;

    invoke-direct {p3, p1, p0}, Lcom/android/settings/network/SubscriptionsChangeListener;-><init>(Landroid/content/Context;Lcom/android/settings/network/SubscriptionsChangeListener$SubscriptionsChangeListenerClient;)V

    iput-object p3, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mSubscriptionsListener:Lcom/android/settings/network/SubscriptionsChangeListener;

    new-instance p3, Lcom/android/settings/network/MobileDataEnabledListener;

    invoke-direct {p3, p1, p0}, Lcom/android/settings/network/MobileDataEnabledListener;-><init>(Landroid/content/Context;Lcom/android/settings/network/MobileDataEnabledListener$Client;)V

    iput-object p3, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mDataEnabledListener:Lcom/android/settings/network/MobileDataEnabledListener;

    new-instance p3, Lcom/android/settings/network/telephony/DataConnectivityListener;

    invoke-direct {p3, p1, p0}, Lcom/android/settings/network/telephony/DataConnectivityListener;-><init>(Landroid/content/Context;Lcom/android/settings/network/telephony/DataConnectivityListener$Client;)V

    iput-object p3, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mConnectivityListener:Lcom/android/settings/network/telephony/DataConnectivityListener;

    new-instance p3, Lcom/android/settings/network/telephony/SignalStrengthListener;

    invoke-direct {p3, p1, p0}, Lcom/android/settings/network/telephony/SignalStrengthListener;-><init>(Landroid/content/Context;Lcom/android/settings/network/telephony/SignalStrengthListener$Callback;)V

    iput-object p3, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mSignalStrengthListener:Lcom/android/settings/network/telephony/SignalStrengthListener;

    invoke-virtual {p2, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method private update()V
    .locals 10

    iget-object v0, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/network/SubscriptionsPreferenceController;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mSubscriptionPreferences:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v2, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mSubscriptionPreferences:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mSignalStrengthListener:Lcom/android/settings/network/telephony/SignalStrengthListener;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/network/telephony/SignalStrengthListener;->updateSubscriptionIds(Ljava/util/Set;)V

    iget-object p0, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mUpdateListener:Lcom/android/settings/network/SubscriptionsPreferenceController$UpdateListener;

    invoke-interface {p0}, Lcom/android/settings/network/SubscriptionsPreferenceController$UpdateListener;->onChildrenUpdated()V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mSubscriptionPreferences:Ljava/util/Map;

    new-instance v1, Landroidx/collection/ArrayMap;

    invoke-direct {v1}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mSubscriptionPreferences:Ljava/util/Map;

    iget v1, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mStartOrder:I

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v3

    iget-object v4, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mManager:Landroid/telephony/SubscriptionManager;

    invoke-static {v4}, Lcom/android/settings/network/SubscriptionUtil;->getActiveSubscriptions(Landroid/telephony/SubscriptionManager;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/preference/Preference;

    if-nez v7, :cond_3

    new-instance v7, Landroidx/preference/Preference;

    iget-object v8, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v8}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v8

    const/4 v9, 0x0

    invoke-direct {v7, v8, v9}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iget-object v8, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v8, v7}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :cond_3
    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v7, v5}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    if-ne v6, v3, :cond_4

    const/4 v5, 0x1

    goto :goto_2

    :cond_4
    const/4 v5, 0x0

    :goto_2
    invoke-virtual {p0, v6, v5}, Lcom/android/settings/network/SubscriptionsPreferenceController;->getSummary(IZ)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v7, v6, v5}, Lcom/android/settings/network/SubscriptionsPreferenceController;->setIcon(Landroidx/preference/Preference;IZ)V

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v7, v1}, Landroidx/preference/Preference;->setOrder(I)V

    new-instance v1, Lcom/android/settings/network/-$$Lambda$SubscriptionsPreferenceController$x1qDdJvP058MNpNEljXP2Q1wOsM;

    invoke-direct {v1, p0, v6}, Lcom/android/settings/network/-$$Lambda$SubscriptionsPreferenceController$x1qDdJvP058MNpNEljXP2Q1wOsM;-><init>(Lcom/android/settings/network/SubscriptionsPreferenceController;I)V

    invoke-virtual {v7, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    iget-object v1, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mSubscriptionPreferences:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v1, v5

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mSignalStrengthListener:Lcom/android/settings/network/telephony/SignalStrengthListener;

    invoke-virtual {v1, v2}, Lcom/android/settings/network/telephony/SignalStrengthListener;->updateSubscriptionIds(Ljava/util/Set;)V

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v2, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_3

    :cond_6
    iget-object p0, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mUpdateListener:Lcom/android/settings/network/SubscriptionsPreferenceController$UpdateListener;

    invoke-interface {p0}, Lcom/android/settings/network/SubscriptionsPreferenceController$UpdateListener;->onChildrenUpdated()V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mPreferenceGroupKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceGroup;

    iput-object p1, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-direct {p0}, Lcom/android/settings/network/SubscriptionsPreferenceController;->update()V

    return-void
.end method

.method getIcon(IIZ)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->getSignalStrengthIcon(Landroid/content/Context;IIIZ)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method protected getSummary(IZ)Ljava/lang/String;
    .locals 3

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubscriptionId()I

    move-result v0

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubscriptionId()I

    move-result v1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_0

    if-ne p1, v1, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f1205ce

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f1205cd

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    if-ne p1, v1, :cond_2

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f1205d0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v2

    :goto_0
    const/4 v1, 0x0

    if-eqz p2, :cond_7

    iget-object p2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-class v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {p2, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/TelephonyManager;

    invoke-virtual {p2, p1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->isDataEnabled()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p2, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {p2}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object p2

    if-nez p2, :cond_3

    :goto_1
    move p2, v1

    goto :goto_2

    :cond_3
    iget-object v2, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v2, p2}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p2

    if-nez p2, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p2, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result p2

    :goto_2
    if-eqz p2, :cond_5

    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const p2, 0x7f120a9f

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_5
    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const p2, 0x7f120aa3

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_6
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const p2, 0x7f1205cf

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_7
    :goto_3
    if-eqz v0, :cond_8

    if-eqz v2, :cond_8

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/CharSequence;

    aput-object v0, p1, v1

    const/4 p2, 0x1

    aput-object v2, p1, p2

    invoke-static {p0, p1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_8
    if-eqz v0, :cond_9

    return-object v0

    :cond_9
    if-eqz v2, :cond_a

    return-object v2

    :cond_a
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const p1, 0x7f121621

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isAvailable()Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mSubscriptionsListener:Lcom/android/settings/network/SubscriptionsChangeListener;

    invoke-virtual {v0}, Lcom/android/settings/network/SubscriptionsChangeListener;->isAirplaneModeOn()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mManager:Landroid/telephony/SubscriptionManager;

    invoke-static {p0}, Lcom/android/settings/network/SubscriptionUtil;->getActiveSubscriptions(Landroid/telephony/SubscriptionManager;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x2

    if-lt p0, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public synthetic lambda$update$0$SubscriptionsPreferenceController(ILandroidx/preference/Preference;)Z
    .locals 2

    new-instance p2, Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-class v1, Lcom/android/settings/network/telephony/MobileNetworkActivity;

    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "android.provider.extra.SUB_ID"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 p0, 0x1

    return p0
.end method

.method public onAirplaneModeChanged(Z)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/network/SubscriptionsPreferenceController;->update()V

    return-void
.end method

.method public onDataConnectivityChange()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/network/SubscriptionsPreferenceController;->update()V

    return-void
.end method

.method public onMobileDataEnabledChange()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/network/SubscriptionsPreferenceController;->update()V

    return-void
.end method

.method public onPause()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    iget-object v0, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mSubscriptionsListener:Lcom/android/settings/network/SubscriptionsChangeListener;

    invoke-virtual {v0}, Lcom/android/settings/network/SubscriptionsChangeListener;->stop()V

    iget-object v0, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mDataEnabledListener:Lcom/android/settings/network/MobileDataEnabledListener;

    invoke-virtual {v0}, Lcom/android/settings/network/MobileDataEnabledListener;->stop()Lcom/android/settings/network/MobileDataEnabledListener;

    iget-object v0, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mConnectivityListener:Lcom/android/settings/network/telephony/DataConnectivityListener;

    invoke-virtual {v0}, Lcom/android/settings/network/telephony/DataConnectivityListener;->stop()V

    iget-object p0, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mSignalStrengthListener:Lcom/android/settings/network/telephony/SignalStrengthListener;

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/SignalStrengthListener;->pause()V

    return-void
.end method

.method public onResume()V
    .locals 2
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    iget-object v0, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mSubscriptionsListener:Lcom/android/settings/network/SubscriptionsChangeListener;

    invoke-virtual {v0}, Lcom/android/settings/network/SubscriptionsChangeListener;->start()V

    iget-object v0, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mDataEnabledListener:Lcom/android/settings/network/MobileDataEnabledListener;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/network/MobileDataEnabledListener;->start(I)V

    iget-object v0, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mConnectivityListener:Lcom/android/settings/network/telephony/DataConnectivityListener;

    invoke-virtual {v0}, Lcom/android/settings/network/telephony/DataConnectivityListener;->start()V

    iget-object v0, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mSignalStrengthListener:Lcom/android/settings/network/telephony/SignalStrengthListener;

    invoke-virtual {v0}, Lcom/android/settings/network/telephony/SignalStrengthListener;->resume()V

    invoke-direct {p0}, Lcom/android/settings/network/SubscriptionsPreferenceController;->update()V

    return-void
.end method

.method public onSignalStrengthChanged()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/network/SubscriptionsPreferenceController;->update()V

    return-void
.end method

.method public onSubscriptionsChanged()V
    .locals 2

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mDataEnabledListener:Lcom/android/settings/network/MobileDataEnabledListener;

    invoke-virtual {v1}, Lcom/android/settings/network/MobileDataEnabledListener;->getSubId()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mDataEnabledListener:Lcom/android/settings/network/MobileDataEnabledListener;

    invoke-virtual {v1}, Lcom/android/settings/network/MobileDataEnabledListener;->stop()Lcom/android/settings/network/MobileDataEnabledListener;

    iget-object v1, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mDataEnabledListener:Lcom/android/settings/network/MobileDataEnabledListener;

    invoke-virtual {v1, v0}, Lcom/android/settings/network/MobileDataEnabledListener;->start(I)V

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/network/SubscriptionsPreferenceController;->update()V

    return-void
.end method

.method setIcon(Landroidx/preference/Preference;IZ)V
    .locals 4

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p2}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v1

    :goto_0
    sget v3, Landroid/telephony/SignalStrength;->NUM_SIGNAL_STRENGTH_BINS:I

    invoke-virtual {p0, p2}, Lcom/android/settings/network/SubscriptionsPreferenceController;->shouldInflateSignalStrength(I)Z

    move-result p2

    if-eqz p2, :cond_1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v3, v3, 0x1

    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isDataEnabled()Z

    move-result p2

    if-nez p2, :cond_3

    :cond_2
    const/4 v2, 0x1

    :cond_3
    invoke-virtual {p0, v1, v3, v2}, Lcom/android/settings/network/SubscriptionsPreferenceController;->getIcon(IIZ)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method shouldInflateSignalStrength(I)Z
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Landroid/telephony/SubscriptionManager;->getResourcesForSubId(Landroid/content/Context;I)Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x111008f

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method
