.class public Lcom/android/settings/deviceinfo/StorageSettings$UnmountTask;
.super Landroid/os/AsyncTask;
.source "StorageSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/StorageSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UnmountTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Exception;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDescription:Ljava/lang/String;

.field private final mStorageManager:Landroid/os/storage/StorageManager;

.field private final mVolumeId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/storage/VolumeInfo;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageSettings$UnmountTask;->mContext:Landroid/content/Context;

    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageSettings$UnmountTask;->mContext:Landroid/content/Context;

    const-class v0, Landroid/os/storage/StorageManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/storage/StorageManager;

    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageSettings$UnmountTask;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {p2}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageSettings$UnmountTask;->mVolumeId:Ljava/lang/String;

    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageSettings$UnmountTask;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {p1, p2}, Landroid/os/storage/StorageManager;->getBestVolumeDescription(Landroid/os/storage/VolumeInfo;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageSettings$UnmountTask;->mDescription:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    :try_start_0
    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageSettings$UnmountTask;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object p0, p0, Lcom/android/settings/deviceinfo/StorageSettings$UnmountTask;->mVolumeId:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/storage/StorageManager;->unmount(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x0

    goto :goto_0

    :catch_0
    move-exception p0

    :goto_0
    return-object p0
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 4

    check-cast p1, Ljava/lang/Exception;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageSettings$UnmountTask;->mContext:Landroid/content/Context;

    const v2, 0x7f1215d1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/settings/deviceinfo/StorageSettings$UnmountTask;->mDescription:Ljava/lang/String;

    aput-object p0, v0, v1

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_0
    const-string v2, "Failed to unmount "

    invoke-static {v2}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline23(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageSettings$UnmountTask;->mVolumeId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "StorageSettings"

    invoke-static {v3, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageSettings$UnmountTask;->mContext:Landroid/content/Context;

    const v2, 0x7f1215d0

    new-array v0, v0, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/settings/deviceinfo/StorageSettings$UnmountTask;->mDescription:Ljava/lang/String;

    aput-object p0, v0, v1

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method
