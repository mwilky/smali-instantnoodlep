.class Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;
.super Ljava/lang/Object;
.source "FragmentManager.java"

# interfaces
.implements Lcom/oneplus/support/core/fragment/app/Fragment$OnStartEnterTransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StartEnterTransitionListener"
.end annotation


# instance fields
.field private final mIsBack:Z

.field private mNumPostponed:I

.field private final mRecord:Lcom/oneplus/support/core/fragment/app/BackStackRecord;


# direct methods
.method constructor <init>(Lcom/oneplus/support/core/fragment/app/BackStackRecord;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;->mIsBack:Z

    iput-object p1, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;->mRecord:Lcom/oneplus/support/core/fragment/app/BackStackRecord;

    return-void
.end method

.method static synthetic access$300(Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;->mIsBack:Z

    return p0
.end method

.method static synthetic access$400(Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;)Lcom/oneplus/support/core/fragment/app/BackStackRecord;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;->mRecord:Lcom/oneplus/support/core/fragment/app/BackStackRecord;

    return-object p0
.end method


# virtual methods
.method public cancelTransaction()V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;->mRecord:Lcom/oneplus/support/core/fragment/app/BackStackRecord;

    iget-object v1, v0, Lcom/oneplus/support/core/fragment/app/BackStackRecord;->mManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    iget-boolean p0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;->mIsBack:Z

    const/4 v2, 0x0

    invoke-static {v1, v0, p0, v2, v2}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->access$600(Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;Lcom/oneplus/support/core/fragment/app/BackStackRecord;ZZZ)V

    return-void
.end method

.method public completeTransaction()V
    .locals 8

    iget v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;->mNumPostponed:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;->mRecord:Lcom/oneplus/support/core/fragment/app/BackStackRecord;

    iget-object v3, v3, Lcom/oneplus/support/core/fragment/app/BackStackRecord;->mManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    iget-object v4, v3, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v5, v2

    :goto_1
    if-ge v5, v4, :cond_3

    iget-object v6, v3, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oneplus/support/core/fragment/app/Fragment;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/oneplus/support/core/fragment/app/Fragment;->setOnStartEnterTransitionListener(Lcom/oneplus/support/core/fragment/app/Fragment$OnStartEnterTransitionListener;)V

    if-eqz v0, :cond_2

    iget-object v7, v6, Lcom/oneplus/support/core/fragment/app/Fragment;->mAnimationInfo:Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;

    if-nez v7, :cond_1

    move v7, v2

    goto :goto_2

    :cond_1
    iget-boolean v7, v7, Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;->mEnterTransitionPostponed:Z

    :goto_2
    if-eqz v7, :cond_2

    invoke-virtual {v6}, Lcom/oneplus/support/core/fragment/app/Fragment;->startPostponedEnterTransition()V

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;->mRecord:Lcom/oneplus/support/core/fragment/app/BackStackRecord;

    iget-object v3, v2, Lcom/oneplus/support/core/fragment/app/BackStackRecord;->mManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    iget-boolean p0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;->mIsBack:Z

    xor-int/2addr v0, v1

    invoke-static {v3, v2, p0, v0, v1}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->access$600(Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;Lcom/oneplus/support/core/fragment/app/BackStackRecord;ZZZ)V

    return-void
.end method

.method public isReady()Z
    .locals 0

    iget p0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;->mNumPostponed:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onStartEnterTransition()V
    .locals 1

    iget v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;->mNumPostponed:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;->mNumPostponed:I

    iget v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;->mNumPostponed:I

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;->mRecord:Lcom/oneplus/support/core/fragment/app/BackStackRecord;

    iget-object p0, p0, Lcom/oneplus/support/core/fragment/app/BackStackRecord;->mManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    invoke-static {p0}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->access$500(Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;)V

    return-void
.end method

.method public startListening()V
    .locals 1

    iget v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;->mNumPostponed:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;->mNumPostponed:I

    return-void
.end method
