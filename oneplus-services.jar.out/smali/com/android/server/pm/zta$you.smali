.class Lcom/android/server/pm/zta$you;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oneplus/config/ConfigObserver$ConfigUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/zta;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "you"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/zta;


# direct methods
.method constructor <init>(Lcom/android/server/pm/zta;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/zta$you;->this$0:Lcom/android/server/pm/zta;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateConfig(Lorg/json/JSONArray;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/zta$you;->this$0:Lcom/android/server/pm/zta;

    invoke-static {p0, p1}, Lcom/android/server/pm/zta;->zta(Lcom/android/server/pm/zta;Lorg/json/JSONArray;)V

    return-void
.end method
