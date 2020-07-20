.class public Lcom/oneplus/android/server/iris/bvj;
.super Lcom/oneplus/android/server/iris/bio;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/iris/bio;-><init>()V

    return-void
.end method


# virtual methods
.method public M(Z)V
    .locals 0

    return-void
.end method

.method public P(Z)V
    .locals 0

    return-void
.end method

.method public Q(Z)V
    .locals 0

    return-void
.end method

.method public Qf()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public R(Z)V
    .locals 0

    return-void
.end method

.method public Rf()V
    .locals 0

    return-void
.end method

.method public S(Z)V
    .locals 0

    return-void
.end method

.method public T(Z)V
    .locals 0

    return-void
.end method

.method public U(Z)V
    .locals 0

    return-void
.end method

.method public V(Z)V
    .locals 0

    return-void
.end method

.method public W(Z)V
    .locals 0

    return-void
.end method

.method public da(I)V
    .locals 0

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public ea(I)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getIrisCommand(I)I
    .locals 0

    invoke-super {p0, p1}, Lcom/oneplus/android/server/iris/bio;->getIrisCommand(I)I

    move-result p0

    return p0
.end method

.method public getMemcAppTypeMap()Ljava/util/HashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getMemcRateMap()Ljava/util/HashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getPreferedModeId(I)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public notifyRecentAnimatorStatus(Z)V
    .locals 0

    return-void
.end method

.method public onBootComplete()V
    .locals 0

    return-void
.end method

.method public postDisplayModeChange(I)V
    .locals 0

    return-void
.end method

.method public prepareDisplayModeChange(Lcom/oneplus/iris/OpIrisWindowInfo;)V
    .locals 0

    return-void
.end method

.method public screenStateChange(I)V
    .locals 0

    return-void
.end method

.method public bridge synthetic setIrisCommand(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/oneplus/android/server/iris/bio;->setIrisCommand(Ljava/lang/String;)V

    return-void
.end method

.method public systemReady()V
    .locals 0

    return-void
.end method
