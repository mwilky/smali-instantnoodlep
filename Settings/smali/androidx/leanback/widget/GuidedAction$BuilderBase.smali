.class public abstract Landroidx/leanback/widget/GuidedAction$BuilderBase;
.super Ljava/lang/Object;
.source "GuidedAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/leanback/widget/GuidedAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "BuilderBase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Landroidx/leanback/widget/GuidedAction$BuilderBase;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mActionFlags:I

.field private mAutofillHints:[Ljava/lang/String;

.field private mCheckSetId:I

.field private mContext:Landroid/content/Context;

.field private mDescription:Ljava/lang/CharSequence;

.field private mDescriptionEditInputType:I

.field private mDescriptionInputType:I

.field private mEditDescription:Ljava/lang/CharSequence;

.field private mEditInputType:I

.field private mEditTitle:Ljava/lang/CharSequence;

.field private mEditable:I

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mId:J

.field private mInputType:I

.field private mSubActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/leanback/widget/GuidedAction;",
            ">;"
        }
    .end annotation
.end field

.field private mTitle:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/leanback/widget/GuidedAction$BuilderBase;->mEditable:I

    const v1, 0x80001

    iput v1, p0, Landroidx/leanback/widget/GuidedAction$BuilderBase;->mInputType:I

    iput v1, p0, Landroidx/leanback/widget/GuidedAction$BuilderBase;->mDescriptionInputType:I

    const/4 v1, 0x1

    iput v1, p0, Landroidx/leanback/widget/GuidedAction$BuilderBase;->mEditInputType:I

    iput v1, p0, Landroidx/leanback/widget/GuidedAction$BuilderBase;->mDescriptionEditInputType:I

    iput v0, p0, Landroidx/leanback/widget/GuidedAction$BuilderBase;->mCheckSetId:I

    iput-object p1, p0, Landroidx/leanback/widget/GuidedAction$BuilderBase;->mContext:Landroid/content/Context;

    const/16 p1, 0x70

    iput p1, p0, Landroidx/leanback/widget/GuidedAction$BuilderBase;->mActionFlags:I

    return-void
.end method


