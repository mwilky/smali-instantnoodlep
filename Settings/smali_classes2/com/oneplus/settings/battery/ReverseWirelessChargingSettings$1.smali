.class Lcom/oneplus/settings/battery/ReverseWirelessChargingSettings$1;
.super Landroid/database/ContentObserver;
.source "ReverseWirelessChargingSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/battery/ReverseWirelessChargingSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/battery/ReverseWirelessChargingSettings;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/battery/ReverseWirelessChargingSettings;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/battery/ReverseWirelessChargingSettings$1;->this$0:Lcom/oneplus/settings/battery/ReverseWirelessChargingSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2

    iget-object p1, p0, Lcom/oneplus/settings/battery/ReverseWirelessChargingSettings$1;->this$0:Lcom/oneplus/settings/battery/ReverseWirelessChargingSettings;

    invoke-static {p1}, Lcom/oneplus/settings/battery/ReverseWirelessChargingSettings;->access$000(Lcom/oneplus/settings/battery/ReverseWirelessChargingSettings;)Landroid/content/ContentResolver;

    move-result-object p1

    const/4 p2, 0x0

    const-string v0, "reverse_wireless_charging_status"

    const/4 v1, -0x2

    invoke-static {p1, v0, p2, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    iget-object p0, p0, Lcom/oneplus/settings/battery/ReverseWirelessChargingSettings$1;->this$0:Lcom/oneplus/settings/battery/ReverseWirelessChargingSettings;

    invoke-static {p0}, Lcom/oneplus/settings/battery/ReverseWirelessChargingSettings;->access$100(Lcom/oneplus/settings/battery/ReverseWirelessChargingSettings;)Landroidx/preference/SwitchPreference;

    move-result-object p0

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    :cond_0
    invoke-virtual {p0, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method
