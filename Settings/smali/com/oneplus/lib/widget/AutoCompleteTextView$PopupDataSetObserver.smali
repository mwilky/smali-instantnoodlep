.class Lcom/oneplus/lib/widget/AutoCompleteTextView$PopupDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "AutoCompleteTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/AutoCompleteTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PopupDataSetObserver"
.end annotation


# instance fields
.field private final mViewReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/oneplus/lib/widget/AutoCompleteTextView;",
            ">;"
        }
    .end annotation
.end field

.field private final updateRunnable:Ljava/lang/Runnable;


# direct methods
.method synthetic constructor <init>(Lcom/oneplus/lib/widget/AutoCompleteTextView;Lcom/oneplus/lib/widget/AutoCompleteTextView$1;)V
    .locals 0

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    new-instance p2, Lcom/oneplus/lib/widget/AutoCompleteTextView$PopupDataSetObserver$1;

    invoke-direct {p2, p0}, Lcom/oneplus/lib/widget/AutoCompleteTextView$PopupDataSetObserver$1;-><init>(Lcom/oneplus/lib/widget/AutoCompleteTextView$PopupDataSetObserver;)V

    iput-object p2, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView$PopupDataSetObserver;->updateRunnable:Ljava/lang/Runnable;

    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView$PopupDataSetObserver;->mViewReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic access$800(Lcom/oneplus/lib/widget/AutoCompleteTextView$PopupDataSetObserver;)Ljava/lang/ref/WeakReference;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView$PopupDataSetObserver;->mViewReference:Ljava/lang/ref/WeakReference;

    return-object p0
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView$PopupDataSetObserver;->mViewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/widget/AutoCompleteTextView;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->access$700(Lcom/oneplus/lib/widget/AutoCompleteTextView;)Landroid/widget/ListAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView$PopupDataSetObserver;->updateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
