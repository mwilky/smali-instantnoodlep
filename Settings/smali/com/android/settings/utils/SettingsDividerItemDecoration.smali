.class public Lcom/android/settings/utils/SettingsDividerItemDecoration;
.super Lcom/google/android/setupdesign/DividerItemDecoration;
.source "SettingsDividerItemDecoration.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/setupdesign/DividerItemDecoration;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected isDividerAllowedAbove(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    instance-of p0, p1, Landroidx/preference/PreferenceViewHolder;

    if-eqz p0, :cond_0

    check-cast p1, Landroidx/preference/PreferenceViewHolder;

    invoke-virtual {p1}, Landroidx/preference/PreferenceViewHolder;->isDividerAllowedAbove()Z

    move-result p0

    return p0

    :cond_0
    instance-of p0, p1, Lcom/google/android/setupdesign/DividerItemDecoration$DividedViewHolder;

    if-eqz p0, :cond_2

    check-cast p1, Lcom/google/android/setupdesign/DividerItemDecoration$DividedViewHolder;

    invoke-interface {p1}, Lcom/google/android/setupdesign/DividerItemDecoration$DividedViewHolder;->isDividerAllowedAbove()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method protected isDividerAllowedBelow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    instance-of p0, p1, Landroidx/preference/PreferenceViewHolder;

    if-eqz p0, :cond_0

    check-cast p1, Landroidx/preference/PreferenceViewHolder;

    invoke-virtual {p1}, Landroidx/preference/PreferenceViewHolder;->isDividerAllowedBelow()Z

    move-result p0

    return p0

    :cond_0
    instance-of p0, p1, Lcom/google/android/setupdesign/DividerItemDecoration$DividedViewHolder;

    if-eqz p0, :cond_2

    check-cast p1, Lcom/google/android/setupdesign/DividerItemDecoration$DividedViewHolder;

    invoke-interface {p1}, Lcom/google/android/setupdesign/DividerItemDecoration$DividedViewHolder;->isDividerAllowedBelow()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
