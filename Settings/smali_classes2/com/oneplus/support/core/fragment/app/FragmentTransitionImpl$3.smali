.class Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl$3;
.super Ljava/lang/Object;
.source "FragmentTransitionImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$nameOverrides:Ljava/util/Map;

.field final synthetic val$sharedElementsIn:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;Ljava/util/ArrayList;Ljava/util/Map;)V
    .locals 0

    iput-object p2, p0, Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl$3;->val$sharedElementsIn:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl$3;->val$nameOverrides:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl$3;->val$sharedElementsIn:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl$3;->val$sharedElementsIn:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-static {v2}, Lcom/oneplus/support/core/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl$3;->val$nameOverrides:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setTransitionName(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
