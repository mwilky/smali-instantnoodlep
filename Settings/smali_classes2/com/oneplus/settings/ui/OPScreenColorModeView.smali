.class public Lcom/oneplus/settings/ui/OPScreenColorModeView;
.super Landroid/widget/FrameLayout;
.source "OPScreenColorModeView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/ui/OPScreenColorModeView$MyOnPageChangeListener;
    }
.end annotation


# instance fields
.field private currIndex:I

.field private mContext:Landroid/content/Context;

.field private mPageIndicator:Lcom/oneplus/lib/design/widget/OPPageIndicator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/settings/ui/OPScreenColorModeView;->currIndex:I

    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPScreenColorModeView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    iput p2, p0, Lcom/oneplus/settings/ui/OPScreenColorModeView;->currIndex:I

    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPScreenColorModeView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    iput p2, p0, Lcom/oneplus/settings/ui/OPScreenColorModeView;->currIndex:I

    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPScreenColorModeView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$002(Lcom/oneplus/settings/ui/OPScreenColorModeView;I)I
    .locals 0

    iput p1, p0, Lcom/oneplus/settings/ui/OPScreenColorModeView;->currIndex:I

    return p1
.end method

.method static synthetic access$100(Lcom/oneplus/settings/ui/OPScreenColorModeView;)Lcom/oneplus/lib/design/widget/OPPageIndicator;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/ui/OPScreenColorModeView;->mPageIndicator:Lcom/oneplus/lib/design/widget/OPPageIndicator;

    return-object p0
.end method

.method private initView(Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPScreenColorModeView;->mContext:Landroid/content/Context;

    iget-object p1, p0, Lcom/oneplus/settings/ui/OPScreenColorModeView;->mContext:Landroid/content/Context;

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getWidth()I

    move-result p1

    const/16 v0, 0x5a0

    if-ne p1, v0, :cond_0

    const p1, 0x7f0d0233

    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPScreenColorModeView;->setLayoutResource(I)V

    goto :goto_0

    :cond_0
    const p1, 0x7f0d0232

    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPScreenColorModeView;->setLayoutResource(I)V

    :goto_0
    invoke-virtual {p0, p0}, Lcom/oneplus/settings/ui/OPScreenColorModeView;->onBindViewHolder(Landroid/view/View;)V

    return-void
.end method

.method private setLayoutResource(I)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPScreenColorModeView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/view/View;)V
    .locals 8

    const v0, 0x7f0a07cc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    new-instance v1, Lcom/oneplus/settings/ui/OPScreenColorModeView$MyOnPageChangeListener;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/ui/OPScreenColorModeView$MyOnPageChangeListener;-><init>(Lcom/oneplus/settings/ui/OPScreenColorModeView;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    const v1, 0x7f0a02b1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/oneplus/lib/design/widget/OPPageIndicator;

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPScreenColorModeView;->mPageIndicator:Lcom/oneplus/lib/design/widget/OPPageIndicator;

    iget-object p1, p0, Lcom/oneplus/settings/ui/OPScreenColorModeView;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 v1, 0x0

    const v2, 0x7f0d0235

    invoke-virtual {p1, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0a0318

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    const v6, 0x7f0805df

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {p1, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    const v7, 0x7f0805e0

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {p1, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f0805e1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Lcom/oneplus/settings/ui/OPScreenColorModeView$1;

    invoke-direct {p1, p0, v1}, Lcom/oneplus/settings/ui/OPScreenColorModeView$1;-><init>(Lcom/oneplus/settings/ui/OPScreenColorModeView;Ljava/util/ArrayList;)V

    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    iget v1, p0, Lcom/oneplus/settings/ui/OPScreenColorModeView;->currIndex:I

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPScreenColorModeView;->mPageIndicator:Lcom/oneplus/lib/design/widget/OPPageIndicator;

    invoke-virtual {p1}, Lcom/oneplus/settings/ui/OPScreenColorModeView$1;->getCount()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/oneplus/lib/design/widget/OPPageIndicator;->setNumPages(I)V

    iget-object p0, p0, Lcom/oneplus/settings/ui/OPScreenColorModeView;->mPageIndicator:Lcom/oneplus/lib/design/widget/OPPageIndicator;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/design/widget/OPPageIndicator;->setLocation(F)V

    return-void
.end method
