.class Lcom/android/server/am/m$tsu;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "tsu"
.end annotation


# static fields
.field static final Aa:I = 0x3e8

.field static final Ba:I = 0x3ea

.field static final Ca:Ljava/lang/String; = "pkgChangeAction"

.field static final KEY_PKG_NAME:Ljava/lang/String; = "pkgName"

.field static final KEY_UID:Ljava/lang/String; = "uid"


# instance fields
.field final synthetic this$0:Lcom/android/server/am/m;


# direct methods
.method constructor <init>(Lcom/android/server/am/m;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/m$tsu;->this$0:Lcom/android/server/am/m;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/am/m$tsu;->this$0:Lcom/android/server/am/m;

    const-string p1, "OnePlusAntiBurnConfig"

    invoke-static {p0, p1}, Lcom/android/server/am/m;->zta(Lcom/android/server/am/m;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
