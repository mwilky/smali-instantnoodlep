.class Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;
.super Ljava/lang/Object;
.source "SVGAndroidRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/SVGAndroidRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MarkerVector"
.end annotation


# instance fields
.field public dx:F

.field public dy:F

.field public x:F

.field public y:F


# direct methods
.method public constructor <init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;FFFF)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->dx:F

    iput p1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->dy:F

    iput p2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->x:F

    iput p3, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->y:F

    mul-float p1, p4, p4

    mul-float p2, p5, p5

    add-float/2addr p2, p1

    float-to-double p1, p2

    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmpl-double p3, p1, v0

    if-eqz p3, :cond_0

    float-to-double p3, p4

    div-double/2addr p3, p1

    double-to-float p3, p3

    iput p3, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->dx:F

    float-to-double p3, p5

    div-double/2addr p3, p1

    double-to-float p1, p3

    iput p1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->dy:F

    :cond_0
    return-void
.end method


# virtual methods
.method public add(FF)V
    .locals 5

    iget v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->x:F

    sub-float/2addr p1, v0

    iget v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->y:F

    sub-float/2addr p2, v0

    mul-float v0, p1, p1

    mul-float v1, p2, p2

    add-float/2addr v1, v0

    float-to-double v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->dx:F

    float-to-double v3, p1

    div-double/2addr v3, v0

    double-to-float p1, v3

    add-float/2addr v2, p1

    iput v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->dx:F

    iget p1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->dy:F

    float-to-double v2, p2

    div-double/2addr v2, v0

    double-to-float p2, v2

    add-float/2addr p1, p2

    iput p1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->dy:F

    :cond_0
    return-void
.end method

.method public add(Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;)V
    .locals 2

    iget v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->dx:F

    iget v1, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->dx:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->dx:F

    iget v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->dy:F

    iget p1, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->dy:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->dy:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->y:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->dx:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->dy:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
