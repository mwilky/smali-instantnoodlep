.class Lcom/oneplus/android/server/heytapbusiness/zta/sis/zta;
.super Landroid/util/Singleton;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/android/server/heytapbusiness/zta/sis/you;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Singleton<",
        "Lcom/oneplus/android/server/heytapbusiness/zta/sis/you;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/util/Singleton;-><init>()V

    return-void
.end method


# virtual methods
.method protected create()Lcom/oneplus/android/server/heytapbusiness/zta/sis/you;
    .locals 0

    new-instance p0, Lcom/oneplus/android/server/heytapbusiness/zta/sis/you;

    invoke-direct {p0}, Lcom/oneplus/android/server/heytapbusiness/zta/sis/you;-><init>()V

    return-object p0
.end method

.method protected bridge synthetic create()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/oneplus/android/server/heytapbusiness/zta/sis/zta;->create()Lcom/oneplus/android/server/heytapbusiness/zta/sis/you;

    move-result-object p0

    return-object p0
.end method
