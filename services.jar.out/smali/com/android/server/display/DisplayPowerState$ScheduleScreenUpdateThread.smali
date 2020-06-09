.class public Lcom/android/server/display/DisplayPowerState$ScheduleScreenUpdateThread;
.super Ljava/lang/Thread;
.source "DisplayPowerState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayPowerState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScheduleScreenUpdateThread"
.end annotation


# instance fields
.field private mScreenUpdateHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "ScheduleScreenUpdateThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerState$ScheduleScreenUpdateThread;->mScreenUpdateHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/display/DisplayPowerState$ScheduleScreenUpdateThread;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState$ScheduleScreenUpdateThread;->mScreenUpdateHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 1

    invoke-static {}, Landroid/os/Looper;->prepare()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerState$ScheduleScreenUpdateThread;->mScreenUpdateHandler:Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
