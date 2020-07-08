.class Lcom/android/server/engineer/oif$zta;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/engineer/oif;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "zta"
.end annotation


# instance fields
.field public lL:Ljava/lang/String;

.field public mL:Ljava/lang/String;

.field public result:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/engineer/oif$zta;->result:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/engineer/oif$zta;->result:I

    iput-object p2, p0, Lcom/android/server/engineer/oif$zta;->lL:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/engineer/oif$zta;->mL:Ljava/lang/String;

    return-void
.end method
