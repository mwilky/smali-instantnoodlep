.class public Lcom/android/server/locksettings/LockSettingsStrongAuth;
.super Ljava/lang/Object;
.source "LockSettingsStrongAuth.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/locksettings/LockSettingsStrongAuth$StrongAuthTimeoutAlarmListener;,
        Lcom/android/server/locksettings/LockSettingsStrongAuth$WeakFaceIdleTimeoutAlarmListener;,
        Lcom/android/server/locksettings/LockSettingsStrongAuth$WeakFaceTimeoutAlarmListener;
    }
.end annotation


# static fields
.field public static DEFAULT_WEAK_FACE_IDLE_TIMEOUT_MS:J = 0x0L

.field public static DEFAULT_WEAK_FACE_TIMEOUT_MS:J = 0x0L

.field private static final MSG_REGISTER_TRACKER:I = 0x2

.field private static final MSG_REMOVE_USER:I = 0x4

.field private static final MSG_REQUIRE_STRONG_AUTH:I = 0x1

.field private static final MSG_SCHEDULE_STRONG_AUTH_IDLE_TIMEOUT:I = 0xb

.field private static final MSG_SCHEDULE_STRONG_AUTH_TIMEOUT:I = 0x5

.field private static final MSG_UNREGISTER_TRACKER:I = 0x3

.field private static final STRONG_AUTH_TIMEOUT_ALARM_TAG:Ljava/lang/String; = "LockSettingsStrongAuth.timeoutForUser"

.field private static final TAG:Ljava/lang/String; = "LockSettings"

.field private static final WEAK_FACE_IDLE_TIMEOUT_ALARM_TAG:Ljava/lang/String; = "LockSettingsWeakFace.idleTimeoutForUser"

.field private static final WEAK_FACE_TIMEOUT_ALARM_TAG:Ljava/lang/String; = "LockSettingsWeakFace.timeoutForUser"

.field private static final mWeakFaceEnabled:Z


# instance fields
.field private mAlarmManager:Landroid/app/AlarmManager;

.field private final mContext:Landroid/content/Context;

.field private final mDefaultStrongAuthFlags:I

.field private mFaceAlarm:Lcom/android/server/locksettings/LockSettingsStrongAuth$WeakFaceTimeoutAlarmListener;

.field private mFaceIdleAlarm:Lcom/android/server/locksettings/LockSettingsStrongAuth$WeakFaceIdleTimeoutAlarmListener;

.field private final mHandler:Landroid/os/Handler;

.field private final mStrongAuthForUser:Landroid/util/SparseIntArray;

