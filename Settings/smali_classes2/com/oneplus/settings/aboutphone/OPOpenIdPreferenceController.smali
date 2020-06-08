.class public Lcom/oneplus/settings/aboutphone/OPOpenIdPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "OPOpenIdPreferenceController.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oneplus/settings/aboutphone/OPOpenIdPreferenceController;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    iget-object p0, p0, Lcom/oneplus/settings/aboutphone/OPOpenIdPreferenceController;->mContext:Landroid/content/Context;

    const-string v0, "com.heytap.openid"

    invoke-static {p0, v0}, Lcom/oneplus/settings/utils/OPUtils;->isAppExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x3

    :goto_0
    return p0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 2

    const/4 p0, 0x0

    :try_start_0
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const-string v1, "OUID"

    invoke-static {p0, v0, v1}, Lcom/oneplus/android/openid/OpOpenIdManagerInjector;->getOpenId(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    const-string p0, ""

    :goto_0
    return-object p0
.end method
