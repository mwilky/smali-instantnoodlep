.class public Lcom/oneplus/settings/quicklaunch/TabUtils$ViewPagerOnTabSelectedListener;
.super Ljava/lang/Object;
.source "TabUtils.java"

# interfaces
.implements Lcom/oneplus/lib/widget/OPTabLayout$OnTabSelectedListener;


# instance fields
.field private final mViewPager:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method public constructor <init>(Landroidx/viewpager/widget/ViewPager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oneplus/settings/quicklaunch/TabUtils$ViewPagerOnTabSelectedListener;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    return-void
.end method


# virtual methods
.method public onTabReselected(Lcom/oneplus/lib/widget/OPTabLayout$Tab;)V
    .locals 0

    return-void
.end method

.method public onTabSelected(Lcom/oneplus/lib/widget/OPTabLayout$Tab;)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/quicklaunch/TabUtils$ViewPagerOnTabSelectedListener;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Lcom/oneplus/lib/widget/OPTabLayout$Tab;->getPosition()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    return-void
.end method

.method public onTabUnselected(Lcom/oneplus/lib/widget/OPTabLayout$Tab;)V
    .locals 0

    return-void
.end method
