.class public Lcom/android/settingslib/widget/BarChartPreference;
.super Landroidx/preference/Preference;
.source "BarChartPreference.java"


# static fields
.field private static final BAR_VIEWS:[I


# instance fields
.field private mBarChartInfo:Lcom/android/settingslib/widget/BarChartInfo;

.field private mIsLoading:Z

.field private mMaxBarHeight:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settingslib/widget/BarChartPreference;->BAR_VIEWS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0a00d6
        0x7f0a00d7
        0x7f0a00d8
        0x7f0a00d9
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/android/settingslib/widget/BarChartPreference;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/android/settingslib/widget/BarChartPreference;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-direct {p0}, Lcom/android/settingslib/widget/BarChartPreference;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-direct {p0}, Lcom/android/settingslib/widget/BarChartPreference;->init()V

    return-void
.end method

.method private init()V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSelectable(Z)V

    const v0, 0x7f0d02e1

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setLayoutResource(I)V

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07055d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/settingslib/widget/BarChartPreference;->mMaxBarHeight:I

    return-void
.end method

.method private setEmptyViewVisible(Landroidx/preference/PreferenceViewHolder;Z)V
    .locals 3

    const v0, 0x7f0a00da

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0240

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object p0, p0, Lcom/android/settingslib/widget/BarChartPreference;->mBarChartInfo:Lcom/android/settingslib/widget/BarChartInfo;

    invoke-virtual {p0}, Lcom/android/settingslib/widget/BarChartInfo;->getEmptyText()I

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    const/4 p0, 0x0

    const/16 v1, 0x8

    if-eqz p2, :cond_1

    move v2, p0

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz p2, :cond_2

    move p0, v1

    :cond_2
    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public initializeBarChart(Lcom/android/settingslib/widget/BarChartInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingslib/widget/BarChartPreference;->mBarChartInfo:Lcom/android/settingslib/widget/BarChartInfo;

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 9

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->setDividerAllowedAbove(Z)V

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->setDividerAllowedBelow(Z)V

    const v1, 0x7f0a00d2

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settingslib/widget/BarChartPreference;->mBarChartInfo:Lcom/android/settingslib/widget/BarChartInfo;

    invoke-virtual {v2}, Lcom/android/settingslib/widget/BarChartInfo;->getTitle()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    const v1, 0x7f0a00d1

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/settingslib/widget/BarChartPreference;->mBarChartInfo:Lcom/android/settingslib/widget/BarChartInfo;

    invoke-virtual {v2}, Lcom/android/settingslib/widget/BarChartInfo;->getDetails()I

    move-result v2

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-nez v2, :cond_0

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    iget-object v2, p0, Lcom/android/settingslib/widget/BarChartPreference;->mBarChartInfo:Lcom/android/settingslib/widget/BarChartInfo;

    invoke-virtual {v2}, Lcom/android/settingslib/widget/BarChartInfo;->getDetailsOnClickListener()Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    iget-boolean v1, p0, Lcom/android/settingslib/widget/BarChartPreference;->mIsLoading:Z

    const/4 v2, 0x4

    if-eqz v1, :cond_1

    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_1
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/settingslib/widget/BarChartPreference;->mBarChartInfo:Lcom/android/settingslib/widget/BarChartInfo;

    invoke-virtual {v1}, Lcom/android/settingslib/widget/BarChartInfo;->getBarViewInfos()[Lcom/android/settingslib/widget/BarViewInfo;

    move-result-object v1

    if-eqz v1, :cond_9

    array-length v1, v1

    if-nez v1, :cond_2

    goto :goto_7

    :cond_2
    invoke-direct {p0, p1, v4}, Lcom/android/settingslib/widget/BarChartPreference;->setEmptyViewVisible(Landroidx/preference/PreferenceViewHolder;Z)V

    iget-object v0, p0, Lcom/android/settingslib/widget/BarChartPreference;->mBarChartInfo:Lcom/android/settingslib/widget/BarChartInfo;

    invoke-virtual {v0}, Lcom/android/settingslib/widget/BarChartInfo;->getBarViewInfos()[Lcom/android/settingslib/widget/BarViewInfo;

    move-result-object v0

    if-eqz v0, :cond_5

    array-length v1, v0

    if-nez v1, :cond_3

    goto :goto_3

    :cond_3
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    aget-object v1, v0, v4

    invoke-virtual {v1}, Lcom/android/settingslib/widget/BarViewInfo;->getHeight()I

    move-result v1

    if-nez v1, :cond_4

    move v1, v4

    goto :goto_1

    :cond_4
    iget v5, p0, Lcom/android/settingslib/widget/BarChartPreference;->mMaxBarHeight:I

    div-int v1, v5, v1

    :goto_1
    array-length v5, v0

    move v6, v4

    :goto_2
    if-ge v6, v5, :cond_5

    aget-object v7, v0, v6

    invoke-virtual {v7}, Lcom/android/settingslib/widget/BarViewInfo;->getHeight()I

    move-result v8

    mul-int/2addr v8, v1

    invoke-virtual {v7, v8}, Lcom/android/settingslib/widget/BarViewInfo;->setNormalizedHeight(I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    iget-object p0, p0, Lcom/android/settingslib/widget/BarChartPreference;->mBarChartInfo:Lcom/android/settingslib/widget/BarChartInfo;

    invoke-virtual {p0}, Lcom/android/settingslib/widget/BarChartInfo;->getBarViewInfos()[Lcom/android/settingslib/widget/BarViewInfo;

    move-result-object p0

    move v0, v4

    :goto_4
    if-ge v0, v2, :cond_8

    sget-object v1, Lcom/android/settingslib/widget/BarChartPreference;->BAR_VIEWS:[I

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/widget/BarView;

    if-eqz p0, :cond_7

    array-length v5, p0

    if-lt v0, v5, :cond_6

    goto :goto_5

    :cond_6
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    aget-object v5, p0, v0

    invoke-virtual {v1, v5}, Lcom/android/settingslib/widget/BarView;->updateView(Lcom/android/settingslib/widget/BarViewInfo;)V

    goto :goto_6

    :cond_7
    :goto_5
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_8
    return-void

    :cond_9
    :goto_7
    invoke-direct {p0, p1, v0}, Lcom/android/settingslib/widget/BarChartPreference;->setEmptyViewVisible(Landroidx/preference/PreferenceViewHolder;Z)V

    return-void
.end method

.method public setBarViewInfos([Lcom/android/settingslib/widget/BarViewInfo;)V
    .locals 2

    if-eqz p1, :cond_1

    array-length v0, p1

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "We only support up to four bar views"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/settingslib/widget/BarChartPreference;->mBarChartInfo:Lcom/android/settingslib/widget/BarChartInfo;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/widget/BarChartInfo;->setBarViewInfos([Lcom/android/settingslib/widget/BarViewInfo;)V

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public updateLoadingState(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settingslib/widget/BarChartPreference;->mIsLoading:Z

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method
