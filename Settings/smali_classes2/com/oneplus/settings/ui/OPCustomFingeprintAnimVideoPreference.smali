.class public Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;
.super Landroidx/preference/Preference;
.source "OPCustomFingeprintAnimVideoPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference$SpaceItemDecoration;,
        Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference$AnimEntity;,
        Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference$VH;,
        Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference$AnimStyleAdapter;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference$AnimStyleAdapter;

.field mAnimationAvailable:Z

.field private mAnims:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference$AnimEntity;",
            ">;"
        }
    .end annotation
.end field

.field private mAspectRadio:F

.field private final mContext:Landroid/content/Context;

.field private mCurrentVH:Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference$VH;

.field protected mLastIndex:I

.field mMediaPlayer:Landroid/media/MediaPlayer;

.field private mPreviewResource:I

.field private mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/OPRecyclerView;

.field protected mSelectedIndex:I

.field private mVideoPath:Landroid/net/Uri;

.field private mVideoPaused:Z

.field private mVideoReady:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->mAspectRadio:F

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->mAnims:Ljava/util/List;

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x2

    const-string v2, "op_custom_unlock_animation_style"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->mLastIndex:I

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v4, Lcom/android/settings/R$styleable;->VideoPreference:[I

    invoke-virtual {v0, p2, v4, v3, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    :try_start_0
    invoke-virtual {p2, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->getCustomAnimationId(I)I

    move-result v0

    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    const-string v2, "android.resource"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->mVideoPath:Landroid/net/Uri;

    iget-object p1, p0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->mVideoPath:Landroid/net/Uri;

    invoke-static {p1, v0}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaPlayer;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object p1, p0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    const v0, 0x7f0d0191

    sget-object v1, Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;->MCL:Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;

    invoke-static {}, Lcom/oneplus/custom/utils/OpCustomizeSettings;->getCustomType()Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setLayoutResource(I)V

    invoke-virtual {p2, p1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->mPreviewResource:I

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/oneplus/settings/ui/-$$Lambda$OPCustomFingeprintAnimVideoPreference$gv59WWVB_M8C-60fnrT-6plLBUE;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/ui/-$$Lambda$OPCustomFingeprintAnimVideoPreference$gv59WWVB_M8C-60fnrT-6plLBUE;-><init>(Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    sget-object v1, Lcom/oneplus/settings/ui/-$$Lambda$OPCustomFingeprintAnimVideoPreference$-qmtCZ1Cotcht_SOWUlUe6wB8W8;->INSTANCE:Lcom/oneplus/settings/ui/-$$Lambda$OPCustomFingeprintAnimVideoPreference$-qmtCZ1Cotcht_SOWUlUe6wB8W8;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iput-boolean p1, p0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->mAnimationAvailable:Z

    invoke-virtual {p0}, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->updateAspectRatio()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v3}, Landroidx/preference/Preference;->setVisible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    :try_start_1
    const-string p0, "VideoPreference"

    const-string p1, "Animation resource not found. Will not show animation."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :goto_1
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    throw p0
.end method

.method static synthetic access$000(Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->mVideoReady:Z

    return p0
.end method

.method static synthetic access$002(Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->mVideoReady:Z

    return p1
.end method

.method static synthetic access$100(Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->mVideoPaused:Z

    return p0
.end method

.method static synthetic access$200(Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->mAnims:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400(Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;)Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference$VH;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->mCurrentVH:Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference$VH;

    return-object p0
.end method

.method static synthetic access$402(Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference$VH;)Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference$VH;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->mCurrentVH:Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference$VH;

    return-object p1
.end method

.method static synthetic access$500(Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;I)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->mAnims:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    if-ne p1, v1, :cond_0

    iget-object v2, p0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->mAnims:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference$AnimEntity;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference$AnimEntity;->selected:Z

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->mAnims:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference$AnimEntity;

    iput-boolean v0, v2, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference$AnimEntity;->selected:Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic access$600(Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;I)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    :cond_0
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "android.resource"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->getCustomAnimationId(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->mVideoPath:Landroid/net/Uri;

    :try_start_0
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->reset()V

    iget-object p1, p0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->mVideoPath:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    iget-object p1, p0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepare()V

    iget-object p0, p0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private getCustomAnimationId(I)I
    .locals 1

    const p0, 0x7f11001f

    if-eqz p1, :cond_5

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/16 v0, 0x9

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const p0, 0x7f110022

    goto :goto_0

    :cond_1
    const p0, 0x7f110024

    goto :goto_0

    :cond_2
    const p0, 0x7f110023

    goto :goto_0

    :cond_3
    const p0, 0x7f110021

    goto :goto_0

    :cond_4
    const p0, 0x7f110020

    :cond_5
    :goto_0
    return p0
.end method

.method static synthetic lambda$new$1(Landroid/media/MediaPlayer;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/media/MediaPlayer;->setLooping(Z)V

    return-void
.end method

.method static synthetic lambda$onBindViewHolder$2(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public synthetic lambda$new$0$OPCustomFingeprintAnimVideoPreference(Landroid/media/MediaPlayer;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->mVideoReady:Z

    return-void
.end method

.method public needShowWarningDialog()Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->mAnims:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->mAnims:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference$AnimEntity;

    iget-boolean v2, v2, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference$AnimEntity;->selected:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->mLastIndex:I

    iget-object p0, p0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->mAnims:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference$AnimEntity;

    iget p0, p0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference$AnimEntity;->animIndex:I

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

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-super/range {p0 .. p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    iget-object v2, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-boolean v2, v0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->mAnimationAvailable:Z

    if-nez v2, :cond_0

    return-void

    :cond_0
    const v2, 0x7f0a07ab

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ScrollView;

    sget-object v4, Lcom/oneplus/settings/ui/-$$Lambda$OPCustomFingeprintAnimVideoPreference$n7oDIuNwXLvvSjYlzPMcxF2HXiw;->INSTANCE:Lcom/oneplus/settings/ui/-$$Lambda$OPCustomFingeprintAnimVideoPreference$n7oDIuNwXLvvSjYlzPMcxF2HXiw;

    invoke-virtual {v2, v4}, Landroid/widget/ScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v2, 0x7f0a07aa

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, v0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isBlackModeOn()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "#282828"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    :cond_1
    const-string v5, "#f5f5f5"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_0
    const v4, 0x7f0a07b0

    invoke-virtual {v1, v4}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/TextureView;

    const v5, 0x7f0a07ad

    invoke-virtual {v1, v5}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    const v6, 0x7f0a07ac

    invoke-virtual {v1, v6}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    const v7, 0x7f0a07a9

    invoke-virtual {v1, v7}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/settings/widget/AspectRatioFrameLayout;

    iget v8, v0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->mPreviewResource:I

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    iget v8, v0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->mAspectRadio:F

    invoke-virtual {v7, v8}, Lcom/android/settings/widget/AspectRatioFrameLayout;->setAspectRatio(F)V

    new-instance v7, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference$1;

    invoke-direct {v7, v0, v5, v6}, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference$1;-><init>(Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    invoke-virtual {v4, v7}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    const v4, 0x7f0a01b9

    invoke-virtual {v1, v4}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/oneplus/lib/widget/recyclerview/OPRecyclerView;

    iput-object v4, v0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/OPRecyclerView;

    new-instance v4, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;

    iget-object v5, v0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->setOrientation(I)V

    iget-object v6, v0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/OPRecyclerView;

    invoke-virtual {v6, v4}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->setLayoutManager(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;)V

    iget-object v6, v0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/OPRecyclerView;

    new-instance v7, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference$SpaceItemDecoration;

    invoke-direct {v7, v0, v5}, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference$SpaceItemDecoration;-><init>(Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;I)V

    invoke-virtual {v6, v7}, Lcom/oneplus/lib/widget/recyclerview/OPRecyclerView;->addOPItemDecoration(Lcom/oneplus/lib/widget/recyclerview/OPItemDecoration;)V

    iget-object v6, v0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->mAnims:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    invoke-static {}, Lcom/oneplus/settings/utils/OPThemeUtils;->isSupportMclTheme()Z

    move-result v6

    const/4 v7, 0x3

    if-eqz v6, :cond_2

    new-instance v6, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference$AnimEntity;

    iget-object v8, v0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->mContext:Landroid/content/Context;

    const v9, 0x7f120ff7

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const v9, 0x7f080567

    invoke-direct {v6, v0, v8, v9, v7}, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference$AnimEntity;-><init>(Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;Ljava/lang/String;II)V

    goto :goto_1

    :cond_2
    move-object v6, v3

    :goto_1
    new-instance v8, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference$AnimEntity;

    iget-object v9, v0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->mContext:Landroid/content/Context;

    const v10, 0x7f120ff2

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    const v10, 0x7f080563

    invoke-direct {v8, v0, v9, v10, v5}, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference$AnimEntity;-><init>(Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;Ljava/lang/String;II)V

    new-instance v9, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference$AnimEntity;

    iget-object v10, v0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->mContext:Landroid/content/Context;

    const v11, 0x7f120ff5

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    const v11, 0x7f080564

    const/4 v12, 0x1

    invoke-direct {v9, v0, v10, v11, v12}, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference$AnimEntity;-><init>(Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;Ljava/lang/String;II)V

    new-instance v10, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference$AnimEntity;

    iget-object v11, v0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->mContext:Landroid/content/Context;

    const v13, 0x7f120ff4

    invoke-virtual {v11, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    const v13, 0x7f080565

    const/4 v14, 0x2

    invoke-direct {v10, v0, v11, v13, v14}, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference$AnimEntity;-><init>(Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;Ljava/lang/String;II)V

    new-instance v11, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference$AnimEntity;

    iget-object v13, v0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->mContext:Landroid/content/Context;

    const v15, 0x7f120ff8

    invoke-virtual {v13, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    const v15, 0x7f080566

    const/16 v3, 0x9

    invoke-direct {v11, v0, v13, v15, v3}, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference$AnimEntity;-><init>(Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;Ljava/lang/String;II)V

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSM8250Products()Z

    move-result v13

    const/4 v15, 0x4

    if-eqz v13, :cond_3

    new-instance v13, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference$AnimEntity;

    iget-object v2, v0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->mContext:Landroid/content/Context;

    const v3, 0x7f120ff6

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f080568

    invoke-direct {v13, v0, v2, v3, v15}, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference$AnimEntity;-><init>(Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;Ljava/lang/String;II)V

    goto :goto_2

    :cond_3
    const/4 v13, 0x0

    :goto_2
    iget-object v2, v0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, -0x2

    const-string v15, "op_custom_unlock_animation_style"

    invoke-static {v2, v15, v5, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "initStyleAnimViews  FOD style = "

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v15, "OPCustomFingerAnimVideoPreference"

    invoke-static {v15, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_9

    if-eq v2, v12, :cond_8

    if-eq v2, v14, :cond_7

    if-eq v2, v7, :cond_6

    const/4 v3, 0x4

    if-eq v2, v3, :cond_5

    const/16 v3, 0x9

    if-eq v2, v3, :cond_4

    iput-boolean v12, v8, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference$AnimEntity;->selected:Z

    goto :goto_3

    :cond_4
    iput-boolean v12, v11, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference$AnimEntity;->selected:Z

    goto :goto_3

    :cond_5
    if-eqz v13, :cond_a

    iput-boolean v12, v13, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference$AnimEntity;->selected:Z

    goto :goto_3

    :cond_6
    iput-boolean v12, v6, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference$AnimEntity;->selected:Z

    goto :goto_3

    :cond_7
    iput-boolean v12, v10, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference$AnimEntity;->selected:Z

    goto :goto_3

    :cond_8
    iput-boolean v12, v9, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference$AnimEntity;->selected:Z

    goto :goto_3

    :cond_9
    iput-boolean v12, v8, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference$AnimEntity;->selected:Z

    :cond_a
    :goto_3
    if-eqz v13, :cond_b

    iget-object v2, v0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->mAnims:Ljava/util/List;

    invoke-interface {v2, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    invoke-static {}, Lcom/oneplus/settings/utils/OPThemeUtils;->isSupportMclTheme()Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, v0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->mAnims:Ljava/util/List;

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c
    iget-object v2, v0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->mAnims:Ljava/util/List;

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, v0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->mAnims:Ljava/util/List;

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, v0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->mAnims:Ljava/util/List;

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, v0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->mAnims:Ljava/util/List;

    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference$AnimStyleAdapter;

    invoke-direct {v2, v0}, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference$AnimStyleAdapter;-><init>(Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;)V

    iput-object v2, v0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->mAdapter:Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference$AnimStyleAdapter;

    iget-object v2, v0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/OPRecyclerView;

    iget-object v3, v0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->mAdapter:Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference$AnimStyleAdapter;

    invoke-virtual {v2, v3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->setAdapter(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;)V

    move v2, v5

    :goto_4
    iget-object v3, v0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->mAnims:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_e

    iget-object v3, v0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->mAnims:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference$AnimEntity;

    iget-boolean v3, v3, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference$AnimEntity;->selected:Z

    if-eqz v3, :cond_d

    goto :goto_5

    :cond_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_e
    move v2, v5

    :goto_5
    iput v2, v0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->mSelectedIndex:I

    iget v2, v0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->mSelectedIndex:I

    if-ltz v2, :cond_f

    iget-object v3, v0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->mAnims:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_f

    iget v2, v0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->mSelectedIndex:I

    invoke-virtual {v4, v2}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->scrollToPosition(I)V

    :cond_f
    const v2, 0x7f0a07aa

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    :try_start_0
    iget-object v0, v0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "op_navigation_bar_type"

    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v0, v7, :cond_10

    goto :goto_7

    :cond_10
    :goto_6
    move v12, v5

    goto :goto_7

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_6

    :goto_7
    if-nez v12, :cond_11

    const/4 v0, 0x5

    invoke-virtual {v1, v5, v0, v5, v0}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->requestLayout()V

    :cond_11
    return-void
.end method

.method public onDetached()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    :cond_0
    invoke-super {p0}, Landroidx/preference/Preference;->onDetached()V

    return-void
.end method

.method public saveSelectedAnim()V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->mAnims:Ljava/util/List;

    iget v1, p0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->mSelectedIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference$AnimEntity;

    iget v0, v0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference$AnimEntity;->animIndex:I

    const-string v1, "setAnimStyle value:"

    const-string v2, "VideoPreference"

    invoke-static {v1, v0, v2}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline31(Ljava/lang/String;ILjava/lang/String;)V

    iget-object p0, p0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v1, -0x2

    const-string v2, "op_custom_unlock_animation_style"

    invoke-static {p0, v2, v0, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTrackerForFodAnimStyle()V

    return-void
.end method

.method updateAspectRatio()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->mAspectRadio:F

    return-void
.end method
