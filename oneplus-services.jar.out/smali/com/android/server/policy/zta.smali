.class public final synthetic Lcom/android/server/policy/zta;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic ad:Lcom/android/server/policy/cjf;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/policy/cjf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/policy/zta;->ad:Lcom/android/server/policy/cjf;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/server/policy/zta;->ad:Lcom/android/server/policy/cjf;

    invoke-virtual {p0}, Lcom/android/server/policy/cjf;->Cd()V

    return-void
.end method
