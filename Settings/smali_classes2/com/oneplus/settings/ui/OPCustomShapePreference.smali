.class public Lcom/oneplus/settings/ui/OPCustomShapePreference;
.super Landroidx/preference/Preference;
.source "OPCustomShapePreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/ui/OPCustomShapePreference$ItemEntity;,
        Lcom/oneplus/settings/ui/OPCustomShapePreference$SpaceItemDecoration;,
        Lcom/oneplus/settings/ui/OPCustomShapePreference$ShapeViewHolder;,
        Lcom/oneplus/settings/ui/OPCustomShapePreference$ChooseStyleAdapter;
    }
.end annotation


# instance fields
.field private mAm:Landroid/app/ActivityManager;

.field private mChooseStyleAdapter:Lcom/oneplus/settings/ui/OPCustomShapePreference$ChooseStyleAdapter;

.field private mCurrentVH:Lcom/oneplus/settings/ui/OPCustomShapePreference$ShapeViewHolder;

.field private final mItemEntities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oneplus/settings/ui/OPCustomShapePreference$ItemEntity;",
            ">;"
        }
    .end annotation
.end field

.field protected mLastIndex:I

.field private mOPRecyclerView:Lcom/oneplus/lib/widget/recyclerview/OPRecyclerView;

.field private mPreviewImageView:Landroid/widget/ImageView;

.field protected mSelectedIndex:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0, v0}, Lcom/oneplus/settings/ui/OPCustomShapePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/oneplus/settings/ui/OPCustomShapePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/settings/ui/OPCustomShapePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/oneplus/settings/ui/OPCustomShapePreference;->mItemEntities:Ljava/util/List;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const p2, 0x7f0d0199

    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->setLayoutResource(I)V

    const-string p2, "activity"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPCustomShapePreference;->mAm:Landroid/app/ActivityManager;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/ui/OPCustomShapePreference;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/ui/OPCustomShapePreference;->mItemEntities:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/oneplus/settings/ui/OPCustomShapePreference;)Lcom/oneplus/settings/ui/OPCustomShapePreference$ShapeViewHolder;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/ui/OPCustomShapePreference;->mCurrentVH:Lcom/oneplus/settings/ui/OPCustomShapePreference$ShapeViewHolder;

    return-object p0
.end method

.method static synthetic access$102(Lcom/oneplus/settings/ui/OPCustomShapePreference;Lcom/oneplus/settings/ui/OPCustomShapePreference$ShapeViewHolder;)Lcom/oneplus/settings/ui/OPCustomShapePreference$ShapeViewHolder;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPCustomShapePreference;->mCurrentVH:Lcom/oneplus/settings/ui/OPCustomShapePreference$ShapeViewHolder;

    return-object p1
.end method

