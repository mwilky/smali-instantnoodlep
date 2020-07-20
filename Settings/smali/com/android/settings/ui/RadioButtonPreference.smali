.class public Lcom/android/settings/ui/RadioButtonPreference;
.super Landroidx/preference/CheckBoxPreference;
.source "RadioButtonPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/ui/RadioButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v0, 0x0

    const v1, 0x7f0400a5

    invoke-direct {p0, p1, p2, v1, v0}, Landroidx/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/settings/ui/RadioButtonPreference;->mListener:Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;

    const p1, 0x7f0d02a7

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setWidgetLayoutResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/settings/ui/RadioButtonPreference;->mListener:Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;

    const p1, 0x7f0d02a7

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setWidgetLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/preference/CheckBoxPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceViewHolder;->setDividerAllowedBelow(Z)V

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceViewHolder;->setDividerAllowedAbove(Z)V

    const v0, 0x1020016

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setSingleLine(Z)V

    const/4 p0, 0x3

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setMaxLines(I)V

    :cond_0
    return-void
.end method

.method public onClick()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/ui/RadioButtonPreference;->mListener:Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;->onRadioButtonClicked(Lcom/android/settings/ui/RadioButtonPreference;)V

    :cond_0
    return-void
.end method

.method public setOnClickListener(Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/ui/RadioButtonPreference;->mListener:Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;

    return-void
.end method
