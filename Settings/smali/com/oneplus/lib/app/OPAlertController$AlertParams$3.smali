.class Lcom/oneplus/lib/app/OPAlertController$AlertParams$3;
.super Ljava/lang/Object;
.source "OPAlertController.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

.field final synthetic val$dialog:Lcom/oneplus/lib/app/OPAlertController;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/app/OPAlertController$AlertParams;Lcom/oneplus/lib/app/OPAlertController;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/app/OPAlertController$AlertParams$3;->this$0:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput-object p2, p0, Lcom/oneplus/lib/app/OPAlertController$AlertParams$3;->val$dialog:Lcom/oneplus/lib/app/OPAlertController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/oneplus/lib/app/OPAlertController$AlertParams$3;->this$0:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iget-object p1, p1, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    iget-object p2, p0, Lcom/oneplus/lib/app/OPAlertController$AlertParams$3;->val$dialog:Lcom/oneplus/lib/app/OPAlertController;

    invoke-static {p2}, Lcom/oneplus/lib/app/OPAlertController;->access$600(Lcom/oneplus/lib/app/OPAlertController;)Landroid/content/DialogInterface;

    move-result-object p2

    invoke-interface {p1, p2, p3}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    iget-object p1, p0, Lcom/oneplus/lib/app/OPAlertController$AlertParams$3;->this$0:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iget-boolean p1, p1, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mIsSingleChoice:Z

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/oneplus/lib/app/OPAlertController$AlertParams$3;->val$dialog:Lcom/oneplus/lib/app/OPAlertController;

    invoke-static {p0}, Lcom/oneplus/lib/app/OPAlertController;->access$600(Lcom/oneplus/lib/app/OPAlertController;)Landroid/content/DialogInterface;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    :cond_0
    return-void
.end method
