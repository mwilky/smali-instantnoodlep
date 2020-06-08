.class public final Landroidx/dynamicanimation/animation/SpringForce;
.super Ljava/lang/Object;
.source "SpringForce.java"

# interfaces
.implements Landroidx/dynamicanimation/animation/Force;


# instance fields
.field private mDampedFreq:D

.field mDampingRatio:D

.field private mFinalPosition:D

.field private mGammaMinus:D

.field private mGammaPlus:D

.field private mInitialized:Z

.field private final mMassState:Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;

.field mNaturalFreq:D

.field private mValueThreshold:D

.field private mVelocityThreshold:D


# direct methods
.method public constructor <init>(F)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, 0x4097700000000000L    # 1500.0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    iput-wide v0, p0, Landroidx/dynamicanimation/animation/SpringForce;->mNaturalFreq:D

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    iput-wide v0, p0, Landroidx/dynamicanimation/animation/SpringForce;->mDampingRatio:D

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/dynamicanimation/animation/SpringForce;->mInitialized:Z

    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    iput-wide v0, p0, Landroidx/dynamicanimation/animation/SpringForce;->mFinalPosition:D

    new-instance v0, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;

    invoke-direct {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;-><init>()V

    iput-object v0, p0, Landroidx/dynamicanimation/animation/SpringForce;->mMassState:Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;

    float-to-double v0, p1

    iput-wide v0, p0, Landroidx/dynamicanimation/animation/SpringForce;->mFinalPosition:D

    return-void
.end method


# virtual methods
.method public getFinalPosition()F
    .locals 2

    iget-wide v0, p0, Landroidx/dynamicanimation/animation/SpringForce;->mFinalPosition:D

    double-to-float p0, v0

    return p0
.end method

.method public isAtEquilibrium(FF)Z
    .locals 4

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    float-to-double v0, p2

    iget-wide v2, p0, Landroidx/dynamicanimation/animation/SpringForce;->mVelocityThreshold:D

    cmpg-double p2, v0, v2

    if-gez p2, :cond_0

    iget-wide v0, p0, Landroidx/dynamicanimation/animation/SpringForce;->mFinalPosition:D

    double-to-float p2, v0

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    float-to-double p1, p1

    iget-wide v0, p0, Landroidx/dynamicanimation/animation/SpringForce;->mValueThreshold:D

    cmpg-double p0, p1, v0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;
    .locals 2

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    float-to-double v0, p1

    iput-wide v0, p0, Landroidx/dynamicanimation/animation/SpringForce;->mDampingRatio:D

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/dynamicanimation/animation/SpringForce;->mInitialized:Z

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Damping ratio must be non-negative"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;
    .locals 2

    float-to-double v0, p1

    iput-wide v0, p0, Landroidx/dynamicanimation/animation/SpringForce;->mFinalPosition:D

    return-object p0
.end method

.method public setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;
    .locals 2

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    iput-wide v0, p0, Landroidx/dynamicanimation/animation/SpringForce;->mNaturalFreq:D

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/dynamicanimation/animation/SpringForce;->mInitialized:Z

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Spring stiffness constant must be positive."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method setValueThreshold(D)V
    .locals 2

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide p1

    iput-wide p1, p0, Landroidx/dynamicanimation/animation/SpringForce;->mValueThreshold:D

    iget-wide p1, p0, Landroidx/dynamicanimation/animation/SpringForce;->mValueThreshold:D

    const-wide v0, 0x404f400000000000L    # 62.5

    mul-double/2addr p1, v0

    iput-wide p1, p0, Landroidx/dynamicanimation/animation/SpringForce;->mVelocityThreshold:D

    return-void
.end method

.method updateValues(DDJ)Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;
    .locals 16

    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroidx/dynamicanimation/animation/SpringForce;->mInitialized:Z

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    iget-wide v4, v0, Landroidx/dynamicanimation/animation/SpringForce;->mFinalPosition:D

    const-wide v6, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpl-double v1, v4, v6

    if-eqz v1, :cond_5

    iget-wide v4, v0, Landroidx/dynamicanimation/animation/SpringForce;->mDampingRatio:D

    cmpl-double v1, v4, v2

    if-lez v1, :cond_1

    neg-double v6, v4

    iget-wide v8, v0, Landroidx/dynamicanimation/animation/SpringForce;->mNaturalFreq:D

    mul-double/2addr v6, v8

    mul-double/2addr v4, v4

    sub-double/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    mul-double/2addr v4, v8

    add-double/2addr v4, v6

    iput-wide v4, v0, Landroidx/dynamicanimation/animation/SpringForce;->mGammaPlus:D

    iget-wide v4, v0, Landroidx/dynamicanimation/animation/SpringForce;->mDampingRatio:D

    neg-double v6, v4

    iget-wide v8, v0, Landroidx/dynamicanimation/animation/SpringForce;->mNaturalFreq:D

    mul-double/2addr v6, v8

    mul-double/2addr v4, v4

    sub-double/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    mul-double/2addr v4, v8

    sub-double/2addr v6, v4

    iput-wide v6, v0, Landroidx/dynamicanimation/animation/SpringForce;->mGammaMinus:D

    goto :goto_0

    :cond_1
    const-wide/16 v6, 0x0

    cmpl-double v1, v4, v6

    if-ltz v1, :cond_2

    cmpg-double v1, v4, v2

    if-gez v1, :cond_2

    iget-wide v6, v0, Landroidx/dynamicanimation/animation/SpringForce;->mNaturalFreq:D

    mul-double/2addr v4, v4

    sub-double v4, v2, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    mul-double/2addr v4, v6

    iput-wide v4, v0, Landroidx/dynamicanimation/animation/SpringForce;->mDampedFreq:D

    :cond_2
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/dynamicanimation/animation/SpringForce;->mInitialized:Z

    :goto_1
    move-wide/from16 v4, p5

    long-to-double v4, v4

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double/2addr v4, v6

    iget-wide v6, v0, Landroidx/dynamicanimation/animation/SpringForce;->mFinalPosition:D

    sub-double v6, p1, v6

    iget-wide v8, v0, Landroidx/dynamicanimation/animation/SpringForce;->mDampingRatio:D

    cmpl-double v1, v8, v2

    const-wide v10, 0x4005bf0a8b145769L    # Math.E

    if-lez v1, :cond_3

    iget-wide v1, v0, Landroidx/dynamicanimation/animation/SpringForce;->mGammaMinus:D

    mul-double v8, v1, v6

    sub-double v8, v8, p3

    iget-wide v12, v0, Landroidx/dynamicanimation/animation/SpringForce;->mGammaPlus:D

    sub-double v14, v1, v12

    div-double/2addr v8, v14

    sub-double v8, v6, v8

    mul-double/2addr v6, v1

    sub-double v6, v6, p3

    sub-double v12, v1, v12

    div-double/2addr v6, v12

    mul-double/2addr v1, v4

    invoke-static {v10, v11, v1, v2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    mul-double/2addr v1, v8

    iget-wide v12, v0, Landroidx/dynamicanimation/animation/SpringForce;->mGammaPlus:D

    mul-double/2addr v12, v4

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    mul-double/2addr v12, v6

    add-double/2addr v12, v1

    iget-wide v1, v0, Landroidx/dynamicanimation/animation/SpringForce;->mGammaMinus:D

    mul-double/2addr v8, v1

    mul-double/2addr v1, v4

    invoke-static {v10, v11, v1, v2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    mul-double/2addr v1, v8

    iget-wide v8, v0, Landroidx/dynamicanimation/animation/SpringForce;->mGammaPlus:D

    mul-double/2addr v6, v8

    mul-double/2addr v8, v4

    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    mul-double/2addr v3, v6

    add-double/2addr v3, v1

    goto/16 :goto_2

    :cond_3
    cmpl-double v1, v8, v2

    if-nez v1, :cond_4

    iget-wide v1, v0, Landroidx/dynamicanimation/animation/SpringForce;->mNaturalFreq:D

    mul-double v8, v1, v6

    add-double v8, v8, p3

    mul-double v12, v8, v4

    add-double/2addr v12, v6

    neg-double v1, v1

    mul-double/2addr v1, v4

    invoke-static {v10, v11, v1, v2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    mul-double/2addr v1, v12

    iget-wide v6, v0, Landroidx/dynamicanimation/animation/SpringForce;->mNaturalFreq:D

    neg-double v6, v6

    mul-double/2addr v6, v4

    invoke-static {v10, v11, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    mul-double/2addr v6, v12

    iget-wide v12, v0, Landroidx/dynamicanimation/animation/SpringForce;->mNaturalFreq:D

    neg-double v14, v12

    mul-double/2addr v6, v14

    neg-double v12, v12

    mul-double/2addr v12, v4

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    mul-double/2addr v3, v8

    add-double/2addr v3, v6

    move-wide v12, v1

    goto :goto_2

    :cond_4
    iget-wide v12, v0, Landroidx/dynamicanimation/animation/SpringForce;->mDampedFreq:D

    div-double/2addr v2, v12

    iget-wide v12, v0, Landroidx/dynamicanimation/animation/SpringForce;->mNaturalFreq:D

    mul-double v14, v8, v12

    mul-double/2addr v14, v6

    add-double v14, v14, p3

    mul-double/2addr v14, v2

    neg-double v1, v8

    mul-double/2addr v1, v12

    mul-double/2addr v1, v4

    invoke-static {v10, v11, v1, v2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    iget-wide v8, v0, Landroidx/dynamicanimation/animation/SpringForce;->mDampedFreq:D

    mul-double/2addr v8, v4

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v8, v6

    iget-wide v12, v0, Landroidx/dynamicanimation/animation/SpringForce;->mDampedFreq:D

    mul-double/2addr v12, v4

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    mul-double/2addr v12, v14

    add-double/2addr v12, v8

    mul-double/2addr v12, v1

    iget-wide v1, v0, Landroidx/dynamicanimation/animation/SpringForce;->mNaturalFreq:D

    neg-double v8, v1

    mul-double/2addr v8, v12

    iget-wide v10, v0, Landroidx/dynamicanimation/animation/SpringForce;->mDampingRatio:D

    mul-double/2addr v8, v10

    neg-double v10, v10

    mul-double/2addr v10, v1

    mul-double/2addr v10, v4

    const-wide v1, 0x4005bf0a8b145769L    # Math.E

    invoke-static {v1, v2, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    iget-wide v10, v0, Landroidx/dynamicanimation/animation/SpringForce;->mDampedFreq:D

    move-wide/from16 p1, v12

    neg-double v12, v10

    mul-double/2addr v12, v6

    mul-double/2addr v10, v4

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v6, v12

    iget-wide v10, v0, Landroidx/dynamicanimation/animation/SpringForce;->mDampedFreq:D

    mul-double/2addr v14, v10

    mul-double/2addr v10, v4

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    mul-double/2addr v3, v14

    add-double/2addr v3, v6

    mul-double/2addr v3, v1

    add-double/2addr v3, v8

    move-wide/from16 v12, p1

    :goto_2
    iget-object v1, v0, Landroidx/dynamicanimation/animation/SpringForce;->mMassState:Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;

    iget-wide v5, v0, Landroidx/dynamicanimation/animation/SpringForce;->mFinalPosition:D

    add-double/2addr v12, v5

    double-to-float v0, v12

    iput v0, v1, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;->mValue:F

    double-to-float v0, v3

    iput v0, v1, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;->mVelocity:F

    return-object v1

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Error: Final position of the spring must be set before the animation starts"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
