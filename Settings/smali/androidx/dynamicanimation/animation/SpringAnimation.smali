.class public final Landroidx/dynamicanimation/animation/SpringAnimation;
.super Landroidx/dynamicanimation/animation/DynamicAnimation;
.source "SpringAnimation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/dynamicanimation/animation/DynamicAnimation<",
        "Landroidx/dynamicanimation/animation/SpringAnimation;",
        ">;"
    }
.end annotation


# instance fields
.field private mEndRequested:Z

.field private mPendingPosition:F

.field private mSpring:Landroidx/dynamicanimation/animation/SpringForce;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;F)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(TK;",
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "TK;>;F)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Landroidx/dynamicanimation/animation/DynamicAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    const p1, 0x7f7fffff    # Float.MAX_VALUE

    iput p1, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mPendingPosition:F

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mEndRequested:Z

    new-instance p1, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {p1, p3}, Landroidx/dynamicanimation/animation/SpringForce;-><init>(F)V

    iput-object p1, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    invoke-super {p0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->cancel()V

    iget v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mPendingPosition:F

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    if-nez v2, :cond_0

    new-instance v2, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v2, v0}, Landroidx/dynamicanimation/animation/SpringForce;-><init>(F)V

    iput-object v2, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v0}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    :goto_0
    iput v1, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mPendingPosition:F

    :cond_1
    return-void
.end method

.method public setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;
    .locals 0

    iput-object p1, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    return-object p0
.end method

.method public start()V
    .locals 4

    iget-object v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringForce;->getFinalPosition()F

    move-result v0

    float-to-double v0, v0

    iget v2, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mMaxValue:F

    float-to-double v2, v2

    cmpl-double v2, v0, v2

    if-gtz v2, :cond_5

    iget v2, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mMinValue:F

    float-to-double v2, v2

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_4

    iget-object v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->getValueThreshold()F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setValueThreshold(D)V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_3

    iget-boolean v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mRunning:Z

    if-nez v0, :cond_2

    if-nez v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mRunning:Z

    iget-boolean v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mStartValueIsSet:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mProperty:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    iget-object v1, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mTarget:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/FloatPropertyCompat;->getValue(Ljava/lang/Object;)F

    move-result v0

    iput v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mValue:F

    :cond_0
    iget v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mValue:F

    iget v1, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mMaxValue:F

    cmpl-float v1, v0, v1

    if-gtz v1, :cond_1

    iget v1, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mMinValue:F

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_1

    invoke-static {}, Landroidx/dynamicanimation/animation/AnimationHandler;->getInstance()Landroidx/dynamicanimation/animation/AnimationHandler;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p0, v1, v2}, Landroidx/dynamicanimation/animation/AnimationHandler;->addAnimationFrameCallback(Landroidx/dynamicanimation/animation/AnimationHandler$AnimationFrameCallback;J)V

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Starting value need to be in between min value and max value"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    return-void

    :cond_3
    new-instance p0, Landroid/util/AndroidRuntimeException;

    const-string v0, "Animations may only be started on the main thread"

    invoke-direct {p0, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Final position of the spring cannot be less than the min value."

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Final position of the spring cannot be greater than the max value."

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Incomplete SpringAnimation: Either final position or a spring force needs to be set."

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method updateValueAndVelocity(J)Z
    .locals 20

    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->mEndRequested:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0x7f7fffff    # Float.MAX_VALUE

    if-eqz v1, :cond_1

    iget v1, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->mPendingPosition:F

    cmpl-float v6, v1, v5

    if-eqz v6, :cond_0

    iget-object v6, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {v6, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    iput v5, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->mPendingPosition:F

    :cond_0
    iget-object v1, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/SpringForce;->getFinalPosition()F

    move-result v1

    iput v1, v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mValue:F

    iput v4, v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mVelocity:F

    iput-boolean v3, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->mEndRequested:Z

    return v2

    :cond_1
    iget v1, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->mPendingPosition:F

    cmpl-float v1, v1, v5

    if-eqz v1, :cond_2

    iget-object v1, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/SpringForce;->getFinalPosition()F

    iget-object v6, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    iget v1, v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mValue:F

    float-to-double v7, v1

    iget v1, v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mVelocity:F

    float-to-double v9, v1

    const-wide/16 v11, 0x2

    div-long v18, p1, v11

    move-wide/from16 v11, v18

    invoke-virtual/range {v6 .. v12}, Landroidx/dynamicanimation/animation/SpringForce;->updateValues(DDJ)Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;

    move-result-object v1

    iget-object v6, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    iget v7, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->mPendingPosition:F

    invoke-virtual {v6, v7}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    iput v5, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->mPendingPosition:F

    iget-object v13, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    iget v5, v1, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;->mValue:F

    float-to-double v14, v5

    iget v1, v1, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;->mVelocity:F

    float-to-double v5, v1

    move-wide/from16 v16, v5

    invoke-virtual/range {v13 .. v19}, Landroidx/dynamicanimation/animation/SpringForce;->updateValues(DDJ)Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;

    move-result-object v1

    iget v5, v1, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;->mValue:F

    iput v5, v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mValue:F

    iget v1, v1, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;->mVelocity:F

    iput v1, v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mVelocity:F

    goto :goto_0

    :cond_2
    iget-object v13, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    iget v1, v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mValue:F

    float-to-double v14, v1

    iget v1, v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mVelocity:F

    float-to-double v5, v1

    move-wide/from16 v16, v5

    move-wide/from16 v18, p1

    invoke-virtual/range {v13 .. v19}, Landroidx/dynamicanimation/animation/SpringForce;->updateValues(DDJ)Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;

    move-result-object v1

    iget v5, v1, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;->mValue:F

    iput v5, v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mValue:F

    iget v1, v1, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;->mVelocity:F

    iput v1, v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mVelocity:F

    :goto_0
    iget v1, v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mValue:F

    iget v5, v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mMinValue:F

    invoke-static {v1, v5}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mValue:F

    iget v1, v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mValue:F

    iget v5, v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mMaxValue:F

    invoke-static {v1, v5}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mValue:F

    iget v1, v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mValue:F

    iget v5, v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mVelocity:F

    iget-object v6, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {v6, v1, v5}, Landroidx/dynamicanimation/animation/SpringForce;->isAtEquilibrium(FF)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/SpringForce;->getFinalPosition()F

    move-result v1

    iput v1, v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mValue:F

    iput v4, v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mVelocity:F

    return v2

    :cond_3
    return v3
.end method