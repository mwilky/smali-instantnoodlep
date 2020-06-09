.class Lcom/android/server/wm/OpScreenModeService$zta;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/OpScreenModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zta"
.end annotation


# instance fields
.field Aha:I

.field Bha:[I

.field mode:Landroid/view/Display$Mode;

.field final synthetic this$0:Lcom/android/server/wm/OpScreenModeService;

.field zha:I


# direct methods
.method constructor <init>(Lcom/android/server/wm/OpScreenModeService;Landroid/view/Display$Mode;)V
    .locals 7

    iput-object p1, p0, Lcom/android/server/wm/OpScreenModeService$zta;->this$0:Lcom/android/server/wm/OpScreenModeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/OpScreenModeService$zta;->zha:I

    iput v0, p0, Lcom/android/server/wm/OpScreenModeService$zta;->Aha:I

    const/4 v0, 0x0

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/server/wm/OpScreenModeService$zta;->Bha:[I

    iput-object p2, p0, Lcom/android/server/wm/OpScreenModeService$zta;->mode:Landroid/view/Display$Mode;

    invoke-virtual {p2}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v1

    const/4 v2, 0x1

    const/16 v3, 0x5a0

    if-ne v1, v3, :cond_0

    iput v0, p0, Lcom/android/server/wm/OpScreenModeService$zta;->Aha:I

    iput v0, p1, Lcom/android/server/wm/OpScreenModeService;->mHighResolution:I

    iget-object p1, p1, Lcom/android/server/wm/OpScreenModeService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x5020024

    :goto_0
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p1

    :goto_1
    iput-object p1, p0, Lcom/android/server/wm/OpScreenModeService$zta;->Bha:[I

    goto :goto_3

    :cond_0
    invoke-virtual {p2}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v1

    const/16 v3, 0x438

    if-ne v1, v3, :cond_3

    iput v2, p0, Lcom/android/server/wm/OpScreenModeService$zta;->Aha:I

    invoke-static {p1}, Lcom/android/server/wm/OpScreenModeService;->access$200(Lcom/android/server/wm/OpScreenModeService;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "guacamole"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p1}, Lcom/android/server/wm/OpScreenModeService;->access$200(Lcom/android/server/wm/OpScreenModeService;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "hotdog"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/android/server/wm/OpScreenModeService;->DPI_FHD:[I

    aget v1, v1, v2

    invoke-static {p1}, Lcom/android/server/wm/OpScreenModeService;->access$300(Lcom/android/server/wm/OpScreenModeService;)I

    move-result v3

    if-ne v1, v3, :cond_1

    goto :goto_2

    :cond_1
    iget-object p1, p1, Lcom/android/server/wm/OpScreenModeService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x5020025

    goto :goto_0

    :cond_2
    :goto_2
    sget-object p1, Lcom/android/server/wm/OpScreenModeService;->DPI_FHD:[I

    goto :goto_1

    :cond_3
    :goto_3
    invoke-virtual {p2}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result p1

    const/high16 v1, 0x42700000    # 60.0f

    sub-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    float-to-double v3, p1

    const-wide v5, 0x3fb999999999999aL    # 0.1

    cmpg-double p1, v3, v5

    if-gez p1, :cond_4

    iput v2, p0, Lcom/android/server/wm/OpScreenModeService$zta;->zha:I

    goto :goto_4

    :cond_4
    invoke-virtual {p2}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result p1

    const/high16 v1, 0x42b40000    # 90.0f

    sub-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    float-to-double v1, p1

    cmpg-double p1, v1, v5

    if-ltz p1, :cond_5

    invoke-virtual {p2}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result p1

    const/high16 p2, 0x42f00000    # 120.0f

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    float-to-double p1, p1

    cmpg-double p1, p1, v5

    if-gez p1, :cond_6

    :cond_5
    iput v0, p0, Lcom/android/server/wm/OpScreenModeService$zta;->zha:I

    :cond_6
    :goto_4
    return-void
.end method
