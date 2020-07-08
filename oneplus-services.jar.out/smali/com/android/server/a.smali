.class Lcom/android/server/A;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oneplus/config/ConfigObserver$ConfigUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/B;->initInstance(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/B;


# direct methods
.method constructor <init>(Lcom/android/server/B;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/A;->this$0:Lcom/android/server/B;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateConfig(Lorg/json/JSONArray;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/A;->this$0:Lcom/android/server/B;

    invoke-static {p0, p1}, Lcom/android/server/B;->zta(Lcom/android/server/B;Lorg/json/JSONArray;)V

    return-void
.end method
