.class public Lcom/oneplus/settings/ui/OPSuwSeekBarPreference;
.super Landroidx/preference/Preference;
.source "OPSuwSeekBarPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/ui/OPSuwSeekBarPreference$OPColorModeSeekBarChangeListener;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field mOPColorModeSeekBarChangeListener:Lcom/oneplus/settings/ui/OPSuwSeekBarPreference$OPColorModeSeekBarChangeListener;

.field private mSeekBar:Landroid/widget/SeekBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0, v0}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPSuwSeekBarPreference;->mContext:Landroid/content/Context;

    const p1, 0x7f0d025b

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPSuwSeekBarPreference;->mContext:Landroid/content/Context;

    const p1, 0x7f0d025b

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPSuwSeekBarPreference;->mContext:Landroid/content/Context;

    const p1, 0x7f0d025b

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPSuwSeekBarPreference;->mContext:Landroid/content/Context;

    const p1, 0x7f0d025b

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->setDividerAllowedBelow(Z)V

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->setDividerAllowedAbove(Z)V

    const v0, 0x7f0a0613

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SeekBar;

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPSuwSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget-object p1, p0, Lcom/oneplus/settings/ui/OPSuwSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    const/16 v0, 0x64

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object p1, p0, Lcom/oneplus/settings/ui/OPSuwSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget v0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->DEFAULT_COLOR_PROGRESS:I

    const-string v1, "oem_screen_better_value"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPSuwSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object p1, p0, Lcom/oneplus/settings/ui/OPSuwSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    new-instance v0, Lcom/oneplus/settings/ui/OPSuwSeekBarPreference$1;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/ui/OPSuwSeekBarPreference$1;-><init>(Lcom/oneplus/settings/ui/OPSuwSeekBarPreference;)V

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method

.method public setOPColorModeSeekBarChangeListener(Lcom/oneplus/settings/ui/OPSuwSeekBarPreference$OPColorModeSeekBarChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPSuwSeekBarPreference;->mOPColorModeSeekBarChangeListener:Lcom/oneplus/settings/ui/OPSuwSeekBarPreference$OPColorModeSeekBarChangeListener;

    return-void
.end method
