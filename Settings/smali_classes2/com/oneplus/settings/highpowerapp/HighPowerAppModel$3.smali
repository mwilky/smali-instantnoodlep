.class Lcom/oneplus/settings/highpowerapp/HighPowerAppModel$3;
.super Ljava/lang/Object;
.source "HighPowerAppModel.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/oneplus/settings/highpowerapp/HighPowerApp;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/oneplus/settings/highpowerapp/HighPowerApp;

    check-cast p2, Lcom/oneplus/settings/highpowerapp/HighPowerApp;

    iget-object p0, p1, Lcom/oneplus/settings/highpowerapp/HighPowerApp;->pkgName:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    iget-object p1, p2, Lcom/oneplus/settings/highpowerapp/HighPowerApp;->pkgName:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    sub-int/2addr p0, p1

    return p0
.end method
