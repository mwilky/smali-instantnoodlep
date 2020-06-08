.class Lcom/oneplus/lib/widget/ListPopupWindow$PopupScrollListener;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/ListPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopupScrollListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/widget/ListPopupWindow;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/widget/ListPopupWindow;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/widget/ListPopupWindow$PopupScrollListener;->this$0:Lcom/oneplus/lib/widget/ListPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lcom/oneplus/lib/widget/ListPopupWindow$PopupScrollListener;->this$0:Lcom/oneplus/lib/widget/ListPopupWindow;

    invoke-virtual {p1}, Lcom/oneplus/lib/widget/ListPopupWindow;->isInputMethodNotNeeded()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/oneplus/lib/widget/ListPopupWindow$PopupScrollListener;->this$0:Lcom/oneplus/lib/widget/ListPopupWindow;

    iget-object p1, p1, Lcom/oneplus/lib/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oneplus/lib/widget/ListPopupWindow$PopupScrollListener;->this$0:Lcom/oneplus/lib/widget/ListPopupWindow;

    iget-object p2, p1, Lcom/oneplus/lib/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    iget-object p1, p1, Lcom/oneplus/lib/widget/ListPopupWindow;->mResizePopupRunnable:Lcom/oneplus/lib/widget/ListPopupWindow$ResizePopupRunnable;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/oneplus/lib/widget/ListPopupWindow$PopupScrollListener;->this$0:Lcom/oneplus/lib/widget/ListPopupWindow;

    iget-object p0, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mResizePopupRunnable:Lcom/oneplus/lib/widget/ListPopupWindow$ResizePopupRunnable;

    iget-object p1, p0, Lcom/oneplus/lib/widget/ListPopupWindow$ResizePopupRunnable;->this$0:Lcom/oneplus/lib/widget/ListPopupWindow;

    iget-object p1, p1, Lcom/oneplus/lib/widget/ListPopupWindow;->mDropDownList:Lcom/oneplus/lib/widget/DropDownListView;

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/oneplus/support/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oneplus/lib/widget/ListPopupWindow$ResizePopupRunnable;->this$0:Lcom/oneplus/lib/widget/ListPopupWindow;

    iget-object p1, p1, Lcom/oneplus/lib/widget/ListPopupWindow;->mDropDownList:Lcom/oneplus/lib/widget/DropDownListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->getCount()I

    move-result p1

    iget-object p2, p0, Lcom/oneplus/lib/widget/ListPopupWindow$ResizePopupRunnable;->this$0:Lcom/oneplus/lib/widget/ListPopupWindow;

    iget-object p2, p2, Lcom/oneplus/lib/widget/ListPopupWindow;->mDropDownList:Lcom/oneplus/lib/widget/DropDownListView;

    invoke-virtual {p2}, Landroid/widget/ListView;->getChildCount()I

    move-result p2

    if-le p1, p2, :cond_0

    iget-object p1, p0, Lcom/oneplus/lib/widget/ListPopupWindow$ResizePopupRunnable;->this$0:Lcom/oneplus/lib/widget/ListPopupWindow;

    iget-object p1, p1, Lcom/oneplus/lib/widget/ListPopupWindow;->mDropDownList:Lcom/oneplus/lib/widget/DropDownListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->getChildCount()I

    move-result p1

    iget-object p2, p0, Lcom/oneplus/lib/widget/ListPopupWindow$ResizePopupRunnable;->this$0:Lcom/oneplus/lib/widget/ListPopupWindow;

    iget v0, p2, Lcom/oneplus/lib/widget/ListPopupWindow;->mListItemExpandMaximum:I

    if-gt p1, v0, :cond_0

    iget-object p1, p2, Lcom/oneplus/lib/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    iget-object p0, p0, Lcom/oneplus/lib/widget/ListPopupWindow$ResizePopupRunnable;->this$0:Lcom/oneplus/lib/widget/ListPopupWindow;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/ListPopupWindow;->show()V

    :cond_0
    return-void
.end method
