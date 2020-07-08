.class abstract Lcom/oneplus/android/server/iris/bio;
.super Ljava/lang/Object;
.source ""


# static fields
.field protected static final DEBUG:Z

.field protected static final TAG:Ljava/lang/String; = "OpIrisManager"


# instance fields
.field protected lra:Lcom/oneplus/android/server/iris/ssp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/oneplus/android/server/iris/bio;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/oneplus/android/server/iris/ssp;

    invoke-direct {v0}, Lcom/oneplus/android/server/iris/ssp;-><init>()V

    iput-object v0, p0, Lcom/oneplus/android/server/iris/bio;->lra:Lcom/oneplus/android/server/iris/ssp;

    return-void
.end method


# virtual methods
.method public abstract M(Z)V
.end method

.method public abstract P(Z)V
.end method

.method public abstract Q(Z)V
.end method

.method public abstract R(Z)V
.end method

.method public abstract Rf()Z
.end method

.method public abstract S(Z)V
.end method

.method public abstract Sf()V
.end method

.method public abstract T(Z)V
.end method

.method public abstract U(Z)V
.end method

.method public abstract V(Z)V
.end method

.method public abstract da(I)V
.end method

.method public abstract dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
.end method

.method public abstract ea(I)I
.end method

.method public getIrisCommand(I)I
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/iris/bio;->lra:Lcom/oneplus/android/server/iris/ssp;

    invoke-virtual {p0, p1}, Lcom/oneplus/android/server/iris/ssp;->getIrisCommand(I)I

    move-result p0

    return p0
.end method

.method public abstract getMemcAppTypeMap()Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMemcRateMap()Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPreferedModeId(I)I
.end method

.method public abstract getUrl()Ljava/lang/String;
.end method

.method public abstract notifyRecentAnimatorStatus(Z)V
.end method

.method public abstract onBootComplete()V
.end method

.method public abstract postDisplayModeChange(I)V
.end method

.method public abstract prepareDisplayModeChange(Lcom/oneplus/iris/OpIrisWindowInfo;)V
.end method

.method public abstract screenStateChange(I)V
.end method

.method public setIrisCommand(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/iris/bio;->lra:Lcom/oneplus/android/server/iris/ssp;

    invoke-virtual {p0, p1}, Lcom/oneplus/android/server/iris/ssp;->setIrisCommand(Ljava/lang/String;)V

    return-void
.end method

.method public abstract systemReady()V
.end method
