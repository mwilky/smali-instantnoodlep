.class Lcom/android/server/am/w;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/x;


# direct methods
.method constructor <init>(Lcom/android/server/am/x;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/w;->this$0:Lcom/android/server/am/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlarm()V
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/w;->this$0:Lcom/android/server/am/x;

    invoke-static {p0}, Lcom/android/server/am/x;->bio(Lcom/android/server/am/x;)V

    return-void
.end method
