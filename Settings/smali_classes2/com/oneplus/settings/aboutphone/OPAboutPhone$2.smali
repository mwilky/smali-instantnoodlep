.class Lcom/oneplus/settings/aboutphone/OPAboutPhone$2;
.super Ljava/lang/Object;
.source "OPAboutPhone.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/aboutphone/OPAboutPhone;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/aboutphone/OPAboutPhone;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhone$2;->this$0:Lcom/oneplus/settings/aboutphone/OPAboutPhone;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhone$2;->this$0:Lcom/oneplus/settings/aboutphone/OPAboutPhone;

    invoke-static {p0}, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->access$200(Lcom/oneplus/settings/aboutphone/OPAboutPhone;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    return p1
.end method
