.class Lcom/android/settings/ResetSystemSettings$2;
.super Ljava/lang/Object;
.source "ResetSystemSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ResetSystemSettings;->showFinalConfirmation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ResetSystemSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/ResetSystemSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/ResetSystemSettings$2;->this$0:Lcom/android/settings/ResetSystemSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    invoke-static {}, Lcom/android/settings/ResetSystemSettings;->access$100()Ljava/lang/String;

    const-string p1, "ResetSystemSettings"

    const-string p2, "onClick: Ok"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/settings/ResetSystemSettings$2;->this$0:Lcom/android/settings/ResetSystemSettings;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/settings/ResetSystemSettings;->access$300(Lcom/android/settings/ResetSystemSettings;Landroid/content/Context;)Landroid/app/ProgressDialog;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/settings/ResetSystemSettings;->access$202(Lcom/android/settings/ResetSystemSettings;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    iget-object p1, p0, Lcom/android/settings/ResetSystemSettings$2;->this$0:Lcom/android/settings/ResetSystemSettings;

    invoke-static {p1}, Lcom/android/settings/ResetSystemSettings;->access$200(Lcom/android/settings/ResetSystemSettings;)Landroid/app/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->show()V

    iget-object p1, p0, Lcom/android/settings/ResetSystemSettings$2;->this$0:Lcom/android/settings/ResetSystemSettings;

    new-instance p2, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;-><init>(Lcom/android/settings/ResetSystemSettings;Landroid/content/Context;)V

    invoke-static {p1, p2}, Lcom/android/settings/ResetSystemSettings;->access$402(Lcom/android/settings/ResetSystemSettings;Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;)Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;

    iget-object p0, p0, Lcom/android/settings/ResetSystemSettings$2;->this$0:Lcom/android/settings/ResetSystemSettings;

    invoke-static {p0}, Lcom/android/settings/ResetSystemSettings;->access$400(Lcom/android/settings/ResetSystemSettings;)Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
