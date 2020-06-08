.class Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$1;
.super Ljava/lang/Object;
.source "StorageAsyncLoader.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/content/pm/UserInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Landroid/content/pm/UserInfo;

    check-cast p2, Landroid/content/pm/UserInfo;

    iget p0, p1, Landroid/content/pm/UserInfo;->id:I

    iget p1, p2, Landroid/content/pm/UserInfo;->id:I

    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method
