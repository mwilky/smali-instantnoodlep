.class Lcom/android/server/qeg$sis;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oneplus/config/ConfigObserver$ConfigUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/qeg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "sis"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/qeg;


# direct methods
.method private constructor <init>(Lcom/android/server/qeg;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/qeg$sis;->this$0:Lcom/android/server/qeg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/qeg;Lcom/android/server/irq;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/qeg$sis;-><init>(Lcom/android/server/qeg;)V

    return-void
.end method


# virtual methods
.method public updateConfig(Lorg/json/JSONArray;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/qeg$sis;->this$0:Lcom/android/server/qeg;

    invoke-static {p0, p1}, Lcom/android/server/qeg;->sis(Lcom/android/server/qeg;Lorg/json/JSONArray;)V

    return-void
.end method
