.class public final synthetic Lcom/android/server/ssp;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic ad:Lcom/android/server/z;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/z;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/ssp;->ad:Lcom/android/server/z;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/server/ssp;->ad:Lcom/android/server/z;

    invoke-virtual {p0}, Lcom/android/server/z;->Oa()V

    return-void
.end method
