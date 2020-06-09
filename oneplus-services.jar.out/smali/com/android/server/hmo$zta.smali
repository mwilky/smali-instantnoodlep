.class Lcom/android/server/hmo$zta;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oneplus/config/ConfigObserver$ConfigUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/hmo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zta"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/hmo;


# direct methods
.method private constructor <init>(Lcom/android/server/hmo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/hmo$zta;->this$0:Lcom/android/server/hmo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/hmo;Lcom/android/server/ire;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/hmo$zta;-><init>(Lcom/android/server/hmo;)V

    return-void
.end method


# virtual methods
.method public updateConfig(Lorg/json/JSONArray;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/hmo$zta;->this$0:Lcom/android/server/hmo;

    invoke-static {p0, p1}, Lcom/android/server/hmo;->zta(Lcom/android/server/hmo;Lorg/json/JSONArray;)V

    return-void
.end method
