.class public Lcom/android/settingslib/widget/AppEntitiesHeaderController;
.super Ljava/lang/Object;
.source "AppEntitiesHeaderController.java"


# static fields
.field public static final MAXIMUM_APPS:I = 0x3


# instance fields
.field private final mAppEntityInfos:[Lcom/android/settingslib/widget/AppEntityInfo;

.field private final mAppEntityViews:[Landroid/view/View;

.field private final mAppIconViews:[Landroid/widget/ImageView;

.field private final mAppSummaryViews:[Landroid/widget/TextView;

.field private final mAppTitleViews:[Landroid/widget/TextView;

.field private final mAppViewsContainer:Landroid/view/View;

.field private final mContext:Landroid/content/Context;

.field private mDetailsOnClickListener:Landroid/view/View$OnClickListener;

.field private mHeaderDetails:Ljava/lang/CharSequence;

.field private mHeaderDetailsRes:I

.field private final mHeaderDetailsView:Lcom/oneplus/lib/widget/button/OPButton;

.field private mHeaderEmptyRes:I

.field private final mHeaderEmptyView:Landroid/widget/TextView;

.field private mHeaderTitleRes:I

.field private final mHeaderTitleView:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/widget/AppEntitiesHeaderController;->mContext:Landroid/content/Context;

    const p1, 0x7f0a02eb

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settingslib/widget/AppEntitiesHeaderController;->mHeaderTitleView:Landroid/widget/TextView;

    const p1, 0x7f0a02e7

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/oneplus/lib/widget/button/OPButton;

    iput-object p1, p0, Lcom/android/settingslib/widget/AppEntitiesHeaderController;->mHeaderDetailsView:Lcom/oneplus/lib/widget/button/OPButton;

    const p1, 0x7f0a0240

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settingslib/widget/AppEntitiesHeaderController;->mHeaderEmptyView:Landroid/widget/TextView;

    const p1, 0x7f0a00af

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/widget/AppEntitiesHeaderController;->mAppViewsContainer:Landroid/view/View;

    const/4 p1, 0x3

    new-array v0, p1, [Lcom/android/settingslib/widget/AppEntityInfo;

    iput-object v0, p0, Lcom/android/settingslib/widget/AppEntitiesHeaderController;->mAppEntityInfos:[Lcom/android/settingslib/widget/AppEntityInfo;

    new-array v0, p1, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settingslib/widget/AppEntitiesHeaderController;->mAppIconViews:[Landroid/widget/ImageView;

    new-array v0, p1, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settingslib/widget/AppEntitiesHeaderController;->mAppTitleViews:[Landroid/widget/TextView;

    new-array v0, p1, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settingslib/widget/AppEntitiesHeaderController;->mAppSummaryViews:[Landroid/widget/TextView;

    new-array v0, p1, [Landroid/view/View;

    const v1, 0x7f0a009a

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f0a009b

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const v1, 0x7f0a009c

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const/4 v1, 0x2

    aput-object p2, v0, v1

    iput-object v0, p0, Lcom/android/settingslib/widget/AppEntitiesHeaderController;->mAppEntityViews:[Landroid/view/View;

    :goto_0
    if-ge v2, p1, :cond_0

    iget-object p2, p0, Lcom/android/settingslib/widget/AppEntitiesHeaderController;->mAppEntityViews:[Landroid/view/View;

    aget-object p2, p2, v2

    iget-object v0, p0, Lcom/android/settingslib/widget/AppEntitiesHeaderController;->mAppIconViews:[Landroid/widget/ImageView;

    const v1, 0x7f0a00a2

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v0, v2

    iget-object v0, p0, Lcom/android/settingslib/widget/AppEntitiesHeaderController;->mAppTitleViews:[Landroid/widget/TextView;

    const v1, 0x7f0a00ac

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    aput-object v1, v0, v2

    iget-object v0, p0, Lcom/android/settingslib/widget/AppEntitiesHeaderController;->mAppSummaryViews:[Landroid/widget/TextView;

    const v1, 0x7f0a00aa

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    aput-object p2, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static newInstance(Landroid/content/Context;Landroid/view/View;)Lcom/android/settingslib/widget/AppEntitiesHeaderController;
    .locals 1

    new-instance v0, Lcom/android/settingslib/widget/AppEntitiesHeaderController;

    invoke-direct {v0, p0, p1}, Lcom/android/settingslib/widget/AppEntitiesHeaderController;-><init>(Landroid/content/Context;Landroid/view/View;)V

    return-object v0
.end method

.method private setEmptyViewVisible(Z)V
    .locals 4

    iget v0, p0, Lcom/android/settingslib/widget/AppEntitiesHeaderController;->mHeaderEmptyRes:I

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settingslib/widget/AppEntitiesHeaderController;->mHeaderEmptyView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/widget/AppEntitiesHeaderController;->mHeaderEmptyView:Landroid/widget/TextView;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz p1, :cond_1

    move v3, v1

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settingslib/widget/AppEntitiesHeaderController;->mHeaderDetailsView:Lcom/oneplus/lib/widget/button/OPButton;

    if-eqz p1, :cond_2

    move v3, v2

    goto :goto_1

    :cond_2
    move v3, v1

    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/settingslib/widget/AppEntitiesHeaderController;->mAppViewsContainer:Landroid/view/View;

    if-eqz p1, :cond_3

    move v1, v2

    :cond_3
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public apply()V
    .locals 8

    const-string v0, "AppEntitiesHeaderCtl"

    :try_start_0
    iget-object v1, p0, Lcom/android/settingslib/widget/AppEntitiesHeaderController;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/settingslib/widget/AppEntitiesHeaderController;->mHeaderTitleRes:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Resource of header title can\'t not be found!"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v1, ""

    :goto_0
    iget-object v2, p0, Lcom/android/settingslib/widget/AppEntitiesHeaderController;->mHeaderTitleView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/settingslib/widget/AppEntitiesHeaderController;->mHeaderTitleView:Landroid/widget/TextView;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_1

    :cond_0
    move v1, v4

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/settingslib/widget/AppEntitiesHeaderController;->mAppEntityInfos:[Lcom/android/settingslib/widget/AppEntityInfo;

    array-length v2, v1

    move v5, v4

    :goto_2
    const/4 v6, 0x1

    if-ge v5, v2, :cond_2

    aget-object v7, v1, v5

    if-eqz v7, :cond_1

    move v1, v4

    goto :goto_3

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    move v1, v6

    :goto_3
    if-eqz v1, :cond_3

    invoke-direct {p0, v6}, Lcom/android/settingslib/widget/AppEntitiesHeaderController;->setEmptyViewVisible(Z)V

    goto/16 :goto_a

    :cond_3
    invoke-direct {p0, v4}, Lcom/android/settingslib/widget/AppEntitiesHeaderController;->setEmptyViewVisible(Z)V

    iget-object v1, p0, Lcom/android/settingslib/widget/AppEntitiesHeaderController;->mHeaderDetails:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    :try_start_1
    iget-object v2, p0, Lcom/android/settingslib/widget/AppEntitiesHeaderController;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/android/settingslib/widget/AppEntitiesHeaderController;->mHeaderDetailsRes:I

    invoke-virtual {v2, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception v2

    const-string v5, "Resource of header details can\'t not be found!"

    invoke-static {v0, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    :goto_4
    iget-object v0, p0, Lcom/android/settingslib/widget/AppEntitiesHeaderController;->mHeaderDetailsView:Lcom/oneplus/lib/widget/button/OPButton;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settingslib/widget/AppEntitiesHeaderController;->mHeaderDetailsView:Lcom/oneplus/lib/widget/button/OPButton;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    move v1, v3

    goto :goto_5

    :cond_5
    move v1, v4

    :goto_5
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settingslib/widget/AppEntitiesHeaderController;->mHeaderDetailsView:Lcom/oneplus/lib/widget/button/OPButton;

    iget-object v1, p0, Lcom/android/settingslib/widget/AppEntitiesHeaderController;->mDetailsOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move v0, v4

    :goto_6
    const/4 v1, 0x3

    if-ge v0, v1, :cond_a

    iget-object v1, p0, Lcom/android/settingslib/widget/AppEntitiesHeaderController;->mAppEntityInfos:[Lcom/android/settingslib/widget/AppEntityInfo;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/android/settingslib/widget/AppEntitiesHeaderController;->mAppEntityViews:[Landroid/view/View;

    aget-object v2, v2, v0

    if-eqz v1, :cond_6

    move v5, v4

    goto :goto_7

    :cond_6
    move v5, v3

    :goto_7
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    if-eqz v1, :cond_9

    iget-object v2, p0, Lcom/android/settingslib/widget/AppEntitiesHeaderController;->mAppEntityViews:[Landroid/view/View;

    aget-object v2, v2, v0

    invoke-virtual {v1}, Lcom/android/settingslib/widget/AppEntityInfo;->getClickListener()Landroid/view/View$OnClickListener;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/android/settingslib/widget/AppEntitiesHeaderController;->mAppIconViews:[Landroid/widget/ImageView;

    aget-object v2, v2, v0

    invoke-virtual {v1}, Lcom/android/settingslib/widget/AppEntityInfo;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1}, Lcom/android/settingslib/widget/AppEntityInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v5, p0, Lcom/android/settingslib/widget/AppEntitiesHeaderController;->mAppTitleViews:[Landroid/widget/TextView;

    aget-object v5, v5, v0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const/4 v7, 0x4

    if-eqz v6, :cond_7

    move v6, v7

    goto :goto_8

    :cond_7
    move v6, v4

    :goto_8
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/settingslib/widget/AppEntitiesHeaderController;->mAppTitleViews:[Landroid/widget/TextView;

    aget-object v5, v5, v0

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Lcom/android/settingslib/widget/AppEntityInfo;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settingslib/widget/AppEntitiesHeaderController;->mAppSummaryViews:[Landroid/widget/TextView;

    aget-object v2, v2, v0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8

    goto :goto_9

    :cond_8
    move v7, v4

    :goto_9
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/settingslib/widget/AppEntitiesHeaderController;->mAppSummaryViews:[Landroid/widget/TextView;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_a
    :goto_a
    return-void
.end method

.method public setAppEntity(ILcom/android/settingslib/widget/AppEntityInfo;)Lcom/android/settingslib/widget/AppEntitiesHeaderController;
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/widget/AppEntitiesHeaderController;->mAppEntityInfos:[Lcom/android/settingslib/widget/AppEntityInfo;

    aput-object p2, v0, p1

    return-object p0
.end method

.method public setHeaderDetails(Ljava/lang/CharSequence;)Lcom/android/settingslib/widget/AppEntitiesHeaderController;
    .locals 0

    iput-object p1, p0, Lcom/android/settingslib/widget/AppEntitiesHeaderController;->mHeaderDetails:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setHeaderDetailsClickListener(Landroid/view/View$OnClickListener;)Lcom/android/settingslib/widget/AppEntitiesHeaderController;
    .locals 0

    iput-object p1, p0, Lcom/android/settingslib/widget/AppEntitiesHeaderController;->mDetailsOnClickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public setHeaderTitleRes(I)Lcom/android/settingslib/widget/AppEntitiesHeaderController;
    .locals 0

    iput p1, p0, Lcom/android/settingslib/widget/AppEntitiesHeaderController;->mHeaderTitleRes:I

    return-object p0
.end method
