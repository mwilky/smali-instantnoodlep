.class Lcom/android/settings/inputmethod/VirtualKeyboardFragment$WindowFocusChangeListener;
.super Ljava/lang/Object;
.source "VirtualKeyboardFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/inputmethod/VirtualKeyboardFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WindowFocusChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/inputmethod/VirtualKeyboardFragment;


# direct methods
.method synthetic constructor <init>(Lcom/android/settings/inputmethod/VirtualKeyboardFragment;Lcom/android/settings/inputmethod/VirtualKeyboardFragment$1;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/inputmethod/VirtualKeyboardFragment$WindowFocusChangeListener;->this$0:Lcom/android/settings/inputmethod/VirtualKeyboardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWindowFocusChanged(Z)V
    .locals 2

    const-string v0, "onWindowFocusChanged"

    const-string v1, "VirtualKeyboardFragment"

    invoke-static {v0, p1, v1}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline43(Ljava/lang/String;ZLjava/lang/String;)V

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/settings/inputmethod/VirtualKeyboardFragment$WindowFocusChangeListener;->this$0:Lcom/android/settings/inputmethod/VirtualKeyboardFragment;

    invoke-static {p0}, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->access$000(Lcom/android/settings/inputmethod/VirtualKeyboardFragment;)V

    :cond_0
    return-void
.end method
