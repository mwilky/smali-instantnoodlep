.class public Lcom/oneplus/lib/widget/IntArray;
.super Ljava/lang/Object;
.source "IntArray.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private mSize:I

.field private mValues:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    invoke-static {v0}, Lcom/oneplus/lib/widget/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/widget/IntArray;->mValues:[I

    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/lib/widget/IntArray;->mSize:I

    return-void
.end method


# virtual methods
.method public add(I)V
    .locals 4

    iget v0, p0, Lcom/oneplus/lib/widget/IntArray;->mSize:I

    if-ltz v0, :cond_4

    if-gt v0, v0, :cond_4

    add-int/lit8 v1, v0, 0x1

    iget-object v2, p0, Lcom/oneplus/lib/widget/IntArray;->mValues:[I

    array-length v2, v2

    if-lt v1, v2, :cond_2

    const/4 v2, 0x6

    if-ge v0, v2, :cond_0

    const/16 v2, 0xc

    goto :goto_0

    :cond_0
    shr-int/lit8 v2, v0, 0x1

    :goto_0
    add-int/2addr v2, v0

    if-le v2, v1, :cond_1

    move v1, v2

    :cond_1
    invoke-static {v1}, Lcom/oneplus/lib/widget/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/lib/widget/IntArray;->mValues:[I

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lcom/oneplus/lib/widget/IntArray;->mValues:[I

    :cond_2
    iget v1, p0, Lcom/oneplus/lib/widget/IntArray;->mSize:I

    sub-int/2addr v1, v0

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/oneplus/lib/widget/IntArray;->mValues:[I

    add-int/lit8 v3, v0, 0x1

    invoke-static {v2, v0, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    iget-object v1, p0, Lcom/oneplus/lib/widget/IntArray;->mValues:[I

    aput p1, v1, v0

    iget p1, p0, Lcom/oneplus/lib/widget/IntArray;->mSize:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/oneplus/lib/widget/IntArray;->mSize:I

    return-void

    :cond_4
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/lib/widget/IntArray;->mSize:I

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/widget/IntArray;

    iget-object p0, p0, Lcom/oneplus/lib/widget/IntArray;->mValues:[I

    invoke-virtual {p0}, [I->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    iput-object p0, v0, Lcom/oneplus/lib/widget/IntArray;->mValues:[I

    return-object v0
.end method

.method public get(I)I
    .locals 3

    iget v0, p0, Lcom/oneplus/lib/widget/IntArray;->mSize:I

    if-ge p1, v0, :cond_0

    iget-object p0, p0, Lcom/oneplus/lib/widget/IntArray;->mValues:[I

    aget p0, p0, p1

    return p0

    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "index is:"

    const-string v2, " size is :"

    invoke-static {v1, p1, v2}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline24(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p0, p0, Lcom/oneplus/lib/widget/IntArray;->mSize:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public size()I
    .locals 0

    iget p0, p0, Lcom/oneplus/lib/widget/IntArray;->mSize:I

    return p0
.end method
