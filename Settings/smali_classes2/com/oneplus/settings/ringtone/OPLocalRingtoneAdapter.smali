.class public Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter;
.super Landroid/widget/BaseAdapter;
.source "OPLocalRingtoneAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter$RingtoneData;,
        Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter$HoldView;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mData:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter;->mData:Ljava/util/List;

    iput-object p1, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter;->mData:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter;->mData:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter;->mData:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getItemId(I)J
    .locals 0

    int-to-long p0, p1

    return-wide p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    if-nez p2, :cond_0

    new-instance p2, Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter$HoldView;

    invoke-direct {p2}, Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter$HoldView;-><init>()V

    iget-object p3, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter;->mContext:Landroid/content/Context;

    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    const v0, 0x7f0d01ee

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    const v0, 0x1020016

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter$HoldView;->mTitle:Landroid/widget/TextView;

    const v0, 0x7f0a0311

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/widget/button/OPRadioButton;

    iput-object v0, p2, Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter$HoldView;->button:Lcom/oneplus/lib/widget/button/OPRadioButton;

    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter$HoldView;

    move-object v2, p3

    move-object p3, p2

    move-object p2, v2

    :goto_0
    iget-object p0, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter;->mData:Ljava/util/List;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter$RingtoneData;

    if-eqz p0, :cond_1

    iget-object p1, p2, Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter$HoldView;->mTitle:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter$RingtoneData;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p2, Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter$HoldView;->button:Lcom/oneplus/lib/widget/button/OPRadioButton;

    iget-boolean p0, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter$RingtoneData;->isCheck:Z

    invoke-virtual {p1, p0}, Lcom/oneplus/lib/widget/button/OPCompoundButton;->setChecked(Z)V

    :cond_1
    return-object p3
.end method
