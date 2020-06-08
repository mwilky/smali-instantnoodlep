.class public Lcom/android/settings/homepage/contextualcards/EligibleCardChecker;
.super Ljava/lang/Object;
.source "EligibleCardChecker.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/android/settings/homepage/contextualcards/ContextualCard;",
        ">;"
    }
.end annotation


# instance fields
.field mCard:Lcom/android/settings/homepage/contextualcards/ContextualCard;

.field private final mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/settings/homepage/contextualcards/ContextualCard;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/EligibleCardChecker;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/homepage/contextualcards/EligibleCardChecker;->mCard:Lcom/android/settings/homepage/contextualcards/ContextualCard;

    return-void
.end method


# virtual methods
.method bindSlice(Landroid/net/Uri;)Landroidx/slice/Slice;
    .locals 10

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/EligibleCardChecker;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroidx/slice/SliceViewManager;->getInstance(Landroid/content/Context;)Landroidx/slice/SliceViewManager;

    move-result-object v0

    const/4 v1, 0x1

    new-array v7, v1, [Landroidx/slice/Slice;

    new-instance v8, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v8, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance v9, Lcom/android/settings/homepage/contextualcards/EligibleCardChecker$1;

    move-object v1, v9

    move-object v2, p0

    move-object v3, v7

    move-object v4, v8

    move-object v5, p1

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/settings/homepage/contextualcards/EligibleCardChecker$1;-><init>(Lcom/android/settings/homepage/contextualcards/EligibleCardChecker;[Landroidx/slice/Slice;Ljava/util/concurrent/CountDownLatch;Landroid/net/Uri;Landroidx/slice/SliceViewManager;)V

    invoke-virtual {v0, p1, v9}, Landroidx/slice/SliceViewManager;->registerSliceCallback(Landroid/net/Uri;Landroidx/slice/SliceViewManager$SliceCallback;)V

    invoke-virtual {v0, p1}, Landroidx/slice/SliceViewManager;->bindSlice(Landroid/net/Uri;)Landroidx/slice/Slice;

    move-result-object p0

    invoke-virtual {v9, p0}, Lcom/android/settings/homepage/contextualcards/EligibleCardChecker$1;->onSliceUpdated(Landroidx/slice/Slice;)V

    const-wide/16 v1, 0xc8

    :try_start_0
    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v8, v1, v2, p0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error waiting for slice binding for uri"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EligibleCardChecker"

    invoke-static {v2, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0, p1, v9}, Landroidx/slice/SliceViewManager;->unregisterSliceCallback(Landroid/net/Uri;Landroidx/slice/SliceViewManager$SliceCallback;)V

    :goto_0
    const/4 p0, 0x0

    aget-object p0, v7, p0

    return-object p0
.end method

.method public call()Lcom/android/settings/homepage/contextualcards/ContextualCard;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/settings/homepage/contextualcards/EligibleCardChecker;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/homepage/contextualcards/EligibleCardChecker;->mCard:Lcom/android/settings/homepage/contextualcards/ContextualCard;

    invoke-virtual {p0, v3}, Lcom/android/settings/homepage/contextualcards/EligibleCardChecker;->isCardEligibleToDisplay(Lcom/android/settings/homepage/contextualcards/ContextualCard;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v4, 0x0

    const/16 v5, 0x696

    const/16 v6, 0x5de

    iget-object v3, p0, Lcom/android/settings/homepage/contextualcards/EligibleCardChecker;->mCard:Lcom/android/settings/homepage/contextualcards/ContextualCard;

    invoke-virtual {v3}, Lcom/android/settings/homepage/contextualcards/ContextualCard;->getTextSliceUri()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    move-object v3, v2

    invoke-virtual/range {v3 .. v8}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(IIILjava/lang/String;I)V

    iget-object v3, p0, Lcom/android/settings/homepage/contextualcards/EligibleCardChecker;->mCard:Lcom/android/settings/homepage/contextualcards/ContextualCard;

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    const/16 v5, 0x696

    const/16 v6, 0x5de

    iget-object v3, p0, Lcom/android/settings/homepage/contextualcards/EligibleCardChecker;->mCard:Lcom/android/settings/homepage/contextualcards/ContextualCard;

    invoke-virtual {v3}, Lcom/android/settings/homepage/contextualcards/ContextualCard;->getTextSliceUri()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    move-object v3, v2

    invoke-virtual/range {v3 .. v8}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(IIILjava/lang/String;I)V

    const/4 v3, 0x0

    :goto_0
    move-object v9, v3

    const/4 v4, 0x0

    const/16 v5, 0x694

    const/16 v6, 0x5de

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/EligibleCardChecker;->mCard:Lcom/android/settings/homepage/contextualcards/ContextualCard;

    invoke-virtual {p0}, Lcom/android/settings/homepage/contextualcards/ContextualCard;->getTextSliceUri()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v0

    long-to-int v8, v10

    move-object v3, v2

    invoke-virtual/range {v3 .. v8}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(IIILjava/lang/String;I)V

    return-object v9
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/settings/homepage/contextualcards/EligibleCardChecker;->call()Lcom/android/settings/homepage/contextualcards/ContextualCard;

    move-result-object p0

    return-object p0
.end method

.method isCardEligibleToDisplay(Lcom/android/settings/homepage/contextualcards/ContextualCard;)Z
    .locals 5

    invoke-virtual {p1}, Lcom/android/settings/homepage/contextualcards/ContextualCard;->getRankingScore()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    const/4 v1, 0x0

    if-gez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Lcom/android/settings/homepage/contextualcards/ContextualCard;->isCustomCard()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    :cond_1
    invoke-virtual {p1}, Lcom/android/settings/homepage/contextualcards/ContextualCard;->getSliceUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    const-string v4, "content"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/settings/homepage/contextualcards/EligibleCardChecker;->bindSlice(Landroid/net/Uri;)Landroidx/slice/Slice;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/homepage/contextualcards/EligibleCardChecker;->isSliceToggleable(Landroidx/slice/Slice;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p1}, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mutate()Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->setHasInlineAction(Z)Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    invoke-virtual {p1}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->build()Lcom/android/settings/homepage/contextualcards/ContextualCard;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/EligibleCardChecker;->mCard:Lcom/android/settings/homepage/contextualcards/ContextualCard;

    :cond_3
    if-eqz v3, :cond_5

    const-string p0, "error"

    invoke-virtual {v3, p0}, Landroidx/slice/Slice;->hasHint(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_0

    :cond_4
    return v2

    :cond_5
    :goto_0
    const-string p0, "Failed to bind slice, not eligible for display "

    const-string p1, "EligibleCardChecker"

    invoke-static {p0, v0, p1}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline37(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    return v1
.end method

.method isSliceToggleable(Landroidx/slice/Slice;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/EligibleCardChecker;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Landroidx/slice/SliceMetadata;->from(Landroid/content/Context;Landroidx/slice/Slice;)Landroidx/slice/SliceMetadata;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/slice/SliceMetadata;->getToggles()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
