.class public Lcom/android/server/you/wtn;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/you/wtn$you;,
        Lcom/android/server/you/wtn$zta;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "OpVCWindow"

.field private static final XX:I = 0x145

.field private static final YX:I = 0xe1

.field static final ZX:I = 0x96

.field private static final _X:I = 0x12c

.field static final aY:I = 0x0

.field static final bY:I = 0x1

.field static final cY:I = 0x2

.field static final dY:I = 0x3


# instance fields
.field private GX:Lcom/android/server/you/wtn$you;

.field private HX:Z

.field private final IX:Landroid/graphics/Rect;

.field private JX:Landroid/animation/AnimatorSet;

.field private KX:Landroid/animation/AnimatorSet;

.field private LX:Landroid/animation/ValueAnimator;

.field private MX:Z

.field private NX:Z

.field private OX:Landroid/content/res/Configuration;

.field private QX:I

.field private RX:I

.field private SX:I

.field private UX:I

.field VX:Landroid/animation/Animator$AnimatorListener;

.field WX:Landroid/animation/Animator$AnimatorListener;

.field private volatile mContentHeight:I

.field private mContext:Landroid/content/Context;

.field private mCreated:Z

.field private mDecor:Landroid/view/View;

.field private mWindow:Landroid/view/Window;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/you/wtn;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/you/wtn;->mCreated:Z

    iput-boolean v0, p0, Lcom/android/server/you/wtn;->HX:Z

    iput v0, p0, Lcom/android/server/you/wtn;->mContentHeight:I

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/you/wtn;->IX:Landroid/graphics/Rect;

    iput-boolean v0, p0, Lcom/android/server/you/wtn;->MX:Z

    iput-boolean v0, p0, Lcom/android/server/you/wtn;->NX:Z

    const/16 v1, 0x3a

    iput v1, p0, Lcom/android/server/you/wtn;->QX:I

    const/16 v1, 0x145

    iput v1, p0, Lcom/android/server/you/wtn;->RX:I

    const/16 v1, 0x18

    iput v1, p0, Lcom/android/server/you/wtn;->SX:I

    const/16 v1, 0xe

    iput v1, p0, Lcom/android/server/you/wtn;->UX:I

    new-instance v1, Lcom/android/server/you/bio;

    invoke-direct {v1, p0}, Lcom/android/server/you/bio;-><init>(Lcom/android/server/you/wtn;)V

    iput-object v1, p0, Lcom/android/server/you/wtn;->VX:Landroid/animation/Animator$AnimatorListener;

    new-instance v1, Lcom/android/server/you/igw;

    invoke-direct {v1, p0}, Lcom/android/server/you/igw;-><init>(Lcom/android/server/you/wtn;)V

    iput-object v1, p0, Lcom/android/server/you/wtn;->WX:Landroid/animation/Animator$AnimatorListener;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OpVCWindow Construct Thread @ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/you/wtn;->logi(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/you/wtn;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/internal/policy/PhoneWindow;

    invoke-direct {v1, p1}, Lcom/android/internal/policy/PhoneWindow;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/you/wtn;->mWindow:Landroid/view/Window;

    const-string v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/android/server/you/wtn;->mWindowManager:Landroid/view/WindowManager;

    iget-object p1, p0, Lcom/android/server/you/wtn;->mWindow:Landroid/view/Window;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/Window;->requestFeature(I)Z

    iget-object p1, p0, Lcom/android/server/you/wtn;->mWindow:Landroid/view/Window;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/android/server/you/wtn;->mWindow:Landroid/view/Window;

    check-cast p1, Lcom/android/internal/policy/PhoneWindow;

    const v0, 0x50b0068

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/PhoneWindow;->setContentView(I)V

    new-instance p1, Landroid/content/res/Configuration;

    iget-object v0, p0, Lcom/android/server/you/wtn;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object p1, p0, Lcom/android/server/you/wtn;->OX:Landroid/content/res/Configuration;

    return-void
.end method

.method private Pq()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/you/wtn;->KX:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Cancel Dismiss Anim"

    invoke-static {v0}, Lcom/android/server/you/wtn;->logd(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/you/wtn;->NX:Z

    iget-object p0, p0, Lcom/android/server/you/wtn;->KX:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    return-void
.end method

.method private Qq()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/you/wtn;->JX:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Cancel Show Anim"

    invoke-static {v0}, Lcom/android/server/you/wtn;->logd(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/you/wtn;->MX:Z

    iget-object p0, p0, Lcom/android/server/you/wtn;->JX:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    return-void
.end method

.method private Rq()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/you/wtn;->mDecor:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/you/wtn;->HX:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/you/wtn;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/you/wtn;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/android/server/you/wtn;->mDecor:Landroid/view/View;

    invoke-interface {v2, v3}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    const-string v2, "detachWindow success"

    invoke-static {v2}, Lcom/android/server/you/wtn;->logd(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v1, p0, Lcom/android/server/you/wtn;->mDecor:Landroid/view/View;

    iget-object v2, p0, Lcom/android/server/you/wtn;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->closeAllPanels()V

    invoke-virtual {p0}, Lcom/android/server/you/wtn;->onStop()V

    iput-boolean v0, p0, Lcom/android/server/you/wtn;->HX:Z

    iput-object v1, p0, Lcom/android/server/you/wtn;->GX:Lcom/android/server/you/wtn$you;

    return-void

    :catchall_0
    move-exception v2

    iput-object v1, p0, Lcom/android/server/you/wtn;->mDecor:Landroid/view/View;

    iget-object v3, p0, Lcom/android/server/you/wtn;->mWindow:Landroid/view/Window;

    invoke-virtual {v3}, Landroid/view/Window;->closeAllPanels()V

    invoke-virtual {p0}, Lcom/android/server/you/wtn;->onStop()V

    iput-boolean v0, p0, Lcom/android/server/you/wtn;->HX:Z

    iput-object v1, p0, Lcom/android/server/you/wtn;->GX:Lcom/android/server/you/wtn$you;

    throw v2

    :cond_1
    :goto_0
    const-string p0, "detachWindow abort"

    invoke-static {p0}, Lcom/android/server/you/wtn;->logd(Ljava/lang/String;)V

    return-void
.end method

.method private Sq()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/you/wtn;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Force ReLayout, IME startY = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/you/wtn;->IX:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ContentH = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/you/wtn;->mContentHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/you/wtn;->logd(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/you/wtn;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/you/wtn;->zta(Landroid/view/WindowManager$LayoutParams;)V

    iget-object v1, p0, Lcom/android/server/you/wtn;->mWindowManager:Landroid/view/WindowManager;

    iget-object p0, p0, Lcom/android/server/you/wtn;->mDecor:Landroid/view/View;

    invoke-interface {v1, p0, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private Tq()V
    .locals 13

    const-string v0, "alpha"

    const-string v1, "Show Anim"

    invoke-static {v1}, Lcom/android/server/you/wtn;->logd(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/you/wtn;->mDecor:Landroid/view/View;

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/you/wtn;->JX:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p0, "Single Start Animation Limited"

    invoke-static {p0}, Lcom/android/server/you/wtn;->logi(Ljava/lang/String;)V

    return-void

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/server/you/wtn;->mDecor:Landroid/view/View;

    const v2, 0x50800ed

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/server/you/wtn;->mDecor:Landroid/view/View;

    const v3, 0x50800ec

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Landroid/view/animation/PathInterpolator;

    const v4, 0x3ecccccd    # 0.4f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    invoke-direct {v3, v4, v6, v4, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    const-string v4, "translationX"

    const/4 v7, 0x2

    new-array v8, v7, [F

    const/high16 v9, 0x42b80000    # 92.0f

    const/4 v10, 0x0

    aput v9, v8, v10

    const/4 v9, 0x1

    aput v6, v8, v9

    invoke-static {v1, v4, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    new-array v8, v7, [F

    aput v6, v8, v10

    aput v5, v8, v9

    invoke-static {v1, v0, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-string v8, "scaleX"

    new-array v11, v7, [F

    const/high16 v12, 0x3f000000    # 0.5f

    aput v12, v11, v10

    aput v5, v11, v9

    invoke-static {v2, v8, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    new-array v11, v7, [F

    aput v6, v11, v10

    aput v5, v11, v9

    invoke-static {v2, v0, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v4, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v1, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v8, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/android/server/you/wtn;->JX:Landroid/animation/AnimatorSet;

    iget-object v2, p0, Lcom/android/server/you/wtn;->JX:Landroid/animation/AnimatorSet;

    const/4 v3, 0x4

    new-array v3, v3, [Landroid/animation/Animator;

    aput-object v4, v3, v10

    aput-object v8, v3, v9

    aput-object v1, v3, v7

    const/4 v1, 0x3

    aput-object v0, v3, v1

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/android/server/you/wtn;->JX:Landroid/animation/AnimatorSet;

    const-wide/16 v1, 0x145

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/android/server/you/wtn;->JX:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/android/server/you/wtn;->WX:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-boolean v10, p0, Lcom/android/server/you/wtn;->MX:Z

    iget-object p0, p0, Lcom/android/server/you/wtn;->JX:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startAnim Exception "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/you/wtn;->logi(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method static synthetic bio(Lcom/android/server/you/wtn;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/you/wtn;->Sq()V

    return-void
.end method

.method static synthetic cno(Lcom/android/server/you/wtn;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/server/you/wtn;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic dma(Lcom/android/server/you/wtn;)Landroid/view/WindowManager;
    .locals 0

    iget-object p0, p0, Lcom/android/server/you/wtn;->mWindowManager:Landroid/view/WindowManager;

    return-object p0
.end method

.method static synthetic gck(Lcom/android/server/you/wtn;)Landroid/animation/ValueAnimator;
    .locals 0

    iget-object p0, p0, Lcom/android/server/you/wtn;->LX:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic igw(Lcom/android/server/you/wtn;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/server/you/wtn;->mDecor:Landroid/view/View;

    return-object p0
.end method

.method static synthetic kth(Lcom/android/server/you/wtn;)I
    .locals 0

    iget p0, p0, Lcom/android/server/you/wtn;->QX:I

    return p0
.end method

.method public static logd(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/android/server/you/wtn;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OpVCWindow"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static logi(Ljava/lang/String;)V
    .locals 1

    const-string v0, "OpVCWindow"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic rtg(Lcom/android/server/you/wtn;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/you/wtn;->Rq()V

    return-void
.end method

.method static synthetic sis(Lcom/android/server/you/wtn;)Lcom/android/server/you/wtn$you;
    .locals 0

    iget-object p0, p0, Lcom/android/server/you/wtn;->GX:Lcom/android/server/you/wtn$you;

    return-object p0
.end method

.method static synthetic ssp(Lcom/android/server/you/wtn;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/you/wtn;->MX:Z

    return p0
.end method

.method private tsu(Landroid/content/Context;I)I
    .locals 0

    int-to-float p0, p2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p2, p0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method static synthetic tsu(Lcom/android/server/you/wtn;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/you/wtn;->NX:Z

    return p0
.end method

.method private uc(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/you/wtn;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/you/wtn;->mDecor:Landroid/view/View;

    const v1, 0x50800ee

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object p0, p0, Lcom/android/server/you/wtn;->mDecor:Landroid/view/View;

    const p1, 0x50800ec

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_2

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    const p1, 0x507026a

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_2
    return-void
.end method

.method static synthetic wtn(Lcom/android/server/you/wtn;)Landroid/view/Window;
    .locals 0

    iget-object p0, p0, Lcom/android/server/you/wtn;->mWindow:Landroid/view/Window;

    return-object p0
.end method

.method static synthetic you(Lcom/android/server/you/wtn;)I
    .locals 0

    iget p0, p0, Lcom/android/server/you/wtn;->RX:I

    return p0
.end method

.method static synthetic you(Lcom/android/server/you/wtn;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    iput-object p1, p0, Lcom/android/server/you/wtn;->JX:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method private you(Landroid/view/View;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/server/you/rtg;

    invoke-direct {v1, p0, p1}, Lcom/android/server/you/rtg;-><init>(Lcom/android/server/you/wtn;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    new-instance v1, Lcom/android/server/you/ssp;

    invoke-direct {v1, p0}, Lcom/android/server/you/ssp;-><init>(Lcom/android/server/you/wtn;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    const v0, 0x50800ec

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance v0, Lcom/android/server/you/kth;

    invoke-direct {v0, p0}, Lcom/android/server/you/kth;-><init>(Lcom/android/server/you/wtn;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_1
    return-void
.end method

.method private you(Landroid/view/WindowManager$LayoutParams;)V
    .locals 3

    const/16 v0, 0x7dc

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v0, -0x2

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->format:I

    const/16 v1, 0x228

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v1, 0x50

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/4 v1, -0x1

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v0, 0x51

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const-string v0, "OpVerificationCodeWindow"

    invoke-virtual {p1, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget v0, p0, Lcom/android/server/you/wtn;->RX:I

    iget-object v1, p0, Lcom/android/server/you/wtn;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/server/you/wtn;->QX:I

    invoke-direct {p0, v1, v2}, Lcom/android/server/you/wtn;->tsu(Landroid/content/Context;I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/you/wtn;->mContentHeight:I

    invoke-virtual {p0, p1}, Lcom/android/server/you/wtn;->zta(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method static synthetic you(Lcom/android/server/you/wtn;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/you/wtn;->MX:Z

    return p1
.end method

.method static synthetic zta(Lcom/android/server/you/wtn;)I
    .locals 0

    iget p0, p0, Lcom/android/server/you/wtn;->mContentHeight:I

    return p0
.end method

.method static synthetic zta(Lcom/android/server/you/wtn;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/you/wtn;->mContentHeight:I

    return p1
.end method

.method static synthetic zta(Lcom/android/server/you/wtn;Landroid/content/Context;I)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/you/wtn;->tsu(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method static synthetic zta(Lcom/android/server/you/wtn;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    iput-object p1, p0, Lcom/android/server/you/wtn;->KX:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic zta(Lcom/android/server/you/wtn;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lcom/android/server/you/wtn;->LX:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic zta(Lcom/android/server/you/wtn;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/you/wtn;->NX:Z

    return p1
.end method


# virtual methods
.method public D(I)V
    .locals 12

    iget-object v0, p0, Lcom/android/server/you/wtn;->mDecor:Landroid/view/View;

    if-nez v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "dismiss abort-1. w = "

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/you/wtn;->mWindow:Landroid/view/Window;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/you/wtn;->logd(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/you/wtn;->KX:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "dismiss abort-2. w = "

    goto :goto_0

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/you/wtn;->mDecor:Landroid/view/View;

    const v1, 0x50800ec

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3ecccccd    # 0.4f

    const v3, 0x3e99999a    # 0.3f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    invoke-direct {v1, v2, v5, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    const-string v2, "alpha"

    const/4 v3, 0x2

    new-array v6, v3, [F

    const/4 v7, 0x0

    aput v4, v6, v7

    const/4 v8, 0x1

    aput v5, v6, v8

    invoke-static {v0, v2, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/high16 v6, -0x3c6a0000    # -300.0f

    const-string v9, "translationX"

    const/16 v10, 0xe1

    if-eq p1, v8, :cond_4

    const-string v11, "translationY"

    if-eq p1, v3, :cond_3

    const/4 v6, 0x3

    if-eq p1, v6, :cond_2

    :try_start_1
    new-array p1, v3, [F

    aput v5, p1, v7

    aput v5, p1, v8

    invoke-static {v0, v11, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const/16 v10, 0x96

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v0, 0x3f333333    # 0.7f

    const v3, 0x3f19999a    # 0.6f

    invoke-direct {v1, v0, v5, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v2, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_2

    :cond_2
    new-array p1, v3, [F

    aput v5, p1, v7

    const/high16 v3, 0x43960000    # 300.0f

    aput v3, p1, v8

    :goto_1
    invoke-static {v0, v9, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    goto :goto_2

    :cond_3
    new-array p1, v3, [F

    aput v5, p1, v7

    aput v6, p1, v8

    invoke-static {v0, v11, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    goto :goto_2

    :cond_4
    new-array p1, v3, [F

    aput v5, p1, v7

    aput v6, p1, v8

    goto :goto_1

    :goto_2
    invoke-virtual {p1, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/you/wtn;->KX:Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/android/server/you/wtn;->KX:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object p1, p0, Lcom/android/server/you/wtn;->KX:Landroid/animation/AnimatorSet;

    int-to-long v0, v10

    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object p1, p0, Lcom/android/server/you/wtn;->KX:Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/android/server/you/wtn;->VX:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-boolean v7, p0, Lcom/android/server/you/wtn;->NX:Z

    iget-object p0, p0, Lcom/android/server/you/wtn;->KX:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Fling Anim Exception "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/you/wtn;->logi(Ljava/lang/String;)V

    :goto_3
    return-void
.end method

.method public Fe()Z
    .locals 10

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/you/wtn;->OX:Landroid/content/res/Configuration;

    iget-object p0, p0, Lcom/android/server/you/wtn;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result p0

    and-int/lit16 v1, p0, 0x1000

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const/high16 v3, 0x20000000

    and-int/2addr v3, p0

    if-eqz v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v0

    :goto_1
    and-int/lit16 v4, p0, 0x400

    if-eqz v4, :cond_2

    move v4, v2

    goto :goto_2

    :cond_2
    move v4, v0

    :goto_2
    const/high16 v5, 0x40000000    # 2.0f

    and-int/2addr v5, p0

    if-eqz v5, :cond_3

    move v5, v2

    goto :goto_3

    :cond_3
    move v5, v0

    :goto_3
    and-int/lit16 p0, p0, 0x200

    if-eqz p0, :cond_4

    move p0, v2

    goto :goto_4

    :cond_4
    move p0, v0

    :goto_4
    if-nez v1, :cond_6

    if-nez v5, :cond_6

    if-eqz p0, :cond_5

    goto :goto_5

    :cond_5
    move v6, v0

    goto :goto_6

    :cond_6
    :goto_5
    move v6, v2

    :goto_6
    const-string v7, "Handle Change? %b \n Density %b | WinCfg %b| fontScale %b | uiMode %b | screenSize %b"

    const/4 v8, 0x6

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v8, v0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v8, v2

    const/4 v1, 0x2

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v8, v1

    const/4 v1, 0x3

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v8, v1

    const/4 v1, 0x4

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, v8, v1

    const/4 p0, 0x5

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v8, p0

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/you/wtn;->logd(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v6

    :catch_0
    return v0
.end method

.method dispatchOnCreate(Landroid/os/Bundle;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/you/wtn;->mCreated:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/you/wtn;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/you/wtn;->mCreated:Z

    :cond_0
    return-void
.end method

.method public hide()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/you/wtn;->mDecor:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/you/wtn;->Qq()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/you/wtn;->D(I)V

    goto :goto_0

    :cond_0
    const-string p0, "hide with null Decor"

    invoke-static {p0}, Lcom/android/server/you/wtn;->logd(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public isShowing()Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/you/wtn;->mDecor:Landroid/view/View;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method protected onStart()V
    .locals 0

    return-void
.end method

.method protected onStop()V
    .locals 0

    return-void
.end method

.method zta(Landroid/view/WindowManager$LayoutParams;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/you/wtn;->IX:Landroid/graphics/Rect;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    if-gtz v2, :cond_0

    goto :goto_0

    :cond_0
    const/16 v3, 0x31

    iput v3, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v0

    iget v0, p0, Lcom/android/server/you/wtn;->mContentHeight:I

    sub-int/2addr v2, v0

    iget-object v0, p0, Lcom/android/server/you/wtn;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/server/you/wtn;->UX:I

    invoke-direct {p0, v0, v1}, Lcom/android/server/you/wtn;->tsu(Landroid/content/Context;I)I

    move-result p0

    sub-int/2addr v2, p0

    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_1

    :cond_1
    :goto_0
    const/16 v0, 0x51

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, p0, Lcom/android/server/you/wtn;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/server/you/wtn;->SX:I

    invoke-direct {p0, v0, v1}, Lcom/android/server/you/wtn;->tsu(Landroid/content/Context;I)I

    move-result p0

    iput p0, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    :goto_1
    return-void
.end method

.method public zta(Lcom/android/server/you/wtn$you;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/you/wtn;->GX:Lcom/android/server/you/wtn$you;

    return-void
.end method

.method public zta(Ljava/lang/String;Landroid/graphics/Rect;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Show W "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/you/wtn;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/you/wtn;->logd(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/you/wtn;->IX:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-boolean p2, p0, Lcom/android/server/you/wtn;->HX:Z

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/android/server/you/wtn;->mDecor:Landroid/view/View;

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/android/server/you/wtn;->Pq()V

    invoke-direct {p0, p1}, Lcom/android/server/you/wtn;->uc(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/you/wtn;->Sq()V

    iget-object p1, p0, Lcom/android/server/you/wtn;->mDecor:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/server/you/wtn;->Tq()V

    :cond_0
    return-void

    :cond_1
    iget-boolean p2, p0, Lcom/android/server/you/wtn;->mCreated:Z

    if-nez p2, :cond_2

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lcom/android/server/you/wtn;->dispatchOnCreate(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/android/server/you/wtn;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget-object v0, p0, Lcom/android/server/you/wtn;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/View;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/server/you/wtn;->onStart()V

    iget-object p2, p0, Lcom/android/server/you/wtn;->mWindow:Landroid/view/Window;

    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/you/wtn;->mDecor:Landroid/view/View;

    iget-object p2, p0, Lcom/android/server/you/wtn;->mDecor:Landroid/view/View;

    if-nez p2, :cond_3

    return-void

    :cond_3
    invoke-direct {p0, p1}, Lcom/android/server/you/wtn;->uc(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/you/wtn;->mDecor:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/android/server/you/wtn;->you(Landroid/view/View;)V

    iget-object p1, p0, Lcom/android/server/you/wtn;->mWindow:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/you/wtn;->you(Landroid/view/WindowManager$LayoutParams;)V

    iget-object p2, p0, Lcom/android/server/you/wtn;->mWindowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/android/server/you/wtn;->mDecor:Landroid/view/View;

    invoke-interface {p2, v0, p1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/you/wtn;->HX:Z

    new-instance p1, Landroid/content/res/Configuration;

    iget-object p2, p0, Lcom/android/server/you/wtn;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object p1, p0, Lcom/android/server/you/wtn;->OX:Landroid/content/res/Configuration;

    invoke-direct {p0}, Lcom/android/server/you/wtn;->Tq()V

    return-void
.end method
