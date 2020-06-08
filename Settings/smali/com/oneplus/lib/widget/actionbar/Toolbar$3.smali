.class Lcom/oneplus/lib/widget/actionbar/Toolbar$3;
.super Ljava/lang/Object;
.source "Toolbar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/widget/actionbar/Toolbar;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/widget/actionbar/Toolbar;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar$3;->this$0:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar$3;->this$0:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->collapseActionView()V

    return-void
.end method
