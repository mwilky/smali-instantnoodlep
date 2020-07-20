.class Lcom/android/server/am/A;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/B;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/B;


# direct methods
.method constructor <init>(Lcom/android/server/am/B;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/A;->this$0:Lcom/android/server/am/B;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlarm()V
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/A;->this$0:Lcom/android/server/am/B;

    invoke-static {p0}, Lcom/android/server/am/B;->bio(Lcom/android/server/am/B;)V

    return-void
.end method
