.class Lcom/oneplus/settings/widget/OPHotspotApUpstreamSelectionPreference$SavedState;
.super Landroidx/preference/Preference$BaseSavedState;
.source "OPHotspotApUpstreamSelectionPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/widget/OPHotspotApUpstreamSelectionPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oneplus/settings/widget/OPHotspotApUpstreamSelectionPreference$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field enabledAuto:Z

.field enabledCell:Z

.field enabledWifi:Z

.field shouldRestore:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/oneplus/settings/widget/OPHotspotApUpstreamSelectionPreference$SavedState$1;

    invoke-direct {v0}, Lcom/oneplus/settings/widget/OPHotspotApUpstreamSelectionPreference$SavedState$1;-><init>()V

    sput-object v0, Lcom/oneplus/settings/widget/OPHotspotApUpstreamSelectionPreference$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/oneplus/settings/widget/OPHotspotApUpstreamSelectionPreference$1;)V
    .locals 2

    invoke-direct {p0, p1}, Landroidx/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    iput-boolean p2, p0, Lcom/oneplus/settings/widget/OPHotspotApUpstreamSelectionPreference$SavedState;->shouldRestore:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p2

    if-ne p2, v1, :cond_1

    move p2, v1

    goto :goto_1

    :cond_1
    move p2, v0

    :goto_1
    iput-boolean p2, p0, Lcom/oneplus/settings/widget/OPHotspotApUpstreamSelectionPreference$SavedState;->enabledAuto:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p2

    if-ne p2, v1, :cond_2

    move p2, v1

    goto :goto_2

    :cond_2
    move p2, v0

    :goto_2
    iput-boolean p2, p0, Lcom/oneplus/settings/widget/OPHotspotApUpstreamSelectionPreference$SavedState;->enabledWifi:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-ne p1, v1, :cond_3

    move v0, v1

    :cond_3
    iput-boolean v0, p0, Lcom/oneplus/settings/widget/OPHotspotApUpstreamSelectionPreference$SavedState;->enabledCell:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "OPHotspotApUpstreamSelectionPreference.SavedState{"

    invoke-static {v0}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline23(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " shouldRestore="

    invoke-static {p0, v0, v1}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline30(Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/oneplus/settings/widget/OPHotspotApUpstreamSelectionPreference$SavedState;->shouldRestore:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " enabledAuto="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/settings/widget/OPHotspotApUpstreamSelectionPreference$SavedState;->enabledAuto:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " enabledWifi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/settings/widget/OPHotspotApUpstreamSelectionPreference$SavedState;->enabledWifi:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " enabledCell="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/oneplus/settings/widget/OPHotspotApUpstreamSelectionPreference$SavedState;->enabledCell:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/AbsSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    iget-boolean p2, p0, Lcom/oneplus/settings/widget/OPHotspotApUpstreamSelectionPreference$SavedState;->shouldRestore:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean p2, p0, Lcom/oneplus/settings/widget/OPHotspotApUpstreamSelectionPreference$SavedState;->enabledAuto:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean p2, p0, Lcom/oneplus/settings/widget/OPHotspotApUpstreamSelectionPreference$SavedState;->enabledWifi:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean p0, p0, Lcom/oneplus/settings/widget/OPHotspotApUpstreamSelectionPreference$SavedState;->enabledCell:Z

    int-to-byte p0, p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
