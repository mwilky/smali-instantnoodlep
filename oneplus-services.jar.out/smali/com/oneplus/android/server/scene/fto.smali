.class Lcom/oneplus/android/server/scene/fto;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/android/server/scene/vju;->Rb(Z)V
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

    iput-object p1, p0, Lcom/oneplus/android/server/scene/fto;->this$0:Lcom/oneplus/android/server/scene/vju;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/oneplus/android/server/scene/fto;->this$0:Lcom/oneplus/android/server/scene/vju;

    invoke-static {p1}, Lcom/oneplus/android/server/scene/vju;->sis(Lcom/oneplus/android/server/scene/vju;)Lcom/oneplus/android/server/scene/bud;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oneplus/android/server/scene/fto;->this$0:Lcom/oneplus/android/server/scene/vju;

    invoke-static {p1}, Lcom/oneplus/android/server/scene/vju;->sis(Lcom/oneplus/android/server/scene/vju;)Lcom/oneplus/android/server/scene/bud;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/oneplus/android/server/scene/fto;->this$0:Lcom/oneplus/android/server/scene/vju;

    invoke-static {p1}, Lcom/oneplus/android/server/scene/vju;->rtg(Lcom/oneplus/android/server/scene/vju;)Landroid/view/WindowManager;

    move-result-object p1

    iget-object v0, p0, Lcom/oneplus/android/server/scene/fto;->this$0:Lcom/oneplus/android/server/scene/vju;

    invoke-static {v0}, Lcom/oneplus/android/server/scene/vju;->sis(Lcom/oneplus/android/server/scene/vju;)Lcom/oneplus/android/server/scene/bud;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    iget-object p0, p0, Lcom/oneplus/android/server/scene/fto;->this$0:Lcom/oneplus/android/server/scene/vju;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/oneplus/android/server/scene/vju;->zta(Lcom/oneplus/android/server/scene/vju;Lcom/oneplus/android/server/scene/bud;)Lcom/oneplus/android/server/scene/bud;

    :cond_0
    return-void
.end method
