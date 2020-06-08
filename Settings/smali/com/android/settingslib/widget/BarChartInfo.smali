.class public Lcom/android/settingslib/widget/BarChartInfo;
.super Ljava/lang/Object;
.source "BarChartInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/widget/BarChartInfo$Builder;
    }
.end annotation


# instance fields
.field private mBarViewInfos:[Lcom/android/settingslib/widget/BarViewInfo;

.field private final mDetails:I

.field private final mDetailsOnClickListener:Landroid/view/View$OnClickListener;

.field private final mEmptyText:I

.field private final mTitle:I


# direct methods
.method synthetic constructor <init>(Lcom/android/settingslib/widget/BarChartInfo$Builder;Lcom/android/settingslib/widget/BarChartInfo$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/android/settingslib/widget/BarChartInfo$Builder;->access$000(Lcom/android/settingslib/widget/BarChartInfo$Builder;)I

    move-result p2

    iput p2, p0, Lcom/android/settingslib/widget/BarChartInfo;->mTitle:I

    invoke-static {p1}, Lcom/android/settingslib/widget/BarChartInfo$Builder;->access$100(Lcom/android/settingslib/widget/BarChartInfo$Builder;)I

    move-result p2

    iput p2, p0, Lcom/android/settingslib/widget/BarChartInfo;->mDetails:I

    invoke-static {p1}, Lcom/android/settingslib/widget/BarChartInfo$Builder;->access$200(Lcom/android/settingslib/widget/BarChartInfo$Builder;)I

    move-result p2

    iput p2, p0, Lcom/android/settingslib/widget/BarChartInfo;->mEmptyText:I

    invoke-static {p1}, Lcom/android/settingslib/widget/BarChartInfo$Builder;->access$300(Lcom/android/settingslib/widget/BarChartInfo$Builder;)Landroid/view/View$OnClickListener;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settingslib/widget/BarChartInfo;->mDetailsOnClickListener:Landroid/view/View$OnClickListener;

    invoke-static {p1}, Lcom/android/settingslib/widget/BarChartInfo$Builder;->access$400(Lcom/android/settingslib/widget/BarChartInfo$Builder;)Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-static {p1}, Lcom/android/settingslib/widget/BarChartInfo$Builder;->access$400(Lcom/android/settingslib/widget/BarChartInfo$Builder;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    sget-object p2, Lcom/android/settingslib/widget/-$$Lambda$BarChartInfo$2CrHVNAna8TvSeyBIL19oCkthVU;->INSTANCE:Lcom/android/settingslib/widget/-$$Lambda$BarChartInfo$2CrHVNAna8TvSeyBIL19oCkthVU;

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/settingslib/widget/BarViewInfo;

    iput-object p1, p0, Lcom/android/settingslib/widget/BarChartInfo;->mBarViewInfos:[Lcom/android/settingslib/widget/BarViewInfo;

    :cond_0
    return-void
.end method


# virtual methods
.method public getBarViewInfos()[Lcom/android/settingslib/widget/BarViewInfo;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/widget/BarChartInfo;->mBarViewInfos:[Lcom/android/settingslib/widget/BarViewInfo;

    return-object p0
.end method

.method public getDetails()I
    .locals 0

    iget p0, p0, Lcom/android/settingslib/widget/BarChartInfo;->mDetails:I

    return p0
.end method

.method public getDetailsOnClickListener()Landroid/view/View$OnClickListener;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/widget/BarChartInfo;->mDetailsOnClickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public getEmptyText()I
    .locals 0

    iget p0, p0, Lcom/android/settingslib/widget/BarChartInfo;->mEmptyText:I

    return p0
.end method

.method public getTitle()I
    .locals 0

    iget p0, p0, Lcom/android/settingslib/widget/BarChartInfo;->mTitle:I

    return p0
.end method

.method setBarViewInfos([Lcom/android/settingslib/widget/BarViewInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingslib/widget/BarChartInfo;->mBarViewInfos:[Lcom/android/settingslib/widget/BarViewInfo;

    return-void
.end method
