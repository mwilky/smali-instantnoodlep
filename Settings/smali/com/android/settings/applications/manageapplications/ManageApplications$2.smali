.class Lcom/android/settings/applications/manageapplications/ManageApplications$2;
.super Ljava/lang/Object;
.source "ManageApplications.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/manageapplications/ManageApplications;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/manageapplications/ManageApplications;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$2;->this$0:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$2;->this$0:Lcom/android/settings/applications/manageapplications/ManageApplications;

    new-instance p2, Lcom/android/settings/applications/manageapplications/ManageApplications$PackageDeleteObserver;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Lcom/android/settings/applications/manageapplications/ManageApplications$PackageDeleteObserver;-><init>(Lcom/android/settings/applications/manageapplications/ManageApplications;Lcom/android/settings/applications/manageapplications/ManageApplications$1;)V

    invoke-static {p1, p2}, Lcom/android/settings/applications/manageapplications/ManageApplications;->access$302(Lcom/android/settings/applications/manageapplications/ManageApplications;Lcom/android/settings/applications/manageapplications/ManageApplications$PackageDeleteObserver;)Lcom/android/settings/applications/manageapplications/ManageApplications$PackageDeleteObserver;

    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$2;->this$0:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-virtual {p1}, Lcom/android/settings/applications/manageapplications/ManageApplications;->hideUninstallMultipleAppsListMenu()V

    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$2;->this$0:Lcom/android/settings/applications/manageapplications/ManageApplications;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1, p2}, Lcom/android/settings/applications/manageapplications/ManageApplications;->access$502(Lcom/android/settings/applications/manageapplications/ManageApplications;Ljava/util/List;)Ljava/util/List;

    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$2;->this$0:Lcom/android/settings/applications/manageapplications/ManageApplications;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1, p2}, Lcom/android/settings/applications/manageapplications/ManageApplications;->access$602(Lcom/android/settings/applications/manageapplications/ManageApplications;Ljava/util/List;)Ljava/util/List;

    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$2;->this$0:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-static {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->access$700(Lcom/android/settings/applications/manageapplications/ManageApplications;)V

    return-void
.end method
