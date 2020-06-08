.class public Lcom/oneplus/support/core/view/NestedScrollingChildHelper;
.super Ljava/lang/Object;
.source "NestedScrollingChildHelper.java"


# instance fields
.field private mIsNestedScrollingEnabled:Z

.field private mNestedScrollingParentNonTouch:Landroid/view/ViewParent;

.field private mNestedScrollingParentTouch:Landroid/view/ViewParent;

.field private mTempNestedScrollConsumed:[I

.field private final mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oneplus/support/core/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    return-void
.end method

.method private getNestedScrollingParentForType(I)Landroid/view/ViewParent;
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/oneplus/support/core/view/NestedScrollingChildHelper;->mNestedScrollingParentNonTouch:Landroid/view/ViewParent;

    return-object p0

    :cond_1
    iget-object p0, p0, Lcom/oneplus/support/core/view/NestedScrollingChildHelper;->mNestedScrollingParentTouch:Landroid/view/ViewParent;

    return-object p0
.end method


# virtual methods
.method public dispatchNestedFling(FFZ)Z
    .locals 3

    iget-boolean v0, p0, Lcom/oneplus/support/core/view/NestedScrollingChildHelper;->mIsNestedScrollingEnabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0, v1}, Lcom/oneplus/support/core/view/NestedScrollingChildHelper;->getNestedScrollingParentForType(I)Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oneplus/support/core/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    :try_start_0
    invoke-interface {v0, p0, p1, p2, p3}, Landroid/view/ViewParent;->onNestedFling(Landroid/view/View;FFZ)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "ViewParent "

    const-string p2, " does not implement interface method onNestedFling"

    const-string p3, "ViewParentCompat"

    invoke-static {p1, v0, p2, p3, p0}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline38(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return v1
.end method

.method public dispatchNestedPreFling(FF)Z
    .locals 3

    iget-boolean v0, p0, Lcom/oneplus/support/core/view/NestedScrollingChildHelper;->mIsNestedScrollingEnabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0, v1}, Lcom/oneplus/support/core/view/NestedScrollingChildHelper;->getNestedScrollingParentForType(I)Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oneplus/support/core/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    :try_start_0
    invoke-interface {v0, p0, p1, p2}, Landroid/view/ViewParent;->onNestedPreFling(Landroid/view/View;FF)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "ViewParent "

    const-string p2, " does not implement interface method onNestedPreFling"

    const-string v2, "ViewParentCompat"

    invoke-static {p1, v0, p2, v2, p0}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline38(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return v1
.end method

.method public dispatchNestedPreScroll(II[I[II)Z
    .locals 14

    move-object v1, p0

    move v0, p1

    move/from16 v5, p2

    move-object/from16 v8, p4

    move/from16 v7, p5

    iget-boolean v2, v1, Lcom/oneplus/support/core/view/NestedScrollingChildHelper;->mIsNestedScrollingEnabled:Z

    const/4 v9, 0x0

    if-eqz v2, :cond_b

    invoke-direct {p0, v7}, Lcom/oneplus/support/core/view/NestedScrollingChildHelper;->getNestedScrollingParentForType(I)Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_0

    return v9

    :cond_0
    const/4 v10, 0x1

    if-nez v0, :cond_2

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    if-eqz v8, :cond_b

    aput v9, v8, v9

    aput v9, v8, v10

    goto/16 :goto_5

    :cond_2
    :goto_0
    if-eqz v8, :cond_3

    iget-object v3, v1, Lcom/oneplus/support/core/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-virtual {v3, v8}, Landroid/view/View;->getLocationInWindow([I)V

    aget v3, v8, v9

    aget v4, v8, v10

    move v11, v3

    move v12, v4

    goto :goto_1

    :cond_3
    move v11, v9

    move v12, v11

    :goto_1
    if-nez p3, :cond_5

    iget-object v3, v1, Lcom/oneplus/support/core/view/NestedScrollingChildHelper;->mTempNestedScrollConsumed:[I

    if-nez v3, :cond_4

    const/4 v3, 0x2

    new-array v3, v3, [I

    iput-object v3, v1, Lcom/oneplus/support/core/view/NestedScrollingChildHelper;->mTempNestedScrollConsumed:[I

    :cond_4
    iget-object v3, v1, Lcom/oneplus/support/core/view/NestedScrollingChildHelper;->mTempNestedScrollConsumed:[I

    move-object v13, v3

    goto :goto_2

    :cond_5
    move-object/from16 v13, p3

    :goto_2
    aput v9, v13, v9

    aput v9, v13, v10

    iget-object v3, v1, Lcom/oneplus/support/core/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    instance-of v4, v2, Lcom/oneplus/support/core/view/NestedScrollingParent2;

    if-eqz v4, :cond_6

    check-cast v2, Lcom/oneplus/support/core/view/NestedScrollingParent2;

    move v4, p1

    move/from16 v5, p2

    move-object v6, v13

    move/from16 v7, p5

    invoke-interface/range {v2 .. v7}, Lcom/oneplus/support/core/view/NestedScrollingParent2;->onNestedPreScroll(Landroid/view/View;II[II)V

    goto :goto_3

    :cond_6
    if-nez v7, :cond_7

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    :try_start_0
    invoke-interface {v2, v3, p1, v5, v13}, Landroid/view/ViewParent;->onNestedPreScroll(Landroid/view/View;II[I)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v3, v0

    const-string v0, "ViewParent "

    const-string v4, " does not implement interface method onNestedPreScroll"

    const-string v5, "ViewParentCompat"

    invoke-static {v0, v2, v4, v5, v3}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline38(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_7
    :goto_3
    if-eqz v8, :cond_8

    iget-object v0, v1, Lcom/oneplus/support/core/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->getLocationInWindow([I)V

    aget v0, v8, v9

    sub-int/2addr v0, v11

    aput v0, v8, v9

    aget v0, v8, v10

    sub-int/2addr v0, v12

    aput v0, v8, v10

    :cond_8
    aget v0, v13, v9

    if-nez v0, :cond_a

    aget v0, v13, v10

    if-eqz v0, :cond_9

    goto :goto_4

    :cond_9
    move v10, v9

    :cond_a
    :goto_4
    return v10

    :cond_b
    :goto_5
    return v9
.end method

.method public dispatchNestedScroll(IIII[II)Z
    .locals 14

    move-object v1, p0

    move-object/from16 v2, p5

    move/from16 v0, p6

    iget-boolean v3, v1, Lcom/oneplus/support/core/view/NestedScrollingChildHelper;->mIsNestedScrollingEnabled:Z

    const/4 v10, 0x0

    if-eqz v3, :cond_7

    invoke-direct {p0, v0}, Lcom/oneplus/support/core/view/NestedScrollingChildHelper;->getNestedScrollingParentForType(I)Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_0

    return v10

    :cond_0
    const/4 v11, 0x1

    if-nez p1, :cond_2

    if-nez p2, :cond_2

    if-nez p3, :cond_2

    if-eqz p4, :cond_1

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_7

    aput v10, v2, v10

    aput v10, v2, v11

    goto :goto_3

    :cond_2
    :goto_0
    if-eqz v2, :cond_3

    iget-object v4, v1, Lcom/oneplus/support/core/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->getLocationInWindow([I)V

    aget v4, v2, v10

    aget v5, v2, v11

    move v12, v4

    move v13, v5

    goto :goto_1

    :cond_3
    move v12, v10

    move v13, v12

    :goto_1
    iget-object v5, v1, Lcom/oneplus/support/core/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    instance-of v4, v3, Lcom/oneplus/support/core/view/NestedScrollingParent2;

    if-eqz v4, :cond_4

    check-cast v3, Lcom/oneplus/support/core/view/NestedScrollingParent2;

    move-object v4, v5

    move v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p6

    invoke-interface/range {v3 .. v9}, Lcom/oneplus/support/core/view/NestedScrollingParent2;->onNestedScroll(Landroid/view/View;IIIII)V

    goto :goto_2

    :cond_4
    if-nez v0, :cond_5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    move-object v4, v3

    move v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    :try_start_0
    invoke-interface/range {v4 .. v9}, Landroid/view/ViewParent;->onNestedScroll(Landroid/view/View;IIII)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v4, v0

    const-string v0, "ViewParent "

    const-string v5, " does not implement interface method onNestedScroll"

    const-string v6, "ViewParentCompat"

    invoke-static {v0, v3, v5, v6, v4}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline38(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    :goto_2
    if-eqz v2, :cond_6

    iget-object v0, v1, Lcom/oneplus/support/core/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->getLocationInWindow([I)V

    aget v0, v2, v10

    sub-int/2addr v0, v12

    aput v0, v2, v10

    aget v0, v2, v11

    sub-int/2addr v0, v13

    aput v0, v2, v11

    :cond_6
    return v11

    :cond_7
    :goto_3
    return v10
.end method

.method public hasNestedScrollingParent(I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/support/core/view/NestedScrollingChildHelper;->getNestedScrollingParentForType(I)Landroid/view/ViewParent;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isNestedScrollingEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/support/core/view/NestedScrollingChildHelper;->mIsNestedScrollingEnabled:Z

    return p0
.end method

.method public setNestedScrollingEnabled(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/support/core/view/NestedScrollingChildHelper;->mIsNestedScrollingEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/support/core/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-static {v0}, Lcom/oneplus/support/core/view/ViewCompat;->stopNestedScroll(Landroid/view/View;)V

    :cond_0
    iput-boolean p1, p0, Lcom/oneplus/support/core/view/NestedScrollingChildHelper;->mIsNestedScrollingEnabled:Z

    return-void
.end method

.method public startNestedScroll(II)Z
    .locals 9

    invoke-direct {p0, p2}, Lcom/oneplus/support/core/view/NestedScrollingChildHelper;->getNestedScrollingParentForType(I)Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    return v2

    :cond_1
    iget-boolean v0, p0, Lcom/oneplus/support/core/view/NestedScrollingChildHelper;->mIsNestedScrollingEnabled:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/oneplus/support/core/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v3, p0, Lcom/oneplus/support/core/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    :goto_1
    if-eqz v0, :cond_a

    iget-object v4, p0, Lcom/oneplus/support/core/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    instance-of v5, v0, Lcom/oneplus/support/core/view/NestedScrollingParent2;

    const-string v6, "ViewParentCompat"

    const-string v7, "ViewParent "

    if-eqz v5, :cond_2

    move-object v8, v0

    check-cast v8, Lcom/oneplus/support/core/view/NestedScrollingParent2;

    invoke-interface {v8, v3, v4, p1, p2}, Lcom/oneplus/support/core/view/NestedScrollingParent2;->onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z

    move-result v4

    goto :goto_2

    :cond_2
    if-nez p2, :cond_3

    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    :try_start_0
    invoke-interface {v0, v3, v4, p1}, Landroid/view/ViewParent;->onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v4

    const-string v8, " does not implement interface method onStartNestedScroll"

    invoke-static {v7, v0, v8, v6, v4}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline38(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    move v4, v1

    :goto_2
    if-eqz v4, :cond_8

    if-eqz p2, :cond_5

    if-eq p2, v2, :cond_4

    goto :goto_3

    :cond_4
    iput-object v0, p0, Lcom/oneplus/support/core/view/NestedScrollingChildHelper;->mNestedScrollingParentNonTouch:Landroid/view/ViewParent;

    goto :goto_3

    :cond_5
    iput-object v0, p0, Lcom/oneplus/support/core/view/NestedScrollingChildHelper;->mNestedScrollingParentTouch:Landroid/view/ViewParent;

    :goto_3
    iget-object p0, p0, Lcom/oneplus/support/core/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    if-eqz v5, :cond_6

    check-cast v0, Lcom/oneplus/support/core/view/NestedScrollingParent2;

    invoke-interface {v0, v3, p0, p1, p2}, Lcom/oneplus/support/core/view/NestedScrollingParent2;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V

    goto :goto_4

    :cond_6
    if-nez p2, :cond_7

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    :try_start_1
    invoke-interface {v0, v3, p0, p1}, Landroid/view/ViewParent;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    :try_end_1
    .catch Ljava/lang/AbstractMethodError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception p0

    const-string p1, " does not implement interface method onNestedScrollAccepted"

    invoke-static {v7, v0, p1, v6, p0}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline38(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_7
    :goto_4
    return v2

    :cond_8
    instance-of v4, v0, Landroid/view/View;

    if-eqz v4, :cond_9

    move-object v3, v0

    check-cast v3, Landroid/view/View;

    :cond_9
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_1

    :cond_a
    return v1
.end method

.method public stopNestedScroll(I)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/oneplus/support/core/view/NestedScrollingChildHelper;->getNestedScrollingParentForType(I)Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/oneplus/support/core/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    instance-of v2, v0, Lcom/oneplus/support/core/view/NestedScrollingParent2;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/oneplus/support/core/view/NestedScrollingParent2;

    invoke-interface {v0, v1, p1}, Lcom/oneplus/support/core/view/NestedScrollingParent2;->onStopNestedScroll(Landroid/view/View;I)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    :try_start_0
    invoke-interface {v0, v1}, Landroid/view/ViewParent;->onStopNestedScroll(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "ViewParent "

    const-string v3, " does not implement interface method onStopNestedScroll"

    const-string v4, "ViewParentCompat"

    invoke-static {v2, v0, v3, v4, v1}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline38(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    goto :goto_1

    :cond_2
    iput-object v0, p0, Lcom/oneplus/support/core/view/NestedScrollingChildHelper;->mNestedScrollingParentNonTouch:Landroid/view/ViewParent;

    goto :goto_1

    :cond_3
    iput-object v0, p0, Lcom/oneplus/support/core/view/NestedScrollingChildHelper;->mNestedScrollingParentTouch:Landroid/view/ViewParent;

    :cond_4
    :goto_1
    return-void
.end method
