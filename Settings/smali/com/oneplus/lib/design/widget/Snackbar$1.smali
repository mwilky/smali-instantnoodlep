.class Lcom/oneplus/lib/design/widget/Snackbar$1;
.super Ljava/lang/Object;
.source "Snackbar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/lib/design/widget/Snackbar;->setAction(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/oneplus/lib/design/widget/Snackbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/design/widget/Snackbar;

.field final synthetic val$listener:Landroid/view/View$OnClickListener;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/design/widget/Snackbar;Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/design/widget/Snackbar$1;->this$0:Lcom/oneplus/lib/design/widget/Snackbar;

    iput-object p2, p0, Lcom/oneplus/lib/design/widget/Snackbar$1;->val$listener:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/Snackbar$1;->val$listener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    iget-object p0, p0, Lcom/oneplus/lib/design/widget/Snackbar$1;->this$0:Lcom/oneplus/lib/design/widget/Snackbar;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;->dispatchDismiss(I)V

    return-void
.end method
