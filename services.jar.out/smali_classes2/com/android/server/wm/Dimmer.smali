.class Lcom/android/server/wm/Dimmer;
.super Ljava/lang/Object;
.source "Dimmer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/Dimmer$AlphaAnimationSpec;,
        Lcom/android/server/wm/Dimmer$SurfaceAnimatorStarter;,
        Lcom/android/server/wm/Dimmer$DimState;,
        Lcom/android/server/wm/Dimmer$DimAnimatable;
    }
.end annotation


# static fields
.field private static final DEFAULT_DIM_ANIM_DURATION:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field mDimState:Lcom/android/server/wm/Dimmer$DimState;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mHost:Lcom/android/server/wm/WindowContainer;

.field private mLastRequestedDimContainer:Lcom/android/server/wm/WindowContainer;

.field final mSurfaceAnimatorStarter:Lcom/android/server/wm/Dimmer$SurfaceAnimatorStarter;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowContainer;)V
    .locals 1

    sget-object v0, Lcom/android/server/wm/-$$Lambda$yACUZqn1Ak-GL14-Nu3kHUSaLX0;->INSTANCE:Lcom/android/server/wm/-$$Lambda$yACUZqn1Ak-GL14-Nu3kHUSaLX0;

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/Dimmer;-><init>(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/Dimmer$SurfaceAnimatorStarter;)V

    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/Dimmer$SurfaceAnimatorStarter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/Dimmer;->mHost:Lcom/android/server/wm/WindowContainer;

    iput-object p2, p0, Lcom/android/server/wm/Dimmer;->mSurfaceAnimatorStarter:Lcom/android/server/wm/Dimmer$SurfaceAnimatorStarter;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/Dimmer;)Lcom/android/server/wm/WindowContainer;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/Dimmer;->mHost:Lcom/android/server/wm/WindowContainer;

    return-object v0
.end method

