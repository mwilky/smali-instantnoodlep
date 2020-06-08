.class public Lcom/oneplus/settings/ui/OPCustomClockPreference;
.super Landroidx/preference/Preference;
.source "OPCustomClockPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;,
        Lcom/oneplus/settings/ui/OPCustomClockPreference$SpaceItemDecoration;,
        Lcom/oneplus/settings/ui/OPCustomClockPreference$ClockViewHolder;,
        Lcom/oneplus/settings/ui/OPCustomClockPreference$ChooseStyleAdapter;
    }
.end annotation


# static fields
.field private static final SUPPORT_FOD:Z


# instance fields
.field private mChooseStyleAdapter:Lcom/oneplus/settings/ui/OPCustomClockPreference$ChooseStyleAdapter;

.field private mCurrentVH:Lcom/oneplus/settings/ui/OPCustomClockPreference$ClockViewHolder;

.field mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private final mItemEntities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;",
            ">;"
        }
    .end annotation
.end field

.field protected mLastIndex:I

.field private mOPRecyclerView:Lcom/oneplus/lib/widget/recyclerview/OPRecyclerView;

.field private mPreView:Landroid/widget/ImageView;

.field protected mSelectedIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportCustomFingerprint()Z

    move-result v0

    sput-boolean v0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->SUPPORT_FOD:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0, v0}, Lcom/oneplus/settings/ui/OPCustomClockPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/oneplus/settings/ui/OPCustomClockPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/settings/ui/OPCustomClockPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mItemEntities:Ljava/util/List;

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object p3, Lcom/android/settings/R$styleable;->VideoPreference:[I

    const/4 p4, 0x0

    invoke-virtual {p1, p2, p3, p4, p4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p2

    const-string p3, "aod_clock_style"

    invoke-static {p1, p3, p4, p2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    iput p1, p0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mLastIndex:I

    const p1, 0x7f0d018f

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/Utils;->getFingerprintManagerOrNull(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/ui/OPCustomClockPreference;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mItemEntities:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/oneplus/settings/ui/OPCustomClockPreference;)Lcom/oneplus/settings/ui/OPCustomClockPreference$ClockViewHolder;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mCurrentVH:Lcom/oneplus/settings/ui/OPCustomClockPreference$ClockViewHolder;

    return-object p0
.end method

.method static synthetic access$102(Lcom/oneplus/settings/ui/OPCustomClockPreference;Lcom/oneplus/settings/ui/OPCustomClockPreference$ClockViewHolder;)Lcom/oneplus/settings/ui/OPCustomClockPreference$ClockViewHolder;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mCurrentVH:Lcom/oneplus/settings/ui/OPCustomClockPreference$ClockViewHolder;

    return-object p1
.end method

.method static synthetic access$200(Lcom/oneplus/settings/ui/OPCustomClockPreference;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mPreView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic lambda$onBindViewHolder$0(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public needShowNoneClockStyle()Z
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportCustomFingerprint()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public needShowWarningDialog()Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mItemEntities:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mItemEntities:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;

    iget-boolean v2, v2, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;->selected:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mLastIndex:I

    iget-object p0, p0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mItemEntities:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;

    iget p0, p0, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;->type:I

    if-eq v2, p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public onAttached()V
    .locals 0

    invoke-super {p0}, Landroidx/preference/Preference;->onAttached()V

    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-super/range {p0 .. p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    iget-object v2, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const v2, 0x7f0a01bb

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/oneplus/lib/widget/recyclerview/OPRecyclerView;

    iput-object v2, v0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mOPRecyclerView:Lcom/oneplus/lib/widget/recyclerview/OPRecyclerView;

    const v2, 0x7f0a0583

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mPreView:Landroid/widget/ImageView;

    new-instance v2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;

    invoke-virtual/range {p0 .. p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->setOrientation(I)V

    iget-object v4, v0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mOPRecyclerView:Lcom/oneplus/lib/widget/recyclerview/OPRecyclerView;

    invoke-virtual {v4, v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->setLayoutManager(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;)V

    iget-object v4, v0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mOPRecyclerView:Lcom/oneplus/lib/widget/recyclerview/OPRecyclerView;

    new-instance v5, Lcom/oneplus/settings/ui/OPCustomClockPreference$SpaceItemDecoration;

    invoke-direct {v5, v0, v3}, Lcom/oneplus/settings/ui/OPCustomClockPreference$SpaceItemDecoration;-><init>(Lcom/oneplus/settings/ui/OPCustomClockPreference;I)V

    invoke-virtual {v4, v5}, Lcom/oneplus/lib/widget/recyclerview/OPRecyclerView;->addOPItemDecoration(Lcom/oneplus/lib/widget/recyclerview/OPItemDecoration;)V

    const v4, 0x7f0a0584

    invoke-virtual {v1, v4}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isBlackModeOn()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "#282828"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    :cond_0
    const-string v5, "#f5f5f5"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_0
    const v4, 0x7f0a07ab

    invoke-virtual {v1, v4}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    sget-object v4, Lcom/oneplus/settings/ui/-$$Lambda$OPCustomClockPreference$R0hYGgoHJXoeOM0AzCeYqbFHm_4;->INSTANCE:Lcom/oneplus/settings/ui/-$$Lambda$OPCustomClockPreference$R0hYGgoHJXoeOM0AzCeYqbFHm_4;

    invoke-virtual {v1, v4}, Landroid/widget/ScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v1, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;

    invoke-virtual/range {p0 .. p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f120141

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f080098

    invoke-direct {v1, v0, v4, v5, v3}, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;-><init>(Lcom/oneplus/settings/ui/OPCustomClockPreference;Ljava/lang/String;II)V

    new-instance v4, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;

    invoke-virtual/range {p0 .. p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f120140

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f080097

    const/4 v7, 0x1

    invoke-direct {v4, v0, v5, v6, v7}, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;-><init>(Lcom/oneplus/settings/ui/OPCustomClockPreference;Ljava/lang/String;II)V

    new-instance v5, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;

    invoke-virtual/range {p0 .. p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v6

    const v8, 0x7f120143

    invoke-virtual {v6, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const v8, 0x7f08009a

    const/4 v9, 0x2

    invoke-direct {v5, v0, v6, v8, v9}, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;-><init>(Lcom/oneplus/settings/ui/OPCustomClockPreference;Ljava/lang/String;II)V

    new-instance v6, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;

    invoke-virtual/range {p0 .. p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v8

    const v10, 0x7f120144

    invoke-virtual {v8, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const v10, 0x7f08009b

    const/4 v11, 0x3

    invoke-direct {v6, v0, v8, v10, v11}, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;-><init>(Lcom/oneplus/settings/ui/OPCustomClockPreference;Ljava/lang/String;II)V

    new-instance v8, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;

    invoke-virtual/range {p0 .. p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v10

    const v12, 0x7f120142

    invoke-virtual {v10, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    const v12, 0x7f080099

    const/16 v13, 0xa

    invoke-direct {v8, v0, v10, v12, v13}, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;-><init>(Lcom/oneplus/settings/ui/OPCustomClockPreference;Ljava/lang/String;II)V

    invoke-static {}, Lcom/oneplus/settings/utils/OPThemeUtils;->isSupportMclTheme()Z

    move-result v10

    const-string v12, "ro.boot.project_name"

    const-string v14, "18801"

    if-eqz v10, :cond_1

    invoke-static {v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v14, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    iget-object v10, v0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mItemEntities:Ljava/util/List;

    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v10, v0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mItemEntities:Ljava/util/List;

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v10, v0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mItemEntities:Ljava/util/List;

    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v10, v0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mItemEntities:Ljava/util/List;

    invoke-interface {v10, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/settings/ui/OPCustomClockPreference;->needShowNoneClockStyle()Z

    move-result v10

    if-eqz v10, :cond_2

    iget-object v10, v0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mItemEntities:Ljava/util/List;

    invoke-interface {v10, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v15

    const-string v13, "aod_clock_style"

    invoke-static {v10, v13, v3, v15}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v10

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "onBindViewHolder  clock curType = "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v15, "OPCustomClockPreference"

    invoke-static {v15, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/oneplus/settings/utils/OPThemeUtils;->isSupportMclTheme()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-static {v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v14, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_3

    move v12, v7

    goto :goto_1

    :cond_3
    move v12, v3

    :goto_1
    if-nez v10, :cond_4

    iput-boolean v7, v1, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;->selected:Z

    add-int/2addr v12, v3

    iput v12, v0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mSelectedIndex:I

    iget-object v1, v0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mPreView:Landroid/widget/ImageView;

    const v3, 0x7f080624

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_2

    :cond_4
    if-ne v10, v7, :cond_5

    iput-boolean v7, v4, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;->selected:Z

    add-int/2addr v12, v7

    iput v12, v0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mSelectedIndex:I

    iget-object v1, v0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mPreView:Landroid/widget/ImageView;

    const v3, 0x7f080623

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_2

    :cond_5
    if-ne v10, v9, :cond_6

    iput-boolean v7, v5, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;->selected:Z

    add-int/2addr v12, v9

    iput v12, v0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mSelectedIndex:I

    iget-object v1, v0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mPreView:Landroid/widget/ImageView;

    const v3, 0x7f080626

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_2

    :cond_6
    if-ne v10, v11, :cond_7

    iput-boolean v7, v6, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;->selected:Z

    add-int/2addr v12, v11

    iput v12, v0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mSelectedIndex:I

    iget-object v1, v0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mPreView:Landroid/widget/ImageView;

    const v3, 0x7f080627

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_2

    :cond_7
    const/16 v1, 0xa

    if-ne v10, v1, :cond_8

    iput-boolean v7, v8, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;->selected:Z

    iput v3, v0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mSelectedIndex:I

    iget-object v1, v0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mPreView:Landroid/widget/ImageView;

    const v3, 0x7f080625

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :cond_8
    :goto_2
    new-instance v1, Lcom/oneplus/settings/ui/OPCustomClockPreference$ChooseStyleAdapter;

    invoke-direct {v1, v0}, Lcom/oneplus/settings/ui/OPCustomClockPreference$ChooseStyleAdapter;-><init>(Lcom/oneplus/settings/ui/OPCustomClockPreference;)V

    iput-object v1, v0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mChooseStyleAdapter:Lcom/oneplus/settings/ui/OPCustomClockPreference$ChooseStyleAdapter;

    iget-object v1, v0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mOPRecyclerView:Lcom/oneplus/lib/widget/recyclerview/OPRecyclerView;

    iget-object v3, v0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mChooseStyleAdapter:Lcom/oneplus/settings/ui/OPCustomClockPreference$ChooseStyleAdapter;

    invoke-virtual {v1, v3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->setAdapter(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;)V

    iget v1, v0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mSelectedIndex:I

    if-ltz v1, :cond_9

    iget-object v3, v0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mItemEntities:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_9

    iget v0, v0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mSelectedIndex:I

    invoke-virtual {v2, v0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->scrollToPosition(I)V

    :cond_9
    return-void
.end method

.method public saveSelectedClock()V
    .locals 8

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mItemEntities:Ljava/util/List;

    iget v3, p0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mSelectedIndex:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;

    iget v2, v2, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;->type:I

    const-string v3, "aod_clock_style"

    invoke-static {v1, v3, v2, v0}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mItemEntities:Ljava/util/List;

    iget v2, p0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mSelectedIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;

    iget v1, v1, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;->type:I

    const-string v2, "aod_smart_display_enabled"

    const/4 v3, 0x0

    const/4 v4, 0x3

    if-ne v1, v4, :cond_0

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v2, v3, v0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "doze_enabled"

    invoke-static {v1, v4, v3, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const/4 v4, 0x1

    if-ne v4, v1, :cond_1

    move v1, v4

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "prox_wake_enabled"

    invoke-static {v5, v6, v3, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-ne v4, v5, :cond_2

    move v5, v4

    goto :goto_1

    :cond_2
    move v5, v3

    :goto_1
    sget-boolean v6, Lcom/oneplus/settings/ui/OPCustomClockPreference;->SUPPORT_FOD:Z

    if-eqz v6, :cond_5

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "oem_acc_blackscreen_gestrue_enable"

    invoke-static {v6, v7, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    const/16 v7, 0xb

    invoke-static {v6, v7}, Lcom/oneplus/lib/app/appcompat/MenuWrapperFactory;->get(II)I

    move-result v6

    if-ne v6, v4, :cond_3

    move v3, v4

    :cond_3
    if-eqz v1, :cond_6

    if-nez v5, :cond_4

    if-eqz v3, :cond_6

    :cond_4
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v2, v4, v0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_2

    :cond_5
    if-eqz v1, :cond_6

    if-eqz v5, :cond_6

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v2, v4, v0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_6
    :goto_2
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTrackerForClockStyle()V

    return-void
.end method
