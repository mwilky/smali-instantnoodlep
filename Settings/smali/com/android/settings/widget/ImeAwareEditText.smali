.class public Lcom/android/settings/widget/ImeAwareEditText;
.super Landroid/widget/EditText;
.source "ImeAwareEditText.java"


# instance fields
.field private mHasPendingShowSoftInputRequest:Z

.field final mRunShowSoftInputIfNecessary:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Lcom/android/settings/widget/-$$Lambda$ImeAwareEditText$jSRw3KSZxc80AfkP8GTCtV5_bRY;

    invoke-direct {p1, p0}, Lcom/android/settings/widget/-$$Lambda$ImeAwareEditText$jSRw3KSZxc80AfkP8GTCtV5_bRY;-><init>(Lcom/android/settings/widget/ImeAwareEditText;)V

    iput-object p1, p0, Lcom/android/settings/widget/ImeAwareEditText;->mRunShowSoftInputIfNecessary:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Lcom/android/settings/widget/-$$Lambda$ImeAwareEditText$jSRw3KSZxc80AfkP8GTCtV5_bRY;

    invoke-direct {p1, p0}, Lcom/android/settings/widget/-$$Lambda$ImeAwareEditText$jSRw3KSZxc80AfkP8GTCtV5_bRY;-><init>(Lcom/android/settings/widget/ImeAwareEditText;)V

    iput-object p1, p0, Lcom/android/settings/widget/ImeAwareEditText;->mRunShowSoftInputIfNecessary:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Lcom/android/settings/widget/-$$Lambda$ImeAwareEditText$jSRw3KSZxc80AfkP8GTCtV5_bRY;

    invoke-direct {p1, p0}, Lcom/android/settings/widget/-$$Lambda$ImeAwareEditText$jSRw3KSZxc80AfkP8GTCtV5_bRY;-><init>(Lcom/android/settings/widget/ImeAwareEditText;)V

    iput-object p1, p0, Lcom/android/settings/widget/ImeAwareEditText;->mRunShowSoftInputIfNecessary:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance p1, Lcom/android/settings/widget/-$$Lambda$ImeAwareEditText$jSRw3KSZxc80AfkP8GTCtV5_bRY;

    invoke-direct {p1, p0}, Lcom/android/settings/widget/-$$Lambda$ImeAwareEditText$jSRw3KSZxc80AfkP8GTCtV5_bRY;-><init>(Lcom/android/settings/widget/ImeAwareEditText;)V

    iput-object p1, p0, Lcom/android/settings/widget/ImeAwareEditText;->mRunShowSoftInputIfNecessary:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public synthetic lambda$new$0$ImeAwareEditText()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/settings/widget/ImeAwareEditText;->mHasPendingShowSoftInputRequest:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    iput-boolean v1, p0, Lcom/android/settings/widget/ImeAwareEditText;->mHasPendingShowSoftInputRequest:Z

    invoke-virtual {p0}, Landroid/widget/EditText;->requestFocus()Z

    :cond_0
    return-void
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/EditText;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    iget-boolean v0, p0, Lcom/android/settings/widget/ImeAwareEditText;->mHasPendingShowSoftInputRequest:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/widget/ImeAwareEditText;->mRunShowSoftInputIfNecessary:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/android/settings/widget/ImeAwareEditText;->mRunShowSoftInputIfNecessary:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-object p1
.end method

.method public scheduleShowSoftInput()V
    .locals 3

    invoke-virtual {p0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/widget/ImeAwareEditText;->mHasPendingShowSoftInputRequest:Z

    iget-object v2, p0, Lcom/android/settings/widget/ImeAwareEditText;->mRunShowSoftInputIfNecessary:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Landroid/widget/EditText;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    invoke-virtual {p0}, Landroid/widget/EditText;->requestFocus()Z

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/widget/ImeAwareEditText;->mHasPendingShowSoftInputRequest:Z

    return-void
.end method
