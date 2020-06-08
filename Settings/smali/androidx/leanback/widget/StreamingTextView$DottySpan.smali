.class Landroidx/leanback/widget/StreamingTextView$DottySpan;
.super Landroid/text/style/ReplacementSpan;
.source "StreamingTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/leanback/widget/StreamingTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DottySpan"
.end annotation


# instance fields
.field private final mPosition:I

.field private final mSeed:I

.field final synthetic this$0:Landroidx/leanback/widget/StreamingTextView;


# direct methods
.method public constructor <init>(Landroidx/leanback/widget/StreamingTextView;II)V
    .locals 0

    iput-object p1, p0, Landroidx/leanback/widget/StreamingTextView$DottySpan;->this$0:Landroidx/leanback/widget/StreamingTextView;

    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    iput p2, p0, Landroidx/leanback/widget/StreamingTextView$DottySpan;->mSeed:I

    iput p3, p0, Landroidx/leanback/widget/StreamingTextView$DottySpan;->mPosition:I

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p9

    invoke-virtual {v5, v2, v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v2

    float-to-int v2, v2

    iget-object v3, v0, Landroidx/leanback/widget/StreamingTextView$DottySpan;->this$0:Landroidx/leanback/widget/StreamingTextView;

    iget-object v3, v3, Landroidx/leanback/widget/StreamingTextView;->mOneDot:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    mul-int/lit8 v4, v3, 0x2

    div-int v6, v2, v4

    rem-int v7, v2, v4

    div-int/lit8 v7, v7, 0x2

    iget-object v8, v0, Landroidx/leanback/widget/StreamingTextView$DottySpan;->this$0:Landroidx/leanback/widget/StreamingTextView;

    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v8}, Landroid/view/View;->getLayoutDirection()I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-ne v10, v8, :cond_0

    move v8, v10

    goto :goto_0

    :cond_0
    move v8, v9

    :goto_0
    iget-object v11, v0, Landroidx/leanback/widget/StreamingTextView$DottySpan;->this$0:Landroidx/leanback/widget/StreamingTextView;

    iget-object v11, v11, Landroidx/leanback/widget/StreamingTextView;->mRandom:Ljava/util/Random;

    iget v12, v0, Landroidx/leanback/widget/StreamingTextView$DottySpan;->mSeed:I

    int-to-long v12, v12

    invoke-virtual {v11, v12, v13}, Ljava/util/Random;->setSeed(J)V

    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->getAlpha()I

    move-result v11

    :goto_1
    if-ge v9, v6, :cond_4

    iget v12, v0, Landroidx/leanback/widget/StreamingTextView$DottySpan;->mPosition:I

    add-int/2addr v12, v9

    iget-object v13, v0, Landroidx/leanback/widget/StreamingTextView$DottySpan;->this$0:Landroidx/leanback/widget/StreamingTextView;

    iget v13, v13, Landroidx/leanback/widget/StreamingTextView;->mStreamPosition:I

    if-lt v12, v13, :cond_1

    goto :goto_4

    :cond_1
    mul-int v12, v9, v4

    add-int/2addr v12, v7

    div-int/lit8 v13, v3, 0x2

    add-int/2addr v13, v12

    int-to-float v12, v13

    if-eqz v8, :cond_2

    int-to-float v13, v2

    add-float v13, p5, v13

    sub-float/2addr v13, v12

    int-to-float v12, v3

    sub-float/2addr v13, v12

    goto :goto_2

    :cond_2
    add-float v13, p5, v12

    :goto_2
    iget-object v12, v0, Landroidx/leanback/widget/StreamingTextView$DottySpan;->this$0:Landroidx/leanback/widget/StreamingTextView;

    iget-object v12, v12, Landroidx/leanback/widget/StreamingTextView;->mRandom:Ljava/util/Random;

    const/4 v14, 0x4

    invoke-virtual {v12, v14}, Ljava/util/Random;->nextInt(I)I

    move-result v12

    add-int/2addr v12, v10

    mul-int/lit8 v12, v12, 0x3f

    invoke-virtual {v5, v12}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v12, v0, Landroidx/leanback/widget/StreamingTextView$DottySpan;->this$0:Landroidx/leanback/widget/StreamingTextView;

    iget-object v12, v12, Landroidx/leanback/widget/StreamingTextView;->mRandom:Ljava/util/Random;

    invoke-virtual {v12}, Ljava/util/Random;->nextBoolean()Z

    move-result v12

    if-eqz v12, :cond_3

    iget-object v12, v0, Landroidx/leanback/widget/StreamingTextView$DottySpan;->this$0:Landroidx/leanback/widget/StreamingTextView;

    iget-object v12, v12, Landroidx/leanback/widget/StreamingTextView;->mTwoDot:Landroid/graphics/Bitmap;

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    sub-int v14, p7, v14

    int-to-float v14, v14

    invoke-virtual {v1, v12, v13, v14, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_3

    :cond_3
    iget-object v12, v0, Landroidx/leanback/widget/StreamingTextView$DottySpan;->this$0:Landroidx/leanback/widget/StreamingTextView;

    iget-object v12, v12, Landroidx/leanback/widget/StreamingTextView;->mOneDot:Landroid/graphics/Bitmap;

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    sub-int v14, p7, v14

    int-to-float v14, v14

    invoke-virtual {v1, v12, v13, v14, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_4
    :goto_4
    invoke-virtual {v5, v11}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 0

    invoke-virtual {p1, p2, p3, p4}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method
