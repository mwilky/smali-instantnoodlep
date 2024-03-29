.class public Lcom/oneplus/settings/widget/OPGraphicsOptimizationPreference;
.super Landroidx/preference/Preference;
.source "OPGraphicsOptimizationPreference.java"


# instance fields
.field mAnimationAvailable:Z

.field private mAspectRadio:F

.field private final mContext:Landroid/content/Context;

.field mMediaPlayer:Landroid/media/MediaPlayer;

.field private mVideoPath:Landroid/net/Uri;

.field private mVideoPaused:Z

.field private mVideoReady:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/oneplus/settings/widget/OPGraphicsOptimizationPreference;->mAspectRadio:F

    iput-object p1, p0, Lcom/oneplus/settings/widget/OPGraphicsOptimizationPreference;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lcom/android/settings/R$styleable;->VideoPreference:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v1, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    :try_start_0
    invoke-virtual {p2, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    const-string v3, "android.resource"

    invoke-virtual {v1, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

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

    iput-object p1, p0, Lcom/oneplus/settings/widget/OPGraphicsOptimizationPreference;->mVideoPath:Landroid/net/Uri;

    iget-object p1, p0, Lcom/oneplus/settings/widget/OPGraphicsOptimizationPreference;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/oneplus/settings/widget/OPGraphicsOptimizationPreference;->mVideoPath:Landroid/net/Uri;

    invoke-static {p1, v0}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaPlayer;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/widget/OPGraphicsOptimizationPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object p1, p0, Lcom/oneplus/settings/widget/OPGraphicsOptimizationPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oneplus/settings/widget/OPGraphicsOptimizationPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    const v0, 0x7f0d01de

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setLayoutResource(I)V

    invoke-virtual {p2, p1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    iget-object v0, p0, Lcom/oneplus/settings/widget/OPGraphicsOptimizationPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/oneplus/settings/widget/-$$Lambda$OPGraphicsOptimizationPreference$GU-BBeQUEtD02iFbJyhbrQmvTYU;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/widget/-$$Lambda$OPGraphicsOptimizationPreference$GU-BBeQUEtD02iFbJyhbrQmvTYU;-><init>(Lcom/oneplus/settings/widget/OPGraphicsOptimizationPreference;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    iget-object v0, p0, Lcom/oneplus/settings/widget/OPGraphicsOptimizationPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    sget-object v1, Lcom/oneplus/settings/widget/-$$Lambda$OPGraphicsOptimizationPreference$WN8lgavhDOjIctbQ2ZfY7ZCHB1c;->INSTANCE:Lcom/oneplus/settings/widget/-$$Lambda$OPGraphicsOptimizationPreference$WN8lgavhDOjIctbQ2ZfY7ZCHB1c;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iput-boolean p1, p0, Lcom/oneplus/settings/widget/OPGraphicsOptimizationPreference;->mAnimationAvailable:Z

    invoke-virtual {p0}, Lcom/oneplus/settings/widget/OPGraphicsOptimizationPreference;->updateAspectRatio()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v2}, Landroidx/preference/Preference;->setVisible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    :try_start_1
    const-string p0, "OPGraphicsOptimizationPreference"

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

.method static synthetic access$000(Lcom/oneplus/settings/widget/OPGraphicsOptimizationPreference;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/settings/widget/OPGraphicsOptimizationPreference;->mVideoReady:Z

    return p0
.end method

.method static synthetic access$002(Lcom/oneplus/settings/widget/OPGraphicsOptimizationPreference;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/settings/widget/OPGraphicsOptimizationPreference;->mVideoReady:Z

    return p1
.end method

.method static synthetic access$100(Lcom/oneplus/settings/widget/OPGraphicsOptimizationPreference;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/settings/widget/OPGraphicsOptimizationPreference;->mVideoPaused:Z

    return p0
.end method

.method static synthetic lambda$new$1(Landroid/media/MediaPlayer;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/media/MediaPlayer;->setLooping(Z)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$new$0$OPGraphicsOptimizationPreference(Landroid/media/MediaPlayer;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oneplus/settings/widget/OPGraphicsOptimizationPreference;->mVideoReady:Z

    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    iget-boolean v0, p0, Lcom/oneplus/settings/widget/OPGraphicsOptimizationPreference;->mAnimationAvailable:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v0, 0x7f0a07ad

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/TextureView;

    iget-object v0, p0, Lcom/oneplus/settings/widget/OPGraphicsOptimizationPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    iget-object v0, p0, Lcom/oneplus/settings/widget/OPGraphicsOptimizationPreference;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/TextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    int-to-float v0, v0

    iget v2, p0, Lcom/oneplus/settings/widget/OPGraphicsOptimizationPreference;->mAspectRadio:F

    div-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    new-instance v0, Lcom/oneplus/settings/widget/OPGraphicsOptimizationPreference$1;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/widget/OPGraphicsOptimizationPreference$1;-><init>(Lcom/oneplus/settings/widget/OPGraphicsOptimizationPreference;)V

    invoke-virtual {p1, v0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    return-void
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/widget/OPGraphicsOptimizationPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    iget-object v0, p0, Lcom/oneplus/settings/widget/OPGraphicsOptimizationPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    iget-object v0, p0, Lcom/oneplus/settings/widget/OPGraphicsOptimizationPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/settings/widget/OPGraphicsOptimizationPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    :cond_0
    return-void
.end method

.method public setVideoPaused()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/widget/OPGraphicsOptimizationPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oneplus/settings/widget/OPGraphicsOptimizationPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->pause()V

    :cond_0
    return-void
.end method

.method public setVideoResume()V
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/settings/widget/OPGraphicsOptimizationPreference;->mVideoPaused:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/widget/OPGraphicsOptimizationPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/oneplus/settings/widget/OPGraphicsOptimizationPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->start()V

    :cond_0
    return-void
.end method

.method updateAspectRatio()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/settings/widget/OPGraphicsOptimizationPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/oneplus/settings/widget/OPGraphicsOptimizationPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/oneplus/settings/widget/OPGraphicsOptimizationPreference;->mAspectRadio:F

    return-void
.end method
