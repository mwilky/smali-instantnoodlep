.class Landroid/support/v4/media/MediaController2ImplLegacy$3$1;
.super Ljava/lang/Object;
.source "MediaController2ImplLegacy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/media/MediaController2ImplLegacy$3;->onReceiveResult(ILandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/support/v4/media/MediaController2ImplLegacy$3;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaController2ImplLegacy$3;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/media/MediaController2ImplLegacy$3$1;->this$1:Landroid/support/v4/media/MediaController2ImplLegacy$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/MediaController2ImplLegacy$3$1;->this$1:Landroid/support/v4/media/MediaController2ImplLegacy$3;

    iget-object v0, v0, Landroid/support/v4/media/MediaController2ImplLegacy$3;->this$0:Landroid/support/v4/media/MediaController2ImplLegacy;

    invoke-static {}, Landroid/support/v4/media/MediaController2ImplLegacy;->access$100()V

    iget-object p0, p0, Landroid/support/v4/media/MediaController2ImplLegacy$3$1;->this$1:Landroid/support/v4/media/MediaController2ImplLegacy$3;

    iget-object p0, p0, Landroid/support/v4/media/MediaController2ImplLegacy$3;->this$0:Landroid/support/v4/media/MediaController2ImplLegacy;

    const/4 p0, 0x0

    throw p0
.end method
