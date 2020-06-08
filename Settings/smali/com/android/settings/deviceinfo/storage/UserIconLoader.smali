.class public Lcom/android/settings/deviceinfo/storage/UserIconLoader;
.super Lcom/android/settingslib/utils/AsyncLoaderCompat;
.source "UserIconLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/storage/UserIconLoader$UserIconHandler;,
        Lcom/android/settings/deviceinfo/storage/UserIconLoader$FetchUserIconTask;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settingslib/utils/AsyncLoaderCompat<",
        "Landroid/util/SparseArray<",
        "Landroid/graphics/drawable/Drawable;",
        ">;>;"
    }
.end annotation


# instance fields
.field private mTask:Lcom/android/settings/deviceinfo/storage/UserIconLoader$FetchUserIconTask;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/deviceinfo/storage/UserIconLoader$FetchUserIconTask;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingslib/utils/AsyncLoaderCompat;-><init>(Landroid/content/Context;)V

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/deviceinfo/storage/UserIconLoader$FetchUserIconTask;

    iput-object p1, p0, Lcom/android/settings/deviceinfo/storage/UserIconLoader;->mTask:Lcom/android/settings/deviceinfo/storage/UserIconLoader$FetchUserIconTask;

    return-void
.end method


# virtual methods
.method public loadInBackground()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/deviceinfo/storage/UserIconLoader;->mTask:Lcom/android/settings/deviceinfo/storage/UserIconLoader$FetchUserIconTask;

    invoke-interface {p0}, Lcom/android/settings/deviceinfo/storage/UserIconLoader$FetchUserIconTask;->getUserIcons()Landroid/util/SparseArray;

    move-result-object p0

    return-object p0
.end method

.method protected onDiscardResult(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/util/SparseArray;

    return-void
.end method
