.class public Lcom/android/server/policy/les;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/server/policy/IOpShutdownChordManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/les$zta;
    }
.end annotation


# static fields
.field private static final FLAG_INTERACTIVE:I = 0x20000000

.field private static final JO:Z

.field private static final LO:Ljava/lang/String; = "quick_turn_on_voice_assistant"

.field private static final MSG_POWER_LONG_PRESS:I = 0xe

.field private static final MSG_POWER_VERY_LONG_PRESS:I = 0x19

.field private static OO:I = 0x0

.field private static final nP:J = 0x7d0L

.field private static final uP:J = 0x1f4L

.field private static final vP:J = 0x1f4L

.field private static final wP:J = 0x96L

.field private static final xP:J = 0x2bcL

.field private static final yP:I


# instance fields
.field private gO:Lcom/android/server/policy/PhoneWindowManager;

.field private hO:Z

.field private mA11yShortcutChordVolumeUpKeyTriggered:Z

.field private mContext:Landroid/content/Context;

.field private mDeviceProvisioned:Z

.field private mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field volatile mPowerKeyHandled:Z

.field private mScreenshotChordVolumeDownKeyTriggered:Z

.field private mVeryLongPressTimeout:I

.field private oP:Z

.field private pP:Z

.field private qP:Z

.field private rO:Z

.field private rP:J

.field private sO:Z

.field private sP:J

.field private tP:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x128

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/policy/les;->JO:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/les;->mLock:Ljava/lang/Object;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/policy/les;->tP:J

    return-void
.end method

.method static synthetic zta(Lcom/android/server/policy/les;)Lcom/android/server/policy/PhoneWindowManager;
    .locals 0

    iget-object p0, p0, Lcom/android/server/policy/les;->gO:Lcom/android/server/policy/PhoneWindowManager;

    return-object p0
.end method

