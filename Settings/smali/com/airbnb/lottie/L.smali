.class public Lcom/airbnb/lottie/L;
.super Ljava/lang/Object;
.source "L.java"


# static fields
.field private static depthPastMaxDepth:I


# direct methods
.method public static endSection(Ljava/lang/String;)F
    .locals 1

    sget p0, Lcom/airbnb/lottie/L;->depthPastMaxDepth:I

    const/4 v0, 0x0

    if-lez p0, :cond_0

    add-int/lit8 p0, p0, -0x1

    sput p0, Lcom/airbnb/lottie/L;->depthPastMaxDepth:I

    :cond_0
    return v0
.end method
