.class Lcom/oneplus/support/core/fragment/app/FragmentTransition$3;
.super Ljava/lang/Object;
.source "FragmentTransition.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$epicenter:Landroid/graphics/Rect;

.field final synthetic val$epicenterView:Landroid/view/View;

.field final synthetic val$impl:Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;

.field final synthetic val$inFragment:Lcom/oneplus/support/core/fragment/app/Fragment;

.field final synthetic val$inIsPop:Z

.field final synthetic val$inSharedElements:Lcom/oneplus/support/collection/ArrayMap;

.field final synthetic val$outFragment:Lcom/oneplus/support/core/fragment/app/Fragment;


# direct methods
.method constructor <init>(Lcom/oneplus/support/core/fragment/app/Fragment;Lcom/oneplus/support/core/fragment/app/Fragment;ZLcom/oneplus/support/collection/ArrayMap;Landroid/view/View;Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/support/core/fragment/app/FragmentTransition$3;->val$inFragment:Lcom/oneplus/support/core/fragment/app/Fragment;

    iput-object p2, p0, Lcom/oneplus/support/core/fragment/app/FragmentTransition$3;->val$outFragment:Lcom/oneplus/support/core/fragment/app/Fragment;

    iput-boolean p3, p0, Lcom/oneplus/support/core/fragment/app/FragmentTransition$3;->val$inIsPop:Z

    iput-object p4, p0, Lcom/oneplus/support/core/fragment/app/FragmentTransition$3;->val$inSharedElements:Lcom/oneplus/support/collection/ArrayMap;

    iput-object p5, p0, Lcom/oneplus/support/core/fragment/app/FragmentTransition$3;->val$epicenterView:Landroid/view/View;

    iput-object p6, p0, Lcom/oneplus/support/core/fragment/app/FragmentTransition$3;->val$impl:Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;

    iput-object p7, p0, Lcom/oneplus/support/core/fragment/app/FragmentTransition$3;->val$epicenter:Landroid/graphics/Rect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentTransition$3;->val$inFragment:Lcom/oneplus/support/core/fragment/app/Fragment;

    iget-object v1, p0, Lcom/oneplus/support/core/fragment/app/FragmentTransition$3;->val$outFragment:Lcom/oneplus/support/core/fragment/app/Fragment;

    iget-boolean v2, p0, Lcom/oneplus/support/core/fragment/app/FragmentTransition$3;->val$inIsPop:Z

    iget-object v3, p0, Lcom/oneplus/support/core/fragment/app/FragmentTransition$3;->val$inSharedElements:Lcom/oneplus/support/collection/ArrayMap;

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->access$200(Lcom/oneplus/support/core/fragment/app/Fragment;Lcom/oneplus/support/core/fragment/app/Fragment;ZLcom/oneplus/support/collection/ArrayMap;Z)V

    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentTransition$3;->val$epicenterView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/oneplus/support/core/fragment/app/FragmentTransition$3;->val$impl:Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;

    iget-object p0, p0, Lcom/oneplus/support/core/fragment/app/FragmentTransition$3;->val$epicenter:Landroid/graphics/Rect;

    invoke-virtual {v1, v0, p0}, Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;->getBoundsOnScreen(Landroid/view/View;Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method
