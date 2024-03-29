.class public Lcom/android/settings/widget/AddPreference;
.super Lcom/android/settingslib/RestrictedPreference;
.source "AddPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/widget/AddPreference$OnAddClickListener;
    }
.end annotation


# instance fields
.field private mAddWidget:Landroid/view/View;

.field private mListener:Lcom/android/settings/widget/AddPreference$OnAddClickListener;

.field private mWidgetFrame:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/RestrictedPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method getAddWidgetResId()I
    .locals 0

    const p0, 0x7f0a006d

    return p0
.end method

.method protected getSecondTargetResId()I
    .locals 0

    const p0, 0x7f0d029e

    return p0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settingslib/RestrictedPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x1020018

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/widget/AddPreference;->mWidgetFrame:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/settings/widget/AddPreference;->getAddWidgetResId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/widget/AddPreference;->mAddWidget:Landroid/view/View;

    iget-object p1, p0, Lcom/android/settings/widget/AddPreference;->mAddWidget:Landroid/view/View;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    iget-object p1, p0, Lcom/android/settings/widget/AddPreference;->mAddWidget:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-virtual {p0}, Lcom/android/settings/widget/AddPreference;->getAddWidgetResId()I

    move-result v0

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/android/settings/widget/AddPreference;->mListener:Lcom/android/settings/widget/AddPreference$OnAddClickListener;

    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Lcom/android/settings/widget/AddPreference$OnAddClickListener;->onAddClick(Lcom/android/settings/widget/AddPreference;)V

    :cond_0
    return-void
.end method

.method public setAddWidgetEnabled(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/widget/AddPreference;->mAddWidget:Landroid/view/View;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setOnAddClickListener(Lcom/android/settings/widget/AddPreference$OnAddClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/widget/AddPreference;->mListener:Lcom/android/settings/widget/AddPreference$OnAddClickListener;

    iget-object p1, p0, Lcom/android/settings/widget/AddPreference;->mWidgetFrame:Landroid/view/View;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/widget/AddPreference;->shouldHideSecondTarget()Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x8

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method protected shouldHideSecondTarget()Z
    .locals 0

    iget-object p0, p0, Lcom/android/settings/widget/AddPreference;->mListener:Lcom/android/settings/widget/AddPreference$OnAddClickListener;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
