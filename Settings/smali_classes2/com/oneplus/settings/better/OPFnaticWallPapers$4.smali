.class Lcom/oneplus/settings/better/OPFnaticWallPapers$4;
.super Ljava/lang/Object;
.source "OPFnaticWallPapers.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/better/OPFnaticWallPapers;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/better/OPFnaticWallPapers;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/better/OPFnaticWallPapers$4;->this$0:Lcom/oneplus/settings/better/OPFnaticWallPapers;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    iget-object p2, p0, Lcom/oneplus/settings/better/OPFnaticWallPapers$4;->this$0:Lcom/oneplus/settings/better/OPFnaticWallPapers;

    invoke-static {p2}, Lcom/oneplus/settings/better/OPFnaticWallPapers;->access$800(Lcom/oneplus/settings/better/OPFnaticWallPapers;)Landroid/media/MediaPlayer;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/oneplus/settings/better/OPFnaticWallPapers$4;->this$0:Lcom/oneplus/settings/better/OPFnaticWallPapers;

    invoke-static {p2}, Lcom/oneplus/settings/better/OPFnaticWallPapers;->access$800(Lcom/oneplus/settings/better/OPFnaticWallPapers;)Landroid/media/MediaPlayer;

    move-result-object p2

    new-instance p3, Landroid/view/Surface;

    invoke-direct {p3, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {p2, p3}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPFnaticWallPapers$4;->this$0:Lcom/oneplus/settings/better/OPFnaticWallPapers;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/oneplus/settings/better/OPFnaticWallPapers;->access$902(Lcom/oneplus/settings/better/OPFnaticWallPapers;Z)Z

    iget-object p0, p0, Lcom/oneplus/settings/better/OPFnaticWallPapers$4;->this$0:Lcom/oneplus/settings/better/OPFnaticWallPapers;

    invoke-static {p0}, Lcom/oneplus/settings/better/OPFnaticWallPapers;->access$800(Lcom/oneplus/settings/better/OPFnaticWallPapers;)Landroid/media/MediaPlayer;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/media/MediaPlayer;->seekTo(I)V

    :cond_0
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/better/OPFnaticWallPapers$4;->this$0:Lcom/oneplus/settings/better/OPFnaticWallPapers;

    invoke-static {p0}, Lcom/oneplus/settings/better/OPFnaticWallPapers;->access$1000(Lcom/oneplus/settings/better/OPFnaticWallPapers;)Landroid/widget/ImageView;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    iget-object p1, p0, Lcom/oneplus/settings/better/OPFnaticWallPapers$4;->this$0:Lcom/oneplus/settings/better/OPFnaticWallPapers;

    invoke-static {p1}, Lcom/oneplus/settings/better/OPFnaticWallPapers;->access$900(Lcom/oneplus/settings/better/OPFnaticWallPapers;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oneplus/settings/better/OPFnaticWallPapers$4;->this$0:Lcom/oneplus/settings/better/OPFnaticWallPapers;

    invoke-static {p1}, Lcom/oneplus/settings/better/OPFnaticWallPapers;->access$1000(Lcom/oneplus/settings/better/OPFnaticWallPapers;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/oneplus/settings/better/OPFnaticWallPapers$4;->this$0:Lcom/oneplus/settings/better/OPFnaticWallPapers;

    invoke-static {p0}, Lcom/oneplus/settings/better/OPFnaticWallPapers;->access$1000(Lcom/oneplus/settings/better/OPFnaticWallPapers;)Landroid/widget/ImageView;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method
