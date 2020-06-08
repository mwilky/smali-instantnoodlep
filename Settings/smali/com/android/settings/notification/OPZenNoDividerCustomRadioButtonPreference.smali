.class public Lcom/android/settings/notification/OPZenNoDividerCustomRadioButtonPreference;
.super Lcom/android/settingslib/TwoTargetPreference;
.source "OPZenNoDividerCustomRadioButtonPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/OPZenNoDividerCustomRadioButtonPreference$OnRadioButtonClickListener;
    }
.end annotation


# instance fields
.field private mButton:Landroid/widget/RadioButton;

.field private mChecked:Z

.field private mOnRadioButtonClickListener:Lcom/android/settings/notification/OPZenNoDividerCustomRadioButtonPreference$OnRadioButtonClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingslib/TwoTargetPreference;-><init>(Landroid/content/Context;)V

    const p1, 0x7f0d0219

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/TwoTargetPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p1, 0x7f0d0219

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settingslib/TwoTargetPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p1, 0x7f0d0219

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settingslib/TwoTargetPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const p1, 0x7f0d0219

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method protected getSecondTargetResId()I
    .locals 0

    const p0, 0x7f0d02a1

    return p0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settingslib/TwoTargetPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x7f0a014b

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const v0, 0x1020001

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/android/settings/notification/OPZenNoDividerCustomRadioButtonPreference;->mButton:Landroid/widget/RadioButton;

    iget-object v0, p0, Lcom/android/settings/notification/OPZenNoDividerCustomRadioButtonPreference;->mButton:Landroid/widget/RadioButton;

    if-eqz v0, :cond_1

    iget-boolean p0, p0, Lcom/android/settings/notification/OPZenNoDividerCustomRadioButtonPreference;->mChecked:Z

    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_1
    const p0, 0x7f0a0579

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    return-void
.end method

.method public onClick()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/OPZenNoDividerCustomRadioButtonPreference;->mOnRadioButtonClickListener:Lcom/android/settings/notification/OPZenNoDividerCustomRadioButtonPreference$OnRadioButtonClickListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/android/settings/notification/OPZenNoDividerCustomRadioButtonPreference$OnRadioButtonClickListener;->onRadioButtonClick(Lcom/android/settings/notification/OPZenNoDividerCustomRadioButtonPreference;)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x1020018

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a014b

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/android/settings/notification/OPZenNoDividerCustomRadioButtonPreference;->mOnRadioButtonClickListener:Lcom/android/settings/notification/OPZenNoDividerCustomRadioButtonPreference$OnRadioButtonClickListener;

    if-eqz p1, :cond_1

    invoke-interface {p1, p0}, Lcom/android/settings/notification/OPZenNoDividerCustomRadioButtonPreference$OnRadioButtonClickListener;->onRadioButtonClick(Lcom/android/settings/notification/OPZenNoDividerCustomRadioButtonPreference;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setChecked(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/notification/OPZenNoDividerCustomRadioButtonPreference;->mChecked:Z

    iget-object p0, p0, Lcom/android/settings/notification/OPZenNoDividerCustomRadioButtonPreference;->mButton:Landroid/widget/RadioButton;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public setOnRadioButtonClickListener(Lcom/android/settings/notification/OPZenNoDividerCustomRadioButtonPreference$OnRadioButtonClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/notification/OPZenNoDividerCustomRadioButtonPreference;->mOnRadioButtonClickListener:Lcom/android/settings/notification/OPZenNoDividerCustomRadioButtonPreference$OnRadioButtonClickListener;

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method
