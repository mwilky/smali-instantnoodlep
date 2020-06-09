.class public Lcom/android/server/policy/cjf;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/server/policy/IOpPowerKeyLaunchManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/cjf$zta;
    }
.end annotation


# static fields
.field private static final AO:I = 0x3

.field private static final BO:I = 0x5

.field static final CAMERA_POWER_DOUBLE_TAP_MAX_TIME_MS:J = 0x12cL

.field static final CO:I = 0x0

.field private static final DEBUG_ONEPLUS:Z

.field static final DO:I = 0x1

.field static final EO:I = 0x2

.field private static final FLAG_INTERACTIVE:I = 0x20000000

.field static final FO:I = 0x3

.field private static final GO:Landroid/net/Uri;

.field private static final HO:I = 0x0

.field private static final IO:I = 0x1

.field private static final JO:Z

.field private static final KO:J = 0x190L

.field private static final LO:Ljava/lang/String; = "quick_turn_on_voice_assistant"

.field private static OO:I = 0x0

.field static final POWER_SHORT_TAP_SEQUENCE_MAX_INTERVAL_MS:J = 0x1f4L

.field private static final TAG:Ljava/lang/String; = "OpPowerKeyLaunchManager"

.field private static final tO:I = 0x9c4

.field static final uO:F = 2.5f

.field static final vO:I = 0xc9

.field static final wO:I = 0xca

.field static final xO:I = 0xcb

.field static final yO:J = 0xbb8L

.field private static final zO:J = 0x78L


# instance fields
.field gO:Lcom/android/server/policy/PhoneWindowManager;

.field hO:Z

.field iO:Z

.field jO:I

.field kO:I

.field lO:Z

.field private mA11yShortcutChordVolumeUpKeyTriggered:Z

.field private mCameraDoubleTapPowerEnabled:Z

.field mContext:Landroid/content/Context;

.field private mEmergencyAffordanceManager:Lcom/android/internal/util/EmergencyAffordanceManager;

.field mHandler:Landroid/os/Handler;

.field mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

.field private mLastPowerDown:J

.field mO:Z

.field private mPowerButtonConsecutiveTaps:I

.field private mScreenshotChordVolumeDownKeyTriggered:Z

.field nO:Lcom/android/server/GestureLauncherService;

.field private oO:I

.field pO:I

.field private qO:I

.field private rO:Z

.field private sO:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/policy/cjf;->DEBUG_ONEPLUS:Z

    const-string v0, "content://finshell.wallet.quickstart.flag.provider.open/CARD_BAG_FLAG"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/policy/cjf;->GO:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x128

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/policy/cjf;->JO:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/policy/cjf$zta;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/policy/cjf$zta;-><init>(Lcom/android/server/policy/cjf;Lcom/android/server/policy/oxb;)V

    iput-object v0, p0, Lcom/android/server/policy/cjf;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/cjf;->hO:Z

    iput-boolean v0, p0, Lcom/android/server/policy/cjf;->iO:Z

    iput v0, p0, Lcom/android/server/policy/cjf;->jO:I

    iput-boolean v0, p0, Lcom/android/server/policy/cjf;->lO:Z

    iput v0, p0, Lcom/android/server/policy/cjf;->pO:I

    iput v0, p0, Lcom/android/server/policy/cjf;->qO:I

    return-void
.end method

.method private dq()Landroid/content/ComponentName;
    .locals 5

    const-string v0, "OpPowerKeyLaunchManager"

    new-instance v1, Lcom/android/internal/app/AssistUtils;

    iget-object v2, p0, Lcom/android/server/policy/cjf;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/app/AssistUtils;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/android/server/policy/cjf;->gO:Lcom/android/server/policy/PhoneWindowManager;

    iget v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    invoke-virtual {v1, v2}, Lcom/android/internal/app/AssistUtils;->getAssistComponentForUser(I)Landroid/content/ComponentName;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/policy/cjf;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    iget-boolean p0, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz p0, :cond_0

    return-object v1

    :cond_0
    const-string p0, "Maybe assist not available now"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    const-string p0, "Assist not found"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-object v2
.end method

