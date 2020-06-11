.class public Lcom/oneplus/support/core/fragment/app/DialogFragment;
.super Lcom/oneplus/support/core/fragment/app/Fragment;
.source "DialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/support/core/fragment/app/DialogFragment$DialogStyle;
    }
.end annotation


# static fields
.field private static final SAVED_BACK_STACK_ID:Ljava/lang/String; = "android:backStackId"

.field private static final SAVED_CANCELABLE:Ljava/lang/String; = "android:cancelable"

.field private static final SAVED_DIALOG_STATE_TAG:Ljava/lang/String; = "android:savedDialogState"

.field private static final SAVED_SHOWS_DIALOG:Ljava/lang/String; = "android:showsDialog"

.field private static final SAVED_STYLE:Ljava/lang/String; = "android:style"

.field private static final SAVED_THEME:Ljava/lang/String; = "android:theme"

.field public static final STYLE_NORMAL:I = 0x0

.field public static final STYLE_NO_FRAME:I = 0x2

.field public static final STYLE_NO_INPUT:I = 0x3

.field public static final STYLE_NO_TITLE:I = 0x1


# instance fields
.field mBackStackId:I

.field mCancelable:Z

.field mDialog:Landroid/app/Dialog;

.field mDismissed:Z

.field mShownByMe:Z

.field mShowsDialog:Z

.field mStyle:I

.field mTheme:I

.field mViewDestroyed:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/oneplus/support/core/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/support/core/fragment/app/DialogFragment;->mStyle:I

    iput v0, p0, Lcom/oneplus/support/core/fragment/app/DialogFragment;->mTheme:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/DialogFragment;->mCancelable:Z

    iput-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/DialogFragment;->mShowsDialog:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/support/core/fragment/app/DialogFragment;->mBackStackId:I

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oneplus/support/core/fragment/app/DialogFragment;->dismissInternal(Z)V

    return-void
.end method

.method public dismissAllowingStateLoss()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oneplus/support/core/fragment/app/DialogFragment;->dismissInternal(Z)V

    return-void
.end method

