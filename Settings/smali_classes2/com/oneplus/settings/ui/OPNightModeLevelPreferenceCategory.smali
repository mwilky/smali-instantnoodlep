.class public Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;
.super Landroidx/preference/Preference;
.source "OPNightModeLevelPreferenceCategory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory$OPNightModeLevelPreferenceChangeListener;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEnabled:Z

.field mOPNightModeLevelPreferenceChangeListener:Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory$OPNightModeLevelPreferenceChangeListener;

.field private mSeekBarBrightness:Lcom/oneplus/settings/widget/OPSeekBar2;

.field private mSeekBarColor:Lcom/oneplus/settings/widget/OPSeekBar2;

.field private mTRBrightness:Landroid/widget/TableRow;

.field private mTRBrightnessTitle:Landroid/widget/TableRow;

.field private mTRColor:Landroid/widget/TableRow;

.field private mTVBrightnessStrong:Landroid/widget/TextView;

.field private mTVBrightnessTitle:Landroid/widget/TextView;

.field private mTVColorStrong:Landroid/widget/TextView;

.field private mTVColorTitle:Landroid/widget/TextView;

.field private mToastTip:Landroid/widget/Toast;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0, v0}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-boolean v0, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mEnabled:Z

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mContext:Landroid/content/Context;

    const p1, 0x7f0d01f1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-boolean v0, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mEnabled:Z

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mContext:Landroid/content/Context;

    const p1, 0x7f0d01f1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-boolean v0, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mEnabled:Z

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mContext:Landroid/content/Context;

    const p1, 0x7f0d01f1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mEnabled:Z

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mContext:Landroid/content/Context;

    const p1, 0x7f0d01f1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method

.method private isWellbeingGrayscaleActivated()Z
    .locals 2

    iget-object p0, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x1

    const-string v1, "accessibility_display_grayscale_enabled"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private showTurnOnTip()V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mToastTip:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    :cond_0
    invoke-direct {p0}, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->isWellbeingGrayscaleActivated()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mContext:Landroid/content/Context;

    const v2, 0x7f1210c6

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mToastTip:Landroid/widget/Toast;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mContext:Landroid/content/Context;

    const v2, 0x7f120e9b

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mToastTip:Landroid/widget/Toast;

    :goto_0
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mToastTip:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method


