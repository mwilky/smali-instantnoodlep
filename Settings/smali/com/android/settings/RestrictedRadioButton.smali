.class public Lcom/android/settings/RestrictedRadioButton;
.super Landroid/widget/RadioButton;
.source "RestrictedRadioButton.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDisabledByAdmin:Z

.field private mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    const v1, 0x101007e

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v1, v0}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object p1, p0, Lcom/android/settings/RestrictedRadioButton;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v0, 0x0

    const v1, 0x101007e

    invoke-direct {p0, p1, p2, v1, v0}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object p1, p0, Lcom/android/settings/RestrictedRadioButton;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object p1, p0, Lcom/android/settings/RestrictedRadioButton;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object p1, p0, Lcom/android/settings/RestrictedRadioButton;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public isDisabledByAdmin()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/settings/RestrictedRadioButton;->mDisabledByAdmin:Z

    return p0
.end method

.method public performClick()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/RestrictedRadioButton;->mDisabledByAdmin:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/RestrictedRadioButton;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/RestrictedRadioButton;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-static {v0, p0}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0}, Landroid/widget/RadioButton;->performClick()Z

    move-result p0

    return p0
.end method

.method public setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object p1, p0, Lcom/android/settings/RestrictedRadioButton;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    iget-boolean p1, p0, Lcom/android/settings/RestrictedRadioButton;->mDisabledByAdmin:Z

    if-eq p1, v0, :cond_2

    iput-boolean v0, p0, Lcom/android/settings/RestrictedRadioButton;->mDisabledByAdmin:Z

    iget-object p1, p0, Lcom/android/settings/RestrictedRadioButton;->mContext:Landroid/content/Context;

    iget-boolean v0, p0, Lcom/android/settings/RestrictedRadioButton;->mDisabledByAdmin:Z

    invoke-static {p1, p0, v0}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->setTextViewAsDisabledByAdmin(Landroid/content/Context;Landroid/widget/TextView;Z)V

    iget-boolean p1, p0, Lcom/android/settings/RestrictedRadioButton;->mDisabledByAdmin:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/widget/RadioButton;->getButtonDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/RestrictedRadioButton;->mContext:Landroid/content/Context;

    const v0, 0x7f06015f

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, p0, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/widget/RadioButton;->getButtonDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    :cond_2
    :goto_1
    return-void
.end method
