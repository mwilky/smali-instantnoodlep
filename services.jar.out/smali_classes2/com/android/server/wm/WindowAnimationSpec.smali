.class public Lcom/android/server/wm/WindowAnimationSpec;
.super Ljava/lang/Object;
.source "WindowAnimationSpec.java"

# interfaces
.implements Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/WindowAnimationSpec$TmpValues;
    }
.end annotation


# instance fields
.field private mAnimation:Landroid/view/animation/Animation;

.field private final mCanSkipFirstFrame:Z

.field private final mIsAppAnimation:Z

.field private final mPosition:Landroid/graphics/Point;

.field private final mStackBounds:Landroid/graphics/Rect;

.field private mStackClipMode:I

.field private mTask:Lcom/android/server/wm/Task;

.field private final mThreadLocalTmps:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/android/server/wm/WindowAnimationSpec$TmpValues;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpRect:Landroid/graphics/Rect;

.field private final mTransaction:Landroid/view/SurfaceControl$Transaction;

.field private final mWindowCornerRadius:F


# direct methods
.method public constructor <init>(Landroid/view/animation/Animation;Landroid/graphics/Point;Landroid/graphics/Rect;ZIZF)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowAnimationSpec;->mPosition:Landroid/graphics/Point;

    sget-object v0, Lcom/android/server/wm/-$$Lambda$WindowAnimationSpec$jKE7Phq2DESkeBondpaNPBLn6Cs;->INSTANCE:Lcom/android/server/wm/-$$Lambda$WindowAnimationSpec$jKE7Phq2DESkeBondpaNPBLn6Cs;

    invoke-static {v0}, Ljava/lang/ThreadLocal;->withInitial(Ljava/util/function/Supplier;)Ljava/lang/ThreadLocal;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/WindowAnimationSpec;->mThreadLocalTmps:Ljava/lang/ThreadLocal;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowAnimationSpec;->mStackBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowAnimationSpec;->mTmpRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowAnimationSpec;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iput-object p1, p0, Lcom/android/server/wm/WindowAnimationSpec;->mAnimation:Landroid/view/animation/Animation;

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowAnimationSpec;->mPosition:Landroid/graphics/Point;

    iget v1, p2, Landroid/graphics/Point;->x:I

    iget v2, p2, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    :cond_0
    iput p7, p0, Lcom/android/server/wm/WindowAnimationSpec;->mWindowCornerRadius:F

    iput-boolean p4, p0, Lcom/android/server/wm/WindowAnimationSpec;->mCanSkipFirstFrame:Z

    iput-boolean p6, p0, Lcom/android/server/wm/WindowAnimationSpec;->mIsAppAnimation:Z

    iput p5, p0, Lcom/android/server/wm/WindowAnimationSpec;->mStackClipMode:I

    if-eqz p3, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/WindowAnimationSpec;->mStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_1
    return-void
.end method

.method public constructor <init>(Landroid/view/animation/Animation;Landroid/graphics/Point;ZF)V
    .locals 8

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/server/wm/WindowAnimationSpec;-><init>(Landroid/view/animation/Animation;Landroid/graphics/Point;Landroid/graphics/Rect;ZIZF)V

    return-void
.end method

.method public constructor <init>(Landroid/view/animation/Animation;Landroid/graphics/Point;ZFLcom/android/server/wm/Task;)V
    .locals 8

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/server/wm/WindowAnimationSpec;-><init>(Landroid/view/animation/Animation;Landroid/graphics/Point;Landroid/graphics/Rect;ZIZF)V

    iput-object p5, p0, Lcom/android/server/wm/WindowAnimationSpec;->mTask:Lcom/android/server/wm/Task;

    return-void
.end method