.method private zta(Landroid/view/KeyEvent;Z)V
    .locals 6

    iget-boolean v0, p0, Lcom/android/server/policy/les;->sO:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/policy/les;->rO:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/policy/les;->oP:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/policy/les;->mScreenshotChordVolumeDownKeyTriggered:Z

    if-nez v0, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/policy/les;->rP:J

    const-wide/16 v4, 0x2bc

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gtz v2, :cond_2

    iget-wide v2, p0, Lcom/android/server/policy/les;->sP:J

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/les;->pP:Z

    iget-object v1, p0, Lcom/android/server/policy/les;->gO:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    iput-boolean v0, p0, Lcom/android/server/policy/les;->mPowerKeyHandled:Z

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result p1

    and-int/lit16 p1, p1, 0x80

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/server/policy/les;->gO:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->powerLongPress()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/server/policy/les;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xe

    invoke-virtual {p1, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    iget-object v1, p0, Lcom/android/server/policy/les;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, p1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-boolean p1, p0, Lcom/android/server/policy/les;->qP:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/server/policy/les;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x19

    invoke-virtual {p1, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    iget-object v1, p0, Lcom/android/server/policy/les;->mHandler:Landroid/os/Handler;

    iget v2, p0, Lcom/android/server/policy/les;->mVeryLongPressTimeout:I

    int-to-long v2, v2

    invoke-virtual {v1, p1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    if-nez p2, :cond_2

    iget-object p0, p0, Lcom/android/server/policy/les;->gO:Lcom/android/server/policy/PhoneWindowManager;

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBeganFromNonInteractive:Z

    :cond_2
    :goto_0
    return-void
.end method

.method private zta(Landroid/view/KeyEvent;ZZ)V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/les;->mPowerKeyHandled:Z

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result p1

    and-int/lit16 p1, p1, 0x80

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/server/policy/les;->gO:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->powerLongPress()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/server/policy/les;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xe

    invoke-virtual {p1, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    iget-object v1, p0, Lcom/android/server/policy/les;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/policy/les;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getDeviceGlobalActionKeyTimeout()J

    move-result-wide v2

    invoke-virtual {v1, p1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    if-eqz p3, :cond_1

    iget-object p1, p0, Lcom/android/server/policy/les;->mHandler:Landroid/os/Handler;

    const/16 p3, 0x19

    invoke-virtual {p1, p3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    iget-object p3, p0, Lcom/android/server/policy/les;->mHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/android/server/policy/les;->mVeryLongPressTimeout:I

    int-to-long v1, v1

    invoke-virtual {p3, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    if-nez p2, :cond_2

    iget-object p0, p0, Lcom/android/server/policy/les;->gO:Lcom/android/server/policy/PhoneWindowManager;

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBeganFromNonInteractive:Z

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public cancelPendingPowerKeyAction()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/policy/les;->sO:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/les;->gO:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    iget-object v0, p0, Lcom/android/server/policy/les;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/policy/les;->sO:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/policy/les;->qP:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/server/policy/les;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x19

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    return-void
.end method

.method public init(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/policy/les;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/server/policy/les;->gO:Lcom/android/server/policy/PhoneWindowManager;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/policy/les;->qP:Z

    iput p1, p0, Lcom/android/server/policy/les;->mVeryLongPressTimeout:I

    new-instance p2, Lcom/android/server/policy/les$zta;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/android/server/policy/les$zta;-><init>(Lcom/android/server/policy/les;Lcom/android/server/policy/bud;)V

    iput-object p2, p0, Lcom/android/server/policy/les;->mHandler:Landroid/os/Handler;

    sget-boolean p2, Lcom/android/server/policy/les;->JO:Z

    const/4 p3, 0x1

    if-eqz p2, :cond_0

    iput-boolean p3, p0, Lcom/android/server/policy/les;->hO:Z

    sput p3, Lcom/android/server/policy/les;->OO:I

    goto :goto_0

    :cond_0
    iput-boolean p1, p0, Lcom/android/server/policy/les;->hO:Z

    sput p1, Lcom/android/server/policy/les;->OO:I

    :goto_0
    sget-boolean p2, Lcom/android/server/policy/les;->JO:Z

    iput-boolean p2, p0, Lcom/android/server/policy/les;->sO:Z

    iget-object p2, p0, Lcom/android/server/policy/les;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, "device_provisioned"

    invoke-static {p2, v0, p1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    if-eqz p2, :cond_1

    move p1, p3

    :cond_1
    iput-boolean p1, p0, Lcom/android/server/policy/les;->mDeviceProvisioned:Z

    return-void
.end method

.method public interceptKeyBeforeDispatching(Landroid/view/KeyEvent;)Ljava/lang/Long;
    .locals 12

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x400

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 v3, 0x0

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    move p1, v3

    :goto_0
    iget-boolean v4, p0, Lcom/android/server/policy/les;->sO:Z

    if-eqz v4, :cond_5

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/android/server/policy/les;->rO:Z

    const-wide/16 v4, 0x0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/policy/les;->oP:Z

    if-nez v0, :cond_3

    iget-wide v6, p0, Lcom/android/server/policy/les;->sP:J

    iget-wide v8, p0, Lcom/android/server/policy/les;->tP:J

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x7d0

    cmp-long v0, v6, v8

    if-gez v0, :cond_2

    new-instance p0, Ljava/lang/Long;

    invoke-direct {p0, v4, v5}, Ljava/lang/Long;-><init>(J)V

    return-object p0

    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/server/policy/les;->sP:J

    const-wide/16 v10, 0x2bc

    add-long/2addr v8, v10

    cmp-long v0, v6, v8

    if-gez v0, :cond_3

    new-instance p0, Ljava/lang/Long;

    const-wide/16 v0, 0x64

    invoke-direct {p0, v0, v1}, Ljava/lang/Long;-><init>(J)V

    return-object p0

    :cond_3
    const/16 v0, 0x18

    if-ne v2, v0, :cond_5

    iget-boolean v0, p0, Lcom/android/server/policy/les;->pP:Z

    if-eqz v0, :cond_5

    if-nez p1, :cond_4

    iput-wide v4, p0, Lcom/android/server/policy/les;->tP:J

    iput-boolean v3, p0, Lcom/android/server/policy/les;->pP:Z

    :cond_4
    new-instance p0, Ljava/lang/Long;

    const-wide/16 v0, -0x1

    invoke-direct {p0, v0, v1}, Ljava/lang/Long;-><init>(J)V

    return-object p0

    :cond_5
    return-object v1
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

    if-eqz p2, :cond_6

    iget-boolean p2, p0, Lcom/android/server/policy/les;->mScreenshotChordVolumeDownKeyTriggered:Z

    if-nez p2, :cond_6

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result p1

    and-int/lit16 p1, p1, 0x400

    if-nez p1, :cond_6

    invoke-virtual {p0}, Lcom/android/server/policy/les;->cancelPendingPowerKeyAction()V

    iput-boolean v0, p0, Lcom/android/server/policy/les;->mScreenshotChordVolumeDownKeyTriggered:Z

    goto :goto_2

    :cond_2
    iput-boolean v1, p0, Lcom/android/server/policy/les;->mScreenshotChordVolumeDownKeyTriggered:Z

    goto :goto_2

    :cond_3
    const/16 v4, 0x18

    if-ne v3, v4, :cond_6

    if-eqz v2, :cond_5

    if-eqz p2, :cond_4

    iget-boolean v2, p0, Lcom/android/server/policy/les;->mA11yShortcutChordVolumeUpKeyTriggered:Z

    if-nez v2, :cond_4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v2

    and-int/lit16 v2, v2, 0x400

    if-nez v2, :cond_4

    iput-boolean v0, p0, Lcom/android/server/policy/les;->mA11yShortcutChordVolumeUpKeyTriggered:Z

    :cond_4
    iget-boolean v2, p0, Lcom/android/server/policy/les;->rO:Z

    if-nez v2, :cond_6

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v2

    and-int/lit16 v2, v2, 0x400

    if-nez v2, :cond_6

    iput-boolean v0, p0, Lcom/android/server/policy/les;->rO:Z

    iput-boolean v1, p0, Lcom/android/server/policy/les;->pP:Z

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/policy/les;->sP:J

    invoke-virtual {p0}, Lcom/android/server/policy/les;->cancelPendingPowerKeyAction()V

    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/les;->zta(Landroid/view/KeyEvent;Z)V

    goto :goto_2

    :cond_5
    iput-boolean v1, p0, Lcom/android/server/policy/les;->mA11yShortcutChordVolumeUpKeyTriggered:Z

    iput-boolean v1, p0, Lcom/android/server/policy/les;->rO:Z

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/policy/les;->tP:J

    :cond_6
    :goto_2
    return-void
.end method

.method public interceptPowerKeyDown(Landroid/view/KeyEvent;ZZZZI)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    if-eqz p3, :cond_4

    :cond_0
    if-eqz p4, :cond_4

    iget-boolean p3, p0, Lcom/android/server/policy/les;->sO:Z

    if-eqz p3, :cond_4

    iput-boolean v0, p0, Lcom/android/server/policy/les;->mPowerKeyHandled:Z

    iget-boolean p3, p0, Lcom/android/server/policy/les;->oP:Z

    const/4 p4, 0x1

    if-nez p3, :cond_1

    iput-boolean p5, p0, Lcom/android/server/policy/les;->qP:Z

    iput p6, p0, Lcom/android/server/policy/les;->mVeryLongPressTimeout:I

    iput-boolean p4, p0, Lcom/android/server/policy/les;->oP:Z

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/policy/les;->rP:J

    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/les;->zta(Landroid/view/KeyEvent;Z)V

    :cond_1
    iget-boolean p3, p0, Lcom/android/server/policy/les;->hO:Z

    if-eqz p3, :cond_2

    iget-boolean p3, p0, Lcom/android/server/policy/les;->mDeviceProvisioned:Z

    if-nez p3, :cond_3

    :cond_2
    iget-boolean p3, p0, Lcom/android/server/policy/les;->mPowerKeyHandled:Z

    if-nez p3, :cond_3

    iget-object p3, p0, Lcom/android/server/policy/les;->gO:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean p3, p3, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    if-nez p3, :cond_3

    invoke-direct {p0, p1, p2, p5}, Lcom/android/server/policy/les;->zta(Landroid/view/KeyEvent;ZZ)V

    :cond_3
    return p4

    :cond_4
    return v0
.end method

.method public interceptPowerKeyUp()Z
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/les;->oP:Z

    invoke-virtual {p0}, Lcom/android/server/policy/les;->cancelPendingPowerKeyAction()V

    iget-boolean v1, p0, Lcom/android/server/policy/les;->rO:Z

    if-eqz v1, :cond_0

    iget-boolean p0, p0, Lcom/android/server/policy/les;->sO:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0
.end method

.method public registerObserver(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V
    .locals 2

    const-string p0, "quick_turn_on_voice_assistant"

    invoke-static {p0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v1, p2, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string p0, "device_provisioned"

    invoke-static {p0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p1, p0, v1, p2, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public updateSettings(Landroid/content/ContentResolver;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/policy/les;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "quick_turn_on_voice_assistant"

    sget v2, Lcom/android/server/policy/les;->OO:I

    invoke-static {p1, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iput-boolean v1, p0, Lcom/android/server/policy/les;->hO:Z

    const-string v1, "device_provisioned"

    invoke-static {p1, v1, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lcom/android/server/policy/les;->mDeviceProvisioned:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
