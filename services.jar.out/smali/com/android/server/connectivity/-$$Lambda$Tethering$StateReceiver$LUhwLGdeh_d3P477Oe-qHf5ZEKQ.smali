.class public final synthetic Lcom/android/server/connectivity/-$$Lambda$Tethering$StateReceiver$LUhwLGdeh_d3P477Oe-qHf5ZEKQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/connectivity/Tethering$StateReceiver;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/connectivity/Tethering$StateReceiver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/connectivity/-$$Lambda$Tethering$StateReceiver$LUhwLGdeh_d3P477Oe-qHf5ZEKQ;->f$0:Lcom/android/server/connectivity/Tethering$StateReceiver;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/-$$Lambda$Tethering$StateReceiver$LUhwLGdeh_d3P477Oe-qHf5ZEKQ;->f$0:Lcom/android/server/connectivity/Tethering$StateReceiver;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Tethering$StateReceiver;->lambda$onReceive$0$Tethering$StateReceiver()V

    return-void
.end method
