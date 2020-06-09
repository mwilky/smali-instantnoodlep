.class public Lcom/android/server/vdw;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/server/OnePlusUtil$zta$you;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/vdw$sis;,
        Lcom/android/server/vdw$rtg;,
        Lcom/android/server/vdw$tsu;,
        Lcom/android/server/vdw$cno;,
        Lcom/android/server/vdw$igw;,
        Lcom/android/server/vdw$bio;,
        Lcom/android/server/vdw$kth;,
        Lcom/android/server/vdw$zta;,
        Lcom/android/server/vdw$ssp;,
        Lcom/android/server/vdw$you;
    }
.end annotation


# static fields
.field private static final Ah:Landroid/net/Uri;

.field private static final Bh:Ljava/lang/String; = "smart_fiveg"

.field private static final CMD_FETCH_CONFIG:I = 0x1

.field private static final Ch:I = 0x1

.field private static final DBG:Z

.field private static final Dh:Ljava/lang/String; = "Whitelist5GConfig"

.field private static final Eh:Landroid/net/Uri;

.field private static final Fh:Ljava/lang/String; = "WhitelistFastOutputConfig"

.field private static final Gh:Ljava/lang/String; = "WhitelistGameDolbyConfig"

.field private static final Hh:Ljava/lang/String; = "WhitelistGameDolbyPackage"

.field private static final Ih:Ljava/lang/String; = "WhitelistImageQualityConfig"

.field private static final Jh:Ljava/lang/Integer;

.field private static final Kh:Ljava/lang/String; = "oneplus.action.front_package_changed"

.field private static final Lh:Ljava/lang/String; = "com.heytap.speechassist"

.field private static final Mh:Ljava/lang/String; = "driving_mode_state"

.field public static final NODE_PATH:Ljava/lang/String; = "/sys/module/memplus_core/parameters/memory_plus_wake_memex"

.field private static final Nh:Landroid/net/Uri;

.field private static final Oh:I = 0x0

.field private static final Ph:I = 0x1

.field private static final Qh:I = 0x2

.field private static final Rh:Ljava/lang/String; = "smart_fiveg_whitelist"

.field private static final Sh:Landroid/net/Uri;

.field private static final TAG:Ljava/lang/String; = "CommonFrontMonitor"

.field private static final Th:I = 0x5

.field private static final Uh:Ljava/lang/String; = "BlacklistVideoEnhancerConfig"

.field private static final VALUE_OFF:Ljava/lang/String; = "0"

.field private static final VALUE_ON:Ljava/lang/String; = "1"

.field private static final Vh:Ljava/lang/String; = "LMKD_TUNE"

.field private static final Wh:Z

.field private static sInstance:Lcom/android/server/vdw; = null

.field private static final vh:I = 0x2

.field private static final wh:I = 0x3

.field private static final xh:I = 0x4

.field private static final yh:Ljava/lang/String; = "op_video_enhancer"

.field private static final zh:Ljava/lang/String; = "com.oneplus.retailmode"


# instance fields
.field private Tg:Landroid/database/ContentObserver;

.field private Ug:Z

.field private Vg:Z

.field private Wg:Ljava/lang/Object;

.field private Xg:Lcom/oneplus/config/ConfigObserver;

.field private Yg:Landroid/database/ContentObserver;

.field private Zg:Z

.field private _g:Lcom/oneplus/config/ConfigObserver;

.field private ah:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private bh:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ch:Z

.field private dh:Lcom/oneplus/config/ConfigObserver;

.field private eh:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private fh:Z

.field private gh:Lcom/oneplus/config/ConfigObserver;

.field private hh:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ih:Z

.field private jh:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private kh:Landroid/database/ContentObserver;

.field private lh:Landroid/database/ContentObserver;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private mWhitelist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mh:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private nh:Lcom/oneplus/config/ConfigObserver;

.field private oh:Ljava/lang/Object;

.field public ph:Z

.field public qh:J

.field private rh:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private sh:Lcom/oneplus/config/ConfigObserver;

.field private th:Z

