.class final Lcom/android/server/am/E$igw;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/E;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "igw"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/server/am/E$bio;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/D;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/E$igw;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/server/am/E$bio;

    check-cast p2, Lcom/android/server/am/E$bio;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/E$igw;->zta(Lcom/android/server/am/E$bio;Lcom/android/server/am/E$bio;)I

    move-result p0

    return p0
.end method

.method public zta(Lcom/android/server/am/E$bio;Lcom/android/server/am/E$bio;)I
    .locals 4

    iget-wide v0, p1, Lcom/android/server/am/E$bio;->zF:D

    iget-wide v2, p1, Lcom/android/server/am/E$bio;->yF:D

    add-double/2addr v0, v2

    iget-wide p0, p1, Lcom/android/server/am/E$bio;->AF:D

    add-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    iget-wide v0, p2, Lcom/android/server/am/E$bio;->zF:D

    iget-wide v2, p2, Lcom/android/server/am/E$bio;->yF:D

    add-double/2addr v0, v2

    iget-wide p1, p2, Lcom/android/server/am/E$bio;->AF:D

    add-double/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/Double;->compareTo(Ljava/lang/Double;)I

    move-result p0

    return p0
.end method
