.class public Lcom/bumptech/glide/RequestBuilder;
.super Lcom/bumptech/glide/request/BaseRequestOptions;
.source "RequestBuilder.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Lcom/bumptech/glide/ModelTypes;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TranscodeType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/bumptech/glide/request/BaseRequestOptions<",
        "Lcom/bumptech/glide/RequestBuilder<",
        "TTranscodeType;>;>;",
        "Ljava/lang/Cloneable;",
        "Lcom/bumptech/glide/ModelTypes<",
        "Lcom/bumptech/glide/RequestBuilder<",
        "TTranscodeType;>;>;"
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private errorBuilder:Lcom/bumptech/glide/RequestBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/RequestBuilder<",
            "TTranscodeType;>;"
        }
    .end annotation
.end field

.field private final glideContext:Lcom/bumptech/glide/GlideContext;

.field private isDefaultTransitionOptionsSet:Z

.field private isModelSet:Z

.field private isThumbnailBuilt:Z

.field private model:Ljava/lang/Object;

.field private requestListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/request/RequestListener<",
            "TTranscodeType;>;>;"
        }
    .end annotation
.end field

.field private final requestManager:Lcom/bumptech/glide/RequestManager;

.field private thumbSizeMultiplier:Ljava/lang/Float;

.field private thumbnailBuilder:Lcom/bumptech/glide/RequestBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/RequestBuilder<",
            "TTranscodeType;>;"
        }
    .end annotation
.end field

.field private final transcodeClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TTranscodeType;>;"
        }
    .end annotation
.end field

.field private transitionOptions:Lcom/bumptech/glide/TransitionOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/TransitionOptions<",
            "*-TTranscodeType;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->DATA:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    sget-object v1, Lcom/bumptech/glide/Priority;->LOW:Lcom/bumptech/glide/Priority;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->priority(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->skipMemoryCache(Z)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    return-void
.end method

