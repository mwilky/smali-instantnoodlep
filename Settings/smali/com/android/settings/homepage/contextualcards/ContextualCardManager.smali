.class public Lcom/android/settings/homepage/contextualcards/ContextualCardManager;
.super Ljava/lang/Object;
.source "ContextualCardManager.java"

# interfaces
.implements Lcom/android/settings/homepage/contextualcards/ContextualCardLoader$CardContentLoaderListener;
.implements Lcom/android/settings/homepage/contextualcards/ContextualCardUpdateListener;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnSaveInstanceState;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/homepage/contextualcards/ContextualCardManager$CardContentLoaderCallbacks;
    }
.end annotation


# static fields
.field static final CARD_CONTENT_LOADER_TIMEOUT_MS:J = 0x3e8L

.field static final KEY_CONTEXTUAL_CARDS:Ljava/lang/String; = "key_contextual_cards"

.field static final KEY_GLOBAL_CARD_LOADER_TIMEOUT:Ljava/lang/String; = "global_card_loader_timeout_key"

.field private static final SETTINGS_CARDS:[I


# instance fields
.field private final mContext:Landroid/content/Context;

.field final mContextualCards:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/homepage/contextualcards/ContextualCard;",
            ">;"
        }
    .end annotation
.end field

.field final mControllerRendererPool:Lcom/android/settings/homepage/contextualcards/ControllerRendererPool;

.field mIsFirstLaunch:Z

.field private final mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

.field private final mLifecycleObservers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/lifecycle/LifecycleObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/android/settings/homepage/contextualcards/ContextualCardUpdateListener;

