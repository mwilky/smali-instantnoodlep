.class public Lcom/android/settingslib/widget/BarViewInfo;
.super Ljava/lang/Object;
.source "BarViewInfo.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/settingslib/widget/BarViewInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mContentDescription:Ljava/lang/CharSequence;

.field private mHeight:I

.field private final mIcon:Landroid/graphics/drawable/Drawable;

.field private mNormalizedHeight:I

.field private mSummary:Ljava/lang/CharSequence;

.field private mTitle:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/widget/BarViewInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    iput p2, p0, Lcom/android/settingslib/widget/BarViewInfo;->mHeight:I

    iput-object p3, p0, Lcom/android/settingslib/widget/BarViewInfo;->mTitle:Ljava/lang/CharSequence;

    iput-object p4, p0, Lcom/android/settingslib/widget/BarViewInfo;->mSummary:Ljava/lang/CharSequence;

    iput-object p5, p0, Lcom/android/settingslib/widget/BarViewInfo;->mContentDescription:Ljava/lang/CharSequence;

    return-void
.end method

.method static synthetic lambda$compareTo$0(Lcom/android/settingslib/widget/BarViewInfo;)I
    .locals 0

    iget p0, p0, Lcom/android/settingslib/widget/BarViewInfo;->mHeight:I

    return p0
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/android/settingslib/widget/BarViewInfo;

    sget-object v0, Lcom/android/settingslib/widget/-$$Lambda$BarViewInfo$0E64JyWB2WmVqNcEtw_jyuLCMME;->INSTANCE:Lcom/android/settingslib/widget/-$$Lambda$BarViewInfo$0E64JyWB2WmVqNcEtw_jyuLCMME;

    invoke-static {v0}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method getClickListener()Landroid/view/View$OnClickListener;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/widget/BarViewInfo;->mClickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/widget/BarViewInfo;->mContentDescription:Ljava/lang/CharSequence;

    return-object p0
.end method

.method getHeight()I
    .locals 0

    iget p0, p0, Lcom/android/settingslib/widget/BarViewInfo;->mHeight:I

    return p0
.end method

.method getIcon()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/widget/BarViewInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method getNormalizedHeight()I
    .locals 0

    iget p0, p0, Lcom/android/settingslib/widget/BarViewInfo;->mNormalizedHeight:I

    return p0
.end method

.method getSummary()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/widget/BarViewInfo;->mSummary:Ljava/lang/CharSequence;

    return-object p0
.end method

.method getTitle()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/widget/BarViewInfo;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingslib/widget/BarViewInfo;->mClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method setNormalizedHeight(I)V
    .locals 0

    iput p1, p0, Lcom/android/settingslib/widget/BarViewInfo;->mNormalizedHeight:I

    return-void
.end method
