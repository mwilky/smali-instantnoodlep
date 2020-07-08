.class public Lcom/android/server/policy/vju;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/server/policy/IOpScreenshotImprovement;


# static fields
.field private static final HP:J = 0x2bcL

.field private static final JP:J = 0x1f4L

.field private static final KP:J = 0x7d0L

.field private static final TAG:Ljava/lang/String; = "OpScreenshotImprovement"


# instance fields
.field private AP:Z

.field private BP:Z

.field private CP:J

.field private EP:Z

.field private final FLAG_INTERACTIVE:I

.field private FP:J

.field private GP:J

.field private mContext:Landroid/content/Context;

.field private vP:Lcom/android/server/policy/OpPhoneWindowManager;

.field private wP:Z

.field private xP:Z

.field private yP:J

.field private zP:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x20000000

    iput v0, p0, Lcom/android/server/policy/vju;->FLAG_INTERACTIVE:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/policy/vju;->GP:J

    iput-object p1, p0, Lcom/android/server/policy/vju;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public init()V
    .locals 1

    invoke-static {}, Lcom/android/server/policy/OpPhoneWindowManagerInjector;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/OpPhoneWindowManager;

    iput-object v0, p0, Lcom/android/server/policy/vju;->vP:Lcom/android/server/policy/OpPhoneWindowManager;

    sget-boolean p0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz p0, :cond_0

    const-string p0, "OpScreenshotImprovement"

    const-string v0, "init OpScreenshotImprovement"

    invoke-static {p0, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public interceptAccessibilityShortcutChord(Z)V
    .locals 6

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/android/server/policy/vju;->wP:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/android/server/policy/vju;->BP:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/android/server/policy/vju;->EP:Z

    if-nez p1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/policy/vju;->yP:J

    const-wide/16 v4, 0x2bc

    add-long/2addr v2, v4

    cmp-long p1, v0, v2

    if-gtz p1, :cond_0

    iget-wide v2, p0, Lcom/android/server/policy/vju;->CP:J

    add-long/2addr v2, v4

    cmp-long p1, v0, v2

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/policy/vju;->AP:Z

    :cond_0
    return-void
.end method

.method public interceptKeyBeforeDispatching(Landroid/view/KeyEvent;Z)Ljava/lang/Long;
    .locals 17

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v1

    and-int/lit16 v1, v1, 0x400

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    iget-boolean v6, v0, Lcom/android/server/policy/vju;->wP:Z

    const-wide/16 v7, 0x64

    const-wide/16 v9, 0x2bc

    const-wide/16 v11, 0x7d0

    const-wide/16 v13, 0x0

    if-eqz v6, :cond_3

    iget-boolean v6, v0, Lcom/android/server/policy/vju;->EP:Z

    if-nez v6, :cond_3

    iget-wide v5, v0, Lcom/android/server/policy/vju;->yP:J

    move v15, v3

    iget-wide v2, v0, Lcom/android/server/policy/vju;->GP:J

    sub-long/2addr v5, v2

    cmp-long v2, v5, v11

    if-gez v2, :cond_2

    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, v13, v14}, Ljava/lang/Long;-><init>(J)V

    return-object v0

    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v5, v0, Lcom/android/server/policy/vju;->yP:J

    add-long/2addr v5, v9

    cmp-long v2, v2, v5

    if-gez v2, :cond_4

    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, v7, v8}, Ljava/lang/Long;-><init>(J)V

    return-object v0

    :cond_3
    move v15, v3

    :cond_4
    const/16 v2, 0x19

    move v3, v15

    if-ne v3, v2, :cond_6

    iget-boolean v5, v0, Lcom/android/server/policy/vju;->AP:Z

    if-eqz v5, :cond_6

    if-nez v4, :cond_5

    iput-wide v13, v0, Lcom/android/server/policy/vju;->GP:J

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/policy/vju;->AP:Z

    :cond_5
    new-instance v0, Ljava/lang/Long;

    const-wide/16 v1, -0x1

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    return-object v0

    :cond_6
    iget-boolean v5, v0, Lcom/android/server/policy/vju;->xP:Z

    if-eqz v5, :cond_8

    iget-boolean v5, v0, Lcom/android/server/policy/vju;->EP:Z

    if-nez v5, :cond_8

    iget-wide v5, v0, Lcom/android/server/policy/vju;->zP:J

    move/from16 v16, v3

    iget-wide v2, v0, Lcom/android/server/policy/vju;->GP:J

    sub-long/2addr v5, v2

    cmp-long v2, v5, v11

    if-gez v2, :cond_7

    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, v13, v14}, Ljava/lang/Long;-><init>(J)V

    return-object v0

    :cond_7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v5, v0, Lcom/android/server/policy/vju;->zP:J

    add-long/2addr v5, v9

    cmp-long v2, v2, v5

    if-gez v2, :cond_9

    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, v7, v8}, Ljava/lang/Long;-><init>(J)V

    return-object v0

    :cond_8
    move/from16 v16, v3

    :cond_9
    if-eqz p2, :cond_a

    if-nez v1, :cond_a

    move/from16 v1, v16

    const/16 v2, 0x19

    if-ne v1, v2, :cond_a

    iget-boolean v1, v0, Lcom/android/server/policy/vju;->AP:Z

    if-eqz v1, :cond_a

    if-nez v4, :cond_a

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/policy/vju;->AP:Z

    :cond_a
    const/4 v0, 0x0

    return-object v0
