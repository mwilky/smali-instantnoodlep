.class Lcom/android/server/vdw$sis;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oneplus/config/ConfigObserver$ConfigUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vdw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "sis"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/vdw;


# direct methods
.method private constructor <init>(Lcom/android/server/vdw;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/vdw$sis;->this$0:Lcom/android/server/vdw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/vdw;Lcom/android/server/les;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/vdw$sis;-><init>(Lcom/android/server/vdw;)V

    return-void
.end method


# virtual methods
.method public updateConfig(Lorg/json/JSONArray;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/vdw$sis;->this$0:Lcom/android/server/vdw;

    invoke-static {p0, p1}, Lcom/android/server/vdw;->sis(Lcom/android/server/vdw;Lorg/json/JSONArray;)V

    return-void
.end method
