.class public Lcom/oneplus/settings/controllers/WirelessChargingCategoryPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "WirelessChargingCategoryPreferenceController.java"


# static fields
.field private static final KEY_WIRELESS_CHARGING_CATEGORY:Ljava/lang/String; = "wireless_charging_category"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oneplus/settings/controllers/WirelessChargingCategoryPreferenceController;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 2

    const/4 p0, 0x1

    new-array p0, p0, [I

    const/4 v0, 0x0

    const/16 v1, 0x112

    aput v1, p0, v0

    invoke-static {p0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isGuestMode()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    return v0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "wireless_charging_category"

    return-object p0
.end method