.method private dim(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WindowContainer;IF)V
    .locals 3

    invoke-direct {p0, p2}, Lcom/android/server/wm/Dimmer;->getDimState(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/Dimmer$DimState;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    iget-object v1, v0, Lcom/android/server/wm/Dimmer$DimState;->mDimLayer:Landroid/view/SurfaceControl;

    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v2

    invoke-virtual {p1, v1, v2, p3}, Landroid/view/SurfaceControl$Transaction;->setRelativeLayer(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lcom/android/server/wm/Dimmer$DimState;->mDimLayer:Landroid/view/SurfaceControl;

    const v2, 0x7fffffff

    invoke-virtual {p1, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    :goto_0
    iget-object v1, v0, Lcom/android/server/wm/Dimmer$DimState;->mDimLayer:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v1, p4}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/wm/Dimmer$DimState;->mDimming:Z

    return-void
.end method

.method private getDimDuration(Lcom/android/server/wm/WindowContainer;)J
    .locals 3

    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    iget-object v0, p1, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimator;->getAnimation()Lcom/android/server/wm/AnimationAdapter;

    move-result-object v0

    if-nez v0, :cond_1

    const-wide/16 v1, 0xc8

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lcom/android/server/wm/AnimationAdapter;->getDurationHint()J

    move-result-wide v1

    :goto_0
    return-wide v1
.end method

.method private getDimState(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/Dimmer$DimState;
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/Dimmer;->mDimState:Lcom/android/server/wm/Dimmer$DimState;

    if-nez v0, :cond_1

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/wm/Dimmer;->makeDimLayer()Landroid/view/SurfaceControl;

    move-result-object v0

    new-instance v1, Lcom/android/server/wm/Dimmer$DimState;

    invoke-direct {v1, p0, v0}, Lcom/android/server/wm/Dimmer$DimState;-><init>(Lcom/android/server/wm/Dimmer;Landroid/view/SurfaceControl;)V

    iput-object v1, p0, Lcom/android/server/wm/Dimmer;->mDimState:Lcom/android/server/wm/Dimmer$DimState;

    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/Dimmer;->mDimState:Lcom/android/server/wm/Dimmer$DimState;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/server/wm/Dimmer$DimState;->mDontReset:Z
    :try_end_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "WindowManager"

    const-string v2, "OutOfResourcesException creating dim surface"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/server/wm/Dimmer;->mLastRequestedDimContainer:Lcom/android/server/wm/WindowContainer;

    iget-object v0, p0, Lcom/android/server/wm/Dimmer;->mDimState:Lcom/android/server/wm/Dimmer$DimState;

    return-object v0
.end method

.method private makeDimLayer()Landroid/view/SurfaceControl;
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/Dimmer;->mHost:Lcom/android/server/wm/WindowContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowContainer;->makeChildSurface(Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/Dimmer;->mHost:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->setColorLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dim Layer for - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/Dimmer;->mHost:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v0

    return-object v0
.end method

.method private startAnim(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/SurfaceAnimator;Landroid/view/SurfaceControl$Transaction;FF)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/wm/Dimmer;->mSurfaceAnimatorStarter:Lcom/android/server/wm/Dimmer$SurfaceAnimatorStarter;

    new-instance v1, Lcom/android/server/wm/LocalAnimationAdapter;

    new-instance v2, Lcom/android/server/wm/Dimmer$AlphaAnimationSpec;

    invoke-direct {p0, p1}, Lcom/android/server/wm/Dimmer;->getDimDuration(Lcom/android/server/wm/WindowContainer;)J

    move-result-wide v3

    invoke-direct {v2, p4, p5, v3, v4}, Lcom/android/server/wm/Dimmer$AlphaAnimationSpec;-><init>(FFJ)V

    iget-object v3, p0, Lcom/android/server/wm/Dimmer;->mHost:Lcom/android/server/wm/WindowContainer;

    iget-object v3, v3, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    invoke-direct {v1, v2, v3}, Lcom/android/server/wm/LocalAnimationAdapter;-><init>(Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;Lcom/android/server/wm/SurfaceAnimationRunner;)V

    const/4 v2, 0x0

    invoke-interface {v0, p2, p3, v1, v2}, Lcom/android/server/wm/Dimmer$SurfaceAnimatorStarter;->startAnimation(Lcom/android/server/wm/SurfaceAnimator;Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;Z)V

    return-void
.end method

.method private startDimEnter(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/SurfaceAnimator;Landroid/view/SurfaceControl$Transaction;)V
    .locals 6

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/Dimmer;->startAnim(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/SurfaceAnimator;Landroid/view/SurfaceControl$Transaction;FF)V

    return-void
.end method

.method private startDimExit(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/SurfaceAnimator;Landroid/view/SurfaceControl$Transaction;)V
    .locals 6

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/Dimmer;->startAnim(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/SurfaceAnimator;Landroid/view/SurfaceControl$Transaction;FF)V

    return-void
.end method


# virtual methods
.method dimAbove(Landroid/view/SurfaceControl$Transaction;F)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/server/wm/Dimmer;->dim(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WindowContainer;IF)V

    return-void
.end method

.method dimAbove(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WindowContainer;F)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/server/wm/Dimmer;->dim(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WindowContainer;IF)V

    return-void
.end method

.method dimBelow(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WindowContainer;F)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/server/wm/Dimmer;->dim(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WindowContainer;IF)V

    return-void
.end method

.method dontAnimateExit()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/Dimmer;->mDimState:Lcom/android/server/wm/Dimmer$DimState;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/wm/Dimmer$DimState;->mAnimateExit:Z

    :cond_0
    return-void
.end method

.method public getSurfaceAnimationRunner()Lcom/android/server/wm/SurfaceAnimationRunner;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/Dimmer;->mHost:Lcom/android/server/wm/WindowContainer;

    iget-object v0, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    return-object v0
.end method

.method resetDimStates()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/Dimmer;->mDimState:Lcom/android/server/wm/Dimmer$DimState;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/android/server/wm/Dimmer$DimState;->mDontReset:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/Dimmer;->mDimState:Lcom/android/server/wm/Dimmer$DimState;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/wm/Dimmer$DimState;->mDimming:Z

    :cond_0
    return-void
.end method

.method stopDim(Landroid/view/SurfaceControl$Transaction;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/Dimmer;->mDimState:Lcom/android/server/wm/Dimmer$DimState;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/server/wm/Dimmer$DimState;->mDimLayer:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Lcom/android/server/wm/Dimmer;->mDimState:Lcom/android/server/wm/Dimmer$DimState;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/wm/Dimmer$DimState;->isVisible:Z

    iput-boolean v1, v0, Lcom/android/server/wm/Dimmer$DimState;->mDontReset:Z

    :cond_0
    return-void
.end method

.method updateDims(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/Dimmer;->mDimState:Lcom/android/server/wm/Dimmer$DimState;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, v0, Lcom/android/server/wm/Dimmer$DimState;->mDimming:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/wm/Dimmer;->mDimState:Lcom/android/server/wm/Dimmer$DimState;

    iget-boolean v0, v0, Lcom/android/server/wm/Dimmer$DimState;->mAnimateExit:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/Dimmer;->mDimState:Lcom/android/server/wm/Dimmer$DimState;

    iget-object v0, v0, Lcom/android/server/wm/Dimmer$DimState;->mDimLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/Dimmer;->mDimState:Lcom/android/server/wm/Dimmer$DimState;

    iget-object v0, v0, Lcom/android/server/wm/Dimmer$DimState;->mDimLayer:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/Dimmer;->mLastRequestedDimContainer:Lcom/android/server/wm/WindowContainer;

    iget-object v2, p0, Lcom/android/server/wm/Dimmer;->mDimState:Lcom/android/server/wm/Dimmer$DimState;

    iget-object v2, v2, Lcom/android/server/wm/Dimmer$DimState;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    invoke-direct {p0, v0, v2, p1}, Lcom/android/server/wm/Dimmer;->startDimExit(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/SurfaceAnimator;Landroid/view/SurfaceControl$Transaction;)V

    :cond_2
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/Dimmer;->mDimState:Lcom/android/server/wm/Dimmer$DimState;

    return v1

    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/Dimmer;->mDimState:Lcom/android/server/wm/Dimmer$DimState;

    iget-object v0, v0, Lcom/android/server/wm/Dimmer$DimState;->mDimLayer:Landroid/view/SurfaceControl;

    iget v1, p2, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Lcom/android/server/wm/Dimmer;->mDimState:Lcom/android/server/wm/Dimmer$DimState;

    iget-object v0, v0, Lcom/android/server/wm/Dimmer$DimState;->mDimLayer:Landroid/view/SurfaceControl;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Lcom/android/server/wm/Dimmer;->mDimState:Lcom/android/server/wm/Dimmer$DimState;

    iget-boolean v0, v0, Lcom/android/server/wm/Dimmer$DimState;->isVisible:Z

    const/4 v1, 0x1

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/server/wm/Dimmer;->mDimState:Lcom/android/server/wm/Dimmer$DimState;

    iput-boolean v1, v0, Lcom/android/server/wm/Dimmer$DimState;->isVisible:Z

    iget-object v0, v0, Lcom/android/server/wm/Dimmer$DimState;->mDimLayer:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Lcom/android/server/wm/Dimmer;->mLastRequestedDimContainer:Lcom/android/server/wm/WindowContainer;

    iget-object v2, p0, Lcom/android/server/wm/Dimmer;->mDimState:Lcom/android/server/wm/Dimmer$DimState;

    iget-object v2, v2, Lcom/android/server/wm/Dimmer$DimState;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    invoke-direct {p0, v0, v2, p1}, Lcom/android/server/wm/Dimmer;->startDimEnter(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/SurfaceAnimator;Landroid/view/SurfaceControl$Transaction;)V

    :cond_4
    return v1
.end method
