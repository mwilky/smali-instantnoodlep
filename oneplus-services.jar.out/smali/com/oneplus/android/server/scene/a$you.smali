.class public Lcom/oneplus/android/server/scene/a$you;
.super Landroid/database/ContentObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/android/server/scene/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "you"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/android/server/scene/a;


# direct methods
.method public constructor <init>(Lcom/oneplus/android/server/scene/a;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/scene/a$you;->this$0:Lcom/oneplus/android/server/scene/a;

    invoke-direct {p0, p3}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    iget-object p1, p0, Lcom/oneplus/android/server/scene/a$you;->this$0:Lcom/oneplus/android/server/scene/a;

    invoke-static {p1}, Lcom/oneplus/android/server/scene/a;->dma(Lcom/oneplus/android/server/scene/a;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/oneplus/android/server/scene/a$you;->this$0:Lcom/oneplus/android/server/scene/a;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/oneplus/android/server/scene/a;->you(Lcom/oneplus/android/server/scene/a;Z)V

    :cond_0
    return-void
.end method
