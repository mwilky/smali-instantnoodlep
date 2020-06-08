.class public Lcom/oneplus/settings/better/OPFnaticWallPapers;
.super Lcom/oneplus/settings/BaseActivity;
.source "OPFnaticWallPapers.java"


# instance fields
.field private imageView:Landroid/widget/ImageView;

.field private layout:Lcom/android/settings/widget/AspectRatioFrameLayout;

.field private mAspectRadio:F

.field private mHeadView:Landroid/widget/TextView;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mNextButton:Landroid/widget/Button;

.field private mVideoLayout:Landroid/view/View;

.field private mVideoPath:Landroid/net/Uri;

.field private mVideoPaused:Z

.field private mVideoReady:Z

.field private mWallPaperLayout:Landroid/view/View;

.field private mWallPaperViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mWallPapers:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/oneplus/settings/BaseActivity;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/oneplus/settings/better/OPFnaticWallPapers;->mWallPapers:[I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/better/OPFnaticWallPapers;->mWallPaperViews:Ljava/util/ArrayList;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/oneplus/settings/better/OPFnaticWallPapers;->mAspectRadio:F

    new-instance v0, Lcom/oneplus/settings/better/OPFnaticWallPapers$2;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/better/OPFnaticWallPapers$2;-><init>(Lcom/oneplus/settings/better/OPFnaticWallPapers;)V

    return-void

    :array_0
    .array-data 4
        0x7f080177
        0x7f080178
        0x7f080179
    .end array-data
.end method

.method static synthetic access$000(Lcom/oneplus/settings/better/OPFnaticWallPapers;)I
    .locals 3

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, -0x2

    const-string v2, "fnatic_mode_egg_activated"

    invoke-static {p0, v2, v0, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method static synthetic access$1000(Lcom/oneplus/settings/better/OPFnaticWallPapers;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/better/OPFnaticWallPapers;->imageView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/oneplus/settings/better/OPFnaticWallPapers;)[I
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/better/OPFnaticWallPapers;->mWallPapers:[I

    return-object p0
.end method

.method static synthetic access$300(Lcom/oneplus/settings/better/OPFnaticWallPapers;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/settings/better/OPFnaticWallPapers;->updateNextButtonState()V

    return-void
.end method

.method static synthetic access$400(Lcom/oneplus/settings/better/OPFnaticWallPapers;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/settings/better/OPFnaticWallPapers;->gotoWallPaperPickerActivity()V

    return-void
.end method

.method static synthetic access$500(Lcom/oneplus/settings/better/OPFnaticWallPapers;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/better/OPFnaticWallPapers;->mWallPaperViews:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$600(Lcom/oneplus/settings/better/OPFnaticWallPapers;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/better/OPFnaticWallPapers;->mVideoLayout:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$700(Lcom/oneplus/settings/better/OPFnaticWallPapers;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/better/OPFnaticWallPapers;->mWallPaperLayout:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$800(Lcom/oneplus/settings/better/OPFnaticWallPapers;)Landroid/media/MediaPlayer;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/better/OPFnaticWallPapers;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method static synthetic access$900(Lcom/oneplus/settings/better/OPFnaticWallPapers;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/settings/better/OPFnaticWallPapers;->mVideoReady:Z

    return p0
.end method

.method static synthetic access$902(Lcom/oneplus/settings/better/OPFnaticWallPapers;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/settings/better/OPFnaticWallPapers;->mVideoReady:Z

    return p1
.end method

.method private gotoWallPaperPickerActivity()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SET_WALLPAPER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "net.oneplus.launcher"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "from_easter_egg_page"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static synthetic lambda$initMediaPlayer$1(Landroid/media/MediaPlayer;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/media/MediaPlayer;->setLooping(Z)V

    return-void
.end method

.method private updateNextButtonState()V
    .locals 5

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x2

    const/4 v2, 0x0

    const-string v3, "fnatic_mode_egg_activated"

    invoke-static {v0, v3, v2, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/oneplus/settings/better/OPFnaticWallPapers;->mNextButton:Landroid/widget/Button;

    const v0, 0x7f120d81

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setText(I)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/better/OPFnaticWallPapers;->mNextButton:Landroid/widget/Button;

    const v3, 0x7f120d74

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/oneplus/settings/better/OPFnaticWallPapers;->mWallPapers:[I

    array-length v4, v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-virtual {p0, v3, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public synthetic lambda$initMediaPlayer$0$OPFnaticWallPapers(Landroid/media/MediaPlayer;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oneplus/settings/better/OPFnaticWallPapers;->mVideoReady:Z

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/oneplus/settings/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d01c5

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    const-string v1, ""

    invoke-virtual {p1, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    const p1, 0x7f0a0290

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/better/OPFnaticWallPapers;->mWallPaperLayout:Landroid/view/View;

    const p1, 0x7f0a02e3

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/oneplus/settings/better/OPFnaticWallPapers;->mHeadView:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/oneplus/settings/better/OPFnaticWallPapers;->mHeadView:Landroid/widget/TextView;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/oneplus/settings/better/OPFnaticWallPapers;->mWallPapers:[I

    array-length v2, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const v2, 0x7f120d80

    invoke-virtual {p0, v2, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f0a045c

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/oneplus/settings/better/OPFnaticWallPapers;->mNextButton:Landroid/widget/Button;

    iget-object p1, p0, Lcom/oneplus/settings/better/OPFnaticWallPapers;->mNextButton:Landroid/widget/Button;

    new-instance v1, Lcom/oneplus/settings/better/OPFnaticWallPapers$1;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/better/OPFnaticWallPapers$1;-><init>(Lcom/oneplus/settings/better/OPFnaticWallPapers;)V

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a0292

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/viewpager/widget/ViewPager;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iget-object v1, p0, Lcom/oneplus/settings/better/OPFnaticWallPapers;->mWallPaperViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/oneplus/settings/better/OPFnaticWallPapers;->mWallPapers:[I

    array-length v2, v2

    if-ge v1, v2, :cond_0

    const v2, 0x7f0d01c4

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0a028f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/oneplus/settings/better/OPFnaticWallPapers;->mWallPapers:[I

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v3, p0, Lcom/oneplus/settings/better/OPFnaticWallPapers;->mWallPaperViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const p1, 0x7f0a028e

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/better/OPFnaticWallPapers;->mVideoLayout:Landroid/view/View;

    new-instance p1, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p1, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    iget-object v1, p0, Lcom/oneplus/settings/better/OPFnaticWallPapers;->mVideoLayout:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :try_start_0
    new-instance p1, Landroid/net/Uri$Builder;

    invoke-direct {p1}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "android.resource"

    invoke-virtual {p1, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    const v1, 0x7f11000a

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/better/OPFnaticWallPapers;->mVideoPath:Landroid/net/Uri;

    iget-object p1, p0, Lcom/oneplus/settings/better/OPFnaticWallPapers;->mVideoPath:Landroid/net/Uri;

    invoke-static {p0, p1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaPlayer;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/better/OPFnaticWallPapers;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object p1, p0, Lcom/oneplus/settings/better/OPFnaticWallPapers;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oneplus/settings/better/OPFnaticWallPapers;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result p1

    if-lez p1, :cond_1

    iget-object p1, p0, Lcom/oneplus/settings/better/OPFnaticWallPapers;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v0, Lcom/oneplus/settings/better/-$$Lambda$OPFnaticWallPapers$addNcANW3El0e9XKqAj5iPLWAoU;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/better/-$$Lambda$OPFnaticWallPapers$addNcANW3El0e9XKqAj5iPLWAoU;-><init>(Lcom/oneplus/settings/better/OPFnaticWallPapers;)V

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPFnaticWallPapers;->mMediaPlayer:Landroid/media/MediaPlayer;

    sget-object v0, Lcom/oneplus/settings/better/-$$Lambda$OPFnaticWallPapers$ceFLfLCph-KLYewvMbZCy7tA5p0;->INSTANCE:Lcom/oneplus/settings/better/-$$Lambda$OPFnaticWallPapers$ceFLfLCph-KLYewvMbZCy7tA5p0;

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPFnaticWallPapers;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v0, Lcom/oneplus/settings/better/OPFnaticWallPapers$3;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/better/OPFnaticWallPapers$3;-><init>(Lcom/oneplus/settings/better/OPFnaticWallPapers;)V

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPFnaticWallPapers;->updateAspectRatio()V

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setVisible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string p1, "OPFnaticWallPapers"

    const-string v0, "Animation resource not found. Will not show animation."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const p1, 0x7f0a07b0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/TextureView;

    const v0, 0x7f0a07ad

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/settings/better/OPFnaticWallPapers;->imageView:Landroid/widget/ImageView;

    const v0, 0x7f0a07a9

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/AspectRatioFrameLayout;

    iput-object v0, p0, Lcom/oneplus/settings/better/OPFnaticWallPapers;->layout:Lcom/android/settings/widget/AspectRatioFrameLayout;

    iget-object v0, p0, Lcom/oneplus/settings/better/OPFnaticWallPapers;->layout:Lcom/android/settings/widget/AspectRatioFrameLayout;

    iget v1, p0, Lcom/oneplus/settings/better/OPFnaticWallPapers;->mAspectRadio:F

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/AspectRatioFrameLayout;->setAspectRatio(F)V

    new-instance v0, Lcom/oneplus/settings/better/OPFnaticWallPapers$4;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/better/OPFnaticWallPapers$4;-><init>(Lcom/oneplus/settings/better/OPFnaticWallPapers;)V

    invoke-virtual {p1, v0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPFnaticWallPapers;->releaseMediaPlayer()V

    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPFnaticWallPapers;->setVideoPaused()V

    return-void
.end method

.method public onResume()V
    .locals 6

    const-string v0, "com.android.systemui"

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "dock_forced_resizable"

    const-string v5, "string"

    invoke-virtual {v3, v4, v5, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPFnaticWallPapers;->setVideoResume()V

    invoke-direct {p0}, Lcom/oneplus/settings/better/OPFnaticWallPapers;->updateNextButtonState()V

    return-void
.end method

.method public releaseMediaPlayer()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/better/OPFnaticWallPapers;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    iget-object v0, p0, Lcom/oneplus/settings/better/OPFnaticWallPapers;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    iget-object v0, p0, Lcom/oneplus/settings/better/OPFnaticWallPapers;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/settings/better/OPFnaticWallPapers;->mMediaPlayer:Landroid/media/MediaPlayer;

    :cond_0
    return-void
.end method

.method public setVideoPaused()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/better/OPFnaticWallPapers;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/better/OPFnaticWallPapers;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/better/OPFnaticWallPapers;->layout:Lcom/android/settings/widget/AspectRatioFrameLayout;

    if-eqz v0, :cond_1

    iget p0, p0, Lcom/oneplus/settings/better/OPFnaticWallPapers;->mAspectRadio:F

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/AspectRatioFrameLayout;->setAspectRatio(F)V

    :cond_1
    return-void
.end method

.method public setVideoResume()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/better/OPFnaticWallPapers;->mWallPaperLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/settings/better/OPFnaticWallPapers;->mVideoPaused:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/settings/better/OPFnaticWallPapers;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/oneplus/settings/better/OPFnaticWallPapers;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->start()V

    :cond_1
    return-void
.end method

.method updateAspectRatio()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/settings/better/OPFnaticWallPapers;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/oneplus/settings/better/OPFnaticWallPapers;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/oneplus/settings/better/OPFnaticWallPapers;->mAspectRadio:F

    return-void
.end method