# virtual methods
.method protected final applyValues(Landroidx/leanback/widget/GuidedAction;)V
    .locals 2

    iget-wide v0, p0, Landroidx/leanback/widget/GuidedAction$BuilderBase;->mId:J

    invoke-virtual {p1, v0, v1}, Landroidx/leanback/widget/Action;->setId(J)V

    iget-object v0, p0, Landroidx/leanback/widget/GuidedAction$BuilderBase;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroidx/leanback/widget/Action;->setLabel1(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroidx/leanback/widget/GuidedAction$BuilderBase;->mEditTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroidx/leanback/widget/GuidedAction;->setEditTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroidx/leanback/widget/GuidedAction$BuilderBase;->mDescription:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroidx/leanback/widget/Action;->setLabel2(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroidx/leanback/widget/GuidedAction$BuilderBase;->mEditDescription:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroidx/leanback/widget/GuidedAction;->setEditDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroidx/leanback/widget/GuidedAction$BuilderBase;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroidx/leanback/widget/Action;->setIcon(Landroid/graphics/drawable/Drawable;)V

    iget v0, p0, Landroidx/leanback/widget/GuidedAction$BuilderBase;->mEditable:I

    iput v0, p1, Landroidx/leanback/widget/GuidedAction;->mEditable:I

    iget v0, p0, Landroidx/leanback/widget/GuidedAction$BuilderBase;->mInputType:I

    iput v0, p1, Landroidx/leanback/widget/GuidedAction;->mInputType:I

    iget v0, p0, Landroidx/leanback/widget/GuidedAction$BuilderBase;->mDescriptionInputType:I

    iput v0, p1, Landroidx/leanback/widget/GuidedAction;->mDescriptionInputType:I

    iget-object v0, p0, Landroidx/leanback/widget/GuidedAction$BuilderBase;->mAutofillHints:[Ljava/lang/String;

    iput-object v0, p1, Landroidx/leanback/widget/GuidedAction;->mAutofillHints:[Ljava/lang/String;

    iget v0, p0, Landroidx/leanback/widget/GuidedAction$BuilderBase;->mEditInputType:I

    iput v0, p1, Landroidx/leanback/widget/GuidedAction;->mEditInputType:I

    iget v0, p0, Landroidx/leanback/widget/GuidedAction$BuilderBase;->mDescriptionEditInputType:I

    iput v0, p1, Landroidx/leanback/widget/GuidedAction;->mDescriptionEditInputType:I

    iget v0, p0, Landroidx/leanback/widget/GuidedAction$BuilderBase;->mActionFlags:I

    iput v0, p1, Landroidx/leanback/widget/GuidedAction;->mActionFlags:I

    iget v0, p0, Landroidx/leanback/widget/GuidedAction$BuilderBase;->mCheckSetId:I

    iput v0, p1, Landroidx/leanback/widget/GuidedAction;->mCheckSetId:I

    iget-object p0, p0, Landroidx/leanback/widget/GuidedAction$BuilderBase;->mSubActions:Ljava/util/List;

    iput-object p0, p1, Landroidx/leanback/widget/GuidedAction;->mSubActions:Ljava/util/List;

    return-void
.end method

.method public clickAction(J)Landroidx/leanback/widget/GuidedAction$BuilderBase;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TB;"
        }
    .end annotation

    const-wide/16 v0, -0x4

    cmp-long v2, p1, v0

    const v3, 0x104000a

    if-nez v2, :cond_0

    iput-wide v0, p0, Landroidx/leanback/widget/GuidedAction$BuilderBase;->mId:J

    iget-object p1, p0, Landroidx/leanback/widget/GuidedAction$BuilderBase;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/leanback/widget/GuidedAction$BuilderBase;->mTitle:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x5

    cmp-long v2, p1, v0

    const/high16 v4, 0x1040000

    if-nez v2, :cond_1

    iput-wide v0, p0, Landroidx/leanback/widget/GuidedAction$BuilderBase;->mId:J

    iget-object p1, p0, Landroidx/leanback/widget/GuidedAction$BuilderBase;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/leanback/widget/GuidedAction$BuilderBase;->mTitle:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_1
    const-wide/16 v0, -0x6

    cmp-long v2, p1, v0

    if-nez v2, :cond_2

    iput-wide v0, p0, Landroidx/leanback/widget/GuidedAction$BuilderBase;->mId:J

    iget-object p1, p0, Landroidx/leanback/widget/GuidedAction$BuilderBase;->mContext:Landroid/content/Context;

    const p2, 0x7f12091e

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/leanback/widget/GuidedAction$BuilderBase;->mTitle:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_2
    const-wide/16 v0, -0x7

    cmp-long v2, p1, v0

    if-nez v2, :cond_3

    iput-wide v0, p0, Landroidx/leanback/widget/GuidedAction$BuilderBase;->mId:J

    iget-object p1, p0, Landroidx/leanback/widget/GuidedAction$BuilderBase;->mContext:Landroid/content/Context;

    const p2, 0x7f12091d

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/leanback/widget/GuidedAction$BuilderBase;->mTitle:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_3
    const-wide/16 v0, -0x8

    cmp-long v2, p1, v0

    if-nez v2, :cond_4

    iput-wide v0, p0, Landroidx/leanback/widget/GuidedAction$BuilderBase;->mId:J

    iget-object p1, p0, Landroidx/leanback/widget/GuidedAction$BuilderBase;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/leanback/widget/GuidedAction$BuilderBase;->mTitle:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_4
    const-wide/16 v0, -0x9

    cmp-long p1, p1, v0

    if-nez p1, :cond_5

    iput-wide v0, p0, Landroidx/leanback/widget/GuidedAction$BuilderBase;->mId:J

    iget-object p1, p0, Landroidx/leanback/widget/GuidedAction$BuilderBase;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/leanback/widget/GuidedAction$BuilderBase;->mTitle:Ljava/lang/CharSequence;

    :cond_5
    :goto_0
    return-object p0
.end method
