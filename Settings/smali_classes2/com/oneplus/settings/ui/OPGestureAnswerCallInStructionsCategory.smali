.class public Lcom/oneplus/settings/ui/OPGestureAnswerCallInStructionsCategory;
.super Landroidx/preference/Preference;
.source "OPGestureAnswerCallInStructionsCategory.java"


# instance fields
.field private mLayoutResId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p1, 0x7f0d01da

    iput p1, p0, Lcom/oneplus/settings/ui/OPGestureAnswerCallInStructionsCategory;->mLayoutResId:I

    iget p1, p0, Lcom/oneplus/settings/ui/OPGestureAnswerCallInStructionsCategory;->mLayoutResId:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p1, 0x7f0d01da

    iput p1, p0, Lcom/oneplus/settings/ui/OPGestureAnswerCallInStructionsCategory;->mLayoutResId:I

    iget p1, p0, Lcom/oneplus/settings/ui/OPGestureAnswerCallInStructionsCategory;->mLayoutResId:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const p1, 0x7f0d01da

    iput p1, p0, Lcom/oneplus/settings/ui/OPGestureAnswerCallInStructionsCategory;->mLayoutResId:I

    iget p1, p0, Lcom/oneplus/settings/ui/OPGestureAnswerCallInStructionsCategory;->mLayoutResId:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceViewHolder;->setDividerAllowedBelow(Z)V

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->supportGestureAudioRoute()Z

    return-void
.end method
