.class Lcom/oneplus/lib/design/widget/OPTextInputLayout$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "OPTextInputLayout.java"


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/design/widget/OPTextInputLayout;

.field final synthetic val$error:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/design/widget/OPTextInputLayout;Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout$3;->this$0:Lcom/oneplus/lib/design/widget/OPTextInputLayout;

    iput-object p2, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout$3;->val$error:Ljava/lang/CharSequence;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout$3;->this$0:Lcom/oneplus/lib/design/widget/OPTextInputLayout;

    iget-object p1, p1, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout$3;->val$error:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout$3;->this$0:Lcom/oneplus/lib/design/widget/OPTextInputLayout;

    iget-object p0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorView:Landroid/widget/TextView;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method