.field mSavedCards:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mStartTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/homepage/contextualcards/ContextualCardManager;->SETTINGS_CARDS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x3
        0x2
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroid/os/Bundle;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardManager;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardManager;->mContextualCards:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardManager;->mLifecycleObservers:Ljava/util/List;

    new-instance p1, Lcom/android/settings/homepage/contextualcards/ControllerRendererPool;

    invoke-direct {p1}, Lcom/android/settings/homepage/contextualcards/ControllerRendererPool;-><init>()V

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardManager;->mControllerRendererPool:Lcom/android/settings/homepage/contextualcards/ControllerRendererPool;

    iget-object p1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardManager;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    invoke-virtual {p1, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    if-nez p3, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardManager;->mIsFirstLaunch:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardManager;->mSavedCards:Ljava/util/List;

    goto :goto_0

    :cond_0
    const-string p1, "key_contextual_cards"

    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardManager;->mSavedCards:Ljava/util/List;

    :goto_0
    sget-object p1, Lcom/android/settings/homepage/contextualcards/ContextualCardManager;->SETTINGS_CARDS:[I

    array-length p2, p1

    const/4 p3, 0x0

    :goto_1
    if-ge p3, p2, :cond_1

    aget v0, p1, p3

    invoke-virtual {p0, v0}, Lcom/android/settings/homepage/contextualcards/ContextualCardManager;->setupController(I)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method static synthetic lambda$onContextualCardUpdated$1(Ljava/util/Set;Lcom/android/settings/homepage/contextualcards/ContextualCard;)Z
    .locals 0

    invoke-virtual {p1}, Lcom/android/settings/homepage/contextualcards/ContextualCard;->getCardType()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$onContextualCardUpdated$2(Ljava/util/Set;Lcom/android/settings/homepage/contextualcards/ContextualCard;)Z
    .locals 0

    invoke-virtual {p1}, Lcom/android/settings/homepage/contextualcards/ContextualCard;->getCardType()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method static synthetic lambda$sortCards$0(Lcom/android/settings/homepage/contextualcards/ContextualCard;Lcom/android/settings/homepage/contextualcards/ContextualCard;)I
    .locals 2

    invoke-virtual {p1}, Lcom/android/settings/homepage/contextualcards/ContextualCard;->getRankingScore()D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/android/settings/homepage/contextualcards/ContextualCard;->getRankingScore()D

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Double;->compare(DD)I

    move-result p0

    return p0
.end method


# virtual methods
.method getCardLoaderTimeout()J
    .locals 3

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "global_card_loader_timeout_key"

    const-wide/16 v1, 0x3e8

    invoke-static {p0, v0, v1, v2}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method getCardsToKeep(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settings/homepage/contextualcards/ContextualCard;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/settings/homepage/contextualcards/ContextualCard;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardManager;->mSavedCards:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/settings/homepage/contextualcards/-$$Lambda$ContextualCardManager$BqDjInetNVjfnj2PmYajXJBAQPs;

    invoke-direct {v0, p0}, Lcom/android/settings/homepage/contextualcards/-$$Lambda$ContextualCardManager$BqDjInetNVjfnj2PmYajXJBAQPs;-><init>(Lcom/android/settings/homepage/contextualcards/ContextualCardManager;)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardManager;->mSavedCards:Ljava/util/List;

    return-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/settings/homepage/contextualcards/-$$Lambda$ContextualCardManager$IHnSQwitjV_m7ge6UmILB0vu3aQ;

    invoke-direct {v0, p0}, Lcom/android/settings/homepage/contextualcards/-$$Lambda$ContextualCardManager$IHnSQwitjV_m7ge6UmILB0vu3aQ;-><init>(Lcom/android/settings/homepage/contextualcards/ContextualCardManager;)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method getCardsWithViewType(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settings/homepage/contextualcards/ContextualCard;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/settings/homepage/contextualcards/ContextualCard;",
            ">;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    return-object p1

    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/homepage/contextualcards/ContextualCard;

    invoke-virtual {v1}, Lcom/android/settings/homepage/contextualcards/ContextualCard;->getCategory()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_1

    invoke-virtual {v1}, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mutate()Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    move-result-object p1

    const v1, 0x7f0d0065

    invoke-virtual {p1, v1}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->setViewType(I)Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    invoke-virtual {p1}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->build()Lcom/android/settings/homepage/contextualcards/ContextualCard;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 p0, 0x1

    move v0, p0

    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    add-int/lit8 v1, v0, -0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/homepage/contextualcards/ContextualCard;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/homepage/contextualcards/ContextualCard;

    invoke-virtual {v3}, Lcom/android/settings/homepage/contextualcards/ContextualCard;->getCategory()I

    move-result v4

    if-ne v4, p0, :cond_3

    invoke-virtual {v2}, Lcom/android/settings/homepage/contextualcards/ContextualCard;->getCategory()I

    move-result v4

    if-ne v4, p0, :cond_3

    invoke-virtual {v2}, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mutate()Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    move-result-object v2

    const v4, 0x7f0d0067

    invoke-virtual {v2, v4}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->setViewType(I)Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    invoke-virtual {v2}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->build()Lcom/android/settings/homepage/contextualcards/ContextualCard;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mutate()Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->setViewType(I)Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    invoke-virtual {v1}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->build()Lcom/android/settings/homepage/contextualcards/ContextualCard;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    :cond_3
    add-int/2addr v0, p0

    goto :goto_2

    :cond_4
    return-object p1
.end method

.method public getControllerRendererPool()Lcom/android/settings/homepage/contextualcards/ControllerRendererPool;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardManager;->mControllerRendererPool:Lcom/android/settings/homepage/contextualcards/ControllerRendererPool;

    return-object p0
.end method

.method public synthetic lambda$getCardsToKeep$3$ContextualCardManager(Lcom/android/settings/homepage/contextualcards/ContextualCard;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardManager;->mSavedCards:Ljava/util/List;

    invoke-virtual {p1}, Lcom/android/settings/homepage/contextualcards/ContextualCard;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public synthetic lambda$getCardsToKeep$4$ContextualCardManager(Lcom/android/settings/homepage/contextualcards/ContextualCard;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardManager;->mContextualCards:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method loadContextualCards(Landroidx/loader/app/LoaderManager;)V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardManager;->mStartTime:J

    new-instance v0, Lcom/android/settings/homepage/contextualcards/ContextualCardManager$CardContentLoaderCallbacks;

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/homepage/contextualcards/ContextualCardManager$CardContentLoaderCallbacks;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p0}, Lcom/android/settings/homepage/contextualcards/ContextualCardManager$CardContentLoaderCallbacks;->setListener(Lcom/android/settings/homepage/contextualcards/ContextualCardLoader$CardContentLoaderListener;)V

    const/4 p0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v1, v0}, Landroidx/loader/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    return-void
.end method

.method public onContextualCardUpdated(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/android/settings/homepage/contextualcards/ContextualCard;",
            ">;>;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/android/settings/homepage/contextualcards/ContextualCardManager$1;

    invoke-direct {v0, p0}, Lcom/android/settings/homepage/contextualcards/ContextualCardManager$1;-><init>(Lcom/android/settings/homepage/contextualcards/ContextualCardManager;)V

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardManager;->mContextualCards:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/settings/homepage/contextualcards/-$$Lambda$ContextualCardManager$Z0ChlZIedQChOmnf6KtbUcjhz3U;

    invoke-direct {v2, v0}, Lcom/android/settings/homepage/contextualcards/-$$Lambda$ContextualCardManager$Z0ChlZIedQChOmnf6KtbUcjhz3U;-><init>(Ljava/util/Set;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardManager;->mContextualCards:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/settings/homepage/contextualcards/-$$Lambda$ContextualCardManager$6I5X9CXkt_h4chR8W4I7r_0Wm4M;

    invoke-direct {v2, v0}, Lcom/android/settings/homepage/contextualcards/-$$Lambda$ContextualCardManager$6I5X9CXkt_h4chR8W4I7r_0Wm4M;-><init>(Ljava/util/Set;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    sget-object v0, Lcom/android/settings/homepage/contextualcards/-$$Lambda$seyL25CSW2NInOydsTbSDrNW6pM;->INSTANCE:Lcom/android/settings/homepage/contextualcards/-$$Lambda$seyL25CSW2NInOydsTbSDrNW6pM;

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardManager;->mContextualCards:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    invoke-virtual {p0, v1}, Lcom/android/settings/homepage/contextualcards/ContextualCardManager;->sortCards(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardManager;->mContextualCards:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/settings/homepage/contextualcards/ContextualCardManager;->getCardsWithViewType(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardManager;->mContextualCards:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/homepage/contextualcards/ContextualCard;

    invoke-virtual {v0}, Lcom/android/settings/homepage/contextualcards/ContextualCard;->getCardType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/homepage/contextualcards/ContextualCardManager;->setupController(I)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardManager;->mListener:Lcom/android/settings/homepage/contextualcards/ContextualCardUpdateListener;

    if-eqz p1, :cond_2

    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardManager;->mContextualCards:Ljava/util/List;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardManager;->mListener:Lcom/android/settings/homepage/contextualcards/ContextualCardUpdateListener;

    invoke-interface {p0, p1}, Lcom/android/settings/homepage/contextualcards/ContextualCardUpdateListener;->onContextualCardUpdated(Ljava/util/Map;)V

    :cond_2
    return-void
.end method

.method public onFinishCardLoading(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settings/homepage/contextualcards/ContextualCard;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardManager;->mStartTime:J

    sub-long/2addr v0, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Total loading time = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ContextualCardManager"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/android/settings/homepage/contextualcards/ContextualCardManager;->getCardsToKeep(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardManager;->mIsFirstLaunch:Z

    const/16 v5, 0x67f

    if-nez v4, :cond_0

    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    sget-object v0, Lcom/android/settings/homepage/contextualcards/-$$Lambda$tvgAa5trWmVB27u8qU1xI-O-56s;->INSTANCE:Lcom/android/settings/homepage/contextualcards/-$$Lambda$tvgAa5trWmVB27u8qU1xI-O-56s;

    invoke-static {v0}, Ljava/util/stream/Collectors;->groupingBy(Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/android/settings/homepage/contextualcards/ContextualCardManager;->onContextualCardUpdated(Ljava/util/Map;)V

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/homepage/contextualcards/logging/ContextualCardLogUtils;->buildCardListLog(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p0, v5, p1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;ILjava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/homepage/contextualcards/ContextualCardManager;->getCardLoaderTimeout()J

    move-result-wide v6

    cmp-long v2, v0, v6

    if-gtz v2, :cond_1

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/settings/homepage/contextualcards/-$$Lambda$tvgAa5trWmVB27u8qU1xI-O-56s;->INSTANCE:Lcom/android/settings/homepage/contextualcards/-$$Lambda$tvgAa5trWmVB27u8qU1xI-O-56s;

    invoke-static {v1}, Ljava/util/stream/Collectors;->groupingBy(Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-virtual {p0, v0}, Lcom/android/settings/homepage/contextualcards/ContextualCardManager;->onContextualCardUpdated(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/homepage/contextualcards/logging/ContextualCardLogUtils;->buildCardListLog(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, v0, v5, p1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    const/16 v6, 0x695

    const/16 v7, 0x5de

    const/4 v8, 0x0

    long-to-int v9, v0

    move-object v4, v3

    invoke-virtual/range {v4 .. v9}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(IIILjava/lang/String;I)V

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardManager;->mStartTime:J

    sub-long/2addr v0, v4

    iget-object p1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardManager;->mContext:Landroid/content/Context;

    const/16 v2, 0x67e

    long-to-int v0, v0

    invoke-virtual {v3, p1, v2, v0}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;II)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardManager;->mIsFirstLaunch:Z

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardManager;->mContextualCards:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lcom/android/settings/homepage/contextualcards/-$$Lambda$YA1g3b8EtANWfDvtA9kJ8cpQ18g;->INSTANCE:Lcom/android/settings/homepage/contextualcards/-$$Lambda$YA1g3b8EtANWfDvtA9kJ8cpQ18g;

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lcom/android/settings/homepage/contextualcards/-$$Lambda$OGSS2qx6njxlnp0dnKb4lA3jnw8;->INSTANCE:Lcom/android/settings/homepage/contextualcards/-$$Lambda$OGSS2qx6njxlnp0dnKb4lA3jnw8;

    invoke-static {v0}, Ljava/util/stream/Collectors;->toCollection(Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    const-string v0, "key_contextual_cards"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardManager;->mContextualCards:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/homepage/contextualcards/ContextualCard;

    invoke-virtual {p0}, Lcom/android/settings/homepage/contextualcards/ContextualCardManager;->getControllerRendererPool()Lcom/android/settings/homepage/contextualcards/ControllerRendererPool;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Lcom/android/settings/homepage/contextualcards/ContextualCard;->getCardType()I

    move-result v2

    invoke-virtual {v3, v4, v2}, Lcom/android/settings/homepage/contextualcards/ControllerRendererPool;->getController(Landroid/content/Context;I)Lcom/android/settings/homepage/contextualcards/ContextualCardController;

    move-result-object v2

    instance-of v3, v2, Lcom/android/settings/homepage/contextualcards/conditional/ConditionalCardController;

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    if-eqz p1, :cond_2

    instance-of v3, v2, Lcom/android/settingslib/core/lifecycle/events/OnStart;

    if-eqz v3, :cond_2

    move-object v3, v2

    check-cast v3, Lcom/android/settingslib/core/lifecycle/events/OnStart;

    invoke-interface {v3}, Lcom/android/settingslib/core/lifecycle/events/OnStart;->onStart()V

    invoke-interface {v2, p0}, Lcom/android/settings/homepage/contextualcards/ContextualCardController;->setCardUpdateListener(Lcom/android/settings/homepage/contextualcards/ContextualCardUpdateListener;)V

    :cond_2
    if-nez p1, :cond_0

    instance-of v3, v2, Lcom/android/settingslib/core/lifecycle/events/OnStop;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/android/settingslib/core/lifecycle/events/OnStop;

    invoke-interface {v2}, Lcom/android/settingslib/core/lifecycle/events/OnStop;->onStop()V

    goto :goto_0

    :cond_3
    if-nez v1, :cond_5

    invoke-virtual {p0}, Lcom/android/settings/homepage/contextualcards/ContextualCardManager;->getControllerRendererPool()Lcom/android/settings/homepage/contextualcards/ControllerRendererPool;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardManager;->mContext:Landroid/content/Context;

    const/4 v1, 0x3

    invoke-virtual {v0, p0, v1}, Lcom/android/settings/homepage/contextualcards/ControllerRendererPool;->getController(Landroid/content/Context;I)Lcom/android/settings/homepage/contextualcards/ContextualCardController;

    move-result-object p0

    if-eqz p1, :cond_4

    instance-of v0, p0, Lcom/android/settingslib/core/lifecycle/events/OnStart;

    if-eqz v0, :cond_4

    move-object v0, p0

    check-cast v0, Lcom/android/settingslib/core/lifecycle/events/OnStart;

    invoke-interface {v0}, Lcom/android/settingslib/core/lifecycle/events/OnStart;->onStart()V

    :cond_4
    if-nez p1, :cond_5

    instance-of p1, p0, Lcom/android/settingslib/core/lifecycle/events/OnStop;

    if-eqz p1, :cond_5

    check-cast p0, Lcom/android/settingslib/core/lifecycle/events/OnStop;

    invoke-interface {p0}, Lcom/android/settingslib/core/lifecycle/events/OnStop;->onStop()V

    :cond_5
    return-void
.end method

.method setListener(Lcom/android/settings/homepage/contextualcards/ContextualCardUpdateListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardManager;->mListener:Lcom/android/settings/homepage/contextualcards/ContextualCardUpdateListener;

    return-void
.end method

.method setupController(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardManager;->mControllerRendererPool:Lcom/android/settings/homepage/contextualcards/ControllerRendererPool;

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/android/settings/homepage/contextualcards/ControllerRendererPool;->getController(Landroid/content/Context;I)Lcom/android/settings/homepage/contextualcards/ContextualCardController;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "Cannot find ContextualCardController for type "

    const-string v0, "ContextualCardManager"

    invoke-static {p0, p1, v0}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline33(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {v0, p0}, Lcom/android/settings/homepage/contextualcards/ContextualCardController;->setCardUpdateListener(Lcom/android/settings/homepage/contextualcards/ContextualCardUpdateListener;)V

    instance-of p1, v0, Lcom/android/settingslib/core/lifecycle/LifecycleObserver;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardManager;->mLifecycleObservers:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardManager;->mLifecycleObservers:Ljava/util/List;

    check-cast v0, Lcom/android/settingslib/core/lifecycle/LifecycleObserver;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardManager;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_1
    return-void
.end method

.method sortCards(Ljava/util/List;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settings/homepage/contextualcards/ContextualCard;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/settings/homepage/contextualcards/ContextualCard;",
            ">;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    sget-object p1, Lcom/android/settings/homepage/contextualcards/-$$Lambda$ContextualCardManager$Gw08Tb6P3Z00HUKmrUC8W3DcoSw;->INSTANCE:Lcom/android/settings/homepage/contextualcards/-$$Lambda$ContextualCardManager$Gw08Tb6P3Z00HUKmrUC8W3DcoSw;

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method
