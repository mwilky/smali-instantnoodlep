.class Lcom/oneplus/lib/widget/AutoCompleteTextView$PopupDataSetObserver$1;
.super Ljava/lang/Object;
.source "AutoCompleteTextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/AutoCompleteTextView$PopupDataSetObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/widget/AutoCompleteTextView$PopupDataSetObserver;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/widget/AutoCompleteTextView$PopupDataSetObserver;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView$PopupDataSetObserver$1;->this$0:Lcom/oneplus/lib/widget/AutoCompleteTextView$PopupDataSetObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object p0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView$PopupDataSetObserver$1;->this$0:Lcom/oneplus/lib/widget/AutoCompleteTextView$PopupDataSetObserver;

    invoke-static {p0}, Lcom/oneplus/lib/widget/AutoCompleteTextView$PopupDataSetObserver;->access$800(Lcom/oneplus/lib/widget/AutoCompleteTextView$PopupDataSetObserver;)Ljava/lang/ref/WeakReference;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->access$700(Lcom/oneplus/lib/widget/AutoCompleteTextView;)Landroid/widget/ListAdapter;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    invoke-static {p0, v0}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->access$900(Lcom/oneplus/lib/widget/AutoCompleteTextView;I)V

    return-void
.end method
