.class public Lcom/oneplus/settings/OPFontStyleActivity;
.super Lcom/oneplus/settings/BaseActivity;
.source "OPFontStyleActivity.java"

# interfaces
.implements Lcom/oneplus/settings/OnBackPressListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/OPFontStyleActivity$ItemEntity;,
        Lcom/oneplus/settings/OPFontStyleActivity$FontViewHolder;,
        Lcom/oneplus/settings/OPFontStyleActivity$ChooseFontStyleAdapter;,
        Lcom/oneplus/settings/OPFontStyleActivity$SpaceItemDecoration;
    }
.end annotation


# static fields
.field private static mLastFontValue:I = -0x1


# instance fields
.field private mChooseFontStyleAdapter:Lcom/oneplus/settings/OPFontStyleActivity$ChooseFontStyleAdapter;

.field private mCurrentVH:Lcom/oneplus/settings/OPFontStyleActivity$FontViewHolder;

.field private mFontValue:I

.field private mItemEntities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oneplus/settings/OPFontStyleActivity$ItemEntity;",
            ">;"
        }
    .end annotation
.end field

.field private mOPRecyclerView:Lcom/oneplus/lib/widget/recyclerview/OPRecyclerView;

.field private mPreviewContainer:Landroid/view/View;

.field private mPreviewText1:Landroid/widget/TextView;

.field private mPreviewText2:Landroid/widget/TextView;

.field private mPreviewText3:Landroid/widget/TextView;

.field private mPreviewText4:Landroid/widget/TextView;

.field protected mSelectedIndex:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/oneplus/settings/BaseActivity;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/oneplus/settings/OPFontStyleActivity;->mFontValue:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/OPFontStyleActivity;->mItemEntities:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/OPFontStyleActivity;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/OPFontStyleActivity;->mItemEntities:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/oneplus/settings/OPFontStyleActivity;)Lcom/oneplus/settings/OPFontStyleActivity$FontViewHolder;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/OPFontStyleActivity;->mCurrentVH:Lcom/oneplus/settings/OPFontStyleActivity$FontViewHolder;

    return-object p0
.end method

.method static synthetic access$102(Lcom/oneplus/settings/OPFontStyleActivity;Lcom/oneplus/settings/OPFontStyleActivity$FontViewHolder;)Lcom/oneplus/settings/OPFontStyleActivity$FontViewHolder;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/OPFontStyleActivity;->mCurrentVH:Lcom/oneplus/settings/OPFontStyleActivity$FontViewHolder;

    return-object p1
.end method

.method static synthetic access$200(Lcom/oneplus/settings/OPFontStyleActivity;)I
    .locals 0

    iget p0, p0, Lcom/oneplus/settings/OPFontStyleActivity;->mFontValue:I

    return p0
.end method

.method static synthetic access$202(Lcom/oneplus/settings/OPFontStyleActivity;I)I
    .locals 0

    iput p1, p0, Lcom/oneplus/settings/OPFontStyleActivity;->mFontValue:I

    return p1
.end method

