.class Lcom/android/server/OpPowerControllerService$you;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oneplus/config/ConfigObserver$ConfigUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OpPowerControllerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "you"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/OpPowerControllerService;


# direct methods
.method private constructor <init>(Lcom/android/server/OpPowerControllerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/OpPowerControllerService$you;->this$0:Lcom/android/server/OpPowerControllerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/OpPowerControllerService;Lcom/android/server/i;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/OpPowerControllerService$you;-><init>(Lcom/android/server/OpPowerControllerService;)V

    return-void
.end method


# virtual methods
.method public updateConfig(Lorg/json/JSONArray;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/OpPowerControllerService$you;->this$0:Lcom/android/server/OpPowerControllerService;

    invoke-static {p0, p1}, Lcom/android/server/OpPowerControllerService;->access$2600(Lcom/android/server/OpPowerControllerService;Lorg/json/JSONArray;)V

    return-void
.end method
