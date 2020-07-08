.class Lyou/zta/sis/zta/oxb;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lyou/zta/sis/zta/ugm;


# static fields
.field static final jUa:Ljava/lang/String; = "bc_validity"


# instance fields
.field private sVa:Z

.field private tVa:Z

.field private uVa:Z


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lyou/zta/sis/zta/oxb;->sVa:Z

    iput-boolean v0, p0, Lyou/zta/sis/zta/oxb;->tVa:Z

    iput-boolean v0, p0, Lyou/zta/sis/zta/oxb;->uVa:Z

    return-void
.end method


# virtual methods
.method Gl()Z
    .locals 0

    iget-boolean p0, p0, Lyou/zta/sis/zta/oxb;->tVa:Z

    return p0
.end method

.method Hl()Z
    .locals 0

    iget-boolean p0, p0, Lyou/zta/sis/zta/oxb;->sVa:Z

    return p0
.end method

.method Il()Z
    .locals 0

    iget-boolean p0, p0, Lyou/zta/sis/zta/oxb;->uVa:Z

    return p0
.end method

.method Jl()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lyou/zta/sis/zta/oxb;->tVa:Z

    return-void
.end method

.method Kl()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lyou/zta/sis/zta/oxb;->sVa:Z

    return-void
.end method

.method Ll()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lyou/zta/sis/zta/oxb;->uVa:Z

    return-void
.end method