.method static synthetic access$200(Lcom/oneplus/settings/ui/OPCustomShapePreference;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPCustomShapePreference;->changeAdaptive(I)V

    return-void
.end method

.method private changeAdaptive(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/oneplus/settings/ui/OPCustomShapePreference;->mPreviewImageView:Landroid/widget/ImageView;

    const p1, 0x7f080573

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    iget-object p0, p0, Lcom/oneplus/settings/ui/OPCustomShapePreference;->mPreviewImageView:Landroid/widget/ImageView;

    const p1, 0x7f080574

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    iget-object p0, p0, Lcom/oneplus/settings/ui/OPCustomShapePreference;->mPreviewImageView:Landroid/widget/ImageView;

    const p1, 0x7f080575

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    iget-object p0, p0, Lcom/oneplus/settings/ui/OPCustomShapePreference;->mPreviewImageView:Landroid/widget/ImageView;

    const p1, 0x7f080572

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public needShowWarningDialog()Z
    .locals 1

    iget v0, p0, Lcom/oneplus/settings/ui/OPCustomShapePreference;->mLastIndex:I

    iget p0, p0, Lcom/oneplus/settings/ui/OPCustomShapePreference;->mSelectedIndex:I

    if-eq v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onAttached()V
    .locals 0

    invoke-super {p0}, Landroidx/preference/Preference;->onAttached()V

    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 11

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x7f0a01bb

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/widget/recyclerview/OPRecyclerView;

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPCustomShapePreference;->mOPRecyclerView:Lcom/oneplus/lib/widget/recyclerview/OPRecyclerView;

    new-instance v0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->setOrientation(I)V

    iget-object v2, p0, Lcom/oneplus/settings/ui/OPCustomShapePreference;->mOPRecyclerView:Lcom/oneplus/lib/widget/recyclerview/OPRecyclerView;

    invoke-virtual {v2, v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->setLayoutManager(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;)V

    iget-object v2, p0, Lcom/oneplus/settings/ui/OPCustomShapePreference;->mOPRecyclerView:Lcom/oneplus/lib/widget/recyclerview/OPRecyclerView;

    new-instance v3, Lcom/oneplus/settings/ui/OPCustomShapePreference$SpaceItemDecoration;

    invoke-direct {v3, p0, v1}, Lcom/oneplus/settings/ui/OPCustomShapePreference$SpaceItemDecoration;-><init>(Lcom/oneplus/settings/ui/OPCustomShapePreference;I)V

    invoke-virtual {v2, v3}, Lcom/oneplus/lib/widget/recyclerview/OPRecyclerView;->addOPItemDecoration(Lcom/oneplus/lib/widget/recyclerview/OPItemDecoration;)V

    const v2, 0x7f0a0582

    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPCustomShapePreference;->mPreviewImageView:Landroid/widget/ImageView;

    new-instance p1, Lcom/oneplus/settings/ui/OPCustomShapePreference$ItemEntity;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f12107b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const v4, 0x7f0802fb

    invoke-direct {p1, p0, v2, v4, v3}, Lcom/oneplus/settings/ui/OPCustomShapePreference$ItemEntity;-><init>(Lcom/oneplus/settings/ui/OPCustomShapePreference;Ljava/lang/String;II)V

    new-instance v2, Lcom/oneplus/settings/ui/OPCustomShapePreference$ItemEntity;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f12107d

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    const v6, 0x7f0802ff

    invoke-direct {v2, p0, v4, v6, v5}, Lcom/oneplus/settings/ui/OPCustomShapePreference$ItemEntity;-><init>(Lcom/oneplus/settings/ui/OPCustomShapePreference;Ljava/lang/String;II)V

    new-instance v4, Lcom/oneplus/settings/ui/OPCustomShapePreference$ItemEntity;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f12107e

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x3

    const v8, 0x7f080308

    invoke-direct {v4, p0, v6, v8, v7}, Lcom/oneplus/settings/ui/OPCustomShapePreference$ItemEntity;-><init>(Lcom/oneplus/settings/ui/OPCustomShapePreference;Ljava/lang/String;II)V

    new-instance v6, Lcom/oneplus/settings/ui/OPCustomShapePreference$ItemEntity;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f12107c

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x4

    const v10, 0x7f080302

    invoke-direct {v6, p0, v8, v10, v9}, Lcom/oneplus/settings/ui/OPCustomShapePreference$ItemEntity;-><init>(Lcom/oneplus/settings/ui/OPCustomShapePreference;Ljava/lang/String;II)V

    iget-object v8, p0, Lcom/oneplus/settings/ui/OPCustomShapePreference;->mItemEntities:Ljava/util/List;

    invoke-interface {v8, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v8, p0, Lcom/oneplus/settings/ui/OPCustomShapePreference;->mItemEntities:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v8, p0, Lcom/oneplus/settings/ui/OPCustomShapePreference;->mItemEntities:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v8, p0, Lcom/oneplus/settings/ui/OPCustomShapePreference;->mItemEntities:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v10, "oneplus_shape"

    invoke-static {v8, v10, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v3, :cond_0

    iput-boolean v3, p1, Lcom/oneplus/settings/ui/OPCustomShapePreference$ItemEntity;->selected:Z

    iput v1, p0, Lcom/oneplus/settings/ui/OPCustomShapePreference;->mLastIndex:I

    iput v1, p0, Lcom/oneplus/settings/ui/OPCustomShapePreference;->mSelectedIndex:I

    goto :goto_0

    :cond_0
    if-ne v8, v5, :cond_1

    iput-boolean v3, v2, Lcom/oneplus/settings/ui/OPCustomShapePreference$ItemEntity;->selected:Z

    iput v3, p0, Lcom/oneplus/settings/ui/OPCustomShapePreference;->mLastIndex:I

    iput v3, p0, Lcom/oneplus/settings/ui/OPCustomShapePreference;->mSelectedIndex:I

    goto :goto_0

    :cond_1
    if-ne v8, v7, :cond_2

    iput-boolean v3, v4, Lcom/oneplus/settings/ui/OPCustomShapePreference$ItemEntity;->selected:Z

    iput v5, p0, Lcom/oneplus/settings/ui/OPCustomShapePreference;->mLastIndex:I

    iput v5, p0, Lcom/oneplus/settings/ui/OPCustomShapePreference;->mSelectedIndex:I

    goto :goto_0

    :cond_2
    if-ne v8, v9, :cond_3

    iput-boolean v3, v6, Lcom/oneplus/settings/ui/OPCustomShapePreference$ItemEntity;->selected:Z

    iput v7, p0, Lcom/oneplus/settings/ui/OPCustomShapePreference;->mLastIndex:I

    iput v7, p0, Lcom/oneplus/settings/ui/OPCustomShapePreference;->mSelectedIndex:I

    :cond_3
    :goto_0
    invoke-direct {p0, v8}, Lcom/oneplus/settings/ui/OPCustomShapePreference;->changeAdaptive(I)V

    new-instance p1, Lcom/oneplus/settings/ui/OPCustomShapePreference$ChooseStyleAdapter;

    invoke-direct {p1, p0}, Lcom/oneplus/settings/ui/OPCustomShapePreference$ChooseStyleAdapter;-><init>(Lcom/oneplus/settings/ui/OPCustomShapePreference;)V

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPCustomShapePreference;->mChooseStyleAdapter:Lcom/oneplus/settings/ui/OPCustomShapePreference$ChooseStyleAdapter;

    iget-object p1, p0, Lcom/oneplus/settings/ui/OPCustomShapePreference;->mOPRecyclerView:Lcom/oneplus/lib/widget/recyclerview/OPRecyclerView;

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPCustomShapePreference;->mChooseStyleAdapter:Lcom/oneplus/settings/ui/OPCustomShapePreference$ChooseStyleAdapter;

    invoke-virtual {p1, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->setAdapter(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;)V

    iget p1, p0, Lcom/oneplus/settings/ui/OPCustomShapePreference;->mSelectedIndex:I

    if-ltz p1, :cond_4

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPCustomShapePreference;->mItemEntities:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_4

    iget p0, p0, Lcom/oneplus/settings/ui/OPCustomShapePreference;->mSelectedIndex:I

    invoke-virtual {v0, p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->scrollToPosition(I)V

    :cond_4
    return-void
.end method

.method public saveSelectedShape()V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomShapePreference;->mAm:Landroid/app/ActivityManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/oneplus/lib/app/appcompat/MenuWrapperFactory;->killProcess(Landroid/app/ActivityManager;Z)V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomShapePreference;->mItemEntities:Ljava/util/List;

    iget v2, p0, Lcom/oneplus/settings/ui/OPCustomShapePreference;->mSelectedIndex:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/ui/OPCustomShapePreference$ItemEntity;

    iget v0, v0, Lcom/oneplus/settings/ui/OPCustomShapePreference$ItemEntity;->index:I

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPThemeUtils;->getCurrentShapeByIndex(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "oneplus_shape"

    invoke-static {v3, v0, v2}, Lcom/oneplus/settings/utils/OPThemeUtils;->enableTheme(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/oneplus/settings/ui/OPCustomShapePreference;->mItemEntities:Ljava/util/List;

    iget v3, p0, Lcom/oneplus/settings/ui/OPCustomShapePreference;->mSelectedIndex:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/settings/ui/OPCustomShapePreference$ItemEntity;

    iget v2, v2, Lcom/oneplus/settings/ui/OPCustomShapePreference$ItemEntity;->index:I

    invoke-static {v0, v2}, Lcom/oneplus/settings/utils/OPThemeUtils;->setCurrentShape(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomShapePreference;->mItemEntities:Ljava/util/List;

    iget v2, p0, Lcom/oneplus/settings/ui/OPCustomShapePreference;->mSelectedIndex:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/ui/OPCustomShapePreference$ItemEntity;

    iget v0, v0, Lcom/oneplus/settings/ui/OPCustomShapePreference$ItemEntity;->index:I

    const-string v2, "status"

    const-string v3, "shape"

    if-ne v0, v1, :cond_0

    const-string p0, "round"

    invoke-static {v3, v2, p0}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomShapePreference;->mItemEntities:Ljava/util/List;

    iget v1, p0, Lcom/oneplus/settings/ui/OPCustomShapePreference;->mSelectedIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/ui/OPCustomShapePreference$ItemEntity;

    iget v0, v0, Lcom/oneplus/settings/ui/OPCustomShapePreference$ItemEntity;->index:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const-string p0, "square"

    invoke-static {v3, v2, p0}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomShapePreference;->mItemEntities:Ljava/util/List;

    iget v1, p0, Lcom/oneplus/settings/ui/OPCustomShapePreference;->mSelectedIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/ui/OPCustomShapePreference$ItemEntity;

    iget v0, v0, Lcom/oneplus/settings/ui/OPCustomShapePreference$ItemEntity;->index:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    const-string p0, "teardrop"

    invoke-static {v3, v2, p0}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomShapePreference;->mItemEntities:Ljava/util/List;

    iget p0, p0, Lcom/oneplus/settings/ui/OPCustomShapePreference;->mSelectedIndex:I

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oneplus/settings/ui/OPCustomShapePreference$ItemEntity;

    iget p0, p0, Lcom/oneplus/settings/ui/OPCustomShapePreference$ItemEntity;->index:I

    const/4 v0, 0x4

    if-ne p0, v0, :cond_3

    const-string p0, "rectangle"

    invoke-static {v3, v2, p0}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method
