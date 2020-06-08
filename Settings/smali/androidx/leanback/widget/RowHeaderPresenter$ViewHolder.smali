.class public Landroidx/leanback/widget/RowHeaderPresenter$ViewHolder;
.super Landroidx/leanback/widget/Presenter$ViewHolder;
.source "RowHeaderPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/leanback/widget/RowHeaderPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field mDescriptionView:Landroid/widget/TextView;

.field mSelectLevel:F

.field mTitleView:Landroidx/leanback/widget/RowHeaderView;

.field mUnselectAlpha:F


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    invoke-direct {p0, p1}, Landroidx/leanback/widget/Presenter$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0a0605

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/leanback/widget/RowHeaderView;

    iput-object v0, p0, Landroidx/leanback/widget/RowHeaderPresenter$ViewHolder;->mTitleView:Landroidx/leanback/widget/RowHeaderView;

    const v0, 0x7f0a0606

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Landroidx/leanback/widget/RowHeaderPresenter$ViewHolder;->mDescriptionView:Landroid/widget/TextView;

    iget-object p1, p0, Landroidx/leanback/widget/RowHeaderPresenter$ViewHolder;->mTitleView:Landroidx/leanback/widget/RowHeaderView;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/TextView;->getCurrentTextColor()I

    :cond_0
    iget-object p1, p0, Landroidx/leanback/widget/Presenter$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f090008

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1, v1}, Landroid/content/res/Resources;->getFraction(III)F

    move-result p1

    iput p1, p0, Landroidx/leanback/widget/RowHeaderPresenter$ViewHolder;->mUnselectAlpha:F

    return-void
.end method
