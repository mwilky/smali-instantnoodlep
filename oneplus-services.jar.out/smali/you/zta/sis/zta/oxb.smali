.class Lyou/zta/sis/zta/oxb;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lyou/zta/sis/zta/ugm;


# static fields
.field static final ITa:Ljava/lang/String; = "bc_validity"


# instance fields
.field private RUa:Z

.field private SUa:Z

.field private TUa:Z


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lyou/zta/sis/zta/oxb;->RUa:Z

    iput-boolean v0, p0, Lyou/zta/sis/zta/oxb;->SUa:Z

    iput-boolean v0, p0, Lyou/zta/sis/zta/oxb;->TUa:Z

    return-void
.end method


# virtual methods
.method Dl()Z
    .locals 0

    iget-boolean p0, p0, Lyou/zta/sis/zta/oxb;->SUa:Z

    return p0
.end method

.method El()Z
    .locals 0

    iget-boolean p0, p0, Lyou/zta/sis/zta/oxb;->RUa:Z

    return p0
.end method

.method Fl()Z
    .locals 0

    iget-boolean p0, p0, Lyou/zta/sis/zta/oxb;->TUa:Z

    return p0
.end method

.method Gl()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lyou/zta/sis/zta/oxb;->SUa:Z

    return-void
.end method

.method Hl()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lyou/zta/sis/zta/oxb;->RUa:Z

    return-void
.end method

.method Il()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lyou/zta/sis/zta/oxb;->TUa:Z

    return-void
.end method
