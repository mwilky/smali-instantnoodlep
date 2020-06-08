.class Landroidx/leanback/widget/StreamingTextView;
.super Landroid/widget/EditText;
.source "StreamingTextView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/leanback/widget/StreamingTextView$DottySpan;
    }
.end annotation


# static fields
.field private static final SPLIT_PATTERN:Ljava/util/regex/Pattern;

.field private static final STREAM_POSITION_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroidx/leanback/widget/StreamingTextView;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mOneDot:Landroid/graphics/Bitmap;

.field final mRandom:Ljava/util/Random;

.field mStreamPosition:I

.field private mStreamingAnimation:Landroid/animation/ObjectAnimator;

.field mTwoDot:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "\\S+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/leanback/widget/StreamingTextView;->SPLIT_PATTERN:Ljava/util/regex/Pattern;

    new-instance v0, Landroidx/leanback/widget/StreamingTextView$1;

    const-class v1, Ljava/lang/Integer;

    const-string v2, "streamPosition"

    invoke-direct {v0, v1, v2}, Landroidx/leanback/widget/StreamingTextView$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroidx/leanback/widget/StreamingTextView;->STREAM_POSITION_PROPERTY:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    iput-object p1, p0, Landroidx/leanback/widget/StreamingTextView;->mRandom:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    iput-object p1, p0, Landroidx/leanback/widget/StreamingTextView;->mRandom:Ljava/util/Random;

    return-void
.end method

.method private getScaledBitmap(IF)Landroid/graphics/Bitmap;
    .locals 1

    invoke-virtual {p0}, Landroid/widget/EditText;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, p2

    float-to-int p1, p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int p2, v0

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method getStreamPosition()I
    .locals 0

    iget p0, p0, Landroidx/leanback/widget/StreamingTextView;->mStreamPosition:I

    return p0
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/EditText;->onFinishInflate()V

    const v0, 0x3fa66666    # 1.3f

    const v1, 0x7f0803e1

    invoke-direct {p0, v1, v0}, Landroidx/leanback/widget/StreamingTextView;->getScaledBitmap(IF)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Landroidx/leanback/widget/StreamingTextView;->mOneDot:Landroid/graphics/Bitmap;

    const v1, 0x7f0803e3

    invoke-direct {p0, v1, v0}, Landroidx/leanback/widget/StreamingTextView;->getScaledBitmap(IF)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Landroidx/leanback/widget/StreamingTextView;->mTwoDot:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroidx/leanback/widget/StreamingTextView;->reset()V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/EditText;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-string p0, "androidx.leanback.widget.StreamingTextView"

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Landroidx/leanback/widget/StreamingTextView;->mStreamPosition:I

    iget-object v0, p0, Landroidx/leanback/widget/StreamingTextView;->mStreamingAnimation:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_0
    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V
    .locals 1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-super {p0, p1}, Landroid/widget/EditText;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    return-void
.end method

.method public setFinalRecognizedText(Ljava/lang/CharSequence;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/widget/EditText;->length()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->bringPointIntoView(I)Z

    return-void
.end method

.method setStreamPosition(I)V
    .locals 0

    iput p1, p0, Landroidx/leanback/widget/StreamingTextView;->mStreamPosition:I

    invoke-virtual {p0}, Landroid/widget/EditText;->invalidate()V

    return-void
.end method

.method public updateRecognizedText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    if-eqz p2, :cond_1

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    invoke-virtual {v0, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    sget-object v2, Landroidx/leanback/widget/StreamingTextView;->SPLIT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    :goto_0
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    move-result v4

    add-int/2addr v4, v1

    new-instance v5, Landroidx/leanback/widget/StreamingTextView$DottySpan;

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v6

    invoke-virtual {p2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-direct {v5, p0, v6, v3}, Landroidx/leanback/widget/StreamingTextView$DottySpan;-><init>(Landroidx/leanback/widget/StreamingTextView;II)V

    const/16 v6, 0x21

    invoke-virtual {v0, v5, v3, v4, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iget p2, p0, Landroidx/leanback/widget/StreamingTextView;->mStreamPosition:I

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Landroidx/leanback/widget/StreamingTextView;->mStreamPosition:I

    new-instance p1, Landroid/text/SpannedString;

    invoke-direct {p1, v0}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/widget/EditText;->length()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->bringPointIntoView(I)Z

    iget-object p1, p0, Landroidx/leanback/widget/StreamingTextView;->mStreamingAnimation:Landroid/animation/ObjectAnimator;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_2
    invoke-virtual {p0}, Landroidx/leanback/widget/StreamingTextView;->getStreamPosition()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/EditText;->length()I

    move-result p2

    sub-int v0, p2, p1

    if-lez v0, :cond_4

    iget-object v1, p0, Landroidx/leanback/widget/StreamingTextView;->mStreamingAnimation:Landroid/animation/ObjectAnimator;

    if-nez v1, :cond_3

    new-instance v1, Landroid/animation/ObjectAnimator;

    invoke-direct {v1}, Landroid/animation/ObjectAnimator;-><init>()V

    iput-object v1, p0, Landroidx/leanback/widget/StreamingTextView;->mStreamingAnimation:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Landroidx/leanback/widget/StreamingTextView;->mStreamingAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1, p0}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    iget-object v1, p0, Landroidx/leanback/widget/StreamingTextView;->mStreamingAnimation:Landroid/animation/ObjectAnimator;

    sget-object v2, Landroidx/leanback/widget/StreamingTextView;->STREAM_POSITION_PROPERTY:Landroid/util/Property;

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setProperty(Landroid/util/Property;)V

    :cond_3
    iget-object v1, p0, Landroidx/leanback/widget/StreamingTextView;->mStreamingAnimation:Landroid/animation/ObjectAnimator;

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput p1, v2, v3

    const/4 p1, 0x1

    aput p2, v2, p1

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setIntValues([I)V

    iget-object p1, p0, Landroidx/leanback/widget/StreamingTextView;->mStreamingAnimation:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x32

    int-to-long v3, v0

    mul-long/2addr v3, v1

    invoke-virtual {p1, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object p0, p0, Landroidx/leanback/widget/StreamingTextView;->mStreamingAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_4
    return-void
.end method
