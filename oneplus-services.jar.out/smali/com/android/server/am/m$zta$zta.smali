.class Lcom/android/server/am/m$zta$zta;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/m$zta;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zta"
.end annotation


# instance fields
.field QD:Lcom/android/server/am/m$you;

.field RD:I

.field SD:Z

.field final synthetic this$1:Lcom/android/server/am/m$zta;


# direct methods
.method private constructor <init>(Lcom/android/server/am/m$zta;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/m$zta$zta;->this$1:Lcom/android/server/am/m$zta;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/server/am/m$zta$zta;->RD:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/am/m$zta$zta;->SD:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/m$zta;Lcom/android/server/am/OpAntiBurnController$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/m$zta$zta;-><init>(Lcom/android/server/am/m$zta;)V

    return-void
.end method
