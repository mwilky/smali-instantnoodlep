.class Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference$2;
.super Ljava/lang/Object;
.source "OPCustomNotificationAnimVideoPreference.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;

.field final synthetic val$imageView:Landroid/widget/ImageView;

.field final synthetic val$playButton:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference$2;->this$0:Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;

    iput-object p2, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference$2;->val$imageView:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference$2;->val$playButton:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    iget-object p2, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference$2;->this$0:Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;

    iget-object p2, p2, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz p2, :cond_0

    new-instance p3, Landroid/view/Surface;

    invoke-direct {p3, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {p2, p3}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    iget-object p1, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference$2;->this$0:Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->access$002(Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;Z)Z

    iget-object p0, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference$2;->this$0:Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;

    iget-object p0, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0, p2}, Landroid/media/MediaPlayer;->seekTo(I)V

    :cond_0
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference$2;->val$imageView:Landroid/widget/ImageView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    iget-object p1, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference$2;->this$0:Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;

    invoke-static {p1}, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->access$000(Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference$2;->val$imageView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    const/16 v0, 0x8

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference$2;->val$imageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference$2;->this$0:Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;

    invoke-static {p1}, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->access$100(Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference$2;->this$0:Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;

    iget-object p1, p1, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference$2;->this$0:Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;

    iget-object p1, p1, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    iget-object p1, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference$2;->val$playButton:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference$2;->this$0:Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;

    iget-object p1, p1, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p0, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference$2;->val$playButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getVisibility()I

    :cond_2
    return-void
.end method
