.class Lcom/android/settings/RadioInfo$RadioInfoPhoneStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "RadioInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/RadioInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RadioInfoPhoneStateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/RadioInfo;


# direct methods
.method synthetic constructor <init>(Lcom/android/settings/RadioInfo;Lcom/android/settings/RadioInfo$1;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/RadioInfo$RadioInfoPhoneStateListener;->this$0:Lcom/android/settings/RadioInfo;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallForwardingIndicatorChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/RadioInfo$RadioInfoPhoneStateListener;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {v0, p1}, Lcom/android/settings/RadioInfo;->access$902(Lcom/android/settings/RadioInfo;Z)Z

    iget-object p0, p0, Lcom/android/settings/RadioInfo$RadioInfoPhoneStateListener;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {p0}, Lcom/android/settings/RadioInfo;->access$1000(Lcom/android/settings/RadioInfo;)V

    return-void
.end method

.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 0

    iget-object p2, p0, Lcom/android/settings/RadioInfo$RadioInfoPhoneStateListener;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {p2}, Lcom/android/settings/RadioInfo;->access$300(Lcom/android/settings/RadioInfo;)V

    iget-object p0, p0, Lcom/android/settings/RadioInfo$RadioInfoPhoneStateListener;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {p0, p1}, Lcom/android/settings/RadioInfo;->access$500(Lcom/android/settings/RadioInfo;I)V

    return-void
.end method

.method public onCellInfoChanged(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "onCellInfoChanged: arrayCi="

    invoke-static {v0, p1}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline14(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/RadioInfo;->access$1100(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/RadioInfo$RadioInfoPhoneStateListener;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {v0, p1}, Lcom/android/settings/RadioInfo;->access$1202(Lcom/android/settings/RadioInfo;Ljava/util/List;)Ljava/util/List;

    iget-object p0, p0, Lcom/android/settings/RadioInfo$RadioInfoPhoneStateListener;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {p0}, Lcom/android/settings/RadioInfo;->access$1200(Lcom/android/settings/RadioInfo;)Ljava/util/List;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/settings/RadioInfo;->access$1300(Lcom/android/settings/RadioInfo;Ljava/util/List;)V

    return-void
.end method

.method public onCellLocationChanged(Landroid/telephony/CellLocation;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/RadioInfo$RadioInfoPhoneStateListener;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {p0, p1}, Lcom/android/settings/RadioInfo;->access$600(Lcom/android/settings/RadioInfo;Landroid/telephony/CellLocation;)V

    return-void
.end method

.method public onDataActivity(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/RadioInfo$RadioInfoPhoneStateListener;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {p0}, Lcom/android/settings/RadioInfo;->access$400(Lcom/android/settings/RadioInfo;)V

    return-void
.end method

.method public onDataConnectionStateChanged(I)V
    .locals 0

    iget-object p1, p0, Lcom/android/settings/RadioInfo$RadioInfoPhoneStateListener;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {p1}, Lcom/android/settings/RadioInfo;->access$200(Lcom/android/settings/RadioInfo;)V

    iget-object p0, p0, Lcom/android/settings/RadioInfo$RadioInfoPhoneStateListener;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {p0}, Lcom/android/settings/RadioInfo;->access$300(Lcom/android/settings/RadioInfo;)V

    return-void
.end method

.method public onMessageWaitingIndicatorChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/RadioInfo$RadioInfoPhoneStateListener;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {v0, p1}, Lcom/android/settings/RadioInfo;->access$702(Lcom/android/settings/RadioInfo;Z)Z

    iget-object p0, p0, Lcom/android/settings/RadioInfo$RadioInfoPhoneStateListener;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {p0}, Lcom/android/settings/RadioInfo;->access$800(Lcom/android/settings/RadioInfo;)V

    return-void
.end method

.method public onPhysicalChannelConfigurationChanged(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/PhysicalChannelConfig;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/settings/RadioInfo$RadioInfoPhoneStateListener;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {p0, p1}, Lcom/android/settings/RadioInfo;->access$1800(Lcom/android/settings/RadioInfo;Ljava/util/List;)V

    return-void
.end method

.method public onPreciseCallStateChanged(Landroid/telephony/PreciseCallState;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/RadioInfo$RadioInfoPhoneStateListener;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {p0}, Lcom/android/settings/RadioInfo;->access$300(Lcom/android/settings/RadioInfo;)V

    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 1

    const-string v0, "onServiceStateChanged: ServiceState="

    invoke-static {v0, p1}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline14(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/RadioInfo;->access$1100(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/RadioInfo$RadioInfoPhoneStateListener;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {v0, p1}, Lcom/android/settings/RadioInfo;->access$1500(Lcom/android/settings/RadioInfo;Landroid/telephony/ServiceState;)V

    iget-object p1, p0, Lcom/android/settings/RadioInfo$RadioInfoPhoneStateListener;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {p1}, Lcom/android/settings/RadioInfo;->access$1600(Lcom/android/settings/RadioInfo;)V

    iget-object p1, p0, Lcom/android/settings/RadioInfo$RadioInfoPhoneStateListener;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {p1}, Lcom/android/settings/RadioInfo;->access$300(Lcom/android/settings/RadioInfo;)V

    iget-object p0, p0, Lcom/android/settings/RadioInfo$RadioInfoPhoneStateListener;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {p0}, Lcom/android/settings/RadioInfo;->access$1700(Lcom/android/settings/RadioInfo;)V

    return-void
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 1

    const-string v0, "onSignalStrengthChanged: SignalStrength="

    invoke-static {v0, p1}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline14(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/RadioInfo;->access$1100(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/settings/RadioInfo$RadioInfoPhoneStateListener;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {p0, p1}, Lcom/android/settings/RadioInfo;->access$1400(Lcom/android/settings/RadioInfo;Landroid/telephony/SignalStrength;)V

    return-void
.end method
