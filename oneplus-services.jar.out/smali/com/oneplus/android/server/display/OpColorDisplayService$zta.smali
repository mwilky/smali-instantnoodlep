.class final Lcom/oneplus/android/server/display/OpColorDisplayService$zta;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/android/server/display/OpColorDisplayService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "zta"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/android/server/display/OpColorDisplayService;


# direct methods
.method public constructor <init>(Lcom/oneplus/android/server/display/OpColorDisplayService;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService$zta;->this$0:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    const/16 v1, 0xa

    const/16 v2, 0x9

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    iget-object p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService$zta;->this$0:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-static {p1}, Lcom/oneplus/android/server/display/OpColorDisplayService;->access$2800(Lcom/oneplus/android/server/display/OpColorDisplayService;)V

    :pswitch_1
    iget-object p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService$zta;->this$0:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-static {p0}, Lcom/oneplus/android/server/display/OpColorDisplayService;->access$2900(Lcom/oneplus/android/server/display/OpColorDisplayService;)V

    goto/16 :goto_2

    :pswitch_2
    iget-object p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService$zta;->this$0:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-static {p0, v3}, Lcom/oneplus/android/server/display/OpColorDisplayService;->access$2700(Lcom/oneplus/android/server/display/OpColorDisplayService;Z)V

    goto/16 :goto_2

    :pswitch_3
    iget-object p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService$zta;->this$0:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-static {p1}, Lcom/oneplus/android/server/display/OpColorDisplayService;->access$100(Lcom/oneplus/android/server/display/OpColorDisplayService;)Lcom/oneplus/android/server/display/gwm;

    move-result-object p1

    iget-object p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService$zta;->this$0:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-static {p0}, Lcom/oneplus/android/server/display/OpColorDisplayService;->access$1500(Lcom/oneplus/android/server/display/OpColorDisplayService;)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/oneplus/android/server/display/gwm;->L(I)V

    goto/16 :goto_2

    :pswitch_4
    iget-object p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService$zta;->this$0:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-static {p0}, Lcom/oneplus/android/server/display/OpColorDisplayService;->access$100(Lcom/oneplus/android/server/display/OpColorDisplayService;)Lcom/oneplus/android/server/display/gwm;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/android/server/display/gwm;->kf()V

    goto/16 :goto_2

    :pswitch_5
    iget-object p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService$zta;->this$0:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-static {p0}, Lcom/oneplus/android/server/display/OpColorDisplayService;->access$100(Lcom/oneplus/android/server/display/OpColorDisplayService;)Lcom/oneplus/android/server/display/gwm;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/oneplus/android/server/display/gwm;->B(Z)V

    goto/16 :goto_2

    :pswitch_6
    iget-object p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService$zta;->this$0:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-static {p0}, Lcom/oneplus/android/server/display/OpColorDisplayService;->access$100(Lcom/oneplus/android/server/display/OpColorDisplayService;)Lcom/oneplus/android/server/display/gwm;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/android/server/display/gwm;->yf()V

    goto/16 :goto_2

    :pswitch_7
    iget-object p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService$zta;->this$0:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-static {p0}, Lcom/oneplus/android/server/display/OpColorDisplayService;->access$100(Lcom/oneplus/android/server/display/OpColorDisplayService;)Lcom/oneplus/android/server/display/gwm;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/android/server/display/gwm;->xf()V

    goto/16 :goto_2

    :pswitch_8
    iget-object p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService$zta;->this$0:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-static {p1}, Lcom/oneplus/android/server/display/OpColorDisplayService;->access$2500(Lcom/oneplus/android/server/display/OpColorDisplayService;)Lcom/oneplus/android/server/display/rtg;

    move-result-object p1

    iget-object p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService$zta;->this$0:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-static {p0}, Lcom/oneplus/android/server/display/OpColorDisplayService;->access$2600(Lcom/oneplus/android/server/display/OpColorDisplayService;)F

    move-result p0

    invoke-virtual {p1, p0}, Lcom/oneplus/android/server/display/rtg;->updateAutoAssertiveDisplayStatus(F)V

    goto/16 :goto_2

    :pswitch_9
    iget-object p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService$zta;->this$0:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-static {p0}, Lcom/oneplus/android/server/display/OpColorDisplayService;->access$2500(Lcom/oneplus/android/server/display/OpColorDisplayService;)Lcom/oneplus/android/server/display/rtg;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/android/server/display/rtg;->disablelightSensor()V

    goto/16 :goto_2

    :pswitch_a
    iget-object p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService$zta;->this$0:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-static {p0}, Lcom/oneplus/android/server/display/OpColorDisplayService;->access$2400(Lcom/oneplus/android/server/display/OpColorDisplayService;)V

    goto/16 :goto_2

    :pswitch_b
    iget-object p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService$zta;->this$0:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-static {p1}, Lcom/oneplus/android/server/display/OpColorDisplayService;->access$2300(Lcom/oneplus/android/server/display/OpColorDisplayService;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService$zta;->this$0:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-static {p1}, Lcom/oneplus/android/server/display/OpColorDisplayService;->access$1100(Lcom/oneplus/android/server/display/OpColorDisplayService;)Lcom/oneplus/android/server/display/OpColorModeManager;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/oneplus/android/server/display/OpColorModeManager;->setActiveModesId(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService$zta;->this$0:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-static {p1}, Lcom/oneplus/android/server/display/OpColorDisplayService;->access$1100(Lcom/oneplus/android/server/display/OpColorDisplayService;)Lcom/oneplus/android/server/display/OpColorModeManager;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/oneplus/android/server/display/OpColorModeManager;->setActiveModesId(I)V

    iget-object p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService$zta;->this$0:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-static {p1, v3}, Lcom/oneplus/android/server/display/OpColorDisplayService;->access$000(Lcom/oneplus/android/server/display/OpColorDisplayService;Z)V

    :goto_0
    iget-object p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService$zta;->this$0:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-static {p1}, Lcom/oneplus/android/server/display/OpColorDisplayService;->access$100(Lcom/oneplus/android/server/display/OpColorDisplayService;)Lcom/oneplus/android/server/display/gwm;

    move-result-object p1

    iget-object p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService$zta;->this$0:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-static {p0}, Lcom/oneplus/android/server/display/OpColorDisplayService;->access$2300(Lcom/oneplus/android/server/display/OpColorDisplayService;)Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/oneplus/android/server/display/gwm;->G(Z)V

    goto/16 :goto_2

    :pswitch_c
    iget-object p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService$zta;->this$0:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-static {p0}, Lcom/oneplus/android/server/display/OpColorDisplayService;->access$100(Lcom/oneplus/android/server/display/OpColorDisplayService;)Lcom/oneplus/android/server/display/gwm;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/android/server/display/gwm;->uf()V

    goto/16 :goto_2

    :pswitch_d
    iget-object p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService$zta;->this$0:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-static {p0}, Lcom/oneplus/android/server/display/OpColorDisplayService;->access$100(Lcom/oneplus/android/server/display/OpColorDisplayService;)Lcom/oneplus/android/server/display/gwm;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/android/server/display/gwm;->rf()V

    goto/16 :goto_2

    :pswitch_e
    iget-object p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService$zta;->this$0:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-static {p1}, Lcom/oneplus/android/server/display/OpColorDisplayService;->access$1100(Lcom/oneplus/android/server/display/OpColorDisplayService;)Lcom/oneplus/android/server/display/OpColorModeManager;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/oneplus/android/server/display/OpColorModeManager;->setActiveModesId(I)V

    iget-object p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService$zta;->this$0:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-static {p0}, Lcom/oneplus/android/server/display/OpColorDisplayService;->access$100(Lcom/oneplus/android/server/display/OpColorDisplayService;)Lcom/oneplus/android/server/display/gwm;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/android/server/display/gwm;->sf()V

    goto/16 :goto_2

    :pswitch_f
    iget-object p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService$zta;->this$0:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-static {p1}, Lcom/oneplus/android/server/display/OpColorDisplayService;->access$1100(Lcom/oneplus/android/server/display/OpColorDisplayService;)Lcom/oneplus/android/server/display/OpColorModeManager;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/oneplus/android/server/display/OpColorModeManager;->setActiveModesId(I)V

    iget-object p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService$zta;->this$0:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-static {p1, v3}, Lcom/oneplus/android/server/display/OpColorDisplayService;->access$000(Lcom/oneplus/android/server/display/OpColorDisplayService;Z)V

    iget-object p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService$zta;->this$0:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-static {p0}, Lcom/oneplus/android/server/display/OpColorDisplayService;->access$100(Lcom/oneplus/android/server/display/OpColorDisplayService;)Lcom/oneplus/android/server/display/gwm;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/android/server/display/gwm;->qf()V

    goto/16 :goto_2

    :pswitch_10
    new-array p1, v0, [I

    const/16 v1, 0x10f

    aput v1, p1, v3

    invoke-static {p1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result p1

    if-nez p1, :cond_3

    new-array p1, v0, [I

    const/16 v0, 0x10e

    aput v0, p1, v3

    invoke-static {p1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result p1

    if-eqz p1, :cond_1

    goto/16 :goto_2

    :cond_1
    iget-object p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService$zta;->this$0:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-static {p0}, Lcom/oneplus/android/server/display/OpColorDisplayService;->access$100(Lcom/oneplus/android/server/display/OpColorDisplayService;)Lcom/oneplus/android/server/display/gwm;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/android/server/display/gwm;->setCustomColorTemperature()V

    goto/16 :goto_2

    :pswitch_11
    iget-object p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService$zta;->this$0:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-static {p0}, Lcom/oneplus/android/server/display/OpColorDisplayService;->access$100(Lcom/oneplus/android/server/display/OpColorDisplayService;)Lcom/oneplus/android/server/display/gwm;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/android/server/display/gwm;->recoverOneplusColorMatrix()V

    goto/16 :goto_2

    :pswitch_12
    iget-object p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService$zta;->this$0:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-static {p0}, Lcom/oneplus/android/server/display/OpColorDisplayService;->access$2200(Lcom/oneplus/android/server/display/OpColorDisplayService;)V

    goto/16 :goto_2

    :pswitch_13
    iget-object p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService$zta;->this$0:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-static {p0}, Lcom/oneplus/android/server/display/OpColorDisplayService;->access$2100(Lcom/oneplus/android/server/display/OpColorDisplayService;)V

    goto/16 :goto_2

    :pswitch_14
    iget-object p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService$zta;->this$0:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-static {p0}, Lcom/oneplus/android/server/display/OpColorDisplayService;->access$2000(Lcom/oneplus/android/server/display/OpColorDisplayService;)V

    goto/16 :goto_2

    :pswitch_15
    iget-object p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService$zta;->this$0:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-static {p0, v3}, Lcom/oneplus/android/server/display/OpColorDisplayService;->access$1900(Lcom/oneplus/android/server/display/OpColorDisplayService;Z)V

    goto/16 :goto_2

    :pswitch_16
    iget-object p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService$zta;->this$0:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-static {p0, v0}, Lcom/oneplus/android/server/display/OpColorDisplayService;->access$1900(Lcom/oneplus/android/server/display/OpColorDisplayService;Z)V

    goto/16 :goto_2

    :pswitch_17
    iget-object p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService$zta;->this$0:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-static {p0, v3}, Lcom/oneplus/android/server/display/OpColorDisplayService;->access$000(Lcom/oneplus/android/server/display/OpColorDisplayService;Z)V

    goto/16 :goto_2

    :pswitch_18
    iget-object p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService$zta;->this$0:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-static {p0}, Lcom/oneplus/android/server/display/OpColorDisplayService;->access$1800(Lcom/oneplus/android/server/display/OpColorDisplayService;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/oneplus/android/server/display/OpColorDisplayService;->resetStatus(I)V

    goto :goto_2

    :pswitch_19
    iget-object p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService$zta;->this$0:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-static {p1}, Lcom/oneplus/android/server/display/OpColorDisplayService;->access$1100(Lcom/oneplus/android/server/display/OpColorDisplayService;)Lcom/oneplus/android/server/display/OpColorModeManager;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/oneplus/android/server/display/OpColorModeManager;->setActiveModesId(I)V

    iget-object p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService$zta;->this$0:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-static {p1, v3}, Lcom/oneplus/android/server/display/OpColorDisplayService;->access$000(Lcom/oneplus/android/server/display/OpColorDisplayService;Z)V

    iget-object p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService$zta;->this$0:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-static {p0}, Lcom/oneplus/android/server/display/OpColorDisplayService;->access$100(Lcom/oneplus/android/server/display/OpColorDisplayService;)Lcom/oneplus/android/server/display/gwm;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/android/server/display/gwm;->vf()V

    goto :goto_2

    :pswitch_1a
    iget-object p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService$zta;->this$0:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-static {p1}, Lcom/oneplus/android/server/display/OpColorDisplayService;->access$1100(Lcom/oneplus/android/server/display/OpColorDisplayService;)Lcom/oneplus/android/server/display/OpColorModeManager;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/oneplus/android/server/display/OpColorModeManager;->setActiveModesId(I)V

    iget-object p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService$zta;->this$0:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-static {p0}, Lcom/oneplus/android/server/display/OpColorDisplayService;->access$100(Lcom/oneplus/android/server/display/OpColorDisplayService;)Lcom/oneplus/android/server/display/gwm;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/android/server/display/gwm;->tf()V

    goto :goto_2

    :pswitch_1b
    iget-object p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService$zta;->this$0:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-static {p1}, Lcom/oneplus/android/server/display/OpColorDisplayService;->access$1700(Lcom/oneplus/android/server/display/OpColorDisplayService;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService$zta;->this$0:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-static {p1}, Lcom/oneplus/android/server/display/OpColorDisplayService;->access$1100(Lcom/oneplus/android/server/display/OpColorDisplayService;)Lcom/oneplus/android/server/display/OpColorModeManager;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/oneplus/android/server/display/OpColorModeManager;->setActiveModesId(I)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService$zta;->this$0:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-static {p1}, Lcom/oneplus/android/server/display/OpColorDisplayService;->access$1100(Lcom/oneplus/android/server/display/OpColorDisplayService;)Lcom/oneplus/android/server/display/OpColorModeManager;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/oneplus/android/server/display/OpColorModeManager;->setActiveModesId(I)V

    iget-object p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService$zta;->this$0:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-static {p1, v3}, Lcom/oneplus/android/server/display/OpColorDisplayService;->access$000(Lcom/oneplus/android/server/display/OpColorDisplayService;Z)V

    :goto_1
    iget-object p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService$zta;->this$0:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-static {p1}, Lcom/oneplus/android/server/display/OpColorDisplayService;->access$100(Lcom/oneplus/android/server/display/OpColorDisplayService;)Lcom/oneplus/android/server/display/gwm;

    move-result-object p1

    iget-object p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService$zta;->this$0:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-static {p0}, Lcom/oneplus/android/server/display/OpColorDisplayService;->access$1700(Lcom/oneplus/android/server/display/OpColorDisplayService;)Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/oneplus/android/server/display/gwm;->J(Z)V

    goto :goto_2

    :pswitch_1c
    iget-object p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService$zta;->this$0:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-static {p1}, Lcom/oneplus/android/server/display/OpColorDisplayService;->access$100(Lcom/oneplus/android/server/display/OpColorDisplayService;)Lcom/oneplus/android/server/display/gwm;

    move-result-object p1

    iget-object p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService$zta;->this$0:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-static {p0}, Lcom/oneplus/android/server/display/OpColorDisplayService;->access$1600(Lcom/oneplus/android/server/display/OpColorDisplayService;)Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/oneplus/android/server/display/gwm;->I(Z)V

    :cond_3
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
