.class public abstract Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;
.super Ljava/lang/Object;
.source "BatteryTip.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field static final TIP_ORDER:Landroid/util/SparseIntArray;


# instance fields
.field protected mNeedUpdate:Z

.field protected mShowDialog:Z

.field protected mState:I

.field protected mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->TIP_ORDER:Landroid/util/SparseIntArray;

    sget-object v0, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->TIP_ORDER:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->TIP_ORDER:Landroid/util/SparseIntArray;

    const/4 v3, 0x3

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->TIP_ORDER:Landroid/util/SparseIntArray;

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->TIP_ORDER:Landroid/util/SparseIntArray;

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->TIP_ORDER:Landroid/util/SparseIntArray;

    const/4 v3, 0x4

    const/4 v4, 0x6

    invoke-virtual {v0, v4, v3}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->TIP_ORDER:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->TIP_ORDER:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->TIP_ORDER:Landroid/util/SparseIntArray;

    const/4 v1, 0x7

    invoke-virtual {v0, v1, v1}, Landroid/util/SparseIntArray;->append(II)V

    return-void
.end method

.method constructor <init>(IIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->mType:I

    iput p2, p0, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->mState:I

    iput-boolean p3, p0, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->mShowDialog:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->mNeedUpdate:Z

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->mType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->mState:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->mShowDialog:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->mNeedUpdate:Z

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;)I
    .locals 1

    sget-object v0, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->TIP_ORDER:Landroid/util/SparseIntArray;

    iget p0, p0, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->mType:I

    invoke-virtual {v0, p0}, Landroid/util/SparseIntArray;->get(I)I

    move-result p0

    sget-object v0, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->TIP_ORDER:Landroid/util/SparseIntArray;

    iget p1, p1, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->mType:I

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    sub-int/2addr p0, p1

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;

    invoke-virtual {p0, p1}, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->compareTo(Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;)I

    move-result p0

    return p0
.end method

.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract getIconId()I
.end method

.method public getIconTintColorId()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public getState()I
    .locals 0

    iget p0, p0, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->mState:I

    return p0
.end method

.method public abstract getSummary(Landroid/content/Context;)Ljava/lang/CharSequence;
.end method

.method public abstract getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;
.end method

.method public getType()I
    .locals 0

    iget p0, p0, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->mType:I

    return p0
.end method

.method public abstract log(Landroid/content/Context;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;)V
.end method

.method public needUpdate()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->mNeedUpdate:Z

    return p0
.end method

.method public sanityCheck(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public shouldShowDialog()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->mShowDialog:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "type="

    invoke-static {v0}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline23(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->mState:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updatePreference(Landroidx/preference/Preference;)V
    .locals 2

    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->getSummary(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->getIconId()I

    move-result v1

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setIcon(I)V

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->getIconTintColorId()I

    move-result p0

    const/4 v1, -0x1

    if-eq p0, v1, :cond_0

    invoke-virtual {p1}, Landroidx/preference/Preference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :cond_0
    return-void
.end method

.method public abstract updateState(Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;)V
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->mType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->mState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->mShowDialog:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean p0, p0, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->mNeedUpdate:Z

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void
.end method
