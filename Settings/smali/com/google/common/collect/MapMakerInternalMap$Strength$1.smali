.class final enum Lcom/google/common/collect/MapMakerInternalMap$Strength$1;
.super Lcom/google/common/collect/MapMakerInternalMap$Strength;
.source "MapMakerInternalMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/MapMakerInternalMap$Strength;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/collect/MapMakerInternalMap$Strength;-><init>(Ljava/lang/String;ILcom/google/common/collect/MapMakerInternalMap$1;)V

    return-void
.end method


# virtual methods
.method defaultEquivalence()Lcom/google/common/base/Equivalence;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Equivalence<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/google/common/base/Equivalence;->equals()Lcom/google/common/base/Equivalence;

    move-result-object p0

    return-object p0
.end method

.method referenceValue(Lcom/google/common/collect/MapMakerInternalMap$Segment;Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;Ljava/lang/Object;)Lcom/google/common/collect/MapMakerInternalMap$ValueReference;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/MapMakerInternalMap$Segment<",
            "TK;TV;>;",
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<",
            "TK;TV;>;TV;)",
            "Lcom/google/common/collect/MapMakerInternalMap$ValueReference<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance p0, Lcom/google/common/collect/MapMakerInternalMap$StrongValueReference;

    invoke-direct {p0, p3}, Lcom/google/common/collect/MapMakerInternalMap$StrongValueReference;-><init>(Ljava/lang/Object;)V

    return-object p0
.end method
