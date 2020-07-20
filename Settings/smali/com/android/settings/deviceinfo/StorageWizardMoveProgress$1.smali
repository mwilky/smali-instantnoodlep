.class Lcom/android/settings/deviceinfo/StorageWizardMoveProgress$1;
.super Landroid/content/pm/PackageManager$MoveCallback;
.source "StorageWizardMoveProgress.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress$1;->this$0:Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;

    invoke-direct {p0}, Landroid/content/pm/PackageManager$MoveCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onStatusChanged(IIJ)V
    .locals 0

    iget-object p3, p0, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress$1;->this$0:Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;

    invoke-static {p3}, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;->access$000(Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;)I

    move-result p3

    if-eq p3, p1, :cond_0

    return-void

    :cond_0
    invoke-static {p2}, Landroid/content/pm/PackageManager;->isMoveStatusFinished(I)Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p1, "Finished with status "

    const-string p3, "StorageSettings"

    invoke-static {p1, p2, p3}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline31(Ljava/lang/String;ILjava/lang/String;)V

    const/16 p1, -0x64

    if-eq p2, p1, :cond_6

    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress$1;->this$0:Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;

    const/4 p3, -0x8

    if-eq p2, p3, :cond_5

    const/4 p3, -0x5

    if-eq p2, p3, :cond_4

    const/4 p3, -0x3

    if-eq p2, p3, :cond_3

    const/4 p3, -0x2

    if-eq p2, p3, :cond_2

    const/4 p3, -0x1

    const p4, 0x7f120887

    if-eq p2, p3, :cond_1

    invoke-virtual {p1, p4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_2
    const p2, 0x7f120660

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_3
    const p2, 0x7f121664

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_4
    const p2, 0x7f120892

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_5
    const p2, 0x7f120ad5

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    :goto_0
    const/4 p3, 0x1

    invoke-static {p1, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_6
    iget-object p0, p0, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress$1;->this$0:Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;

    invoke-virtual {p0}, Landroid/app/Activity;->finishAffinity()V

    goto :goto_1

    :cond_7
    iget-object p0, p0, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress$1;->this$0:Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;

    invoke-virtual {p0, p2}, Lcom/android/settings/deviceinfo/StorageWizardBase;->setCurrentProgress(I)V

    :goto_1
    return-void
.end method
