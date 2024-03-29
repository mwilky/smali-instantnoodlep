.class Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;
.super Ljava/lang/Object;
.source "PersistentAnalyticsStore.java"

# interfaces
.implements Lcom/google/analytics/tracking/android/AnalyticsStore;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/analytics/tracking/android/PersistentAnalyticsStore$AnalyticsDatabaseHelper;
    }
.end annotation


# static fields
.field private static final CREATE_HITS_TABLE:Ljava/lang/String;

.field static final HITS_TABLE:Ljava/lang/String; = "hits2"

.field static final HIT_APP_ID:Ljava/lang/String; = "hit_app_id"

.field static final HIT_ID:Ljava/lang/String; = "hit_id"

.field static final HIT_STRING:Ljava/lang/String; = "hit_string"

.field static final HIT_TIME:Ljava/lang/String; = "hit_time"

.field static final HIT_URL:Ljava/lang/String; = "hit_url"


# instance fields
.field private mClock:Lcom/google/analytics/tracking/android/Clock;

.field private final mContext:Landroid/content/Context;

.field private final mDatabaseName:Ljava/lang/String;

.field private final mDbHelper:Lcom/google/analytics/tracking/android/PersistentAnalyticsStore$AnalyticsDatabaseHelper;

.field private volatile mDispatcher:Lcom/google/analytics/tracking/android/Dispatcher;

.field private mLastDeleteStaleHitsTime:J

