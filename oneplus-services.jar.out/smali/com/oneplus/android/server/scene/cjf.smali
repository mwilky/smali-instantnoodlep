.class Lcom/oneplus/android/server/scene/cjf;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/android/server/scene/vju;->Hv()V
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

    iput-object p1, p0, Lcom/oneplus/android/server/scene/cjf;->this$0:Lcom/oneplus/android/server/scene/vju;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/oneplus/android/server/scene/cjf;->this$0:Lcom/oneplus/android/server/scene/vju;

    invoke-static {v0}, Lcom/oneplus/android/server/scene/vju;->sis(Lcom/oneplus/android/server/scene/vju;)Lcom/oneplus/android/server/scene/bud;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oneplus/android/server/scene/cjf;->this$0:Lcom/oneplus/android/server/scene/vju;

    invoke-static {p0}, Lcom/oneplus/android/server/scene/vju;->sis(Lcom/oneplus/android/server/scene/vju;)Lcom/oneplus/android/server/scene/bud;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    :cond_0
    return-void
.end method
