.class public Lcom/oneplus/settings/statusbar/ClockPreference;
.super Lcom/android/settings/RestrictedListPreference;
.source "ClockPreference.java"


# instance fields
.field private mBlacklist:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mClock:Ljava/lang/String;

.field private mClockEnabled:Z

.field private mHasSeconds:Z

.field private mHasSetValue:Z

.field private mUtils:Lcom/oneplus/settings/statusbar/Utils;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/settings/RestrictedListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Lcom/oneplus/settings/statusbar/Utils;

    invoke-direct {p2, p1}, Lcom/oneplus/settings/statusbar/Utils;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/oneplus/settings/statusbar/ClockPreference;->mUtils:Lcom/oneplus/settings/statusbar/Utils;

    const p2, 0x10406bf

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/statusbar/ClockPreference;->mClock:Ljava/lang/String;

    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/CharSequence;

    const/4 p2, 0x0

    const-string v0, "seconds"

    aput-object v0, p1, p2

    const/4 p2, 0x1

    const-string v0, "default"

    aput-object v0, p1, p2

    const/4 p2, 0x2

    const-string v0, "disabled"

    aput-object v0, p1, p2

    invoke-virtual {p0, p1}, Landroidx/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateStatus()V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/settings/statusbar/ClockPreference;->mUtils:Lcom/oneplus/settings/statusbar/Utils;

    const-string v1, "icon_blacklist"

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/statusbar/Utils;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/settings/statusbar/Utils;->getIconBlacklist(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/statusbar/ClockPreference;->mBlacklist:Landroid/util/ArraySet;

    iget-object v0, p0, Lcom/oneplus/settings/statusbar/ClockPreference;->mBlacklist:Landroid/util/ArraySet;

    iget-object v1, p0, Lcom/oneplus/settings/statusbar/ClockPreference;->mClock:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/oneplus/settings/statusbar/ClockPreference;->mClockEnabled:Z

    iget-object v0, p0, Lcom/oneplus/settings/statusbar/ClockPreference;->mUtils:Lcom/oneplus/settings/statusbar/Utils;

    const/4 v2, 0x0

    const-string v3, "clock_seconds"

    invoke-virtual {v0, v3, v2}, Lcom/oneplus/settings/statusbar/Utils;->getValue(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/oneplus/settings/statusbar/ClockPreference;->mHasSeconds:Z

    const-string v0, "updateStatus mBlacklist:"

    invoke-static {v0}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline23(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/statusbar/ClockPreference;->mBlacklist:Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " TextUtils.join:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oneplus/settings/statusbar/ClockPreference;->mBlacklist:Landroid/util/ArraySet;

    const-string v1, ","

    invoke-static {v1, p0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ClockPreference"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public onAttached()V
    .locals 1

    invoke-super {p0}, Landroidx/preference/Preference;->onAttached()V

    invoke-direct {p0}, Lcom/oneplus/settings/statusbar/ClockPreference;->updateStatus()V

    iget-boolean v0, p0, Lcom/oneplus/settings/statusbar/ClockPreference;->mHasSetValue:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/settings/statusbar/ClockPreference;->mHasSetValue:Z

    iget-boolean v0, p0, Lcom/oneplus/settings/statusbar/ClockPreference;->mClockEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/settings/statusbar/ClockPreference;->mHasSeconds:Z

    if-eqz v0, :cond_0

    const-string v0, "seconds"

    invoke-virtual {p0, v0}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/settings/statusbar/ClockPreference;->mClockEnabled:Z

    if-eqz v0, :cond_1

    const-string v0, "default"

    invoke-virtual {p0, v0}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "disabled"

    invoke-virtual {p0, v0}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onDetached()V
    .locals 0

    invoke-super {p0}, Landroidx/preference/Preference;->onDetached()V

    return-void
.end method

.method protected persistString(Ljava/lang/String;)Z
    .locals 4

    iget-object v0, p0, Lcom/oneplus/settings/statusbar/ClockPreference;->mUtils:Lcom/oneplus/settings/statusbar/Utils;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/oneplus/settings/statusbar/ClockPreference;->updateStatus()V

    iget-object v0, p0, Lcom/oneplus/settings/statusbar/ClockPreference;->mUtils:Lcom/oneplus/settings/statusbar/Utils;

    const-string v2, "seconds"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "clock_seconds"

    invoke-virtual {v0, v3, v2}, Lcom/oneplus/settings/statusbar/Utils;->setValue(Ljava/lang/String;I)V

    const-string v0, "disabled"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/settings/statusbar/ClockPreference;->mBlacklist:Landroid/util/ArraySet;

    iget-object v2, p0, Lcom/oneplus/settings/statusbar/ClockPreference;->mClock:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/statusbar/ClockPreference;->mBlacklist:Landroid/util/ArraySet;

    iget-object v2, p0, Lcom/oneplus/settings/statusbar/ClockPreference;->mClock:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update value:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " mBlacklist:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/oneplus/settings/statusbar/ClockPreference;->mBlacklist:Landroid/util/ArraySet;

    const-string v2, ","

    invoke-static {v2, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ClockPreference"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/oneplus/settings/statusbar/ClockPreference;->mUtils:Lcom/oneplus/settings/statusbar/Utils;

    iget-object p0, p0, Lcom/oneplus/settings/statusbar/ClockPreference;->mBlacklist:Landroid/util/ArraySet;

    invoke-static {v2, p0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "icon_blacklist"

    invoke-virtual {p1, v0, p0}, Lcom/oneplus/settings/statusbar/Utils;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method
