.class public Lcom/android/settings/deviceinfo/hardwareinfo/HardwareInfoFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "HardwareInfoFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "HardwareInfo"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x35e

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f160063

    return p0
.end method
