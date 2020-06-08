.class final Lcom/oneplus/support/core/fragment/app/BackStackState;
.super Ljava/lang/Object;
.source "BackStackRecord.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oneplus/support/core/fragment/app/BackStackState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mBreadCrumbShortTitleRes:I

.field final mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

.field final mBreadCrumbTitleRes:I

.field final mBreadCrumbTitleText:Ljava/lang/CharSequence;

.field final mIndex:I

.field final mName:Ljava/lang/String;

.field final mOps:[I

.field final mReorderingAllowed:Z

.field final mSharedElementSourceNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mSharedElementTargetNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mTransition:I

.field final mTransitionStyle:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/oneplus/support/core/fragment/app/BackStackState$1;

    invoke-direct {v0}, Lcom/oneplus/support/core/fragment/app/BackStackState$1;-><init>()V

    sput-object v0, Lcom/oneplus/support/core/fragment/app/BackStackState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/support/core/fragment/app/BackStackState;->mOps:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oneplus/support/core/fragment/app/BackStackState;->mTransition:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oneplus/support/core/fragment/app/BackStackState;->mTransitionStyle:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/support/core/fragment/app/BackStackState;->mName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oneplus/support/core/fragment/app/BackStackState;->mIndex:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oneplus/support/core/fragment/app/BackStackState;->mBreadCrumbTitleRes:I

    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/oneplus/support/core/fragment/app/BackStackState;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oneplus/support/core/fragment/app/BackStackState;->mBreadCrumbShortTitleRes:I

    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/oneplus/support/core/fragment/app/BackStackState;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/support/core/fragment/app/BackStackState;->mSharedElementSourceNames:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/support/core/fragment/app/BackStackState;->mSharedElementTargetNames:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/oneplus/support/core/fragment/app/BackStackState;->mReorderingAllowed:Z

    return-void
.end method

.method public constructor <init>(Lcom/oneplus/support/core/fragment/app/BackStackRecord;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/oneplus/support/core/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    mul-int/lit8 v1, v0, 0x6

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/oneplus/support/core/fragment/app/BackStackState;->mOps:[I

    iget-boolean v1, p1, Lcom/oneplus/support/core/fragment/app/BackStackRecord;->mAddToBackStack:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v3, p1, Lcom/oneplus/support/core/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/support/core/fragment/app/BackStackRecord$Op;

    iget-object v4, p0, Lcom/oneplus/support/core/fragment/app/BackStackState;->mOps:[I

    add-int/lit8 v5, v2, 0x1

    iget v6, v3, Lcom/oneplus/support/core/fragment/app/BackStackRecord$Op;->cmd:I

    aput v6, v4, v2

    add-int/lit8 v2, v5, 0x1

    iget-object v6, v3, Lcom/oneplus/support/core/fragment/app/BackStackRecord$Op;->fragment:Lcom/oneplus/support/core/fragment/app/Fragment;

    if-eqz v6, :cond_0

    iget v6, v6, Lcom/oneplus/support/core/fragment/app/Fragment;->mIndex:I

    goto :goto_1

    :cond_0
    const/4 v6, -0x1

    :goto_1
    aput v6, v4, v5

    iget-object v4, p0, Lcom/oneplus/support/core/fragment/app/BackStackState;->mOps:[I

    add-int/lit8 v5, v2, 0x1

    iget v6, v3, Lcom/oneplus/support/core/fragment/app/BackStackRecord$Op;->enterAnim:I

    aput v6, v4, v2

    add-int/lit8 v2, v5, 0x1

    iget v6, v3, Lcom/oneplus/support/core/fragment/app/BackStackRecord$Op;->exitAnim:I

    aput v6, v4, v5

    add-int/lit8 v5, v2, 0x1

    iget v6, v3, Lcom/oneplus/support/core/fragment/app/BackStackRecord$Op;->popEnterAnim:I

    aput v6, v4, v2

    add-int/lit8 v2, v5, 0x1

    iget v3, v3, Lcom/oneplus/support/core/fragment/app/BackStackRecord$Op;->popExitAnim:I

    aput v3, v4, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget v0, p1, Lcom/oneplus/support/core/fragment/app/BackStackRecord;->mTransition:I

    iput v0, p0, Lcom/oneplus/support/core/fragment/app/BackStackState;->mTransition:I

    iget v0, p1, Lcom/oneplus/support/core/fragment/app/BackStackRecord;->mTransitionStyle:I

    iput v0, p0, Lcom/oneplus/support/core/fragment/app/BackStackState;->mTransitionStyle:I

    iget-object v0, p1, Lcom/oneplus/support/core/fragment/app/BackStackRecord;->mName:Ljava/lang/String;

    iput-object v0, p0, Lcom/oneplus/support/core/fragment/app/BackStackState;->mName:Ljava/lang/String;

    iget v0, p1, Lcom/oneplus/support/core/fragment/app/BackStackRecord;->mIndex:I

    iput v0, p0, Lcom/oneplus/support/core/fragment/app/BackStackState;->mIndex:I

    iget v0, p1, Lcom/oneplus/support/core/fragment/app/BackStackRecord;->mBreadCrumbTitleRes:I

    iput v0, p0, Lcom/oneplus/support/core/fragment/app/BackStackState;->mBreadCrumbTitleRes:I

    iget-object v0, p1, Lcom/oneplus/support/core/fragment/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/oneplus/support/core/fragment/app/BackStackState;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    iget v0, p1, Lcom/oneplus/support/core/fragment/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    iput v0, p0, Lcom/oneplus/support/core/fragment/app/BackStackState;->mBreadCrumbShortTitleRes:I

    iget-object v0, p1, Lcom/oneplus/support/core/fragment/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/oneplus/support/core/fragment/app/BackStackState;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    iget-object v0, p1, Lcom/oneplus/support/core/fragment/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/oneplus/support/core/fragment/app/BackStackState;->mSharedElementSourceNames:Ljava/util/ArrayList;

    iget-object v0, p1, Lcom/oneplus/support/core/fragment/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/oneplus/support/core/fragment/app/BackStackState;->mSharedElementTargetNames:Ljava/util/ArrayList;

    iget-boolean p1, p1, Lcom/oneplus/support/core/fragment/app/BackStackRecord;->mReorderingAllowed:Z

    iput-boolean p1, p0, Lcom/oneplus/support/core/fragment/app/BackStackState;->mReorderingAllowed:Z

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Not on back stack"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public instantiate(Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;)Lcom/oneplus/support/core/fragment/app/BackStackRecord;
    .locals 5

    new-instance v0, Lcom/oneplus/support/core/fragment/app/BackStackRecord;

    invoke-direct {v0, p1}, Lcom/oneplus/support/core/fragment/app/BackStackRecord;-><init>(Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;)V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/oneplus/support/core/fragment/app/BackStackState;->mOps:[I

    array-length v2, v2

    if-ge v1, v2, :cond_1

    new-instance v2, Lcom/oneplus/support/core/fragment/app/BackStackRecord$Op;

    invoke-direct {v2}, Lcom/oneplus/support/core/fragment/app/BackStackRecord$Op;-><init>()V

    iget-object v3, p0, Lcom/oneplus/support/core/fragment/app/BackStackState;->mOps:[I

    add-int/lit8 v4, v1, 0x1

    aget v1, v3, v1

    iput v1, v2, Lcom/oneplus/support/core/fragment/app/BackStackRecord$Op;->cmd:I

    add-int/lit8 v1, v4, 0x1

    aget v3, v3, v4

    if-ltz v3, :cond_0

    iget-object v4, p1, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/support/core/fragment/app/Fragment;

    iput-object v3, v2, Lcom/oneplus/support/core/fragment/app/BackStackRecord$Op;->fragment:Lcom/oneplus/support/core/fragment/app/Fragment;

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    iput-object v3, v2, Lcom/oneplus/support/core/fragment/app/BackStackRecord$Op;->fragment:Lcom/oneplus/support/core/fragment/app/Fragment;

    :goto_1
    iget-object v3, p0, Lcom/oneplus/support/core/fragment/app/BackStackState;->mOps:[I

    add-int/lit8 v4, v1, 0x1

    aget v1, v3, v1

    iput v1, v2, Lcom/oneplus/support/core/fragment/app/BackStackRecord$Op;->enterAnim:I

    add-int/lit8 v1, v4, 0x1

    aget v4, v3, v4

    iput v4, v2, Lcom/oneplus/support/core/fragment/app/BackStackRecord$Op;->exitAnim:I

    add-int/lit8 v4, v1, 0x1

    aget v1, v3, v1

    iput v1, v2, Lcom/oneplus/support/core/fragment/app/BackStackRecord$Op;->popEnterAnim:I

    add-int/lit8 v1, v4, 0x1

    aget v3, v3, v4

    iput v3, v2, Lcom/oneplus/support/core/fragment/app/BackStackRecord$Op;->popExitAnim:I

    iget v3, v2, Lcom/oneplus/support/core/fragment/app/BackStackRecord$Op;->enterAnim:I

    iput v3, v0, Lcom/oneplus/support/core/fragment/app/BackStackRecord;->mEnterAnim:I

    iget v3, v2, Lcom/oneplus/support/core/fragment/app/BackStackRecord$Op;->exitAnim:I

    iput v3, v0, Lcom/oneplus/support/core/fragment/app/BackStackRecord;->mExitAnim:I

    iget v3, v2, Lcom/oneplus/support/core/fragment/app/BackStackRecord$Op;->popEnterAnim:I

    iput v3, v0, Lcom/oneplus/support/core/fragment/app/BackStackRecord;->mPopEnterAnim:I

    iget v3, v2, Lcom/oneplus/support/core/fragment/app/BackStackRecord$Op;->popExitAnim:I

    iput v3, v0, Lcom/oneplus/support/core/fragment/app/BackStackRecord;->mPopExitAnim:I

    invoke-virtual {v0, v2}, Lcom/oneplus/support/core/fragment/app/BackStackRecord;->addOp(Lcom/oneplus/support/core/fragment/app/BackStackRecord$Op;)V

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/oneplus/support/core/fragment/app/BackStackState;->mTransition:I

    iput p1, v0, Lcom/oneplus/support/core/fragment/app/BackStackRecord;->mTransition:I

    iget p1, p0, Lcom/oneplus/support/core/fragment/app/BackStackState;->mTransitionStyle:I

    iput p1, v0, Lcom/oneplus/support/core/fragment/app/BackStackRecord;->mTransitionStyle:I

    iget-object p1, p0, Lcom/oneplus/support/core/fragment/app/BackStackState;->mName:Ljava/lang/String;

    iput-object p1, v0, Lcom/oneplus/support/core/fragment/app/BackStackRecord;->mName:Ljava/lang/String;

    iget p1, p0, Lcom/oneplus/support/core/fragment/app/BackStackState;->mIndex:I

    iput p1, v0, Lcom/oneplus/support/core/fragment/app/BackStackRecord;->mIndex:I

    const/4 p1, 0x1

    iput-boolean p1, v0, Lcom/oneplus/support/core/fragment/app/BackStackRecord;->mAddToBackStack:Z

    iget v1, p0, Lcom/oneplus/support/core/fragment/app/BackStackState;->mBreadCrumbTitleRes:I

    iput v1, v0, Lcom/oneplus/support/core/fragment/app/BackStackRecord;->mBreadCrumbTitleRes:I

    iget-object v1, p0, Lcom/oneplus/support/core/fragment/app/BackStackState;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    iput-object v1, v0, Lcom/oneplus/support/core/fragment/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    iget v1, p0, Lcom/oneplus/support/core/fragment/app/BackStackState;->mBreadCrumbShortTitleRes:I

    iput v1, v0, Lcom/oneplus/support/core/fragment/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    iget-object v1, p0, Lcom/oneplus/support/core/fragment/app/BackStackState;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    iput-object v1, v0, Lcom/oneplus/support/core/fragment/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/oneplus/support/core/fragment/app/BackStackState;->mSharedElementSourceNames:Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/oneplus/support/core/fragment/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/oneplus/support/core/fragment/app/BackStackState;->mSharedElementTargetNames:Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/oneplus/support/core/fragment/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    iget-boolean p0, p0, Lcom/oneplus/support/core/fragment/app/BackStackState;->mReorderingAllowed:Z

    iput-boolean p0, v0, Lcom/oneplus/support/core/fragment/app/BackStackRecord;->mReorderingAllowed:Z

    invoke-virtual {v0, p1}, Lcom/oneplus/support/core/fragment/app/BackStackRecord;->bumpBackStackNesting(I)V

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object p2, p0, Lcom/oneplus/support/core/fragment/app/BackStackState;->mOps:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    iget p2, p0, Lcom/oneplus/support/core/fragment/app/BackStackState;->mTransition:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/oneplus/support/core/fragment/app/BackStackState;->mTransitionStyle:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/oneplus/support/core/fragment/app/BackStackState;->mName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/oneplus/support/core/fragment/app/BackStackState;->mIndex:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/oneplus/support/core/fragment/app/BackStackState;->mBreadCrumbTitleRes:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/oneplus/support/core/fragment/app/BackStackState;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    iget p2, p0, Lcom/oneplus/support/core/fragment/app/BackStackState;->mBreadCrumbShortTitleRes:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/oneplus/support/core/fragment/app/BackStackState;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    invoke-static {p2, p1, v0}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    iget-object p2, p0, Lcom/oneplus/support/core/fragment/app/BackStackState;->mSharedElementSourceNames:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object p2, p0, Lcom/oneplus/support/core/fragment/app/BackStackState;->mSharedElementTargetNames:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-boolean p0, p0, Lcom/oneplus/support/core/fragment/app/BackStackState;->mReorderingAllowed:Z

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
