.class Lcom/android/server/am/wtn;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/AppRecordTransition;->initOMMAppRecord(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/AppRecordTransition;


# direct methods
.method constructor <init>(Lcom/android/server/am/AppRecordTransition;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/wtn;->this$0:Lcom/android/server/am/AppRecordTransition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/wtn;->this$0:Lcom/android/server/am/AppRecordTransition;

    invoke-static {p0}, Lcom/android/server/am/AppRecordTransition;->access$900(Lcom/android/server/am/AppRecordTransition;)V

    return-void
.end method
