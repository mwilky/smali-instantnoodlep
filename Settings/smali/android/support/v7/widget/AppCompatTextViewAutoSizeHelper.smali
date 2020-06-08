.class Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;
.super Ljava/lang/Object;
.source "AppCompatTextViewAutoSizeHelper.java"


# static fields
.field private static final TEMP_RECTF:Landroid/graphics/RectF;

.field private static sTextViewMethodByNameCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAutoSizeMaxTextSizeInPx:F

.field private mAutoSizeMinTextSizeInPx:F

.field private mAutoSizeStepGranularityInPx:F

.field private mAutoSizeTextSizesInPx:[I

.field private mAutoSizeTextType:I

.field private final mContext:Landroid/content/Context;

.field private mHasPresetAutoSizeValues:Z

.field private mNeedsAutoSizeText:Z

.field private mTempTextPaint:Landroid/text/TextPaint;

.field private final mTextView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    sput-object v0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->TEMP_RECTF:Landroid/graphics/RectF;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->sTextViewMethodByNameCache:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method constructor <init>(Landroid/widget/TextView;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextType:I

    iput-boolean v0, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mNeedsAutoSizeText:Z

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeStepGranularityInPx:F

    iput v1, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeMinTextSizeInPx:F

    iput v1, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeMaxTextSizeInPx:F

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextSizesInPx:[I

    iput-boolean v0, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mHasPresetAutoSizeValues:Z

    iput-object p1, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    iget-object p1, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mContext:Landroid/content/Context;

    return-void
.end method

.method private cleanupAutoSizePresetSizes([I)[I
    .locals 5

    array-length p0, p1

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    invoke-static {p1}, Ljava/util/Arrays;->sort([I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p0, :cond_2

    aget v3, p1, v2

    if-lez v3, :cond_1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0, v4}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v4

    if-gez v4, :cond_1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ne p0, v2, :cond_3

    return-object p1

    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    new-array p1, p0, [I

    :goto_1
    if-ge v1, p0, :cond_4

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    return-object p1
.end method

.method private findLargestTextSizeWhichFits(Landroid/graphics/RectF;)I
    .locals 13

    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextSizesInPx:[I

    array-length v0, v0

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    move v3, v0

    move v0, v1

    move v4, v2

    :goto_0
    if-gt v0, v3, :cond_7

    add-int v4, v0, v3

    div-int/lit8 v4, v4, 0x2

    iget-object v5, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextSizesInPx:[I

    aget v5, v5, v4

    iget-object v6, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    iget-object v7, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v7

    if-eqz v7, :cond_0

    iget-object v8, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    invoke-interface {v7, v6, v8}, Landroid/text/method/TransformationMethod;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v7

    if-eqz v7, :cond_0

    move-object v6, v7

    :cond_0
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object v7, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getMaxLines()I

    move-result v7

    iget-object v8, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mTempTextPaint:Landroid/text/TextPaint;

    if-nez v8, :cond_1

    new-instance v8, Landroid/text/TextPaint;

    invoke-direct {v8}, Landroid/text/TextPaint;-><init>()V

    iput-object v8, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mTempTextPaint:Landroid/text/TextPaint;

    goto :goto_1

    :cond_1
    invoke-virtual {v8}, Landroid/text/TextPaint;->reset()V

    :goto_1
    iget-object v8, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mTempTextPaint:Landroid/text/TextPaint;

    iget-object v9, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    iget-object v8, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mTempTextPaint:Landroid/text/TextPaint;

    int-to-float v5, v5

    invoke-virtual {v8, v5}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object v5, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const-string v9, "getLayoutAlignment"

    invoke-direct {p0, v5, v9, v8}, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->invokeAndReturnWithDefault(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/text/Layout$Alignment;

    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    iget v8, p1, Landroid/graphics/RectF;->right:F

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    iget-object v9, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    sget-object v10, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    const-string v11, "getTextDirectionHeuristic"

    invoke-direct {p0, v9, v11, v10}, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->invokeAndReturnWithDefault(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/text/TextDirectionHeuristic;

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v10

    iget-object v11, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mTempTextPaint:Landroid/text/TextPaint;

    invoke-static {v6, v2, v10, v11, v8}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    move-result-object v5

    iget-object v8, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getLineSpacingExtra()F

    move-result v8

    iget-object v10, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getLineSpacingMultiplier()F

    move-result v10

    invoke-virtual {v5, v8, v10}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    move-result-object v5

    iget-object v8, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getIncludeFontPadding()Z

    move-result v8

    invoke-virtual {v5, v8}, Landroid/text/StaticLayout$Builder;->setIncludePad(Z)Landroid/text/StaticLayout$Builder;

    move-result-object v5

    iget-object v8, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getBreakStrategy()I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/text/StaticLayout$Builder;->setBreakStrategy(I)Landroid/text/StaticLayout$Builder;

    move-result-object v5

    iget-object v8, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getHyphenationFrequency()I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/text/StaticLayout$Builder;->setHyphenationFrequency(I)Landroid/text/StaticLayout$Builder;

    move-result-object v5

    const/4 v8, -0x1

    if-ne v7, v8, :cond_2

    const v10, 0x7fffffff

    goto :goto_2

    :cond_2
    move v10, v7

    :goto_2
    invoke-virtual {v5, v10}, Landroid/text/StaticLayout$Builder;->setMaxLines(I)Landroid/text/StaticLayout$Builder;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/text/StaticLayout$Builder;->setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/text/StaticLayout$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object v5

    if-eq v7, v8, :cond_3

    invoke-virtual {v5}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v8

    if-gt v8, v7, :cond_4

    invoke-virtual {v5}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v7

    sub-int/2addr v7, v1

    invoke-virtual {v5, v7}, Landroid/text/StaticLayout;->getLineEnd(I)I

    move-result v7

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-eq v7, v6, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v5}, Landroid/text/StaticLayout;->getHeight()I

    move-result v5

    int-to-float v5, v5

    iget v6, p1, Landroid/graphics/RectF;->bottom:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_5

    :cond_4
    :goto_3
    move v5, v2

    goto :goto_4

    :cond_5
    move v5, v1

    :goto_4
    if-eqz v5, :cond_6

    add-int/lit8 v4, v4, 0x1

    move v12, v4

    move v4, v0

    move v0, v12

    goto/16 :goto_0

    :cond_6
    add-int/lit8 v4, v4, -0x1

    move v3, v4

    goto/16 :goto_0

    :cond_7
    iget-object p0, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextSizesInPx:[I

    aget p0, p0, v4

    return p0

    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "No available text sizes to choose from."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getTextViewMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 2

    :try_start_0
    sget-object p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->sTextViewMethodByNameCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/reflect/Method;

    if-nez p0, :cond_0

    const-class p0, Landroid/widget/TextView;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Class;

    invoke-virtual {p0, p1, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    sget-object v0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->sTextViewMethodByNameCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to retrieve TextView#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "() method"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ACTVAutoSizeHelper"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private invokeAndReturnWithDefault(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p2}, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->getTextViewMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object p0

    new-array v1, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    const/4 v0, 0x1

    :try_start_1
    const-string p1, "ACTVAutoSizeHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to invoke TextView#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "() method"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    return-object p3

    :goto_1
    throw p0
.end method

.method private setupAutoSizeText()Z
    .locals 6

    invoke-direct {p0}, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->supportsAutoSizeText()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget v0, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextType:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    iget-boolean v0, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mHasPresetAutoSizeValues:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextSizesInPx:[I

    array-length v0, v0

    if-nez v0, :cond_3

    :cond_0
    iget v0, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeMinTextSizeInPx:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    move v3, v2

    :goto_0
    iget v4, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeStepGranularityInPx:F

    add-float/2addr v4, v0

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget v5, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeMaxTextSizeInPx:F

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    if-gt v4, v5, :cond_1

    add-int/lit8 v3, v3, 0x1

    iget v4, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeStepGranularityInPx:F

    add-float/2addr v0, v4

    goto :goto_0

    :cond_1
    new-array v0, v3, [I

    iget v4, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeMinTextSizeInPx:F

    :goto_1
    if-ge v1, v3, :cond_2

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v5

    aput v5, v0, v1

    iget v5, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeStepGranularityInPx:F

    add-float/2addr v4, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-direct {p0, v0}, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->cleanupAutoSizePresetSizes([I)[I

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextSizesInPx:[I

    :cond_3
    iput-boolean v2, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mNeedsAutoSizeText:Z

    goto :goto_2

    :cond_4
    iput-boolean v1, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mNeedsAutoSizeText:Z

    :goto_2
    iget-boolean p0, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mNeedsAutoSizeText:Z

    return p0
.end method

.method private setupAutoSizeUniformPresetSizesConfiguration()Z
    .locals 4

    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextSizesInPx:[I

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    iput-boolean v3, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mHasPresetAutoSizeValues:Z

    iget-boolean v3, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mHasPresetAutoSizeValues:Z

    if-eqz v3, :cond_1

    iput v2, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextType:I

    iget-object v3, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextSizesInPx:[I

    aget v1, v3, v1

    int-to-float v1, v1

    iput v1, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeMinTextSizeInPx:F

    sub-int/2addr v0, v2

    aget v0, v3, v0

    int-to-float v0, v0

    iput v0, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeMaxTextSizeInPx:F

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeStepGranularityInPx:F

    :cond_1
    iget-boolean p0, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mHasPresetAutoSizeValues:Z

    return p0
.end method

.method private supportsAutoSizeText()Z
    .locals 0

    iget-object p0, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    instance-of p0, p0, Landroid/support/v7/widget/AppCompatEditText;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private validateAndSetAutoSizeTextTypeUniformConfiguration(FFF)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    const-string v2, "px) is less or equal to (0px)"

    if-lez v1, :cond_2

    cmpg-float v1, p2, p1

    if-lez v1, :cond_1

    cmpg-float v0, p3, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextType:I

    iput p1, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeMinTextSizeInPx:F

    iput p2, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeMaxTextSizeInPx:F

    iput p3, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeStepGranularityInPx:F

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mHasPresetAutoSizeValues:Z

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "The auto-size step granularity ("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Maximum auto-size text size ("

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, "px) is less or equal to minimum auto-size "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "text size ("

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, "px)"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Minimum auto-size text size ("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method autoSizeText()V
    .locals 5

    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->isAutoSizeEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mNeedsAutoSizeText:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    if-lez v0, :cond_5

    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    if-gtz v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "getHorizontallyScrolling"

    invoke-direct {p0, v0, v3, v2}, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->invokeAndReturnWithDefault(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    const/high16 v0, 0x100000

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    iget-object v2, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v2

    sub-int/2addr v0, v2

    iget-object v2, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTotalPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    :goto_0
    iget-object v2, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getHeight()I

    move-result v2

    iget-object v3, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    if-lez v0, :cond_5

    if-gtz v2, :cond_3

    goto :goto_1

    :cond_3
    sget-object v3, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->TEMP_RECTF:Landroid/graphics/RectF;

    monitor-enter v3

    :try_start_0
    sget-object v4, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->TEMP_RECTF:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->setEmpty()V

    sget-object v4, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->TEMP_RECTF:Landroid/graphics/RectF;

    int-to-float v0, v0

    iput v0, v4, Landroid/graphics/RectF;->right:F

    sget-object v0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->TEMP_RECTF:Landroid/graphics/RectF;

    int-to-float v2, v2

    iput v2, v0, Landroid/graphics/RectF;->bottom:F

    sget-object v0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->TEMP_RECTF:Landroid/graphics/RectF;

    invoke-direct {p0, v0}, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->findLargestTextSizeWhichFits(Landroid/graphics/RectF;)I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_4

    invoke-virtual {p0, v1, v0}, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->setTextSizeInternal(IF)V

    :cond_4
    monitor-exit v3

    goto :goto_2

    :catchall_0
    move-exception p0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_5
    :goto_1
    return-void

    :cond_6
    :goto_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mNeedsAutoSizeText:Z

    return-void
.end method

.method getAutoSizeMaxTextSize()I
    .locals 0

    iget p0, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeMaxTextSizeInPx:F

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method getAutoSizeMinTextSize()I
    .locals 0

    iget p0, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeMinTextSizeInPx:F

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method getAutoSizeStepGranularity()I
    .locals 0

    iget p0, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeStepGranularityInPx:F

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method getAutoSizeTextAvailableSizes()[I
    .locals 0

    iget-object p0, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextSizesInPx:[I

    return-object p0
.end method

.method getAutoSizeTextType()I
    .locals 0

    iget p0, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextType:I

    return p0
.end method

.method isAutoSizeEnabled()Z
    .locals 1

    invoke-direct {p0}, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->supportsAutoSizeText()Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextType:I

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method loadFromAttributes(Landroid/util/AttributeSet;I)V
    .locals 9

    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextView:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextView_autoSizeTextType:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_0

    sget p2, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextView_autoSizeTextType:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextType:I

    :cond_0
    sget p2, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextView_autoSizeStepGranularity:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    const/high16 v0, -0x40800000    # -1.0f

    if-eqz p2, :cond_1

    sget p2, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextView_autoSizeStepGranularity:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    goto :goto_0

    :cond_1
    move p2, v0

    :goto_0
    sget v1, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextView_autoSizeMinTextSize:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_2

    sget v1, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextView_autoSizeMinTextSize:I

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    goto :goto_1

    :cond_2
    move v1, v0

    :goto_1
    sget v3, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextView_autoSizeMaxTextSize:I

    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_3

    sget v3, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextView_autoSizeMaxTextSize:I

    invoke-virtual {p1, v3, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    goto :goto_2

    :cond_3
    move v3, v0

    :goto_2
    sget v4, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextView_autoSizePresetSizes:I

    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_6

    sget v4, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextView_autoSizePresetSizes:I

    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    if-lez v4, :cond_6

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->length()I

    move-result v5

    new-array v6, v5, [I

    if-lez v5, :cond_5

    move v7, v2

    :goto_3
    if-ge v7, v5, :cond_4

    const/4 v8, -0x1

    invoke-virtual {v4, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    aput v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_4
    invoke-direct {p0, v6}, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->cleanupAutoSizePresetSizes([I)[I

    move-result-object v5

    iput-object v5, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextSizesInPx:[I

    invoke-direct {p0}, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->setupAutoSizeUniformPresetSizesConfiguration()Z

    :cond_5
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    :cond_6
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-direct {p0}, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->supportsAutoSizeText()Z

    move-result p1

    if-eqz p1, :cond_b

    iget p1, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextType:I

    const/4 v2, 0x1

    if-ne p1, v2, :cond_c

    iget-boolean p1, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mHasPresetAutoSizeValues:Z

    if-nez p1, :cond_a

    iget-object p1, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    cmpl-float v2, v1, v0

    const/4 v4, 0x2

    if-nez v2, :cond_7

    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {v4, v1, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    :cond_7
    cmpl-float v2, v3, v0

    if-nez v2, :cond_8

    const/high16 v2, 0x42e00000    # 112.0f

    invoke-static {v4, v2, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    :cond_8
    cmpl-float p1, p2, v0

    if-nez p1, :cond_9

    const/high16 p2, 0x3f800000    # 1.0f

    :cond_9
    invoke-direct {p0, v1, v3, p2}, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->validateAndSetAutoSizeTextTypeUniformConfiguration(FFF)V

    :cond_a
    invoke-direct {p0}, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->setupAutoSizeText()Z

    goto :goto_4

    :cond_b
    iput v2, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextType:I

    :cond_c
    :goto_4
    return-void
.end method

.method setAutoSizeTextTypeUniformWithConfiguration(IIII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->supportsAutoSizeText()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    int-to-float p1, p1

    invoke-static {p4, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    int-to-float p2, p2

    invoke-static {p4, p2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p2

    int-to-float p3, p3

    invoke-static {p4, p3, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p3

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->validateAndSetAutoSizeTextTypeUniformConfiguration(FFF)V

    invoke-direct {p0}, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->setupAutoSizeText()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->autoSizeText()V

    :cond_0
    return-void
.end method

.method setAutoSizeTextTypeUniformWithPresetSizes([II)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->supportsAutoSizeText()Z

    move-result v0

    if-eqz v0, :cond_4

    array-length v0, p1

    const/4 v1, 0x0

    if-lez v0, :cond_3

    new-array v2, v0, [I

    if-nez p2, :cond_0

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    goto :goto_1

    :cond_0
    iget-object v3, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    :goto_0
    if-ge v1, v0, :cond_1

    aget v4, p1, v1

    int-to-float v4, v4

    invoke-static {p2, v4, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    aput v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-direct {p0, v2}, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->cleanupAutoSizePresetSizes([I)[I

    move-result-object p2

    iput-object p2, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextSizesInPx:[I

    invoke-direct {p0}, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->setupAutoSizeUniformPresetSizesConfiguration()Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_2

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p2, "None of the preset sizes is valid: "

    invoke-static {p2}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline23(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    iput-boolean v1, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mHasPresetAutoSizeValues:Z

    :goto_2
    invoke-direct {p0}, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->setupAutoSizeText()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->autoSizeText()V

    :cond_4
    return-void
.end method

.method setAutoSizeTextTypeWithDefaults(I)V
    .locals 3

    invoke-direct {p0}, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->supportsAutoSizeText()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/high16 v0, 0x41400000    # 12.0f

    const/4 v1, 0x2

    invoke-static {v1, v0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    const/high16 v2, 0x42e00000    # 112.0f

    invoke-static {v1, v2, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0, v0, p1, v1}, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->validateAndSetAutoSizeTextTypeUniformConfiguration(FFF)V

    invoke-direct {p0}, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->setupAutoSizeText()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->autoSizeText()V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unknown auto-size text type: "

    invoke-static {v0, p1}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline12(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/4 p1, 0x0

    iput p1, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextType:I

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeMinTextSizeInPx:F

    iput v0, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeMaxTextSizeInPx:F

    iput v0, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeStepGranularityInPx:F

    new-array v0, p1, [I

    iput-object v0, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextSizesInPx:[I

    iput-boolean p1, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mNeedsAutoSizeText:Z

    :cond_2
    :goto_0
    return-void
.end method

.method setTextSizeInternal(IF)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {p1, p2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    iget-object p2, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p2

    invoke-virtual {p2}, Landroid/text/TextPaint;->getTextSize()F

    move-result p2

    cmpl-float p2, p1, p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object p1, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->isInLayout()Z

    move-result p1

    iget-object p2, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object p2

    if-eqz p2, :cond_3

    const/4 p2, 0x0

    iput-boolean p2, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mNeedsAutoSizeText:Z

    :try_start_0
    const-string v0, "nullLayouts"

    invoke-direct {p0, v0}, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->getTextViewMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    new-array p2, p2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    const-string v0, "ACTVAutoSizeHelper"

    const-string v1, "Failed to invoke TextView#nullLayouts() method"

    invoke-static {v0, v1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    if-nez p1, :cond_2

    iget-object p1, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->requestLayout()V

    goto :goto_2

    :cond_2
    iget-object p1, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->forceLayout()V

    :goto_2
    iget-object p0, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_3
    return-void
.end method