# virtual methods
.method public getBrightnessProgress()I
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mSeekBarBrightness:Lcom/oneplus/settings/widget/OPSeekBar2;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPProgressBar;->getProgress()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public getBrightnessProgressMax()I
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mSeekBarBrightness:Lcom/oneplus/settings/widget/OPSeekBar2;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPProgressBar;->getMax()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public getColorProgress()I
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mSeekBarColor:Lcom/oneplus/settings/widget/OPSeekBar2;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPProgressBar;->getProgress()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public getColorProgressMax()I
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mSeekBarColor:Lcom/oneplus/settings/widget/OPSeekBar2;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPProgressBar;->getMax()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public synthetic lambda$initView$0$OPNightModeLevelPreferenceCategory(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    iget-boolean p1, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mEnabled:Z

    if-nez p1, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->showTurnOnTip()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public synthetic lambda$initView$1$OPNightModeLevelPreferenceCategory(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    iget-boolean p1, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mEnabled:Z

    if-nez p1, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->showTurnOnTip()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 6

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->setDividerAllowedBelow(Z)V

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->setDividerAllowedAbove(Z)V

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget v2, Lcom/oneplus/settings/better/OPNightMode;->DEFAULT_COLOR_PROGRESS:I

    const/4 v3, -0x2

    const-string v4, "oem_nightmode_progress_status"

    invoke-static {v1, v4, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iget-object v2, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "oem_nightmode_brightness_progress"

    invoke-static {v2, v4, v0, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    const v4, 0x7f0a0777

    invoke-virtual {p1, v4}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mTVColorTitle:Landroid/widget/TextView;

    const v4, 0x7f0a0776

    invoke-virtual {p1, v4}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mTVBrightnessTitle:Landroid/widget/TextView;

    const v4, 0x7f0a076d

    invoke-virtual {p1, v4}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mTVColorStrong:Landroid/widget/TextView;

    const v4, 0x7f0a076c

    invoke-virtual {p1, v4}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mTVBrightnessStrong:Landroid/widget/TextView;

    const v4, 0x7f0a075c

    invoke-virtual {p1, v4}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TableRow;

    iput-object v4, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mTRColor:Landroid/widget/TableRow;

    const v4, 0x7f0a075a

    invoke-virtual {p1, v4}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TableRow;

    iput-object v4, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mTRBrightness:Landroid/widget/TableRow;

    const v4, 0x7f0a075b

    invoke-virtual {p1, v4}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TableRow;

    iput-object v4, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mTRBrightnessTitle:Landroid/widget/TableRow;

    const v4, 0x7f0a063f

    invoke-virtual {p1, v4}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/oneplus/settings/widget/OPSeekBar2;

    iput-object v4, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mSeekBarColor:Lcom/oneplus/settings/widget/OPSeekBar2;

    iget-object v4, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mSeekBarColor:Lcom/oneplus/settings/widget/OPSeekBar2;

    const/16 v5, 0x64

    invoke-virtual {v4, v5}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->setMax(I)V

    iget-object v4, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mSeekBarColor:Lcom/oneplus/settings/widget/OPSeekBar2;

    invoke-virtual {v4, v1}, Lcom/oneplus/lib/widget/OPProgressBar;->setProgress(I)V

    const v1, 0x7f0a063e

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/oneplus/settings/widget/OPSeekBar2;

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mSeekBarBrightness:Lcom/oneplus/settings/widget/OPSeekBar2;

    iget-object p1, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mSeekBarBrightness:Lcom/oneplus/settings/widget/OPSeekBar2;

    invoke-virtual {p1, v5}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->setMax(I)V

    iget-object p1, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mSeekBarBrightness:Lcom/oneplus/settings/widget/OPSeekBar2;

    invoke-virtual {p1, v2}, Lcom/oneplus/lib/widget/OPProgressBar;->setProgress(I)V

    iget-object p1, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mSeekBarColor:Lcom/oneplus/settings/widget/OPSeekBar2;

    new-instance v1, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory$1;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory$1;-><init>(Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;)V

    invoke-virtual {p1, v1}, Lcom/oneplus/lib/widget/OPSeekBar;->setOnSeekBarChangeListener(Lcom/oneplus/lib/widget/OPSeekBar$OnSeekBarChangeListener;)V

    iget-object p1, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mSeekBarBrightness:Lcom/oneplus/settings/widget/OPSeekBar2;

    new-instance v1, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory$2;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory$2;-><init>(Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;)V

    invoke-virtual {p1, v1}, Lcom/oneplus/lib/widget/OPSeekBar;->setOnSeekBarChangeListener(Lcom/oneplus/lib/widget/OPSeekBar$OnSeekBarChangeListener;)V

    iget-object p1, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mTRColor:Landroid/widget/TableRow;

    new-instance v1, Lcom/oneplus/settings/ui/-$$Lambda$OPNightModeLevelPreferenceCategory$AJbSS0doH-xFVa-rMVeyp40DQVA;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/ui/-$$Lambda$OPNightModeLevelPreferenceCategory$AJbSS0doH-xFVa-rMVeyp40DQVA;-><init>(Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;)V

    invoke-virtual {p1, v1}, Landroid/widget/TableRow;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object p1, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mTRBrightness:Landroid/widget/TableRow;

    new-instance v1, Lcom/oneplus/settings/ui/-$$Lambda$OPNightModeLevelPreferenceCategory$1BCHIWEUrGQw8a_X2Omzpk5EIQ0;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/ui/-$$Lambda$OPNightModeLevelPreferenceCategory$1BCHIWEUrGQw8a_X2Omzpk5EIQ0;-><init>(Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;)V

    invoke-virtual {p1, v1}, Landroid/widget/TableRow;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object p1, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "night_display_activated"

    invoke-static {p1, v1, v0, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->isWellbeingGrayscaleActivated()Z

    move-result p1

    if-nez p1, :cond_1

    move v0, v1

    :cond_1
    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->setEnabled(Z)V

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportMMDisplayColorScreenMode()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mTRBrightness:Landroid/widget/TableRow;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/TableRow;->setVisibility(I)V

    iget-object p0, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mTRBrightnessTitle:Landroid/widget/TableRow;

    invoke-virtual {p0, v0}, Landroid/widget/TableRow;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mEnabled:Z

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mSeekBarColor:Lcom/oneplus/settings/widget/OPSeekBar2;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->setActivated(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mSeekBarColor:Lcom/oneplus/settings/widget/OPSeekBar2;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mSeekBarBrightness:Lcom/oneplus/settings/widget/OPSeekBar2;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mSeekBarBrightness:Lcom/oneplus/settings/widget/OPSeekBar2;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_1
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mTVColorTitle:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mTVBrightnessTitle:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mTVColorStrong:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mTVBrightnessStrong:Landroid/widget/TextView;

    :cond_2
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mTVColorTitle:Landroid/widget/TextView;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mTVBrightnessTitle:Landroid/widget/TextView;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mTVColorStrong:Landroid/widget/TextView;

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mTVBrightnessStrong:Landroid/widget/TextView;

    :cond_3
    return-void
.end method

.method public setOPNightModeLevelSeekBarChangeListener(Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory$OPNightModeLevelPreferenceChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mOPNightModeLevelPreferenceChangeListener:Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory$OPNightModeLevelPreferenceChangeListener;

    return-void
.end method
