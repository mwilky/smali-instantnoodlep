.class Lcom/oneplus/android/server/display/cno;
.super Landroid/database/ContentObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/android/server/display/OpColorDisplayService;->systemReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/android/server/display/OpColorDisplayService;


# direct methods
.method constructor <init>(Lcom/oneplus/android/server/display/OpColorDisplayService;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/display/cno;->this$0:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 5

    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_6

    const/4 p2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const-string v1, "op_gamut_game_mode"

    const-string v2, "hdr_mode"

    const/4 v3, 0x0

    const/4 v4, 0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p2, 0x3

    goto :goto_1

    :sswitch_1
    const-string v0, "screen_color_mode_advanced_settings_value"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move p2, v4

    goto :goto_1

    :sswitch_2
    const-string v0, "oem_black_mode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p2, 0x4

    goto :goto_1

    :sswitch_3
    const-string v0, "screen_color_mode_settings_value"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move p2, v3

    goto :goto_1

    :sswitch_4
    const-string v0, "colour_cast"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p2, 0x5

    goto :goto_1

    :sswitch_5
    const-string v0, "oem_screen_better_value"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p2, 0x2

    goto :goto_1

    :sswitch_6
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p2, 0x6

    :cond_1
    :goto_1
    packed-switch p2, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    iget-object p1, p0, Lcom/oneplus/android/server/display/cno;->this$0:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-static {p1}, Lcom/oneplus/android/server/display/OpColorDisplayService;->access$200(Lcom/oneplus/android/server/display/OpColorDisplayService;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p2, p0, Lcom/oneplus/android/server/display/cno;->this$0:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-static {p2}, Lcom/oneplus/android/server/display/OpColorDisplayService;->access$300(Lcom/oneplus/android/server/display/OpColorDisplayService;)I

    move-result p2

    invoke-static {p1, v2, v3, p2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    const/16 p2, 0x17

    iget-object p0, p0, Lcom/oneplus/android/server/display/cno;->this$0:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-static {p0}, Lcom/oneplus/android/server/display/OpColorDisplayService;->access$1100(Lcom/oneplus/android/server/display/OpColorDisplayService;)Lcom/oneplus/android/server/display/OpColorModeManager;

    move-result-object p0

    if-ne p1, v4, :cond_2

    invoke-virtual {p0, p2, v4}, Lcom/oneplus/android/server/display/OpColorModeManager;->gwm(IZ)V

    goto/16 :goto_3

    :cond_2
    invoke-virtual {p0, p2, v3}, Lcom/oneplus/android/server/display/OpColorModeManager;->gwm(IZ)V

    goto/16 :goto_3

    :pswitch_1
    iget-object p1, p0, Lcom/oneplus/android/server/display/cno;->this$0:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-static {p1}, Lcom/oneplus/android/server/display/OpColorDisplayService;->access$500(Lcom/oneplus/android/server/display/OpColorDisplayService;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/oneplus/android/server/display/cno;->this$0:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-static {p1}, Lcom/oneplus/android/server/display/OpColorDisplayService;->access$900(Lcom/oneplus/android/server/display/OpColorDisplayService;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/oneplus/android/server/display/cno;->this$0:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-static {p1, v4}, Lcom/oneplus/android/server/display/OpColorDisplayService;->access$1002(Lcom/oneplus/android/server/display/OpColorDisplayService;Z)Z

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lcom/oneplus/android/server/display/cno;->this$0:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-static {p1, v3}, Lcom/oneplus/android/server/display/OpColorDisplayService;->access$1002(Lcom/oneplus/android/server/display/OpColorDisplayService;Z)Z

    goto :goto_2

    :pswitch_2
    iget-object p1, p0, Lcom/oneplus/android/server/display/cno;->this$0:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-static {p1}, Lcom/oneplus/android/server/display/OpColorDisplayService;->access$500(Lcom/oneplus/android/server/display/OpColorDisplayService;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/oneplus/android/server/display/cno;->this$0:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-static {p1}, Lcom/oneplus/android/server/display/OpColorDisplayService;->access$600(Lcom/oneplus/android/server/display/OpColorDisplayService;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/oneplus/android/server/display/cno;->this$0:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-static {p1, v4}, Lcom/oneplus/android/server/display/OpColorDisplayService;->access$702(Lcom/oneplus/android/server/display/OpColorDisplayService;Z)Z

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lcom/oneplus/android/server/display/cno;->this$0:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-static {p1, v3}, Lcom/oneplus/android/server/display/OpColorDisplayService;->access$702(Lcom/oneplus/android/server/display/OpColorDisplayService;Z)Z

    :goto_2
    iget-object p0, p0, Lcom/oneplus/android/server/display/cno;->this$0:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-static {p0}, Lcom/oneplus/android/server/display/OpColorDisplayService;->access$800(Lcom/oneplus/android/server/display/OpColorDisplayService;)V

    goto :goto_3

    :pswitch_3
    iget-object p1, p0, Lcom/oneplus/android/server/display/cno;->this$0:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-static {p1}, Lcom/oneplus/android/server/display/OpColorDisplayService;->access$200(Lcom/oneplus/android/server/display/OpColorDisplayService;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p2, p0, Lcom/oneplus/android/server/display/cno;->this$0:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-static {p2}, Lcom/oneplus/android/server/display/OpColorDisplayService;->access$300(Lcom/oneplus/android/server/display/OpColorDisplayService;)I

    move-result p2

    invoke-static {p1, v1, v3, p2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    iget-object p0, p0, Lcom/oneplus/android/server/display/cno;->this$0:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-static {p0}, Lcom/oneplus/android/server/display/OpColorDisplayService;->access$400(Lcom/oneplus/android/server/display/OpColorDisplayService;)Lcom/oneplus/android/server/display/ywr;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oneplus/android/server/display/ywr;->P(I)V

    goto :goto_3

    :pswitch_4
    new-array p1, v4, [I

    const/16 p2, 0x10d

    aput p2, p1, v3

    invoke-static {p1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result p1

    if-nez p1, :cond_6

    new-array p1, v4, [I

    const/16 p2, 0x10c

    aput p2, p1, v3

    invoke-static {p1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_3

    :cond_5
    iget-object p0, p0, Lcom/oneplus/android/server/display/cno;->this$0:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-static {p0}, Lcom/oneplus/android/server/display/OpColorDisplayService;->access$100(Lcom/oneplus/android/server/display/OpColorDisplayService;)Lcom/oneplus/android/server/display/gwm;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/android/server/display/gwm;->setCustomColorTemperature()V

    goto :goto_3

    :pswitch_5
    iget-object p0, p0, Lcom/oneplus/android/server/display/cno;->this$0:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-static {p0, v4}, Lcom/oneplus/android/server/display/OpColorDisplayService;->access$000(Lcom/oneplus/android/server/display/OpColorDisplayService;Z)V

    :cond_6
    :goto_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x5aa036b4 -> :sswitch_6
        -0x563eaf93 -> :sswitch_5
        0xcf535d2 -> :sswitch_4
        0xf66fb82 -> :sswitch_3
        0x2eb945cb -> :sswitch_2
        0x51621985 -> :sswitch_1
        0x638a4825 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
