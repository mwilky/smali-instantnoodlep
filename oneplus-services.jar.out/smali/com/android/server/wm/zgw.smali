.class public Lcom/android/server/wm/zgw;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/server/wm/IOpFingerprintAccelerate;


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "OpFingerprintAccelerate"

.field private static mba:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/wm/zgw;->DEBUG:Z

    const-string v1, "com.android.chrome"

    const-string v2, "com.autonavi.minimap"

    const-string v3, "com.shuqiyuedu823.google"

    const-string v4, "com.amazon.avod.thirdpartyclient"

    const-string v5, "com.google.android.apps.maps"

    const-string v6, "com.tencent.qqlive"

    const-string v7, "com.youku.phone"

    const-string v8, "com.qiyi.video"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/zgw;->mba:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/zgw;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public isAppSupportsAccelerting(Ljava/lang/String;)Z
    .locals 0

    sget-object p0, Lcom/android/server/wm/zgw;->mba:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