.field private final mStrongAuthTimeoutAlarmListenerForUser:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/locksettings/LockSettingsStrongAuth$StrongAuthTimeoutAlarmListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mTrackers:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/app/trust/IStrongAuthTracker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x12c

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mWeakFaceEnabled:Z

    const-wide/32 v0, 0x5265c00

    sput-wide v0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->DEFAULT_WEAK_FACE_TIMEOUT_MS:J

    const-wide/32 v0, 0xdbba00

    sput-wide v0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->DEFAULT_WEAK_FACE_IDLE_TIMEOUT_MS:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mTrackers:Landroid/os/RemoteCallbackList;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mStrongAuthForUser:Landroid/util/SparseIntArray;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mStrongAuthTimeoutAlarmListenerForUser:Landroid/util/ArrayMap;

    new-instance v0, Lcom/android/server/locksettings/LockSettingsStrongAuth$1;

    invoke-direct {v0, p0}, Lcom/android/server/locksettings/LockSettingsStrongAuth$1;-><init>(Lcom/android/server/locksettings/LockSettingsStrongAuth;)V

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->getDefaultFlags(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mDefaultStrongAuthFlags:I

    const-class v0, Landroid/app/AlarmManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mAlarmManager:Landroid/app/AlarmManager;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/locksettings/LockSettingsStrongAuth;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->notifyWeakFaceTimeoutTrackers(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/locksettings/LockSettingsStrongAuth;Landroid/app/trust/IStrongAuthTracker;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->handleAddStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/locksettings/LockSettingsStrongAuth;Landroid/app/trust/IStrongAuthTracker;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->handleRemoveStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/locksettings/LockSettingsStrongAuth;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->handleRequireStrongAuth(II)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/locksettings/LockSettingsStrongAuth;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->handleRemoveUser(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/locksettings/LockSettingsStrongAuth;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->handleScheduleStrongAuthTimeout(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/locksettings/LockSettingsStrongAuth;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->handleScheduleStrongAuthIdleTimeout(I)V

    return-void
.end method

.method private handleAddStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mTrackers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mStrongAuthForUser:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mStrongAuthForUser:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mStrongAuthForUser:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    :try_start_0
    invoke-interface {p1, v2, v1}, Landroid/app/trust/IStrongAuthTracker;->onStrongAuthRequiredChanged(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    const-string v4, "LockSettings"

    const-string v5, "Exception while adding StrongAuthTracker."

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private handleRemoveStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mTrackers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    return-void
.end method

.method private handleRemoveUser(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mStrongAuthForUser:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mStrongAuthForUser:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->removeAt(I)V

    iget v1, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mDefaultStrongAuthFlags:I

    invoke-direct {p0, v1, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->notifyStrongAuthTrackers(II)V

    :cond_0
    return-void
.end method

.method private handleRequireStrongAuth(II)V
    .locals 2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mStrongAuthForUser:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mStrongAuthForUser:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->handleRequireStrongAuthOneUser(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    goto :goto_1

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->handleRequireStrongAuthOneUser(II)V

    :goto_1
    return-void
.end method

.method private handleRequireStrongAuthOneUser(II)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mStrongAuthForUser:Landroid/util/SparseIntArray;

    iget v1, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mDefaultStrongAuthFlags:I

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-nez p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    or-int v1, v0, p1

    :goto_0
    nop

    if-eq v0, v1, :cond_1

    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mStrongAuthForUser:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p2, v1}, Landroid/util/SparseIntArray;->put(II)V

    invoke-direct {p0, v1, p2}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->notifyStrongAuthTrackers(II)V

    :cond_1
    return-void
.end method

.method private handleScheduleStrongAuthIdleTimeout(I)V
    .locals 13

    if-nez p1, :cond_4

    sget-boolean v0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mWeakFaceEnabled:Z

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mFaceIdleAlarm:Lcom/android/server/locksettings/LockSettingsStrongAuth$WeakFaceIdleTimeoutAlarmListener;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v1, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    :cond_1
    sget-wide v0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->DEFAULT_WEAK_FACE_IDLE_TIMEOUT_MS:J

    const-string/jumbo v2, "sys.debug.face.idle"

    invoke-static {v2, v0, v1}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_2

    sput-wide v0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->DEFAULT_WEAK_FACE_IDLE_TIMEOUT_MS:J

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleScheduleStrongAuthIdleTimeout, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v3, Lcom/android/server/locksettings/LockSettingsStrongAuth;->DEFAULT_WEAK_FACE_IDLE_TIMEOUT_MS:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "LockSettings"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sget-wide v4, Lcom/android/server/locksettings/LockSettingsStrongAuth;->DEFAULT_WEAK_FACE_IDLE_TIMEOUT_MS:J

    add-long/2addr v2, v4

    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mFaceIdleAlarm:Lcom/android/server/locksettings/LockSettingsStrongAuth$WeakFaceIdleTimeoutAlarmListener;

    if-eqz v4, :cond_3

    iget-object v5, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v5, v4}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    goto :goto_0

    :cond_3
    new-instance v4, Lcom/android/server/locksettings/LockSettingsStrongAuth$WeakFaceIdleTimeoutAlarmListener;

    invoke-direct {v4, p0, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth$WeakFaceIdleTimeoutAlarmListener;-><init>(Lcom/android/server/locksettings/LockSettingsStrongAuth;I)V

    iput-object v4, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mFaceIdleAlarm:Lcom/android/server/locksettings/LockSettingsStrongAuth$WeakFaceIdleTimeoutAlarmListener;

    :goto_0
    iget-object v6, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v7, 0x3

    iget-object v11, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mFaceIdleAlarm:Lcom/android/server/locksettings/LockSettingsStrongAuth$WeakFaceIdleTimeoutAlarmListener;

    iget-object v12, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mHandler:Landroid/os/Handler;

    const-string v10, "LockSettingsWeakFace.idleTimeoutForUser"

    move-wide v8, v2

    invoke-virtual/range {v6 .. v12}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    return-void

    :cond_4
    :goto_1
    return-void
.end method

.method private handleScheduleStrongAuthTimeout(I)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mContext:Landroid/content/Context;

    const-string v3, "device_policy"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v1}, Landroid/app/admin/DevicePolicyManager;->getRequiredStrongAuthTimeout(Landroid/content/ComponentName;I)J

    move-result-wide v5

    add-long/2addr v3, v5

    iget-object v5, v0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mStrongAuthTimeoutAlarmListenerForUser:Landroid/util/ArrayMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/locksettings/LockSettingsStrongAuth$StrongAuthTimeoutAlarmListener;

    if-eqz v5, :cond_0

    iget-object v6, v0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v6, v5}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    goto :goto_0

    :cond_0
    new-instance v6, Lcom/android/server/locksettings/LockSettingsStrongAuth$StrongAuthTimeoutAlarmListener;

    invoke-direct {v6, v0, v1}, Lcom/android/server/locksettings/LockSettingsStrongAuth$StrongAuthTimeoutAlarmListener;-><init>(Lcom/android/server/locksettings/LockSettingsStrongAuth;I)V

    move-object v5, v6

    iget-object v6, v0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mStrongAuthTimeoutAlarmListenerForUser:Landroid/util/ArrayMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    iget-object v7, v0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v8, 0x3

    iget-object v13, v0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mHandler:Landroid/os/Handler;

    const-string v11, "LockSettingsStrongAuth.timeoutForUser"

    move-wide v9, v3

    move-object v12, v5

    invoke-virtual/range {v7 .. v13}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    if-nez v1, :cond_5

    sget-boolean v6, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mWeakFaceEnabled:Z

    if-nez v6, :cond_1

    goto :goto_2

    :cond_1
    sget-wide v6, Lcom/android/server/locksettings/LockSettingsStrongAuth;->DEFAULT_WEAK_FACE_TIMEOUT_MS:J

    const-string/jumbo v8, "sys.debug.face.disable"

    invoke-static {v8, v6, v7}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-eqz v8, :cond_2

    sput-wide v6, Lcom/android/server/locksettings/LockSettingsStrongAuth;->DEFAULT_WEAK_FACE_TIMEOUT_MS:J

    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleScheduleStrongAuthTimeout, "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v9, Lcom/android/server/locksettings/LockSettingsStrongAuth;->DEFAULT_WEAK_FACE_TIMEOUT_MS:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "LockSettings"

    invoke-static {v9, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sget-wide v10, Lcom/android/server/locksettings/LockSettingsStrongAuth;->DEFAULT_WEAK_FACE_TIMEOUT_MS:J

    add-long/2addr v8, v10

    cmp-long v10, v8, v3

    if-lez v10, :cond_3

    move-wide v8, v3

    :cond_3
    iget-object v10, v0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mFaceAlarm:Lcom/android/server/locksettings/LockSettingsStrongAuth$WeakFaceTimeoutAlarmListener;

    if-eqz v10, :cond_4

    iget-object v11, v0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v11, v10}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    goto :goto_1

    :cond_4
    new-instance v10, Lcom/android/server/locksettings/LockSettingsStrongAuth$WeakFaceTimeoutAlarmListener;

    invoke-direct {v10, v0, v1}, Lcom/android/server/locksettings/LockSettingsStrongAuth$WeakFaceTimeoutAlarmListener;-><init>(Lcom/android/server/locksettings/LockSettingsStrongAuth;I)V

    iput-object v10, v0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mFaceAlarm:Lcom/android/server/locksettings/LockSettingsStrongAuth$WeakFaceTimeoutAlarmListener;

    :goto_1
    iget-object v10, v0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v11, 0x3

    iget-object v15, v0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mFaceAlarm:Lcom/android/server/locksettings/LockSettingsStrongAuth$WeakFaceTimeoutAlarmListener;

    iget-object v14, v0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mHandler:Landroid/os/Handler;

    const-string v16, "LockSettingsWeakFace.timeoutForUser"

    move-wide v12, v8

    move-object/from16 v17, v14

    move-object/from16 v14, v16

    move-object/from16 v16, v17

    invoke-virtual/range {v10 .. v16}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    return-void

    :cond_5
    :goto_2
    return-void
.end method

.method private notifyStrongAuthTrackers(II)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mTrackers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    :goto_0
    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    :try_start_0
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mTrackers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Landroid/app/trust/IStrongAuthTracker;

    invoke-interface {v1, p1, p2}, Landroid/app/trust/IStrongAuthTracker;->onStrongAuthRequiredChanged(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    const-string v2, "LockSettings"

    const-string v3, "Exception while notifying StrongAuthTracker."

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    goto :goto_0

    :goto_1
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mTrackers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    throw v1

    :cond_0
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mTrackers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    nop

    return-void
.end method

.method private notifyWeakFaceTimeoutTrackers(Z)V
    .locals 4

    sget-boolean v0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mWeakFaceEnabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mTrackers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    :goto_0
    if-lez v0, :cond_1

    add-int/lit8 v0, v0, -0x1

    :try_start_0
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mTrackers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Landroid/app/trust/IStrongAuthTracker;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Landroid/app/trust/IStrongAuthTracker;->onWeakFaceTimeout(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    const-string v2, "LockSettings"

    const-string v3, "Exception while notifying Weak Face trackers."

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    goto :goto_0

    :goto_1
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mTrackers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    throw v1

    :cond_1
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mTrackers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    nop

    return-void
.end method


# virtual methods
.method public registerStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public removeUser(I)V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public reportSuccessfulStrongAuthUnlock(I)V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xdc

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/hardware/biometrics/BiometricManager;->hasBiometrics(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "LockSettings"

    const-string/jumbo v2, "resetLockout"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mContext:Landroid/content/Context;

    const-class v2, Landroid/hardware/biometrics/BiometricManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/biometrics/BiometricManager;

    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/hardware/biometrics/BiometricManager;->resetLockout([B)V

    const-string v3, "android.hardware.biometrics.face"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mContext:Landroid/content/Context;

    const-class v4, Landroid/hardware/face/FaceManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/face/FaceManager;

    invoke-virtual {v3}, Landroid/hardware/face/FaceManager;->revokeChallenge()I

    :cond_0
    invoke-direct {p0, v1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->notifyWeakFaceTimeoutTrackers(Z)V

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public reportUnlock(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "reportUnlock, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LockSettings"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mFaceIdleAlarm:Lcom/android/server/locksettings/LockSettingsStrongAuth$WeakFaceIdleTimeoutAlarmListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v1, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->requireStrongAuth(II)V

    return-void
.end method

.method public reportUserLocked(I)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "reportUserLocked, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LockSettings"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xb

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public requireStrongAuth(II)V
    .locals 2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    if-ltz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "userId must be an explicit user id or USER_ALL"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public unregisterStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