.method private eq()Z
    .locals 9

    const-string v0, "HAS_ACTIVE_CARD"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/policy/cjf;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/server/policy/cjf;->GO:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result p0

    if-lez p0, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    aget-object p0, v0, v7

    invoke-interface {v8, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {v8, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "true"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_0
    return p0

    :cond_1
    if-eqz v8, :cond_2

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_1
    const-string v0, "OpPowerKeyLaunchManager"

    const-string v1, "DoubleTapPower: isWalletHasActiveCard query fail."

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v8, :cond_2

    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    return v7

    :goto_1
    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw p0
.end method

.method private fq()V
    .locals 6

    iget-boolean v0, p0, Lcom/android/server/policy/cjf;->hO:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/android/server/policy/cjf;->jO:I

    const/4 v1, 0x0

    const-string v2, "OpPowerKeyLaunchManager"

    const/4 v3, 0x1

    if-eq v0, v3, :cond_b

    const/4 v4, 0x4

    if-eq v0, v4, :cond_1

    goto/16 :goto_5

    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/cjf;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isPocketModeActive()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/policy/cjf;->iO:Z

    :cond_2
    iput v3, p0, Lcom/android/server/policy/cjf;->jO:I

    iget-object v0, p0, Lcom/android/server/policy/cjf;->gO:Lcom/android/server/policy/PhoneWindowManager;

    iput-boolean v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    iget-boolean v4, p0, Lcom/android/server/policy/cjf;->iO:Z

    if-nez v4, :cond_9

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/server/policy/cjf;->gO:Lcom/android/server/policy/PhoneWindowManager;

    iget v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    invoke-virtual {v0, v4}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardSecure(I)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-boolean v0, Lcom/android/server/policy/cjf;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_3

    const-string v0, "under keyguard secure"

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-direct {p0}, Lcom/android/server/policy/cjf;->dq()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "com.google.android"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v0, p0, Lcom/android/server/policy/cjf;->gO:Lcom/android/server/policy/PhoneWindowManager;

    sget-object v1, Lcom/android/server/policy/PhoneWindowManager;->POWER_LONG_PRESS_WITH_GOOGLE_ASSISTANT_HINT:Ljava/lang/String;

    :goto_0
    iget v2, p0, Lcom/android/server/policy/cjf;->kO:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->launchAssistAction(Ljava/lang/String;I)V

    move v1, v3

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/android/server/policy/PhoneWindowManager;->HEY_TAP_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/policy/cjf;->gO:Lcom/android/server/policy/PhoneWindowManager;

    sget-object v1, Lcom/android/server/policy/PhoneWindowManager;->HEY_TAP_PACKAGE_NAME:Ljava/lang/String;

    goto :goto_0

    :cond_5
    :goto_1
    if-eqz v1, :cond_6

    invoke-static {}, Lnet/oneplus/odm/OpDeviceManagerInjector;->getInstance()Lnet/oneplus/odm/OpDeviceManagerInjector;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/policy/cjf;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2, v3}, Lnet/oneplus/odm/OpDeviceManagerInjector;->preserveAssistantData(Landroid/content/Context;I)V

    :cond_6
    if-nez v1, :cond_9

    iget-object v0, p0, Lcom/android/server/policy/cjf;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_7

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->dismiss(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    :cond_7
    iput-boolean v3, p0, Lcom/android/server/policy/cjf;->lO:Z

    goto :goto_2

    :cond_8
    iget-object v0, p0, Lcom/android/server/policy/cjf;->gO:Lcom/android/server/policy/PhoneWindowManager;

    sget-object v1, Lcom/android/server/policy/PhoneWindowManager;->POWER_LONG_PRESS_WITH_ASSISTANT_HINT:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/policy/cjf;->kO:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->launchAssistAction(Ljava/lang/String;I)V

    invoke-static {}, Lnet/oneplus/odm/OpDeviceManagerInjector;->getInstance()Lnet/oneplus/odm/OpDeviceManagerInjector;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/policy/cjf;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v3}, Lnet/oneplus/odm/OpDeviceManagerInjector;->preserveAssistantData(Landroid/content/Context;I)V

    :cond_9
    :goto_2
    iget-object v0, p0, Lcom/android/server/policy/cjf;->gO:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mBeganFromNonInteractive:Z

    if-nez v0, :cond_f

    iget-boolean v0, p0, Lcom/android/server/policy/cjf;->sO:Z

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/android/server/policy/cjf;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Message;->setAsynchronous(Z)V

    iget-object v1, p0, Lcom/android/server/policy/cjf;->mHandler:Landroid/os/Handler;

    iget-boolean v2, p0, Lcom/android/server/policy/cjf;->iO:Z

    if-eqz v2, :cond_a

    const/high16 v2, 0x3fc00000    # 1.5f

    iget-object p0, p0, Lcom/android/server/policy/cjf;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewConfiguration;->getDeviceGlobalActionKeyTimeout()J

    move-result-wide v3

    long-to-float p0, v3

    mul-float/2addr p0, v2

    float-to-long v2, p0

    goto :goto_3

    :cond_a
    const-wide/16 v2, 0x9c4

    :goto_3
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_5

    :cond_b
    iget-boolean v0, p0, Lcom/android/server/policy/cjf;->iO:Z

    if-nez v0, :cond_e

    invoke-direct {p0}, Lcom/android/server/policy/cjf;->dq()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_e

    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/cjf;->gO:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getFocusedWindowState()Lcom/android/server/wm/WindowState;

    move-result-object v0

    sget-boolean v4, Lcom/android/server/policy/cjf;->DEBUG_ONEPLUS:Z

    if-eqz v4, :cond_c

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "focus window = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    if-eqz v0, :cond_e

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0}, Lcom/android/server/policy/cjf;->dq()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v4

    if-eqz v4, :cond_d

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/IApplicationToken;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Landroid/app/IActivityManager;->moveActivityTaskToBack(Landroid/os/IBinder;Z)Z

    goto :goto_4

    :cond_d
    const-string v0, "Focus app token is null"

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    const-string v3, "Exception when kill assist package"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_e
    :goto_4
    iput-boolean v1, p0, Lcom/android/server/policy/cjf;->lO:Z

    iget-object p0, p0, Lcom/android/server/policy/cjf;->gO:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->powerLongPress()V

    :cond_f
    :goto_5
    return-void
