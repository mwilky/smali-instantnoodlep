.class Lcom/oneplus/lib/widget/OPTabLayout$1;
.super Ljava/lang/Object;
.source "OPTabLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/widget/OPTabLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    check-cast p1, Lcom/oneplus/lib/widget/OPTabLayout$TabView;

    invoke-virtual {p1}, Lcom/oneplus/lib/widget/OPTabLayout$TabView;->getTab()Lcom/oneplus/lib/widget/OPTabLayout$Tab;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPTabLayout$Tab;->select()V

    return-void
.end method
