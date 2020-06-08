.class public Lcom/oneplus/settings/OPFontStyleActivity;
.super Lcom/oneplus/settings/BaseActivity;
.source "OPFontStyleActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/oneplus/settings/OnBackPressListener;


# static fields
.field private static mLastFontValue:I = -0x1


# instance fields
.field private mFontValue:I

.field mNotoFont:Landroid/view/View;

.field mOneplusFont:Landroid/view/View;

.field private mPreviewContainer:Landroid/view/View;

.field private mPreviewText1:Landroid/widget/TextView;

.field private mPreviewText2:Landroid/widget/TextView;

.field private mPreviewText3:Landroid/widget/TextView;

.field private mPreviewText4:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/oneplus/settings/BaseActivity;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/oneplus/settings/OPFontStyleActivity;->mFontValue:I

    return-void
.end method

.method private modifyPreviewText()V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/settings/OPFontStyleActivity;->mPreviewText1:Landroid/widget/TextView;

    iget v1, p0, Lcom/oneplus/settings/OPFontStyleActivity;->mFontValue:I

    const-string v2, "sans-serif-medium"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->getTypeface(ILjava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/oneplus/settings/OPFontStyleActivity;->mPreviewText2:Landroid/widget/TextView;

    iget v1, p0, Lcom/oneplus/settings/OPFontStyleActivity;->mFontValue:I

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->getTypeface(ILjava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/oneplus/settings/OPFontStyleActivity;->mPreviewText3:Landroid/widget/TextView;

    iget v1, p0, Lcom/oneplus/settings/OPFontStyleActivity;->mFontValue:I

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->getTypeface(ILjava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/oneplus/settings/OPFontStyleActivity;->mPreviewText4:Landroid/widget/TextView;

    iget p0, p0, Lcom/oneplus/settings/OPFontStyleActivity;->mFontValue:I

    invoke-static {p0, v2}, Landroid/graphics/Typeface;->getTypeface(ILjava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method


# virtual methods
.method addOptionsMenuItems(Landroid/view/Menu;)V
    .locals 1

    const/4 p0, 0x0

    const v0, 0x7f12196d

    invoke-interface {p1, p0, p0, p0, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p0

    const p1, 0x7f0804d4

    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object p0

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    return-void
.end method

.method protected needShowWarningDialog()Z
    .locals 1

    sget v0, Lcom/oneplus/settings/OPFontStyleActivity;->mLastFontValue:I

    iget p0, p0, Lcom/oneplus/settings/OPFontStyleActivity;->mFontValue:I

    if-eq v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onCancelPressed()V
    .locals 0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0806ad

    const v1, 0x7f0806b0

    const v2, 0x7f0a0477

    if-ne p1, v2, :cond_1

    iget p1, p0, Lcom/oneplus/settings/OPFontStyleActivity;->mFontValue:I

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    return-void

    :cond_0
    iput v2, p0, Lcom/oneplus/settings/OPFontStyleActivity;->mFontValue:I

    iget-object p1, p0, Lcom/oneplus/settings/OPFontStyleActivity;->mNotoFont:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object p1, p0, Lcom/oneplus/settings/OPFontStyleActivity;->mOneplusFont:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-direct {p0}, Lcom/oneplus/settings/OPFontStyleActivity;->modifyPreviewText()V

    goto :goto_0

    :cond_1
    const v2, 0x7f0a049c

    if-ne p1, v2, :cond_3

    iget p1, p0, Lcom/oneplus/settings/OPFontStyleActivity;->mFontValue:I

    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    return-void

    :cond_2
    iget-object p1, p0, Lcom/oneplus/settings/OPFontStyleActivity;->mNotoFont:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object p1, p0, Lcom/oneplus/settings/OPFontStyleActivity;->mOneplusFont:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iput v2, p0, Lcom/oneplus/settings/OPFontStyleActivity;->mFontValue:I

    invoke-direct {p0}, Lcom/oneplus/settings/OPFontStyleActivity;->modifyPreviewText()V

    :cond_3
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/oneplus/settings/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v0, 0x1

    const-string v1, "oem_font_mode"

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    sput p1, Lcom/oneplus/settings/OPFontStyleActivity;->mLastFontValue:I

    const p1, 0x7f120d85

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(I)V

    const p1, 0x7f0d01d0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    invoke-virtual {p0, p0}, Lcom/oneplus/settings/BaseActivity;->setOnBackPressListener(Lcom/oneplus/settings/OnBackPressListener;)V

    const p1, 0x7f0a057f

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/OPFontStyleActivity;->mPreviewContainer:Landroid/view/View;

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isBlackModeOn()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oneplus/settings/OPFontStyleActivity;->mPreviewContainer:Landroid/view/View;

    const-string v1, "#282828"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/oneplus/settings/OPFontStyleActivity;->mPreviewContainer:Landroid/view/View;

    const-string v1, "#f5f5f5"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_0
    const p1, 0x7f0a0477

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/OPFontStyleActivity;->mNotoFont:Landroid/view/View;

    iget-object p1, p0, Lcom/oneplus/settings/OPFontStyleActivity;->mNotoFont:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a049c

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/OPFontStyleActivity;->mOneplusFont:Landroid/view/View;

    iget-object p1, p0, Lcom/oneplus/settings/OPFontStyleActivity;->mOneplusFont:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a047a

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v1, 0x7f0a0478

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0a0479

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const-string v3, "sans-serif-medium"

    invoke-static {v0, v3}, Landroid/graphics/Typeface;->getTypeface(ILjava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const-string p1, "sans-serif-book"

    invoke-static {v0, p1}, Landroid/graphics/Typeface;->getTypeface(ILjava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-static {v0, p1}, Landroid/graphics/Typeface;->getTypeface(ILjava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v0, 0x7f0a049f

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0a049d

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0a049e

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v4, 0x2

    invoke-static {v4, v3}, Landroid/graphics/Typeface;->getTypeface(ILjava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-static {v4, p1}, Landroid/graphics/Typeface;->getTypeface(ILjava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-static {v4, p1}, Landroid/graphics/Typeface;->getTypeface(ILjava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const p1, 0x7f0a0588

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/oneplus/settings/OPFontStyleActivity;->mPreviewText1:Landroid/widget/TextView;

    const p1, 0x7f0a0589

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/oneplus/settings/OPFontStyleActivity;->mPreviewText2:Landroid/widget/TextView;

    const p1, 0x7f0a058a

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/oneplus/settings/OPFontStyleActivity;->mPreviewText3:Landroid/widget/TextView;

    const p1, 0x7f0a058b

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/oneplus/settings/OPFontStyleActivity;->mPreviewText4:Landroid/widget/TextView;

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/oneplus/settings/OPFontStyleActivity;->addOptionsMenuItems(Landroid/view/Menu;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p0

    return p0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcom/oneplus/settings/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0

    :cond_0
    iget p1, p0, Lcom/oneplus/settings/OPFontStyleActivity;->mFontValue:I

    const-string v0, "status"

    const-string v1, "font"

    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    const-string p1, "noto"

    invoke-static {v1, v0, p1}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    if-ne p1, v3, :cond_2

    const-string p1, "slate"

    invoke-static {v1, v0, p1}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    iget p1, p0, Lcom/oneplus/settings/OPFontStyleActivity;->mFontValue:I

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oem_font_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "oneplus_dynamicfont"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/oneplus/sdk/utils/OpTheme;

    invoke-direct {p1, p0}, Lcom/oneplus/sdk/utils/OpTheme;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Lcom/oneplus/sdk/utils/OpTheme;->enableTheme(Ljava/util/HashMap;)I

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return v2
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "oem_font_mode"

    const/4 v3, 0x0

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/OPFontStyleActivity;->mFontValue:I

    iget v0, p0, Lcom/oneplus/settings/OPFontStyleActivity;->mFontValue:I

    const v2, 0x7f0806ad

    const v3, 0x7f0806b0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/OPFontStyleActivity;->mNotoFont:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object p0, p0, Lcom/oneplus/settings/OPFontStyleActivity;->mOneplusFont:Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/oneplus/settings/OPFontStyleActivity;->mNotoFont:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object p0, p0, Lcom/oneplus/settings/OPFontStyleActivity;->mOneplusFont:Landroid/view/View;

    invoke-virtual {p0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_1
    :goto_0
    return-void
.end method
