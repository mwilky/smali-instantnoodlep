.class public final Landroidx/leanback/app/BrowseSupportFragment$MainFragmentAdapterRegistry;
.super Ljava/lang/Object;
.source "BrowseSupportFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/leanback/app/BrowseSupportFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MainFragmentAdapterRegistry"
.end annotation


# static fields
.field private static final sDefaultFragmentFactory:Landroidx/leanback/app/BrowseSupportFragment$FragmentFactory;


# instance fields
.field private final mItemToFragmentFactoryMapping:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Landroidx/leanback/app/BrowseSupportFragment$FragmentFactory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/leanback/app/BrowseSupportFragment$ListRowFragmentFactory;

    invoke-direct {v0}, Landroidx/leanback/app/BrowseSupportFragment$ListRowFragmentFactory;-><init>()V

    sput-object v0, Landroidx/leanback/app/BrowseSupportFragment$MainFragmentAdapterRegistry;->sDefaultFragmentFactory:Landroidx/leanback/app/BrowseSupportFragment$FragmentFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/leanback/app/BrowseSupportFragment$MainFragmentAdapterRegistry;->mItemToFragmentFactoryMapping:Ljava/util/Map;

    const-class v0, Landroidx/leanback/widget/ListRow;

    sget-object v1, Landroidx/leanback/app/BrowseSupportFragment$MainFragmentAdapterRegistry;->sDefaultFragmentFactory:Landroidx/leanback/app/BrowseSupportFragment$FragmentFactory;

    iget-object p0, p0, Landroidx/leanback/app/BrowseSupportFragment$MainFragmentAdapterRegistry;->mItemToFragmentFactoryMapping:Ljava/util/Map;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public createFragment(Ljava/lang/Object;)Landroidx/fragment/app/Fragment;
    .locals 1

    if-nez p1, :cond_0

    sget-object p0, Landroidx/leanback/app/BrowseSupportFragment$MainFragmentAdapterRegistry;->sDefaultFragmentFactory:Landroidx/leanback/app/BrowseSupportFragment$FragmentFactory;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/leanback/app/BrowseSupportFragment$MainFragmentAdapterRegistry;->mItemToFragmentFactoryMapping:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/leanback/app/BrowseSupportFragment$FragmentFactory;

    :goto_0
    if-nez p0, :cond_1

    sget-object p0, Landroidx/leanback/app/BrowseSupportFragment$MainFragmentAdapterRegistry;->sDefaultFragmentFactory:Landroidx/leanback/app/BrowseSupportFragment$FragmentFactory;

    :cond_1
    invoke-virtual {p0, p1}, Landroidx/leanback/app/BrowseSupportFragment$FragmentFactory;->createFragment(Ljava/lang/Object;)Landroidx/fragment/app/Fragment;

    move-result-object p0

    return-object p0
.end method
