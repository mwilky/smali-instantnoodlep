.class Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm$1;
.super Lcom/android/settings/deviceinfo/MigrateEstimateTask;
.source "StorageWizardMigrateConfirm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm$1;->this$0:Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;

    invoke-direct {p0, p2}, Lcom/android/settings/deviceinfo/MigrateEstimateTask;-><init>(Landroid/content/Context;)V

    return-void
.end method
