.class public Lcom/android/server/wm/OpOneHandModeInjector;
.super Ljava/lang/Object;
.source "OpOneHandModeInjector.java"


# static fields
.field public static final ENABLED:Z

.field private static sOpOneHandMode:Lcom/android/server/wm/IOpOneHandMode;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x102

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/OpOneHandModeInjector;->ENABLED:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static computeFrameLw(Lcom/android/server/wm/WindowState;)V
    .locals 1

    invoke-static {}, Lcom/android/server/wm/OpOneHandModeInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/OpOneHandModeInjector;->sOpOneHandMode:Lcom/android/server/wm/IOpOneHandMode;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/android/server/wm/IOpOneHandMode;->computeFrameLw(Lcom/android/server/wm/WindowState;)V

    :cond_0
    return-void
.end method

.method public static continueAnimation()V
    .locals 1

    invoke-static {}, Lcom/android/server/wm/OpOneHandModeInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/OpOneHandModeInjector;->sOpOneHandMode:Lcom/android/server/wm/IOpOneHandMode;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/server/wm/IOpOneHandMode;->continueAnimation()V

    :cond_0
    return-void
.end method

.method public static forceCancelImmediately(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/android/server/wm/OpOneHandModeInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/OpOneHandModeInjector;->sOpOneHandMode:Lcom/android/server/wm/IOpOneHandMode;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/android/server/wm/IOpOneHandMode;->forceCancelImmediately(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static forceCancelOneHandMode(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/android/server/wm/OpOneHandModeInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/OpOneHandModeInjector;->sOpOneHandMode:Lcom/android/server/wm/IOpOneHandMode;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/android/server/wm/IOpOneHandMode;->forceCancelOneHandMode(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static getCornerRadius()I
    .locals 1

    invoke-static {}, Lcom/android/server/wm/OpOneHandModeInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/OpOneHandModeInjector;->sOpOneHandMode:Lcom/android/server/wm/IOpOneHandMode;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/server/wm/IOpOneHandMode;->getCornerRadius()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static getOffsetY()I
    .locals 1

    invoke-static {}, Lcom/android/server/wm/OpOneHandModeInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/OpOneHandModeInjector;->sOpOneHandMode:Lcom/android/server/wm/IOpOneHandMode;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/server/wm/IOpOneHandMode;->getOffsetY()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static getOneHandModeLock()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lcom/android/server/wm/OpOneHandModeInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/OpOneHandModeInjector;->sOpOneHandMode:Lcom/android/server/wm/IOpOneHandMode;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/server/wm/IOpOneHandMode;->getOneHandModeLock()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getOneHandModeScreenSize()Landroid/graphics/Rect;
    .locals 1

    invoke-static {}, Lcom/android/server/wm/OpOneHandModeInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/OpOneHandModeInjector;->sOpOneHandMode:Lcom/android/server/wm/IOpOneHandMode;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/server/wm/IOpOneHandMode;->getOneHandModeScreenSize()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static initInstance()V
    .locals 1

    sget-boolean v0, Lcom/android/server/wm/OpOneHandModeInjector;->ENABLED:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/wm/OpOneHandModeInjector;->sOpOneHandMode:Lcom/android/server/wm/IOpOneHandMode;

    if-nez v0, :cond_0

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_onehandmode:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/IOpOneHandMode;

    sput-object v0, Lcom/android/server/wm/OpOneHandModeInjector;->sOpOneHandMode:Lcom/android/server/wm/IOpOneHandMode;

    :cond_0
    return-void
.end method

.method public static initOneHandMode(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V
    .locals 1

    invoke-static {}, Lcom/android/server/wm/OpOneHandModeInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/OpOneHandModeInjector;->sOpOneHandMode:Lcom/android/server/wm/IOpOneHandMode;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1}, Lcom/android/server/wm/IOpOneHandMode;->initOneHandMode(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V

    :cond_0
    return-void
.end method

.method public static isForceCancellingOneHandMode()Z
    .locals 1

    invoke-static {}, Lcom/android/server/wm/OpOneHandModeInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/OpOneHandModeInjector;->sOpOneHandMode:Lcom/android/server/wm/IOpOneHandMode;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/server/wm/IOpOneHandMode;->isForceCancellingOneHandMode()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isOneHandModeAnimating()Z
    .locals 1

    invoke-static {}, Lcom/android/server/wm/OpOneHandModeInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/OpOneHandModeInjector;->sOpOneHandMode:Lcom/android/server/wm/IOpOneHandMode;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/server/wm/IOpOneHandMode;->isOneHandModeAnimating()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isOneHandModeRunning()Z
    .locals 1

    invoke-static {}, Lcom/android/server/wm/OpOneHandModeInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/OpOneHandModeInjector;->sOpOneHandMode:Lcom/android/server/wm/IOpOneHandMode;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/server/wm/IOpOneHandMode;->isOneHandModeRunning()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isOneHandModeShouldShowWallpaper()Z
    .locals 1

    invoke-static {}, Lcom/android/server/wm/OpOneHandModeInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/OpOneHandModeInjector;->sOpOneHandMode:Lcom/android/server/wm/IOpOneHandMode;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/server/wm/IOpOneHandMode;->isOneHandModeShouldShowWallpaper()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static notifyOneHandModeAnimationDone(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/android/server/wm/OpOneHandModeInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/OpOneHandModeInjector;->sOpOneHandMode:Lcom/android/server/wm/IOpOneHandMode;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/android/server/wm/IOpOneHandMode;->notifyOneHandModeAnimationDone(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static notifyTopResumedActivityChanged()V
    .locals 1

    invoke-static {}, Lcom/android/server/wm/OpOneHandModeInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/OpOneHandModeInjector;->sOpOneHandMode:Lcom/android/server/wm/IOpOneHandMode;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/server/wm/IOpOneHandMode;->notifyTopResumedActivityChanged()V

    :cond_0
    return-void
.end method

.method public static requestExitOneHandMode()Z
    .locals 1

    invoke-static {}, Lcom/android/server/wm/OpOneHandModeInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/OpOneHandModeInjector;->sOpOneHandMode:Lcom/android/server/wm/IOpOneHandMode;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/server/wm/IOpOneHandMode;->requestExitOneHandMode()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static requestOneHandModeByStatus(I)Z
    .locals 1

    invoke-static {}, Lcom/android/server/wm/OpOneHandModeInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/OpOneHandModeInjector;->sOpOneHandMode:Lcom/android/server/wm/IOpOneHandMode;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/android/server/wm/IOpOneHandMode;->requestOneHandModeByStatus(I)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static requestStartOneHandMode()Z
    .locals 1

    invoke-static {}, Lcom/android/server/wm/OpOneHandModeInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/OpOneHandModeInjector;->sOpOneHandMode:Lcom/android/server/wm/IOpOneHandMode;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/server/wm/IOpOneHandMode;->requestStartOneHandMode()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static resetCornerRadiusAndAnimationIfNeeded(Landroid/view/animation/Animation;IZF)F
    .locals 1

    invoke-static {}, Lcom/android/server/wm/OpOneHandModeInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/OpOneHandModeInjector;->sOpOneHandMode:Lcom/android/server/wm/IOpOneHandMode;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/android/server/wm/IOpOneHandMode;->resetCornerRadiusAndAnimationIfNeeded(Landroid/view/animation/Animation;IZF)F

    move-result v0

    return v0

    :cond_0
    return p3
.end method

.method public static updateOneHandDims(Lcom/android/server/wm/Dimmer;Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;I)Z
    .locals 1

    invoke-static {}, Lcom/android/server/wm/OpOneHandModeInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/OpOneHandModeInjector;->sOpOneHandMode:Lcom/android/server/wm/IOpOneHandMode;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/android/server/wm/IOpOneHandMode;->updateOneHandDims(Lcom/android/server/wm/Dimmer;Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;I)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
