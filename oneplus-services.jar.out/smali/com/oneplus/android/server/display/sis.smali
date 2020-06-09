.class Lcom/oneplus/android/server/display/sis;
.super Landroid/os/CountDownTimer;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/android/server/display/rtg;->updateAutoAssertiveDisplayStatus(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/android/server/display/rtg;


# direct methods
.method constructor <init>(Lcom/oneplus/android/server/display/rtg;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/display/sis;->this$0:Lcom/oneplus/android/server/display/rtg;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/android/server/display/sis;->this$0:Lcom/oneplus/android/server/display/rtg;

    invoke-static {v0}, Lcom/oneplus/android/server/display/rtg;->you(Lcom/oneplus/android/server/display/rtg;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :try_start_0
    new-array v2, v0, [I

    const/4 v3, 0x5

    aput v3, v2, v1

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/oneplus/android/server/display/sis;->this$0:Lcom/oneplus/android/server/display/rtg;

    invoke-static {v2}, Lcom/oneplus/android/server/display/rtg;->sis(Lcom/oneplus/android/server/display/rtg;)Lsis/you/you/zta/zta/you;

    move-result-object v2

    const/16 v3, 0x21

    invoke-interface {v2, v3, v0}, Lsis/you/you/zta/zta/you;->setMode(II)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/oneplus/android/server/display/sis;->this$0:Lcom/oneplus/android/server/display/rtg;

    invoke-static {v2}, Lcom/oneplus/android/server/display/rtg;->sis(Lcom/oneplus/android/server/display/rtg;)Lsis/you/you/zta/zta/you;

    move-result-object v2

    const/16 v3, 0xc

    invoke-interface {v2, v3, v0}, Lsis/you/you/zta/zta/you;->setMode(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OpAssertiveDisplayManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v2, p0, Lcom/oneplus/android/server/display/sis;->this$0:Lcom/oneplus/android/server/display/rtg;

    invoke-static {v2, v0}, Lcom/oneplus/android/server/display/rtg;->you(Lcom/oneplus/android/server/display/rtg;Z)Z

    :cond_1
    iget-object p0, p0, Lcom/oneplus/android/server/display/sis;->this$0:Lcom/oneplus/android/server/display/rtg;

    invoke-static {p0, v1}, Lcom/oneplus/android/server/display/rtg;->sis(Lcom/oneplus/android/server/display/rtg;Z)Z

    return-void
.end method

.method public onTick(J)V
    .locals 0

    iget-object p1, p0, Lcom/oneplus/android/server/display/sis;->this$0:Lcom/oneplus/android/server/display/rtg;

    invoke-static {p1}, Lcom/oneplus/android/server/display/rtg;->zta(Lcom/oneplus/android/server/display/rtg;)F

    move-result p1

    const p2, 0x46ea6000    # 30000.0f

    cmpl-float p1, p1, p2

    if-lez p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "assertivedisplay  mGlobaAmbientLux > 30000 :"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oneplus/android/server/display/sis;->this$0:Lcom/oneplus/android/server/display/rtg;

    invoke-static {p0}, Lcom/oneplus/android/server/display/rtg;->zta(Lcom/oneplus/android/server/display/rtg;)F

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OpAssertiveDisplayManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/oneplus/android/server/display/sis;->this$0:Lcom/oneplus/android/server/display/rtg;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/oneplus/android/server/display/rtg;->zta(Lcom/oneplus/android/server/display/rtg;Z)Z

    :goto_0
    return-void
.end method