.method private static findAlmostThereFraction(Landroid/view/animation/Interpolator;)F
    .locals 4

    const/high16 v0, 0x3f000000    # 0.5f

    const/high16 v1, 0x3e800000    # 0.25f

    :goto_0
    const v2, 0x3c23d70a    # 0.01f

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_1

    invoke-interface {p0, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    const v3, 0x3f7d70a4    # 0.99f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    add-float/2addr v0, v1

    goto :goto_1

    :cond_0
    sub-float/2addr v0, v1

    :goto_1
    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    goto :goto_0

    :cond_1
    return v0
.end method

.method private static findTranslateAnimation(Landroid/view/animation/Animation;)Landroid/view/animation/TranslateAnimation;
    .locals 4

    instance-of v0, p0, Landroid/view/animation/TranslateAnimation;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Landroid/view/animation/TranslateAnimation;

    return-object v0

    :cond_0
    instance-of v0, p0, Landroid/view/animation/AnimationSet;

    if-eqz v0, :cond_2

    move-object v0, p0

    check-cast v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {v0}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/animation/Animation;

    instance-of v3, v2, Landroid/view/animation/TranslateAnimation;

    if-eqz v3, :cond_1

    move-object v3, v2

    check-cast v3, Landroid/view/animation/TranslateAnimation;

    return-object v3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic lambda$new$0()Lcom/android/server/wm/WindowAnimationSpec$TmpValues;
    .locals 2

    new-instance v0, Lcom/android/server/wm/WindowAnimationSpec$TmpValues;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/wm/WindowAnimationSpec$TmpValues;-><init>(Lcom/android/server/wm/WindowAnimationSpec$1;)V

    return-object v0
.end method


# virtual methods
.method public apply(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;J)V
    .locals 11

    iget-object v0, p0, Lcom/android/server/wm/WindowAnimationSpec;->mThreadLocalTmps:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowAnimationSpec$TmpValues;

    iget-object v1, v0, Lcom/android/server/wm/WindowAnimationSpec$TmpValues;->transformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->clear()V

    iget-object v1, p0, Lcom/android/server/wm/WindowAnimationSpec;->mAnimation:Landroid/view/animation/Animation;

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimationSpec$TmpValues;->transformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1, p3, p4, v2}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    iget-object v1, v0, Lcom/android/server/wm/WindowAnimationSpec$TmpValues;->transformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/WindowAnimationSpec;->mPosition:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/server/wm/WindowAnimationSpec;->mPosition:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v1, v0, Lcom/android/server/wm/WindowAnimationSpec$TmpValues;->transformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimationSpec$TmpValues;->floats:[F

    invoke-virtual {p1, p2, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;Landroid/graphics/Matrix;[F)Landroid/view/SurfaceControl$Transaction;

    iget-object v1, v0, Lcom/android/server/wm/WindowAnimationSpec$TmpValues;->transformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v1

    invoke-virtual {p1, p2, v1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/server/wm/WindowAnimationSpec;->mStackClipMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimationSpec$TmpValues;->transformation:Landroid/view/animation/Transformation;

    invoke-virtual {v2}, Landroid/view/animation/Transformation;->hasClipRect()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimationSpec$TmpValues;->transformation:Landroid/view/animation/Transformation;

    invoke-virtual {v2}, Landroid/view/animation/Transformation;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p1, p2, v2}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/WindowAnimationSpec;->mTmpRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/WindowAnimationSpec;->mStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimationSpec$TmpValues;->transformation:Landroid/view/animation/Transformation;

    invoke-virtual {v2}, Landroid/view/animation/Transformation;->hasClipRect()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/WindowAnimationSpec;->mTmpRect:Landroid/graphics/Rect;

    iget-object v3, v0, Lcom/android/server/wm/WindowAnimationSpec$TmpValues;->transformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3}, Landroid/view/animation/Transformation;->getClipRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/WindowAnimationSpec;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p2, v2}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    const/4 v1, 0x1

    :cond_2
    :goto_0
    const/4 v2, 0x0

    if-eqz v1, :cond_4

    iget-object v3, p0, Lcom/android/server/wm/WindowAnimationSpec;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v3}, Landroid/view/animation/Animation;->hasRoundedCorners()Z

    move-result v3

    if-eqz v3, :cond_4

    iget v3, p0, Lcom/android/server/wm/WindowAnimationSpec;->mWindowCornerRadius:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_4

    invoke-static {}, Lcom/android/server/wm/OpOneHandModeInjector;->isOneHandModeRunning()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/wm/WindowAnimationSpec;->mTmpRect:Landroid/graphics/Rect;

    invoke-static {}, Lcom/android/server/wm/OpOneHandModeInjector;->getOffsetY()I

    move-result v4

    invoke-virtual {v3, v2, v4}, Landroid/graphics/Rect;->offset(II)V

    iget-object v3, p0, Lcom/android/server/wm/WindowAnimationSpec;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p2, v3}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    :cond_3
    iget v3, p0, Lcom/android/server/wm/WindowAnimationSpec;->mWindowCornerRadius:F

    invoke-virtual {p1, p2, v3}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    :cond_4
    invoke-static {}, Lcom/android/server/wm/OpOneHandModeInjector;->getOneHandModeLock()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-static {}, Lcom/android/server/wm/OpOneHandModeInjector;->getOneHandModeLock()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_0
    iget-object v4, p0, Lcom/android/server/wm/WindowAnimationSpec;->mTask:Lcom/android/server/wm/Task;

    if-eqz v4, :cond_6

    invoke-static {}, Lcom/android/server/wm/OpOneHandModeInjector;->isOneHandModeAnimating()Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/server/wm/WindowAnimationSpec;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v4}, Lcom/android/server/wm/Task;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v4

    if-eqz v4, :cond_6

    new-instance v5, Landroid/view/animation/Transformation;

    invoke-direct {v5}, Landroid/view/animation/Transformation;-><init>()V

    invoke-virtual {v5}, Landroid/view/animation/Transformation;->clear()V

    iget-object v6, p0, Lcom/android/server/wm/WindowAnimationSpec;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v6, p3, p4, v5}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    invoke-virtual {v5}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wm/WindowAnimationSpec;->mPosition:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    int-to-float v7, v7

    iget-object v8, p0, Lcom/android/server/wm/WindowAnimationSpec;->mPosition:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->y:I

    int-to-float v8, v8

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    const/16 v6, 0x9

    new-array v6, v6, [F

    invoke-virtual {v5}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/graphics/Matrix;->getValues([F)V

    const/4 v7, 0x5

    aget v7, v6, v7

    float-to-int v7, v7

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    iget-object v9, p0, Lcom/android/server/wm/WindowAnimationSpec;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v9, v8}, Lcom/android/server/wm/Task;->getBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v8, v2, v7}, Landroid/graphics/Rect;->offset(II)V

    iget-object v2, p0, Lcom/android/server/wm/WindowAnimationSpec;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v2, v4, v8}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    iget-object v2, p0, Lcom/android/server/wm/WindowAnimationSpec;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget v9, p0, Lcom/android/server/wm/WindowAnimationSpec;->mWindowCornerRadius:F

    invoke-virtual {v2, v4, v9}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    iget-object v2, p0, Lcom/android/server/wm/WindowAnimationSpec;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    sget-boolean v2, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v2, :cond_5

    const-string v2, "WindowAnimationSpec"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "windowCrop="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ", hasSetWindowCrop="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/android/server/wm/WindowAnimationSpec;->mTask:Lcom/android/server/wm/Task;

    iget-boolean v10, v10, Lcom/android/server/wm/Task;->hasSetWindowCrop:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", mIsForceCancel="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/wm/OpOneHandModeInjector;->isForceCancellingOneHandMode()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", mTask="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/android/server/wm/WindowAnimationSpec;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v2, p0, Lcom/android/server/wm/WindowAnimationSpec;->mTask:Lcom/android/server/wm/Task;

    const/4 v9, 0x1

    iput-boolean v9, v2, Lcom/android/server/wm/Task;->hasSetWindowCrop:Z

    :cond_6
    monitor-exit v3

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_7
    :goto_1
    return-void
