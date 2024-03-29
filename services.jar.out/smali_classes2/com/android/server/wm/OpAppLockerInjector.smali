.class public Lcom/android/server/wm/OpAppLockerInjector;
.super Ljava/lang/Object;
.source "OpAppLockerInjector.java"


# static fields
.field public static final APP_LOCKER_EXTRA_NAME:Ljava/lang/String; = "OP"

.field public static final APP_LOCKER_USER_OFFSET:I = 0x2710

.field public static final CONFIRM_PACKAGE_NAME:Ljava/lang/String; = "com.oneplus.applocker"

.field public static final IS_APP_LOCKER_ENABLED:Z

.field public static final IS_SECOND_PRIVATE_PASSWORD_ENABLED:Z

.field public static mIsAppLockerEnabledForRecents:Z

.field private static sOpAppLocker:Lcom/android/server/wm/IOpAppLocker;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/16 v3, 0x20

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/wm/OpAppLockerInjector;->IS_APP_LOCKER_ENABLED:Z

    new-array v0, v0, [I

    const/16 v1, 0x11c

    aput v1, v0, v2

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/OpAppLockerInjector;->IS_SECOND_PRIVATE_PASSWORD_ENABLED:Z

    sput-boolean v2, Lcom/android/server/wm/OpAppLockerInjector;->mIsAppLockerEnabledForRecents:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addAppLockerPassedPackage(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/android/server/wm/OpAppLockerInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/OpAppLockerInjector;->sOpAppLocker:Lcom/android/server/wm/IOpAppLocker;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/android/server/wm/IOpAppLocker;->addAppLockerPassedPackage(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static clearAppLockerPassedList()V
    .locals 1

    invoke-static {}, Lcom/android/server/wm/OpAppLockerInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/OpAppLockerInjector;->sOpAppLocker:Lcom/android/server/wm/IOpAppLocker;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/server/wm/IOpAppLocker;->clearAppLockerPassedList()V

    :cond_0
    return-void
.end method

.method public static getAppLockerName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OP"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAppLockerRealUser(I)I
    .locals 1

    invoke-static {p0}, Lcom/android/server/wm/OpAppLockerInjector;->isAppLockerUser(I)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit16 v0, p0, -0x2710

    return v0

    :cond_0
    return p0
.end method

.method private static initInstance()V
    .locals 1

    sget-boolean v0, Lcom/android/server/wm/OpAppLockerInjector;->IS_APP_LOCKER_ENABLED:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/wm/OpAppLockerInjector;->sOpAppLocker:Lcom/android/server/wm/IOpAppLocker;

    if-nez v0, :cond_0

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_applocker:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/IOpAppLocker;

    sput-object v0, Lcom/android/server/wm/OpAppLockerInjector;->sOpAppLocker:Lcom/android/server/wm/IOpAppLocker;

    :cond_0
    return-void
.end method

.method public static initOpAppLocker(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .locals 1

    invoke-static {}, Lcom/android/server/wm/OpAppLockerInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/OpAppLockerInjector;->sOpAppLocker:Lcom/android/server/wm/IOpAppLocker;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/android/server/wm/IOpAppLocker;->initOpAppLocker(Lcom/android/server/wm/ActivityTaskManagerService;)V

    :cond_0
    return-void
.end method

.method public static isAppLocked(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 1

    invoke-static {}, Lcom/android/server/wm/OpAppLockerInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/OpAppLockerInjector;->sOpAppLocker:Lcom/android/server/wm/IOpAppLocker;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/android/server/wm/IOpAppLocker;->isAppLocked(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isAppLocked(Ljava/lang/String;I)Z
    .locals 1

    invoke-static {}, Lcom/android/server/wm/OpAppLockerInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/OpAppLockerInjector;->sOpAppLocker:Lcom/android/server/wm/IOpAppLocker;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1}, Lcom/android/server/wm/IOpAppLocker;->isAppLocked(Ljava/lang/String;I)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isAppLockerEnabled(I)Z
    .locals 1

    invoke-static {}, Lcom/android/server/wm/OpAppLockerInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/OpAppLockerInjector;->sOpAppLocker:Lcom/android/server/wm/IOpAppLocker;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/android/server/wm/IOpAppLocker;->isAppLockerEnabled(I)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isAppLockerUser(I)Z
    .locals 1

    sget-boolean v0, Lcom/android/server/wm/OpAppLockerInjector;->IS_SECOND_PRIVATE_PASSWORD_ENABLED:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x2710

    if-lt p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isKeyguardDone()Z
    .locals 1

    invoke-static {}, Lcom/android/server/wm/OpAppLockerInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/OpAppLockerInjector;->sOpAppLocker:Lcom/android/server/wm/IOpAppLocker;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/server/wm/IOpAppLocker;->isKeyguardDone()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isPackageInPassedList(Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Lcom/android/server/wm/OpAppLockerInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/OpAppLockerInjector;->sOpAppLocker:Lcom/android/server/wm/IOpAppLocker;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/android/server/wm/IOpAppLocker;->isPackageInPassedList(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isTopAppLocked(Landroid/app/ActivityManager$RecentTaskInfo;I)Z
    .locals 1

    invoke-static {}, Lcom/android/server/wm/OpAppLockerInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/OpAppLockerInjector;->sOpAppLocker:Lcom/android/server/wm/IOpAppLocker;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1}, Lcom/android/server/wm/IOpAppLocker;->isTopAppLocked(Landroid/app/ActivityManager$RecentTaskInfo;I)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static lockAppIfNeed(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z
    .locals 1

    invoke-static {}, Lcom/android/server/wm/OpAppLockerInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/OpAppLockerInjector;->sOpAppLocker:Lcom/android/server/wm/IOpAppLocker;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1}, Lcom/android/server/wm/IOpAppLocker;->lockAppIfNeed(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static lockTopApp(Lcom/android/server/wm/ActivityStack;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/android/server/wm/OpAppLockerInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/OpAppLockerInjector;->sOpAppLocker:Lcom/android/server/wm/IOpAppLocker;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1}, Lcom/android/server/wm/IOpAppLocker;->lockTopApp(Lcom/android/server/wm/ActivityStack;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static setKeyguardDone(Z)V
    .locals 1

    invoke-static {}, Lcom/android/server/wm/OpAppLockerInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/OpAppLockerInjector;->sOpAppLocker:Lcom/android/server/wm/IOpAppLocker;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/android/server/wm/IOpAppLocker;->setKeyguardDone(Z)V

    :cond_0
    return-void
.end method

.method public static showHint(Lcom/android/server/wm/ActivityRecord;)V
    .locals 1

    invoke-static {}, Lcom/android/server/wm/OpAppLockerInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/OpAppLockerInjector;->sOpAppLocker:Lcom/android/server/wm/IOpAppLocker;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/android/server/wm/IOpAppLocker;->showHint(Lcom/android/server/wm/ActivityRecord;)V

    :cond_0
    return-void
.end method

.method public static unLockAppIfNeed(Lcom/android/server/wm/ActivityRecord;ILandroid/content/Intent;)Z
    .locals 1

    invoke-static {}, Lcom/android/server/wm/OpAppLockerInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/OpAppLockerInjector;->sOpAppLocker:Lcom/android/server/wm/IOpAppLocker;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1, p2}, Lcom/android/server/wm/IOpAppLocker;->unLockAppIfNeed(Lcom/android/server/wm/ActivityRecord;ILandroid/content/Intent;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
