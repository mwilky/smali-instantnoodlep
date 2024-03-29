.class public Lcom/android/settings/widget/TwoStateButtonPreference;
.super Lcom/android/settingslib/widget/LayoutPreference;
.source "TwoStateButtonPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final mButtonOff:Lcom/oneplus/lib/widget/button/OPButton;

.field private final mButtonOn:Lcom/oneplus/lib/widget/button/OPButton;

.field private mIsChecked:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const v0, 0x7f04050a

    const v1, 0x101008e

    invoke-static {p1, v0, v1}, Landroidx/core/content/res/ColorStateListInflaterCompat;->getAttr(Landroid/content/Context;II)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settingslib/widget/LayoutPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    if-nez p2, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/settings/widget/TwoStateButtonPreference;->mButtonOn:Lcom/oneplus/lib/widget/button/OPButton;

    iput-object p1, p0, Lcom/android/settings/widget/TwoStateButtonPreference;->mButtonOff:Lcom/oneplus/lib/widget/button/OPButton;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/settings/R$styleable;->TwoStateButtonPreference:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x1

    const v0, 0x7f121638

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    const p1, 0x7f0a06a5

    invoke-virtual {p0, p1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/oneplus/lib/widget/button/OPButton;

    iput-object p1, p0, Lcom/android/settings/widget/TwoStateButtonPreference;->mButtonOn:Lcom/oneplus/lib/widget/button/OPButton;

    iget-object p1, p0, Lcom/android/settings/widget/TwoStateButtonPreference;->mButtonOn:Lcom/oneplus/lib/widget/button/OPButton;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Lcom/android/settings/widget/TwoStateButtonPreference;->mButtonOn:Lcom/oneplus/lib/widget/button/OPButton;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a06a4

    invoke-virtual {p0, p1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/oneplus/lib/widget/button/OPButton;

    iput-object p1, p0, Lcom/android/settings/widget/TwoStateButtonPreference;->mButtonOff:Lcom/oneplus/lib/widget/button/OPButton;

    iget-object p1, p0, Lcom/android/settings/widget/TwoStateButtonPreference;->mButtonOff:Lcom/oneplus/lib/widget/button/OPButton;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Lcom/android/settings/widget/TwoStateButtonPreference;->mButtonOff:Lcom/oneplus/lib/widget/button/OPButton;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/android/settings/widget/TwoStateButtonPreference;->isChecked()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/TwoStateButtonPreference;->setChecked(Z)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getStateOffButton()Lcom/oneplus/lib/widget/button/OPButton;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/widget/TwoStateButtonPreference;->mButtonOff:Lcom/oneplus/lib/widget/button/OPButton;

    return-object p0
.end method

.method public getStateOnButton()Lcom/oneplus/lib/widget/button/OPButton;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/widget/TwoStateButtonPreference;->mButtonOn:Lcom/oneplus/lib/widget/button/OPButton;

    return-object p0
.end method

.method public isChecked()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/settings/widget/TwoStateButtonPreference;->mIsChecked:Z

    return p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a06a5

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/TwoStateButtonPreference;->setChecked(Z)V

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    return-void
.end method

.method public setButtonEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/widget/TwoStateButtonPreference;->mButtonOn:Lcom/oneplus/lib/widget/button/OPButton;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object p0, p0, Lcom/android/settings/widget/TwoStateButtonPreference;->mButtonOff:Lcom/oneplus/lib/widget/button/OPButton;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method public setChecked(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/android/settings/widget/TwoStateButtonPreference;->mIsChecked:Z

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/widget/TwoStateButtonPreference;->mButtonOn:Lcom/oneplus/lib/widget/button/OPButton;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/settings/widget/TwoStateButtonPreference;->mButtonOff:Lcom/oneplus/lib/widget/button/OPButton;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/settings/widget/TwoStateButtonPreference;->mButtonOn:Lcom/oneplus/lib/widget/button/OPButton;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/settings/widget/TwoStateButtonPreference;->mButtonOff:Lcom/oneplus/lib/widget/button/OPButton;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method
