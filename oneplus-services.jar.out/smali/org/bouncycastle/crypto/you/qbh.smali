.class public Lorg/bouncycastle/crypto/you/qbh;
.super Lorg/bouncycastle/crypto/you/cno;
.source ""


# static fields
.field private static final ANa:I = 0x30


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/crypto/you/cno;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/you/qbh;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/you/cno;-><init>(Lorg/bouncycastle/crypto/you/cno;)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/crypto/you/cno;-><init>()V

    invoke-virtual {p0, p1}, Lorg/bouncycastle/crypto/you/cno;->ywr([B)V

    return-void
.end method


# virtual methods
.method public copy()Lorg/bouncycastle/util/bio;
    .locals 1

    new-instance v0, Lorg/bouncycastle/crypto/you/qbh;

    invoke-direct {v0, p0}, Lorg/bouncycastle/crypto/you/qbh;-><init>(Lorg/bouncycastle/crypto/you/qbh;)V

    return-object v0
.end method

.method public doFinal([BI)I
    .locals 3

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/you/cno;->finish()V

    iget-wide v0, p0, Lorg/bouncycastle/crypto/you/cno;->xNa:J

    invoke-static {v0, v1, p1, p2}, Lorg/bouncycastle/util/igw;->zta(J[BI)V

    iget-wide v0, p0, Lorg/bouncycastle/crypto/you/cno;->H2:J

    add-int/lit8 v2, p2, 0x8

    invoke-static {v0, v1, p1, v2}, Lorg/bouncycastle/util/igw;->zta(J[BI)V

    iget-wide v0, p0, Lorg/bouncycastle/crypto/you/cno;->H3:J

    add-int/lit8 v2, p2, 0x10

    invoke-static {v0, v1, p1, v2}, Lorg/bouncycastle/util/igw;->zta(J[BI)V

    iget-wide v0, p0, Lorg/bouncycastle/crypto/you/cno;->yNa:J

    add-int/lit8 v2, p2, 0x18

    invoke-static {v0, v1, p1, v2}, Lorg/bouncycastle/util/igw;->zta(J[BI)V

    iget-wide v0, p0, Lorg/bouncycastle/crypto/you/cno;->RNa:J

    add-int/lit8 v2, p2, 0x20

    invoke-static {v0, v1, p1, v2}, Lorg/bouncycastle/util/igw;->zta(J[BI)V

    iget-wide v0, p0, Lorg/bouncycastle/crypto/you/cno;->WNa:J

    add-int/lit8 p2, p2, 0x28

    invoke-static {v0, v1, p1, p2}, Lorg/bouncycastle/util/igw;->zta(J[BI)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/you/qbh;->reset()V

    const/16 p0, 0x30

    return p0
.end method

.method public fto()[B
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/you/cno;->Zj()I

    move-result v0

    new-array v0, v0, [B

    invoke-super {p0, v0}, Lorg/bouncycastle/crypto/you/cno;->dma([B)V

    return-object v0
.end method

.method public irq()Ljava/lang/String;
    .locals 0

    const-string p0, "SHA-384"

    return-object p0
.end method

.method public qeg()I
    .locals 0

    const/16 p0, 0x30

    return p0
.end method

.method public reset()V
    .locals 2

    invoke-super {p0}, Lorg/bouncycastle/crypto/you/cno;->reset()V

    const-wide v0, -0x344462a23efa6128L    # -6.771107636816954E56

    iput-wide v0, p0, Lorg/bouncycastle/crypto/you/cno;->xNa:J

    const-wide v0, 0x629a292a367cd507L    # 9.641589608180943E166

    iput-wide v0, p0, Lorg/bouncycastle/crypto/you/cno;->H2:J

    const-wide v0, -0x6ea6fea5cf8f22e9L    # -4.222163200156129E-225

    iput-wide v0, p0, Lorg/bouncycastle/crypto/you/cno;->H3:J

    const-wide v0, 0x152fecd8f70e5939L

    iput-wide v0, p0, Lorg/bouncycastle/crypto/you/cno;->yNa:J

    const-wide v0, 0x67332667ffc00b31L    # 1.3331733573491853E189

    iput-wide v0, p0, Lorg/bouncycastle/crypto/you/cno;->RNa:J

    const-wide v0, -0x714bb57897a7eaefL    # -7.790218494879152E-238

    iput-wide v0, p0, Lorg/bouncycastle/crypto/you/cno;->WNa:J

    const-wide v0, -0x24f3d1f29b067059L    # -3.9066766103558855E130

    iput-wide v0, p0, Lorg/bouncycastle/crypto/you/cno;->XNa:J

    const-wide v0, 0x47b5481dbefa4fa4L    # 2.8288236605994657E37

    iput-wide v0, p0, Lorg/bouncycastle/crypto/you/cno;->YNa:J

    return-void
.end method

.method public zta(Lorg/bouncycastle/util/bio;)V
    .locals 0

    check-cast p1, Lorg/bouncycastle/crypto/you/qbh;

    invoke-super {p0, p1}, Lorg/bouncycastle/crypto/you/cno;->zta(Lorg/bouncycastle/crypto/you/cno;)V

    return-void
.end method
