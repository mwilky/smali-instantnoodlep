.class public final Lcom/bumptech/glide/load/engine/bitmap_recycle/IntegerArrayAdapter;
.super Ljava/lang/Object;
.source "IntegerArrayAdapter.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayAdapterInterface;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayAdapterInterface<",
        "[I>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getArrayLength(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, [I

    array-length p0, p1

    return p0
.end method

.method public getElementSizeInBytes()I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method public getTag()Ljava/lang/String;
    .locals 0

    const-string p0, "IntegerArrayPool"

    return-object p0
.end method

.method public newArray(I)Ljava/lang/Object;
    .locals 0

    new-array p0, p1, [I

    return-object p0
.end method
