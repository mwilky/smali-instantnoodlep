.class Lcom/oneplus/android/server/scene/OemSceneGameModePanel$1;
.super Landroid/app/UserSwitchObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/android/server/scene/vju;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/android/server/scene/vju;


# direct methods
.method constructor <init>(Lcom/oneplus/android/server/scene/vju;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/scene/OemSceneGameModePanel$1;->this$0:Lcom/oneplus/android/server/scene/vju;

    invoke-direct {p0}, Landroid/app/UserSwitchObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserSwitchComplete(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p1, p0, Lcom/oneplus/android/server/scene/OemSceneGameModePanel$1;->this$0:Lcom/oneplus/android/server/scene/vju;

    invoke-static {p1}, Lcom/oneplus/android/server/scene/vju;->you(Lcom/oneplus/android/server/scene/vju;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/oneplus/android/server/scene/obl;

    invoke-direct {v0, p0}, Lcom/oneplus/android/server/scene/obl;-><init>(Lcom/oneplus/android/server/scene/OemSceneGameModePanel$1;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