.field private final mListener:Lcom/google/analytics/tracking/android/AnalyticsStoreStateListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "hits2"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "hit_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "hit_time"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "hit_url"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "hit_string"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "hit_app_id"

    aput-object v2, v0, v1

    const-string v1, "CREATE TABLE IF NOT EXISTS %s ( \'%s\' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, \'%s\' INTEGER NOT NULL, \'%s\' TEXT NOT NULL, \'%s\' TEXT NOT NULL, \'%s\' INTEGER);"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->CREATE_HITS_TABLE:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/google/analytics/tracking/android/AnalyticsStoreStateListener;Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->mDatabaseName:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->mListener:Lcom/google/analytics/tracking/android/AnalyticsStoreStateListener;

    new-instance p1, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore$1;

    invoke-direct {p1, p0}, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore$1;-><init>(Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;)V

    iput-object p1, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->mClock:Lcom/google/analytics/tracking/android/Clock;

    new-instance p1, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore$AnalyticsDatabaseHelper;

    iget-object p2, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->mContext:Landroid/content/Context;

    iget-object p3, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->mDatabaseName:Ljava/lang/String;

    invoke-direct {p1, p0, p2, p3}, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore$AnalyticsDatabaseHelper;-><init>(Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;Landroid/content/Context;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->mDbHelper:Lcom/google/analytics/tracking/android/PersistentAnalyticsStore$AnalyticsDatabaseHelper;

    new-instance p1, Lcom/google/analytics/tracking/android/SimpleNetworkDispatcher;

    new-instance p2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {p2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    iget-object p3, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->mContext:Landroid/content/Context;

    invoke-static {p3}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/analytics/tracking/android/GoogleAnalytics;

    move-result-object v0

    invoke-direct {p1, p2, v0, p3}, Lcom/google/analytics/tracking/android/SimpleNetworkDispatcher;-><init>(Lorg/apache/http/client/HttpClient;Lcom/google/analytics/tracking/android/GoogleAnalytics;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->mDispatcher:Lcom/google/analytics/tracking/android/Dispatcher;

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->mLastDeleteStaleHitsTime:J

    return-void
.end method

.method static synthetic access$000(Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;)Lcom/google/analytics/tracking/android/Clock;
    .locals 0

    iget-object p0, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->mClock:Lcom/google/analytics/tracking/android/Clock;

    return-object p0
.end method

.method static synthetic access$100(Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->mDatabaseName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->CREATE_HITS_TABLE:Ljava/lang/String;

    return-object v0
.end method

.method private getWritableDatabase(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->mDbHelper:Lcom/google/analytics/tracking/android/PersistentAnalyticsStore$AnalyticsDatabaseHelper;

    invoke-virtual {p0}, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore$AnalyticsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    invoke-static {p1}, Lcom/google/analytics/tracking/android/Log;->w(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public clearHits(J)V
    .locals 5

    const-string v0, "Error opening database for clearHits"

    invoke-direct {p0, v0}, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->getWritableDatabase(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-eqz v0, :cond_2

    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    const-string v2, "hits2"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {v0, v2, p1, p1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    new-array v1, v4, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v3

    const-string p1, "hit_app_id = ?"

    invoke-virtual {v0, v2, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    :goto_0
    iget-object p1, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->mListener:Lcom/google/analytics/tracking/android/AnalyticsStoreStateListener;

    invoke-virtual {p0}, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->getNumStoredHits()I

    move-result p0

    if-nez p0, :cond_1

    move v3, v4

    :cond_1
    check-cast p1, Lcom/google/analytics/tracking/android/GAServiceManager$1;

    invoke-virtual {p1, v3}, Lcom/google/analytics/tracking/android/GAServiceManager$1;->reportStoreIsEmpty(Z)V

    :cond_2
    return-void
.end method

.method deleteHits(Ljava/util/Collection;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/google/analytics/tracking/android/Hit;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/analytics/tracking/android/Hit;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2}, Lcom/google/analytics/tracking/android/Hit;->getHitId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    move v1, v3

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->deleteHits([Ljava/lang/String;)V

    return-void

    :cond_2
    :goto_1
    const-string p0, "Empty/Null collection passed to deleteHits."

    invoke-static {p0}, Lcom/google/analytics/tracking/android/Log;->w(Ljava/lang/String;)V

    return-void
.end method

.method deleteHits([Ljava/lang/String;)V
    .locals 5

    if-eqz p1, :cond_3

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const-string v0, "Error opening database for deleteHits."

    invoke-direct {p0, v0}, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->getWritableDatabase(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    array-length v3, p1

    const-string v4, "?"

    invoke-static {v3, v4}, Ljava/util/Collections;->nCopies(ILjava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const-string v4, ","

    invoke-static {v4, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "HIT_ID in (%s)"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :try_start_0
    const-string v3, "hits2"

    invoke-virtual {v0, v3, v2, p1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->mListener:Lcom/google/analytics/tracking/android/AnalyticsStoreStateListener;

    invoke-virtual {p0}, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->getNumStoredHits()I

    move-result p0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    move v1, v4

    :goto_0
    check-cast v0, Lcom/google/analytics/tracking/android/GAServiceManager$1;

    :try_start_1
    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GAServiceManager$1;->reportStoreIsEmpty(Z)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error deleting hits "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/analytics/tracking/android/Log;->w(Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_3
    :goto_2
    const-string p0, "Empty hitIds passed to deleteHits."

    invoke-static {p0}, Lcom/google/analytics/tracking/android/Log;->w(Ljava/lang/String;)V

    return-void
.end method

.method deleteStaleHits()I
    .locals 6

    iget-object v0, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->mClock:Lcom/google/analytics/tracking/android/Clock;

    invoke-interface {v0}, Lcom/google/analytics/tracking/android/Clock;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->mLastDeleteStaleHitsTime:J

    const-wide/32 v4, 0x5265c00

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-gtz v2, :cond_0

    return v3

    :cond_0
    iput-wide v0, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->mLastDeleteStaleHitsTime:J

    const-string v0, "Error opening database for deleteStaleHits."

    invoke-direct {p0, v0}, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->getWritableDatabase(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-nez v0, :cond_1

    return v3

    :cond_1
    iget-object v1, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->mClock:Lcom/google/analytics/tracking/android/Clock;

    invoke-interface {v1}, Lcom/google/analytics/tracking/android/Clock;->currentTimeMillis()J

    move-result-wide v1

    const-wide v4, 0x9a7ec800L

    sub-long/2addr v1, v4

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v3

    const-string v1, "hits2"

    const-string v2, "HIT_TIME < ?"

    invoke-virtual {v0, v1, v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->mListener:Lcom/google/analytics/tracking/android/AnalyticsStoreStateListener;

    invoke-virtual {p0}, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->getNumStoredHits()I

    move-result p0

    if-nez p0, :cond_2

    move v3, v4

    :cond_2
    check-cast v1, Lcom/google/analytics/tracking/android/GAServiceManager$1;

    invoke-virtual {v1, v3}, Lcom/google/analytics/tracking/android/GAServiceManager$1;->reportStoreIsEmpty(Z)V

    return v0
.end method

.method public dispatch()V
    .locals 4

    const-string v0, "Dispatch running..."

    invoke-static {v0}, Lcom/google/analytics/tracking/android/Log;->v(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->mDispatcher:Lcom/google/analytics/tracking/android/Dispatcher;

    invoke-interface {v0}, Lcom/google/analytics/tracking/android/Dispatcher;->okToDispatch()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x28

    invoke-virtual {p0, v0}, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->peekHits(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "...nothing to dispatch"

    invoke-static {v0}, Lcom/google/analytics/tracking/android/Log;->v(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->mListener:Lcom/google/analytics/tracking/android/AnalyticsStoreStateListener;

    const/4 v0, 0x1

    check-cast p0, Lcom/google/analytics/tracking/android/GAServiceManager$1;

    invoke-virtual {p0, v0}, Lcom/google/analytics/tracking/android/GAServiceManager$1;->reportStoreIsEmpty(Z)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->mDispatcher:Lcom/google/analytics/tracking/android/Dispatcher;

    invoke-interface {v1, v0}, Lcom/google/analytics/tracking/android/Dispatcher;->dispatchHits(Ljava/util/List;)I

    move-result v1

    const-string v2, "sent "

    const-string v3, " of "

    invoke-static {v2, v1, v3}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline24(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " hits"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/analytics/tracking/android/Log;->v(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-interface {v0, v2, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->deleteHits(Ljava/util/Collection;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v1, v0, :cond_2

    invoke-virtual {p0}, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->getNumStoredHits()I

    move-result p0

    if-lez p0, :cond_2

    invoke-static {}, Lcom/google/analytics/tracking/android/GAServiceManager;->getInstance()Lcom/google/analytics/tracking/android/GAServiceManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/analytics/tracking/android/GAServiceManager;->dispatchLocalHits()V

    :cond_2
    return-void
.end method

.method public getDbHelper()Lcom/google/analytics/tracking/android/PersistentAnalyticsStore$AnalyticsDatabaseHelper;
    .locals 0

    iget-object p0, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->mDbHelper:Lcom/google/analytics/tracking/android/PersistentAnalyticsStore$AnalyticsDatabaseHelper;

    return-object p0
.end method

.method public getDispatcher()Lcom/google/analytics/tracking/android/Dispatcher;
    .locals 0

    iget-object p0, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->mDispatcher:Lcom/google/analytics/tracking/android/Dispatcher;

    return-object p0
.end method

.method getHelper()Lcom/google/analytics/tracking/android/PersistentAnalyticsStore$AnalyticsDatabaseHelper;
    .locals 0

    iget-object p0, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->mDbHelper:Lcom/google/analytics/tracking/android/PersistentAnalyticsStore$AnalyticsDatabaseHelper;

    return-object p0
.end method

.method getNumStoredHits()I
    .locals 4

    const-string v0, "Error opening database for getNumStoredHits."

    invoke-direct {p0, v0}, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->getWritableDatabase(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    const-string v2, "SELECT COUNT(*) from hits2"

    invoke-virtual {p0, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    long-to-int p0, v2

    move v0, p0

    :cond_1
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    :try_start_1
    const-string p0, "Error getting numStoredHits"

    invoke-static {p0}, Lcom/google/analytics/tracking/android/Log;->w(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    return v0

    :goto_2
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw p0
.end method

.method peekHitIds(I)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "hit_id"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-gtz p1, :cond_0

    const-string p0, "Invalid maxHits specified. Skipping"

    invoke-static {p0}, Lcom/google/analytics/tracking/android/Log;->w(Ljava/lang/String;)V

    return-object v1

    :cond_0
    const-string v2, "Error opening database for peekHitIds."

    invoke-direct {p0, v2}, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->getWritableDatabase(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    if-nez v3, :cond_1

    return-object v1

    :cond_1
    const/4 p0, 0x0

    :try_start_0
    const-string v4, "hits2"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v2, "%s ASC"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v0, v10, v12

    invoke-static {v2, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {v3 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    invoke-interface {p0, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in peekHits fetching hitIds: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/analytics/tracking/android/Log;->w(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_4

    :cond_3
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_4
    return-object v1

    :goto_1
    if-eqz p0, :cond_5

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_5
    throw p1
.end method

.method public peekHits(I)Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/google/analytics/tracking/android/Hit;",
            ">;"
        }
    .end annotation

    const-string v0, "%s ASC"

    const-string v1, "hit_id"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "Error opening database for peekHits"

    move-object/from16 v4, p0

    invoke-direct {v4, v3}, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->getWritableDatabase(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    if-nez v3, :cond_0

    return-object v2

    :cond_0
    const/4 v13, 0x0

    :try_start_0
    const-string v5, "hits2"

    const-string v4, "hit_time"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v14, 0x1

    new-array v4, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v1, v4, v15

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    move-object v4, v3

    invoke-virtual/range {v4 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v2, :cond_2

    :cond_1
    :try_start_2
    new-instance v2, Lcom/google/analytics/tracking/android/Hit;

    const/4 v5, 0x0

    invoke-interface {v13, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-interface {v13, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Lcom/google/analytics/tracking/android/Hit;-><init>(Ljava/lang/String;JJ)V

    invoke-interface {v12, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v2, :cond_1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v2, v12

    goto/16 :goto_6

    :cond_2
    :goto_0
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :try_start_3
    const-string v5, "hits2"

    const-string v2, "hit_string"

    const-string v4, "hit_url"

    filled-new-array {v1, v2, v4}, [Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    new-array v2, v14, [Ljava/lang/Object;

    aput-object v1, v2, v15

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v4, v3

    move-object v1, v12

    move-object v12, v0

    :try_start_4
    invoke-virtual/range {v4 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v15

    :cond_3
    move-object v2, v13

    check-cast v2, Landroid/database/sqlite/SQLiteCursor;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteCursor;->getWindow()Landroid/database/CursorWindow;

    move-result-object v2

    invoke-virtual {v2}, Landroid/database/CursorWindow;->getNumRows()I

    move-result v2

    if-lez v2, :cond_4

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/analytics/tracking/android/Hit;

    invoke-interface {v13, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/analytics/tracking/android/Hit;->setHitString(Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/analytics/tracking/android/Hit;

    const/4 v3, 0x2

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/analytics/tracking/android/Hit;->setHitUrl(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string v2, "HitString for hitId %d too large.  Hit will be deleted."

    new-array v3, v14, [Ljava/lang/Object;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/analytics/tracking/android/Hit;

    invoke-virtual {v4}, Lcom/google/analytics/tracking/android/Hit;->getHitId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v15

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/analytics/tracking/android/Log;->w(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v2, :cond_3

    :cond_5
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    return-object v1

    :catch_1
    move-exception v0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_5

    :catch_2
    move-exception v0

    move-object v1, v12

    :goto_2
    :try_start_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in peekHits fetching hitString: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/analytics/tracking/android/Log;->w(Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/analytics/tracking/android/Hit;

    invoke-virtual {v2}, Lcom/google/analytics/tracking/android/Hit;->getHitParams()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    if-eqz v15, :cond_6

    goto :goto_4

    :cond_6
    move v15, v14

    :cond_7
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    :cond_8
    :goto_4
    if-eqz v13, :cond_9

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_9
    return-object v0

    :goto_5
    if-eqz v13, :cond_a

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_a
    throw v0

    :catch_3
    move-exception v0

    move-object v1, v12

    move-object v2, v1

    goto :goto_6

    :catchall_1
    move-exception v0

    goto :goto_7

    :catch_4
    move-exception v0

    :goto_6
    :try_start_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in peekHits fetching hitIds: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/analytics/tracking/android/Log;->w(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v13, :cond_b

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_b
    return-object v2

    :goto_7
    if-eqz v13, :cond_c

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_c
    throw v0
.end method

.method public putHit(Ljava/util/Map;JLjava/lang/String;Ljava/util/Collection;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Lcom/google/android/gms/analytics/internal/Command;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->deleteStaleHits()I

    invoke-virtual {p0}, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->getNumStoredHits()I

    move-result v0

    add-int/lit16 v0, v0, -0x7d0

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    if-lez v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->peekHitIds(I)Ljava/util/List;

    move-result-object v0

    const-string v2, "Store full, deleting "

    invoke-static {v2}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline23(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " hits to make room."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/analytics/tracking/android/Log;->v(Ljava/lang/String;)V

    new-array v2, v1, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->deleteHits([Ljava/lang/String;)V

    :cond_0
    if-eqz p5, :cond_2

    invoke-interface {p5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :cond_1
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/analytics/internal/Command;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/Command;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "appendVersion"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/Command;->getValue()Ljava/lang/String;

    move-result-object p5

    const-string v0, "_v"

    invoke-interface {p1, v0, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-string p5, "Error opening database for putHit"

    invoke-direct {p0, p5}, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->getWritableDatabase(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p5

    if-nez p5, :cond_3

    goto/16 :goto_1

    :cond_3
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Lcom/google/analytics/tracking/android/FutureApis;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/google/analytics/tracking/android/FutureApis;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    const-string v3, "&"

    invoke-static {v3, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "hit_string"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "hit_time"

    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-wide/16 p2, 0x0

    const-string v2, "AppUID"

    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :try_start_0
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_5
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "hit_app_id"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    if-nez p4, :cond_6

    const-string p4, "http://www.google-analytics.com/collect"

    :cond_6
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_7

    const-string p0, "Empty path: not sending hit"

    invoke-static {p0}, Lcom/google/analytics/tracking/android/Log;->w(Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    const-string p1, "hit_url"

    invoke-virtual {v0, p1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1
    const-string p1, "hits2"

    const/4 p2, 0x0

    invoke-virtual {p5, p1, p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    iget-object p0, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->mListener:Lcom/google/analytics/tracking/android/AnalyticsStoreStateListener;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    check-cast p0, Lcom/google/analytics/tracking/android/GAServiceManager$1;

    :try_start_2
    invoke-virtual {p0, v1}, Lcom/google/analytics/tracking/android/GAServiceManager$1;->reportStoreIsEmpty(Z)V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    const-string p0, "Error storing hit"

    invoke-static {p0}, Lcom/google/analytics/tracking/android/Log;->w(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public setClock(Lcom/google/analytics/tracking/android/Clock;)V
    .locals 0

    iput-object p1, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->mClock:Lcom/google/analytics/tracking/android/Clock;

    return-void
.end method

.method setDispatcher(Lcom/google/analytics/tracking/android/Dispatcher;)V
    .locals 0

    iput-object p1, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->mDispatcher:Lcom/google/analytics/tracking/android/Dispatcher;

    return-void
.end method

.method setLastDeleteStaleHitsTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->mLastDeleteStaleHitsTime:J

    return-void
.end method
