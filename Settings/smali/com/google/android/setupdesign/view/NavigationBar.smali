.class public Lcom/google/android/setupdesign/view/NavigationBar;
.super Landroid/widget/LinearLayout;
.source "NavigationBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/setupdesign/view/NavigationBar$NavigationBarListener;
    }
.end annotation


# instance fields
.field private backButton:Landroid/widget/Button;

.field private moreButton:Landroid/widget/Button;

.field private nextButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-static {p1}, Lcom/google/android/setupdesign/view/NavigationBar;->getThemedContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/google/android/setupdesign/view/NavigationBar;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-static {p1}, Lcom/google/android/setupdesign/view/NavigationBar;->getThemedContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/google/android/setupdesign/view/NavigationBar;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    invoke-static {p1}, Lcom/google/android/setupdesign/view/NavigationBar;->getThemedContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lcom/google/android/setupdesign/view/NavigationBar;->init()V

    return-void
.end method

.method private static getThemedContext(Landroid/content/Context;)Landroid/content/Context;
    .locals 7

    const/4 v0, 0x3

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    invoke-virtual {p0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    if-nez v3, :cond_2

    new-array v3, v0, [F

    new-array v0, v0, [F

    const/4 v4, 0x1

    invoke-virtual {v1, v4, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    invoke-static {v5, v3}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/4 v5, 0x2

    invoke-virtual {v1, v5, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    invoke-static {v6, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    aget v3, v3, v5

    aget v0, v0, v5

    cmpl-float v0, v3, v0

    if-lez v0, :cond_0

    move v2, v4

    :cond_0
    if-eqz v2, :cond_1

    const v0, 0x7f130413

    goto :goto_0

    :cond_1
    const v0, 0x7f130414

    :goto_0
    move v3, v0

    :cond_2
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-direct {v0, p0, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    return-object v0

    nop

    :array_0
    .array-data 4
        0x7f040486
        0x1010030
        0x1010031
    .end array-data
.end method

.method private init()V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0d032f

    invoke-static {v0, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const v0, 0x7f0a06db

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/android/setupdesign/view/NavigationBar;->nextButton:Landroid/widget/Button;

    const v0, 0x7f0a06d9

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/android/setupdesign/view/NavigationBar;->backButton:Landroid/widget/Button;

    const v0, 0x7f0a06da

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/android/setupdesign/view/NavigationBar;->moreButton:Landroid/widget/Button;

    return-void
.end method


# virtual methods
.method public getBackButton()Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/google/android/setupdesign/view/NavigationBar;->backButton:Landroid/widget/Button;

    return-object p0
.end method

.method public getMoreButton()Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/google/android/setupdesign/view/NavigationBar;->moreButton:Landroid/widget/Button;

    return-object p0
.end method

.method public getNextButton()Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/google/android/setupdesign/view/NavigationBar;->nextButton:Landroid/widget/Button;

    return-object p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public setNavigationBarListener(Lcom/google/android/setupdesign/view/NavigationBar$NavigationBarListener;)V
    .locals 0

    return-void
.end method
