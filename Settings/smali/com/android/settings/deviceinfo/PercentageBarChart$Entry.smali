.class public Lcom/android/settings/deviceinfo/PercentageBarChart$Entry;
.super Ljava/lang/Object;
.source "PercentageBarChart.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/PercentageBarChart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/settings/deviceinfo/PercentageBarChart$Entry;",
        ">;"
    }
.end annotation


# instance fields
.field public final order:I

.field public final paint:Landroid/graphics/Paint;

.field public final percentage:F


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/settings/deviceinfo/PercentageBarChart$Entry;

    iget p0, p0, Lcom/android/settings/deviceinfo/PercentageBarChart$Entry;->order:I

    iget p1, p1, Lcom/android/settings/deviceinfo/PercentageBarChart$Entry;->order:I

    sub-int/2addr p0, p1

    return p0
.end method
