.class Lcom/android/settings/RadioInfo$4;
.super Ljava/lang/Thread;
.source "RadioInfo.java"


# instance fields
.field final synthetic this$0:Lcom/android/settings/RadioInfo;

.field final synthetic val$updateAllCellInfoResults:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/settings/RadioInfo;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/RadioInfo$4;->this$0:Lcom/android/settings/RadioInfo;

    iput-object p2, p0, Lcom/android/settings/RadioInfo$4;->val$updateAllCellInfoResults:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/RadioInfo$4;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {v0}, Lcom/android/settings/RadioInfo;->access$2400(Lcom/android/settings/RadioInfo;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/RadioInfo;->access$1202(Lcom/android/settings/RadioInfo;Ljava/util/List;)Ljava/util/List;

    iget-object v0, p0, Lcom/android/settings/RadioInfo$4;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {v0}, Lcom/android/settings/RadioInfo;->access$2400(Lcom/android/settings/RadioInfo;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/RadioInfo;->access$2302(Lcom/android/settings/RadioInfo;Landroid/telephony/CellLocation;)Landroid/telephony/CellLocation;

    iget-object v0, p0, Lcom/android/settings/RadioInfo$4;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {v0}, Lcom/android/settings/RadioInfo;->access$2500(Lcom/android/settings/RadioInfo;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/RadioInfo$4;->val$updateAllCellInfoResults:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