.method dismissInternal(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/DialogFragment;->mDismissed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/DialogFragment;->mDismissed:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oneplus/support/core/fragment/app/DialogFragment;->mShownByMe:Z

    iget-object v1, p0, Lcom/oneplus/support/core/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    :cond_1
    iput-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/DialogFragment;->mViewDestroyed:Z

    iget v1, p0, Lcom/oneplus/support/core/fragment/app/DialogFragment;->mBackStackId:I

    if-ltz v1, :cond_2

    invoke-virtual {p0}, Lcom/oneplus/support/core/fragment/app/DialogFragment;->getFragmentManager()Lcom/oneplus/support/core/fragment/app/FragmentManager;

    move-result-object v1

    iget v2, p0, Lcom/oneplus/support/core/fragment/app/DialogFragment;->mBackStackId:I

    invoke-virtual {v1, v2, v0}, Lcom/oneplus/support/core/fragment/app/FragmentManager;->popBackStack(II)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/support/core/fragment/app/DialogFragment;->mBackStackId:I

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/support/core/fragment/app/DialogFragment;->getFragmentManager()Lcom/oneplus/support/core/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/FragmentManager;->beginTransaction()Lcom/oneplus/support/core/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oneplus/support/core/fragment/app/FragmentTransaction;->remove(Lcom/oneplus/support/core/fragment/app/Fragment;)Lcom/oneplus/support/core/fragment/app/FragmentTransaction;

    if-eqz p1, :cond_3

    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/FragmentTransaction;->commit()I

    :goto_0
    return-void
.end method

.method public getDialog()Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method public getShowsDialog()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/DialogFragment;->mShowsDialog:Z

    return v0
.end method

.method public getTheme()I
    .locals 1
    .annotation build Lcom/oneplus/support/annotation/StyleRes;
    .end annotation

    iget v0, p0, Lcom/oneplus/support/core/fragment/app/DialogFragment;->mTheme:I

    return v0
.end method

.method public isCancelable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/DialogFragment;->mCancelable:Z

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Lcom/oneplus/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/oneplus/support/core/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    iget-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/DialogFragment;->mShowsDialog:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/support/core/fragment/app/DialogFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/support/core/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "DialogFragment can not be attached to a container view"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/support/core/fragment/app/DialogFragment;->getActivity()Lcom/oneplus/support/core/fragment/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/oneplus/support/core/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2, v1}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    :cond_3
    iget-object v2, p0, Lcom/oneplus/support/core/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    iget-boolean v3, p0, Lcom/oneplus/support/core/fragment/app/DialogFragment;->mCancelable:Z

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    iget-object v2, p0, Lcom/oneplus/support/core/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2, p0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object v2, p0, Lcom/oneplus/support/core/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    if-eqz p1, :cond_4

    const-string v2, "android:savedDialogState"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v3, p0, Lcom/oneplus/support/core/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v3, v2}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    :cond_4
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/oneplus/support/core/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    iget-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/DialogFragment;->mShownByMe:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/DialogFragment;->mDismissed:Z

    :cond_0
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Lcom/oneplus/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/oneplus/support/core/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    iget v0, p0, Lcom/oneplus/support/core/fragment/app/DialogFragment;->mContainerId:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/DialogFragment;->mShowsDialog:Z

    if-eqz p1, :cond_1

    const-string v0, "android:style"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/support/core/fragment/app/DialogFragment;->mStyle:I

    const-string v0, "android:theme"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/support/core/fragment/app/DialogFragment;->mTheme:I

    const-string v0, "android:cancelable"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/DialogFragment;->mCancelable:Z

    iget-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/DialogFragment;->mShowsDialog:Z

    const-string v1, "android:showsDialog"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/DialogFragment;->mShowsDialog:Z

    const/4 v0, -0x1

    const-string v1, "android:backStackId"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/support/core/fragment/app/DialogFragment;->mBackStackId:I

    :cond_1
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Lcom/oneplus/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/oneplus/support/annotation/NonNull;
    .end annotation

    new-instance v0, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/oneplus/support/core/fragment/app/DialogFragment;->getActivity()Lcom/oneplus/support/core/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/oneplus/support/core/fragment/app/DialogFragment;->getTheme()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    invoke-super {p0}, Lcom/oneplus/support/core/fragment/app/Fragment;->onDestroyView()V

    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oneplus/support/core/fragment/app/DialogFragment;->mViewDestroyed:Z

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/support/core/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    :cond_0
    return-void
.end method

.method public onDetach()V
    .locals 1

    invoke-super {p0}, Lcom/oneplus/support/core/fragment/app/Fragment;->onDetach()V

    iget-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/DialogFragment;->mShownByMe:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/DialogFragment;->mDismissed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/DialogFragment;->mDismissed:Z

    :cond_0
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/DialogFragment;->mViewDestroyed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oneplus/support/core/fragment/app/DialogFragment;->dismissInternal(Z)V

    :cond_0
    return-void
.end method

.method public onGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Lcom/oneplus/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/oneplus/support/annotation/NonNull;
    .end annotation

    iget-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/DialogFragment;->mShowsDialog:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/oneplus/support/core/fragment/app/Fragment;->onGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/oneplus/support/core/fragment/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/support/core/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    const-string v1, "layout_inflater"

    if-eqz v0, :cond_1

    iget v2, p0, Lcom/oneplus/support/core/fragment/app/DialogFragment;->mStyle:I

    invoke-virtual {p0, v0, v2}, Lcom/oneplus/support/core/fragment/app/DialogFragment;->setupDialog(Landroid/app/Dialog;I)V

    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/DialogFragment;->mHost:Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;

    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    return-object v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/oneplus/support/core/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "android:savedDialogState"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    iget v0, p0, Lcom/oneplus/support/core/fragment/app/DialogFragment;->mStyle:I

    if-eqz v0, :cond_1

    const-string v1, "android:style"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_1
    iget v0, p0, Lcom/oneplus/support/core/fragment/app/DialogFragment;->mTheme:I

    if-eqz v0, :cond_2

    const-string v1, "android:theme"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_2
    iget-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/DialogFragment;->mCancelable:Z

    if-nez v0, :cond_3

    const-string v1, "android:cancelable"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_3
    iget-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/DialogFragment;->mShowsDialog:Z

    if-nez v0, :cond_4

    const-string v1, "android:showsDialog"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_4
    iget v0, p0, Lcom/oneplus/support/core/fragment/app/DialogFragment;->mBackStackId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    const-string v1, "android:backStackId"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_5
    return-void