.method static synthetic access$300(Lcom/oneplus/settings/OPFontStyleActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/settings/OPFontStyleActivity;->modifyPreviewText()V

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

    const v0, 0x7f121985

    invoke-interface {p1, p0, p0, p0, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p0

    const p1, 0x7f0804dd

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

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10

    invoke-super {p0, p1}, Lcom/oneplus/settings/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "oem_font_mode"

    invoke-static {p1, v2, v0, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    sput p1, Lcom/oneplus/settings/OPFontStyleActivity;->mLastFontValue:I

    const-string p1, "onCreate mLastFontValue = "

    invoke-static {p1}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline23(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget v2, Lcom/oneplus/settings/OPFontStyleActivity;->mLastFontValue:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "OPFontStyleActivity"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const p1, 0x7f120d9d

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(I)V

    const p1, 0x7f0d01d1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    invoke-virtual {p0, p0}, Lcom/oneplus/settings/BaseActivity;->setOnBackPressListener(Lcom/oneplus/settings/OnBackPressListener;)V

    const p1, 0x7f0a057c

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/OPFontStyleActivity;->mPreviewContainer:Landroid/view/View;

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isBlackModeOn()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oneplus/settings/OPFontStyleActivity;->mPreviewContainer:Landroid/view/View;

    const-string v3, "#282828"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/oneplus/settings/OPFontStyleActivity;->mPreviewContainer:Landroid/view/View;

    const-string v3, "#f5f5f5"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    invoke-static {p1}, Landroid/graphics/Typeface;->opGetFontIDsForUser(I)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    const-string v6, "sans-serif-medium"

    invoke-static {v4, v5, v6}, Landroid/graphics/Typeface;->opGetIsolatedTypeface(IILjava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    const-string v7, "sans-serif-book"

    invoke-static {v5, v6, v7}, Landroid/graphics/Typeface;->opGetIsolatedTypeface(IILjava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "oneplus_oem_font_name_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "string"

    const-string v9, "com.oneplus"

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_1
    const-string v6, ""

    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "fontId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "name = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Lcom/oneplus/settings/OPFontStyleActivity$ItemEntity;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-direct {v7, v8, v4, v5, v6}, Lcom/oneplus/settings/OPFontStyleActivity$ItemEntity;-><init>(ILandroid/graphics/Typeface;Landroid/graphics/Typeface;Ljava/lang/String;)V

    sget v4, Lcom/oneplus/settings/OPFontStyleActivity;->mLastFontValue:I

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v4, v3, :cond_2

    iput-boolean v0, v7, Lcom/oneplus/settings/OPFontStyleActivity$ItemEntity;->selected:Z

    iget-object v3, p0, Lcom/oneplus/settings/OPFontStyleActivity;->mItemEntities:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iput v3, p0, Lcom/oneplus/settings/OPFontStyleActivity;->mSelectedIndex:I

    const-string v3, "mSelectedIndex = "

    invoke-static {v3}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline23(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/oneplus/settings/OPFontStyleActivity;->mSelectedIndex:I

    invoke-static {v3, v4, v2}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline44(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_2
    iget-object v3, p0, Lcom/oneplus/settings/OPFontStyleActivity;->mItemEntities:Ljava/util/List;

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_3
    sget p1, Lcom/oneplus/settings/OPFontStyleActivity;->mLastFontValue:I

    iput p1, p0, Lcom/oneplus/settings/OPFontStyleActivity;->mFontValue:I

    const p1, 0x7f0a0585

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/oneplus/settings/OPFontStyleActivity;->mPreviewText1:Landroid/widget/TextView;

    const p1, 0x7f0a0586

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/oneplus/settings/OPFontStyleActivity;->mPreviewText2:Landroid/widget/TextView;

    const p1, 0x7f0a0587

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/oneplus/settings/OPFontStyleActivity;->mPreviewText3:Landroid/widget/TextView;

    const p1, 0x7f0a0588

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/oneplus/settings/OPFontStyleActivity;->mPreviewText4:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/oneplus/settings/OPFontStyleActivity;->modifyPreviewText()V

    const p1, 0x7f0a0297

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/oneplus/lib/widget/recyclerview/OPRecyclerView;

    iput-object p1, p0, Lcom/oneplus/settings/OPFontStyleActivity;->mOPRecyclerView:Lcom/oneplus/lib/widget/recyclerview/OPRecyclerView;

    new-instance p1, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;

    invoke-direct {p1, p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v1}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->setOrientation(I)V

    iget-object v0, p0, Lcom/oneplus/settings/OPFontStyleActivity;->mOPRecyclerView:Lcom/oneplus/lib/widget/recyclerview/OPRecyclerView;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->setLayoutManager(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;)V

    iget-object v0, p0, Lcom/oneplus/settings/OPFontStyleActivity;->mOPRecyclerView:Lcom/oneplus/lib/widget/recyclerview/OPRecyclerView;

    new-instance v3, Lcom/oneplus/settings/OPFontStyleActivity$SpaceItemDecoration;

    invoke-direct {v3, p0, v1}, Lcom/oneplus/settings/OPFontStyleActivity$SpaceItemDecoration;-><init>(Lcom/oneplus/settings/OPFontStyleActivity;I)V

    invoke-virtual {v0, v3}, Lcom/oneplus/lib/widget/recyclerview/OPRecyclerView;->addOPItemDecoration(Lcom/oneplus/lib/widget/recyclerview/OPItemDecoration;)V

    new-instance v0, Lcom/oneplus/settings/OPFontStyleActivity$ChooseFontStyleAdapter;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/OPFontStyleActivity$ChooseFontStyleAdapter;-><init>(Lcom/oneplus/settings/OPFontStyleActivity;)V

    iput-object v0, p0, Lcom/oneplus/settings/OPFontStyleActivity;->mChooseFontStyleAdapter:Lcom/oneplus/settings/OPFontStyleActivity$ChooseFontStyleAdapter;

    iget-object v0, p0, Lcom/oneplus/settings/OPFontStyleActivity;->mOPRecyclerView:Lcom/oneplus/lib/widget/recyclerview/OPRecyclerView;

    iget-object v1, p0, Lcom/oneplus/settings/OPFontStyleActivity;->mChooseFontStyleAdapter:Lcom/oneplus/settings/OPFontStyleActivity$ChooseFontStyleAdapter;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->setAdapter(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;)V

    iget v0, p0, Lcom/oneplus/settings/OPFontStyleActivity;->mSelectedIndex:I

    if-ltz v0, :cond_4

    iget-object v1, p0, Lcom/oneplus/settings/OPFontStyleActivity;->mItemEntities:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    const-string v0, "scrollToPosition"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget p0, p0, Lcom/oneplus/settings/OPFontStyleActivity;->mSelectedIndex:I

    invoke-virtual {p1, p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->scrollToPosition(I)V

    :cond_4
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

    const/4 v0, 0x1

    const-string v1, "status"

    const-string v2, "font"

    if-ne p1, v0, :cond_1

    const-string p1, "noto"

    invoke-static {v2, v1, p1}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    if-ne p1, v3, :cond_2

    const-string p1, "slate"

    invoke-static {v2, v1, p1}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/16 v3, 0x64

    if-ne p1, v3, :cond_3

    const-string p1, "yuan"

    invoke-static {v2, v1, p1}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/16 v3, 0x65

    if-ne p1, v3, :cond_4

    const-string p1, "kai"

    invoke-static {v2, v1, p1}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->onBackPressed()V

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/oneplus/settings/OPFontStyleActivity$1;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/OPFontStyleActivity$1;-><init>(Lcom/oneplus/settings/OPFontStyleActivity;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return v0
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oem_font_mode"

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/OPFontStyleActivity;->mFontValue:I

    return-void
.end method
