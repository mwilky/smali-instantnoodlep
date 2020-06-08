.class Lcom/android/settings/FallbackHome$3;
.super Landroid/os/AsyncTask;
.source "FallbackHome.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/FallbackHome;

.field final synthetic val$flags:I


# direct methods
.method constructor <init>(Lcom/android/settings/FallbackHome;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/FallbackHome$3;->this$0:Lcom/android/settings/FallbackHome;

    iput p2, p0, Lcom/android/settings/FallbackHome$3;->val$flags:I

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object p1, p0, Lcom/android/settings/FallbackHome$3;->this$0:Lcom/android/settings/FallbackHome;

    invoke-static {p1}, Lcom/android/settings/FallbackHome;->access$100(Lcom/android/settings/FallbackHome;)Landroid/app/WallpaperManager;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/WallpaperManager;->getWallpaperColors(I)Landroid/app/WallpaperColors;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/FallbackHome$3;->this$0:Lcom/android/settings/FallbackHome;

    invoke-static {p1}, Lcom/android/settings/FallbackHome;->access$100(Lcom/android/settings/FallbackHome;)Landroid/app/WallpaperManager;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/FallbackHome$3;->this$0:Lcom/android/settings/FallbackHome;

    invoke-static {p0}, Lcom/android/settings/FallbackHome;->access$300(Lcom/android/settings/FallbackHome;)Landroid/app/WallpaperManager$OnColorsChangedListener;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/app/WallpaperManager;->addOnColorsChangedListener(Landroid/app/WallpaperManager$OnColorsChangedListener;Landroid/os/Handler;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/FallbackHome$3;->this$0:Lcom/android/settings/FallbackHome;

    iget p0, p0, Lcom/android/settings/FallbackHome$3;->val$flags:I

    invoke-static {v0, p1, p0}, Lcom/android/settings/FallbackHome;->access$000(Lcom/android/settings/FallbackHome;Landroid/app/WallpaperColors;I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/settings/FallbackHome$3;->this$0:Lcom/android/settings/FallbackHome;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :goto_0
    return-void
.end method
