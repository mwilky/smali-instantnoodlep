.class Lcom/oneplus/android/server/scene/gck;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/android/server/scene/OemSceneAdModeController;->setModeByDefault(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/android/server/scene/OemSceneAdModeController;

.field final synthetic val$enable:Z

.field final synthetic veq:I


# direct methods
.method constructor <init>(Lcom/oneplus/android/server/scene/OemSceneAdModeController;ZI)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/scene/gck;->this$0:Lcom/oneplus/android/server/scene/OemSceneAdModeController;

    iput-boolean p2, p0, Lcom/oneplus/android/server/scene/gck;->val$enable:Z

    iput p3, p0, Lcom/oneplus/android/server/scene/gck;->veq:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/android/server/scene/gck;->this$0:Lcom/oneplus/android/server/scene/OemSceneAdModeController;

    iget-boolean v1, p0, Lcom/oneplus/android/server/scene/gck;->val$enable:Z

    iget p0, p0, Lcom/oneplus/android/server/scene/gck;->veq:I

    invoke-static {v0, v1, p0}, Lcom/oneplus/android/server/scene/OemSceneAdModeController;->access$000(Lcom/oneplus/android/server/scene/OemSceneAdModeController;ZI)V

    return-void
.end method
