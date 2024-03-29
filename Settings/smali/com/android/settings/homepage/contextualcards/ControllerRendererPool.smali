.class public Lcom/android/settings/homepage/contextualcards/ControllerRendererPool;
.super Ljava/lang/Object;
.source "ControllerRendererPool.java"


# instance fields
.field private final mControllers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/settings/homepage/contextualcards/ContextualCardController;",
            ">;"
        }
    .end annotation
.end field

.field private final mRenderers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/settings/homepage/contextualcards/ContextualCardRenderer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/collection/ArraySet;

    invoke-direct {v0}, Landroidx/collection/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/settings/homepage/contextualcards/ControllerRendererPool;->mControllers:Ljava/util/Set;

    new-instance v0, Landroidx/collection/ArraySet;

    invoke-direct {v0}, Landroidx/collection/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/settings/homepage/contextualcards/ControllerRendererPool;->mRenderers:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public getController(Landroid/content/Context;I)Lcom/android/settings/homepage/contextualcards/ContextualCardController;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/android/settings/homepage/contextualcards/ContextualCardController;",
            ">(",
            "Landroid/content/Context;",
            "I)TT;"
        }
    .end annotation

    sget-object v0, Lcom/android/settings/homepage/contextualcards/ContextualCardLookupTable;->LOOKUP_TABLE:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/homepage/contextualcards/ContextualCardLookupTable$ControllerRendererMapping;

    iget v3, v1, Lcom/android/settings/homepage/contextualcards/ContextualCardLookupTable$ControllerRendererMapping;->mCardType:I

    if-ne v3, p2, :cond_0

    iget-object p2, v1, Lcom/android/settings/homepage/contextualcards/ContextualCardLookupTable$ControllerRendererMapping;->mControllerClass:Ljava/lang/Class;

    goto :goto_0

    :cond_1
    move-object p2, v2

    :goto_0
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/ControllerRendererPool;->mControllers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/homepage/contextualcards/ContextualCardController;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v3, p2, :cond_2

    const-string p0, "ControllerRendererPool"

    const-string p1, "Controller is already there."

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_3
    const-class v0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardController;

    if-ne v0, p2, :cond_4

    new-instance v2, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardController;

    invoke-direct {v2, p1}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardController;-><init>(Landroid/content/Context;)V

    goto :goto_1

    :cond_4
    const-class v0, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardController;

    if-ne v0, p2, :cond_5

    new-instance v2, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardController;

    invoke-direct {v2, p1}, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardController;-><init>(Landroid/content/Context;)V

    goto :goto_1

    :cond_5
    const-class v0, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardController;

    if-ne v0, p2, :cond_6

    new-instance v2, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardController;

    invoke-direct {v2, p1}, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardController;-><init>(Landroid/content/Context;)V

    :cond_6
    :goto_1
    if-eqz v2, :cond_7

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/ControllerRendererPool;->mControllers:Ljava/util/Set;

    invoke-interface {p0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_7
    return-object v2
.end method

.method getControllers()Ljava/util/Set;
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/android/settings/homepage/contextualcards/ContextualCardController;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/ControllerRendererPool;->mControllers:Ljava/util/Set;

    return-object p0
.end method

.method public getRendererByViewType(Landroid/content/Context;Landroidx/lifecycle/LifecycleOwner;I)Lcom/android/settings/homepage/contextualcards/ContextualCardRenderer;
    .locals 4

    sget-object v0, Lcom/android/settings/homepage/contextualcards/ContextualCardLookupTable;->LOOKUP_TABLE:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/settings/homepage/contextualcards/-$$Lambda$ContextualCardLookupTable$gsQ9JPvW3zYVPc0k37lyIEDUnOY;

    invoke-direct {v1, p3}, Lcom/android/settings/homepage/contextualcards/-$$Lambda$ContextualCardLookupTable$gsQ9JPvW3zYVPc0k37lyIEDUnOY;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p3

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/List;

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/settings/homepage/contextualcards/ContextualCardLookupTable$ControllerRendererMapping;

    iget-object p3, p3, Lcom/android/settings/homepage/contextualcards/ContextualCardLookupTable$ControllerRendererMapping;->mRendererClass:Ljava/lang/Class;

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Have duplicate VIEW_TYPE in lookup table."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    const-string p3, "ContextualCardLookup"

    const-string v1, "No matching mapping"

    invoke-static {p3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object p3, v0

    :goto_1
    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/ControllerRendererPool;->mRenderers:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/homepage/contextualcards/ContextualCardRenderer;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v3, p3, :cond_3

    const-string p0, "ControllerRendererPool"

    const-string p1, "Renderer is already there."

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_4
    const-class v1, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer;

    if-ne v1, p3, :cond_6

    new-instance v0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer;

    invoke-direct {v0, p1, p0}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer;-><init>(Landroid/content/Context;Lcom/android/settings/homepage/contextualcards/ControllerRendererPool;)V

    :cond_5
    :goto_2
    move-object v2, v0

    goto :goto_3

    :cond_6
    const-class v1, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;

    if-ne v1, p3, :cond_7

    new-instance v0, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;

    invoke-direct {v0, p1, p2, p0}, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;-><init>(Landroid/content/Context;Landroidx/lifecycle/LifecycleOwner;Lcom/android/settings/homepage/contextualcards/ControllerRendererPool;)V

    goto :goto_2

    :cond_7
    const-class p2, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardRenderer;

    if-ne p2, p3, :cond_8

    new-instance v0, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardRenderer;

    invoke-direct {v0, p1, p0}, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardRenderer;-><init>(Landroid/content/Context;Lcom/android/settings/homepage/contextualcards/ControllerRendererPool;)V

    goto :goto_2

    :cond_8
    const-class p2, Lcom/android/settings/homepage/contextualcards/conditional/ConditionFooterContextualCardRenderer;

    if-ne p2, p3, :cond_9

    new-instance v0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionFooterContextualCardRenderer;

    invoke-direct {v0, p1, p0}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionFooterContextualCardRenderer;-><init>(Landroid/content/Context;Lcom/android/settings/homepage/contextualcards/ControllerRendererPool;)V

    goto :goto_2

    :cond_9
    const-class p2, Lcom/android/settings/homepage/contextualcards/conditional/ConditionHeaderContextualCardRenderer;

    if-ne p2, p3, :cond_5

    new-instance v0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionHeaderContextualCardRenderer;

    invoke-direct {v0, p1, p0}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionHeaderContextualCardRenderer;-><init>(Landroid/content/Context;Lcom/android/settings/homepage/contextualcards/ControllerRendererPool;)V

    goto :goto_2

    :goto_3
    if-eqz v2, :cond_a

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/ControllerRendererPool;->mRenderers:Ljava/util/Set;

    invoke-interface {p0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_a
    :goto_4
    return-object v2
.end method

.method getRenderers()Ljava/util/Set;
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/android/settings/homepage/contextualcards/ContextualCardRenderer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/ControllerRendererPool;->mRenderers:Ljava/util/Set;

    return-object p0
.end method