.field private uh:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/vdw;->DBG:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/vdw;->sInstance:Lcom/android/server/vdw;

    const-string v0, "op_video_enhancer"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/vdw;->Ah:Landroid/net/Uri;

    const-string v0, "smart_fiveg"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/vdw;->Eh:Landroid/net/Uri;

    const/16 v0, 0x65

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/android/server/vdw;->Jh:Ljava/lang/Integer;

    const-string v0, "driving_mode_state"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/vdw;->Nh:Landroid/net/Uri;

    const-string v0, "smart_fiveg_whitelist"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/vdw;->Sh:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x14f

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/vdw;->Wh:Z

    new-instance v0, Lcom/android/server/vdw;

    invoke-direct {v0}, Lcom/android/server/vdw;-><init>()V

    sput-object v0, Lcom/android/server/vdw;->sInstance:Lcom/android/server/vdw;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/vdw;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/vdw;->Ug:Z

    iput-boolean v1, p0, Lcom/android/server/vdw;->Vg:Z

    iput-object v0, p0, Lcom/android/server/vdw;->Wg:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/vdw;->mWhitelist:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/android/server/vdw;->Zg:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/vdw;->ah:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/vdw;->bh:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/android/server/vdw;->ch:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/vdw;->eh:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/android/server/vdw;->fh:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/vdw;->hh:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/android/server/vdw;->ih:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/vdw;->jh:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/vdw;->mh:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/vdw;->oh:Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/vdw;->ph:Z

    const-wide/16 v2, 0xc00

    iput-wide v2, p0, Lcom/android/server/vdw;->qh:J

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/vdw;->rh:Ljava/util/HashSet;

    iput-boolean v1, p0, Lcom/android/server/vdw;->th:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/vdw;->uh:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/vdw;->mLock:Ljava/lang/Object;

    new-instance v0, Lcom/android/server/les;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/les;-><init>(Lcom/android/server/vdw;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/vdw;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private Am()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/vdw;->oh:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean p0, p0, Lcom/android/server/vdw;->ph:Z

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private declared-synchronized Bm()V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/vdw;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "smart_fiveg_whitelist"

    const/4 v2, -0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/vdw;->mh:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    iget-object v5, p0, Lcom/android/server/vdw;->mh:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    sget-boolean v1, Lcom/android/server/vdw;->DBG:Z

    if-eqz v1, :cond_1

    const-string v1, "CommonFrontMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSmart5GWhitelist = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/vdw;->mh:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  whitelistConfig="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic access$200()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/vdw;->Wh:Z

    return v0
.end method

.method static synthetic access$500()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/vdw;->DBG:Z

    return v0
.end method

.method private cno(Lorg/json/JSONArray;)V
    .locals 7

    const-string v0, "resolveVEConfigFromJSON: mVideoEnhancerBlacklist = "

    const-string v1, "CommonFrontMonitor"

    if-nez p1, :cond_0

    const-string p0, "resolveVEConfigFromJSON: jsonArray is null"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/server/vdw;->uh:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_2

    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "name"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/vdw;->uh:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean v5, Lcom/android/server/vdw;->DBG:Z

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "update VE config add blacklist pkg: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-boolean p1, p0, Lcom/android/server/vdw;->Ug:Z

    if-nez p1, :cond_3

    iput-boolean v3, p0, Lcom/android/server/vdw;->Ug:Z

    sget-boolean p1, Lcom/android/server/vdw;->DBG:Z

    if-eqz p1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/vdw;->uh:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    :try_start_1
    const-string v2, "resolveVEConfigFromJSON error:"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-boolean p1, p0, Lcom/android/server/vdw;->Ug:Z

    if-nez p1, :cond_3

    iput-boolean v3, p0, Lcom/android/server/vdw;->Ug:Z

    sget-boolean p1, Lcom/android/server/vdw;->DBG:Z

    if-eqz p1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1

    :catch_1
    move-exception p1

    :try_start_2
    const-string v2, "resolveVEConfigFromJSON JSONException:"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-boolean p1, p0, Lcom/android/server/vdw;->Ug:Z

    if-nez p1, :cond_3

    iput-boolean v3, p0, Lcom/android/server/vdw;->Ug:Z

    sget-boolean p1, Lcom/android/server/vdw;->DBG:Z

    if-eqz p1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1

    :cond_3
    :goto_2
    return-void

    :goto_3
    iget-boolean v2, p0, Lcom/android/server/vdw;->Ug:Z

    if-nez v2, :cond_4

    iput-boolean v3, p0, Lcom/android/server/vdw;->Ug:Z

    sget-boolean v2, Lcom/android/server/vdw;->DBG:Z

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/vdw;->uh:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    throw p1
.end method

.method private static getIExtTelephony()Ljava/lang/Object;
    .locals 9

    sget-boolean v0, Lcom/android/server/vdw;->DBG:Z

    const-string v1, "CommonFrontMonitor"

    if-eqz v0, :cond_0

    const-string v0, "getIExtTelephony()"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    const-string v2, "extphone"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "org.codeaurora.internal.IExtTelephony$Stub"

    :try_start_1
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "asInterface"

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Landroid/os/IBinder;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v2, v4, v8

    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getIExtTelephony() exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method public static getInstance()Lcom/android/server/vdw;
    .locals 1

    sget-object v0, Lcom/android/server/vdw;->sInstance:Lcom/android/server/vdw;

    return-object v0
.end method

.method private ib(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/vdw;->oh:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/vdw;->rh:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private oxb(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    const-string p0, "IO close failed : path="

    const-string v0, ",ex->"

    const-string v1, "CommonFrontMonitor"

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception : file not exits :"

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/io/FileOutputStream;->write([B)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "echo path = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    const/4 v2, 0x1

    goto :goto_2

    :catch_0
    move-exception p2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1

    :catchall_0
    move-exception p2

    move-object v3, v4

    goto :goto_3

    :catch_1
    move-exception p2

    move-object v3, v4

    goto :goto_0

    :catchall_1
    move-exception p2

    goto :goto_3

    :catch_2
    move-exception p2

    :goto_0
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "echo failed : path="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v3, :cond_1

    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    :catch_3
    move-exception p2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_2
    return v2

    :goto_3
    if-eqz v3, :cond_2

    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    :catch_4
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_4
    throw p2
.end method

.method private resolveAdditionalConfig(Ljava/lang/String;)V
    .locals 3

    sget-boolean v0, Lcom/android/server/vdw;->DBG:Z

    const-string v1, "CommonFrontMonitor"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resolveAdditionalConfig: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/vdw;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_6

    new-instance v1, Lcom/oneplus/config/ConfigGrabber;

    invoke-direct {v1, v0, p1}, Lcom/oneplus/config/ConfigGrabber;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/oneplus/config/ConfigGrabber;->grabConfig()Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_7

    const-string v1, "BlacklistVideoEnhancerConfig"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v0}, Lcom/android/server/vdw;->cno(Lorg/json/JSONArray;)V

    goto :goto_0

    :cond_1
    const-string v1, "Whitelist5GConfig"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, v0}, Lcom/android/server/vdw;->you(Lorg/json/JSONArray;)V

    goto :goto_0

    :cond_2
    const-string v1, "WhitelistFastOutputConfig"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0, v0}, Lcom/android/server/vdw;->tsu(Lorg/json/JSONArray;)V

    goto :goto_0

    :cond_3
    const-string v1, "WhitelistGameDolbyConfig"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0, v0}, Lcom/android/server/vdw;->rtg(Lorg/json/JSONArray;)V

    goto :goto_0

    :cond_4
    const-string v1, "WhitelistImageQualityConfig"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-direct {p0, v0}, Lcom/android/server/vdw;->ssp(Lorg/json/JSONArray;)V

    goto :goto_0

    :cond_5
    const-string v1, "LMKD_TUNE"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-direct {p0, v0}, Lcom/android/server/vdw;->sis(Lorg/json/JSONArray;)V

    goto :goto_0

    :cond_6
    const-string p0, "resolveAdditionalConfig: mContext is null"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_0
    return-void
