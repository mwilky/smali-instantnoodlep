.class Lcom/android/settings/wifi/WifiConfigController$1;
.super Ljava/util/TimerTask;
.source "WifiConfigController.java"


# instance fields
.field final synthetic val$textview:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiConfigController;Landroid/widget/TextView;)V
    .locals 0

    iput-object p2, p0, Lcom/android/settings/wifi/WifiConfigController$1;->val$textview:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController$1;->val$textview:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigController$1;->val$textview:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method
