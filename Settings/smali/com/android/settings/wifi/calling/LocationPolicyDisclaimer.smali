.class Lcom/android/settings/wifi/calling/LocationPolicyDisclaimer;
.super Lcom/android/settings/wifi/calling/DisclaimerItem;
.source "LocationPolicyDisclaimer.java"


# static fields
.field static final KEY_HAS_AGREED_LOCATION_DISCLAIMER:Ljava/lang/String; = "key_has_agreed_location_disclaimer"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/calling/DisclaimerItem;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method protected getMessageId()I
    .locals 0

    const p0, 0x7f1218b7

    return p0
.end method

.method protected getName()Ljava/lang/String;
    .locals 0

    const-string p0, "LocationPolicyDisclaimer"

    return-object p0
.end method

.method protected getPrefKey()Ljava/lang/String;
    .locals 0

    const-string p0, "key_has_agreed_location_disclaimer"

    return-object p0
.end method

.method protected getTitleId()I
    .locals 0

    const p0, 0x7f1218b8

    return p0
.end method

.method shouldShow()Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/DisclaimerItem;->getCarrierConfig()Landroid/os/PersistableBundle;

    move-result-object v0

    const-string v1, "show_wfc_location_privacy_policy_bool"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string v0, "shouldShow: false due to carrier config is false."

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/calling/DisclaimerItem;->logd(Ljava/lang/String;)V

    return v2

    :cond_0
    const-string v1, "carrier_default_wfc_ims_enabled_bool"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "shouldShow: false due to WFC is on as default."

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/calling/DisclaimerItem;->logd(Ljava/lang/String;)V

    return v2

    :cond_1
    invoke-super {p0}, Lcom/android/settings/wifi/calling/DisclaimerItem;->shouldShow()Z

    move-result p0

    return p0
.end method
