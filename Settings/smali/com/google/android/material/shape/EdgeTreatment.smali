.class public Lcom/google/android/material/shape/EdgeTreatment;
.super Ljava/lang/Object;
.source "EdgeTreatment.java"

# interfaces
.implements Ljava/lang/Cloneable;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clone()Lcom/google/android/material/shape/EdgeTreatment;
    .locals 1

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/shape/EdgeTreatment;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/material/shape/EdgeTreatment;->clone()Lcom/google/android/material/shape/EdgeTreatment;

    move-result-object p0

    return-object p0
.end method

.method public getEdgePath(FFFLcom/google/android/material/shape/ShapePath;)V
    .locals 0

    const/4 p0, 0x0

    invoke-virtual {p4, p1, p0}, Lcom/google/android/material/shape/ShapePath;->lineTo(FF)V

    return-void
.end method
