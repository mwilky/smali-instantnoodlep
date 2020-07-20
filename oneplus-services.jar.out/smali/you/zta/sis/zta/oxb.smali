.class Lyou/zta/sis/zta/oxb;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lyou/zta/sis/zta/ugm;


# static fields
.field static final EUa:Ljava/lang/String; = "bc_validity"


# instance fields
.field private NVa:Z

.field private OVa:Z

.field private PVa:Z


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lyou/zta/sis/zta/oxb;->NVa:Z

    iput-boolean v0, p0, Lyou/zta/sis/zta/oxb;->OVa:Z

    iput-boolean v0, p0, Lyou/zta/sis/zta/oxb;->PVa:Z

    return-void
.end method


# virtual methods
.method Hl()Z
    .locals 0

    iget-boolean p0, p0, Lyou/zta/sis/zta/oxb;->OVa:Z

    return p0
.end method

.method Il()Z
    .locals 0

    iget-boolean p0, p0, Lyou/zta/sis/zta/oxb;->NVa:Z

    return p0
.end method

.method Jl()Z
    .locals 0

    iget-boolean p0, p0, Lyou/zta/sis/zta/oxb;->PVa:Z

    return p0
.end method

.method Kl()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lyou/zta/sis/zta/oxb;->OVa:Z

    return-void
.end method

.method Ll()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lyou/zta/sis/zta/oxb;->NVa:Z

    return-void
.end method

.method Ml()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lyou/zta/sis/zta/oxb;->PVa:Z

    return-void
.end method