.end method

.method public onStart()V
    .locals 2

    invoke-super {p0}, Lcom/oneplus/support/core/fragment/app/Fragment;->onStart()V

    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oneplus/support/core/fragment/app/DialogFragment;->mViewDestroyed:Z

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Lcom/oneplus/support/core/fragment/app/Fragment;->onStop()V

    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    :cond_0
    return-void
.end method

.method public setCancelable(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/oneplus/support/core/fragment/app/DialogFragment;->mCancelable:Z

    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    :cond_0
    return-void
.end method

.method public setShowsDialog(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/support/core/fragment/app/DialogFragment;->mShowsDialog:Z

    return-void
.end method

.method public setStyle(II)V
    .locals 2
    .param p2    # I
        .annotation build Lcom/oneplus/support/annotation/StyleRes;
        .end annotation
    .end param

    iput p1, p0, Lcom/oneplus/support/core/fragment/app/DialogFragment;->mStyle:I

    iget v0, p0, Lcom/oneplus/support/core/fragment/app/DialogFragment;->mStyle:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    const v0, 0x1030059

    iput v0, p0, Lcom/oneplus/support/core/fragment/app/DialogFragment;->mTheme:I

    :cond_1
    if-eqz p2, :cond_2

    iput p2, p0, Lcom/oneplus/support/core/fragment/app/DialogFragment;->mTheme:I

    :cond_2
    return-void
.end method

.method public setupDialog(Landroid/app/Dialog;I)V
    .locals 3
    .annotation build Lcom/oneplus/support/annotation/RestrictTo;
        value = {
            .enum Lcom/oneplus/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Lcom/oneplus/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v1, 0x2

    if-eq p2, v1, :cond_1

    const/4 v1, 0x3

    if-eq p2, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x18

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    :cond_1
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    :goto_0
    return-void
.end method

.method public show(Lcom/oneplus/support/core/fragment/app/FragmentTransaction;Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/DialogFragment;->mDismissed:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oneplus/support/core/fragment/app/DialogFragment;->mShownByMe:Z

    invoke-virtual {p1, p0, p2}, Lcom/oneplus/support/core/fragment/app/FragmentTransaction;->add(Lcom/oneplus/support/core/fragment/app/Fragment;Ljava/lang/String;)Lcom/oneplus/support/core/fragment/app/FragmentTransaction;

    iput-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/DialogFragment;->mViewDestroyed:Z

    invoke-virtual {p1}, Lcom/oneplus/support/core/fragment/app/FragmentTransaction;->commit()I

    move-result v0

    iput v0, p0, Lcom/oneplus/support/core/fragment/app/DialogFragment;->mBackStackId:I

    iget v0, p0, Lcom/oneplus/support/core/fragment/app/DialogFragment;->mBackStackId:I

    return v0
.end method

.method public show(Lcom/oneplus/support/core/fragment/app/FragmentManager;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/DialogFragment;->mDismissed:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/DialogFragment;->mShownByMe:Z

    invoke-virtual {p1}, Lcom/oneplus/support/core/fragment/app/FragmentManager;->beginTransaction()Lcom/oneplus/support/core/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/oneplus/support/core/fragment/app/FragmentTransaction;->add(Lcom/oneplus/support/core/fragment/app/Fragment;Ljava/lang/String;)Lcom/oneplus/support/core/fragment/app/FragmentTransaction;

    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public showNow(Lcom/oneplus/support/core/fragment/app/FragmentManager;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/DialogFragment;->mDismissed:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/DialogFragment;->mShownByMe:Z

    invoke-virtual {p1}, Lcom/oneplus/support/core/fragment/app/FragmentManager;->beginTransaction()Lcom/oneplus/support/core/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/oneplus/support/core/fragment/app/FragmentTransaction;->add(Lcom/oneplus/support/core/fragment/app/Fragment;Ljava/lang/String;)Lcom/oneplus/support/core/fragment/app/FragmentTransaction;

    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/FragmentTransaction;->commitNow()V

    return-void
.end method
