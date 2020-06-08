.class public Lcom/oneplus/settings/ui/OPCustomTonePreference;
.super Landroidx/preference/Preference;
.source "OPCustomTonePreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/ui/OPCustomTonePreference$ItemEntity;,
        Lcom/oneplus/settings/ui/OPCustomTonePreference$SpaceItemDecoration;,
        Lcom/oneplus/settings/ui/OPCustomTonePreference$ToneViewHolder;,
        Lcom/oneplus/settings/ui/OPCustomTonePreference$ChooseStyleAdapter;
    }
.end annotation


# instance fields
.field private adapter:Landroidx/viewpager/widget/PagerAdapter;

.field private mChooseStyleAdapter:Lcom/oneplus/settings/ui/OPCustomTonePreference$ChooseStyleAdapter;

.field private mContext:Landroid/content/Context;

.field private mCurrentVH:Lcom/oneplus/settings/ui/OPCustomTonePreference$ToneViewHolder;

.field private final mItemEntities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oneplus/settings/ui/OPCustomTonePreference$ItemEntity;",
            ">;"
        }
    .end annotation
.end field

.field protected mLastIndex:I

.field private mOPRecyclerView:Lcom/oneplus/lib/widget/recyclerview/OPRecyclerView;

.field private final mPreviewList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mSelectedIndex:I

