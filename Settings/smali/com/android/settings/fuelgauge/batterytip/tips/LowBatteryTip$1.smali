.class Lcom/android/settings/fuelgauge/batterytip/tips/LowBatteryTip$1;
.super Ljava/lang/Object;
.source "LowBatteryTip.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fuelgauge/batterytip/tips/LowBatteryTip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    new-instance p0, Lcom/android/settings/fuelgauge/batterytip/tips/LowBatteryTip;

    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/batterytip/tips/LowBatteryTip;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public newArray(I)[Ljava/lang/Object;
    .locals 0

    new-array p0, p1, [Lcom/android/settings/fuelgauge/batterytip/tips/LowBatteryTip;

    return-object p0
.end method
