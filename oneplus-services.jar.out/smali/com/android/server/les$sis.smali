.class Lcom/android/server/les$sis;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oneplus/config/ConfigObserver$ConfigUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/les;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "sis"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/les;


# direct methods
.method constructor <init>(Lcom/android/server/les;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/les$sis;->this$0:Lcom/android/server/les;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateConfig(Lorg/json/JSONArray;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/les$sis;->this$0:Lcom/android/server/les;

    invoke-static {p0, p1}, Lcom/android/server/les;->zta(Lcom/android/server/les;Lorg/json/JSONArray;)V

    return-void
.end method
