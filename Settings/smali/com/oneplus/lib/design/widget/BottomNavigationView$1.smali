.class Lcom/oneplus/lib/design/widget/BottomNavigationView$1;
.super Ljava/lang/Object;
.source "BottomNavigationView.java"

# interfaces
.implements Lcom/oneplus/lib/menu/MenuBuilder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/lib/design/widget/BottomNavigationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/design/widget/BottomNavigationView;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/design/widget/BottomNavigationView;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView$1;->this$0:Lcom/oneplus/lib/design/widget/BottomNavigationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemSelected(Lcom/oneplus/lib/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView$1;->this$0:Lcom/oneplus/lib/design/widget/BottomNavigationView;

    invoke-static {p0}, Lcom/oneplus/lib/design/widget/BottomNavigationView;->access$000(Lcom/oneplus/lib/design/widget/BottomNavigationView;)V

    const/4 p0, 0x0

    return p0
.end method

.method public onMenuModeChange(Lcom/oneplus/lib/menu/MenuBuilder;)V
    .locals 0

    return-void
.end method
