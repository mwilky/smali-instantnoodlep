.class public Lcom/oneplus/support/lifecycle/ViewModelProvider;
.super Ljava/lang/Object;
.source "ViewModelProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/support/lifecycle/ViewModelProvider$Factory;
    }
.end annotation


# instance fields
.field private final mFactory:Lcom/oneplus/support/lifecycle/ViewModelProvider$Factory;

.field private final mViewModelStore:Lcom/oneplus/support/lifecycle/ViewModelStore;


# direct methods
.method public constructor <init>(Lcom/oneplus/support/lifecycle/ViewModelStore;Lcom/oneplus/support/lifecycle/ViewModelProvider$Factory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/oneplus/support/lifecycle/ViewModelProvider;->mFactory:Lcom/oneplus/support/lifecycle/ViewModelProvider$Factory;

    iput-object p1, p0, Lcom/oneplus/support/lifecycle/ViewModelProvider;->mViewModelStore:Lcom/oneplus/support/lifecycle/ViewModelStore;

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Class;)Lcom/oneplus/support/lifecycle/ViewModel;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/oneplus/support/lifecycle/ViewModel;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "com.oneplus.support.lifecycle.ViewModelProvider.DefaultKey:"

    invoke-static {v1, v0}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline17(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/support/lifecycle/ViewModelProvider;->mViewModelStore:Lcom/oneplus/support/lifecycle/ViewModelStore;

    invoke-virtual {v1, v0}, Lcom/oneplus/support/lifecycle/ViewModelStore;->get(Ljava/lang/String;)Lcom/oneplus/support/lifecycle/ViewModel;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/oneplus/support/lifecycle/ViewModelProvider;->mFactory:Lcom/oneplus/support/lifecycle/ViewModelProvider$Factory;

    invoke-interface {v1, p1}, Lcom/oneplus/support/lifecycle/ViewModelProvider$Factory;->create(Ljava/lang/Class;)Lcom/oneplus/support/lifecycle/ViewModel;

    move-result-object v1

    iget-object p0, p0, Lcom/oneplus/support/lifecycle/ViewModelProvider;->mViewModelStore:Lcom/oneplus/support/lifecycle/ViewModelStore;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/support/lifecycle/ViewModelStore;->put(Ljava/lang/String;Lcom/oneplus/support/lifecycle/ViewModel;)V

    :goto_0
    return-object v1

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Local and anonymous classes can not be ViewModels"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