.field private mViewPager:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0, v0}, Lcom/oneplus/settings/ui/OPCustomTonePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/oneplus/settings/ui/OPCustomTonePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/settings/ui/OPCustomTonePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference;->mItemEntities:Ljava/util/List;

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference;->mPreviewList:Ljava/util/List;

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p3

    sget-object p4, Lcom/android/settings/R$styleable;->VideoPreference:[I

    const/4 v0, 0x0

    invoke-virtual {p3, p2, p4, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    const p2, 0x7f0d019d

    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->setLayoutResource(I)V

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/ui/OPCustomTonePreference;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference;->mPreviewList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/oneplus/settings/ui/OPCustomTonePreference;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference;->mItemEntities:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/oneplus/settings/ui/OPCustomTonePreference;)Lcom/oneplus/settings/ui/OPCustomTonePreference$ToneViewHolder;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference;->mCurrentVH:Lcom/oneplus/settings/ui/OPCustomTonePreference$ToneViewHolder;

    return-object p0
.end method

.method static synthetic access$202(Lcom/oneplus/settings/ui/OPCustomTonePreference;Lcom/oneplus/settings/ui/OPCustomTonePreference$ToneViewHolder;)Lcom/oneplus/settings/ui/OPCustomTonePreference$ToneViewHolder;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference;->mCurrentVH:Lcom/oneplus/settings/ui/OPCustomTonePreference$ToneViewHolder;

    return-object p1
.end method

.method static synthetic access$300(Lcom/oneplus/settings/ui/OPCustomTonePreference;)Landroidx/viewpager/widget/PagerAdapter;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference;->adapter:Landroidx/viewpager/widget/PagerAdapter;

    return-object p0
.end method

.method private enableDarkTheme(Z)V
    .locals 1

    iget-object p0, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference;->mContext:Landroid/content/Context;

    const-class v0, Landroid/app/UiModeManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/UiModeManager;

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    invoke-virtual {p0, p1}, Landroid/app/UiModeManager;->setNightMode(I)V

    return-void
.end method


# virtual methods
.method public needShowWarningDialog()Z
    .locals 1

    iget v0, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference;->mLastIndex:I

    iget p0, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference;->mSelectedIndex:I

    if-eq v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 8

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x7f0a0750

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    new-instance v0, Lcom/oneplus/settings/ui/OPCustomTonePreference$ItemEntity;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f12106a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const v4, 0x7f08056d

    invoke-direct {v0, p0, v2, v4, v3}, Lcom/oneplus/settings/ui/OPCustomTonePreference$ItemEntity;-><init>(Lcom/oneplus/settings/ui/OPCustomTonePreference;Ljava/lang/String;II)V

    new-instance v2, Lcom/oneplus/settings/ui/OPCustomTonePreference$ItemEntity;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f12106c

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    const v6, 0x7f080573

    invoke-direct {v2, p0, v4, v6, v5}, Lcom/oneplus/settings/ui/OPCustomTonePreference$ItemEntity;-><init>(Lcom/oneplus/settings/ui/OPCustomTonePreference;Ljava/lang/String;II)V

    new-instance v4, Lcom/oneplus/settings/ui/OPCustomTonePreference$ItemEntity;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f12106b

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f080570

    invoke-direct {v4, p0, v6, v7, v1}, Lcom/oneplus/settings/ui/OPCustomTonePreference$ItemEntity;-><init>(Lcom/oneplus/settings/ui/OPCustomTonePreference;Ljava/lang/String;II)V

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v6, "oem_black_mode"

    invoke-static {v1, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v6, 0x0

    if-ne v1, v5, :cond_0

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference;->mPreviewList:Ljava/util/List;

    const v5, 0x7f08056e

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference;->mPreviewList:Ljava/util/List;

    const v5, 0x7f08056f

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput v6, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference;->mLastIndex:I

    iput v6, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference;->mSelectedIndex:I

    iput-boolean v3, v0, Lcom/oneplus/settings/ui/OPCustomTonePreference$ItemEntity;->selected:Z

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference;->mPreviewList:Ljava/util/List;

    const v5, 0x7f080574

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference;->mPreviewList:Ljava/util/List;

    const v5, 0x7f080575

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput v3, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference;->mLastIndex:I

    iput v3, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference;->mSelectedIndex:I

    iput-boolean v3, v2, Lcom/oneplus/settings/ui/OPCustomTonePreference$ItemEntity;->selected:Z

    goto :goto_0

    :cond_1
    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference;->mPreviewList:Ljava/util/List;

    const v7, 0x7f080571

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference;->mPreviewList:Ljava/util/List;

    const v7, 0x7f080572

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput v5, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference;->mLastIndex:I

    iput v5, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference;->mSelectedIndex:I

    iput-boolean v3, v4, Lcom/oneplus/settings/ui/OPCustomTonePreference$ItemEntity;->selected:Z

    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference;->mItemEntities:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference;->mItemEntities:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference;->mItemEntities:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/oneplus/settings/utils/OPUtils;->dp2Px(Landroid/util/DisplayMetrics;F)I

    move-result v1

    const/high16 v2, 0x43480000    # 200.0f

    invoke-static {v0, v2}, Lcom/oneplus/settings/utils/OPUtils;->dp2Px(Landroid/util/DisplayMetrics;F)I

    move-result v2

    sub-int/2addr v1, v2

    neg-int v1, v1

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07039b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-static {v0, v2}, Lcom/oneplus/settings/utils/OPUtils;->dp2Px(Landroid/util/DisplayMetrics;F)I

    move-result v0

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/ViewPager;->setPageMargin(I)V

    new-instance v0, Lcom/oneplus/settings/ui/OPCustomTonePreference$1;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/ui/OPCustomTonePreference$1;-><init>(Lcom/oneplus/settings/ui/OPCustomTonePreference;)V

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference;->adapter:Landroidx/viewpager/widget/PagerAdapter;

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference;->adapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    const v0, 0x7f0a01bb

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/oneplus/lib/widget/recyclerview/OPRecyclerView;

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference;->mOPRecyclerView:Lcom/oneplus/lib/widget/recyclerview/OPRecyclerView;

    new-instance p1, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v6}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->setOrientation(I)V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference;->mOPRecyclerView:Lcom/oneplus/lib/widget/recyclerview/OPRecyclerView;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->setLayoutManager(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;)V

    iget-object p1, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference;->mOPRecyclerView:Lcom/oneplus/lib/widget/recyclerview/OPRecyclerView;

    new-instance v0, Lcom/oneplus/settings/ui/OPCustomTonePreference$SpaceItemDecoration;

    invoke-direct {v0, p0, v6}, Lcom/oneplus/settings/ui/OPCustomTonePreference$SpaceItemDecoration;-><init>(Lcom/oneplus/settings/ui/OPCustomTonePreference;I)V

    invoke-virtual {p1, v0}, Lcom/oneplus/lib/widget/recyclerview/OPRecyclerView;->addOPItemDecoration(Lcom/oneplus/lib/widget/recyclerview/OPItemDecoration;)V

    new-instance p1, Lcom/oneplus/settings/ui/OPCustomTonePreference$ChooseStyleAdapter;

    invoke-direct {p1, p0}, Lcom/oneplus/settings/ui/OPCustomTonePreference$ChooseStyleAdapter;-><init>(Lcom/oneplus/settings/ui/OPCustomTonePreference;)V

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference;->mChooseStyleAdapter:Lcom/oneplus/settings/ui/OPCustomTonePreference$ChooseStyleAdapter;

    iget-object p1, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference;->mOPRecyclerView:Lcom/oneplus/lib/widget/recyclerview/OPRecyclerView;

    iget-object p0, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference;->mChooseStyleAdapter:Lcom/oneplus/settings/ui/OPCustomTonePreference$ChooseStyleAdapter;

    invoke-virtual {p1, p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->setAdapter(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;)V

    return-void
.end method

.method public saveSelectedTone()V
    .locals 11

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Lcom/oneplus/sdk/utils/OpTheme;

    iget-object v2, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/oneplus/sdk/utils/OpTheme;-><init>(Landroid/content/Context;)V

    iget v2, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference;->mSelectedIndex:I

    const/4 v3, 0x2

    const-string v4, "#"

    const-string v5, "persist.sys.theme.accentcolor"

    const-string v6, "oneplus_accent_color"

    const/4 v7, 0x1

    const-string v8, ""

    const-string v9, "theme_theme"

    if-ne v2, v3, :cond_1

    const-string v2, "3"

    invoke-static {v9, v9, v2}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference;->mContext:Landroid/content/Context;

    invoke-static {v2, v7}, Lcom/oneplus/settings/utils/OPThemeUtils;->setCurrentBasicColorMode(Landroid/content/Context;I)V

    invoke-direct {p0, v7}, Lcom/oneplus/settings/ui/OPCustomTonePreference;->enableDarkTheme(Z)V

    iget-object v2, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "oem_black_mode_accent_color"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    invoke-static {p0, v6, v2, v3}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {v2, v4, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    :cond_0
    invoke-static {v5, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v10, 0x0

    if-ne v2, v7, :cond_3

    const-string v2, "2"

    invoke-static {v9, v9, v2}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference;->mContext:Landroid/content/Context;

    invoke-static {v2, v10}, Lcom/oneplus/settings/utils/OPThemeUtils;->setCurrentBasicColorMode(Landroid/content/Context;I)V

    invoke-direct {p0, v10}, Lcom/oneplus/settings/ui/OPCustomTonePreference;->enableDarkTheme(Z)V

    iget-object v2, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "oem_white_mode_accent_color"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    invoke-static {p0, v6, v2, v3}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    invoke-virtual {v2, v4, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    :cond_2
    invoke-static {v5, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v2, "1"

    invoke-static {v9, v9, v2}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/oneplus/settings/utils/OPThemeUtils;->setCurrentBasicColorMode(Landroid/content/Context;I)V

    invoke-direct {p0, v10}, Lcom/oneplus/settings/ui/OPCustomTonePreference;->enableDarkTheme(Z)V

    iget-object v2, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference;->mContext:Landroid/content/Context;

    const v3, 0x7f0603e2

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    invoke-static {p0, v6, v2, v3}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_4

    invoke-virtual {v2, v4, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    :cond_4
    invoke-static {v5, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string p0, "oneplus_accentcolor"

    invoke-virtual {v0, p0, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lcom/oneplus/sdk/utils/OpTheme;->enableTheme(Ljava/util/HashMap;)I

    return-void
.end method
