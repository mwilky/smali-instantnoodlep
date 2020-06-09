.class Lcom/android/server/am/k$zta;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oneplus/config/ConfigObserver$ConfigUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zta"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/k;


# direct methods
.method private constructor <init>(Lcom/android/server/am/k;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/k$zta;->this$0:Lcom/android/server/am/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/k;Lcom/android/server/am/j;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/k$zta;-><init>(Lcom/android/server/am/k;)V

    return-void
.end method


# virtual methods
.method public updateConfig(Lorg/json/JSONArray;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/k$zta;->this$0:Lcom/android/server/am/k;

    invoke-static {p0, p1}, Lcom/android/server/am/k;->zta(Lcom/android/server/am/k;Lorg/json/JSONArray;)V

    return-void
.end method