.end method

.method static synthetic rtg(Lcom/android/server/vdw;Lorg/json/JSONArray;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/vdw;->tsu(Lorg/json/JSONArray;)V

    return-void
.end method

.method private rtg(Lorg/json/JSONArray;)V
    .locals 7

    const-string v0, "resolveGameDolbyConfigFromJSON: mWhitelist = "

    const-string v1, "CommonFrontMonitor"

    if-nez p1, :cond_0

    const-string p0, "resolveGameDolbyConfigFromJSON: jsonArray is null"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/server/vdw;->eh:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_3

    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "name"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/vdw;->eh:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/server/vdw;->eh:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/android/server/vdw;->mAudioManager:Landroid/media/AudioManager;

    const-string v6, "WhitelistGameDolbyPackage"

    invoke-virtual {v5, v6, v4}, Landroid/media/AudioManager;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    sget-boolean v5, Lcom/android/server/vdw;->DBG:Z

    if-eqz v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "update FastOutput config add whitelist pkg: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    iget-boolean p1, p0, Lcom/android/server/vdw;->fh:Z

    if-nez p1, :cond_4

    iput-boolean v3, p0, Lcom/android/server/vdw;->fh:Z

    sget-boolean p1, Lcom/android/server/vdw;->DBG:Z

    if-eqz p1, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/vdw;->mWhitelist:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    :try_start_1
    const-string v2, "resolveGameDolbyConfigFromJSON error:"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-boolean p1, p0, Lcom/android/server/vdw;->fh:Z

    if-nez p1, :cond_4

    iput-boolean v3, p0, Lcom/android/server/vdw;->fh:Z

    sget-boolean p1, Lcom/android/server/vdw;->DBG:Z

    if-eqz p1, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1

    :catch_1
    move-exception p1

    :try_start_2
    const-string v2, "resolveGameDolbyConfigFromJSON JSONException:"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-boolean p1, p0, Lcom/android/server/vdw;->fh:Z

    if-nez p1, :cond_4

    iput-boolean v3, p0, Lcom/android/server/vdw;->fh:Z

    sget-boolean p1, Lcom/android/server/vdw;->DBG:Z

    if-eqz p1, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1

    :cond_4
    :goto_2
    return-void

    :goto_3
    iget-boolean v2, p0, Lcom/android/server/vdw;->fh:Z

    if-nez v2, :cond_5

    iput-boolean v3, p0, Lcom/android/server/vdw;->fh:Z

    sget-boolean v2, Lcom/android/server/vdw;->DBG:Z

    if-eqz v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/vdw;->mWhitelist:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    throw p1
.end method

.method static synthetic sis(Lcom/android/server/vdw;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/server/vdw;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic sis(Lcom/android/server/vdw;Lorg/json/JSONArray;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/vdw;->sis(Lorg/json/JSONArray;)V

    return-void
.end method

.method private sis(Lorg/json/JSONArray;)V
    .locals 7

    if-nez p1, :cond_0

    const-string p0, "CommonFrontMonitor"

    const-string p1, "[OnlineConfig] resolveConfigFromJSON jsonArray is null, return"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_6

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "enableProject"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/vdw;->oh:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/vdw;->ph:Z

    monitor-exit v3

    goto :goto_2

    :catchall_0
    move-exception p1

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1

    :cond_1
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "memThreshold"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/vdw;->oh:Ljava/lang/Object;

    monitor-enter v3
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :try_start_3
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/vdw;->qh:J

    monitor-exit v3

    goto :goto_2

    :catchall_1
    move-exception p1

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p1

    :cond_2
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "mSpecialLMKDList"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "mSpecialLMKDList"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/server/vdw;->oh:Ljava/lang/Object;

    monitor-enter v3
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :try_start_5
    const-string v4, "value"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/vdw;->rh:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->clear()V

    move v4, v0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_4

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/vdw;->rh:Ljava/util/HashSet;

    invoke-virtual {v6, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/android/server/vdw;->rh:Ljava/util/HashSet;

    invoke-virtual {v6, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    monitor-exit v3

    goto :goto_2

    :catchall_2
    move-exception p1

    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    throw p1
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :cond_5
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_3
    const-string v0, "[OnlineConfig] resolveConfigFromJSON mSpecialLMKDList:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/vdw;->rh:Ljava/util/HashSet;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " mEnableProject = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/vdw;->ph:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " mMemAvailableThreshold = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/android/server/vdw;->qh:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CommonFrontMonitor"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :catchall_3
    move-exception p1

    goto :goto_5

    :catch_0
    move-exception p1

    :try_start_7
    const-string v0, "CommonFrontMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnlineConfig] Exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_3

    :catch_1
    move-exception p1

    :try_start_8
    const-string v0, "CommonFrontMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnlineConfig] JSONException:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_3

    :goto_4
    return-void

    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[OnlineConfig] resolveConfigFromJSON mSpecialLMKDList:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/vdw;->rh:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mEnableProject = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/vdw;->ph:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mMemAvailableThreshold = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/vdw;->qh:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CommonFrontMonitor"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    throw p1
.end method

.method static synthetic ssp(Lcom/android/server/vdw;Lorg/json/JSONArray;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/vdw;->rtg(Lorg/json/JSONArray;)V

    return-void
.end method

.method private ssp(Lorg/json/JSONArray;)V
    .locals 7

    const-string v0, "resolveImageQualityConfigFromJSON: mWhitelist = "

    const-string v1, "CommonFrontMonitor"

    if-nez p1, :cond_0

    const-string p0, "resolveImageQualityConfigFromJSON: jsonArray is null"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/server/vdw;->hh:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_3

    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "name"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "value"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/vdw;->hh:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/android/server/vdw;->hh:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v6, p0, Lcom/android/server/vdw;->jh:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v6, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v4, Lcom/android/server/vdw;->DBG:Z

    if-eqz v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "update Image Quality add whitelist pkg: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    iget-boolean p1, p0, Lcom/android/server/vdw;->ih:Z

    if-nez p1, :cond_4

    iput-boolean v3, p0, Lcom/android/server/vdw;->ih:Z

    sget-boolean p1, Lcom/android/server/vdw;->DBG:Z

    if-eqz p1, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/vdw;->hh:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    :try_start_1
    const-string v2, "resolveImageQualityConfigFromJSON error:"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-boolean p1, p0, Lcom/android/server/vdw;->ih:Z

    if-nez p1, :cond_4

    iput-boolean v3, p0, Lcom/android/server/vdw;->ih:Z

    sget-boolean p1, Lcom/android/server/vdw;->DBG:Z

    if-eqz p1, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1

    :catch_1
    move-exception p1

    :try_start_2
    const-string v2, "resolveImageQualityConfigFromJSON JSONException:"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-boolean p1, p0, Lcom/android/server/vdw;->ih:Z

    if-nez p1, :cond_4

    iput-boolean v3, p0, Lcom/android/server/vdw;->ih:Z

    sget-boolean p1, Lcom/android/server/vdw;->DBG:Z

    if-eqz p1, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1

    :cond_4
    :goto_2
    return-void

    :goto_3
    iget-boolean v2, p0, Lcom/android/server/vdw;->ih:Z

    if-nez v2, :cond_5

    iput-boolean v3, p0, Lcom/android/server/vdw;->ih:Z

    sget-boolean v2, Lcom/android/server/vdw;->DBG:Z

    if-eqz v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/vdw;->hh:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    throw p1
.end method

.method private ssp(ZI)V
    .locals 8

    const-string v0, "CommonFrontMonitor"

    :try_start_0
    invoke-static {}, Lcom/android/server/vdw;->getIExtTelephony()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/vdw;->Wg:Ljava/lang/Object;

    sget-boolean v1, Lcom/android/server/vdw;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "got sIExtTelephony: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/vdw;->Wg:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/server/vdw;->Wg:Ljava/lang/Object;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/vdw;->Wg:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "generalSetter"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Landroid/os/Bundle;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v4, "enable"

    invoke-virtual {v2, v4, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "type"

    invoke-virtual {v2, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/android/server/vdw;->Wg:Ljava/lang/Object;

    new-array p2, v3, [Ljava/lang/Object;

    const-string v3, "setEndcStateExt"

    aput-object v3, p2, v6

    aput-object v2, p2, v7

    invoke-virtual {v1, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "exception : "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    sget-boolean p1, Lcom/android/server/vdw;->DBG:Z

    if-eqz p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "switch5G mIs5GMode = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/vdw;->Vg:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method static synthetic tsu(Lcom/android/server/vdw;Lorg/json/JSONArray;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/vdw;->cno(Lorg/json/JSONArray;)V

    return-void
.end method

.method private tsu(Lorg/json/JSONArray;)V
    .locals 7

    const-string v0, "resolveFastOutputConfigFromJSON: mWhitelist = "

    const-string v1, "CommonFrontMonitor"

    if-nez p1, :cond_0

    const-string p0, "resolveFastOutputConfigFromJSON: jsonArray is null"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/server/vdw;->ah:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_3

    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "name"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/vdw;->bh:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/server/vdw;->bh:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/android/server/vdw;->mAudioManager:Landroid/media/AudioManager;

    const-string v6, "WhitelistFastOutputConfig"

    invoke-virtual {v5, v6, v4}, Landroid/media/AudioManager;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v5, p0, Lcom/android/server/vdw;->ah:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean v5, Lcom/android/server/vdw;->DBG:Z

    if-eqz v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "update FastOutput config add whitelist pkg: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    iget-boolean p1, p0, Lcom/android/server/vdw;->ch:Z

    if-nez p1, :cond_4

    iput-boolean v3, p0, Lcom/android/server/vdw;->ch:Z

    sget-boolean p1, Lcom/android/server/vdw;->DBG:Z

    if-eqz p1, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/vdw;->mWhitelist:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    :try_start_1
    const-string v2, "resolveFastOutputConfigFromJSON error:"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-boolean p1, p0, Lcom/android/server/vdw;->ch:Z

    if-nez p1, :cond_4

    iput-boolean v3, p0, Lcom/android/server/vdw;->ch:Z

    sget-boolean p1, Lcom/android/server/vdw;->DBG:Z

    if-eqz p1, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1

    :catch_1
    move-exception p1

    :try_start_2
    const-string v2, "resolveFastOutputConfigFromJSON JSONException:"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-boolean p1, p0, Lcom/android/server/vdw;->ch:Z

    if-nez p1, :cond_4

    iput-boolean v3, p0, Lcom/android/server/vdw;->ch:Z

    sget-boolean p1, Lcom/android/server/vdw;->DBG:Z

    if-eqz p1, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1

    :cond_4
    :goto_2
    return-void

    :goto_3
    iget-boolean v2, p0, Lcom/android/server/vdw;->ch:Z

    if-nez v2, :cond_5

    iput-boolean v3, p0, Lcom/android/server/vdw;->ch:Z

    sget-boolean v2, Lcom/android/server/vdw;->DBG:Z

    if-eqz v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/vdw;->mWhitelist:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    throw p1
.end method

.method private vm()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/vdw;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/vdw;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    new-array v3, v1, [I

    const/16 v4, 0xd6

    const/4 v5, 0x0

    aput v4, v3, v5

    invoke-static {v3}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/server/vdw;->Ug:Z

    if-nez v3, :cond_0

    const-string v3, "CONFIG_NAME_VIDEO_ENHANCEMENT"

    const-string v4, "BlacklistVideoEnhancerConfig"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-array v3, v1, [I

    const/16 v4, 0x82

    aput v4, v3, v5

    invoke-static {v3}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/android/server/vdw;->Zg:Z

    if-nez v3, :cond_1

    const-string v3, "CONFIG_NAME_SMART5G"

    const-string v4, "Whitelist5GConfig"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    new-array v3, v1, [I

    const/16 v4, 0x114

    aput v4, v3, v5

    invoke-static {v3}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/server/vdw;->ch:Z

    if-nez v3, :cond_2

    const-string v3, "CONFIG_NAME_FASTOUTPUT"

    const-string v4, "WhitelistFastOutputConfig"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    new-array v1, v1, [I

    const/16 v3, 0x138

    aput v3, v1, v5

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/server/vdw;->fh:Z

    if-nez v1, :cond_3

    const-string v1, "CONFIG_NAME_GAME_DOLBY"

    const-string v3, "WhitelistGameDolbyConfig"

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    sget-boolean v1, Lcom/android/server/vdw;->Wh:Z

    if-eqz v1, :cond_4

    const-string v1, "CONFIG_NAME_LMKD_WATERMARK"

    const-string v3, "LMKD_TUNE"

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v0, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object p0, p0, Lcom/android/server/vdw;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_5
    sget-boolean p0, Lcom/android/server/vdw;->DBG:Z

    if-eqz p0, :cond_6

    const-string p0, "CommonFrontMonitor"

    const-string v0, "fetchConfig: skip to fetch"

    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_0
    return-void
.end method

.method private wm()Z
    .locals 3

    iget-object p0, p0, Lcom/android/server/vdw;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "driving_mode_state"

    const/4 v2, -0x2

    invoke-static {p0, v1, v0, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-lez p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private xm()J
    .locals 3

    iget-object v0, p0, Lcom/android/server/vdw;->oh:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lcom/android/server/vdw;->qh:J

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private ym()Z
    .locals 4

    iget-object p0, p0, Lcom/android/server/vdw;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "smart_fiveg"

    const/4 v1, -0x2

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "1"

    if-nez p0, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/16 v3, 0x9d

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object p0, v0

    :cond_0
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic you(Lcom/android/server/vdw;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/server/vdw;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic you(Lcom/android/server/vdw;Lorg/json/JSONArray;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/vdw;->you(Lorg/json/JSONArray;)V

    return-void
.end method

.method private you(Lorg/json/JSONArray;)V
    .locals 7

    const-string v0, "resolve5GConfigFromJSON: mWhitelist = "

    const-string v1, "CommonFrontMonitor"

    if-nez p1, :cond_0

    const-string p0, "resolve5GConfigFromJSON: jsonArray is null"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/server/vdw;->mWhitelist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_2

    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "name"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/vdw;->mWhitelist:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean v5, Lcom/android/server/vdw;->DBG:Z

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "update 5G config add whitelist pkg: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-boolean p1, p0, Lcom/android/server/vdw;->Zg:Z

    if-nez p1, :cond_3

    iput-boolean v3, p0, Lcom/android/server/vdw;->Zg:Z

    sget-boolean p1, Lcom/android/server/vdw;->DBG:Z

    if-eqz p1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/vdw;->mWhitelist:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    :try_start_1
    const-string v2, "resolve5GConfigFromJSON error:"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-boolean p1, p0, Lcom/android/server/vdw;->Zg:Z

    if-nez p1, :cond_3

    iput-boolean v3, p0, Lcom/android/server/vdw;->Zg:Z

    sget-boolean p1, Lcom/android/server/vdw;->DBG:Z

    if-eqz p1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1

    :catch_1
    move-exception p1

    :try_start_2
    const-string v2, "resolve5GConfigFromJSON JSONException:"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-boolean p1, p0, Lcom/android/server/vdw;->Zg:Z

    if-nez p1, :cond_3

    iput-boolean v3, p0, Lcom/android/server/vdw;->Zg:Z

    sget-boolean p1, Lcom/android/server/vdw;->DBG:Z

    if-eqz p1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1

    :cond_3
    :goto_2
    return-void

    :goto_3
    iget-boolean v2, p0, Lcom/android/server/vdw;->Zg:Z

    if-nez v2, :cond_4

    iput-boolean v3, p0, Lcom/android/server/vdw;->Zg:Z

    sget-boolean v2, Lcom/android/server/vdw;->DBG:Z

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/vdw;->mWhitelist:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    throw p1
.end method

.method private zm()Z
    .locals 2

    iget-object p0, p0, Lcom/android/server/vdw;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "op_video_enhancer"

    const/4 v1, -0x2

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic zta(Lcom/android/server/vdw;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/vdw;->Bm()V

    return-void
.end method

.method static synthetic zta(Lcom/android/server/vdw;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/vdw;->resolveAdditionalConfig(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic zta(Lcom/android/server/vdw;Lorg/json/JSONArray;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/vdw;->ssp(Lorg/json/JSONArray;)V

    return-void
.end method


# virtual methods
.method bvj(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const-string p0, "true"

    goto :goto_0

    :cond_0
    const-string p0, "false"

    :goto_0
    const-string p1, "persist.sys.oem.vendor.media.vpp.enable"

    invoke-static {p1, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public frontPackageChanged(Ljava/lang/String;IILjava/lang/String;II)V
    .locals 2

    iget-object p2, p0, Lcom/android/server/vdw;->mLock:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    sget-boolean p3, Lcom/android/server/vdw;->Wh:Z

    const/4 p5, 0x0

    const/4 p6, 0x1

    if-eqz p3, :cond_2

    invoke-direct {p0}, Lcom/android/server/vdw;->Am()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-direct {p0, p1}, Lcom/android/server/vdw;->ib(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_0

    iget-boolean p3, p0, Lcom/android/server/vdw;->th:Z

    if-nez p3, :cond_0

    const-string p3, "/sys/module/memplus_core/parameters/memory_plus_wake_memex"

    invoke-direct {p0}, Lcom/android/server/vdw;->xm()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p3, v0}, Lcom/android/server/vdw;->oxb(Ljava/lang/String;Ljava/lang/String;)Z

    iput-boolean p6, p0, Lcom/android/server/vdw;->th:Z

    goto :goto_0

    :cond_0
    iget-boolean p3, p0, Lcom/android/server/vdw;->th:Z

    if-eqz p3, :cond_1

    const-string p3, "/sys/module/memplus_core/parameters/memory_plus_wake_memex"

    invoke-static {p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p3, v0}, Lcom/android/server/vdw;->oxb(Ljava/lang/String;Ljava/lang/String;)Z

    iput-boolean p5, p0, Lcom/android/server/vdw;->th:Z

    :cond_1
    :goto_0
    sget-boolean p3, Lcom/android/server/vdw;->DBG:Z

    if-eqz p3, :cond_2

    const-string p3, "CommonFrontMonitor"

    const-string v0, "change memex"

    invoke-static {p3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-direct {p0}, Lcom/android/server/vdw;->wm()Z

    move-result p3

    if-eqz p3, :cond_3

    if-eqz p1, :cond_3

    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_3

    iget-object p3, p0, Lcom/android/server/vdw;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/irq;

    invoke-direct {v0, p0, p1, p4}, Lcom/android/server/irq;-><init>(Lcom/android/server/vdw;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    new-array p3, p6, [I

    const/16 v0, 0xd6

    aput v0, p3, p5

    invoke-static {p3}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-direct {p0}, Lcom/android/server/vdw;->zm()Z

    move-result p3

    if-eqz p3, :cond_6

    iget-object p3, p0, Lcom/android/server/vdw;->uh:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_5

    const-string p3, "com.oneplus.retailmode"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p0, p6}, Lcom/android/server/vdw;->bvj(Z)V

    goto :goto_2

    :cond_5
    :goto_1
    invoke-virtual {p0, p5}, Lcom/android/server/vdw;->bvj(Z)V

    :cond_6
    :goto_2
    new-array p3, p6, [I

    const/16 v0, 0x82

    aput v0, p3, p5

    invoke-static {p3}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result p3

    if-eqz p3, :cond_b

    iget-boolean p3, p0, Lcom/android/server/vdw;->Vg:Z

    iget-object v0, p0, Lcom/android/server/vdw;->mWhitelist:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/android/server/vdw;->mh:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_3

    :cond_7
    iget-boolean v0, p0, Lcom/android/server/vdw;->Vg:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/server/vdw;->mWhitelist:Ljava/util/ArrayList;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/server/vdw;->mh:Ljava/util/ArrayList;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_8
    iput-boolean p5, p0, Lcom/android/server/vdw;->Vg:Z

    goto :goto_4

    :cond_9
    :goto_3
    iput-boolean p6, p0, Lcom/android/server/vdw;->Vg:Z

    :cond_a
    :goto_4
    iget-boolean v0, p0, Lcom/android/server/vdw;->Vg:Z

    if-eq p3, v0, :cond_b

    iget-boolean p3, p0, Lcom/android/server/vdw;->Vg:Z

    invoke-direct {p0, p3, p6}, Lcom/android/server/vdw;->ssp(ZI)V

    :cond_b
    new-array p3, p6, [I

    const/16 v0, 0x114

    aput v0, p3, p5

    invoke-static {p3}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result p3

    if-eqz p3, :cond_c

    iget-object p3, p0, Lcom/android/server/vdw;->bh:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_c

    iget-object p3, p0, Lcom/android/server/vdw;->mAudioManager:Landroid/media/AudioManager;

    const-string v0, "WhitelistFastOutputConfig"

    invoke-virtual {p3, v0, p1}, Landroid/media/AudioManager;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    new-array p3, p6, [I

    const/16 v0, 0x138

    aput v0, p3, p5

    invoke-static {p3}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result p3

    if-eqz p3, :cond_e

    iget-object p3, p0, Lcom/android/server/vdw;->eh:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_d

    iget-object p3, p0, Lcom/android/server/vdw;->mAudioManager:Landroid/media/AudioManager;

    const-string v0, "WhitelistGameDolbyConfig=1"

    invoke-virtual {p3, v0}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/server/vdw;->mAudioManager:Landroid/media/AudioManager;

    const-string v0, "WhitelistGameDolbyPackage"

    invoke-virtual {p3, v0, p1}, Landroid/media/AudioManager;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    iget-object p3, p0, Lcom/android/server/vdw;->eh:Ljava/util/ArrayList;

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_e

    iget-object p3, p0, Lcom/android/server/vdw;->eh:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_e

    const-string p3, "SCREEN OFF"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_e

    iget-object p3, p0, Lcom/android/server/vdw;->mAudioManager:Landroid/media/AudioManager;

    const-string v0, "WhitelistGameDolbyConfig=0"

    invoke-virtual {p3, v0}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    :cond_e
    new-array p3, p6, [I

    const/16 p6, 0x149

    aput p6, p3, p5

    invoke-static {p3}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result p3

    if-eqz p3, :cond_10

    iget-object p3, p0, Lcom/android/server/vdw;->hh:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_f

    const-string p3, "vendor.config.image.quality"

    iget-object p5, p0, Lcom/android/server/vdw;->jh:Ljava/util/HashMap;

    invoke-virtual {p5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/Integer;

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result p5

    invoke-static {p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p5

    invoke-static {p3, p5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    iget-object p3, p0, Lcom/android/server/vdw;->hh:Ljava/util/ArrayList;

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_10

    iget-object p0, p0, Lcom/android/server/vdw;->eh:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_10

    const-string p0, "SCREEN OFF"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_10

    const-string p0, "vendor.config.image.quality"

    sget-object p1, Lcom/android/server/vdw;->Jh:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public init(Landroid/content/Context;)V
    .locals 7

    sget-boolean v0, Lcom/android/server/vdw;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "CommonFrontMonitor"

    const-string v1, "init"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/android/server/OnePlusUtil$zta;->getInstance()Lcom/android/server/OnePlusUtil$zta;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/OnePlusUtil$zta;->zta(Lcom/android/server/OnePlusUtil$zta$you;)V

    iget-object v0, p0, Lcom/android/server/vdw;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    iput-object p1, p0, Lcom/android/server/vdw;->mContext:Landroid/content/Context;

    :cond_1
    iget-object p1, p0, Lcom/android/server/vdw;->mContext:Landroid/content/Context;

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/android/server/vdw;->mAudioManager:Landroid/media/AudioManager;

    iget-object p1, p0, Lcom/android/server/vdw;->mLock:Ljava/lang/Object;

    monitor-enter p1

    const/4 v0, 0x1

    :try_start_0
    new-array v1, v0, [I

    const/16 v2, 0xd6

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/android/server/vdw;->zm()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v0}, Lcom/android/server/vdw;->bvj(Z)V

    :cond_2
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance p1, Lcom/android/server/vdw$you;

    iget-object v1, p0, Lcom/android/server/vdw;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/vdw;->mHandler:Landroid/os/Handler;

    invoke-direct {p1, p0, v1, v4}, Lcom/android/server/vdw$you;-><init>(Lcom/android/server/vdw;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/server/vdw;->kh:Landroid/database/ContentObserver;

    iget-object p1, p0, Lcom/android/server/vdw;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v1, Lcom/android/server/vdw;->Nh:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/server/vdw;->kh:Landroid/database/ContentObserver;

    const/4 v5, -0x1

    invoke-virtual {p1, v1, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    new-array p1, v0, [I

    aput v2, p1, v3

    invoke-static {p1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result p1

    if-eqz p1, :cond_4

    sget-boolean p1, Lcom/android/server/vdw;->DBG:Z

    if-eqz p1, :cond_3

    const-string p1, "CommonFrontMonitor"

    const-string v1, "register Video enhancement observer"

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    new-instance p1, Lcom/oneplus/config/ConfigObserver;

    iget-object v1, p0, Lcom/android/server/vdw;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/vdw;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/vdw$zta;

    invoke-direct {v4, p0}, Lcom/android/server/vdw$zta;-><init>(Lcom/android/server/vdw;)V

    const-string v6, "BlacklistVideoEnhancerConfig"

    invoke-direct {p1, v1, v2, v4, v6}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/vdw;->nh:Lcom/oneplus/config/ConfigObserver;

    iget-object p1, p0, Lcom/android/server/vdw;->nh:Lcom/oneplus/config/ConfigObserver;

    invoke-virtual {p1}, Lcom/oneplus/config/ConfigObserver;->register()V

    new-instance p1, Lcom/android/server/vdw$ssp;

    iget-object v1, p0, Lcom/android/server/vdw;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/vdw;->mHandler:Landroid/os/Handler;

    invoke-direct {p1, p0, v1, v2}, Lcom/android/server/vdw$ssp;-><init>(Lcom/android/server/vdw;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/server/vdw;->Tg:Landroid/database/ContentObserver;

    iget-object p1, p0, Lcom/android/server/vdw;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v1, Lcom/android/server/vdw;->Ah:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/server/vdw;->Tg:Landroid/database/ContentObserver;

    invoke-virtual {p1, v1, v3, v2, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :cond_4
    new-array p1, v0, [I

    const/16 v1, 0x82

    aput v1, p1, v3

    invoke-static {p1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result p1

    if-eqz p1, :cond_6

    sget-boolean p1, Lcom/android/server/vdw;->DBG:Z

    if-eqz p1, :cond_5

    const-string p1, "CommonFrontMonitor"

    const-string v1, "register 5G observer"

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    new-instance p1, Lcom/oneplus/config/ConfigObserver;

    iget-object v1, p0, Lcom/android/server/vdw;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/vdw;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/vdw$cno;

    invoke-direct {v4, p0}, Lcom/android/server/vdw$cno;-><init>(Lcom/android/server/vdw;)V

    const-string v6, "Whitelist5GConfig"

    invoke-direct {p1, v1, v2, v4, v6}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/vdw;->Xg:Lcom/oneplus/config/ConfigObserver;

    iget-object p1, p0, Lcom/android/server/vdw;->Xg:Lcom/oneplus/config/ConfigObserver;

    invoke-virtual {p1}, Lcom/oneplus/config/ConfigObserver;->register()V

    new-instance p1, Lcom/android/server/vdw$tsu;

    iget-object v1, p0, Lcom/android/server/vdw;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/vdw;->mHandler:Landroid/os/Handler;

    invoke-direct {p1, p0, v1, v2}, Lcom/android/server/vdw$tsu;-><init>(Lcom/android/server/vdw;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/server/vdw;->Yg:Landroid/database/ContentObserver;

    iget-object p1, p0, Lcom/android/server/vdw;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v1, Lcom/android/server/vdw;->Eh:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/server/vdw;->Yg:Landroid/database/ContentObserver;

    invoke-virtual {p1, v1, v3, v2, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string p1, "ro.boot.opcarrier"

    const-string v1, "0"

    invoke-static {p1, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "tmo"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-direct {p0}, Lcom/android/server/vdw;->Bm()V

    new-instance p1, Lcom/android/server/vdw$rtg;

    iget-object v1, p0, Lcom/android/server/vdw;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/vdw;->mHandler:Landroid/os/Handler;

    invoke-direct {p1, p0, v1, v2}, Lcom/android/server/vdw$rtg;-><init>(Lcom/android/server/vdw;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/server/vdw;->lh:Landroid/database/ContentObserver;

    iget-object p1, p0, Lcom/android/server/vdw;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v1, Lcom/android/server/vdw;->Sh:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/server/vdw;->lh:Landroid/database/ContentObserver;

    invoke-virtual {p1, v1, v3, v2, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :cond_6
    new-array p1, v0, [I

    const/16 v1, 0x114

    aput v1, p1, v3

    invoke-static {p1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result p1

    if-eqz p1, :cond_8

    sget-boolean p1, Lcom/android/server/vdw;->DBG:Z

    if-eqz p1, :cond_7

    const-string p1, "CommonFrontMonitor"

    const-string v1, "register fastoutput package observer"

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    new-instance p1, Lcom/oneplus/config/ConfigObserver;

    iget-object v1, p0, Lcom/android/server/vdw;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/vdw;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/vdw$kth;

    invoke-direct {v4, p0}, Lcom/android/server/vdw$kth;-><init>(Lcom/android/server/vdw;)V

    const-string v5, "WhitelistFastOutputConfig"

    invoke-direct {p1, v1, v2, v4, v5}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/vdw;->_g:Lcom/oneplus/config/ConfigObserver;

    iget-object p1, p0, Lcom/android/server/vdw;->_g:Lcom/oneplus/config/ConfigObserver;

    invoke-virtual {p1}, Lcom/oneplus/config/ConfigObserver;->register()V

    :cond_8
    new-array p1, v0, [I

    const/16 v1, 0x138

    aput v1, p1, v3

    invoke-static {p1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result p1

    if-eqz p1, :cond_a

    sget-boolean p1, Lcom/android/server/vdw;->DBG:Z

    if-eqz p1, :cond_9

    const-string p1, "CommonFrontMonitor"

    const-string v1, "register game dolby package observer"

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    new-instance p1, Lcom/oneplus/config/ConfigObserver;

    iget-object v1, p0, Lcom/android/server/vdw;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/vdw;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/vdw$bio;

    invoke-direct {v4, p0}, Lcom/android/server/vdw$bio;-><init>(Lcom/android/server/vdw;)V

    const-string v5, "WhitelistGameDolbyConfig"

    invoke-direct {p1, v1, v2, v4, v5}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/vdw;->dh:Lcom/oneplus/config/ConfigObserver;

    iget-object p1, p0, Lcom/android/server/vdw;->dh:Lcom/oneplus/config/ConfigObserver;

    invoke-virtual {p1}, Lcom/oneplus/config/ConfigObserver;->register()V

    :cond_a
    new-array p1, v0, [I

    const/16 v0, 0x149

    aput v0, p1, v3

    invoke-static {p1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result p1

    if-eqz p1, :cond_c

    sget-boolean p1, Lcom/android/server/vdw;->DBG:Z

    if-eqz p1, :cond_b

    const-string p1, "CommonFrontMonitor"

    const-string v0, "register image quality package observer"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    new-instance p1, Lcom/oneplus/config/ConfigObserver;

    iget-object v0, p0, Lcom/android/server/vdw;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/vdw;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/vdw$igw;

    invoke-direct {v2, p0}, Lcom/android/server/vdw$igw;-><init>(Lcom/android/server/vdw;)V

    const-string v3, "WhitelistImageQualityConfig"

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/vdw;->gh:Lcom/oneplus/config/ConfigObserver;

    iget-object p1, p0, Lcom/android/server/vdw;->gh:Lcom/oneplus/config/ConfigObserver;

    invoke-virtual {p1}, Lcom/oneplus/config/ConfigObserver;->register()V

    :cond_c
    sget-boolean p1, Lcom/android/server/vdw;->Wh:Z

    if-eqz p1, :cond_e

    sget-boolean p1, Lcom/android/server/vdw;->DBG:Z

    if-eqz p1, :cond_d

    const-string p1, "CommonFrontMonitor"

    const-string v0, "register lmkd watermater observer"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    iget-object p1, p0, Lcom/android/server/vdw;->rh:Ljava/util/HashSet;

    const-string v0, "com.oneplus.camera"

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance p1, Lcom/oneplus/config/ConfigObserver;

    iget-object v0, p0, Lcom/android/server/vdw;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/vdw;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/vdw$sis;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/vdw$sis;-><init>(Lcom/android/server/vdw;Lcom/android/server/les;)V

    const-string v3, "LMKD_TUNE"

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/vdw;->sh:Lcom/oneplus/config/ConfigObserver;

    iget-object p1, p0, Lcom/android/server/vdw;->sh:Lcom/oneplus/config/ConfigObserver;

    invoke-virtual {p1}, Lcom/oneplus/config/ConfigObserver;->register()V

    :cond_e
    invoke-direct {p0}, Lcom/android/server/vdw;->vm()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public zta(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/vdw;->mWhitelist:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/vdw;->mWhitelist:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
