.class Lcom/android/settings/network/telephony/NetworkScanHelper$1;
.super Ljava/lang/Object;
.source "NetworkScanHelper.java"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/network/telephony/NetworkScanHelper;->startNetworkScan(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/FutureCallback<",
        "Ljava/util/List<",
        "Landroid/telephony/CellInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/network/telephony/NetworkScanHelper;


# direct methods
.method constructor <init>(Lcom/android/settings/network/telephony/NetworkScanHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/network/telephony/NetworkScanHelper$1;->this$0:Lcom/android/settings/network/telephony/NetworkScanHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iget-object p0, p0, Lcom/android/settings/network/telephony/NetworkScanHelper$1;->this$0:Lcom/android/settings/network/telephony/NetworkScanHelper;

    invoke-static {p0, p1}, Lcom/android/settings/network/telephony/NetworkScanHelper;->access$300(Lcom/android/settings/network/telephony/NetworkScanHelper;I)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Ljava/util/List;

    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkScanHelper$1;->this$0:Lcom/android/settings/network/telephony/NetworkScanHelper;

    invoke-static {v0, p1}, Lcom/android/settings/network/telephony/NetworkScanHelper;->access$100(Lcom/android/settings/network/telephony/NetworkScanHelper;Ljava/util/List;)V

    iget-object p0, p0, Lcom/android/settings/network/telephony/NetworkScanHelper$1;->this$0:Lcom/android/settings/network/telephony/NetworkScanHelper;

    invoke-static {p0}, Lcom/android/settings/network/telephony/NetworkScanHelper;->access$200(Lcom/android/settings/network/telephony/NetworkScanHelper;)V

    return-void
.end method
