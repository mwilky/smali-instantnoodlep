.class public abstract Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ViewHolder"
.end annotation


# static fields
.field private static final FULLUPDATE_PAYLOADS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final itemView:Landroid/view/View;

.field private mFlags:I

.field private mIsRecyclableCount:I

.field mItemId:J

.field mItemViewType:I

.field mOldPosition:I

.field mOwnerRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

.field mPayloads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field mPosition:I

.field mPreLayoutPosition:I

.field private mScrapContainer:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;

.field mShadowedHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

.field mShadowingHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

.field mUnmodifiedPayloads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mWasImportantForAccessibilityBeforeHidden:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    sput-object v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->FULLUPDATE_PAYLOADS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mPosition:I

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mOldPosition:I

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mItemId:J

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mItemViewType:I

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mShadowedHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mShadowingHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mPayloads:Ljava/util/List;

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mUnmodifiedPayloads:Ljava/util/List;

    const/4 v1, 0x0

    iput v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mIsRecyclableCount:I

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mScrapContainer:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;

    iput v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mWasImportantForAccessibilityBeforeHidden:I

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "itemView may not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic access$1000(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mWasImportantForAccessibilityBeforeHidden:I

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mWasImportantForAccessibilityBeforeHidden:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mWasImportantForAccessibilityBeforeHidden:I

    return-void
.end method

.method static synthetic access$4100(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)Z
    .locals 1

    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->hasTransientState()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic access$4202(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mScrapContainer:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;

    return-object p1
.end method

.method static synthetic access$5400(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)Z
    .locals 0

    iget p0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic access$5500(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)I
    .locals 0

    iget p0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mFlags:I

    return p0
.end method


# virtual methods
.method addChangePayload(Ljava/lang/Object;)V
    .locals 2

    const/16 v0, 0x400

    if-nez p1, :cond_0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->addFlags(I)V

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mFlags:I

    and-int/2addr v0, v1

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mPayloads:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mPayloads:Ljava/util/List;

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mPayloads:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mUnmodifiedPayloads:Ljava/util/List;

    :cond_1
    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mPayloads:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method addFlags(I)V
    .locals 1

    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mFlags:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mFlags:I

    return-void
.end method

.method clearOldPosition()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mOldPosition:I

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    return-void
.end method

.method clearPayload()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mPayloads:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mFlags:I

    return-void
.end method

.method clearReturnedFromScrapFlag()V
    .locals 1

    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mFlags:I

    return-void
.end method

.method clearTmpDetachFlag()V
    .locals 1

    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mFlags:I

    return-void
.end method

.method public final getLayoutPosition()I
    .locals 2

    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mPosition:I

    :cond_0
    return v0
.end method

.method getUnmodifiedPayloads()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit16 v0, v0, 0x400

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mPayloads:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mUnmodifiedPayloads:Ljava/util/List;

    return-object p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->FULLUPDATE_PAYLOADS:Ljava/util/List;

    return-object p0

    :cond_2
    sget-object p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->FULLUPDATE_PAYLOADS:Ljava/util/List;

    return-object p0
.end method

.method hasAnyOfTheFlags(I)Z
    .locals 0

    iget p0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mFlags:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method isBound()Z
    .locals 1

    iget p0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mFlags:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isChanged()Z
    .locals 0

    iget p0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 p0, p0, 0x40

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method isInvalid()Z
    .locals 0

    iget p0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isRecyclable()Z
    .locals 1

    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->hasTransientState()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method isRemoved()Z
    .locals 0

    iget p0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method isScrap()Z
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mScrapContainer:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method isTmpDetached()Z
    .locals 0

    iget p0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit16 p0, p0, 0x100

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method needsUpdate()Z
    .locals 0

    iget p0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method offsetPosition(IZ)V
    .locals 2

    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mOldPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mPosition:I

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mOldPosition:I

    :cond_0
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mPosition:I

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    :cond_1
    if-eqz p2, :cond_2

    iget p2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    :cond_2
    iget p2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mPosition:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mPosition:I

    iget-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;->mInsetsDirty:Z

    :cond_3
    return-void
.end method

.method resetInternal()V
    .locals 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mFlags:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mPosition:I

    iput v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mOldPosition:I

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mItemId:J

    iput v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mIsRecyclableCount:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mShadowedHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    iput-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mShadowingHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->clearPayload()V

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mWasImportantForAccessibilityBeforeHidden:I

    return-void
.end method

.method setFlags(II)V
    .locals 2

    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mFlags:I

    not-int v1, p2

    and-int/2addr v0, v1

    and-int/2addr p1, p2

    or-int/2addr p1, v0

    iput p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mFlags:I

    return-void
.end method

.method public final setIsRecyclable(Z)V
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mIsRecyclableCount:I

    if-eqz p1, :cond_0

    sub-int/2addr v1, v0

    goto :goto_0

    :cond_0
    add-int/2addr v1, v0

    :goto_0
    iput v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mIsRecyclableCount:I

    iget v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mIsRecyclableCount:I

    if-gez v1, :cond_1

    const/4 p1, 0x0

    iput p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mIsRecyclableCount:I

    const-string p1, "isRecyclable decremented below 0: unmatched pair of setIsRecyable() calls for "

    const-string v0, "View"

    invoke-static {p1, p0, v0}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline36(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    if-nez p1, :cond_2

    if-ne v1, v0, :cond_2

    iget p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mFlags:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mFlags:I

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    iget p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mIsRecyclableCount:I

    if-nez p1, :cond_3

    iget p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 p1, p1, -0x11

    iput p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mFlags:I

    :cond_3
    :goto_1
    return-void
.end method

.method setScrapContainer(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mScrapContainer:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;

    return-void
.end method

.method shouldIgnore()Z
    .locals 0

    iget p0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit16 p0, p0, 0x80

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ViewHolder{"

    invoke-static {v1}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline23(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mItemId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", oldPos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mOldPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", pLpos:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->isScrap()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, " scrap"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, " invalid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->isBound()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, " unbound"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->needsUpdate()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, " update"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, " removed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, " ignored"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->isChanged()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, " changed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, " tmpDetached"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->isRecyclable()Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, " not recyclable("

    invoke-static {v1}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline23(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mIsRecyclableCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    iget v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit16 v1, v1, 0x200

    if-nez v1, :cond_a

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_0

    :cond_9
    const/4 v1, 0x0

    goto :goto_1

    :cond_a
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_b

    const-string v1, "undefined adapter position"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    if-nez p0, :cond_c

    const-string p0, " no parent"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method unScrap()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mScrapContainer:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;

    invoke-virtual {v0, p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->unscrapView(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    return-void
.end method

.method wasReturnedFromScrap()Z
    .locals 0

    iget p0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 p0, p0, 0x20

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
