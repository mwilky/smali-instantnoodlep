.class final Lcom/oneplus/lib/widget/recyclerview/MapCollections$KeySet;
.super Ljava/lang/Object;
.source "MapCollections.java"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/recyclerview/MapCollections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "KeySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Set<",
        "TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/widget/recyclerview/MapCollections;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/widget/recyclerview/MapCollections;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/MapCollections$KeySet;->this$0:Lcom/oneplus/lib/widget/recyclerview/MapCollections;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TK;>;)Z"
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public clear()V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/MapCollections$KeySet;->this$0:Lcom/oneplus/lib/widget/recyclerview/MapCollections;

    check-cast p0, Lcom/oneplus/lib/widget/recyclerview/ArrayMap$1;

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/ArrayMap$1;->this$0:Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/MapCollections$KeySet;->this$0:Lcom/oneplus/lib/widget/recyclerview/MapCollections;

    check-cast p0, Lcom/oneplus/lib/widget/recyclerview/ArrayMap$1;

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/ArrayMap$1;->this$0:Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/MapCollections$KeySet;->this$0:Lcom/oneplus/lib/widget/recyclerview/MapCollections;

    check-cast p0, Lcom/oneplus/lib/widget/recyclerview/ArrayMap$1;

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/ArrayMap$1;->this$0:Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/MapCollections;->equalsSetHelper(Ljava/util/Set;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/MapCollections$KeySet;->this$0:Lcom/oneplus/lib/widget/recyclerview/MapCollections;

    check-cast v0, Lcom/oneplus/lib/widget/recyclerview/ArrayMap$1;

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/ArrayMap$1;->this$0:Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    iget v0, v0, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->mSize:I

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/MapCollections$KeySet;->this$0:Lcom/oneplus/lib/widget/recyclerview/MapCollections;

    invoke-virtual {v3, v0, v1}, Lcom/oneplus/lib/widget/recyclerview/MapCollections;->colGetEntry(II)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    move v3, v1

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v2, v3

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public isEmpty()Z
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/MapCollections$KeySet;->this$0:Lcom/oneplus/lib/widget/recyclerview/MapCollections;

    check-cast p0, Lcom/oneplus/lib/widget/recyclerview/ArrayMap$1;

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/ArrayMap$1;->this$0:Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    iget p0, p0, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->mSize:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TK;>;"
        }
    .end annotation

    new-instance v0, Lcom/oneplus/lib/widget/recyclerview/MapCollections$ArrayIterator;

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/MapCollections$KeySet;->this$0:Lcom/oneplus/lib/widget/recyclerview/MapCollections;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oneplus/lib/widget/recyclerview/MapCollections$ArrayIterator;-><init>(Lcom/oneplus/lib/widget/recyclerview/MapCollections;I)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/MapCollections$KeySet;->this$0:Lcom/oneplus/lib/widget/recyclerview/MapCollections;

    check-cast v0, Lcom/oneplus/lib/widget/recyclerview/ArrayMap$1;

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/ArrayMap$1;->this$0:Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/MapCollections$KeySet;->this$0:Lcom/oneplus/lib/widget/recyclerview/MapCollections;

    check-cast p0, Lcom/oneplus/lib/widget/recyclerview/ArrayMap$1;

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/ArrayMap$1;->this$0:Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->removeAt(I)Ljava/lang/Object;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/MapCollections$KeySet;->this$0:Lcom/oneplus/lib/widget/recyclerview/MapCollections;

    check-cast p0, Lcom/oneplus/lib/widget/recyclerview/ArrayMap$1;

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/ArrayMap$1;->this$0:Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    if-eq v0, p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/MapCollections$KeySet;->this$0:Lcom/oneplus/lib/widget/recyclerview/MapCollections;

    check-cast p0, Lcom/oneplus/lib/widget/recyclerview/ArrayMap$1;

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/ArrayMap$1;->this$0:Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    if-eq v0, p0, :cond_2

    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public size()I
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/MapCollections$KeySet;->this$0:Lcom/oneplus/lib/widget/recyclerview/MapCollections;

    check-cast p0, Lcom/oneplus/lib/widget/recyclerview/ArrayMap$1;

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/ArrayMap$1;->this$0:Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    iget p0, p0, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->mSize:I

    return p0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/MapCollections$KeySet;->this$0:Lcom/oneplus/lib/widget/recyclerview/MapCollections;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/MapCollections;->toArrayHelper(I)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/MapCollections$KeySet;->this$0:Lcom/oneplus/lib/widget/recyclerview/MapCollections;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/lib/widget/recyclerview/MapCollections;->toArrayHelper([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
