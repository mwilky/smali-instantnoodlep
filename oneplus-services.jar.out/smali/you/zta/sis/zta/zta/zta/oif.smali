.class Lyou/zta/sis/zta/zta/zta/oif;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lyou/zta/sis/zta/kth;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyou/zta/sis/zta/zta/zta/bvj;->you([Lyou/zta/sis/zta/wtn;II)Lyou/zta/sis/zta/kth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic JTa:I

.field final synthetic LTa:[I

.field final synthetic this$0:Lyou/zta/sis/zta/zta/zta/bvj;


# direct methods
.method constructor <init>(Lyou/zta/sis/zta/zta/zta/bvj;I[I)V
    .locals 0

    iput-object p1, p0, Lyou/zta/sis/zta/zta/zta/oif;->this$0:Lyou/zta/sis/zta/zta/zta/bvj;

    iput p2, p0, Lyou/zta/sis/zta/zta/zta/oif;->JTa:I

    iput-object p3, p0, Lyou/zta/sis/zta/zta/zta/oif;->LTa:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSize()I
    .locals 0

    iget p0, p0, Lyou/zta/sis/zta/zta/zta/oif;->JTa:I

    return p0
.end method

.method public ssp(I)Lyou/zta/sis/zta/wtn;
    .locals 10

    invoke-static {}, Lyou/zta/sis/sis/tsu;->create()[I

    move-result-object v0

    invoke-static {}, Lyou/zta/sis/sis/tsu;->create()[I

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    iget v5, p0, Lyou/zta/sis/zta/zta/zta/oif;->JTa:I

    if-ge v3, v5, :cond_1

    xor-int v5, v3, p1

    add-int/lit8 v5, v5, -0x1

    shr-int/lit8 v5, v5, 0x1f

    move v6, v2

    :goto_1
    const/4 v7, 0x7

    if-ge v6, v7, :cond_0

    aget v7, v0, v6

    iget-object v8, p0, Lyou/zta/sis/zta/zta/zta/oif;->LTa:[I

    add-int v9, v4, v6

    aget v9, v8, v9

    and-int/2addr v9, v5

    xor-int/2addr v7, v9

    aput v7, v0, v6

    aget v7, v1, v6

    add-int/lit8 v9, v4, 0x7

    add-int/2addr v9, v6

    aget v8, v8, v9

    and-int/2addr v8, v5

    xor-int/2addr v7, v8

    aput v7, v1, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0xe

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lyou/zta/sis/zta/zta/zta/oif;->this$0:Lyou/zta/sis/zta/zta/zta/bvj;

    new-instance p1, Lyou/zta/sis/zta/zta/zta/gwm;

    invoke-direct {p1, v0}, Lyou/zta/sis/zta/zta/zta/gwm;-><init>([I)V

    new-instance v0, Lyou/zta/sis/zta/zta/zta/gwm;

    invoke-direct {v0, v1}, Lyou/zta/sis/zta/zta/zta/gwm;-><init>([I)V

    invoke-virtual {p0, p1, v0, v2}, Lyou/zta/sis/zta/zta/zta/bvj;->zta(Lyou/zta/sis/zta/cno;Lyou/zta/sis/zta/cno;Z)Lyou/zta/sis/zta/wtn;

    move-result-object p0

    return-object p0
.end method
