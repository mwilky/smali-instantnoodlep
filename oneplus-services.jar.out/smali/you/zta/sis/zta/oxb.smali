.class Lyou/zta/sis/zta/oxb;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lyou/zta/sis/zta/ugm;


# static fields
.field static final NUa:Ljava/lang/String; = "bc_validity"


# instance fields
.field private WVa:Z

.field private XVa:Z

.field private YVa:Z


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lyou/zta/sis/zta/oxb;->WVa:Z

    iput-boolean v0, p0, Lyou/zta/sis/zta/oxb;->XVa:Z

    iput-boolean v0, p0, Lyou/zta/sis/zta/oxb;->YVa:Z

    return-void
.end method


# virtual methods
.method Il()Z
    .locals 0

    iget-boolean p0, p0, Lyou/zta/sis/zta/oxb;->XVa:Z

    return p0
.end method

.method Jl()Z
    .locals 0

    iget-boolean p0, p0, Lyou/zta/sis/zta/oxb;->WVa:Z

    return p0
.end method

.method Kl()Z
    .locals 0

    iget-boolean p0, p0, Lyou/zta/sis/zta/oxb;->YVa:Z

    return p0
.end method

.method Ll()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lyou/zta/sis/zta/oxb;->XVa:Z

    return-void
.end method

.method Ml()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lyou/zta/sis/zta/oxb;->WVa:Z

    return-void
.end method

.method Nl()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lyou/zta/sis/zta/oxb;->YVa:Z

    return-void
.end method
