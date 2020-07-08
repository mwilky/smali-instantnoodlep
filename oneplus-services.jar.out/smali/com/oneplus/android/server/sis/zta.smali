.class public Lcom/oneplus/android/server/sis/zta;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oneplus/android/server/config/IOnePlusConfigService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/android/server/sis/zta$zta;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "OnePlusConfigService"

.field private static mInstance:Lcom/oneplus/android/server/sis/zta;


# instance fields
.field private Nma:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/android/server/config/OnePlusConfigServiceUpdater;",
            ">;"
        }
    .end annotation
.end field

.field private Oma:Lcom/oneplus/config/ConfigGrabber;

.field private mConfigs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/json/JSONArray;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mObserver:Lcom/oneplus/config/ConfigObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/oneplus/android/server/sis/zta;->DEBUG:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/oneplus/android/server/sis/zta;->mInstance:Lcom/oneplus/android/server/sis/zta;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/android/server/sis/zta;->Oma:Lcom/oneplus/config/ConfigGrabber;

    iput-object v0, p0, Lcom/oneplus/android/server/sis/zta;->mObserver:Lcom/oneplus/config/ConfigObserver;

    sget-boolean v0, Lcom/oneplus/android/server/sis/zta;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OnePlusConfigService"

    const-string v1, "OnePlusConfigService, Construct called"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p1, p0, Lcom/oneplus/android/server/sis/zta;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/oneplus/android/server/sis/zta;->initHandler()V

    new-instance v0, Lcom/oneplus/config/ConfigGrabber;

    const-string v1, "all"

    invoke-direct {v0, p1, v1}, Lcom/oneplus/config/ConfigGrabber;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oneplus/android/server/sis/zta;->Oma:Lcom/oneplus/config/ConfigGrabber;

    new-instance v0, Lcom/oneplus/config/ConfigObserver;

    iget-object v2, p0, Lcom/oneplus/android/server/sis/zta;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/oneplus/android/server/sis/zta$zta;

    invoke-direct {v3, p0}, Lcom/oneplus/android/server/sis/zta$zta;-><init>(Lcom/oneplus/android/server/sis/zta;)V

    invoke-direct {v0, p1, v2, v3, v1}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oneplus/android/server/sis/zta;->mObserver:Lcom/oneplus/config/ConfigObserver;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/oneplus/android/server/sis/zta;->Nma:Ljava/util/ArrayList;

    return-void
.end method

.method private Pu()V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/oneplus/android/server/sis/zta;->Nma:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/android/server/sis/zta;->Nma:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/android/server/config/OnePlusConfigServiceUpdater;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/oneplus/android/server/sis/zta;->mConfigs:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/oneplus/android/server/config/OnePlusConfigServiceUpdater;->getConfigName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONArray;

    invoke-virtual {v1, v2}, Lcom/oneplus/android/server/config/OnePlusConfigServiceUpdater;->updateConfig(Lorg/json/JSONArray;)V

    sget-boolean v2, Lcom/oneplus/android/server/sis/zta;->DEBUG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PushAllConfig:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/oneplus/android/server/config/OnePlusConfigServiceUpdater;->getConfigName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OnePlusConfigService"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/oneplus/android/server/sis/zta;
    .locals 1

    sget-object v0, Lcom/oneplus/android/server/sis/zta;->mInstance:Lcom/oneplus/android/server/sis/zta;

    if-nez v0, :cond_0

    new-instance v0, Lcom/oneplus/android/server/sis/zta;

    invoke-direct {v0, p0}, Lcom/oneplus/android/server/sis/zta;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/oneplus/android/server/sis/zta;->mInstance:Lcom/oneplus/android/server/sis/zta;

    :cond_0
    sget-object p0, Lcom/oneplus/android/server/sis/zta;->mInstance:Lcom/oneplus/android/server/sis/zta;

    return-object p0
.end method

.method private initHandler()V
    .locals 2

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "OnePlusConfigService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oneplus/android/server/sis/zta;->mHandlerThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/oneplus/android/server/sis/zta;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/oneplus/android/server/sis/zta;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oneplus/android/server/sis/zta;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic zta(Lcom/oneplus/android/server/sis/zta;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/sis/zta;->Pu()V

    return-void
.end method


# virtual methods
.method public getConfig(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x3e8

    if-eq v0, v2, :cond_0

    return-object v1

    :cond_0
    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/oneplus/android/server/sis/zta;->mConfigs:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/json/JSONArray;

    return-object p0

    :cond_1
    return-object v1
.end method

.method public init()V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/sis/zta;->mObserver:Lcom/oneplus/config/ConfigObserver;

    invoke-virtual {p0}, Lcom/oneplus/config/ConfigObserver;->register()V

    return-void
.end method

.method public kf()V
    .locals 2

    sget-boolean v0, Lcom/oneplus/android/server/sis/zta;->DEBUG:Z

    const-string v1, "OnePlusConfigService"

    if-eqz v0, :cond_0

    const-string v0, "Update all config"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/oneplus/android/server/sis/zta;->Oma:Lcom/oneplus/config/ConfigGrabber;

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigGrabber;->grabAllConfig()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/android/server/sis/zta;->mConfigs:Ljava/util/HashMap;

    iget-object p0, p0, Lcom/oneplus/android/server/sis/zta;->mConfigs:Ljava/util/HashMap;

    if-eqz p0, :cond_1

    const-string p0, "Update config complete"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public registerConfig(Lcom/oneplus/android/server/config/OnePlusConfigServiceUpdater;)V
    .locals 2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/oneplus/android/server/sis/zta;->DEBUG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerConfig:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/oneplus/android/server/config/OnePlusConfigServiceUpdater;->getConfigName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OnePlusConfigService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object p0, p0, Lcom/oneplus/android/server/sis/zta;->Nma:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
