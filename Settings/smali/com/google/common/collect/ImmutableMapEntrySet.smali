.class abstract Lcom/google/common/collect/ImmutableMapEntrySet;
.super Lcom/google/common/collect/ImmutableSet;
.source "ImmutableMapEntrySet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/ImmutableMapEntrySet$EntrySetSerializedForm;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableSet<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/common/collect/ImmutableSet;-><init>()V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMapEntrySet;->map()Lcom/google/common/collect/ImmutableMap;

    move-result-object p0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method isPartialView()Z
    .locals 0

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMapEntrySet;->map()Lcom/google/common/collect/ImmutableMap;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMap;->isPartialView()Z

    move-result p0

    return p0
.end method

.method abstract map()Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMap<",
            "TK;TV;>;"
        }
    .end annotation
.end method

.method public size()I
    .locals 0

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMapEntrySet;->map()Lcom/google/common/collect/ImmutableMap;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    return p0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/google/common/collect/ImmutableMapEntrySet$EntrySetSerializedForm;

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMapEntrySet;->map()Lcom/google/common/collect/ImmutableMap;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/common/collect/ImmutableMapEntrySet$EntrySetSerializedForm;-><init>(Lcom/google/common/collect/ImmutableMap;)V

    return-object v0
.end method
