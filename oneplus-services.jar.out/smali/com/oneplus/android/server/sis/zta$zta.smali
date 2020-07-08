.class Lcom/oneplus/android/server/sis/zta$zta;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oneplus/config/ConfigObserver$ConfigUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/android/server/sis/zta;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "zta"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/android/server/sis/zta;


# direct methods
.method constructor <init>(Lcom/oneplus/android/server/sis/zta;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/sis/zta$zta;->this$0:Lcom/oneplus/android/server/sis/zta;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateConfig(Lorg/json/JSONArray;)V
    .locals 0

    iget-object p1, p0, Lcom/oneplus/android/server/sis/zta$zta;->this$0:Lcom/oneplus/android/server/sis/zta;

    invoke-virtual {p1}, Lcom/oneplus/android/server/sis/zta;->kf()V

    iget-object p0, p0, Lcom/oneplus/android/server/sis/zta$zta;->this$0:Lcom/oneplus/android/server/sis/zta;

    invoke-static {p0}, Lcom/oneplus/android/server/sis/zta;->zta(Lcom/oneplus/android/server/sis/zta;)V

    return-void
.end method
