.class Lcom/android/settings/development/OverlayCategoryPreferenceController$1;
.super Landroid/os/AsyncTask;
.source "OverlayCategoryPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/development/OverlayCategoryPreferenceController;->setOverlay(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/development/OverlayCategoryPreferenceController;

.field final synthetic val$currentPackageName:Ljava/lang/String;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings/development/OverlayCategoryPreferenceController;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/development/OverlayCategoryPreferenceController$1;->this$0:Lcom/android/settings/development/OverlayCategoryPreferenceController;

    iput-object p2, p0, Lcom/android/settings/development/OverlayCategoryPreferenceController$1;->val$packageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/settings/development/OverlayCategoryPreferenceController$1;->val$currentPackageName:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, [Ljava/lang/Void;

    const/4 p1, 0x0

    :try_start_0
    const-string v0, "package_device_default"

    iget-object v1, p0, Lcom/android/settings/development/OverlayCategoryPreferenceController$1;->val$packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/development/OverlayCategoryPreferenceController$1;->this$0:Lcom/android/settings/development/OverlayCategoryPreferenceController;

    invoke-static {v0}, Lcom/android/settings/development/OverlayCategoryPreferenceController;->access$000(Lcom/android/settings/development/OverlayCategoryPreferenceController;)Landroid/content/om/IOverlayManager;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/development/OverlayCategoryPreferenceController$1;->val$currentPackageName:Ljava/lang/String;

    invoke-interface {v0, p0, p1, p1}, Landroid/content/om/IOverlayManager;->setEnabled(Ljava/lang/String;ZI)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/development/OverlayCategoryPreferenceController$1;->this$0:Lcom/android/settings/development/OverlayCategoryPreferenceController;

    invoke-static {v0}, Lcom/android/settings/development/OverlayCategoryPreferenceController;->access$000(Lcom/android/settings/development/OverlayCategoryPreferenceController;)Landroid/content/om/IOverlayManager;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/development/OverlayCategoryPreferenceController$1;->val$packageName:Ljava/lang/String;

    invoke-interface {v0, p0, p1}, Landroid/content/om/IOverlayManager;->setEnabledExclusiveInCategory(Ljava/lang/String;I)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "OverlayCategoryPC"

    const-string v1, "Error enabling overlay."

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/android/settings/development/OverlayCategoryPreferenceController$1;->this$0:Lcom/android/settings/development/OverlayCategoryPreferenceController;

    invoke-static {v0}, Lcom/android/settings/development/OverlayCategoryPreferenceController;->access$100(Lcom/android/settings/development/OverlayCategoryPreferenceController;)Landroidx/preference/ListPreference;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/development/OverlayCategoryPreferenceController;->updateState(Landroidx/preference/Preference;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/settings/development/OverlayCategoryPreferenceController$1;->this$0:Lcom/android/settings/development/OverlayCategoryPreferenceController;

    invoke-static {p0}, Lcom/android/settings/development/OverlayCategoryPreferenceController;->access$200(Lcom/android/settings/development/OverlayCategoryPreferenceController;)Landroid/content/Context;

    move-result-object p0

    const p1, 0x7f1211c7

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method
