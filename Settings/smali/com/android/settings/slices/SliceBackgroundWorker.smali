.class public abstract Lcom/android/settings/slices/SliceBackgroundWorker;
.super Ljava/lang/Object;
.source "SliceBackgroundWorker.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Closeable;"
    }
.end annotation


# static fields
.field private static final LIVE_WORKERS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/net/Uri;",
            "Lcom/android/settings/slices/SliceBackgroundWorker;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCachedResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/settings/slices/SliceBackgroundWorker;->LIVE_WORKERS:Ljava/util/Map;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/slices/SliceBackgroundWorker;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/slices/SliceBackgroundWorker;->mUri:Landroid/net/Uri;

    return-void
.end method

.method static getInstance(Landroid/content/Context;Lcom/android/settings/slices/Sliceable;Landroid/net/Uri;)Lcom/android/settings/slices/SliceBackgroundWorker;
    .locals 5

    invoke-static {p2}, Lcom/android/settings/slices/SliceBackgroundWorker;->getInstance(Landroid/net/Uri;)Lcom/android/settings/slices/SliceBackgroundWorker;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/android/settings/slices/Sliceable;->getBackgroundWorkerClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "create instance: "

    const-string v1, "SliceBackgroundWorker"

    invoke-static {v0, p1, v1}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline35(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    :try_start_0
    new-array v1, v0, [Ljava/lang/Class;

    const-class v2, Landroid/content/Context;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-class v2, Landroid/net/Uri;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-virtual {p1, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p0, v0, v3

    aput-object p2, v0, v4

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lcom/android/settings/slices/SliceBackgroundWorker;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    sget-object p0, Lcom/android/settings/slices/SliceBackgroundWorker;->LIVE_WORKERS:Ljava/util/Map;

    invoke-interface {p0, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p2, Ljava/lang/IllegalStateException;

    const-string v0, "Invalid slice background worker: "

    invoke-static {v0, p1}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline14(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_0
    :goto_0
    return-object v0
.end method

.method public static getInstance(Landroid/net/Uri;)Lcom/android/settings/slices/SliceBackgroundWorker;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/settings/slices/SliceBackgroundWorker;",
            ">(",
            "Landroid/net/Uri;",
            ")TT;"
        }
    .end annotation

    sget-object v0, Lcom/android/settings/slices/SliceBackgroundWorker;->LIVE_WORKERS:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/slices/SliceBackgroundWorker;

    return-object p0
.end method

.method static shutdown()V
    .locals 4

    sget-object v0, Lcom/android/settings/slices/SliceBackgroundWorker;->LIVE_WORKERS:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/slices/SliceBackgroundWorker;

    :try_start_0
    invoke-interface {v1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "SliceBackgroundWorker"

    const-string v3, "Shutting down worker failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/settings/slices/SliceBackgroundWorker;->LIVE_WORKERS:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method


# virtual methods
.method protected areListsTheSame(Ljava/util/List;Ljava/util/List;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TE;>;",
            "Ljava/util/List<",
            "TE;>;)Z"
        }
    .end annotation

    invoke-interface {p1, p2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method protected getContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/slices/SliceBackgroundWorker;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public final getResults()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/settings/slices/SliceBackgroundWorker;->mCachedResults:Ljava/util/List;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method protected final notifySliceChange()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/slices/SliceBackgroundWorker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/slices/SliceBackgroundWorker;->mUri:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return-void
.end method

.method protected abstract onSlicePinned()V
.end method

.method protected abstract onSliceUnpinned()V
.end method

.method protected final updateResults(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TE;>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    if-nez p1, :cond_1

    iget-object v1, p0, Lcom/android/settings/slices/SliceBackgroundWorker;->mCachedResults:Ljava/util/List;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/settings/slices/SliceBackgroundWorker;->mCachedResults:Ljava/util/List;

    invoke-virtual {p0, p1, v1}, Lcom/android/settings/slices/SliceBackgroundWorker;->areListsTheSame(Ljava/util/List;Ljava/util/List;)Z

    move-result v1

    xor-int/2addr v0, v1

    :goto_0
    if-eqz v0, :cond_2

    iput-object p1, p0, Lcom/android/settings/slices/SliceBackgroundWorker;->mCachedResults:Ljava/util/List;

    invoke-virtual {p0}, Lcom/android/settings/slices/SliceBackgroundWorker;->notifySliceChange()V

    :cond_2
    return-void
.end method
