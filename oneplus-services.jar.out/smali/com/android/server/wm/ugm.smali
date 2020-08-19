.class public Lcom/android/server/wm/ugm;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/server/wm/IOpActivityTaskManagerService;


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "OpActivityTaskManagerService"


# instance fields
.field private Aba:Z

.field private mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

.field private mWindowManager:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/wm/ugm;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/ugm;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/ugm;->Aba:Z

    return-void
.end method


# virtual methods
.method public getStartActivityFromRecents()Z
    .locals 2

    sget-boolean v0, Lcom/android/server/wm/ugm;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getStartActivityFromRecents(): isStartActivityFromRecents="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/ugm;->Aba:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpActivityTaskManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean p0, p0, Lcom/android/server/wm/ugm;->Aba:Z

    return p0
.end method

.method public getTopRunningPackageName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/ugm;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public init(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/ugm;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    return-void
.end method

.method public isKeyguardGoingAway()Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/ugm;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/KeyguardController;->isKeyguardGoingAway()Z

    move-result p0

    return p0
.end method

.method public setResumedActivityUncheckLocked(Lcom/android/server/wm/ActivityRecord;)V
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/16 v3, 0x36

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerServiceInjector;->getInstance()Lcom/android/server/am/ActivityManagerServiceInjector;

    move-result-object v1

    iget-object v3, p1, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/server/am/ActivityManagerServiceInjector;->setPCBVisibility(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/ugm;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    if-eqz v1, :cond_4

    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->mPendingOptionsFromNewActivityRecord:Landroid/app/ActivityOptions;

    const-string v1, "OpActivityTaskManagerService"

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getPackageName()Ljava/lang/String;

    move-result-object p1

    sget-boolean v3, Lcom/android/server/wm/ugm;->DEBUG:Z

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setResumedActivityUncheckLocked(): getPackageName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string v1, "OP_EXTRA_REMOTE_INPUT_DRAFT"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/android/server/wm/ugm;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerService;->setBooleanNotificationRemoteInputeDraft(Z)V

    goto :goto_0

    :cond_2
    sget-boolean p1, Lcom/android/server/wm/ugm;->DEBUG:Z

    if-eqz p1, :cond_3

    const-string p1, "setResumedActivityUncheckLocked(): pendingOptions=null"

    invoke-static {v1, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object p0, p0, Lcom/android/server/wm/ugm;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0, v2}, Lcom/android/server/wm/WindowManagerService;->setBooleanNotificationRemoteInputeDraft(Z)V

    :cond_4
    :goto_0
    return-void
.end method

.method public setStartActivityFromRecents(Z)V
    .locals 2

    sget-boolean v0, Lcom/android/server/wm/ugm;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setStartActivityFromRecents(): flag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpActivityTaskManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-boolean p1, p0, Lcom/android/server/wm/ugm;->Aba:Z

    return-void
.end method

.method public setWindowManager(Lcom/android/server/wm/WindowManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/ugm;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    return-void
.end method
