.class public Lcom/android/settings/notification/ZenCustomRadioButtonPreference;
.super Lcom/android/settingslib/TwoTargetPreference;
.source "ZenCustomRadioButtonPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/ZenCustomRadioButtonPreference$OnRadioButtonClickListener;,
        Lcom/android/settings/notification/ZenCustomRadioButtonPreference$OnGearClickListener;
    }
.end annotation


# instance fields
.field private mButton:Landroid/widget/RadioButton;

.field private mChecked:Z

.field private mOnGearClickListener:Lcom/android/settings/notification/ZenCustomRadioButtonPreference$OnGearClickListener;

.field private mOnRadioButtonClickListener:Lcom/android/settings/notification/ZenCustomRadioButtonPreference$OnRadioButtonClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingslib/TwoTargetPreference;-><init>(Landroid/content/Context;)V

    const p1, 0x7f0d021f

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/TwoTargetPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p1, 0x7f0d021f

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settingslib/TwoTargetPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p1, 0x7f0d021f

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settingslib/TwoTargetPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const p1, 0x7f0d021f

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
    .locals 3

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

    iput-object v0, p0, Lcom/android/settings/notification/ZenCustomRadioButtonPreference;->mButton:Landroid/widget/RadioButton;

    iget-object v0, p0, Lcom/android/settings/notification/ZenCustomRadioButtonPreference;->mButton:Landroid/widget/RadioButton;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/android/settings/notification/ZenCustomRadioButtonPreference;->mChecked:Z

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_1
    const v0, 0x7f0a0579

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a077a

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object v1, p0, Lcom/android/settings/notification/ZenCustomRadioButtonPreference;->mOnGearClickListener:Lcom/android/settings/notification/ZenCustomRadioButtonPreference$OnGearClickListener;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_2
    const/16 p0, 0x8

    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void
.end method

.method public onClick()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/ZenCustomRadioButtonPreference;->mOnRadioButtonClickListener:Lcom/android/settings/notification/ZenCustomRadioButtonPreference$OnRadioButtonClickListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/android/settings/notification/ZenCustomRadioButtonPreference$OnRadioButtonClickListener;->onRadioButtonClick(Lcom/android/settings/notification/ZenCustomRadioButtonPreference;)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a0579

    if-ne v0, v1, :cond_0

    iget-object p1, p0, Lcom/android/settings/notification/ZenCustomRadioButtonPreference;->mOnGearClickListener:Lcom/android/settings/notification/ZenCustomRadioButtonPreference$OnGearClickListener;

    if-eqz p1, :cond_1

    invoke-interface {p1, p0}, Lcom/android/settings/notification/ZenCustomRadioButtonPreference$OnGearClickListener;->onGearClick(Lcom/android/settings/notification/ZenCustomRadioButtonPreference;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a014b

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/android/settings/notification/ZenCustomRadioButtonPreference;->mOnRadioButtonClickListener:Lcom/android/settings/notification/ZenCustomRadioButtonPreference$OnRadioButtonClickListener;

    if-eqz p1, :cond_1

    invoke-interface {p1, p0}, Lcom/android/settings/notification/ZenCustomRadioButtonPreference$OnRadioButtonClickListener;->onRadioButtonClick(Lcom/android/settings/notification/ZenCustomRadioButtonPreference;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setChecked(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/notification/ZenCustomRadioButtonPreference;->mChecked:Z

    iget-object p0, p0, Lcom/android/settings/notification/ZenCustomRadioButtonPreference;->mButton:Landroid/widget/RadioButton;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public setOnGearClickListener(Lcom/android/settings/notification/ZenCustomRadioButtonPreference$OnGearClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/notification/ZenCustomRadioButtonPreference;->mOnGearClickListener:Lcom/android/settings/notification/ZenCustomRadioButtonPreference$OnGearClickListener;

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public setOnRadioButtonClickListener(Lcom/android/settings/notification/ZenCustomRadioButtonPreference$OnRadioButtonClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/notification/ZenCustomRadioButtonPreference;->mOnRadioButtonClickListener:Lcom/android/settings/notification/ZenCustomRadioButtonPreference$OnRadioButtonClickListener;

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method
