.class public Lcom/oneplus/settings/widget/OPVideoPreference;
.super Landroidx/preference/Preference;
.source "OPVideoPreference.java"


# instance fields
.field private imageView:Landroid/widget/ImageView;

.field private layout:Lcom/android/settings/widget/AspectRatioFrameLayout;

.field mAnimationAvailable:Z

.field private mAspectRadio:F

.field private final mContext:Landroid/content/Context;

.field mMediaPlayer:Landroid/media/MediaPlayer;

.field private mPreviewResource:I

.field private mVideoPath:Landroid/net/Uri;

.field private mVideoPaused:Z

.field private mVideoReady:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/oneplus/settings/widget/OPVideoPreference;->mAspectRadio:F

    iput-object p1, p0, Lcom/oneplus/settings/widget/OPVideoPreference;->mContext:Landroid/content/Context;

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

    iput-object p1, p0, Lcom/oneplus/settings/widget/OPVideoPreference;->mVideoPath:Landroid/net/Uri;

    iget-object p1, p0, Lcom/oneplus/settings/widget/OPVideoPreference;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/oneplus/settings/widget/OPVideoPreference;->mVideoPath:Landroid/net/Uri;

    invoke-static {p1, v0}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaPlayer;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/widget/OPVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object p1, p0, Lcom/oneplus/settings/widget/OPVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oneplus/settings/widget/OPVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    const v0, 0x7f0d026c

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setLayoutResource(I)V

    invoke-virtual {p2, p1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/widget/OPVideoPreference;->mPreviewResource:I

    iget-object v0, p0, Lcom/oneplus/settings/widget/OPVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/oneplus/settings/widget/-$$Lambda$OPVideoPreference$ynCil1Vg3ClpXktrurvZlqx29d4;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/widget/-$$Lambda$OPVideoPreference$ynCil1Vg3ClpXktrurvZlqx29d4;-><init>(Lcom/oneplus/settings/widget/OPVideoPreference;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    iget-object v0, p0, Lcom/oneplus/settings/widget/OPVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    sget-object v1, Lcom/oneplus/settings/widget/-$$Lambda$OPVideoPreference$uc3qMTOa2JodIJYV5EhB8pjdWdg;->INSTANCE:Lcom/oneplus/settings/widget/-$$Lambda$OPVideoPreference$uc3qMTOa2JodIJYV5EhB8pjdWdg;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iput-boolean p1, p0, Lcom/oneplus/settings/widget/OPVideoPreference;->mAnimationAvailable:Z

    invoke-virtual {p0}, Lcom/oneplus/settings/widget/OPVideoPreference;->updateAspectRatio()V

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
    const-string p0, "OPVideoPreference"

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

.method static synthetic access$000(Lcom/oneplus/settings/widget/OPVideoPreference;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/settings/widget/OPVideoPreference;->mVideoReady:Z

    return p0
.end method

.method static synthetic access$002(Lcom/oneplus/settings/widget/OPVideoPreference;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/settings/widget/OPVideoPreference;->mVideoReady:Z

    return p1
.end method

.method static synthetic access$100(Lcom/oneplus/settings/widget/OPVideoPreference;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/widget/OPVideoPreference;->imageView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/oneplus/settings/widget/OPVideoPreference;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/settings/widget/OPVideoPreference;->mVideoPaused:Z

    return p0
.end method

.method static synthetic lambda$new$1(Landroid/media/MediaPlayer;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/media/MediaPlayer;->setLooping(Z)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$new$0$OPVideoPreference(Landroid/media/MediaPlayer;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oneplus/settings/widget/OPVideoPreference;->mVideoReady:Z

    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    iget-boolean v0, p0, Lcom/oneplus/settings/widget/OPVideoPreference;->mAnimationAvailable:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v0, 0x7f0a07ad

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/TextureView;

    const v1, 0x7f0a07aa

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/oneplus/settings/widget/OPVideoPreference;->imageView:Landroid/widget/ImageView;

    const v1, 0x7f0a07a6

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/AspectRatioFrameLayout;

    iput-object p1, p0, Lcom/oneplus/settings/widget/OPVideoPreference;->layout:Lcom/android/settings/widget/AspectRatioFrameLayout;

    iget-object p1, p0, Lcom/oneplus/settings/widget/OPVideoPreference;->imageView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/oneplus/settings/widget/OPVideoPreference;->mPreviewResource:I

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, p0, Lcom/oneplus/settings/widget/OPVideoPreference;->layout:Lcom/android/settings/widget/AspectRatioFrameLayout;

    iget v1, p0, Lcom/oneplus/settings/widget/OPVideoPreference;->mAspectRadio:F

    invoke-virtual {p1, v1}, Lcom/android/settings/widget/AspectRatioFrameLayout;->setAspectRatio(F)V

    iget-object p1, p0, Lcom/oneplus/settings/widget/OPVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    new-instance p1, Lcom/oneplus/settings/widget/OPVideoPreference$1;

    invoke-direct {p1, p0}, Lcom/oneplus/settings/widget/OPVideoPreference$1;-><init>(Lcom/oneplus/settings/widget/OPVideoPreference;)V

    invoke-virtual {v0, p1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    return-void
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/widget/OPVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    iget-object v0, p0, Lcom/oneplus/settings/widget/OPVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    iget-object v0, p0, Lcom/oneplus/settings/widget/OPVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/settings/widget/OPVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    :cond_0
    return-void
.end method

.method public setVideoPaused()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/settings/widget/OPVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/widget/OPVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    iget-object v0, p0, Lcom/oneplus/settings/widget/OPVideoPreference;->imageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/oneplus/settings/widget/OPVideoPreference;->layout:Lcom/android/settings/widget/AspectRatioFrameLayout;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/oneplus/settings/widget/OPVideoPreference;->mPreviewResource:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/oneplus/settings/widget/OPVideoPreference;->imageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/settings/widget/OPVideoPreference;->layout:Lcom/android/settings/widget/AspectRatioFrameLayout;

    iget p0, p0, Lcom/oneplus/settings/widget/OPVideoPreference;->mAspectRadio:F

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/AspectRatioFrameLayout;->setAspectRatio(F)V

    :cond_0
    return-void
.end method

.method public setVideoResume()V
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/settings/widget/OPVideoPreference;->mVideoPaused:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/widget/OPVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/oneplus/settings/widget/OPVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->start()V

    :cond_0
    return-void
.end method

.method updateAspectRatio()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/settings/widget/OPVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/oneplus/settings/widget/OPVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/oneplus/settings/widget/OPVideoPreference;->mAspectRadio:F

    return-void
.end method
