.class public final Lcom/oneplus/lib/widget/OPTabLayout$Tab;
.super Ljava/lang/Object;
.source "OPTabLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/OPTabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Tab"
.end annotation


# instance fields
.field private mContentDesc:Ljava/lang/CharSequence;

.field private mCustomView:Landroid/view/View;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private final mParent:Lcom/oneplus/lib/widget/OPTabLayout;

.field private mPosition:I

.field private mText:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/widget/OPTabLayout;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/lib/widget/OPTabLayout$Tab;->mPosition:I

    iput-object p1, p0, Lcom/oneplus/lib/widget/OPTabLayout$Tab;->mParent:Lcom/oneplus/lib/widget/OPTabLayout;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/lib/widget/OPTabLayout$Tab;)Lcom/oneplus/lib/widget/OPTabLayout;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/OPTabLayout$Tab;->mParent:Lcom/oneplus/lib/widget/OPTabLayout;

    return-object p0
.end method


# virtual methods
.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/OPTabLayout$Tab;->mContentDesc:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getCustomView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/OPTabLayout$Tab;->mCustomView:Landroid/view/View;

    return-object p0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/OPTabLayout$Tab;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getPosition()I
    .locals 0

    iget p0, p0, Lcom/oneplus/lib/widget/OPTabLayout$Tab;->mPosition:I

    return p0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/OPTabLayout$Tab;->mText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public select()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/OPTabLayout$Tab;->mParent:Lcom/oneplus/lib/widget/OPTabLayout;

    invoke-virtual {v0, p0}, Lcom/oneplus/lib/widget/OPTabLayout;->selectTab(Lcom/oneplus/lib/widget/OPTabLayout$Tab;)V

    return-void
.end method

.method setPosition(I)V
    .locals 0

    iput p1, p0, Lcom/oneplus/lib/widget/OPTabLayout$Tab;->mPosition:I

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)Lcom/oneplus/lib/widget/OPTabLayout$Tab;
    .locals 1

    iput-object p1, p0, Lcom/oneplus/lib/widget/OPTabLayout$Tab;->mText:Ljava/lang/CharSequence;

    iget p1, p0, Lcom/oneplus/lib/widget/OPTabLayout$Tab;->mPosition:I

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/OPTabLayout$Tab;->mParent:Lcom/oneplus/lib/widget/OPTabLayout;

    invoke-static {v0, p1}, Lcom/oneplus/lib/widget/OPTabLayout;->access$100(Lcom/oneplus/lib/widget/OPTabLayout;I)V

    :cond_0
    return-object p0
.end method
