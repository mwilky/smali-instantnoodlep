.class public Landroidx/leanback/widget/GuidedActionDiffCallback;
.super Landroidx/leanback/widget/DiffCallback;
.source "GuidedActionDiffCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/leanback/widget/DiffCallback<",
        "Landroidx/leanback/widget/GuidedAction;",
        ">;"
    }
.end annotation


# static fields
.field static final sInstance:Landroidx/leanback/widget/GuidedActionDiffCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/leanback/widget/GuidedActionDiffCallback;

    invoke-direct {v0}, Landroidx/leanback/widget/GuidedActionDiffCallback;-><init>()V

    sput-object v0, Landroidx/leanback/widget/GuidedActionDiffCallback;->sInstance:Landroidx/leanback/widget/GuidedActionDiffCallback;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/leanback/widget/DiffCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3

    check-cast p1, Landroidx/leanback/widget/GuidedAction;

    check-cast p2, Landroidx/leanback/widget/GuidedAction;

    const/4 p0, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    if-nez p2, :cond_2

    :goto_0
    move v0, p0

    goto :goto_1

    :cond_0
    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    iget v1, p1, Landroidx/leanback/widget/GuidedAction;->mCheckSetId:I

    iget v2, p2, Landroidx/leanback/widget/GuidedAction;->mCheckSetId:I

    if-ne v1, v2, :cond_2

    iget v1, p1, Landroidx/leanback/widget/GuidedAction;->mActionFlags:I

    iget v2, p2, Landroidx/leanback/widget/GuidedAction;->mActionFlags:I

    if-ne v1, v2, :cond_2

    invoke-virtual {p1}, Landroidx/leanback/widget/Action;->getLabel1()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p2}, Landroidx/leanback/widget/Action;->getLabel1()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroidx/leanback/widget/Action;->getLabel2()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p2}, Landroidx/leanback/widget/Action;->getLabel2()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p1, Landroidx/leanback/widget/GuidedAction;->mInputType:I

    iget v2, p2, Landroidx/leanback/widget/GuidedAction;->mInputType:I

    if-ne v1, v2, :cond_2

    invoke-virtual {p1}, Landroidx/leanback/widget/GuidedAction;->getEditTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p2}, Landroidx/leanback/widget/GuidedAction;->getEditTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroidx/leanback/widget/GuidedAction;->getEditDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p2}, Landroidx/leanback/widget/GuidedAction;->getEditDescription()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p1, Landroidx/leanback/widget/GuidedAction;->mEditInputType:I

    iget v2, p2, Landroidx/leanback/widget/GuidedAction;->mEditInputType:I

    if-ne v1, v2, :cond_2

    iget p1, p1, Landroidx/leanback/widget/GuidedAction;->mDescriptionEditInputType:I

    iget p2, p2, Landroidx/leanback/widget/GuidedAction;->mDescriptionEditInputType:I

    if-ne p1, p2, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method public areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3

    check-cast p1, Landroidx/leanback/widget/GuidedAction;

    check-cast p2, Landroidx/leanback/widget/GuidedAction;

    const/4 p0, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    if-nez p2, :cond_2

    :goto_0
    move v0, p0

    goto :goto_1

    :cond_0
    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroidx/leanback/widget/Action;->getId()J

    move-result-wide v1

    invoke-virtual {p2}, Landroidx/leanback/widget/Action;->getId()J

    move-result-wide p1

    cmp-long p1, v1, p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method
