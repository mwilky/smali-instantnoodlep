.class public Lcom/android/settings/display/AmbientDisplayAlwaysOnPreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "AmbientDisplayAlwaysOnPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/display/AmbientDisplayAlwaysOnPreferenceController$OnPreferenceChangedCallback;
    }
.end annotation


# static fields
.field private static final MY_USER:I


# instance fields
.field private final OFF:I

.field private final ON:I

.field private mCallback:Lcom/android/settings/display/AmbientDisplayAlwaysOnPreferenceController$OnPreferenceChangedCallback;

.field private mConfig:Landroid/hardware/display/AmbientDisplayConfiguration;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    sput v0, Lcom/android/settings/display/AmbientDisplayAlwaysOnPreferenceController;->MY_USER:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x1

    iput p1, p0, Lcom/android/settings/display/AmbientDisplayAlwaysOnPreferenceController;->ON:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/settings/display/AmbientDisplayAlwaysOnPreferenceController;->OFF:I

    return-void
.end method

.method private getConfig()Landroid/hardware/display/AmbientDisplayConfiguration;
    .locals 2

    iget-object v0, p0, Lcom/android/settings/display/AmbientDisplayAlwaysOnPreferenceController;->mConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    if-nez v0, :cond_0

    new-instance v0, Landroid/hardware/display/AmbientDisplayConfiguration;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/hardware/display/AmbientDisplayConfiguration;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/display/AmbientDisplayAlwaysOnPreferenceController;->mConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    :cond_0
    iget-object p0, p0, Lcom/android/settings/display/AmbientDisplayAlwaysOnPreferenceController;->mConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    return-object p0
.end method

.method public static isAvailable(Landroid/hardware/display/AmbientDisplayConfiguration;)Z
    .locals 1

    sget v0, Lcom/android/settings/display/AmbientDisplayAlwaysOnPreferenceController;->MY_USER:I

    invoke-virtual {p0, v0}, Landroid/hardware/display/AmbientDisplayConfiguration;->alwaysOnAvailableForUser(I)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/display/AmbientDisplayAlwaysOnPreferenceController;->getConfig()Landroid/hardware/display/AmbientDisplayConfiguration;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/display/AmbientDisplayAlwaysOnPreferenceController;->isAvailable(Landroid/hardware/display/AmbientDisplayConfiguration;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x3

    :goto_0
    return p0
.end method

.method public isChecked()Z
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/display/AmbientDisplayAlwaysOnPreferenceController;->getConfig()Landroid/hardware/display/AmbientDisplayConfiguration;

    move-result-object p0

    sget v0, Lcom/android/settings/display/AmbientDisplayAlwaysOnPreferenceController;->MY_USER:I

    invoke-virtual {p0, v0}, Landroid/hardware/display/AmbientDisplayConfiguration;->alwaysOnEnabled(I)Z

    move-result p0

    return p0
.end method

.method public isSliceable()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ambient_display_always_on"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public setCallback(Lcom/android/settings/display/AmbientDisplayAlwaysOnPreferenceController$OnPreferenceChangedCallback;)Lcom/android/settings/display/AmbientDisplayAlwaysOnPreferenceController;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/display/AmbientDisplayAlwaysOnPreferenceController;->mCallback:Lcom/android/settings/display/AmbientDisplayAlwaysOnPreferenceController$OnPreferenceChangedCallback;

    return-object p0
.end method

.method public setChecked(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "doze_always_on"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p0, p0, Lcom/android/settings/display/AmbientDisplayAlwaysOnPreferenceController;->mCallback:Lcom/android/settings/display/AmbientDisplayAlwaysOnPreferenceController$OnPreferenceChangedCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/settings/display/AmbientDisplayAlwaysOnPreferenceController$OnPreferenceChangedCallback;->onPreferenceChanged()V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public setConfig(Landroid/hardware/display/AmbientDisplayConfiguration;)Lcom/android/settings/display/AmbientDisplayAlwaysOnPreferenceController;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/display/AmbientDisplayAlwaysOnPreferenceController;->mConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    return-object p0
.end method
