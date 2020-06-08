.class Lcom/oneplus/lib/widget/SearchView$5;
.super Ljava/lang/Object;
.source "SearchView.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/widget/SearchView;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/widget/SearchView;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/widget/SearchView$5;->this$0:Lcom/oneplus/lib/widget/SearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/SearchView$5;->this$0:Lcom/oneplus/lib/widget/SearchView;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/SearchView;->adjustDropDownSizeAndPosition()V

    return-void
.end method
