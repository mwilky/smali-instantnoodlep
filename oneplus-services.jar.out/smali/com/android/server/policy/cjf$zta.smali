.class Lcom/android/server/policy/cjf$zta;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/cjf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zta"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/cjf;


# direct methods
.method private constructor <init>(Lcom/android/server/policy/cjf;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/cjf$zta;->this$0:Lcom/android/server/policy/cjf;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/policy/cjf;Lcom/android/server/policy/oxb;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/policy/cjf$zta;-><init>(Lcom/android/server/policy/cjf;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x0

    const-string v1, "OpPowerKeyLaunchManager"

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string p1, "after 3s recover powerkey"

    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/policy/cjf$zta;->this$0:Lcom/android/server/policy/cjf;

    iput-boolean v0, p0, Lcom/android/server/policy/cjf;->HO:Z

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcom/oneplus/android/server/scene/ZenModeObserver;->getInstance()Lcom/oneplus/android/server/scene/ZenModeObserver;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oneplus/android/server/scene/ZenModeObserver;->isZenModeOn()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p0, "camera blocked by zen mode!"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p1, "Power button double tap gesture detected, launching camera."

    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/policy/cjf$zta;->this$0:Lcom/android/server/policy/cjf;

    iget-object p0, p0, Lcom/android/server/policy/cjf;->IO:Lcom/android/server/GestureLauncherService;

    const/4 p1, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/GestureLauncherService;->handleCameraGesture(ZI)Z

    goto :goto_0

    :pswitch_2
    iget-object p0, p0, Lcom/android/server/policy/cjf$zta;->this$0:Lcom/android/server/policy/cjf;

    invoke-static {p0}, Lcom/android/server/policy/cjf;->zta(Lcom/android/server/policy/cjf;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xc9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
