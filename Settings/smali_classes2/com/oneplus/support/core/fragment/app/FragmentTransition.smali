.class Lcom/oneplus/support/core/fragment/app/FragmentTransition;
.super Ljava/lang/Object;
.source "FragmentTransition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;
    }
.end annotation


# static fields
.field private static final INVERSE_OPS:[I

.field private static final PLATFORM_IMPL:Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;

.field private static final SUPPORT_IMPL:Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->INVERSE_OPS:[I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    new-instance v0, Lcom/oneplus/support/core/fragment/app/FragmentTransitionCompat21;

    invoke-direct {v0}, Lcom/oneplus/support/core/fragment/app/FragmentTransitionCompat21;-><init>()V

    sput-object v0, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->PLATFORM_IMPL:Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;

    :try_start_0
    const-string v0, "androidx.transition.FragmentTransitionSupport"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    sput-object v0, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->SUPPORT_IMPL:Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;

    return-void

    :array_0
    .array-data 4
        0x0
        0x3
        0x0
        0x1
        0x5
        0x4
        0x7
        0x6
        0x9
        0x8
    .end array-data
.end method

.method static synthetic access$000(Ljava/util/ArrayList;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->setViewVisibility(Ljava/util/ArrayList;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;Ljava/lang/Object;Lcom/oneplus/support/core/fragment/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->configureEnteringExitingViews(Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;Ljava/lang/Object;Lcom/oneplus/support/core/fragment/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/oneplus/support/core/fragment/app/Fragment;Lcom/oneplus/support/core/fragment/app/Fragment;ZLcom/oneplus/support/collection/ArrayMap;Z)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->callSharedElementStartEnd(Lcom/oneplus/support/core/fragment/app/Fragment;Lcom/oneplus/support/core/fragment/app/Fragment;ZLcom/oneplus/support/collection/ArrayMap;Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;Lcom/oneplus/support/collection/ArrayMap;Ljava/lang/Object;Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;)Lcom/oneplus/support/collection/ArrayMap;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->captureInSharedElements(Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;Lcom/oneplus/support/collection/ArrayMap;Ljava/lang/Object;Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;)Lcom/oneplus/support/collection/ArrayMap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/oneplus/support/collection/ArrayMap;Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;Ljava/lang/Object;Z)Landroid/view/View;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->getInEpicenterView(Lcom/oneplus/support/collection/ArrayMap;Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;Ljava/lang/Object;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private static addSharedElementsWithMatchingNames(Ljava/util/ArrayList;Lcom/oneplus/support/collection/ArrayMap;Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Lcom/oneplus/support/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/oneplus/support/collection/SimpleArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p1, v0}, Lcom/oneplus/support/collection/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-static {v1}, Lcom/oneplus/support/core/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static addToFirstInLastOut(Lcom/oneplus/support/core/fragment/app/BackStackRecord;Lcom/oneplus/support/core/fragment/app/BackStackRecord$Op;Landroid/util/SparseArray;ZZ)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/support/core/fragment/app/BackStackRecord;",
            "Lcom/oneplus/support/core/fragment/app/BackStackRecord$Op;",
            "Landroid/util/SparseArray<",
            "Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;",
            ">;ZZ)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    iget-object v10, v1, Lcom/oneplus/support/core/fragment/app/BackStackRecord$Op;->fragment:Lcom/oneplus/support/core/fragment/app/Fragment;

    if-nez v10, :cond_0

    return-void

    :cond_0
    iget v11, v10, Lcom/oneplus/support/core/fragment/app/Fragment;->mContainerId:I

    if-nez v11, :cond_1

    return-void

    :cond_1
    if-eqz v3, :cond_2

    sget-object v4, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->INVERSE_OPS:[I

    iget v1, v1, Lcom/oneplus/support/core/fragment/app/BackStackRecord$Op;->cmd:I

    aget v1, v4, v1

    goto :goto_0

    :cond_2
    iget v1, v1, Lcom/oneplus/support/core/fragment/app/BackStackRecord$Op;->cmd:I

    :goto_0
    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v1, v5, :cond_a

    const/4 v6, 0x3

    if-eq v1, v6, :cond_7

    const/4 v6, 0x4

    if-eq v1, v6, :cond_5

    const/4 v6, 0x5

    if-eq v1, v6, :cond_3

    const/4 v6, 0x6

    if-eq v1, v6, :cond_7

    const/4 v6, 0x7

    if-eq v1, v6, :cond_a

    move v1, v4

    move v12, v1

    move v13, v12

    goto/16 :goto_5

    :cond_3
    if-eqz p4, :cond_4

    iget-boolean v1, v10, Lcom/oneplus/support/core/fragment/app/Fragment;->mHiddenChanged:Z

    if-eqz v1, :cond_c

    iget-boolean v1, v10, Lcom/oneplus/support/core/fragment/app/Fragment;->mHidden:Z

    if-nez v1, :cond_c

    iget-boolean v1, v10, Lcom/oneplus/support/core/fragment/app/Fragment;->mAdded:Z

    if-eqz v1, :cond_c

    goto :goto_3

    :cond_4
    iget-boolean v1, v10, Lcom/oneplus/support/core/fragment/app/Fragment;->mHidden:Z

    goto :goto_4

    :cond_5
    if-eqz p4, :cond_6

    iget-boolean v1, v10, Lcom/oneplus/support/core/fragment/app/Fragment;->mHiddenChanged:Z

    if-eqz v1, :cond_9

    iget-boolean v1, v10, Lcom/oneplus/support/core/fragment/app/Fragment;->mAdded:Z

    if-eqz v1, :cond_9

    iget-boolean v1, v10, Lcom/oneplus/support/core/fragment/app/Fragment;->mHidden:Z

    if-eqz v1, :cond_9

    goto :goto_1

    :cond_6
    iget-boolean v1, v10, Lcom/oneplus/support/core/fragment/app/Fragment;->mAdded:Z

    if-eqz v1, :cond_9

    iget-boolean v1, v10, Lcom/oneplus/support/core/fragment/app/Fragment;->mHidden:Z

    if-nez v1, :cond_9

    goto :goto_1

    :cond_7
    if-eqz p4, :cond_8

    iget-boolean v1, v10, Lcom/oneplus/support/core/fragment/app/Fragment;->mAdded:Z

    if-nez v1, :cond_9

    iget-object v1, v10, Lcom/oneplus/support/core/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_9

    iget v1, v10, Lcom/oneplus/support/core/fragment/app/Fragment;->mPostponedAlpha:F

    const/4 v6, 0x0

    cmpl-float v1, v1, v6

    if-ltz v1, :cond_9

    goto :goto_1

    :cond_8
    iget-boolean v1, v10, Lcom/oneplus/support/core/fragment/app/Fragment;->mAdded:Z

    if-eqz v1, :cond_9

    iget-boolean v1, v10, Lcom/oneplus/support/core/fragment/app/Fragment;->mHidden:Z

    if-nez v1, :cond_9

    :goto_1
    move v1, v5

    goto :goto_2

    :cond_9
    move v1, v4

    :goto_2
    move v13, v1

    move v1, v4

    move v12, v5

    goto :goto_5

    :cond_a
    if-eqz p4, :cond_b

    iget-boolean v1, v10, Lcom/oneplus/support/core/fragment/app/Fragment;->mIsNewlyAdded:Z

    goto :goto_4

    :cond_b
    iget-boolean v1, v10, Lcom/oneplus/support/core/fragment/app/Fragment;->mAdded:Z

    if-nez v1, :cond_c

    iget-boolean v1, v10, Lcom/oneplus/support/core/fragment/app/Fragment;->mHidden:Z

    if-nez v1, :cond_c

    :goto_3
    move v1, v5

    goto :goto_4

    :cond_c
    move v1, v4

    :goto_4
    move v12, v4

    move v13, v12

    move v4, v1

    move v1, v5

    :goto_5
    invoke-virtual {v2, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;

    if-eqz v4, :cond_e

    if-nez v6, :cond_d

    new-instance v4, Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;

    invoke-direct {v4}, Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;-><init>()V

    invoke-virtual {v2, v11, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v6, v4

    :cond_d
    iput-object v10, v6, Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;->lastIn:Lcom/oneplus/support/core/fragment/app/Fragment;

    iput-boolean v3, v6, Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;->lastInIsPop:Z

    iput-object v0, v6, Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;->lastInTransaction:Lcom/oneplus/support/core/fragment/app/BackStackRecord;

    :cond_e
    move-object v14, v6

    const/4 v15, 0x0

    if-nez p4, :cond_10

    if-eqz v1, :cond_10

    if-eqz v14, :cond_f

    iget-object v1, v14, Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOut:Lcom/oneplus/support/core/fragment/app/Fragment;

    if-ne v1, v10, :cond_f

    iput-object v15, v14, Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOut:Lcom/oneplus/support/core/fragment/app/Fragment;

    :cond_f
    iget-object v4, v0, Lcom/oneplus/support/core/fragment/app/BackStackRecord;->mManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    iget v1, v10, Lcom/oneplus/support/core/fragment/app/Fragment;->mState:I

    if-ge v1, v5, :cond_10

    iget v1, v4, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mCurState:I

    if-lt v1, v5, :cond_10

    iget-boolean v1, v0, Lcom/oneplus/support/core/fragment/app/BackStackRecord;->mReorderingAllowed:Z

    if-nez v1, :cond_10

    invoke-virtual {v4, v10}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->makeActive(Lcom/oneplus/support/core/fragment/app/Fragment;)V

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v5, v10

    invoke-virtual/range {v4 .. v9}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->moveToState(Lcom/oneplus/support/core/fragment/app/Fragment;IIIZ)V

    :cond_10
    if-eqz v13, :cond_13

    if-eqz v14, :cond_11

    iget-object v1, v14, Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOut:Lcom/oneplus/support/core/fragment/app/Fragment;

    if-nez v1, :cond_13

    :cond_11
    if-nez v14, :cond_12

    new-instance v1, Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;

    invoke-direct {v1}, Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;-><init>()V

    invoke-virtual {v2, v11, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v14, v1

    :cond_12
    iput-object v10, v14, Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOut:Lcom/oneplus/support/core/fragment/app/Fragment;

    iput-boolean v3, v14, Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOutIsPop:Z

    iput-object v0, v14, Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOutTransaction:Lcom/oneplus/support/core/fragment/app/BackStackRecord;

    :cond_13
    if-nez p4, :cond_14

    if-eqz v12, :cond_14

    if-eqz v14, :cond_14

    iget-object v0, v14, Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;->lastIn:Lcom/oneplus/support/core/fragment/app/Fragment;

    if-ne v0, v10, :cond_14

    iput-object v15, v14, Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;->lastIn:Lcom/oneplus/support/core/fragment/app/Fragment;

    :cond_14
    return-void
.end method

.method private static callSharedElementStartEnd(Lcom/oneplus/support/core/fragment/app/Fragment;Lcom/oneplus/support/core/fragment/app/Fragment;ZLcom/oneplus/support/collection/ArrayMap;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/support/core/fragment/app/Fragment;",
            "Lcom/oneplus/support/core/fragment/app/Fragment;",
            "Z",
            "Lcom/oneplus/support/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/oneplus/support/core/fragment/app/Fragment;->getEnterTransitionCallback()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/support/core/fragment/app/Fragment;->getEnterTransitionCallback()V

    :goto_0
    return-void
.end method

.method private static canHandleAll(Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;->canHandle(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private static captureInSharedElements(Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;Lcom/oneplus/support/collection/ArrayMap;Ljava/lang/Object;Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;)Lcom/oneplus/support/collection/ArrayMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;",
            "Lcom/oneplus/support/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;",
            ")",
            "Lcom/oneplus/support/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    iget-object v0, p3, Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;->lastIn:Lcom/oneplus/support/core/fragment/app/Fragment;

    iget-object v1, v0, Lcom/oneplus/support/core/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {p1}, Lcom/oneplus/support/collection/SimpleArrayMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    if-eqz p2, :cond_7

    if-nez v1, :cond_0

    goto :goto_4

    :cond_0
    new-instance p2, Lcom/oneplus/support/collection/ArrayMap;

    invoke-direct {p2}, Lcom/oneplus/support/collection/ArrayMap;-><init>()V

    invoke-virtual {p0, p2, v1}, Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;->findNamedViews(Ljava/util/Map;Landroid/view/View;)V

    iget-object p0, p3, Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;->lastInTransaction:Lcom/oneplus/support/core/fragment/app/BackStackRecord;

    iget-boolean p3, p3, Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;->lastInIsPop:Z

    if-eqz p3, :cond_2

    iget-object p3, v0, Lcom/oneplus/support/core/fragment/app/Fragment;->mAnimationInfo:Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;

    if-nez p3, :cond_1

    goto :goto_0

    :cond_1
    iget-object p3, p3, Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;->mExitTransitionCallback:Lcom/oneplus/support/core/app/SharedElementCallback;

    :goto_0
    iget-object p0, p0, Lcom/oneplus/support/core/fragment/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/Fragment;->getEnterTransitionCallback()V

    iget-object p0, p0, Lcom/oneplus/support/core/fragment/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    :goto_1
    if-eqz p0, :cond_3

    invoke-virtual {p2, p0}, Lcom/oneplus/support/collection/ArrayMap;->retainAll(Ljava/util/Collection;)Z

    invoke-virtual {p1}, Lcom/oneplus/support/collection/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/oneplus/support/collection/ArrayMap;->retainAll(Ljava/util/Collection;)Z

    :cond_3
    invoke-virtual {p1}, Lcom/oneplus/support/collection/SimpleArrayMap;->size()I

    move-result p0

    :cond_4
    :goto_2
    add-int/lit8 p0, p0, -0x1

    if-ltz p0, :cond_6

    invoke-virtual {p1, p0}, Lcom/oneplus/support/collection/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p2, p3}, Lcom/oneplus/support/collection/SimpleArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result p3

    if-ltz p3, :cond_5

    const/4 p3, 0x1

    goto :goto_3

    :cond_5
    const/4 p3, 0x0

    :goto_3
    if-nez p3, :cond_4

    invoke-virtual {p1, p0}, Lcom/oneplus/support/collection/SimpleArrayMap;->removeAt(I)Ljava/lang/Object;

    goto :goto_2

    :cond_6
    return-object p2

    :cond_7
    :goto_4
    invoke-virtual {p1}, Lcom/oneplus/support/collection/SimpleArrayMap;->clear()V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static captureOutSharedElements(Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;Lcom/oneplus/support/collection/ArrayMap;Ljava/lang/Object;Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;)Lcom/oneplus/support/collection/ArrayMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;",
            "Lcom/oneplus/support/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;",
            ")",
            "Lcom/oneplus/support/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/oneplus/support/collection/SimpleArrayMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    if-nez p2, :cond_0

    goto :goto_2

    :cond_0
    iget-object p2, p3, Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOut:Lcom/oneplus/support/core/fragment/app/Fragment;

    new-instance v0, Lcom/oneplus/support/collection/ArrayMap;

    invoke-direct {v0}, Lcom/oneplus/support/collection/ArrayMap;-><init>()V

    iget-object v1, p2, Lcom/oneplus/support/core/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;->findNamedViews(Ljava/util/Map;Landroid/view/View;)V

    iget-object p0, p3, Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOutTransaction:Lcom/oneplus/support/core/fragment/app/BackStackRecord;

    iget-boolean p3, p3, Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOutIsPop:Z

    if-eqz p3, :cond_1

    invoke-virtual {p2}, Lcom/oneplus/support/core/fragment/app/Fragment;->getEnterTransitionCallback()V

    iget-object p0, p0, Lcom/oneplus/support/core/fragment/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    goto :goto_1

    :cond_1
    iget-object p2, p2, Lcom/oneplus/support/core/fragment/app/Fragment;->mAnimationInfo:Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    iget-object p2, p2, Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;->mExitTransitionCallback:Lcom/oneplus/support/core/app/SharedElementCallback;

    :goto_0
    iget-object p0, p0, Lcom/oneplus/support/core/fragment/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    :goto_1
    invoke-virtual {v0, p0}, Lcom/oneplus/support/collection/ArrayMap;->retainAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Lcom/oneplus/support/collection/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/oneplus/support/collection/ArrayMap;->retainAll(Ljava/util/Collection;)Z

    return-object v0

    :cond_3
    :goto_2
    invoke-virtual {p1}, Lcom/oneplus/support/collection/SimpleArrayMap;->clear()V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static chooseImpl(Lcom/oneplus/support/core/fragment/app/Fragment;Lcom/oneplus/support/core/fragment/app/Fragment;)Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/oneplus/support/core/fragment/app/Fragment;->getExitTransition()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/support/core/fragment/app/Fragment;->getReturnTransition()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/support/core/fragment/app/Fragment;->getSharedElementReturnTransition()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/oneplus/support/core/fragment/app/Fragment;->getEnterTransition()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-virtual {p1}, Lcom/oneplus/support/core/fragment/app/Fragment;->getReenterTransition()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-virtual {p1}, Lcom/oneplus/support/core/fragment/app/Fragment;->getSharedElementEnterTransition()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    const/4 p1, 0x0

    if-eqz p0, :cond_6

    return-object p1

    :cond_6
    sget-object p0, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->PLATFORM_IMPL:Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;

    if-eqz p0, :cond_7

    invoke-static {p0, v0}, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->canHandleAll(Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;Ljava/util/List;)Z

    move-result p0

    if-eqz p0, :cond_7

    sget-object p0, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->PLATFORM_IMPL:Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;

    return-object p0

    :cond_7
    sget-object p0, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->SUPPORT_IMPL:Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;

    if-eqz p0, :cond_8

    invoke-static {p0, v0}, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->canHandleAll(Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;Ljava/util/List;)Z

    move-result p0

    if-eqz p0, :cond_8

    sget-object p0, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->SUPPORT_IMPL:Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;

    return-object p0

    :cond_8
    sget-object p0, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->PLATFORM_IMPL:Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;

    if-nez p0, :cond_9

    sget-object p0, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->SUPPORT_IMPL:Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;

    if-nez p0, :cond_9

    return-object p1

    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid Transition types"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static configureEnteringExitingViews(Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;Ljava/lang/Object;Lcom/oneplus/support/core/fragment/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;",
            "Ljava/lang/Object;",
            "Lcom/oneplus/support/core/fragment/app/Fragment;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p2, p2, Lcom/oneplus/support/core/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz p2, :cond_0

    invoke-virtual {p0, v0, p2}, Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;->captureTransitioningViews(Ljava/util/ArrayList;Landroid/view/View;)V

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_3

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;->addTargets(Ljava/lang/Object;Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :cond_3
    :goto_0
    return-object v0
.end method

.method private static getEnterTransition(Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;Lcom/oneplus/support/core/fragment/app/Fragment;Z)Ljava/lang/Object;
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/oneplus/support/core/fragment/app/Fragment;->getReenterTransition()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/oneplus/support/core/fragment/app/Fragment;->getEnterTransition()Ljava/lang/Object;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;->cloneTransition(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static getExitTransition(Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;Lcom/oneplus/support/core/fragment/app/Fragment;Z)Ljava/lang/Object;
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/oneplus/support/core/fragment/app/Fragment;->getReturnTransition()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/oneplus/support/core/fragment/app/Fragment;->getExitTransition()Ljava/lang/Object;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;->cloneTransition(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static getInEpicenterView(Lcom/oneplus/support/collection/ArrayMap;Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;Ljava/lang/Object;Z)Landroid/view/View;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/support/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;",
            "Ljava/lang/Object;",
            "Z)",
            "Landroid/view/View;"
        }
    .end annotation

    iget-object p1, p1, Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;->lastInTransaction:Lcom/oneplus/support/core/fragment/app/BackStackRecord;

    if-eqz p2, :cond_1

    if-eqz p0, :cond_1

    iget-object p2, p1, Lcom/oneplus/support/core/fragment/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    const/4 p2, 0x0

    if-eqz p3, :cond_0

    iget-object p1, p1, Lcom/oneplus/support/core/fragment/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lcom/oneplus/support/core/fragment/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    :goto_0
    invoke-virtual {p0, p1}, Lcom/oneplus/support/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getSharedElementTransition(Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;Lcom/oneplus/support/core/fragment/app/Fragment;Lcom/oneplus/support/core/fragment/app/Fragment;Z)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p2}, Lcom/oneplus/support/core/fragment/app/Fragment;->getSharedElementReturnTransition()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/oneplus/support/core/fragment/app/Fragment;->getSharedElementEnterTransition()Ljava/lang/Object;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;->cloneTransition(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p0, Lcom/oneplus/support/core/fragment/app/FragmentTransitionCompat21;

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Landroid/transition/TransitionSet;

    invoke-direct {v0}, Landroid/transition/TransitionSet;-><init>()V

    check-cast p1, Landroid/transition/Transition;

    invoke-virtual {v0, p1}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    :cond_3
    :goto_1
    return-object v0
.end method

.method private static mergeTransitions(Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lcom/oneplus/support/core/fragment/app/Fragment;Z)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    if-eqz p4, :cond_3

    if-eqz p5, :cond_1

    iget-object p5, p4, Lcom/oneplus/support/core/fragment/app/Fragment;->mAnimationInfo:Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;

    if-eqz p5, :cond_3

    invoke-static {p5}, Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;->access$700(Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;)Ljava/lang/Boolean;

    move-result-object p5

    if-nez p5, :cond_0

    goto :goto_0

    :cond_0
    iget-object p4, p4, Lcom/oneplus/support/core/fragment/app/Fragment;->mAnimationInfo:Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;

    invoke-static {p4}, Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;->access$700(Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;)Ljava/lang/Boolean;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_1
    iget-object p5, p4, Lcom/oneplus/support/core/fragment/app/Fragment;->mAnimationInfo:Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;

    if-eqz p5, :cond_3

    invoke-static {p5}, Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;->access$600(Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;)Ljava/lang/Boolean;

    move-result-object p5

    if-nez p5, :cond_2

    goto :goto_0

    :cond_2
    iget-object p4, p4, Lcom/oneplus/support/core/fragment/app/Fragment;->mAnimationInfo:Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;

    invoke-static {p4}, Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;->access$600(Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;)Ljava/lang/Boolean;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :cond_3
    :goto_0
    if-eqz v0, :cond_4

    invoke-virtual {p0, p2, p1, p3}, Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;->mergeTransitionsTogether(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_1

    :cond_4
    invoke-virtual {p0, p2, p1, p3}, Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;->mergeTransitionsInSequence(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method private static setOutEpicenter(Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;Ljava/lang/Object;Ljava/lang/Object;Lcom/oneplus/support/collection/ArrayMap;ZLcom/oneplus/support/core/fragment/app/BackStackRecord;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Lcom/oneplus/support/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;Z",
            "Lcom/oneplus/support/core/fragment/app/BackStackRecord;",
            ")V"
        }
    .end annotation

    iget-object v0, p5, Lcom/oneplus/support/core/fragment/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    iget-object p4, p5, Lcom/oneplus/support/core/fragment/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p4, p5, Lcom/oneplus/support/core/fragment/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    :goto_0
    invoke-virtual {p3, p4}, Lcom/oneplus/support/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/View;

    invoke-virtual {p0, p1, p3}, Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;->setEpicenter(Ljava/lang/Object;Landroid/view/View;)V

    if-eqz p2, :cond_1

    invoke-virtual {p0, p2, p3}, Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;->setEpicenter(Ljava/lang/Object;Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method private static setViewVisibility(Ljava/util/ArrayList;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method static startTransitions(Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZ)V
    .locals 39
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;",
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/support/core/fragment/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;IIZ)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p4

    move/from16 v4, p5

    iget v5, v0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mCurState:I

    const/4 v6, 0x1

    if-ge v5, v6, :cond_0

    return-void

    :cond_0
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    move/from16 v7, p3

    :goto_0
    const/4 v8, 0x0

    if-ge v7, v3, :cond_4

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/oneplus/support/core/fragment/app/BackStackRecord;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_2

    iget-object v8, v9, Lcom/oneplus/support/core/fragment/app/BackStackRecord;->mManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    iget-object v8, v8, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mContainer:Lcom/oneplus/support/core/fragment/app/FragmentContainer;

    invoke-virtual {v8}, Lcom/oneplus/support/core/fragment/app/FragmentContainer;->onHasView()Z

    move-result v8

    if-nez v8, :cond_1

    goto :goto_3

    :cond_1
    iget-object v8, v9, Lcom/oneplus/support/core/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    sub-int/2addr v8, v6

    :goto_1
    if-ltz v8, :cond_3

    iget-object v10, v9, Lcom/oneplus/support/core/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/oneplus/support/core/fragment/app/BackStackRecord$Op;

    invoke-static {v9, v10, v5, v6, v4}, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->addToFirstInLastOut(Lcom/oneplus/support/core/fragment/app/BackStackRecord;Lcom/oneplus/support/core/fragment/app/BackStackRecord$Op;Landroid/util/SparseArray;ZZ)V

    add-int/lit8 v8, v8, -0x1

    goto :goto_1

    :cond_2
    iget-object v10, v9, Lcom/oneplus/support/core/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    move v11, v8

    :goto_2
    if-ge v11, v10, :cond_3

    iget-object v12, v9, Lcom/oneplus/support/core/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/oneplus/support/core/fragment/app/BackStackRecord$Op;

    invoke-static {v9, v12, v5, v8, v4}, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->addToFirstInLastOut(Lcom/oneplus/support/core/fragment/app/BackStackRecord;Lcom/oneplus/support/core/fragment/app/BackStackRecord$Op;Landroid/util/SparseArray;ZZ)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-eqz v7, :cond_2f

    new-instance v7, Landroid/view/View;

    iget-object v9, v0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mHost:Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;

    invoke-virtual {v9}, Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v7, v9}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v15

    move v14, v8

    :goto_4
    if-ge v14, v15, :cond_2f

    invoke-virtual {v5, v14}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    new-instance v13, Lcom/oneplus/support/collection/ArrayMap;

    invoke-direct {v13}, Lcom/oneplus/support/collection/ArrayMap;-><init>()V

    add-int/lit8 v10, v3, -0x1

    move/from16 v12, p3

    :goto_5
    if-lt v10, v12, :cond_9

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/oneplus/support/core/fragment/app/BackStackRecord;

    invoke-virtual {v11, v9}, Lcom/oneplus/support/core/fragment/app/BackStackRecord;->interactsWith(I)Z

    move-result v16

    if-nez v16, :cond_5

    goto :goto_9

    :cond_5
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Boolean;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v16

    iget-object v6, v11, Lcom/oneplus/support/core/fragment/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    if-eqz v6, :cond_8

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eqz v16, :cond_6

    iget-object v8, v11, Lcom/oneplus/support/core/fragment/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    iget-object v11, v11, Lcom/oneplus/support/core/fragment/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    goto :goto_6

    :cond_6
    iget-object v8, v11, Lcom/oneplus/support/core/fragment/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    iget-object v11, v11, Lcom/oneplus/support/core/fragment/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    move-object/from16 v38, v11

    move-object v11, v8

    move-object/from16 v8, v38

    :goto_6
    const/4 v1, 0x0

    :goto_7
    if-ge v1, v6, :cond_8

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v2, v16

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v3, v16

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v13, v3}, Lcom/oneplus/support/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    move/from16 v17, v6

    move-object/from16 v6, v16

    check-cast v6, Ljava/lang/String;

    if-eqz v6, :cond_7

    invoke-virtual {v13, v2, v6}, Lcom/oneplus/support/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    :cond_7
    invoke-virtual {v13, v2, v3}, Lcom/oneplus/support/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_8
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v2, p2

    move/from16 v3, p4

    move/from16 v6, v17

    goto :goto_7

    :cond_8
    :goto_9
    add-int/lit8 v10, v10, -0x1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p4

    const/4 v6, 0x1

    const/4 v8, 0x0

    goto :goto_5

    :cond_9
    invoke-virtual {v5, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;

    if-eqz v4, :cond_1f

    iget-object v3, v0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mContainer:Lcom/oneplus/support/core/fragment/app/FragmentContainer;

    invoke-virtual {v3}, Lcom/oneplus/support/core/fragment/app/FragmentContainer;->onHasView()Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, v0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mContainer:Lcom/oneplus/support/core/fragment/app/FragmentContainer;

    invoke-virtual {v3, v9}, Lcom/oneplus/support/core/fragment/app/FragmentContainer;->onFindViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    goto :goto_a

    :cond_a
    const/4 v3, 0x0

    :goto_a
    if-nez v3, :cond_b

    :goto_b
    move-object/from16 v31, v5

    move/from16 v32, v14

    move/from16 v33, v15

    goto/16 :goto_16

    :cond_b
    iget-object v6, v1, Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;->lastIn:Lcom/oneplus/support/core/fragment/app/Fragment;

    iget-object v8, v1, Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOut:Lcom/oneplus/support/core/fragment/app/Fragment;

    invoke-static {v8, v6}, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->chooseImpl(Lcom/oneplus/support/core/fragment/app/Fragment;Lcom/oneplus/support/core/fragment/app/Fragment;)Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;

    move-result-object v9

    if-nez v9, :cond_c

    goto :goto_b

    :cond_c
    iget-boolean v10, v1, Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;->lastInIsPop:Z

    iget-boolean v11, v1, Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOutIsPop:Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v31, v5

    invoke-static {v9, v6, v10}, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->getEnterTransition(Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;Lcom/oneplus/support/core/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v9, v8, v11}, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->getExitTransition(Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;Lcom/oneplus/support/core/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v11

    iget-object v12, v1, Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;->lastIn:Lcom/oneplus/support/core/fragment/app/Fragment;

    move/from16 v32, v14

    iget-object v14, v1, Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOut:Lcom/oneplus/support/core/fragment/app/Fragment;

    move/from16 v33, v15

    if-eqz v12, :cond_d

    iget-object v15, v12, Lcom/oneplus/support/core/fragment/app/Fragment;->mView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {v15, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_d
    if-eqz v12, :cond_16

    if-nez v14, :cond_e

    goto/16 :goto_f

    :cond_e
    iget-boolean v0, v1, Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;->lastInIsPop:Z

    invoke-virtual {v13}, Lcom/oneplus/support/collection/SimpleArrayMap;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_f

    move/from16 v34, v10

    const/4 v15, 0x0

    goto :goto_c

    :cond_f
    invoke-static {v9, v12, v14, v0}, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->getSharedElementTransition(Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;Lcom/oneplus/support/core/fragment/app/Fragment;Lcom/oneplus/support/core/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v15

    move/from16 v34, v10

    :goto_c
    invoke-static {v9, v13, v15, v1}, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->captureOutSharedElements(Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;Lcom/oneplus/support/collection/ArrayMap;Ljava/lang/Object;Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;)Lcom/oneplus/support/collection/ArrayMap;

    move-result-object v10

    move-object/from16 v35, v6

    invoke-static {v9, v13, v15, v1}, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->captureInSharedElements(Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;Lcom/oneplus/support/collection/ArrayMap;Ljava/lang/Object;Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;)Lcom/oneplus/support/collection/ArrayMap;

    move-result-object v6

    invoke-virtual {v13}, Lcom/oneplus/support/collection/SimpleArrayMap;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_12

    if-eqz v10, :cond_10

    invoke-virtual {v10}, Lcom/oneplus/support/collection/SimpleArrayMap;->clear()V

    :cond_10
    if-eqz v6, :cond_11

    invoke-virtual {v6}, Lcom/oneplus/support/collection/SimpleArrayMap;->clear()V

    :cond_11
    const/4 v15, 0x0

    goto :goto_d

    :cond_12
    move-object/from16 v16, v15

    invoke-virtual {v13}, Lcom/oneplus/support/collection/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v15

    invoke-static {v4, v10, v15}, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->addSharedElementsWithMatchingNames(Ljava/util/ArrayList;Lcom/oneplus/support/collection/ArrayMap;Ljava/util/Collection;)V

    invoke-virtual {v13}, Lcom/oneplus/support/collection/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v15

    invoke-static {v2, v6, v15}, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->addSharedElementsWithMatchingNames(Ljava/util/ArrayList;Lcom/oneplus/support/collection/ArrayMap;Ljava/util/Collection;)V

    move-object/from16 v15, v16

    :goto_d
    if-nez v5, :cond_13

    if-nez v11, :cond_13

    if-nez v15, :cond_13

    move-object/from16 v37, v2

    goto :goto_10

    :cond_13
    move-object/from16 v36, v13

    const/4 v13, 0x1

    invoke-static {v12, v14, v0, v10, v13}, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->callSharedElementStartEnd(Lcom/oneplus/support/core/fragment/app/Fragment;Lcom/oneplus/support/core/fragment/app/Fragment;ZLcom/oneplus/support/collection/ArrayMap;Z)V

    if-eqz v15, :cond_15

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v9, v15, v7, v4}, Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;->setSharedElementTargets(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    iget-boolean v13, v1, Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOutIsPop:Z

    move-object/from16 v37, v2

    iget-object v2, v1, Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOutTransaction:Lcom/oneplus/support/core/fragment/app/BackStackRecord;

    move-object/from16 v16, v9

    move-object/from16 v17, v15

    move-object/from16 v18, v11

    move-object/from16 v19, v10

    move/from16 v20, v13

    move-object/from16 v21, v2

    invoke-static/range {v16 .. v21}, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->setOutEpicenter(Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;Ljava/lang/Object;Ljava/lang/Object;Lcom/oneplus/support/collection/ArrayMap;ZLcom/oneplus/support/core/fragment/app/BackStackRecord;)V

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-static {v6, v1, v5, v0}, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->getInEpicenterView(Lcom/oneplus/support/collection/ArrayMap;Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;Ljava/lang/Object;Z)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_14

    invoke-virtual {v9, v5, v2}, Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;->setEpicenter(Ljava/lang/Object;Landroid/graphics/Rect;)V

    :cond_14
    move-object/from16 v27, v1

    move-object/from16 v29, v2

    goto :goto_e

    :cond_15
    move-object/from16 v37, v2

    const/16 v27, 0x0

    const/16 v29, 0x0

    :goto_e
    new-instance v1, Lcom/oneplus/support/core/fragment/app/FragmentTransition$3;

    move-object/from16 v22, v1

    move-object/from16 v23, v12

    move-object/from16 v24, v14

    move/from16 v25, v0

    move-object/from16 v26, v6

    move-object/from16 v28, v9

    invoke-direct/range {v22 .. v29}, Lcom/oneplus/support/core/fragment/app/FragmentTransition$3;-><init>(Lcom/oneplus/support/core/fragment/app/Fragment;Lcom/oneplus/support/core/fragment/app/Fragment;ZLcom/oneplus/support/collection/ArrayMap;Landroid/view/View;Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;Landroid/graphics/Rect;)V

    invoke-static {v3, v1}, Lcom/oneplus/support/core/fragment/app/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Lcom/oneplus/support/core/fragment/app/OneShotPreDrawListener;

    goto :goto_11

    :cond_16
    :goto_f
    move-object/from16 v37, v2

    move-object/from16 v35, v6

    move/from16 v34, v10

    :goto_10
    move-object/from16 v36, v13

    const/4 v15, 0x0

    :goto_11
    if-nez v5, :cond_17

    if-nez v15, :cond_17

    if-nez v11, :cond_17

    goto/16 :goto_16

    :cond_17
    invoke-static {v9, v11, v8, v4, v7}, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->configureEnteringExitingViews(Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;Ljava/lang/Object;Lcom/oneplus/support/core/fragment/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v0

    move-object/from16 v1, v35

    move-object/from16 v2, v37

    invoke-static {v9, v5, v1, v2, v7}, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->configureEnteringExitingViews(Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;Ljava/lang/Object;Lcom/oneplus/support/core/fragment/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v6

    const/4 v10, 0x4

    invoke-static {v6, v10}, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->setViewVisibility(Ljava/util/ArrayList;I)V

    move-object/from16 v16, v9

    move-object/from16 v17, v5

    move-object/from16 v18, v11

    move-object/from16 v19, v15

    move-object/from16 v20, v1

    move/from16 v21, v34

    invoke-static/range {v16 .. v21}, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->mergeTransitions(Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lcom/oneplus/support/core/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1e

    if-eqz v8, :cond_18

    if-eqz v11, :cond_18

    iget-boolean v10, v8, Lcom/oneplus/support/core/fragment/app/Fragment;->mAdded:Z

    if-eqz v10, :cond_18

    iget-boolean v10, v8, Lcom/oneplus/support/core/fragment/app/Fragment;->mHidden:Z

    if-eqz v10, :cond_18

    iget-boolean v10, v8, Lcom/oneplus/support/core/fragment/app/Fragment;->mHiddenChanged:Z

    if-eqz v10, :cond_18

    const/4 v10, 0x1

    invoke-virtual {v8, v10}, Lcom/oneplus/support/core/fragment/app/Fragment;->setHideReplaced(Z)V

    iget-object v10, v8, Lcom/oneplus/support/core/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v9, v11, v10, v0}, Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;->scheduleHideFragmentView(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    iget-object v8, v8, Lcom/oneplus/support/core/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    new-instance v10, Lcom/oneplus/support/core/fragment/app/FragmentTransition$1;

    invoke-direct {v10, v0}, Lcom/oneplus/support/core/fragment/app/FragmentTransition$1;-><init>(Ljava/util/ArrayList;)V

    invoke-static {v8, v10}, Lcom/oneplus/support/core/fragment/app/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Lcom/oneplus/support/core/fragment/app/OneShotPreDrawListener;

    :cond_18
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/4 v12, 0x0

    :goto_12
    if-ge v12, v10, :cond_19

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/View;

    invoke-static {v13}, Lcom/oneplus/support/core/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    move/from16 v16, v10

    const/4 v10, 0x0

    invoke-virtual {v13, v10}, Landroid/view/View;->setTransitionName(Ljava/lang/String;)V

    add-int/lit8 v12, v12, 0x1

    move/from16 v10, v16

    goto :goto_12

    :cond_19
    move-object/from16 v22, v9

    move-object/from16 v23, v1

    move-object/from16 v24, v5

    move-object/from16 v25, v6

    move-object/from16 v26, v11

    move-object/from16 v27, v0

    move-object/from16 v28, v15

    move-object/from16 v29, v2

    invoke-virtual/range {v22 .. v29}, Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;->scheduleRemoveTargets(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    invoke-virtual {v9, v3, v1}, Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;->beginDelayedTransition(Landroid/view/ViewGroup;Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    :goto_13
    if-ge v5, v0, :cond_1d

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    invoke-static {v10}, Lcom/oneplus/support/core/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v11, :cond_1a

    move-object/from16 v13, v36

    goto :goto_15

    :cond_1a
    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v14, 0x0

    invoke-virtual {v10, v14}, Landroid/view/View;->setTransitionName(Ljava/lang/String;)V

    move-object/from16 v13, v36

    invoke-interface {v13, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const/4 v12, 0x0

    :goto_14
    if-ge v12, v0, :cond_1c

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1b

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v10, v11}, Landroid/view/View;->setTransitionName(Ljava/lang/String;)V

    goto :goto_15

    :cond_1b
    add-int/lit8 v12, v12, 0x1

    const/4 v14, 0x0

    goto :goto_14

    :cond_1c
    :goto_15
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v36, v13

    goto :goto_13

    :cond_1d
    new-instance v5, Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl$1;

    move-object/from16 v22, v5

    move-object/from16 v23, v9

    move/from16 v24, v0

    move-object/from16 v25, v2

    move-object/from16 v26, v8

    move-object/from16 v27, v4

    move-object/from16 v28, v1

    invoke-direct/range {v22 .. v28}, Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl$1;-><init>(Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-static {v3, v5}, Lcom/oneplus/support/core/fragment/app/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Lcom/oneplus/support/core/fragment/app/OneShotPreDrawListener;

    const/4 v0, 0x0

    invoke-static {v6, v0}, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->setViewVisibility(Ljava/util/ArrayList;I)V

    invoke-virtual {v9, v15, v4, v2}, Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;->swapSharedElementTargets(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_17

    :cond_1e
    :goto_16
    const/4 v0, 0x0

    :goto_17
    move/from16 v27, v32

    move/from16 v30, v33

    goto/16 :goto_1f

    :cond_1f
    move-object/from16 v31, v5

    move/from16 v32, v14

    move/from16 v33, v15

    const/4 v0, 0x0

    move-object/from16 v2, p0

    iget-object v3, v2, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mContainer:Lcom/oneplus/support/core/fragment/app/FragmentContainer;

    invoke-virtual {v3}, Lcom/oneplus/support/core/fragment/app/FragmentContainer;->onHasView()Z

    move-result v3

    if-eqz v3, :cond_20

    iget-object v3, v2, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mContainer:Lcom/oneplus/support/core/fragment/app/FragmentContainer;

    invoke-virtual {v3, v9}, Lcom/oneplus/support/core/fragment/app/FragmentContainer;->onFindViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    goto :goto_18

    :cond_20
    const/4 v3, 0x0

    :goto_18
    if-nez v3, :cond_21

    goto :goto_17

    :cond_21
    iget-object v4, v1, Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;->lastIn:Lcom/oneplus/support/core/fragment/app/Fragment;

    iget-object v5, v1, Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOut:Lcom/oneplus/support/core/fragment/app/Fragment;

    invoke-static {v5, v4}, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->chooseImpl(Lcom/oneplus/support/core/fragment/app/Fragment;Lcom/oneplus/support/core/fragment/app/Fragment;)Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;

    move-result-object v6

    if-nez v6, :cond_22

    goto :goto_17

    :cond_22
    iget-boolean v8, v1, Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;->lastInIsPop:Z

    iget-boolean v9, v1, Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOutIsPop:Z

    invoke-static {v6, v4, v8}, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->getEnterTransition(Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;Lcom/oneplus/support/core/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v6, v5, v9}, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->getExitTransition(Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;Lcom/oneplus/support/core/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v12

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iget-object v9, v1, Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;->lastIn:Lcom/oneplus/support/core/fragment/app/Fragment;

    iget-object v15, v1, Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOut:Lcom/oneplus/support/core/fragment/app/Fragment;

    if-eqz v9, :cond_29

    if-nez v15, :cond_23

    goto/16 :goto_1c

    :cond_23
    iget-boolean v14, v1, Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;->lastInIsPop:Z

    invoke-virtual {v13}, Lcom/oneplus/support/collection/SimpleArrayMap;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_24

    const/4 v0, 0x0

    goto :goto_19

    :cond_24
    invoke-static {v6, v9, v15, v14}, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->getSharedElementTransition(Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;Lcom/oneplus/support/core/fragment/app/Fragment;Lcom/oneplus/support/core/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, v16

    :goto_19
    invoke-static {v6, v13, v0, v1}, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->captureOutSharedElements(Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;Lcom/oneplus/support/collection/ArrayMap;Ljava/lang/Object;Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;)Lcom/oneplus/support/collection/ArrayMap;

    move-result-object v2

    invoke-virtual {v13}, Lcom/oneplus/support/collection/SimpleArrayMap;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_25

    const/4 v0, 0x0

    goto :goto_1a

    :cond_25
    move-object/from16 v16, v0

    invoke-virtual {v2}, Lcom/oneplus/support/collection/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-object/from16 v0, v16

    :goto_1a
    if-nez v8, :cond_26

    if-nez v12, :cond_26

    if-nez v0, :cond_26

    goto/16 :goto_1c

    :cond_26
    move-object/from16 v22, v4

    const/4 v4, 0x1

    invoke-static {v9, v15, v14, v2, v4}, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->callSharedElementStartEnd(Lcom/oneplus/support/core/fragment/app/Fragment;Lcom/oneplus/support/core/fragment/app/Fragment;ZLcom/oneplus/support/collection/ArrayMap;Z)V

    if-eqz v0, :cond_27

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v6, v0, v7, v11}, Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;->setSharedElementTargets(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    move-object/from16 v20, v9

    iget-boolean v9, v1, Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOutIsPop:Z

    move-object/from16 v21, v10

    iget-object v10, v1, Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOutTransaction:Lcom/oneplus/support/core/fragment/app/BackStackRecord;

    move/from16 v23, v14

    move-object v14, v6

    move-object/from16 v24, v15

    move-object v15, v0

    move-object/from16 v16, v12

    move-object/from16 v17, v2

    move/from16 v18, v9

    move-object/from16 v19, v10

    invoke-static/range {v14 .. v19}, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->setOutEpicenter(Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;Ljava/lang/Object;Ljava/lang/Object;Lcom/oneplus/support/collection/ArrayMap;ZLcom/oneplus/support/core/fragment/app/BackStackRecord;)V

    if-eqz v8, :cond_28

    invoke-virtual {v6, v8, v4}, Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;->setEpicenter(Ljava/lang/Object;Landroid/graphics/Rect;)V

    goto :goto_1b

    :cond_27
    move-object/from16 v20, v9

    move-object/from16 v21, v10

    move/from16 v23, v14

    move-object/from16 v24, v15

    const/4 v4, 0x0

    :cond_28
    :goto_1b
    new-instance v2, Lcom/oneplus/support/core/fragment/app/FragmentTransition$4;

    move-object/from16 v16, v20

    move-object v9, v2

    move-object/from16 v15, v21

    move-object v10, v6

    move-object v14, v11

    move-object v11, v13

    move-object/from16 v25, v5

    move-object v5, v12

    move-object v12, v0

    move-object/from16 v26, v0

    move-object v0, v13

    move-object v13, v1

    move-object/from16 v28, v14

    move/from16 v27, v32

    const/16 v29, 0x0

    move-object v14, v15

    move-object/from16 v32, v15

    move/from16 v30, v33

    move-object v15, v7

    move-object/from16 v17, v24

    move/from16 v18, v23

    move-object/from16 v19, v28

    move-object/from16 v20, v8

    move-object/from16 v21, v4

    invoke-direct/range {v9 .. v21}, Lcom/oneplus/support/core/fragment/app/FragmentTransition$4;-><init>(Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;Lcom/oneplus/support/collection/ArrayMap;Ljava/lang/Object;Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;Ljava/util/ArrayList;Landroid/view/View;Lcom/oneplus/support/core/fragment/app/Fragment;Lcom/oneplus/support/core/fragment/app/Fragment;ZLjava/util/ArrayList;Ljava/lang/Object;Landroid/graphics/Rect;)V

    invoke-static {v3, v2}, Lcom/oneplus/support/core/fragment/app/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Lcom/oneplus/support/core/fragment/app/OneShotPreDrawListener;

    move-object/from16 v20, v26

    goto :goto_1d

    :cond_29
    :goto_1c
    move-object/from16 v22, v4

    move-object/from16 v25, v5

    move-object/from16 v28, v11

    move-object v5, v12

    move-object v0, v13

    move/from16 v27, v32

    move/from16 v30, v33

    const/16 v29, 0x0

    move-object/from16 v32, v10

    move-object/from16 v20, v29

    :goto_1d
    if-nez v8, :cond_2a

    if-nez v20, :cond_2a

    if-nez v5, :cond_2a

    goto/16 :goto_1f

    :cond_2a
    move-object/from16 v2, v25

    move-object/from16 v4, v28

    invoke-static {v6, v5, v2, v4, v7}, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->configureEnteringExitingViews(Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;Ljava/lang/Object;Lcom/oneplus/support/core/fragment/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_2c

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2b

    goto :goto_1e

    :cond_2b
    move-object/from16 v29, v5

    :cond_2c
    :goto_1e
    move-object v4, v6

    check-cast v4, Lcom/oneplus/support/core/fragment/app/FragmentTransitionCompat21;

    if-eqz v8, :cond_2d

    move-object v4, v8

    check-cast v4, Landroid/transition/Transition;

    invoke-virtual {v4, v7}, Landroid/transition/Transition;->addTarget(Landroid/view/View;)Landroid/transition/Transition;

    :cond_2d
    iget-boolean v1, v1, Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;->lastInIsPop:Z

    move-object v14, v6

    move-object v15, v8

    move-object/from16 v16, v29

    move-object/from16 v17, v20

    move-object/from16 v18, v22

    move/from16 v19, v1

    invoke-static/range {v14 .. v19}, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->mergeTransitions(Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lcom/oneplus/support/core/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2e

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v14, v6

    move-object v15, v1

    move-object/from16 v16, v8

    move-object/from16 v17, v4

    move-object/from16 v18, v29

    move-object/from16 v19, v2

    move-object/from16 v21, v32

    invoke-virtual/range {v14 .. v21}, Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;->scheduleRemoveTargets(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    new-instance v5, Lcom/oneplus/support/core/fragment/app/FragmentTransition$2;

    move-object v9, v5

    move-object v10, v8

    move-object v11, v6

    move-object v12, v7

    move-object/from16 v13, v22

    move-object/from16 v14, v32

    move-object v15, v4

    move-object/from16 v16, v2

    move-object/from16 v17, v29

    invoke-direct/range {v9 .. v17}, Lcom/oneplus/support/core/fragment/app/FragmentTransition$2;-><init>(Ljava/lang/Object;Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;Landroid/view/View;Lcom/oneplus/support/core/fragment/app/Fragment;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;)V

    invoke-static {v3, v5}, Lcom/oneplus/support/core/fragment/app/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Lcom/oneplus/support/core/fragment/app/OneShotPreDrawListener;

    new-instance v2, Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl$2;

    move-object/from16 v4, v32

    invoke-direct {v2, v6, v4, v0}, Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl$2;-><init>(Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;Ljava/util/ArrayList;Ljava/util/Map;)V

    invoke-static {v3, v2}, Lcom/oneplus/support/core/fragment/app/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Lcom/oneplus/support/core/fragment/app/OneShotPreDrawListener;

    invoke-virtual {v6, v3, v1}, Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;->beginDelayedTransition(Landroid/view/ViewGroup;Ljava/lang/Object;)V

    new-instance v1, Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl$3;

    invoke-direct {v1, v6, v4, v0}, Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl$3;-><init>(Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;Ljava/util/ArrayList;Ljava/util/Map;)V

    invoke-static {v3, v1}, Lcom/oneplus/support/core/fragment/app/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Lcom/oneplus/support/core/fragment/app/OneShotPreDrawListener;

    :cond_2e
    :goto_1f
    add-int/lit8 v14, v27, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v15, v30

    move-object/from16 v5, v31

    const/4 v6, 0x1

    const/4 v8, 0x0

    goto/16 :goto_4

    :cond_2f
    return-void
.end method
