.class public Lcom/oneplus/settings/opfinger/OPFingerPrintEditCategory;
.super Landroidx/preference/Preference;
.source "OPFingerPrintEditCategory.java"


# instance fields
.field private mFingerprintName:Ljava/lang/CharSequence;

.field private mFingerprintNameView:Landroid/widget/TextView;

.field private mLayoutResId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p1, 0x7f0d01ba

    iput p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditCategory;->mLayoutResId:I

    iget p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditCategory;->mLayoutResId:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p1, 0x7f0d01ba

    iput p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditCategory;->mLayoutResId:I

    iget p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditCategory;->mLayoutResId:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const p1, 0x7f0d01ba

    iput p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditCategory;->mLayoutResId:I

    iget p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditCategory;->mLayoutResId:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x7f0a04ca

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditCategory;->mFingerprintNameView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditCategory;->mFingerprintNameView:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditCategory;->mFingerprintName:Ljava/lang/CharSequence;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceViewHolder;->setDividerAllowedBelow(Z)V

    return-void
.end method

.method public setFingerprintName(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditCategory;->mFingerprintName:Ljava/lang/CharSequence;

    iget-object p0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditCategory;->mFingerprintNameView:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