.end method

.method public calculateStatusBarTransitionStartTime()J
    .locals 6

    iget-object v0, p0, Lcom/android/server/wm/WindowAnimationSpec;->mAnimation:Landroid/view/animation/Animation;

    invoke-static {v0}, Lcom/android/server/wm/WindowAnimationSpec;->findTranslateAnimation(Landroid/view/animation/Animation;)Landroid/view/animation/TranslateAnimation;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/animation/TranslateAnimation;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/wm/WindowAnimationSpec;->findAlmostThereFraction(Landroid/view/animation/Interpolator;)F

    move-result v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0}, Landroid/view/animation/TranslateAnimation;->getStartOffset()J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-virtual {v0}, Landroid/view/animation/TranslateAnimation;->getDuration()J

    move-result-wide v4

    long-to-float v4, v4

    mul-float/2addr v4, v1

    float-to-long v4, v4

    add-long/2addr v2, v4

    const-wide/16 v4, 0x78

    sub-long/2addr v2, v4

    return-wide v2

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    return-wide v1
.end method

.method public canSkipFirstFrame()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/WindowAnimationSpec;->mCanSkipFirstFrame:Z

    return v0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowAnimationSpec;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    return-void
.end method

.method public getBackgroundColor()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/WindowAnimationSpec;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->getBackgroundColor()I

    move-result v0

    return v0
.end method

.method public getDuration()J
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/WindowAnimationSpec;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->computeDurationHint()J

    move-result-wide v0

    return-wide v0
.end method

.method public getShowWallpaper()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/WindowAnimationSpec;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->getShowWallpaper()Z

    move-result v0

    return v0
.end method

.method public needsEarlyWakeup()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/WindowAnimationSpec;->mIsAppAnimation:Z

    return v0
.end method

.method public writeToProtoInner(Landroid/util/proto/ProtoOutputStream;)V
    .locals 5

    const-wide v0, 0x10b00000001L

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/wm/WindowAnimationSpec;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide v3, 0x10900000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method
