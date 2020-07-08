.class public final synthetic Lcom/android/server/you;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic ad:Lcom/android/server/B;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/B;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/you;->ad:Lcom/android/server/B;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/server/you;->ad:Lcom/android/server/B;

    invoke-virtual {p0}, Lcom/android/server/B;->Na()V

    return-void
.end method
