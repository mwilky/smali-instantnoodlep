.class public Lcom/android/settings/security/CredentialStoragePreferenceController;
.super Lcom/android/settings/security/RestrictedEncryptionPreferenceController;
.source "CredentialStoragePreferenceController.java"


# instance fields
.field private final mKeyStore:Landroid/security/KeyStore;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "no_config_credentials"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/security/RestrictedEncryptionPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/security/CredentialStoragePreferenceController;->mKeyStore:Landroid/security/KeyStore;

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "credential_storage_type"

    return-object p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/security/CredentialStoragePreferenceController;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {p0}, Landroid/security/KeyStore;->isHardwareBacked()Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f1204e3

    goto :goto_0

    :cond_0
    const p0, 0x7f1204e4

    :goto_0
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(I)V

    return-void
.end method
