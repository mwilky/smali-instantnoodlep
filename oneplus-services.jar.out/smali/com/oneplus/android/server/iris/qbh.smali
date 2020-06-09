.class public Lcom/oneplus/android/server/iris/qbh;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/android/server/iris/qbh$zta;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "OpIrisWhiteListManager"

.field private static final fsa:Ljava/lang/String; = "IrisWhiteListConfig"

.field private static final gsa:J = 0x3e8L

.field private static final hsa:I = 0x0

.field private static final isa:I = 0x1

.field private static final jsa:I = 0xc8

.field private static final ksa:Ljava/lang/String; = "0"

.field private static final lsa:Ljava/lang/String; = "net.oneplus.provider.appcategoryprovider.AppCategoryContentProvider"

.field private static final msa:Ljava/lang/String; = "category_id = 7"

.field private static final nsa:Landroid/net/Uri;


# instance fields
.field private Tqa:Lcom/oneplus/android/server/iris/dma;

.field private dsa:Lcom/oneplus/config/ConfigObserver;

.field private esa:Lcom/oneplus/android/server/iris/oif;

.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/oneplus/android/server/iris/qbh;->DEBUG:Z

    const-string v0, "content://net.oneplus.provider.appcategoryprovider.AppCategoryContentProvider/app_category"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oneplus/android/server/iris/qbh;->nsa:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/oneplus/android/server/iris/ywr;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oneplus/android/server/iris/ywr;-><init>(Lcom/oneplus/android/server/iris/qbh;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oneplus/android/server/iris/qbh;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/oneplus/android/server/iris/qbh;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/oneplus/android/server/iris/dma;

    invoke-direct {v0}, Lcom/oneplus/android/server/iris/dma;-><init>()V

    iput-object v0, p0, Lcom/oneplus/android/server/iris/qbh;->Tqa:Lcom/oneplus/android/server/iris/dma;

    new-instance v0, Lcom/oneplus/android/server/iris/oif;

    iget-object v1, p0, Lcom/oneplus/android/server/iris/qbh;->Tqa:Lcom/oneplus/android/server/iris/dma;

    invoke-direct {v0, v1}, Lcom/oneplus/android/server/iris/oif;-><init>(Lcom/oneplus/android/server/iris/dma;)V

    iput-object v0, p0, Lcom/oneplus/android/server/iris/qbh;->esa:Lcom/oneplus/android/server/iris/oif;

    invoke-direct {p0, p1}, Lcom/oneplus/android/server/iris/qbh;->init(Landroid/content/Context;)V

    return-void
.end method

.method private _c(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleUpdateWhiteList cfgName : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpIrisWhiteListManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/oneplus/android/server/iris/qbh;->resolveAdditionalConfig(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    sget-boolean v0, Lcom/oneplus/android/server/iris/qbh;->DEBUG:Z

    return v0
.end method

.method private ad(Ljava/lang/String;)V
    .locals 10

    sget-boolean v0, Lcom/oneplus/android/server/iris/qbh;->DEBUG:Z

    const-string v1, "OpIrisWhiteListManager"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateGameSdr2HdrWhiteList selection = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/oneplus/android/server/iris/qbh;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/oneplus/android/server/iris/qbh;->nsa:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v7, p1

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_1
    const-string p1, "package_name"

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    sget-boolean v3, Lcom/oneplus/android/server/iris/qbh;->DEBUG:Z

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateGameSdr2HdrWhiteList pkg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v3, p0, Lcom/oneplus/android/server/iris/qbh;->Tqa:Lcom/oneplus/android/server/iris/dma;

    invoke-virtual {v3, p1}, Lcom/oneplus/android/server/iris/dma;->sa(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/oneplus/android/server/iris/qbh;->Tqa:Lcom/oneplus/android/server/iris/dma;

    const-string v4, "267-3-1"

    invoke-virtual {v3, p1, v4}, Lcom/oneplus/android/server/iris/dma;->gwm(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/oneplus/android/server/iris/qbh;->Tqa:Lcom/oneplus/android/server/iris/dma;

    const-string v4, "0"

    invoke-virtual {v3, p1, v4}, Lcom/oneplus/android/server/iris/dma;->ibl(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_3

    const/16 p1, 0xc8

    if-lt v2, p1, :cond_1

    :cond_3
    if-eqz v0, :cond_4

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_1
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_4

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_4
    return-void

    :goto_1
    if-eqz v0, :cond_5

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_5
    throw p0
.end method

.method private bvj(Lorg/json/JSONArray;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/android/server/iris/qbh;->resolveConfigFromJSON(Lorg/json/JSONArray;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 2

    const-string v0, "OpIrisWhiteListManager"

    const-string v1, "init"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x1100006

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p1

    iget-object p0, p0, Lcom/oneplus/android/server/iris/qbh;->esa:Lcom/oneplus/android/server/iris/oif;

    const-string v0, "UTF-8"

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/android/server/iris/oif;->zta(Ljava/io/InputStream;Ljava/lang/String;)V

    return-void
.end method

.method private resolveAdditionalConfig(Ljava/lang/String;)V
    .locals 3

    sget-boolean v0, Lcom/oneplus/android/server/iris/qbh;->DEBUG:Z

    const-string v1, "OpIrisWhiteListManager"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resolveAdditionalConfig: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/oneplus/android/server/iris/qbh;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/oneplus/config/ConfigGrabber;

    invoke-direct {v1, v0, p1}, Lcom/oneplus/config/ConfigGrabber;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/oneplus/config/ConfigGrabber;->grabConfig()Lorg/json/JSONArray;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/oneplus/android/server/iris/qbh;->resolveConfigFromJSON(Lorg/json/JSONArray;)V

    goto :goto_0

    :cond_1
    const-string p0, "resolveAdditionalConfig: mContext is null"

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private resolveConfigFromJSON(Lorg/json/JSONArray;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "OpIrisWhiteListManager"

    const-string v3, "resolveConfigFromJSON"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_0

    const-string v0, "resolveConfigFromJSON: jsonArray is null"

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v4, 0x0

    :goto_0
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_9

    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "version"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "online version: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " local version: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/oneplus/android/server/iris/qbh;->Tqa:Lcom/oneplus/android/server/iris/dma;

    invoke-virtual {v9}, Lcom/oneplus/android/server/iris/dma;->getVersion()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, v0, Lcom/oneplus/android/server/iris/qbh;->Tqa:Lcom/oneplus/android/server/iris/dma;

    invoke-virtual {v8}, Lcom/oneplus/android/server/iris/dma;->getVersion()J

    move-result-wide v8

    cmp-long v8, v8, v6

    if-ltz v8, :cond_1

    return-void

    :cond_1
    iget-object v8, v0, Lcom/oneplus/android/server/iris/qbh;->Tqa:Lcom/oneplus/android/server/iris/dma;

    invoke-virtual {v8}, Lcom/oneplus/android/server/iris/dma;->Qf()V

    iget-object v8, v0, Lcom/oneplus/android/server/iris/qbh;->Tqa:Lcom/oneplus/android/server/iris/dma;

    invoke-virtual {v8, v6, v7}, Lcom/oneplus/android/server/iris/dma;->lqr(J)V

    const-string v6, "url"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, Lcom/oneplus/android/server/iris/qbh;->Tqa:Lcom/oneplus/android/server/iris/dma;

    invoke-virtual {v7, v6}, Lcom/oneplus/android/server/iris/dma;->setUrl(Ljava/lang/String;)V

    sget-boolean v7, Lcom/oneplus/android/server/iris/qbh;->DEBUG:Z

    if-eqz v7, :cond_2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sdr2hdr url: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-string v6, "sdr2hdr"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    const/4 v7, 0x0

    :goto_1
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v8
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v9, " appType: "

    const-string v10, " type: "

    const-string v11, "appType"

    const-string v12, "type"

    const-string v13, "pkg"

    if-ge v7, v8, :cond_4

    :try_start_1
    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    invoke-virtual {v8, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sget-boolean v11, Lcom/oneplus/android/server/iris/qbh;->DEBUG:Z

    if-eqz v11, :cond_3

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "sdr2hdr pkg: "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v9, v0, Lcom/oneplus/android/server/iris/qbh;->Tqa:Lcom/oneplus/android/server/iris/dma;

    invoke-virtual {v9, v13}, Lcom/oneplus/android/server/iris/dma;->sa(Ljava/lang/String;)V

    iget-object v9, v0, Lcom/oneplus/android/server/iris/qbh;->Tqa:Lcom/oneplus/android/server/iris/dma;

    invoke-virtual {v9, v13, v12}, Lcom/oneplus/android/server/iris/dma;->gwm(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, v0, Lcom/oneplus/android/server/iris/qbh;->Tqa:Lcom/oneplus/android/server/iris/dma;

    invoke-virtual {v9, v13, v8}, Lcom/oneplus/android/server/iris/dma;->ibl(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_4
    const-string v6, "memcPackage"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    const/4 v7, 0x0

    :goto_2
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v7, v8, :cond_6

    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    invoke-virtual {v8, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "ultimate"

    invoke-virtual {v8, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sget-boolean v16, Lcom/oneplus/android/server/iris/qbh;->DEBUG:Z

    if-eqz v16, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "memc pkg: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ultimate: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v1, v0, Lcom/oneplus/android/server/iris/qbh;->Tqa:Lcom/oneplus/android/server/iris/dma;

    invoke-virtual {v1, v14}, Lcom/oneplus/android/server/iris/dma;->ra(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/oneplus/android/server/iris/qbh;->Tqa:Lcom/oneplus/android/server/iris/dma;

    invoke-virtual {v1, v14, v8}, Lcom/oneplus/android/server/iris/dma;->oif(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/oneplus/android/server/iris/qbh;->Tqa:Lcom/oneplus/android/server/iris/dma;

    invoke-virtual {v1, v14, v15}, Lcom/oneplus/android/server/iris/dma;->bvj(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v1, p1

    goto :goto_2

    :cond_6
    const-string v1, "memcActivity"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v3, 0x0

    :goto_3
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v3, v5, :cond_8

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-boolean v7, Lcom/oneplus/android/server/iris/qbh;->DEBUG:Z

    if-eqz v7, :cond_7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "memc activity: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iget-object v7, v0, Lcom/oneplus/android/server/iris/qbh;->Tqa:Lcom/oneplus/android/server/iris/dma;

    invoke-virtual {v7, v6}, Lcom/oneplus/android/server/iris/dma;->qa(Ljava/lang/String;)V

    iget-object v7, v0, Lcom/oneplus/android/server/iris/qbh;->Tqa:Lcom/oneplus/android/server/iris/dma;

    invoke-virtual {v7, v6, v5}, Lcom/oneplus/android/server/iris/dma;->qbh(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_8
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v1, p1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v1, "resolveConfigFromJSON error:"

    goto :goto_4

    :catch_1
    move-exception v0

    const-string v1, "resolveConfigFromJSON JSONException:"

    :goto_4
    invoke-static {v2, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_9
    return-void
.end method

.method private vm()V
    .locals 4

    const-string v0, "OpIrisWhiteListManager"

    const-string v1, "fetchConfig"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/android/server/iris/qbh;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "config_name"

    const-string v3, "IrisWhiteListConfig"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object p0, p0, Lcom/oneplus/android/server/iris/qbh;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method static synthetic zta(Lcom/oneplus/android/server/iris/qbh;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/iris/qbh;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic zta(Lcom/oneplus/android/server/iris/qbh;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/android/server/iris/qbh;->_c(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic zta(Lcom/oneplus/android/server/iris/qbh;Lorg/json/JSONArray;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/android/server/iris/qbh;->bvj(Lorg/json/JSONArray;)V

    return-void
.end method


# virtual methods
.method public Xf()Lcom/oneplus/android/server/iris/dma;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/iris/qbh;->Tqa:Lcom/oneplus/android/server/iris/dma;

    return-object p0
.end method

.method public onBootComplete()V
    .locals 5

    const-string v0, "OpIrisWhiteListManager"

    const-string v1, "onBootComplete"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/oneplus/config/ConfigObserver;

    iget-object v1, p0, Lcom/oneplus/android/server/iris/qbh;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/oneplus/android/server/iris/qbh;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/oneplus/android/server/iris/qbh$zta;

    invoke-direct {v3, p0}, Lcom/oneplus/android/server/iris/qbh$zta;-><init>(Lcom/oneplus/android/server/iris/qbh;)V

    const-string v4, "IrisWhiteListConfig"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oneplus/android/server/iris/qbh;->dsa:Lcom/oneplus/config/ConfigObserver;

    iget-object v0, p0, Lcom/oneplus/android/server/iris/qbh;->dsa:Lcom/oneplus/config/ConfigObserver;

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigObserver;->register()V

    invoke-direct {p0}, Lcom/oneplus/android/server/iris/qbh;->vm()V

    return-void
.end method
