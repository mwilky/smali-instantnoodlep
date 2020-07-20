.class public Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;
.super Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;
.source "WifiTetherPasswordPreferenceController.java"

# interfaces
.implements Lcom/android/settings/widget/ValidatedEditTextPreference$Validator;


# static fields
.field private static final PREF_KEY:Ljava/lang/String; = "wifi_tether_network_password"


# instance fields
.field private mEditPreference:Landroidx/preference/EditTextPreference;

.field private mNewPassword:Ljava/lang/String;

.field private mPassword:Ljava/lang/String;

.field onWarningDialogCLickListner:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;)V
    .locals 1

    const-string v0, "wifi_tether_network_password"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;Ljava/lang/String;)V

    new-instance p1, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController$1;

    invoke-direct {p1, p0}, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController$1;-><init>(Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;)V

    iput-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->onWarningDialogCLickListner:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->mPassword:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$002(Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->mPassword:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->mNewPassword:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;Landroidx/preference/EditTextPreference;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->updatePasswordDisplay(Landroidx/preference/EditTextPreference;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;)Landroidx/preference/EditTextPreference;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->mEditPreference:Landroidx/preference/EditTextPreference;

    return-object p0
.end method

.method private static generateRandomPassword()Ljava/lang/String;
    .locals 9

    invoke-static {}, Lcom/oneplus/lib/app/appcompat/MenuWrapperFactory;->isUsvMode()Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/4 v3, 0x4

    new-array v4, v3, [I

    const/16 v5, 0xf

    invoke-virtual {v0, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x21

    aput v6, v4, v2

    invoke-virtual {v0, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x21

    const/4 v6, 0x1

    aput v5, v4, v6

    const/4 v5, 0x2

    const/16 v7, 0x1a

    invoke-virtual {v0, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v8

    add-int/lit8 v8, v8, 0x5b

    aput v8, v4, v5

    const/4 v5, 0x3

    invoke-virtual {v0, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    add-int/lit8 v7, v7, 0x41

    aput v7, v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_0
    if-ge v2, v3, :cond_0

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/2addr v1, v6

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    aget v7, v4, v2

    int-to-char v7, v7

    invoke-virtual {v5, v1, v7}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x9

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private updatePasswordDisplay(Landroidx/preference/EditTextPreference;)V
    .locals 1

    check-cast p1, Lcom/android/settings/widget/ValidatedEditTextPreference;

    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->mPassword:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->mPassword:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/ValidatedEditTextPreference;->setIsSummaryPassword(Z)V

    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->mPassword:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Lcom/android/settings/widget/ValidatedEditTextPreference;->setIsSummaryPassword(Z)V

    const v0, 0x7f121971

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(I)V

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setVisible(Z)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getPasswordValidated(I)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->mPassword:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->isTextValid(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {}, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->generateRandomPassword()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->mPassword:Ljava/lang/String;

    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;->mPreference:Landroidx/preference/Preference;

    check-cast p1, Landroidx/preference/EditTextPreference;

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->updatePasswordDisplay(Landroidx/preference/EditTextPreference;)V

    :cond_1
    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->mPassword:Ljava/lang/String;

    return-object p0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "wifi_tether_network_password"

    return-object p0
.end method

.method public isTextValid(Ljava/lang/String;)Z
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    invoke-static {}, Lcom/oneplus/lib/app/appcompat/MenuWrapperFactory;->isUsvMode()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p0, "((?=.*\\d)(?=.*[a-zA-Z])(?=.*[~!@#$%^&*+_=-?><]).{8,63})"

    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    if-lt p0, p1, :cond_2

    const/16 p1, 0x3f

    if-gt p0, p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    :goto_0
    return v0
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/android/settings/wifi/dpp/WifiDppUtils;->getHotspotConfiguratorIntentOrNull(Landroid/content/Context;Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;)Landroid/content/Intent;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    invoke-static {}, Lcom/oneplus/lib/app/appcompat/MenuWrapperFactory;->isUsvMode()Z

    move-result p1

    if-eqz p1, :cond_1

    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->mNewPassword:Ljava/lang/String;

    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object p2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p2, 0x7f1213a4

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f12181d

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x104000a

    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->onWarningDialogCLickListner:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, p2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/high16 p2, 0x1040000

    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->onWarningDialogCLickListner:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, p2, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    goto :goto_1

    :cond_1
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->mPassword:Ljava/lang/String;

    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;->mPreference:Landroidx/preference/Preference;

    check-cast p1, Landroidx/preference/EditTextPreference;

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->updatePasswordDisplay(Landroidx/preference/EditTextPreference;)V

    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;->mListener:Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;

    invoke-interface {p0}, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;->onTetherConfigUpdated()V

    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public updateDisplay()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getAuthType()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getAuthType()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    :cond_0
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->mPassword:Ljava/lang/String;

    goto :goto_1

    :cond_2
    :goto_0
    invoke-static {}, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->generateRandomPassword()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->mPassword:Ljava/lang/String;

    :goto_1
    invoke-static {}, Lcom/oneplus/lib/app/appcompat/MenuWrapperFactory;->isUsvMode()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;->mPreference:Landroidx/preference/Preference;

    check-cast v0, Landroidx/preference/EditTextPreference;

    iput-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->mEditPreference:Landroidx/preference/EditTextPreference;

    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;->mPreference:Landroidx/preference/Preference;

    check-cast v0, Lcom/android/settings/widget/ValidatedEditTextPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/ValidatedEditTextPreference;->setValidator(Lcom/android/settings/widget/ValidatedEditTextPreference$Validator;)V

    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;->mPreference:Landroidx/preference/Preference;

    check-cast v0, Lcom/android/settings/widget/ValidatedEditTextPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ValidatedEditTextPreference;->setIsPassword(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;->mPreference:Landroidx/preference/Preference;

    check-cast v0, Lcom/android/settings/widget/ValidatedEditTextPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ValidatedEditTextPreference;->setIsSummaryPassword(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;->mPreference:Landroidx/preference/Preference;

    check-cast v0, Landroidx/preference/EditTextPreference;

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->updatePasswordDisplay(Landroidx/preference/EditTextPreference;)V

    return-void
.end method

.method public updateVisibility(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;->mPreference:Landroidx/preference/Preference;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method
