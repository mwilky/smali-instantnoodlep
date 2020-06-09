.class Lcom/android/server/v$zta;
.super Lcom/android/server/am/rtg;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zta"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/v;


# direct methods
.method private constructor <init>(Lcom/android/server/v;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/v$zta;->this$0:Lcom/android/server/v;

    invoke-direct {p0}, Lcom/android/server/am/rtg;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/v;Lcom/android/server/u;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/v$zta;-><init>(Lcom/android/server/v;)V

    return-void
.end method


# virtual methods
.method public tsu(IZ)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/v$zta;->this$0:Lcom/android/server/v;

    invoke-virtual {p0, p1}, Lcom/android/server/v;->ugm(I)V

    return-void
.end method