.end method

.method public interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)V
    .locals 5

    const/high16 v0, 0x20000000

    and-int/2addr p2, v0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    move p2, v1

    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/16 v4, 0x19

    if-ne v3, v4, :cond_3

    if-eqz v2, :cond_2

    if-eqz p2, :cond_5

    iget-boolean p2, p0, Lcom/android/server/policy/vju;->wP:Z

    if-nez p2, :cond_5

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result p2

    and-int/lit16 p2, p2, 0x400

    if-nez p2, :cond_5

    iput-boolean v0, p0, Lcom/android/server/policy/vju;->wP:Z

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/policy/vju;->yP:J

    iput-boolean v1, p0, Lcom/android/server/policy/vju;->AP:Z

    iget-boolean p1, p0, Lcom/android/server/policy/vju;->AP:Z

    if-eqz p1, :cond_5

    const-wide/16 p1, 0x0

    goto :goto_2

    :cond_2
    iput-boolean v1, p0, Lcom/android/server/policy/vju;->wP:Z

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide p1

    :goto_2
    iput-wide p1, p0, Lcom/android/server/policy/vju;->GP:J

    goto :goto_3

    :cond_3
    const/16 v4, 0x18

    if-ne v3, v4, :cond_5

    if-eqz v2, :cond_4

    if-eqz p2, :cond_5

    iget-boolean p2, p0, Lcom/android/server/policy/vju;->BP:Z

    if-nez p2, :cond_5

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result p2

    and-int/lit16 p2, p2, 0x400

    if-nez p2, :cond_5

    iput-boolean v0, p0, Lcom/android/server/policy/vju;->BP:Z

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/policy/vju;->CP:J

    iput-boolean v0, p0, Lcom/android/server/policy/vju;->xP:Z

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/policy/vju;->zP:J

    goto :goto_3

    :cond_4
    iput-boolean v1, p0, Lcom/android/server/policy/vju;->BP:Z

    iput-boolean v1, p0, Lcom/android/server/policy/vju;->xP:Z

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide p1

    goto :goto_2

    :cond_5
    :goto_3
    return-void
.end method

.method public interceptPowerKeyDown(Landroid/view/KeyEvent;Z)V
    .locals 0

    if-eqz p2, :cond_0

    iget-boolean p2, p0, Lcom/android/server/policy/vju;->EP:Z

    if-nez p2, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result p2

    and-int/lit16 p2, p2, 0x400

    if-nez p2, :cond_0

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/android/server/policy/vju;->EP:Z

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/policy/vju;->FP:J

    :cond_0
    return-void
.end method

.method public interceptPowerKeyUp()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/vju;->EP:Z

    return-void
.end method

.method public interceptScreenshotChord()V
    .locals 7

    iget-boolean v0, p0, Lcom/android/server/policy/vju;->EP:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/server/policy/vju;->wP:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget-wide v3, p0, Lcom/android/server/policy/vju;->yP:J

    iget-wide v5, p0, Lcom/android/server/policy/vju;->FP:J

    cmp-long v1, v3, v5

    if-lez v1, :cond_0

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x1f4

    cmp-long v1, v3, v5

    if-gez v1, :cond_0

    :goto_0
    move v0, v2

    goto :goto_1

    :cond_0
    iget-wide v3, p0, Lcom/android/server/policy/vju;->FP:J

    iget-wide v5, p0, Lcom/android/server/policy/vju;->yP:J

    cmp-long v1, v3, v5

    if-lez v1, :cond_1

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x2bc

    cmp-long v1, v3, v5

    if-gez v1, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/policy/vju;->wP:Z

    if-eqz v0, :cond_2

    iput-boolean v2, p0, Lcom/android/server/policy/vju;->AP:Z

    :cond_2
    iget-object p0, p0, Lcom/android/server/policy/vju;->vP:Lcom/android/server/policy/OpPhoneWindowManager;

    invoke-virtual {p0}, Lcom/android/server/policy/OpPhoneWindowManager;->postScreenshotRunnable()V

    :cond_3
    return-void
.end method
