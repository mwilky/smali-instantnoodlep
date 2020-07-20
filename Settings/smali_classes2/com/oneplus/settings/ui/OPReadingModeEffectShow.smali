.class public Lcom/oneplus/settings/ui/OPReadingModeEffectShow;
.super Landroidx/preference/Preference;
.source "OPReadingModeEffectShow.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEffectImage:Landroid/widget/ImageView;

.field private mLayoutResId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const v0, 0x7f0d022c

    iput v0, p0, Lcom/oneplus/settings/ui/OPReadingModeEffectShow;->mLayoutResId:I

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPReadingModeEffectShow;->mContext:Landroid/content/Context;

    iget p1, p0, Lcom/oneplus/settings/ui/OPReadingModeEffectShow;->mLayoutResId:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p2, 0x7f0d022c

    iput p2, p0, Lcom/oneplus/settings/ui/OPReadingModeEffectShow;->mLayoutResId:I

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPReadingModeEffectShow;->mContext:Landroid/content/Context;

    iget p1, p0, Lcom/oneplus/settings/ui/OPReadingModeEffectShow;->mLayoutResId:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const p2, 0x7f0d022c

    iput p2, p0, Lcom/oneplus/settings/ui/OPReadingModeEffectShow;->mLayoutResId:I

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPReadingModeEffectShow;->mContext:Landroid/content/Context;

    iget p1, p0, Lcom/oneplus/settings/ui/OPReadingModeEffectShow;->mLayoutResId:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x7f0a0234

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPReadingModeEffectShow;->mEffectImage:Landroid/widget/ImageView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPReadingModeEffectShow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    const-string v0, "Hans"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "zh_CN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "Hant"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "zh_TW"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPReadingModeEffectShow;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isBlackModeOn()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/oneplus/settings/ui/OPReadingModeEffectShow;->mEffectImage:Landroid/widget/ImageView;

    const p1, 0x7f0805d1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :cond_2
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPReadingModeEffectShow;->mEffectImage:Landroid/widget/ImageView;

    const p1, 0x7f0805d2

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPReadingModeEffectShow;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isBlackModeOn()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/oneplus/settings/ui/OPReadingModeEffectShow;->mEffectImage:Landroid/widget/ImageView;

    const p1, 0x7f0805d3

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :cond_4
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPReadingModeEffectShow;->mEffectImage:Landroid/widget/ImageView;

    const p1, 0x7f0805d4

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPReadingModeEffectShow;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isBlackModeOn()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p0, p0, Lcom/oneplus/settings/ui/OPReadingModeEffectShow;->mEffectImage:Landroid/widget/ImageView;

    const p1, 0x7f0805cf

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :cond_6
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPReadingModeEffectShow;->mEffectImage:Landroid/widget/ImageView;

    const p1, 0x7f0805d0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_2
    return-void
.end method
