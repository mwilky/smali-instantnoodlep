.class public final synthetic Lcom/android/server/wm/you;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/ToBooleanFunction;


# instance fields
.field private final synthetic ad:Lcom/android/server/wm/hmo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/hmo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/you;->ad:Lcom/android/server/wm/hmo;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/you;->ad:Lcom/android/server/wm/hmo;

    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/hmo;->cno(Lcom/android/server/wm/WindowState;)Z

    move-result p0

    return p0
.end method
