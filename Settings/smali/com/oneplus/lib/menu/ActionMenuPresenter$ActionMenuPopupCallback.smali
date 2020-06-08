.class Lcom/oneplus/lib/menu/ActionMenuPresenter$ActionMenuPopupCallback;
.super Lcom/oneplus/lib/menu/ActionMenuItemView$PopupCallback;
.source "ActionMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/menu/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionMenuPopupCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/menu/ActionMenuPresenter;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/menu/ActionMenuPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter$ActionMenuPopupCallback;->this$0:Lcom/oneplus/lib/menu/ActionMenuPresenter;

    invoke-direct {p0}, Lcom/oneplus/lib/menu/ActionMenuItemView$PopupCallback;-><init>()V

    return-void
.end method