.method protected constructor <init>(Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/RequestManager;Ljava/lang/Class;Landroid/content/Context;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/Glide;",
            "Lcom/bumptech/glide/RequestManager;",
            "Ljava/lang/Class<",
            "TTranscodeType;>;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/RequestBuilder;->isDefaultTransitionOptionsSet:Z

    iput-object p2, p0, Lcom/bumptech/glide/RequestBuilder;->requestManager:Lcom/bumptech/glide/RequestManager;

    iput-object p3, p0, Lcom/bumptech/glide/RequestBuilder;->transcodeClass:Ljava/lang/Class;

    iput-object p4, p0, Lcom/bumptech/glide/RequestBuilder;->context:Landroid/content/Context;

    iget-object p4, p2, Lcom/bumptech/glide/RequestManager;->glide:Lcom/bumptech/glide/Glide;

    invoke-virtual {p4}, Lcom/bumptech/glide/Glide;->getGlideContext()Lcom/bumptech/glide/GlideContext;

    move-result-object p4

    invoke-virtual {p4, p3}, Lcom/bumptech/glide/GlideContext;->getDefaultTransitionOptions(Ljava/lang/Class;)Lcom/bumptech/glide/TransitionOptions;

    move-result-object p3

    iput-object p3, p0, Lcom/bumptech/glide/RequestBuilder;->transitionOptions:Lcom/bumptech/glide/TransitionOptions;

    invoke-virtual {p1}, Lcom/bumptech/glide/Glide;->getGlideContext()Lcom/bumptech/glide/GlideContext;

    move-result-object p1

    iput-object p1, p0, Lcom/bumptech/glide/RequestBuilder;->glideContext:Lcom/bumptech/glide/GlideContext;

    invoke-virtual {p2}, Lcom/bumptech/glide/RequestManager;->getDefaultRequestListeners()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/bumptech/glide/request/RequestListener;

    if-eqz p3, :cond_0

    iget-object p4, p0, Lcom/bumptech/glide/RequestBuilder;->requestListeners:Ljava/util/List;

    if-nez p4, :cond_1

    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    iput-object p4, p0, Lcom/bumptech/glide/RequestBuilder;->requestListeners:Ljava/util/List;

    :cond_1
    iget-object p4, p0, Lcom/bumptech/glide/RequestBuilder;->requestListeners:Ljava/util/List;

    invoke-interface {p4, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Lcom/bumptech/glide/RequestManager;->getDefaultRequestOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    return-void
.end method

.method private buildRequestRecursive(Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/RequestListener;Lcom/bumptech/glide/request/RequestCoordinator;Lcom/bumptech/glide/TransitionOptions;Lcom/bumptech/glide/Priority;IILcom/bumptech/glide/request/BaseRequestOptions;Ljava/util/concurrent/Executor;)Lcom/bumptech/glide/request/Request;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/bumptech/glide/request/target/Target<",
            "TTranscodeType;>;",
            "Lcom/bumptech/glide/request/RequestListener<",
            "TTranscodeType;>;",
            "Lcom/bumptech/glide/request/RequestCoordinator;",
            "Lcom/bumptech/glide/TransitionOptions<",
            "*-TTranscodeType;>;",
            "Lcom/bumptech/glide/Priority;",
            "II",
            "Lcom/bumptech/glide/request/BaseRequestOptions<",
            "*>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/bumptech/glide/request/Request;"
        }
    .end annotation

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p6

    iget-object v0, v11, Lcom/bumptech/glide/RequestBuilder;->errorBuilder:Lcom/bumptech/glide/RequestBuilder;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/bumptech/glide/request/ErrorRequestCoordinator;

    move-object/from16 v1, p4

    invoke-direct {v0, v12, v1}, Lcom/bumptech/glide/request/ErrorRequestCoordinator;-><init>(Ljava/lang/Object;Lcom/bumptech/glide/request/RequestCoordinator;)V

    move-object v5, v0

    move-object v14, v5

    goto :goto_0

    :cond_0
    move-object/from16 v1, p4

    const/4 v0, 0x0

    move-object v14, v0

    move-object v5, v1

    :goto_0
    iget-object v0, v11, Lcom/bumptech/glide/RequestBuilder;->thumbnailBuilder:Lcom/bumptech/glide/RequestBuilder;

    if-eqz v0, :cond_5

    iget-boolean v1, v11, Lcom/bumptech/glide/RequestBuilder;->isThumbnailBuilt:Z

    if-nez v1, :cond_4

    iget-object v1, v0, Lcom/bumptech/glide/RequestBuilder;->transitionOptions:Lcom/bumptech/glide/TransitionOptions;

    iget-boolean v0, v0, Lcom/bumptech/glide/RequestBuilder;->isDefaultTransitionOptionsSet:Z

    if-eqz v0, :cond_1

    move-object/from16 v15, p5

    goto :goto_1

    :cond_1
    move-object v15, v1

    :goto_1
    iget-object v0, v11, Lcom/bumptech/glide/RequestBuilder;->thumbnailBuilder:Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->isPrioritySet()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, v11, Lcom/bumptech/glide/RequestBuilder;->thumbnailBuilder:Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->getPriority()Lcom/bumptech/glide/Priority;

    move-result-object v0

    goto :goto_2

    :cond_2
    invoke-direct {v11, v13}, Lcom/bumptech/glide/RequestBuilder;->getThumbnailPriority(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/Priority;

    move-result-object v0

    :goto_2
    move-object/from16 v16, v0

    iget-object v0, v11, Lcom/bumptech/glide/RequestBuilder;->thumbnailBuilder:Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->getOverrideWidth()I

    move-result v0

    iget-object v1, v11, Lcom/bumptech/glide/RequestBuilder;->thumbnailBuilder:Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->getOverrideHeight()I

    move-result v1

    invoke-static/range {p7 .. p8}, Lcom/bumptech/glide/util/Util;->isValidDimensions(II)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, v11, Lcom/bumptech/glide/RequestBuilder;->thumbnailBuilder:Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {v2}, Lcom/bumptech/glide/request/BaseRequestOptions;->isValidOverride()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual/range {p9 .. p9}, Lcom/bumptech/glide/request/BaseRequestOptions;->getOverrideWidth()I

    move-result v0

    invoke-virtual/range {p9 .. p9}, Lcom/bumptech/glide/request/BaseRequestOptions;->getOverrideHeight()I

    move-result v1

    :cond_3
    move/from16 v17, v0

    move/from16 v18, v1

    new-instance v10, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;

    invoke-direct {v10, v12, v5}, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;-><init>(Ljava/lang/Object;Lcom/bumptech/glide/request/RequestCoordinator;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p9

    move-object v5, v10

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object v13, v10

    move-object/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Lcom/bumptech/glide/RequestBuilder;->obtainRequest(Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/RequestListener;Lcom/bumptech/glide/request/BaseRequestOptions;Lcom/bumptech/glide/request/RequestCoordinator;Lcom/bumptech/glide/TransitionOptions;Lcom/bumptech/glide/Priority;IILjava/util/concurrent/Executor;)Lcom/bumptech/glide/request/Request;

    move-result-object v10

    const/4 v0, 0x1

    iput-boolean v0, v11, Lcom/bumptech/glide/RequestBuilder;->isThumbnailBuilt:Z

    iget-object v9, v11, Lcom/bumptech/glide/RequestBuilder;->thumbnailBuilder:Lcom/bumptech/glide/RequestBuilder;

    move-object v0, v9

    move-object v4, v13

    move-object v5, v15

    move-object/from16 v6, v16

    move/from16 v7, v17

    move/from16 v8, v18

    move-object v15, v10

    move-object/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Lcom/bumptech/glide/RequestBuilder;->buildRequestRecursive(Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/RequestListener;Lcom/bumptech/glide/request/RequestCoordinator;Lcom/bumptech/glide/TransitionOptions;Lcom/bumptech/glide/Priority;IILcom/bumptech/glide/request/BaseRequestOptions;Ljava/util/concurrent/Executor;)Lcom/bumptech/glide/request/Request;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v11, Lcom/bumptech/glide/RequestBuilder;->isThumbnailBuilt:Z

    invoke-virtual {v13, v15, v0}, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->setRequests(Lcom/bumptech/glide/request/Request;Lcom/bumptech/glide/request/Request;)V

    goto/16 :goto_3

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You cannot use a request as both the main request and a thumbnail, consider using clone() on the request(s) passed to thumbnail()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    iget-object v0, v11, Lcom/bumptech/glide/RequestBuilder;->thumbSizeMultiplier:Ljava/lang/Float;

    if-eqz v0, :cond_6

    new-instance v15, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;

    invoke-direct {v15, v12, v5}, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;-><init>(Ljava/lang/Object;Lcom/bumptech/glide/request/RequestCoordinator;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p9

    move-object v5, v15

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Lcom/bumptech/glide/RequestBuilder;->obtainRequest(Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/RequestListener;Lcom/bumptech/glide/request/BaseRequestOptions;Lcom/bumptech/glide/request/RequestCoordinator;Lcom/bumptech/glide/TransitionOptions;Lcom/bumptech/glide/Priority;IILjava/util/concurrent/Executor;)Lcom/bumptech/glide/request/Request;

    move-result-object v10

    invoke-virtual/range {p9 .. p9}, Lcom/bumptech/glide/request/BaseRequestOptions;->clone()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    iget-object v1, v11, Lcom/bumptech/glide/RequestBuilder;->thumbSizeMultiplier:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->sizeMultiplier(F)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v4

    invoke-direct {v11, v13}, Lcom/bumptech/glide/RequestBuilder;->getThumbnailPriority(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/Priority;

    move-result-object v7

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v13, v10

    move-object/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Lcom/bumptech/glide/RequestBuilder;->obtainRequest(Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/RequestListener;Lcom/bumptech/glide/request/BaseRequestOptions;Lcom/bumptech/glide/request/RequestCoordinator;Lcom/bumptech/glide/TransitionOptions;Lcom/bumptech/glide/Priority;IILjava/util/concurrent/Executor;)Lcom/bumptech/glide/request/Request;

    move-result-object v0

    invoke-virtual {v15, v13, v0}, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->setRequests(Lcom/bumptech/glide/request/Request;Lcom/bumptech/glide/request/Request;)V

    move-object v13, v15

    goto :goto_3

    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p9

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Lcom/bumptech/glide/RequestBuilder;->obtainRequest(Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/RequestListener;Lcom/bumptech/glide/request/BaseRequestOptions;Lcom/bumptech/glide/request/RequestCoordinator;Lcom/bumptech/glide/TransitionOptions;Lcom/bumptech/glide/Priority;IILjava/util/concurrent/Executor;)Lcom/bumptech/glide/request/Request;

    move-result-object v10

    move-object v13, v10

    :goto_3
    if-nez v14, :cond_7

    return-object v13

    :cond_7
    iget-object v0, v11, Lcom/bumptech/glide/RequestBuilder;->errorBuilder:Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->getOverrideWidth()I

    move-result v0

    iget-object v1, v11, Lcom/bumptech/glide/RequestBuilder;->errorBuilder:Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->getOverrideHeight()I

    move-result v1

    invoke-static/range {p7 .. p8}, Lcom/bumptech/glide/util/Util;->isValidDimensions(II)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, v11, Lcom/bumptech/glide/RequestBuilder;->errorBuilder:Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {v2}, Lcom/bumptech/glide/request/BaseRequestOptions;->isValidOverride()Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual/range {p9 .. p9}, Lcom/bumptech/glide/request/BaseRequestOptions;->getOverrideWidth()I

    move-result v0

    invoke-virtual/range {p9 .. p9}, Lcom/bumptech/glide/request/BaseRequestOptions;->getOverrideHeight()I

    move-result v1

    :cond_8
    move v7, v0

    move v8, v1

    iget-object v0, v11, Lcom/bumptech/glide/RequestBuilder;->errorBuilder:Lcom/bumptech/glide/RequestBuilder;

    iget-object v5, v0, Lcom/bumptech/glide/RequestBuilder;->transitionOptions:Lcom/bumptech/glide/TransitionOptions;

    invoke-virtual {v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->getPriority()Lcom/bumptech/glide/Priority;

    move-result-object v6

    iget-object v9, v11, Lcom/bumptech/glide/RequestBuilder;->errorBuilder:Lcom/bumptech/glide/RequestBuilder;

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object v4, v14

    move-object/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Lcom/bumptech/glide/RequestBuilder;->buildRequestRecursive(Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/RequestListener;Lcom/bumptech/glide/request/RequestCoordinator;Lcom/bumptech/glide/TransitionOptions;Lcom/bumptech/glide/Priority;IILcom/bumptech/glide/request/BaseRequestOptions;Ljava/util/concurrent/Executor;)Lcom/bumptech/glide/request/Request;

    move-result-object v0

    invoke-virtual {v14, v13, v0}, Lcom/bumptech/glide/request/ErrorRequestCoordinator;->setRequests(Lcom/bumptech/glide/request/Request;Lcom/bumptech/glide/request/Request;)V

    return-object v14
.end method

.method private getThumbnailPriority(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/Priority;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    sget-object p0, Lcom/bumptech/glide/Priority;->NORMAL:Lcom/bumptech/glide/Priority;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "unknown priority: "

    invoke-static {v0}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline23(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->getPriority()Lcom/bumptech/glide/Priority;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    sget-object p0, Lcom/bumptech/glide/Priority;->HIGH:Lcom/bumptech/glide/Priority;

    return-object p0

    :cond_2
    sget-object p0, Lcom/bumptech/glide/Priority;->IMMEDIATE:Lcom/bumptech/glide/Priority;

    return-object p0
.end method

.method private into(Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/RequestListener;Lcom/bumptech/glide/request/BaseRequestOptions;Ljava/util/concurrent/Executor;)Lcom/bumptech/glide/request/target/Target;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y::",
            "Lcom/bumptech/glide/request/target/Target<",
            "TTranscodeType;>;>(TY;",
            "Lcom/bumptech/glide/request/RequestListener<",
            "TTranscodeType;>;",
            "Lcom/bumptech/glide/request/BaseRequestOptions<",
            "*>;",
            "Ljava/util/concurrent/Executor;",
            ")TY;"
        }
    .end annotation

    move-object v11, p0

    move-object v12, p1

    const-string v13, "Argument must not be null"

    invoke-static {p1, v13}, Lcom/bumptech/glide/R$id;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-boolean v0, v11, Lcom/bumptech/glide/RequestBuilder;->isModelSet:Z

    if-eqz v0, :cond_3

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iget-object v5, v11, Lcom/bumptech/glide/RequestBuilder;->transitionOptions:Lcom/bumptech/glide/TransitionOptions;

    invoke-virtual/range {p3 .. p3}, Lcom/bumptech/glide/request/BaseRequestOptions;->getPriority()Lcom/bumptech/glide/Priority;

    move-result-object v6

    invoke-virtual/range {p3 .. p3}, Lcom/bumptech/glide/request/BaseRequestOptions;->getOverrideWidth()I

    move-result v7

    invoke-virtual/range {p3 .. p3}, Lcom/bumptech/glide/request/BaseRequestOptions;->getOverrideHeight()I

    move-result v8

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    invoke-direct/range {v0 .. v10}, Lcom/bumptech/glide/RequestBuilder;->buildRequestRecursive(Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/RequestListener;Lcom/bumptech/glide/request/RequestCoordinator;Lcom/bumptech/glide/TransitionOptions;Lcom/bumptech/glide/Priority;IILcom/bumptech/glide/request/BaseRequestOptions;Ljava/util/concurrent/Executor;)Lcom/bumptech/glide/request/Request;

    move-result-object v0

    invoke-interface {p1}, Lcom/bumptech/glide/request/target/Target;->getRequest()Lcom/bumptech/glide/request/Request;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/bumptech/glide/request/Request;->isEquivalentTo(Lcom/bumptech/glide/request/Request;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual/range {p3 .. p3}, Lcom/bumptech/glide/request/BaseRequestOptions;->isMemoryCacheable()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v1}, Lcom/bumptech/glide/request/Request;->isComplete()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_2

    invoke-static {v1, v13}, Lcom/bumptech/glide/R$id;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {v1}, Lcom/bumptech/glide/request/Request;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {v1}, Lcom/bumptech/glide/request/Request;->begin()V

    :cond_1
    return-object v12

    :cond_2
    iget-object v1, v11, Lcom/bumptech/glide/RequestBuilder;->requestManager:Lcom/bumptech/glide/RequestManager;

    invoke-virtual {v1, p1}, Lcom/bumptech/glide/RequestManager;->clear(Lcom/bumptech/glide/request/target/Target;)V

    invoke-interface {p1, v0}, Lcom/bumptech/glide/request/target/Target;->setRequest(Lcom/bumptech/glide/request/Request;)V

    iget-object v1, v11, Lcom/bumptech/glide/RequestBuilder;->requestManager:Lcom/bumptech/glide/RequestManager;

    invoke-virtual {v1, p1, v0}, Lcom/bumptech/glide/RequestManager;->track(Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/Request;)V

    return-object v12

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must call #load() before calling #into()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private obtainRequest(Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/RequestListener;Lcom/bumptech/glide/request/BaseRequestOptions;Lcom/bumptech/glide/request/RequestCoordinator;Lcom/bumptech/glide/TransitionOptions;Lcom/bumptech/glide/Priority;IILjava/util/concurrent/Executor;)Lcom/bumptech/glide/request/Request;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/bumptech/glide/request/target/Target<",
            "TTranscodeType;>;",
            "Lcom/bumptech/glide/request/RequestListener<",
            "TTranscodeType;>;",
            "Lcom/bumptech/glide/request/BaseRequestOptions<",
            "*>;",
            "Lcom/bumptech/glide/request/RequestCoordinator;",
            "Lcom/bumptech/glide/TransitionOptions<",
            "*-TTranscodeType;>;",
            "Lcom/bumptech/glide/Priority;",
            "II",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/bumptech/glide/request/Request;"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bumptech/glide/RequestBuilder;->context:Landroid/content/Context;

    iget-object v2, v0, Lcom/bumptech/glide/RequestBuilder;->glideContext:Lcom/bumptech/glide/GlideContext;

    iget-object v3, v0, Lcom/bumptech/glide/RequestBuilder;->model:Ljava/lang/Object;

    iget-object v4, v0, Lcom/bumptech/glide/RequestBuilder;->transcodeClass:Ljava/lang/Class;

    iget-object v11, v0, Lcom/bumptech/glide/RequestBuilder;->requestListeners:Ljava/util/List;

    invoke-virtual {v2}, Lcom/bumptech/glide/GlideContext;->getEngine()Lcom/bumptech/glide/load/engine/Engine;

    move-result-object v13

    invoke-virtual/range {p6 .. p6}, Lcom/bumptech/glide/TransitionOptions;->getTransitionFactory()Lcom/bumptech/glide/request/transition/TransitionFactory;

    move-result-object v14

    move-object v0, v1

    move-object v1, v2

    move-object/from16 v2, p1

    move-object/from16 v5, p4

    move/from16 v6, p8

    move/from16 v7, p9

    move-object/from16 v8, p7

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v12, p5

    move-object/from16 v15, p10

    invoke-static/range {v0 .. v15}, Lcom/bumptech/glide/request/SingleRequest;->obtain(Landroid/content/Context;Lcom/bumptech/glide/GlideContext;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Lcom/bumptech/glide/request/BaseRequestOptions;IILcom/bumptech/glide/Priority;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/RequestListener;Ljava/util/List;Lcom/bumptech/glide/request/RequestCoordinator;Lcom/bumptech/glide/load/engine/Engine;Lcom/bumptech/glide/request/transition/TransitionFactory;Ljava/util/concurrent/Executor;)Lcom/bumptech/glide/request/SingleRequest;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/BaseRequestOptions<",
            "*>;)",
            "Lcom/bumptech/glide/RequestBuilder<",
            "TTranscodeType;>;"
        }
    .end annotation

    const-string v0, "Argument must not be null"

    invoke-static {p1, v0}, Lcom/bumptech/glide/R$id;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/RequestBuilder;

    return-object p0
.end method

.method public bridge synthetic apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    return-object p0
.end method

.method public clone()Lcom/bumptech/glide/RequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/RequestBuilder<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->clone()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/RequestBuilder;

    iget-object v0, p0, Lcom/bumptech/glide/RequestBuilder;->transitionOptions:Lcom/bumptech/glide/TransitionOptions;

    invoke-virtual {v0}, Lcom/bumptech/glide/TransitionOptions;->clone()Lcom/bumptech/glide/TransitionOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/RequestBuilder;->transitionOptions:Lcom/bumptech/glide/TransitionOptions;

    return-object p0
.end method

.method public clone()Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 1

    invoke-super {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->clone()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/RequestBuilder;

    iget-object v0, p0, Lcom/bumptech/glide/RequestBuilder;->transitionOptions:Lcom/bumptech/glide/TransitionOptions;

    invoke-virtual {v0}, Lcom/bumptech/glide/TransitionOptions;->clone()Lcom/bumptech/glide/TransitionOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/RequestBuilder;->transitionOptions:Lcom/bumptech/glide/TransitionOptions;

    return-object p0
.end method

.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->clone()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/RequestBuilder;

    iget-object v0, p0, Lcom/bumptech/glide/RequestBuilder;->transitionOptions:Lcom/bumptech/glide/TransitionOptions;

    invoke-virtual {v0}, Lcom/bumptech/glide/TransitionOptions;->clone()Lcom/bumptech/glide/TransitionOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/RequestBuilder;->transitionOptions:Lcom/bumptech/glide/TransitionOptions;

    return-object p0
.end method

.method public into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y::",
            "Lcom/bumptech/glide/request/target/Target<",
            "TTranscodeType;>;>(TY;)TY;"
        }
    .end annotation

    invoke-static {}, Lcom/bumptech/glide/util/Executors;->mainThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, p0, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/RequestListener;Lcom/bumptech/glide/request/BaseRequestOptions;Ljava/util/concurrent/Executor;)Lcom/bumptech/glide/request/target/Target;

    return-object p1
.end method

.method public into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ImageView;",
            ")",
            "Lcom/bumptech/glide/request/target/ViewTarget<",
            "Landroid/widget/ImageView;",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-static {}, Lcom/bumptech/glide/util/Util;->assertMainThread()V

    const-string v0, "Argument must not be null"

    invoke-static {p1, v0}, Lcom/bumptech/glide/R$id;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->isTransformationSet()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->isTransformationAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/bumptech/glide/RequestBuilder$1;->$SwitchMap$android$widget$ImageView$ScaleType:[I

    invoke-virtual {p1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/bumptech/glide/RequestBuilder;->clone()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->optionalCenterInside()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    goto :goto_1

    :pswitch_1
    invoke-virtual {p0}, Lcom/bumptech/glide/RequestBuilder;->clone()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->optionalFitCenter()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0}, Lcom/bumptech/glide/RequestBuilder;->clone()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->optionalCenterInside()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    goto :goto_1

    :pswitch_3
    invoke-virtual {p0}, Lcom/bumptech/glide/RequestBuilder;->clone()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->optionalCenterCrop()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    goto :goto_1

    :cond_0
    :goto_0
    move-object v0, p0

    :goto_1
    iget-object v1, p0, Lcom/bumptech/glide/RequestBuilder;->glideContext:Lcom/bumptech/glide/GlideContext;

    iget-object v2, p0, Lcom/bumptech/glide/RequestBuilder;->transcodeClass:Ljava/lang/Class;

    invoke-virtual {v1, p1, v2}, Lcom/bumptech/glide/GlideContext;->buildImageViewTarget(Landroid/widget/ImageView;Ljava/lang/Class;)Lcom/bumptech/glide/request/target/ViewTarget;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {}, Lcom/bumptech/glide/util/Executors;->mainThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/bumptech/glide/RequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/RequestListener;Lcom/bumptech/glide/request/BaseRequestOptions;Ljava/util/concurrent/Executor;)Lcom/bumptech/glide/request/target/Target;

    check-cast p1, Lcom/bumptech/glide/request/target/ViewTarget;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public load(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/bumptech/glide/RequestBuilder<",
            "TTranscodeType;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/bumptech/glide/RequestBuilder;->model:Ljava/lang/Object;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/bumptech/glide/RequestBuilder;->isModelSet:Z

    return-object p0
.end method

.method public load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/bumptech/glide/RequestBuilder<",
            "TTranscodeType;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/bumptech/glide/RequestBuilder;->model:Ljava/lang/Object;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/bumptech/glide/RequestBuilder;->isModelSet:Z

    return-object p0
.end method
