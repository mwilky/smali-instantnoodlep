.class Lyou/zta/sis/zta/igw;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lyou/zta/sis/zta/gwm;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyou/zta/sis/zta/wtn;->zta(ZZ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic tUa:Z

.field final synthetic this$0:Lyou/zta/sis/zta/wtn;

.field final synthetic uUa:Z


# direct methods
.method constructor <init>(Lyou/zta/sis/zta/wtn;ZZ)V
    .locals 0

    iput-object p1, p0, Lyou/zta/sis/zta/igw;->this$0:Lyou/zta/sis/zta/wtn;

    iput-boolean p2, p0, Lyou/zta/sis/zta/igw;->tUa:Z

    iput-boolean p3, p0, Lyou/zta/sis/zta/igw;->uUa:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zta(Lyou/zta/sis/zta/ugm;)Lyou/zta/sis/zta/ugm;
    .locals 1

    instance-of v0, p1, Lyou/zta/sis/zta/oxb;

    if-eqz v0, :cond_0

    check-cast p1, Lyou/zta/sis/zta/oxb;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    new-instance p1, Lyou/zta/sis/zta/oxb;

    invoke-direct {p1}, Lyou/zta/sis/zta/oxb;-><init>()V

    :cond_1
    invoke-virtual {p1}, Lyou/zta/sis/zta/oxb;->El()Z

    move-result v0

    if-eqz v0, :cond_2

    return-object p1

    :cond_2
    invoke-virtual {p1}, Lyou/zta/sis/zta/oxb;->Dl()Z

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lyou/zta/sis/zta/igw;->tUa:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lyou/zta/sis/zta/igw;->this$0:Lyou/zta/sis/zta/wtn;

    invoke-virtual {v0}, Lyou/zta/sis/zta/wtn;->sl()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lyou/zta/sis/zta/oxb;->Hl()V

    return-object p1

    :cond_3
    invoke-virtual {p1}, Lyou/zta/sis/zta/oxb;->Gl()V

    :cond_4
    iget-boolean v0, p0, Lyou/zta/sis/zta/igw;->uUa:Z

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lyou/zta/sis/zta/oxb;->Fl()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object p0, p0, Lyou/zta/sis/zta/igw;->this$0:Lyou/zta/sis/zta/wtn;

    invoke-virtual {p0}, Lyou/zta/sis/zta/wtn;->tl()Z

    move-result p0

    if-nez p0, :cond_5

    invoke-virtual {p1}, Lyou/zta/sis/zta/oxb;->Hl()V

    return-object p1

    :cond_5
    invoke-virtual {p1}, Lyou/zta/sis/zta/oxb;->Il()V

    :cond_6
    return-object p1
.end method
