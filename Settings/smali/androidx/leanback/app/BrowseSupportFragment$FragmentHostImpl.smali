.class final Landroidx/leanback/app/BrowseSupportFragment$FragmentHostImpl;
.super Ljava/lang/Object;
.source "BrowseSupportFragment.java"

# interfaces
.implements Landroidx/leanback/app/BrowseSupportFragment$FragmentHost;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/leanback/app/BrowseSupportFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FragmentHostImpl"
.end annotation


# instance fields
.field mShowTitleView:Z

.field final synthetic this$0:Landroidx/leanback/app/BrowseSupportFragment;


# direct methods
.method constructor <init>(Landroidx/leanback/app/BrowseSupportFragment;)V
    .locals 0

    iput-object p1, p0, Landroidx/leanback/app/BrowseSupportFragment$FragmentHostImpl;->this$0:Landroidx/leanback/app/BrowseSupportFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/leanback/app/BrowseSupportFragment$FragmentHostImpl;->mShowTitleView:Z

    return-void
.end method