.end method

.method private you(Landroid/content/ContentResolver;)I
    .locals 2

    const-string p0, "oneplus_emergency_tap_power_gesture_times"

    invoke-static {p1, p0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    sget-boolean v0, Lcom/android/server/policy/cjf;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getEmergencyAffordanceTapPowerGestureTimes time"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OpPowerKeyLaunchManager"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return p1
.end method

.method static synthetic zta(Lcom/android/server/policy/cjf;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/cjf;->fq()V

    return-void
.end method


# virtual methods
.method Bd()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/cjf;->mA11yShortcutChordVolumeUpKeyTriggered:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/policy/cjf;->rO:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/android/server/policy/cjf;->mScreenshotChordVolumeDownKeyTriggered:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public synthetic Cd()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/cjf;->gO:Lcom/android/server/policy/PhoneWindowManager;

    sget-object v1, Lcom/android/server/policy/PhoneWindowManager;->POWER_LONG_PRESS_WITH_ASSISTANT_HINT:Ljava/lang/String;

    iget p0, p0, Lcom/android/server/policy/cjf;->kO:I

    invoke-virtual {v0, v1, p0}, Lcom/android/server/policy/PhoneWindowManager;->launchAssistAction(Ljava/lang/String;I)V

    return-void
.end method

.method public cancelPendingPowerKeyAction()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/policy/cjf;->hO:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/cjf;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/policy/cjf;->jO:I

    :cond_0
    return-void
.end method

.method public handleEmergency(Landroid/util/MutableBoolean;)Z
    .locals 6

    iget-boolean v0, p0, Lcom/android/server/policy/cjf;->mO:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iput-boolean v1, p1, Landroid/util/MutableBoolean;->value:Z

    return v1

    :cond_0
    iget v0, p0, Lcom/android/server/policy/cjf;->pO:I

    const/4 v2, 0x2

    if-eqz v0, :cond_5

    if-eq v0, v1, :cond_3

    const/16 v3, 0xca

    if-eq v0, v2, :cond_2

    const/4 v4, 0x3

    if-eq v0, v4, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/cjf;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_1

    :cond_2
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput v3, v0, Landroid/os/Message;->what:I

    iget-object v3, p0, Lcom/android/server/policy/cjf;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1f4

    :goto_0
    invoke-virtual {v3, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    :cond_3
    sget-boolean v0, Lcom/android/server/policy/cjf;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Power button "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/policy/cjf;->mPowerButtonConsecutiveTaps:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " tap gesture detected, launching Emergency Call"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "OpPowerKeyLaunchManager"

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    new-instance v0, Landroid/content/Intent;

    const-string v3, "oneplus.telephony.action.EMERGENCY_CALL"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x10000000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/policy/cjf;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    iput-boolean v1, p0, Lcom/android/server/policy/cjf;->mO:Z

    iget-object v0, p0, Lcom/android/server/policy/cjf;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xcb

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput v3, v0, Landroid/os/Message;->what:I

    iget-object v3, p0, Lcom/android/server/policy/cjf;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0xbb8

    goto :goto_0

    :cond_5
    :goto_1
    iget p0, p0, Lcom/android/server/policy/cjf;->pO:I

    const/4 v0, 0x0

    if-eq p0, v1, :cond_7

    if-ne p0, v2, :cond_6

    goto :goto_2

    :cond_6
    move p0, v0

    goto :goto_3

    :cond_7
    :goto_2
    move p0, v1

    :goto_3
    iget-boolean v2, p1, Landroid/util/MutableBoolean;->value:Z

    if-nez v2, :cond_8

    if-eqz p0, :cond_9

    :cond_8
    move v0, v1

    :cond_9
    iput-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    return p0
.end method

.method public init(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/cjf;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/server/policy/cjf;->gO:Lcom/android/server/policy/PhoneWindowManager;

    iget-object p1, p0, Lcom/android/server/policy/cjf;->gO:Lcom/android/server/policy/PhoneWindowManager;

    iget-object p1, p1, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    iput-object p1, p0, Lcom/android/server/policy/cjf;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    new-instance p1, Lcom/android/internal/util/EmergencyAffordanceManager;

    iget-object p2, p0, Lcom/android/server/policy/cjf;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/android/internal/util/EmergencyAffordanceManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/server/policy/cjf;->mEmergencyAffordanceManager:Lcom/android/internal/util/EmergencyAffordanceManager;

    sget-boolean p1, Lcom/android/server/policy/cjf;->JO:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/android/server/policy/cjf;->hO:Z

    sput p1, Lcom/android/server/policy/cjf;->OO:I

    sget-boolean p1, Lcom/android/server/policy/cjf;->JO:Z

    iput-boolean p1, p0, Lcom/android/server/policy/cjf;->sO:Z

    return-void
.end method

.method public initGestureLauncherService(Lcom/android/server/GestureLauncherService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/cjf;->nO:Lcom/android/server/GestureLauncherService;

    return-void
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

    iget-boolean p2, p0, Lcom/android/server/policy/cjf;->mScreenshotChordVolumeDownKeyTriggered:Z

    if-nez p2, :cond_6

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result p1

    and-int/lit16 p1, p1, 0x400

    if-nez p1, :cond_6

    iput-boolean v0, p0, Lcom/android/server/policy/cjf;->mScreenshotChordVolumeDownKeyTriggered:Z

    goto :goto_2

    :cond_2
    iput-boolean v1, p0, Lcom/android/server/policy/cjf;->mScreenshotChordVolumeDownKeyTriggered:Z

    goto :goto_2

    :cond_3
    const/16 v4, 0x18

    if-ne v3, v4, :cond_6

    if-eqz v2, :cond_5

    if-eqz p2, :cond_4

    iget-boolean p2, p0, Lcom/android/server/policy/cjf;->mA11yShortcutChordVolumeUpKeyTriggered:Z

    if-nez p2, :cond_4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result p2

    and-int/lit16 p2, p2, 0x400

    if-nez p2, :cond_4

    iput-boolean v0, p0, Lcom/android/server/policy/cjf;->mA11yShortcutChordVolumeUpKeyTriggered:Z

    :cond_4
    iget-boolean p2, p0, Lcom/android/server/policy/cjf;->rO:Z

    if-nez p2, :cond_6

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result p1

    and-int/lit16 p1, p1, 0x400

    if-nez p1, :cond_6

    iput-boolean v0, p0, Lcom/android/server/policy/cjf;->rO:Z

    goto :goto_2

    :cond_5
    iput-boolean v1, p0, Lcom/android/server/policy/cjf;->mA11yShortcutChordVolumeUpKeyTriggered:Z

    iput-boolean v1, p0, Lcom/android/server/policy/cjf;->rO:Z

    :cond_6
    :goto_2
    return-void
.end method

.method public interceptPowerKeyDown(Landroid/view/KeyEvent;)Z
    .locals 5

    invoke-direct {p0}, Lcom/android/server/policy/cjf;->dq()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/policy/cjf;->Bd()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/policy/cjf;->hO:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/android/server/policy/cjf;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    const-string v0, "OpPowerKeyLaunchManager"

    const-string v1, "interceptPowerKeyDown: start voice assist"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/cjf;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/policy/cjf;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    const/4 v2, 0x4

    iput v2, p0, Lcom/android/server/policy/cjf;->jO:I

    iget-object v2, p0, Lcom/android/server/policy/cjf;->mHandler:Landroid/os/Handler;

    iget-boolean v3, p0, Lcom/android/server/policy/cjf;->sO:Z

    if-eqz v3, :cond_1

    const-wide/16 v3, 0x190

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/server/policy/cjf;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getDeviceGlobalActionKeyTimeout()J

    move-result-wide v3

    :goto_0
    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result p1

    iput p1, p0, Lcom/android/server/policy/cjf;->kO:I

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public interceptPowerKeyUp()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/policy/cjf;->cancelPendingPowerKeyAction()V

    return-void
.end method

.method public isDoubleTapPowerWalletHasNoActiveCard()Z
    .locals 2

    iget v0, p0, Lcom/android/server/policy/cjf;->qO:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/server/policy/cjf;->eq()Z

    move-result p0

    xor-int/2addr p0, v1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onKeyguardDone()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/policy/cjf;->lO:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/cjf;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/policy/zta;

    invoke-direct {v1, p0}, Lcom/android/server/policy/zta;-><init>(Lcom/android/server/policy/cjf;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/cjf;->lO:Z

    :cond_0
    return-void
.end method

.method public processEmergencyTap(Landroid/view/KeyEvent;ZZ)Z
    .locals 11

    iget-boolean v0, p0, Lcom/android/server/policy/cjf;->mO:Z

    const-string v1, "OpPowerKeyLaunchManager"

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/cjf;->gO:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getFocusedWindowState()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v0

    const-string v3, "com.android.emergency"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "disable powerkey 3s when trigger emergency call"

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/cjf;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xcb

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    iput-boolean v2, p0, Lcom/android/server/policy/cjf;->mO:Z

    :cond_1
    iput-boolean p3, p0, Lcom/android/server/policy/cjf;->mCameraDoubleTapPowerEnabled:Z

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/server/policy/cjf;->mLastPowerDown:J

    sub-long/2addr v3, v5

    iget p3, p0, Lcom/android/server/policy/cjf;->oO:I

    const/4 v0, -0x1

    const/4 v5, 0x3

    if-ne p3, v0, :cond_3

    iget-object p3, p0, Lcom/android/server/policy/cjf;->mEmergencyAffordanceManager:Lcom/android/internal/util/EmergencyAffordanceManager;

    invoke-virtual {p3}, Lcom/android/internal/util/EmergencyAffordanceManager;->needsEmergencyAffordance()Z

    move-result p3

    if-eqz p3, :cond_2

    iput v5, p0, Lcom/android/server/policy/cjf;->oO:I

    goto :goto_0

    :cond_2
    iput v2, p0, Lcom/android/server/policy/cjf;->oO:I

    :cond_3
    :goto_0
    sget-boolean p3, Lcom/android/server/policy/cjf;->DEBUG_ONEPLUS:Z

    if-eqz p3, :cond_4

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "interceptPowerKeyDown mEmergencyTapPowerGestureTimes "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/policy/cjf;->oO:I

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "; mCameraDoubleTapPowerEnabled "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/policy/cjf;->mCameraDoubleTapPowerEnabled:Z

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "; mPowerButtonConsecutiveTaps "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/policy/cjf;->mPowerButtonConsecutiveTaps:I

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "; powerTapInterval "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget p3, p0, Lcom/android/server/policy/cjf;->oO:I

    const-wide/16 v0, 0x12c

    const-wide/16 v6, 0x78

    const/4 v8, 0x5

    const/4 v9, 0x1

    if-ne p3, v8, :cond_5

    iget-boolean p3, p0, Lcom/android/server/policy/cjf;->mCameraDoubleTapPowerEnabled:Z

    if-eqz p3, :cond_5

    iget p3, p0, Lcom/android/server/policy/cjf;->mPowerButtonConsecutiveTaps:I

    if-ne p3, v9, :cond_5

    cmp-long v10, v3, v0

    if-gez v10, :cond_5

    cmp-long v10, v3, v6

    if-lez v10, :cond_5

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/policy/cjf;->pO:I

    goto :goto_1

    :cond_5
    iget p3, p0, Lcom/android/server/policy/cjf;->oO:I

    if-nez p3, :cond_6

    iget-boolean p3, p0, Lcom/android/server/policy/cjf;->mCameraDoubleTapPowerEnabled:Z

    if-eqz p3, :cond_6

    cmp-long p3, v3, v0

    if-gez p3, :cond_6

    cmp-long p3, v3, v6

    if-lez p3, :cond_6

    iput v2, p0, Lcom/android/server/policy/cjf;->pO:I

    iget p3, p0, Lcom/android/server/policy/cjf;->mPowerButtonConsecutiveTaps:I

    :goto_1
    add-int/2addr p3, v9

    iput p3, p0, Lcom/android/server/policy/cjf;->mPowerButtonConsecutiveTaps:I

    goto :goto_2

    :cond_6
    cmp-long p3, v3, v6

    if-lez p3, :cond_9

    const-wide/16 v0, 0x1f4

    cmp-long p3, v3, v0

    if-gez p3, :cond_9

    iget p3, p0, Lcom/android/server/policy/cjf;->mPowerButtonConsecutiveTaps:I

    add-int/2addr p3, v9

    iput p3, p0, Lcom/android/server/policy/cjf;->mPowerButtonConsecutiveTaps:I

    iget p3, p0, Lcom/android/server/policy/cjf;->oO:I

    if-ne p3, v5, :cond_7

    iget p3, p0, Lcom/android/server/policy/cjf;->mPowerButtonConsecutiveTaps:I

    if-ne p3, v5, :cond_7

    iput v9, p0, Lcom/android/server/policy/cjf;->pO:I

    :cond_7
    iget p3, p0, Lcom/android/server/policy/cjf;->oO:I

    if-ne p3, v8, :cond_8

    iget p3, p0, Lcom/android/server/policy/cjf;->mPowerButtonConsecutiveTaps:I

    if-ne p3, v5, :cond_8

    iget-boolean p3, p0, Lcom/android/server/policy/cjf;->mCameraDoubleTapPowerEnabled:Z

    if-eqz p3, :cond_8

    iput v5, p0, Lcom/android/server/policy/cjf;->pO:I

    goto :goto_2

    :cond_8
    iget p3, p0, Lcom/android/server/policy/cjf;->oO:I

    if-ne p3, v8, :cond_a

    iget p3, p0, Lcom/android/server/policy/cjf;->mPowerButtonConsecutiveTaps:I

    if-ne p3, v8, :cond_a

    iput v9, p0, Lcom/android/server/policy/cjf;->pO:I

    goto :goto_2

    :cond_9
    iput v2, p0, Lcom/android/server/policy/cjf;->pO:I

    iput v9, p0, Lcom/android/server/policy/cjf;->mPowerButtonConsecutiveTaps:I

    :cond_a
    :goto_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/policy/cjf;->mLastPowerDown:J

    if-eqz p2, :cond_b

    iget p1, p0, Lcom/android/server/policy/cjf;->oO:I

    if-eq p1, v5, :cond_b

    iget p0, p0, Lcom/android/server/policy/cjf;->pO:I

    if-nez p0, :cond_b

    return v9

    :cond_b
    return v2
.end method

.method public registerObserver(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V
    .locals 2

    const-string p0, "quick_turn_on_voice_assistant"

    invoke-static {p0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v1, p2, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string p0, "oneplus_emergency_tap_power_gesture_times"

    invoke-static {p0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p1, p0, v1, p2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string p0, "emergency_affordance_needed"

    invoke-static {p0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p1, p0, v1, p2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string p0, "op_app_double_tap_power_gesture"

    invoke-static {p0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p1, p0, v1, p2, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public screenTurnedOff()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/cjf;->lO:Z

    return-void
.end method

.method public updateSettings(Landroid/content/ContentResolver;)V
    .locals 3

    sget v0, Lcom/android/server/policy/cjf;->OO:I

    const-string v1, "quick_turn_on_voice_assistant"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/policy/cjf;->hO:Z

    invoke-direct {p0, p1}, Lcom/android/server/policy/cjf;->you(Landroid/content/ContentResolver;)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/cjf;->oO:I

    const/4 v0, -0x2

    const-string v2, "op_app_double_tap_power_gesture"

    invoke-static {p1, v2, v1, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    iput p1, p0, Lcom/android/server/policy/cjf;->qO:I

    return-void
.end method
