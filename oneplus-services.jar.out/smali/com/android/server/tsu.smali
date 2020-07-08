.class public final synthetic Lcom/android/server/tsu;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic ad:Lcom/android/server/B;

.field private final synthetic bd:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/B;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/tsu;->ad:Lcom/android/server/B;

    iput-object p2, p0, Lcom/android/server/tsu;->bd:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/tsu;->ad:Lcom/android/server/B;

    iget-object p0, p0, Lcom/android/server/tsu;->bd:Landroid/content/Intent;

    invoke-virtual {v0, p0}, Lcom/android/server/B;->zta(Landroid/content/Intent;)V

    return-void
.end method
