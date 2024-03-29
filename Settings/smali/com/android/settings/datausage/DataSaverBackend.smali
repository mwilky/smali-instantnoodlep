.class public Lcom/android/settings/datausage/DataSaverBackend;
.super Ljava/lang/Object;
.source "DataSaverBackend.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/datausage/DataSaverBackend$Listener;
    }
.end annotation


# instance fields
.field private mBlacklistInitialized:Z

.field private final mContext:Landroid/content/Context;

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/datausage/DataSaverBackend$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

.field private final mPolicyListener:Landroid/net/INetworkPolicyListener;

.field private final mPolicyManager:Landroid/net/NetworkPolicyManager;

.field private mUidPolicies:Landroid/util/SparseIntArray;

.field private mWhitelistInitialized:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/datausage/DataSaverBackend;->mListeners:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/datausage/DataSaverBackend;->mUidPolicies:Landroid/util/SparseIntArray;

    new-instance v0, Lcom/android/settings/datausage/DataSaverBackend$1;

    invoke-direct {v0, p0}, Lcom/android/settings/datausage/DataSaverBackend$1;-><init>(Lcom/android/settings/datausage/DataSaverBackend;)V

    iput-object v0, p0, Lcom/android/settings/datausage/DataSaverBackend;->mPolicyListener:Landroid/net/INetworkPolicyListener;

    iput-object p1, p0, Lcom/android/settings/datausage/DataSaverBackend;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/datausage/DataSaverBackend;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-static {p1}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/datausage/DataSaverBackend;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/datausage/DataSaverBackend;Z)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/settings/datausage/DataSaverBackend;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/datausage/DataSaverBackend;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/datausage/DataSaverBackend$Listener;

    invoke-interface {v1, p1}, Lcom/android/settings/datausage/DataSaverBackend$Listener;->onDataSaverChanged(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/datausage/DataSaverBackend;II)V
    .locals 5

    invoke-direct {p0}, Lcom/android/settings/datausage/DataSaverBackend;->loadWhitelist()V

    invoke-direct {p0}, Lcom/android/settings/datausage/DataSaverBackend;->loadBlacklist()V

    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverBackend;->mUidPolicies:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-nez p2, :cond_0

    iget-object v2, p0, Lcom/android/settings/datausage/DataSaverBackend;->mUidPolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->delete(I)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/settings/datausage/DataSaverBackend;->mUidPolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    :goto_0
    const/4 v2, 0x4

    const/4 v3, 0x1

    if-ne v0, v2, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v1

    :goto_1
    if-ne v0, v3, :cond_2

    move v0, v3

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    if-ne p2, v2, :cond_3

    move v2, v3

    goto :goto_3

    :cond_3
    move v2, v1

    :goto_3
    if-ne p2, v3, :cond_4

    goto :goto_4

    :cond_4
    move v3, v1

    :goto_4
    if-eq v4, v2, :cond_5

    move p2, v1

    :goto_5
    iget-object v4, p0, Lcom/android/settings/datausage/DataSaverBackend;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge p2, v4, :cond_5

    iget-object v4, p0, Lcom/android/settings/datausage/DataSaverBackend;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/datausage/DataSaverBackend$Listener;

    invoke-interface {v4, p1, v2}, Lcom/android/settings/datausage/DataSaverBackend$Listener;->onWhitelistStatusChanged(IZ)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_5

    :cond_5
    if-eq v0, v3, :cond_6

    :goto_6
    iget-object p2, p0, Lcom/android/settings/datausage/DataSaverBackend;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge v1, p2, :cond_6

    iget-object p2, p0, Lcom/android/settings/datausage/DataSaverBackend;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/settings/datausage/DataSaverBackend$Listener;

    invoke-interface {p2, p1, v3}, Lcom/android/settings/datausage/DataSaverBackend$Listener;->onBlacklistStatusChanged(IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_6
    return-void
.end method

.method private loadBlacklist()V
    .locals 6

    iget-boolean v0, p0, Lcom/android/settings/datausage/DataSaverBackend;->mBlacklistInitialized:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverBackend;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/NetworkPolicyManager;->getUidsWithPolicy(I)[I

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget v4, v0, v3

    iget-object v5, p0, Lcom/android/settings/datausage/DataSaverBackend;->mUidPolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v4, v1}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iput-boolean v1, p0, Lcom/android/settings/datausage/DataSaverBackend;->mBlacklistInitialized:Z

    return-void
.end method

.method private loadWhitelist()V
    .locals 6

    iget-boolean v0, p0, Lcom/android/settings/datausage/DataSaverBackend;->mWhitelistInitialized:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverBackend;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/net/NetworkPolicyManager;->getUidsWithPolicy(I)[I

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget v4, v0, v3

    iget-object v5, p0, Lcom/android/settings/datausage/DataSaverBackend;->mUidPolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v4, v1}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/datausage/DataSaverBackend;->mWhitelistInitialized:Z

    return-void
.end method


# virtual methods
.method public addListener(Lcom/android/settings/datausage/DataSaverBackend$Listener;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverBackend;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverBackend;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverBackend;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    iget-object v1, p0, Lcom/android/settings/datausage/DataSaverBackend;->mPolicyListener:Landroid/net/INetworkPolicyListener;

    invoke-virtual {v0, v1}, Landroid/net/NetworkPolicyManager;->registerListener(Landroid/net/INetworkPolicyListener;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataSaverBackend;->isDataSaverEnabled()Z

    move-result p0

    invoke-interface {p1, p0}, Lcom/android/settings/datausage/DataSaverBackend$Listener;->onDataSaverChanged(Z)V

    return-void
.end method

.method public isBlacklisted(I)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/datausage/DataSaverBackend;->loadBlacklist()V

    iget-object p0, p0, Lcom/android/settings/datausage/DataSaverBackend;->mUidPolicies:Landroid/util/SparseIntArray;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    return p1
.end method

.method public isDataSaverEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/android/settings/datausage/DataSaverBackend;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {p0}, Landroid/net/NetworkPolicyManager;->getRestrictBackground()Z

    move-result p0

    return p0
.end method

.method public isWhitelisted(I)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/datausage/DataSaverBackend;->loadWhitelist()V

    iget-object p0, p0, Lcom/android/settings/datausage/DataSaverBackend;->mUidPolicies:Landroid/util/SparseIntArray;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    const/4 p1, 0x4

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public refreshBlacklist()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/datausage/DataSaverBackend;->loadBlacklist()V

    return-void
.end method

.method public refreshWhitelist()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/datausage/DataSaverBackend;->loadWhitelist()V

    return-void
.end method

.method public remListener(Lcom/android/settings/datausage/DataSaverBackend$Listener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverBackend;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/settings/datausage/DataSaverBackend;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/datausage/DataSaverBackend;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    iget-object p0, p0, Lcom/android/settings/datausage/DataSaverBackend;->mPolicyListener:Landroid/net/INetworkPolicyListener;

    invoke-virtual {p1, p0}, Landroid/net/NetworkPolicyManager;->unregisterListener(Landroid/net/INetworkPolicyListener;)V

    :cond_0
    return-void
.end method

.method public setDataSaverEnabled(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverBackend;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v0, p1}, Landroid/net/NetworkPolicyManager;->setRestrictBackground(Z)V

    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverBackend;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object p0, p0, Lcom/android/settings/datausage/DataSaverBackend;->mContext:Landroid/content/Context;

    const/16 v1, 0x18a

    invoke-virtual {v0, p0, v1, p1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;II)V

    return-void
.end method

.method public setIsBlacklisted(ILjava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverBackend;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v0, p1, p3}, Landroid/net/NetworkPolicyManager;->setUidPolicy(II)V

    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverBackend;->mUidPolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p3}, Landroid/util/SparseIntArray;->put(II)V

    if-eqz p3, :cond_0

    iget-object p1, p0, Lcom/android/settings/datausage/DataSaverBackend;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object p0, p0, Lcom/android/settings/datausage/DataSaverBackend;->mContext:Landroid/content/Context;

    const/16 p3, 0x18c

    invoke-virtual {p1, p0, p3, p2}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setIsWhitelisted(ILjava/lang/String;Z)V
    .locals 2

    if-eqz p3, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/settings/datausage/DataSaverBackend;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v1, p1, v0}, Landroid/net/NetworkPolicyManager;->setUidPolicy(II)V

    iget-object v1, p0, Lcom/android/settings/datausage/DataSaverBackend;->mUidPolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    if-eqz p3, :cond_1

    iget-object p1, p0, Lcom/android/settings/datausage/DataSaverBackend;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object p0, p0, Lcom/android/settings/datausage/DataSaverBackend;->mContext:Landroid/content/Context;

    const/16 p3, 0x18b

    invoke-virtual {p1, p0, p3, p2}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;ILjava/lang/String;)V

    :cond_1
    return-void
.end method
