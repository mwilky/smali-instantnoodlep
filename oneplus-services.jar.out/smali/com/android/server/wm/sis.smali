.class public final synthetic Lcom/android/server/wm/sis;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic ad:Lcom/android/server/wm/hmo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/hmo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/sis;->ad:Lcom/android/server/wm/hmo;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/sis;->ad:Lcom/android/server/wm/hmo;

    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/hmo;->sis(Lcom/android/server/wm/WindowState;)V

    return-void
.end method
