.class Lcom/android/server/display/RampAnimator$1;
.super Ljava/lang/Object;
.source "RampAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/RampAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/RampAnimator;


# direct methods
.method constructor <init>(Lcom/android/server/display/RampAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v1}, Lcom/android/server/display/RampAnimator;->access$000(Lcom/android/server/display/RampAnimator;)Landroid/view/Choreographer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Choreographer;->getFrameTimeNanos()J

    move-result-wide v1

    iget-object v3, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v3}, Lcom/android/server/display/RampAnimator;->access$100(Lcom/android/server/display/RampAnimator;)J

    move-result-wide v3

    sub-long v3, v1, v3

    long-to-float v3, v3

    const v4, 0x3089705f    # 1.0E-9f

    mul-float/2addr v3, v4

    iget-object v4, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v4, v1, v2}, Lcom/android/server/display/RampAnimator;->access$102(Lcom/android/server/display/RampAnimator;J)J

    invoke-static {}, Landroid/animation/ValueAnimator;->getDurationScale()F

    move-result v4

    const/4 v5, 0x0

    cmpl-float v5, v4, v5

    if-nez v5, :cond_0

    iget-object v5, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v5}, Lcom/android/server/display/RampAnimator;->access$300(Lcom/android/server/display/RampAnimator;)I

    move-result v6

    int-to-float v6, v6

    invoke-static {v5, v6}, Lcom/android/server/display/RampAnimator;->access$202(Lcom/android/server/display/RampAnimator;F)F

    goto :goto_0

    :cond_0
    iget-object v5, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v5}, Lcom/android/server/display/RampAnimator;->access$400(Lcom/android/server/display/RampAnimator;)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v3

    div-float/2addr v5, v4

    iget-object v6, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v6}, Lcom/android/server/display/RampAnimator;->access$300(Lcom/android/server/display/RampAnimator;)I

    move-result v6

    iget-object v7, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v7}, Lcom/android/server/display/RampAnimator;->access$500(Lcom/android/server/display/RampAnimator;)I

    move-result v7

    if-le v6, v7, :cond_1

    iget-object v6, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v6}, Lcom/android/server/display/RampAnimator;->access$200(Lcom/android/server/display/RampAnimator;)F

    move-result v7

    add-float/2addr v7, v5

    iget-object v8, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v8}, Lcom/android/server/display/RampAnimator;->access$300(Lcom/android/server/display/RampAnimator;)I

    move-result v8

    int-to-float v8, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    invoke-static {v6, v7}, Lcom/android/server/display/RampAnimator;->access$202(Lcom/android/server/display/RampAnimator;F)F

    goto :goto_0

    :cond_1
    iget-object v6, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v6}, Lcom/android/server/display/RampAnimator;->access$200(Lcom/android/server/display/RampAnimator;)F

    move-result v7

    sub-float/2addr v7, v5

    iget-object v8, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v8}, Lcom/android/server/display/RampAnimator;->access$300(Lcom/android/server/display/RampAnimator;)I

    move-result v8

    int-to-float v8, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    invoke-static {v6, v7}, Lcom/android/server/display/RampAnimator;->access$202(Lcom/android/server/display/RampAnimator;F)F

    :goto_0
    iget-object v5, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v5}, Lcom/android/server/display/RampAnimator;->access$500(Lcom/android/server/display/RampAnimator;)I

    move-result v5

    iget-object v6, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v6}, Lcom/android/server/display/RampAnimator;->access$200(Lcom/android/server/display/RampAnimator;)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    invoke-static {v6, v7}, Lcom/android/server/display/RampAnimator;->access$502(Lcom/android/server/display/RampAnimator;I)I

    iget-object v6, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v6}, Lcom/android/server/display/RampAnimator;->access$600(Lcom/android/server/display/RampAnimator;)I

    move-result v6

    const/16 v7, 0x3c

    if-ltz v6, :cond_2

    iget-object v6, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    const/high16 v8, 0x3f800000    # 1.0f

    div-float/2addr v8, v3

    float-to-int v8, v8

    invoke-static {v6, v8}, Lcom/android/server/display/RampAnimator;->access$602(Lcom/android/server/display/RampAnimator;I)I

    iget-object v6, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v6}, Lcom/android/server/display/RampAnimator;->access$600(Lcom/android/server/display/RampAnimator;)I

    move-result v8

    const/16 v9, 0x78

    invoke-static {v8, v7, v9}, Landroid/util/MathUtils;->constrain(III)I

    move-result v8

    invoke-static {v6, v8}, Lcom/android/server/display/RampAnimator;->access$602(Lcom/android/server/display/RampAnimator;I)I

    goto :goto_1

    :cond_2
    iget-object v6, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    const/4 v8, 0x0

    invoke-static {v6, v8}, Lcom/android/server/display/RampAnimator;->access$602(Lcom/android/server/display/RampAnimator;I)I

    :goto_1
    const/16 v6, 0x1000

    const/16 v8, 0xfff

    const-string v9, "RampAnimator"

    if-ge v5, v8, :cond_3

    iget-object v10, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v10}, Lcom/android/server/display/RampAnimator;->access$500(Lcom/android/server/display/RampAnimator;)I

    move-result v10

    if-le v10, v8, :cond_3

    iget-object v10, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v10, v8}, Lcom/android/server/display/RampAnimator;->access$502(Lcom/android/server/display/RampAnimator;I)I

    const-string v10, "0 >"

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    if-ne v5, v8, :cond_4

    iget-object v10, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v10}, Lcom/android/server/display/RampAnimator;->access$500(Lcom/android/server/display/RampAnimator;)I

    move-result v10

    if-le v10, v6, :cond_4

    iget-object v10, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v10, v6}, Lcom/android/server/display/RampAnimator;->access$502(Lcom/android/server/display/RampAnimator;I)I

    const-string v10, "> 1"

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_2
    if-le v5, v6, :cond_5

    iget-object v10, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v10}, Lcom/android/server/display/RampAnimator;->access$500(Lcom/android/server/display/RampAnimator;)I

    move-result v10

    if-ge v10, v6, :cond_5

    iget-object v10, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v10, v6}, Lcom/android/server/display/RampAnimator;->access$502(Lcom/android/server/display/RampAnimator;I)I

    const-string v6, "< 1"

    invoke-static {v9, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_5
    if-ne v5, v6, :cond_6

    iget-object v6, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v6}, Lcom/android/server/display/RampAnimator;->access$500(Lcom/android/server/display/RampAnimator;)I

    move-result v6

    if-ge v6, v8, :cond_6

    iget-object v6, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v6, v8}, Lcom/android/server/display/RampAnimator;->access$502(Lcom/android/server/display/RampAnimator;I)I

    const-string v6, "0 <"

    invoke-static {v9, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_3
    iget-object v6, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v6}, Lcom/android/server/display/RampAnimator;->access$700(Lcom/android/server/display/RampAnimator;)I

    move-result v6

    const/4 v11, 0x5

    const/16 v13, 0x64

    const/16 v14, 0x1f4

    if-ne v6, v8, :cond_36

    const/4 v6, 0x0

    iget-object v15, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v15}, Lcom/android/server/display/RampAnimator;->access$800(Lcom/android/server/display/RampAnimator;)I

    move-result v15

    const/16 v7, 0x3e8

    const/16 v12, 0x5dc

    if-eqz v15, :cond_1a

    iget-object v15, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v15}, Lcom/android/server/display/RampAnimator;->access$800(Lcom/android/server/display/RampAnimator;)I

    move-result v15

    if-le v15, v7, :cond_7

    iget-object v15, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v15}, Lcom/android/server/display/RampAnimator;->access$800(Lcom/android/server/display/RampAnimator;)I

    move-result v10

    invoke-static {v15, v10}, Lcom/android/server/display/RampAnimator;->access$402(Lcom/android/server/display/RampAnimator;I)I

    goto/16 :goto_5

    :cond_7
    iget-object v10, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v10}, Lcom/android/server/display/RampAnimator;->access$800(Lcom/android/server/display/RampAnimator;)I

    move-result v10

    if-lez v10, :cond_8

    iget-object v10, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v10}, Lcom/android/server/display/RampAnimator;->access$800(Lcom/android/server/display/RampAnimator;)I

    move-result v15

    div-int/2addr v15, v11

    invoke-static {v10, v15}, Lcom/android/server/display/RampAnimator;->access$402(Lcom/android/server/display/RampAnimator;I)I

    goto/16 :goto_5

    :cond_8
    iget-object v10, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v10}, Lcom/android/server/display/RampAnimator;->access$800(Lcom/android/server/display/RampAnimator;)I

    move-result v10

    if-gez v10, :cond_f

    iget-object v10, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v10}, Lcom/android/server/display/RampAnimator;->access$500(Lcom/android/server/display/RampAnimator;)I

    move-result v10

    iget-object v15, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v15}, Lcom/android/server/display/RampAnimator;->access$300(Lcom/android/server/display/RampAnimator;)I

    move-result v15

    sub-int/2addr v10, v15

    iget-object v15, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v15}, Lcom/android/server/display/RampAnimator;->access$800(Lcom/android/server/display/RampAnimator;)I

    move-result v15

    neg-int v15, v15

    div-int/lit8 v15, v15, 0x4

    mul-int/lit8 v15, v15, 0x3

    if-le v10, v15, :cond_9

    iget-object v10, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v10}, Lcom/android/server/display/RampAnimator;->access$800(Lcom/android/server/display/RampAnimator;)I

    move-result v15

    neg-int v15, v15

    div-int/lit8 v15, v15, 0x4

    invoke-static {v10, v15}, Lcom/android/server/display/RampAnimator;->access$402(Lcom/android/server/display/RampAnimator;I)I

    iget-object v10, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v10}, Lcom/android/server/display/RampAnimator;->access$400(Lcom/android/server/display/RampAnimator;)I

    move-result v10

    const/16 v15, 0x15e

    if-le v10, v15, :cond_d

    iget-object v10, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    const/16 v15, 0x15e

    invoke-static {v10, v15}, Lcom/android/server/display/RampAnimator;->access$402(Lcom/android/server/display/RampAnimator;I)I

    goto :goto_4

    :cond_9
    iget-object v10, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v10}, Lcom/android/server/display/RampAnimator;->access$300(Lcom/android/server/display/RampAnimator;)I

    move-result v10

    const/16 v15, 0xbb8

    if-le v10, v15, :cond_a

    iget-object v10, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v10}, Lcom/android/server/display/RampAnimator;->access$800(Lcom/android/server/display/RampAnimator;)I

    move-result v15

    neg-int v15, v15

    div-int/lit8 v15, v15, 0x6

    invoke-static {v10, v15}, Lcom/android/server/display/RampAnimator;->access$402(Lcom/android/server/display/RampAnimator;I)I

    goto :goto_4

    :cond_a
    iget-object v10, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v10}, Lcom/android/server/display/RampAnimator;->access$300(Lcom/android/server/display/RampAnimator;)I

    move-result v10

    const/16 v15, 0x7d0

    if-le v10, v15, :cond_b

    iget-object v10, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v10}, Lcom/android/server/display/RampAnimator;->access$800(Lcom/android/server/display/RampAnimator;)I

    move-result v15

    neg-int v15, v15

    div-int/lit8 v15, v15, 0x8

    invoke-static {v10, v15}, Lcom/android/server/display/RampAnimator;->access$402(Lcom/android/server/display/RampAnimator;I)I

    goto :goto_4

    :cond_b
    iget-object v10, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v10}, Lcom/android/server/display/RampAnimator;->access$300(Lcom/android/server/display/RampAnimator;)I

    move-result v10

    if-le v10, v7, :cond_c

    iget-object v10, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v10}, Lcom/android/server/display/RampAnimator;->access$800(Lcom/android/server/display/RampAnimator;)I

    move-result v15

    neg-int v15, v15

    div-int/lit8 v15, v15, 0xa

    invoke-static {v10, v15}, Lcom/android/server/display/RampAnimator;->access$402(Lcom/android/server/display/RampAnimator;I)I

    goto :goto_4

    :cond_c
    iget-object v10, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v10}, Lcom/android/server/display/RampAnimator;->access$800(Lcom/android/server/display/RampAnimator;)I

    move-result v15

    neg-int v15, v15

    div-int/lit8 v15, v15, 0xf

    invoke-static {v10, v15}, Lcom/android/server/display/RampAnimator;->access$402(Lcom/android/server/display/RampAnimator;I)I

    :cond_d
    :goto_4
    iget-object v10, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v10}, Lcom/android/server/display/RampAnimator;->access$300(Lcom/android/server/display/RampAnimator;)I

    move-result v10

    const/16 v15, 0x708

    if-le v10, v15, :cond_f

    iget-object v10, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v10}, Lcom/android/server/display/RampAnimator;->access$800(Lcom/android/server/display/RampAnimator;)I

    move-result v10

    neg-int v10, v10

    const/16 v15, 0x6a4

    if-le v10, v15, :cond_f

    iget-object v10, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v10}, Lcom/android/server/display/RampAnimator;->access$500(Lcom/android/server/display/RampAnimator;)I

    move-result v10

    const/16 v15, 0xdac

    if-le v10, v15, :cond_e

    iget-object v10, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v10}, Lcom/android/server/display/RampAnimator;->access$800(Lcom/android/server/display/RampAnimator;)I

    move-result v15

    neg-int v15, v15

    div-int/lit8 v15, v15, 0x4

    invoke-static {v10, v15}, Lcom/android/server/display/RampAnimator;->access$402(Lcom/android/server/display/RampAnimator;I)I

    iget-object v10, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v10}, Lcom/android/server/display/RampAnimator;->access$400(Lcom/android/server/display/RampAnimator;)I

    move-result v10

    const/16 v15, 0x15e

    if-le v10, v15, :cond_f

    iget-object v10, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    const/16 v15, 0x15e

    invoke-static {v10, v15}, Lcom/android/server/display/RampAnimator;->access$402(Lcom/android/server/display/RampAnimator;I)I

    goto :goto_5

    :cond_e
    iget-object v10, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v10}, Lcom/android/server/display/RampAnimator;->access$500(Lcom/android/server/display/RampAnimator;)I

    move-result v10

    const/16 v15, 0x7d0

    if-le v10, v15, :cond_f

    iget-object v10, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v10}, Lcom/android/server/display/RampAnimator;->access$800(Lcom/android/server/display/RampAnimator;)I

    move-result v15

    neg-int v15, v15

    div-int/lit8 v15, v15, 0x8

    invoke-static {v10, v15}, Lcom/android/server/display/RampAnimator;->access$402(Lcom/android/server/display/RampAnimator;I)I

    :cond_f
    :goto_5
    iget-object v10, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v10}, Lcom/android/server/display/RampAnimator;->access$300(Lcom/android/server/display/RampAnimator;)I

    move-result v10

    iget-object v15, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v15}, Lcom/android/server/display/RampAnimator;->access$500(Lcom/android/server/display/RampAnimator;)I

    move-result v15

    if-lt v10, v15, :cond_10

    iget-object v10, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v10}, Lcom/android/server/display/RampAnimator;->access$300(Lcom/android/server/display/RampAnimator;)I

    move-result v10

    iget-object v15, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v15}, Lcom/android/server/display/RampAnimator;->access$500(Lcom/android/server/display/RampAnimator;)I

    move-result v15

    sub-int/2addr v10, v15

    goto :goto_6

    :cond_10
    iget-object v10, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v10}, Lcom/android/server/display/RampAnimator;->access$500(Lcom/android/server/display/RampAnimator;)I

    move-result v10

    iget-object v15, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v15}, Lcom/android/server/display/RampAnimator;->access$300(Lcom/android/server/display/RampAnimator;)I

    move-result v15

    sub-int/2addr v10, v15

    :goto_6
    move v6, v10

    if-ge v6, v14, :cond_16

    iget-object v10, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v10}, Lcom/android/server/display/RampAnimator;->access$800(Lcom/android/server/display/RampAnimator;)I

    move-result v10

    if-lez v10, :cond_14

    iget-object v10, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v10}, Lcom/android/server/display/RampAnimator;->access$300(Lcom/android/server/display/RampAnimator;)I

    move-result v10

    const/16 v15, 0xe10

    if-le v10, v15, :cond_11

    iget-object v10, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    const/16 v15, 0x258

    invoke-static {v10, v15}, Lcom/android/server/display/RampAnimator;->access$402(Lcom/android/server/display/RampAnimator;I)I

    goto :goto_7

    :cond_11
    iget-object v10, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v10}, Lcom/android/server/display/RampAnimator;->access$300(Lcom/android/server/display/RampAnimator;)I

    move-result v10

    const/16 v15, 0xbb8

    if-le v10, v15, :cond_12

    iget-object v10, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    const/16 v15, 0x15e

    invoke-static {v10, v15}, Lcom/android/server/display/RampAnimator;->access$402(Lcom/android/server/display/RampAnimator;I)I

    goto :goto_7

    :cond_12
    iget-object v10, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v10}, Lcom/android/server/display/RampAnimator;->access$300(Lcom/android/server/display/RampAnimator;)I

    move-result v10

    const/16 v15, 0x7d0

    if-le v10, v15, :cond_13

    iget-object v10, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    const/16 v15, 0xc8

    invoke-static {v10, v15}, Lcom/android/server/display/RampAnimator;->access$402(Lcom/android/server/display/RampAnimator;I)I

    goto :goto_7

    :cond_13
    iget-object v10, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v10}, Lcom/android/server/display/RampAnimator;->access$300(Lcom/android/server/display/RampAnimator;)I

    move-result v10

    if-le v10, v12, :cond_16

    iget-object v10, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v10, v13}, Lcom/android/server/display/RampAnimator;->access$402(Lcom/android/server/display/RampAnimator;I)I

    goto :goto_7

    :cond_14
    iget-object v10, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v10}, Lcom/android/server/display/RampAnimator;->access$300(Lcom/android/server/display/RampAnimator;)I

    move-result v10

    const/16 v15, 0x7d0

    if-le v10, v15, :cond_15

    iget-object v10, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v10}, Lcom/android/server/display/RampAnimator;->access$400(Lcom/android/server/display/RampAnimator;)I

    move-result v10

    if-le v10, v13, :cond_15

    iget-object v10, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v10, v13}, Lcom/android/server/display/RampAnimator;->access$402(Lcom/android/server/display/RampAnimator;I)I

    goto :goto_7

    :cond_15
    iget-object v10, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v10}, Lcom/android/server/display/RampAnimator;->access$300(Lcom/android/server/display/RampAnimator;)I

    move-result v10

    if-le v10, v12, :cond_16

    iget-object v10, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v10}, Lcom/android/server/display/RampAnimator;->access$400(Lcom/android/server/display/RampAnimator;)I

    move-result v10

    const/16 v15, 0x50

    if-le v10, v15, :cond_16

    iget-object v10, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    const/16 v15, 0x50

    invoke-static {v10, v15}, Lcom/android/server/display/RampAnimator;->access$402(Lcom/android/server/display/RampAnimator;I)I

    :cond_16
    :goto_7
    iget-object v10, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v10}, Lcom/android/server/display/RampAnimator;->access$800(Lcom/android/server/display/RampAnimator;)I

    move-result v10

    if-gt v10, v14, :cond_17

    iget-object v10, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v10}, Lcom/android/server/display/RampAnimator;->access$800(Lcom/android/server/display/RampAnimator;)I

    move-result v10

    const/16 v15, -0x1f4

    if-gt v10, v15, :cond_18

    :cond_17
    iget-object v10, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v10}, Lcom/android/server/display/RampAnimator;->access$500(Lcom/android/server/display/RampAnimator;)I

    move-result v10

    const/16 v15, 0x514

    if-ge v10, v15, :cond_19

    iget-object v10, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v10}, Lcom/android/server/display/RampAnimator;->access$300(Lcom/android/server/display/RampAnimator;)I

    move-result v10

    if-ge v10, v7, :cond_19

    :cond_18
    iget-object v10, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    const/16 v15, 0x1e

    invoke-static {v10, v15}, Lcom/android/server/display/RampAnimator;->access$402(Lcom/android/server/display/RampAnimator;I)I

    :cond_19
    iget-object v10, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v10}, Lcom/android/server/display/RampAnimator;->access$800(Lcom/android/server/display/RampAnimator;)I

    move-result v10

    if-gez v10, :cond_1a

    iget-object v10, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v10}, Lcom/android/server/display/RampAnimator;->access$500(Lcom/android/server/display/RampAnimator;)I

    move-result v10

    const/16 v15, 0x258

    if-ge v10, v15, :cond_1a

    iget-object v10, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    const/16 v15, 0x1e

    invoke-static {v10, v15}, Lcom/android/server/display/RampAnimator;->access$402(Lcom/android/server/display/RampAnimator;I)I

    :cond_1a
    iget-object v10, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v10}, Lcom/android/server/display/RampAnimator;->access$300(Lcom/android/server/display/RampAnimator;)I

    move-result v10

    if-lt v10, v8, :cond_1e

    iget-object v10, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v10}, Lcom/android/server/display/RampAnimator;->access$300(Lcom/android/server/display/RampAnimator;)I

    move-result v10

    iget-object v15, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v15}, Lcom/android/server/display/RampAnimator;->access$500(Lcom/android/server/display/RampAnimator;)I

    move-result v15

    if-le v10, v15, :cond_1e

    iget-object v10, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v10}, Lcom/android/server/display/RampAnimator;->access$900(Lcom/android/server/display/RampAnimator;)I

    move-result v10

    if-le v10, v12, :cond_1b

    iget-object v10, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v10}, Lcom/android/server/display/RampAnimator;->access$900(Lcom/android/server/display/RampAnimator;)I

    move-result v15

    const/16 v16, 0x2

    div-int/lit8 v15, v15, 0x2

    invoke-static {v10, v15}, Lcom/android/server/display/RampAnimator;->access$402(Lcom/android/server/display/RampAnimator;I)I

    goto :goto_8

    :cond_1b
    const/16 v16, 0x2

    iget-object v10, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v10}, Lcom/android/server/display/RampAnimator;->access$900(Lcom/android/server/display/RampAnimator;)I

    move-result v10

    if-le v10, v7, :cond_1c

    iget-object v10, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v10}, Lcom/android/server/display/RampAnimator;->access$900(Lcom/android/server/display/RampAnimator;)I

    move-result v15

    div-int/lit8 v15, v15, 0x2

    invoke-static {v10, v15}, Lcom/android/server/display/RampAnimator;->access$402(Lcom/android/server/display/RampAnimator;I)I

    goto :goto_8

    :cond_1c
    iget-object v10, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v10}, Lcom/android/server/display/RampAnimator;->access$900(Lcom/android/server/display/RampAnimator;)I

    move-result v10

    if-le v10, v14, :cond_1d

    iget-object v10, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v10}, Lcom/android/server/display/RampAnimator;->access$900(Lcom/android/server/display/RampAnimator;)I

    move-result v15

    div-int/lit8 v15, v15, 0x3

    invoke-static {v10, v15}, Lcom/android/server/display/RampAnimator;->access$402(Lcom/android/server/display/RampAnimator;I)I

    goto :goto_8

    :cond_1d
    iget-object v10, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v10}, Lcom/android/server/display/RampAnimator;->access$900(Lcom/android/server/display/RampAnimator;)I

    move-result v15

    div-int/lit8 v15, v15, 0x4

    invoke-static {v10, v15}, Lcom/android/server/display/RampAnimator;->access$402(Lcom/android/server/display/RampAnimator;I)I

    :cond_1e
    :goto_8
    iget-object v10, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v10}, Lcom/android/server/display/RampAnimator;->access$1000(Lcom/android/server/display/RampAnimator;)I

    move-result v10

    const/4 v15, 0x7

    if-ne v10, v15, :cond_1f

    iget-object v10, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v10}, Lcom/android/server/display/RampAnimator;->access$1100(Lcom/android/server/display/RampAnimator;)Z

    move-result v10

    if-eqz v10, :cond_1f

    iget-object v10, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v10}, Lcom/android/server/display/RampAnimator;->access$300(Lcom/android/server/display/RampAnimator;)I

    move-result v10

    iget-object v15, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v15}, Lcom/android/server/display/RampAnimator;->access$500(Lcom/android/server/display/RampAnimator;)I

    move-result v15

    if-ge v10, v15, :cond_1f

    iget-object v10, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v10}, Lcom/android/server/display/RampAnimator;->access$500(Lcom/android/server/display/RampAnimator;)I

    move-result v10

    if-ge v10, v12, :cond_1f

    iget-object v10, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v10}, Lcom/android/server/display/RampAnimator;->access$400(Lcom/android/server/display/RampAnimator;)I

    move-result v10

    const/16 v15, 0x12c

    if-le v10, v15, :cond_1f

    iget-object v10, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    const/16 v15, 0x12c

    invoke-static {v10, v15}, Lcom/android/server/display/RampAnimator;->access$402(Lcom/android/server/display/RampAnimator;I)I

    :cond_1f
    iget-object v10, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v10}, Lcom/android/server/display/RampAnimator;->access$300(Lcom/android/server/display/RampAnimator;)I

    move-result v10

    iget-object v15, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v15}, Lcom/android/server/display/RampAnimator;->access$500(Lcom/android/server/display/RampAnimator;)I

    move-result v15

    if-lt v10, v15, :cond_20

    iget-object v10, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v10}, Lcom/android/server/display/RampAnimator;->access$300(Lcom/android/server/display/RampAnimator;)I

    move-result v10

    iget-object v15, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v15}, Lcom/android/server/display/RampAnimator;->access$500(Lcom/android/server/display/RampAnimator;)I

    move-result v15

    sub-int/2addr v10, v15

    goto :goto_9

    :cond_20
    iget-object v10, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v10}, Lcom/android/server/display/RampAnimator;->access$500(Lcom/android/server/display/RampAnimator;)I

    move-result v10

    iget-object v15, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v15}, Lcom/android/server/display/RampAnimator;->access$300(Lcom/android/server/display/RampAnimator;)I

    move-result v15

    sub-int/2addr v10, v15

    :goto_9
    nop

    iget-object v15, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v15}, Lcom/android/server/display/RampAnimator;->access$900(Lcom/android/server/display/RampAnimator;)I

    move-result v15

    sub-int/2addr v15, v13

    if-lt v10, v15, :cond_21

    iget-object v15, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v15}, Lcom/android/server/display/RampAnimator;->access$1000(Lcom/android/server/display/RampAnimator;)I

    move-result v15

    const/16 v11, 0xb

    if-ne v15, v11, :cond_22

    iget-object v11, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v11}, Lcom/android/server/display/RampAnimator;->access$1200(Lcom/android/server/display/RampAnimator;)I

    move-result v11

    const/4 v15, -0x1

    if-ne v11, v15, :cond_22

    iget-object v11, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v11}, Lcom/android/server/display/RampAnimator;->access$400(Lcom/android/server/display/RampAnimator;)I

    move-result v15

    invoke-static {v11, v15}, Lcom/android/server/display/RampAnimator;->access$1202(Lcom/android/server/display/RampAnimator;I)I

    iget-object v11, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    const/16 v15, 0x3c

    invoke-static {v11, v15}, Lcom/android/server/display/RampAnimator;->access$402(Lcom/android/server/display/RampAnimator;I)I

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "BOOST OFF SLOWLY "

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v15}, Lcom/android/server/display/RampAnimator;->access$1200(Lcom/android/server/display/RampAnimator;)I

    move-result v15

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " cu:"

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v15}, Lcom/android/server/display/RampAnimator;->access$500(Lcom/android/server/display/RampAnimator;)I

    move-result v15

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :cond_21
    iget-object v11, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v11}, Lcom/android/server/display/RampAnimator;->access$1000(Lcom/android/server/display/RampAnimator;)I

    move-result v11

    const/16 v15, 0xb

    if-ne v11, v15, :cond_22

    iget-object v11, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v11}, Lcom/android/server/display/RampAnimator;->access$400(Lcom/android/server/display/RampAnimator;)I

    move-result v11

    const/16 v15, 0x3c

    if-ne v11, v15, :cond_22

    iget-object v11, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v11}, Lcom/android/server/display/RampAnimator;->access$1200(Lcom/android/server/display/RampAnimator;)I

    move-result v11

    const/4 v15, -0x1

    if-eq v11, v15, :cond_22

    iget-object v11, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v11}, Lcom/android/server/display/RampAnimator;->access$1200(Lcom/android/server/display/RampAnimator;)I

    move-result v14

    invoke-static {v11, v14}, Lcom/android/server/display/RampAnimator;->access$402(Lcom/android/server/display/RampAnimator;I)I

    iget-object v11, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v11, v15}, Lcom/android/server/display/RampAnimator;->access$1202(Lcom/android/server/display/RampAnimator;I)I

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "BOOST OFF REVERT! cu:"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v14}, Lcom/android/server/display/RampAnimator;->access$500(Lcom/android/server/display/RampAnimator;)I

    move-result v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    :goto_a
    iget-object v11, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v11}, Lcom/android/server/display/RampAnimator;->access$1000(Lcom/android/server/display/RampAnimator;)I

    move-result v11

    const/4 v14, 0x7

    if-ne v11, v14, :cond_23

    const/16 v11, 0x3c

    if-ge v10, v11, :cond_23

    iget-object v14, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v14, v11}, Lcom/android/server/display/RampAnimator;->access$402(Lcom/android/server/display/RampAnimator;I)I

    :cond_23
    iget-object v11, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v11}, Lcom/android/server/display/RampAnimator;->access$1000(Lcom/android/server/display/RampAnimator;)I

    move-result v11

    const/16 v14, 0x9

    if-ne v11, v14, :cond_27

    iget-object v11, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v11}, Lcom/android/server/display/RampAnimator;->access$600(Lcom/android/server/display/RampAnimator;)I

    move-result v11

    const/16 v14, 0x46

    if-ge v11, v14, :cond_26

    iget-object v11, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v11}, Lcom/android/server/display/RampAnimator;->access$600(Lcom/android/server/display/RampAnimator;)I

    move-result v11

    const/16 v14, 0x2d

    if-le v11, v14, :cond_26

    iget-object v11, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v11}, Lcom/android/server/display/RampAnimator;->access$900(Lcom/android/server/display/RampAnimator;)I

    move-result v11

    iget-object v14, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v14}, Lcom/android/server/display/RampAnimator;->access$700(Lcom/android/server/display/RampAnimator;)I

    move-result v14

    div-int/lit8 v14, v14, 0x4

    if-ge v11, v14, :cond_24

    iget-object v11, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v11}, Lcom/android/server/display/RampAnimator;->access$900(Lcom/android/server/display/RampAnimator;)I

    move-result v14

    div-int/lit8 v14, v14, 0x3

    invoke-static {v11, v14}, Lcom/android/server/display/RampAnimator;->access$402(Lcom/android/server/display/RampAnimator;I)I

    goto :goto_b

    :cond_24
    iget-object v11, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v11}, Lcom/android/server/display/RampAnimator;->access$900(Lcom/android/server/display/RampAnimator;)I

    move-result v11

    iget-object v14, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v14}, Lcom/android/server/display/RampAnimator;->access$700(Lcom/android/server/display/RampAnimator;)I

    move-result v14

    const/4 v15, 0x2

    div-int/2addr v14, v15

    if-ge v11, v14, :cond_25

    iget-object v11, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v11}, Lcom/android/server/display/RampAnimator;->access$700(Lcom/android/server/display/RampAnimator;)I

    move-result v14

    div-int/lit8 v14, v14, 0x6

    invoke-static {v11, v14}, Lcom/android/server/display/RampAnimator;->access$402(Lcom/android/server/display/RampAnimator;I)I

    goto :goto_b

    :cond_25
    iget-object v11, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v11}, Lcom/android/server/display/RampAnimator;->access$700(Lcom/android/server/display/RampAnimator;)I

    move-result v14

    div-int/lit8 v14, v14, 0x4

    invoke-static {v11, v14}, Lcom/android/server/display/RampAnimator;->access$402(Lcom/android/server/display/RampAnimator;I)I

    :cond_26
    :goto_b
    if-ge v10, v13, :cond_27

    iget-object v11, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v11, v13}, Lcom/android/server/display/RampAnimator;->access$402(Lcom/android/server/display/RampAnimator;I)I

    :cond_27
    iget-object v11, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v11}, Lcom/android/server/display/RampAnimator;->access$600(Lcom/android/server/display/RampAnimator;)I

    move-result v11

    const/16 v14, 0x46

    if-ge v11, v14, :cond_35

    iget-object v11, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v11}, Lcom/android/server/display/RampAnimator;->access$600(Lcom/android/server/display/RampAnimator;)I

    move-result v11

    const/16 v14, 0x2d

    if-le v11, v14, :cond_35

    iget-object v11, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v11}, Lcom/android/server/display/RampAnimator;->access$1000(Lcom/android/server/display/RampAnimator;)I

    move-result v11

    const/4 v14, 0x2

    if-eq v11, v14, :cond_28

    iget-object v11, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v11}, Lcom/android/server/display/RampAnimator;->access$1000(Lcom/android/server/display/RampAnimator;)I

    move-result v11

    const/16 v14, 0xc

    if-ne v11, v14, :cond_35

    :cond_28
    iget-object v11, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v11}, Lcom/android/server/display/RampAnimator;->access$700(Lcom/android/server/display/RampAnimator;)I

    move-result v11

    if-ne v11, v8, :cond_35

    iget-object v8, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v8}, Lcom/android/server/display/RampAnimator;->access$500(Lcom/android/server/display/RampAnimator;)I

    move-result v8

    const/16 v11, 0xdac

    if-le v8, v11, :cond_29

    iget-object v8, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    const/16 v11, 0x8fc

    invoke-static {v8, v11}, Lcom/android/server/display/RampAnimator;->access$402(Lcom/android/server/display/RampAnimator;I)I

    goto/16 :goto_c

    :cond_29
    iget-object v8, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v8}, Lcom/android/server/display/RampAnimator;->access$500(Lcom/android/server/display/RampAnimator;)I

    move-result v8

    const/16 v11, 0xbb8

    if-le v8, v11, :cond_2a

    iget-object v8, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    const/16 v11, 0x834

    invoke-static {v8, v11}, Lcom/android/server/display/RampAnimator;->access$402(Lcom/android/server/display/RampAnimator;I)I

    goto/16 :goto_c

    :cond_2a
    iget-object v8, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v8}, Lcom/android/server/display/RampAnimator;->access$500(Lcom/android/server/display/RampAnimator;)I

    move-result v8

    const/16 v11, 0x9c4

    if-le v8, v11, :cond_2b

    iget-object v8, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v8, v12}, Lcom/android/server/display/RampAnimator;->access$402(Lcom/android/server/display/RampAnimator;I)I

    goto :goto_c

    :cond_2b
    iget-object v8, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v8}, Lcom/android/server/display/RampAnimator;->access$500(Lcom/android/server/display/RampAnimator;)I

    move-result v8

    const/16 v11, 0x7d0

    if-le v8, v11, :cond_2c

    iget-object v8, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    const/16 v11, 0x4c4

    invoke-static {v8, v11}, Lcom/android/server/display/RampAnimator;->access$402(Lcom/android/server/display/RampAnimator;I)I

    goto :goto_c

    :cond_2c
    iget-object v8, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v8}, Lcom/android/server/display/RampAnimator;->access$500(Lcom/android/server/display/RampAnimator;)I

    move-result v8

    if-le v8, v12, :cond_2d

    iget-object v8, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    const/16 v11, 0x316

    invoke-static {v8, v11}, Lcom/android/server/display/RampAnimator;->access$402(Lcom/android/server/display/RampAnimator;I)I

    goto :goto_c

    :cond_2d
    iget-object v8, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v8}, Lcom/android/server/display/RampAnimator;->access$500(Lcom/android/server/display/RampAnimator;)I

    move-result v8

    if-le v8, v7, :cond_2e

    iget-object v8, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    const/16 v11, 0x1e0

    invoke-static {v8, v11}, Lcom/android/server/display/RampAnimator;->access$402(Lcom/android/server/display/RampAnimator;I)I

    goto :goto_c

    :cond_2e
    iget-object v8, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v8}, Lcom/android/server/display/RampAnimator;->access$500(Lcom/android/server/display/RampAnimator;)I

    move-result v8

    const/16 v11, 0x1f4

    if-le v8, v11, :cond_2f

    iget-object v8, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    const/16 v11, 0x140

    invoke-static {v8, v11}, Lcom/android/server/display/RampAnimator;->access$402(Lcom/android/server/display/RampAnimator;I)I

    goto :goto_c

    :cond_2f
    iget-object v8, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v8}, Lcom/android/server/display/RampAnimator;->access$500(Lcom/android/server/display/RampAnimator;)I

    move-result v8

    const/16 v11, 0xfa

    if-le v8, v11, :cond_30

    iget-object v8, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    const/16 v11, 0xb4

    invoke-static {v8, v11}, Lcom/android/server/display/RampAnimator;->access$402(Lcom/android/server/display/RampAnimator;I)I

    goto :goto_c

    :cond_30
    iget-object v8, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    const/16 v11, 0x5a

    invoke-static {v8, v11}, Lcom/android/server/display/RampAnimator;->access$402(Lcom/android/server/display/RampAnimator;I)I

    :goto_c
    iget-object v8, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v8}, Lcom/android/server/display/RampAnimator;->access$500(Lcom/android/server/display/RampAnimator;)I

    move-result v8

    iget-object v11, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v11}, Lcom/android/server/display/RampAnimator;->access$1300(Lcom/android/server/display/RampAnimator;)I

    move-result v11

    if-ge v8, v11, :cond_35

    iget-object v8, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v8}, Lcom/android/server/display/RampAnimator;->access$500(Lcom/android/server/display/RampAnimator;)I

    move-result v8

    if-le v8, v12, :cond_31

    iget-object v7, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    const/16 v8, 0x21c

    invoke-static {v7, v8}, Lcom/android/server/display/RampAnimator;->access$402(Lcom/android/server/display/RampAnimator;I)I

    goto :goto_d

    :cond_31
    iget-object v8, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v8}, Lcom/android/server/display/RampAnimator;->access$500(Lcom/android/server/display/RampAnimator;)I

    move-result v8

    if-le v8, v7, :cond_32

    iget-object v7, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    const/16 v8, 0x1e0

    invoke-static {v7, v8}, Lcom/android/server/display/RampAnimator;->access$402(Lcom/android/server/display/RampAnimator;I)I

    goto :goto_d

    :cond_32
    iget-object v7, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v7}, Lcom/android/server/display/RampAnimator;->access$500(Lcom/android/server/display/RampAnimator;)I

    move-result v7

    const/16 v8, 0x1f4

    if-le v7, v8, :cond_33

    iget-object v7, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    const/16 v8, 0xf0

    invoke-static {v7, v8}, Lcom/android/server/display/RampAnimator;->access$402(Lcom/android/server/display/RampAnimator;I)I

    goto :goto_d

    :cond_33
    iget-object v7, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v7}, Lcom/android/server/display/RampAnimator;->access$500(Lcom/android/server/display/RampAnimator;)I

    move-result v7

    const/16 v8, 0xfa

    if-le v7, v8, :cond_34

    iget-object v7, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    const/16 v8, 0xb4

    invoke-static {v7, v8}, Lcom/android/server/display/RampAnimator;->access$402(Lcom/android/server/display/RampAnimator;I)I

    goto :goto_d

    :cond_34
    iget-object v7, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    const/16 v8, 0x3c

    invoke-static {v7, v8}, Lcom/android/server/display/RampAnimator;->access$402(Lcom/android/server/display/RampAnimator;I)I

    :cond_35
    :goto_d
    invoke-static {}, Lcom/android/server/display/RampAnimator;->access$1400()Z

    move-result v7

    if-eqz v7, :cond_36

    iget-object v7, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v7}, Lcom/android/server/display/RampAnimator;->access$500(Lcom/android/server/display/RampAnimator;)I

    move-result v7

    rem-int/lit8 v7, v7, 0x3

    if-nez v7, :cond_36

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "mRate:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v8}, Lcom/android/server/display/RampAnimator;->access$400(Lcom/android/server/display/RampAnimator;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " HZ:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v8}, Lcom/android/server/display/RampAnimator;->access$600(Lcom/android/server/display/RampAnimator;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " mAutoMaticDelta:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v8}, Lcom/android/server/display/RampAnimator;->access$800(Lcom/android/server/display/RampAnimator;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " mDelta:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v8}, Lcom/android/server/display/RampAnimator;->access$900(Lcom/android/server/display/RampAnimator;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " mTargetValue:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v8}, Lcom/android/server/display/RampAnimator;->access$300(Lcom/android/server/display/RampAnimator;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " mCurrentValue:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v8}, Lcom/android/server/display/RampAnimator;->access$500(Lcom/android/server/display/RampAnimator;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " mAnimatorReason:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v8}, Lcom/android/server/display/RampAnimator;->access$1000(Lcom/android/server/display/RampAnimator;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_36
    iget-object v6, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v6}, Lcom/android/server/display/RampAnimator;->access$1500(Lcom/android/server/display/RampAnimator;)I

    move-result v6

    const/4 v7, 0x1

    and-int/2addr v6, v7

    if-eqz v6, :cond_42

    iget-object v6, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v6}, Lcom/android/server/display/RampAnimator;->access$700(Lcom/android/server/display/RampAnimator;)I

    move-result v6

    const/16 v8, 0x3ff

    if-ne v6, v8, :cond_42

    iget-object v6, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v6}, Lcom/android/server/display/RampAnimator;->access$800(Lcom/android/server/display/RampAnimator;)I

    move-result v6

    if-eqz v6, :cond_42

    iget-object v6, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v6}, Lcom/android/server/display/RampAnimator;->access$800(Lcom/android/server/display/RampAnimator;)I

    move-result v6

    if-lez v6, :cond_37

    iget-object v6, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v6}, Lcom/android/server/display/RampAnimator;->access$300(Lcom/android/server/display/RampAnimator;)I

    move-result v6

    const/16 v8, 0x46

    if-ge v6, v8, :cond_37

    iget-object v6, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v6}, Lcom/android/server/display/RampAnimator;->access$800(Lcom/android/server/display/RampAnimator;)I

    move-result v8

    const/4 v10, 0x2

    mul-int/2addr v8, v10

    invoke-static {v6, v8}, Lcom/android/server/display/RampAnimator;->access$402(Lcom/android/server/display/RampAnimator;I)I

    goto/16 :goto_11

    :cond_37
    iget-object v6, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v6}, Lcom/android/server/display/RampAnimator;->access$800(Lcom/android/server/display/RampAnimator;)I

    move-result v6

    const/16 v8, 0xc8

    const/16 v10, 0x32

    if-le v6, v8, :cond_38

    iget-object v6, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v6}, Lcom/android/server/display/RampAnimator;->access$300(Lcom/android/server/display/RampAnimator;)I

    move-result v6

    iget-object v8, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v8}, Lcom/android/server/display/RampAnimator;->access$800(Lcom/android/server/display/RampAnimator;)I

    move-result v8

    sub-int/2addr v6, v8

    if-lt v6, v10, :cond_39

    :cond_38
    iget-object v6, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v6}, Lcom/android/server/display/RampAnimator;->access$800(Lcom/android/server/display/RampAnimator;)I

    move-result v6

    const/16 v8, 0x1f4

    if-le v6, v8, :cond_3b

    :cond_39
    iget-object v6, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v6}, Lcom/android/server/display/RampAnimator;->access$300(Lcom/android/server/display/RampAnimator;)I

    move-result v6

    iget-object v8, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v8}, Lcom/android/server/display/RampAnimator;->access$500(Lcom/android/server/display/RampAnimator;)I

    move-result v8

    sub-int/2addr v6, v8

    iget-object v8, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v8}, Lcom/android/server/display/RampAnimator;->access$800(Lcom/android/server/display/RampAnimator;)I

    move-result v8

    div-int/lit8 v8, v8, 0x4

    mul-int/lit8 v8, v8, 0x3

    if-le v6, v8, :cond_3a

    iget-object v6, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v6}, Lcom/android/server/display/RampAnimator;->access$800(Lcom/android/server/display/RampAnimator;)I

    move-result v8

    div-int/lit8 v8, v8, 0x3

    invoke-static {v6, v8}, Lcom/android/server/display/RampAnimator;->access$402(Lcom/android/server/display/RampAnimator;I)I

    goto :goto_e

    :cond_3a
    iget-object v6, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v6}, Lcom/android/server/display/RampAnimator;->access$800(Lcom/android/server/display/RampAnimator;)I

    move-result v8

    div-int/lit8 v8, v8, 0x6

    invoke-static {v6, v8}, Lcom/android/server/display/RampAnimator;->access$402(Lcom/android/server/display/RampAnimator;I)I

    :goto_e
    invoke-static {}, Lcom/android/server/display/RampAnimator;->access$1400()Z

    move-result v6

    if-eqz v6, :cond_42

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "mRate:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v8}, Lcom/android/server/display/RampAnimator;->access$400(Lcom/android/server/display/RampAnimator;)I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " mAutoMaticDelta:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v8}, Lcom/android/server/display/RampAnimator;->access$800(Lcom/android/server/display/RampAnimator;)I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " mCurrentValue:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v8}, Lcom/android/server/display/RampAnimator;->access$500(Lcom/android/server/display/RampAnimator;)I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    :cond_3b
    iget-object v6, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v6}, Lcom/android/server/display/RampAnimator;->access$800(Lcom/android/server/display/RampAnimator;)I

    move-result v6

    if-gez v6, :cond_42

    iget-object v6, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v6}, Lcom/android/server/display/RampAnimator;->access$300(Lcom/android/server/display/RampAnimator;)I

    move-result v6

    if-ge v6, v10, :cond_3f

    iget-object v6, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v6}, Lcom/android/server/display/RampAnimator;->access$500(Lcom/android/server/display/RampAnimator;)I

    move-result v6

    if-le v6, v10, :cond_3e

    iget-object v6, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v6}, Lcom/android/server/display/RampAnimator;->access$500(Lcom/android/server/display/RampAnimator;)I

    move-result v6

    iget-object v8, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v8}, Lcom/android/server/display/RampAnimator;->access$300(Lcom/android/server/display/RampAnimator;)I

    move-result v8

    sub-int/2addr v6, v8

    iget-object v8, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v8}, Lcom/android/server/display/RampAnimator;->access$800(Lcom/android/server/display/RampAnimator;)I

    move-result v8

    neg-int v8, v8

    div-int/lit8 v8, v8, 0x4

    mul-int/lit8 v8, v8, 0x3

    if-le v6, v8, :cond_3c

    iget-object v6, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v6}, Lcom/android/server/display/RampAnimator;->access$800(Lcom/android/server/display/RampAnimator;)I

    move-result v8

    neg-int v8, v8

    div-int/lit8 v8, v8, 0x4

    invoke-static {v6, v8}, Lcom/android/server/display/RampAnimator;->access$402(Lcom/android/server/display/RampAnimator;I)I

    goto :goto_f

    :cond_3c
    iget-object v6, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v6}, Lcom/android/server/display/RampAnimator;->access$800(Lcom/android/server/display/RampAnimator;)I

    move-result v8

    neg-int v8, v8

    const/4 v11, 0x2

    div-int/2addr v8, v11

    div-int/lit8 v8, v8, 0xa

    invoke-static {v6, v8}, Lcom/android/server/display/RampAnimator;->access$402(Lcom/android/server/display/RampAnimator;I)I

    :goto_f
    iget-object v6, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v6}, Lcom/android/server/display/RampAnimator;->access$300(Lcom/android/server/display/RampAnimator;)I

    move-result v6

    const/16 v8, 0x1e

    if-ge v6, v8, :cond_3d

    iget-object v6, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v6}, Lcom/android/server/display/RampAnimator;->access$500(Lcom/android/server/display/RampAnimator;)I

    move-result v6

    const/16 v8, 0x6e

    if-ge v6, v8, :cond_3d

    iget-object v6, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v6}, Lcom/android/server/display/RampAnimator;->access$500(Lcom/android/server/display/RampAnimator;)I

    move-result v6

    if-le v6, v10, :cond_3d

    iget-object v6, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    const/4 v8, 0x5

    invoke-static {v6, v8}, Lcom/android/server/display/RampAnimator;->access$402(Lcom/android/server/display/RampAnimator;I)I

    :cond_3d
    invoke-static {}, Lcom/android/server/display/RampAnimator;->access$1400()Z

    move-result v6

    if-eqz v6, :cond_42

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "mRate:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v8}, Lcom/android/server/display/RampAnimator;->access$400(Lcom/android/server/display/RampAnimator;)I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " mAutoMaticDelta:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v8}, Lcom/android/server/display/RampAnimator;->access$800(Lcom/android/server/display/RampAnimator;)I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " mCurrentValue:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v8}, Lcom/android/server/display/RampAnimator;->access$500(Lcom/android/server/display/RampAnimator;)I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    :cond_3e
    iget-object v6, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    const/16 v8, 0x1e

    invoke-static {v6, v8}, Lcom/android/server/display/RampAnimator;->access$402(Lcom/android/server/display/RampAnimator;I)I

    invoke-static {}, Lcom/android/server/display/RampAnimator;->access$1400()Z

    move-result v6

    if-eqz v6, :cond_42

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "mRate:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v8}, Lcom/android/server/display/RampAnimator;->access$400(Lcom/android/server/display/RampAnimator;)I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " mAutoMaticDelta:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v8}, Lcom/android/server/display/RampAnimator;->access$800(Lcom/android/server/display/RampAnimator;)I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " mCurrentValue:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v8}, Lcom/android/server/display/RampAnimator;->access$500(Lcom/android/server/display/RampAnimator;)I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    :cond_3f
    iget-object v6, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v6}, Lcom/android/server/display/RampAnimator;->access$800(Lcom/android/server/display/RampAnimator;)I

    move-result v6

    neg-int v6, v6

    const/16 v8, 0x1f4

    if-le v6, v8, :cond_41

    iget-object v6, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v6}, Lcom/android/server/display/RampAnimator;->access$800(Lcom/android/server/display/RampAnimator;)I

    move-result v8

    neg-int v8, v8

    const/4 v11, 0x5

    div-int/2addr v8, v11

    iget-object v11, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v11}, Lcom/android/server/display/RampAnimator;->access$500(Lcom/android/server/display/RampAnimator;)I

    move-result v11

    iget-object v12, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v12}, Lcom/android/server/display/RampAnimator;->access$300(Lcom/android/server/display/RampAnimator;)I

    move-result v12

    sub-int/2addr v11, v12

    mul-int/2addr v11, v13

    iget-object v12, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v12}, Lcom/android/server/display/RampAnimator;->access$800(Lcom/android/server/display/RampAnimator;)I

    move-result v12

    neg-int v12, v12

    div-int/2addr v11, v12

    mul-int/2addr v8, v11

    div-int/2addr v8, v13

    invoke-static {v6, v8}, Lcom/android/server/display/RampAnimator;->access$402(Lcom/android/server/display/RampAnimator;I)I

    iget-object v6, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v6}, Lcom/android/server/display/RampAnimator;->access$400(Lcom/android/server/display/RampAnimator;)I

    move-result v8

    if-ge v8, v10, :cond_40

    goto :goto_10

    :cond_40
    iget-object v8, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v8}, Lcom/android/server/display/RampAnimator;->access$400(Lcom/android/server/display/RampAnimator;)I

    move-result v10

    :goto_10
    invoke-static {v6, v10}, Lcom/android/server/display/RampAnimator;->access$402(Lcom/android/server/display/RampAnimator;I)I

    invoke-static {}, Lcom/android/server/display/RampAnimator;->access$1400()Z

    move-result v6

    if-eqz v6, :cond_42

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "mRate:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v8}, Lcom/android/server/display/RampAnimator;->access$400(Lcom/android/server/display/RampAnimator;)I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " mAutoMaticDelta:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v8}, Lcom/android/server/display/RampAnimator;->access$800(Lcom/android/server/display/RampAnimator;)I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " mCurrentValue:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v8}, Lcom/android/server/display/RampAnimator;->access$500(Lcom/android/server/display/RampAnimator;)I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    :cond_41
    iget-object v6, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v6}, Lcom/android/server/display/RampAnimator;->access$800(Lcom/android/server/display/RampAnimator;)I

    move-result v6

    neg-int v6, v6

    const/16 v8, 0x1f4

    if-ge v6, v8, :cond_42

    iget-object v6, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v6}, Lcom/android/server/display/RampAnimator;->access$800(Lcom/android/server/display/RampAnimator;)I

    move-result v8

    neg-int v8, v8

    div-int/lit8 v8, v8, 0x8

    invoke-static {v6, v8}, Lcom/android/server/display/RampAnimator;->access$402(Lcom/android/server/display/RampAnimator;I)I

    invoke-static {}, Lcom/android/server/display/RampAnimator;->access$1400()Z

    move-result v6

    if-eqz v6, :cond_42

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "mRate:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v8}, Lcom/android/server/display/RampAnimator;->access$400(Lcom/android/server/display/RampAnimator;)I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " mAutoMaticDelta:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v8}, Lcom/android/server/display/RampAnimator;->access$800(Lcom/android/server/display/RampAnimator;)I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " mCurrentValue:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v8}, Lcom/android/server/display/RampAnimator;->access$500(Lcom/android/server/display/RampAnimator;)I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_42
    :goto_11
    iget-object v6, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v6}, Lcom/android/server/display/RampAnimator;->access$400(Lcom/android/server/display/RampAnimator;)I

    move-result v6

    if-gtz v6, :cond_43

    iget-object v6, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v6}, Lcom/android/server/display/RampAnimator;->access$700(Lcom/android/server/display/RampAnimator;)I

    move-result v8

    const/4 v10, 0x5

    div-int/2addr v8, v10

    invoke-static {v6, v8}, Lcom/android/server/display/RampAnimator;->access$402(Lcom/android/server/display/RampAnimator;I)I

    const-string/jumbo v6, "mRate value error!"

    invoke-static {v9, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_43
    iget-object v6, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v6}, Lcom/android/server/display/RampAnimator;->access$500(Lcom/android/server/display/RampAnimator;)I

    move-result v6

    if-eq v5, v6, :cond_49

    iget-object v6, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v6}, Lcom/android/server/display/RampAnimator;->access$1100(Lcom/android/server/display/RampAnimator;)Z

    move-result v6

    if-nez v6, :cond_48

    iget-object v6, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v6}, Lcom/android/server/display/RampAnimator;->access$1600(Lcom/android/server/display/RampAnimator;)Z

    move-result v6

    if-nez v6, :cond_48

    const/16 v6, 0x55

    if-le v5, v6, :cond_46

    iget-object v6, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v6}, Lcom/android/server/display/RampAnimator;->access$500(Lcom/android/server/display/RampAnimator;)I

    move-result v6

    const/16 v8, 0x55

    if-gt v6, v8, :cond_46

    iget-object v6, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    iget-boolean v6, v6, Lcom/android/server/display/RampAnimator;->mEnableDelay:Z

    if-eqz v6, :cond_46

    iget-object v6, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v6}, Lcom/android/server/display/RampAnimator;->access$1500(Lcom/android/server/display/RampAnimator;)I

    move-result v6

    and-int/2addr v6, v7

    if-eqz v6, :cond_44

    iget-object v6, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v6}, Lcom/android/server/display/RampAnimator;->access$800(Lcom/android/server/display/RampAnimator;)I

    move-result v6

    if-eqz v6, :cond_46

    :cond_44
    iget-object v6, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v6}, Lcom/android/server/display/RampAnimator;->access$400(Lcom/android/server/display/RampAnimator;)I

    move-result v8

    invoke-static {v6, v8}, Lcom/android/server/display/RampAnimator;->access$1702(Lcom/android/server/display/RampAnimator;I)I

    iget-object v6, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v6, v10, v11}, Lcom/android/server/display/RampAnimator;->access$1802(Lcom/android/server/display/RampAnimator;J)J

    iget-object v6, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v6, v7}, Lcom/android/server/display/RampAnimator;->access$402(Lcom/android/server/display/RampAnimator;I)I

    iget-object v6, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v6}, Lcom/android/server/display/RampAnimator;->access$1900(Lcom/android/server/display/RampAnimator;)Z

    move-result v6

    if-eqz v6, :cond_45

    iget-object v6, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    const/16 v8, 0x1388

    invoke-static {v6, v8}, Lcom/android/server/display/RampAnimator;->access$2002(Lcom/android/server/display/RampAnimator;I)I

    goto :goto_12

    :cond_45
    iget-object v6, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    const/16 v8, 0xbb8

    invoke-static {v6, v8}, Lcom/android/server/display/RampAnimator;->access$2002(Lcom/android/server/display/RampAnimator;I)I

    :cond_46
    :goto_12
    iget-object v6, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v6}, Lcom/android/server/display/RampAnimator;->access$1700(Lcom/android/server/display/RampAnimator;)I

    move-result v6

    const/4 v8, -0x1

    if-eq v6, v8, :cond_48

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iget-object v6, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v6}, Lcom/android/server/display/RampAnimator;->access$1800(Lcom/android/server/display/RampAnimator;)J

    move-result-wide v12

    sub-long/2addr v10, v12

    iget-object v6, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v6}, Lcom/android/server/display/RampAnimator;->access$2000(Lcom/android/server/display/RampAnimator;)I

    move-result v6

    int-to-long v12, v6

    cmp-long v6, v10, v12

    if-lez v6, :cond_48

    iget-object v6, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v6}, Lcom/android/server/display/RampAnimator;->access$1500(Lcom/android/server/display/RampAnimator;)I

    move-result v6

    and-int/2addr v6, v7

    if-eqz v6, :cond_47

    iget-object v6, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v6}, Lcom/android/server/display/RampAnimator;->access$800(Lcom/android/server/display/RampAnimator;)I

    move-result v6

    if-eqz v6, :cond_48

    :cond_47
    iget-object v6, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v6}, Lcom/android/server/display/RampAnimator;->access$1700(Lcom/android/server/display/RampAnimator;)I

    move-result v8

    invoke-static {v6, v8}, Lcom/android/server/display/RampAnimator;->access$402(Lcom/android/server/display/RampAnimator;I)I

    iget-object v6, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    const/4 v8, -0x1

    invoke-static {v6, v8}, Lcom/android/server/display/RampAnimator;->access$1702(Lcom/android/server/display/RampAnimator;I)I

    iget-object v6, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    const/16 v8, 0xbb8

    invoke-static {v6, v8}, Lcom/android/server/display/RampAnimator;->access$2002(Lcom/android/server/display/RampAnimator;I)I

    :cond_48
    iget-object v6, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v6}, Lcom/android/server/display/RampAnimator;->access$2200(Lcom/android/server/display/RampAnimator;)Landroid/util/IntProperty;

    move-result-object v6

    iget-object v8, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v8}, Lcom/android/server/display/RampAnimator;->access$2100(Lcom/android/server/display/RampAnimator;)Ljava/lang/Object;

    move-result-object v8

    iget-object v10, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v10}, Lcom/android/server/display/RampAnimator;->access$500(Lcom/android/server/display/RampAnimator;)I

    move-result v10

    invoke-virtual {v6, v8, v10}, Landroid/util/IntProperty;->setValue(Ljava/lang/Object;I)V

    :cond_49
    iget-object v6, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v6}, Lcom/android/server/display/RampAnimator;->access$800(Lcom/android/server/display/RampAnimator;)I

    move-result v6

    if-nez v6, :cond_4a

    const/4 v6, 0x7

    iget-object v8, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v8}, Lcom/android/server/display/RampAnimator;->access$1000(Lcom/android/server/display/RampAnimator;)I

    move-result v8

    if-ne v6, v8, :cond_57

    :cond_4a
    iget-object v6, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v6}, Lcom/android/server/display/RampAnimator;->access$2300(Lcom/android/server/display/RampAnimator;)J

    move-result-wide v10

    const-wide/16 v12, -0x1

    cmp-long v6, v10, v12

    if-eqz v6, :cond_4b

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iget-object v6, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v6}, Lcom/android/server/display/RampAnimator;->access$2300(Lcom/android/server/display/RampAnimator;)J

    move-result-wide v12

    sub-long/2addr v10, v12

    const-wide/16 v12, 0x3de

    cmp-long v6, v10, v12

    if-lez v6, :cond_57

    :cond_4b
    iget-object v6, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v6}, Lcom/android/server/display/RampAnimator;->access$2400(Lcom/android/server/display/RampAnimator;)I

    move-result v6

    mul-int/lit16 v8, v6, 0xfff

    div-int/lit16 v8, v8, 0xff

    iget-object v10, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v10}, Lcom/android/server/display/RampAnimator;->access$500(Lcom/android/server/display/RampAnimator;)I

    move-result v10

    iget-object v11, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v11}, Lcom/android/server/display/RampAnimator;->access$300(Lcom/android/server/display/RampAnimator;)I

    move-result v11

    if-ge v10, v11, :cond_4f

    iget-object v10, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v10}, Lcom/android/server/display/RampAnimator;->access$300(Lcom/android/server/display/RampAnimator;)I

    move-result v10

    if-ge v8, v10, :cond_4f

    iget-object v10, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v10}, Lcom/android/server/display/RampAnimator;->access$2500(Lcom/android/server/display/RampAnimator;)I

    move-result v10

    const/4 v11, -0x1

    if-eq v10, v11, :cond_4c

    iget-object v10, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v10}, Lcom/android/server/display/RampAnimator;->access$2500(Lcom/android/server/display/RampAnimator;)I

    move-result v10

    if-ne v6, v10, :cond_4f

    :cond_4c
    iget-object v9, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v9}, Lcom/android/server/display/RampAnimator;->access$500(Lcom/android/server/display/RampAnimator;)I

    move-result v9

    iget-object v10, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v10}, Lcom/android/server/display/RampAnimator;->access$400(Lcom/android/server/display/RampAnimator;)I

    move-result v10

    add-int/2addr v9, v10

    if-lt v8, v9, :cond_4d

    iget-object v9, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v9}, Lcom/android/server/display/RampAnimator;->access$400(Lcom/android/server/display/RampAnimator;)I

    move-result v9

    const/4 v10, 0x5

    div-int/2addr v9, v10

    add-int/2addr v8, v9

    goto :goto_13

    :cond_4d
    iget-object v9, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v9}, Lcom/android/server/display/RampAnimator;->access$500(Lcom/android/server/display/RampAnimator;)I

    move-result v9

    iget-object v10, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v10}, Lcom/android/server/display/RampAnimator;->access$400(Lcom/android/server/display/RampAnimator;)I

    move-result v10

    add-int v8, v9, v10

    :goto_13
    iget-object v9, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v9}, Lcom/android/server/display/RampAnimator;->access$300(Lcom/android/server/display/RampAnimator;)I

    move-result v9

    if-le v8, v9, :cond_4e

    iget-object v9, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v9}, Lcom/android/server/display/RampAnimator;->access$300(Lcom/android/server/display/RampAnimator;)I

    move-result v8

    :cond_4e
    iget-object v9, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    const/16 v10, 0x9

    invoke-virtual {v9, v8, v10}, Lcom/android/server/display/RampAnimator;->putScreenBrightnessSetting(II)I

    move-result v10

    invoke-static {v9, v10}, Lcom/android/server/display/RampAnimator;->access$2502(Lcom/android/server/display/RampAnimator;I)I

    goto/16 :goto_15

    :cond_4f
    iget-object v10, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v10}, Lcom/android/server/display/RampAnimator;->access$500(Lcom/android/server/display/RampAnimator;)I

    move-result v10

    iget-object v11, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v11}, Lcom/android/server/display/RampAnimator;->access$300(Lcom/android/server/display/RampAnimator;)I

    move-result v11

    if-le v10, v11, :cond_53

    add-int/lit8 v10, v8, 0x1

    iget-object v11, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v11}, Lcom/android/server/display/RampAnimator;->access$300(Lcom/android/server/display/RampAnimator;)I

    move-result v11

    if-le v10, v11, :cond_53

    iget-object v10, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v10}, Lcom/android/server/display/RampAnimator;->access$2500(Lcom/android/server/display/RampAnimator;)I

    move-result v10

    const/4 v11, -0x1

    if-eq v10, v11, :cond_50

    iget-object v10, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v10}, Lcom/android/server/display/RampAnimator;->access$2500(Lcom/android/server/display/RampAnimator;)I

    move-result v10

    if-ne v6, v10, :cond_53

    :cond_50
    iget-object v9, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v9}, Lcom/android/server/display/RampAnimator;->access$500(Lcom/android/server/display/RampAnimator;)I

    move-result v9

    iget-object v10, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v10}, Lcom/android/server/display/RampAnimator;->access$400(Lcom/android/server/display/RampAnimator;)I

    move-result v10

    sub-int/2addr v9, v10

    if-gt v8, v9, :cond_51

    iget-object v9, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v9}, Lcom/android/server/display/RampAnimator;->access$400(Lcom/android/server/display/RampAnimator;)I

    move-result v9

    const/4 v10, 0x5

    div-int/2addr v9, v10

    sub-int/2addr v8, v9

    goto :goto_14

    :cond_51
    iget-object v9, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v9}, Lcom/android/server/display/RampAnimator;->access$500(Lcom/android/server/display/RampAnimator;)I

    move-result v9

    iget-object v10, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v10}, Lcom/android/server/display/RampAnimator;->access$400(Lcom/android/server/display/RampAnimator;)I

    move-result v10

    sub-int v8, v9, v10

    :goto_14
    iget-object v9, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v9}, Lcom/android/server/display/RampAnimator;->access$300(Lcom/android/server/display/RampAnimator;)I

    move-result v9

    if-ge v8, v9, :cond_52

    iget-object v9, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v9}, Lcom/android/server/display/RampAnimator;->access$300(Lcom/android/server/display/RampAnimator;)I

    move-result v8

    :cond_52
    iget-object v9, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    const/16 v10, 0xa

    invoke-virtual {v9, v8, v10}, Lcom/android/server/display/RampAnimator;->putScreenBrightnessSetting(II)I

    move-result v10

    invoke-static {v9, v10}, Lcom/android/server/display/RampAnimator;->access$2502(Lcom/android/server/display/RampAnimator;I)I

    goto/16 :goto_15

    :cond_53
    const/4 v10, 0x7

    iget-object v11, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v11}, Lcom/android/server/display/RampAnimator;->access$1000(Lcom/android/server/display/RampAnimator;)I

    move-result v11

    if-ne v10, v11, :cond_56

    iget-object v10, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v10}, Lcom/android/server/display/RampAnimator;->access$2300(Lcom/android/server/display/RampAnimator;)J

    move-result-wide v10

    const-wide/16 v12, -0x1

    cmp-long v10, v10, v12

    if-nez v10, :cond_56

    iget-object v10, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v10}, Lcom/android/server/display/RampAnimator;->access$500(Lcom/android/server/display/RampAnimator;)I

    move-result v10

    iget-object v11, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v11}, Lcom/android/server/display/RampAnimator;->access$300(Lcom/android/server/display/RampAnimator;)I

    move-result v11

    if-ge v10, v11, :cond_54

    iget-object v10, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v10}, Lcom/android/server/display/RampAnimator;->access$300(Lcom/android/server/display/RampAnimator;)I

    move-result v10

    if-gt v8, v10, :cond_55

    :cond_54
    iget-object v10, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v10}, Lcom/android/server/display/RampAnimator;->access$500(Lcom/android/server/display/RampAnimator;)I

    move-result v10

    iget-object v11, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v11}, Lcom/android/server/display/RampAnimator;->access$300(Lcom/android/server/display/RampAnimator;)I

    move-result v11

    if-le v10, v11, :cond_56

    iget-object v10, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v10}, Lcom/android/server/display/RampAnimator;->access$300(Lcom/android/server/display/RampAnimator;)I

    move-result v10

    if-ge v8, v10, :cond_56

    :cond_55
    iget-object v10, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v10}, Lcom/android/server/display/RampAnimator;->access$300(Lcom/android/server/display/RampAnimator;)I

    move-result v11

    const/16 v12, 0xc

    invoke-virtual {v10, v11, v12}, Lcom/android/server/display/RampAnimator;->putScreenBrightnessSetting(II)I

    move-result v11

    invoke-static {v10, v11}, Lcom/android/server/display/RampAnimator;->access$2502(Lcom/android/server/display/RampAnimator;I)I

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "status error, "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v11}, Lcom/android/server/display/RampAnimator;->access$500(Lcom/android/server/display/RampAnimator;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " --> "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v11}, Lcom/android/server/display/RampAnimator;->access$300(Lcom/android/server/display/RampAnimator;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_56
    :goto_15
    iget-object v9, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v9, v10, v11}, Lcom/android/server/display/RampAnimator;->access$2302(Lcom/android/server/display/RampAnimator;J)J

    :cond_57
    iget-object v6, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v6}, Lcom/android/server/display/RampAnimator;->access$300(Lcom/android/server/display/RampAnimator;)I

    move-result v6

    iget-object v8, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v8}, Lcom/android/server/display/RampAnimator;->access$500(Lcom/android/server/display/RampAnimator;)I

    move-result v8

    if-eq v6, v8, :cond_58

    iget-object v6, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v6}, Lcom/android/server/display/RampAnimator;->access$2600(Lcom/android/server/display/RampAnimator;)V

    goto :goto_16

    :cond_58
    iget-object v6, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v6}, Lcom/android/server/display/RampAnimator;->access$800(Lcom/android/server/display/RampAnimator;)I

    move-result v6

    if-eqz v6, :cond_59

    iget-object v6, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v6}, Lcom/android/server/display/RampAnimator;->access$500(Lcom/android/server/display/RampAnimator;)I

    move-result v8

    const/16 v9, 0xb

    invoke-virtual {v6, v8, v9}, Lcom/android/server/display/RampAnimator;->putScreenBrightnessSetting(II)I

    :cond_59
    iget-object v6, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    const/4 v8, 0x0

    invoke-static {v6, v8}, Lcom/android/server/display/RampAnimator;->access$2702(Lcom/android/server/display/RampAnimator;Z)Z

    iget-object v6, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v6}, Lcom/android/server/display/RampAnimator;->access$2800(Lcom/android/server/display/RampAnimator;)Lcom/android/server/display/RampAnimator$Listener;

    move-result-object v6

    if-eqz v6, :cond_5a

    iget-object v6, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v6}, Lcom/android/server/display/RampAnimator;->access$2800(Lcom/android/server/display/RampAnimator;)Lcom/android/server/display/RampAnimator$Listener;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/server/display/RampAnimator$Listener;->onAnimationEnd()V

    iget-object v6, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v6}, Lcom/android/server/display/RampAnimator;->access$2900(Lcom/android/server/display/RampAnimator;)Z

    move-result v6

    if-eqz v6, :cond_5a

    iget-object v6, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v6}, Lcom/android/server/display/RampAnimator;->access$2800(Lcom/android/server/display/RampAnimator;)Lcom/android/server/display/RampAnimator$Listener;

    move-result-object v6

    const/16 v8, 0x7d0

    invoke-interface {v6, v7, v8}, Lcom/android/server/display/RampAnimator$Listener;->setDimmingSpeed(II)V

    iget-object v6, v0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/android/server/display/RampAnimator;->access$2902(Lcom/android/server/display/RampAnimator;Z)Z

    :cond_5a
    :goto_16
    return-void
.end method
