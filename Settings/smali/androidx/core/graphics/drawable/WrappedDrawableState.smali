.class final Landroidx/core/graphics/drawable/WrappedDrawableState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "WrappedDrawableState.java"


# instance fields
.field mChangingConfigurations:I

.field mDrawableState:Landroid/graphics/drawable/Drawable$ConstantState;

.field mTint:Landroid/content/res/ColorStateList;

.field mTintMode:Landroid/graphics/PorterDuff$Mode;


# direct methods
.method constructor <init>(Landroidx/core/graphics/drawable/WrappedDrawableState;)V
    .locals 1

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/core/graphics/drawable/WrappedDrawableState;->mTint:Landroid/content/res/ColorStateList;

    sget-object v0, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->DEFAULT_TINT_MODE:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Landroidx/core/graphics/drawable/WrappedDrawableState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    if-eqz p1, :cond_0

    iget v0, p1, Landroidx/core/graphics/drawable/WrappedDrawableState;->mChangingConfigurations:I

    iput v0, p0, Landroidx/core/graphics/drawable/WrappedDrawableState;->mChangingConfigurations:I

    iget-object v0, p1, Landroidx/core/graphics/drawable/WrappedDrawableState;->mDrawableState:Landroid/graphics/drawable/Drawable$ConstantState;

    iput-object v0, p0, Landroidx/core/graphics/drawable/WrappedDrawableState;->mDrawableState:Landroid/graphics/drawable/Drawable$ConstantState;

    iget-object v0, p1, Landroidx/core/graphics/drawable/WrappedDrawableState;->mTint:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Landroidx/core/graphics/drawable/WrappedDrawableState;->mTint:Landroid/content/res/ColorStateList;

    iget-object p1, p1, Landroidx/core/graphics/drawable/WrappedDrawableState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    iput-object p1, p0, Landroidx/core/graphics/drawable/WrappedDrawableState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    :cond_0
    return-void
.end method


# virtual methods
.method public getChangingConfigurations()I
    .locals 1

    iget v0, p0, Landroidx/core/graphics/drawable/WrappedDrawableState;->mChangingConfigurations:I

    iget-object p0, p0, Landroidx/core/graphics/drawable/WrappedDrawableState;->mDrawableState:Landroid/graphics/drawable/Drawable$ConstantState;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable$ConstantState;->getChangingConfigurations()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    or-int/2addr p0, v0

    return p0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    new-instance v0, Landroidx/core/graphics/drawable/WrappedDrawableApi21;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/core/graphics/drawable/WrappedDrawableApi21;-><init>(Landroidx/core/graphics/drawable/WrappedDrawableState;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    new-instance v0, Landroidx/core/graphics/drawable/WrappedDrawableApi21;

    invoke-direct {v0, p0, p1}, Landroidx/core/graphics/drawable/WrappedDrawableApi21;-><init>(Landroidx/core/graphics/drawable/WrappedDrawableState;Landroid/content/res/Resources;)V

    return-object v0
.end method
