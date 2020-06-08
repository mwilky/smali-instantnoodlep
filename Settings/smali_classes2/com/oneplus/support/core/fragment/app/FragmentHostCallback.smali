.class public abstract Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;
.super Lcom/oneplus/support/core/fragment/app/FragmentContainer;
.source "FragmentHostCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/oneplus/support/core/fragment/app/FragmentContainer;"
    }
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mContext:Landroid/content/Context;

.field final mFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/oneplus/support/core/fragment/app/FragmentActivity;)V
    .locals 2

    iget-object v0, p1, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/oneplus/support/core/fragment/app/FragmentContainer;-><init>()V

    new-instance v1, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    invoke-direct {v1}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;-><init>()V

    iput-object v1, p0, Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;->mFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    iput-object p1, p0, Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;->mActivity:Landroid/app/Activity;

    const-string v1, "context == null"

    invoke-static {p1, v1}, Lcom/oneplus/lib/app/appcompat/MenuWrapperFactory;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;->mContext:Landroid/content/Context;

    const-string p1, "handler == null"

    invoke-static {v0, p1}, Lcom/oneplus/lib/app/appcompat/MenuWrapperFactory;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method getActivity()Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method getContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method getHandler()Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;->mHandler:Landroid/os/Handler;

    return-object p0
.end method
