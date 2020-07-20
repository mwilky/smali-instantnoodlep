.class public Lcom/android/settings/accounts/AccountPreference;
.super Landroidx/preference/Preference;
.source "AccountPreference.java"


# instance fields
.field private mShowTypeIcon:Z

.field private mStatus:I

.field private mSyncStatusIcon:Landroid/widget/ImageView;


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 7

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    iget-boolean v0, p0, Lcom/android/settings/accounts/AccountPreference;->mShowTypeIcon:Z

    if-nez v0, :cond_7

    const v0, 0x1020006

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/settings/accounts/AccountPreference;->mSyncStatusIcon:Landroid/widget/ImageView;

    iget-object p1, p0, Lcom/android/settings/accounts/AccountPreference;->mSyncStatusIcon:Landroid/widget/ImageView;

    iget v0, p0, Lcom/android/settings/accounts/AccountPreference;->mStatus:I

    const v1, 0x7f08038b

    const-string v2, "AccountPreference"

    const-string v3, "Unknown sync status: "

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v0, :cond_1

    if-eq v0, v6, :cond_0

    if-eq v0, v5, :cond_2

    if-eq v0, v4, :cond_1

    invoke-static {v3, v0, v2}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline32(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    const v1, 0x7f080389

    goto :goto_0

    :cond_1
    const v1, 0x7f080368

    :cond_2
    :goto_0
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, p0, Lcom/android/settings/accounts/AccountPreference;->mSyncStatusIcon:Landroid/widget/ImageView;

    iget v0, p0, Lcom/android/settings/accounts/AccountPreference;->mStatus:I

    if-eqz v0, :cond_6

    if-eq v0, v6, :cond_5

    const v1, 0x7f120095

    if-eq v0, v5, :cond_4

    if-eq v0, v4, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x7f120096

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x7f120093

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x7f120094

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_1
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_7
    return-void
.end method
