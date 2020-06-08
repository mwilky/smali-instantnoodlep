.class public Lcom/android/settings/homepage/contextualcards/CardDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "CardDatabaseHelper.java"


# static fields
.field static sCardDatabaseHelper:Lcom/android/settings/homepage/contextualcards/CardDatabaseHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "homepage_cards.db"

    const/4 v1, 0x0

    const/4 v2, 0x5

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/settings/homepage/contextualcards/CardDatabaseHelper;
    .locals 2

    const-class v0, Lcom/android/settings/homepage/contextualcards/CardDatabaseHelper;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/settings/homepage/contextualcards/CardDatabaseHelper;->sCardDatabaseHelper:Lcom/android/settings/homepage/contextualcards/CardDatabaseHelper;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/settings/homepage/contextualcards/CardDatabaseHelper;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/android/settings/homepage/contextualcards/CardDatabaseHelper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/settings/homepage/contextualcards/CardDatabaseHelper;->sCardDatabaseHelper:Lcom/android/settings/homepage/contextualcards/CardDatabaseHelper;

    :cond_0
    sget-object p0, Lcom/android/settings/homepage/contextualcards/CardDatabaseHelper;->sCardDatabaseHelper:Lcom/android/settings/homepage/contextualcards/CardDatabaseHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    const-string p0, "CREATE TABLE cards(name TEXT NOT NULL PRIMARY KEY, type INTEGER NOT NULL, score DOUBLE NOT NULL, slice_uri TEXT, category INTEGER DEFAULT 0, localized_to_locale TEXT, package_name TEXT NOT NULL, app_version INTEGER NOT NULL, title_res_name TEXT, title_text TEXT, summary_res_name TEXT, summary_text TEXT, icon_res_name TEXT, icon_res_id INTEGER DEFAULT 0, card_action INTEGER, expire_time_ms INTEGER, support_half_width INTEGER DEFAULT 0, card_dismissed INTEGER DEFAULT 0 );"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    if-ge p2, p3, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Reconstructing DB from "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " to "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "CardDatabaseHelper"

    invoke-static {p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "DROP TABLE IF EXISTS cards"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "CREATE TABLE cards(name TEXT NOT NULL PRIMARY KEY, type INTEGER NOT NULL, score DOUBLE NOT NULL, slice_uri TEXT, category INTEGER DEFAULT 0, localized_to_locale TEXT, package_name TEXT NOT NULL, app_version INTEGER NOT NULL, title_res_name TEXT, title_text TEXT, summary_res_name TEXT, summary_text TEXT, icon_res_name TEXT, icon_res_id INTEGER DEFAULT 0, card_action INTEGER, expire_time_ms INTEGER, support_half_width INTEGER DEFAULT 0, card_dismissed INTEGER DEFAULT 0 );"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
