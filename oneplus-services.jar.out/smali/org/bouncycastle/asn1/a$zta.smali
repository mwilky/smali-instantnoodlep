.class Lorg/bouncycastle/asn1/a$zta;
.super Ljava/io/OutputStream;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/asn1/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zta"
.end annotation


# instance fields
.field private Xya:[B

.field private Yya:I

.field private Zya:Lorg/bouncycastle/asn1/E;

.field final synthetic this$0:Lorg/bouncycastle/asn1/a;


# direct methods
.method constructor <init>(Lorg/bouncycastle/asn1/a;[B)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/asn1/a$zta;->this$0:Lorg/bouncycastle/asn1/a;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    iput-object p2, p0, Lorg/bouncycastle/asn1/a$zta;->Xya:[B

    const/4 p2, 0x0

    iput p2, p0, Lorg/bouncycastle/asn1/a$zta;->Yya:I

    new-instance p2, Lorg/bouncycastle/asn1/E;

    iget-object p1, p1, Lorg/bouncycastle/asn1/gck;->kGa:Ljava/io/OutputStream;

    invoke-direct {p2, p1}, Lorg/bouncycastle/asn1/E;-><init>(Ljava/io/OutputStream;)V

    iput-object p2, p0, Lorg/bouncycastle/asn1/a$zta;->Zya:Lorg/bouncycastle/asn1/E;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lorg/bouncycastle/asn1/a$zta;->Yya:I

    if-eqz v0, :cond_0

    new-array v1, v0, [B

    iget-object v2, p0, Lorg/bouncycastle/asn1/a$zta;->Xya:[B

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/bouncycastle/asn1/a$zta;->Zya:Lorg/bouncycastle/asn1/E;

    invoke-static {v0, v1}, Lorg/bouncycastle/asn1/C;->zta(Lorg/bouncycastle/asn1/E;[B)V

    :cond_0
    iget-object p0, p0, Lorg/bouncycastle/asn1/a$zta;->this$0:Lorg/bouncycastle/asn1/a;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/vdw;->th()V

    return-void
.end method

.method public write(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/asn1/a$zta;->Xya:[B

    iget v1, p0, Lorg/bouncycastle/asn1/a$zta;->Yya:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/bouncycastle/asn1/a$zta;->Yya:I

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    iget p1, p0, Lorg/bouncycastle/asn1/a$zta;->Yya:I

    array-length v1, v0

    if-ne p1, v1, :cond_0

    iget-object p1, p0, Lorg/bouncycastle/asn1/a$zta;->Zya:Lorg/bouncycastle/asn1/E;

    invoke-static {p1, v0}, Lorg/bouncycastle/asn1/C;->zta(Lorg/bouncycastle/asn1/E;[B)V

    const/4 p1, 0x0

    iput p1, p0, Lorg/bouncycastle/asn1/a$zta;->Yya:I

    :cond_0
    return-void
.end method

.method public write([BII)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    if-lez p3, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/asn1/a$zta;->Xya:[B

    array-length v0, v0

    iget v1, p0, Lorg/bouncycastle/asn1/a$zta;->Yya:I

    sub-int/2addr v0, v1

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/asn1/a$zta;->Xya:[B

    iget v2, p0, Lorg/bouncycastle/asn1/a$zta;->Yya:I

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lorg/bouncycastle/asn1/a$zta;->Yya:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/bouncycastle/asn1/a$zta;->Yya:I

    iget v1, p0, Lorg/bouncycastle/asn1/a$zta;->Yya:I

    iget-object v2, p0, Lorg/bouncycastle/asn1/a$zta;->Xya:[B

    array-length v3, v2

    if-ge v1, v3, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/asn1/a$zta;->Zya:Lorg/bouncycastle/asn1/E;

    invoke-static {v1, v2}, Lorg/bouncycastle/asn1/C;->zta(Lorg/bouncycastle/asn1/E;[B)V

    const/4 v1, 0x0

    iput v1, p0, Lorg/bouncycastle/asn1/a$zta;->Yya:I

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
