.class public Lcom/android/settings/nfc/OPNfcForegroundPreference;
.super Lcom/android/settingslib/CustomDialogPreferenceCompat;
.source "OPNfcForegroundPreference.java"

# interfaces
.implements Lcom/android/settings/nfc/PaymentBackend$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/nfc/OPNfcForegroundPreference$NfcForegroundAdapter;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/android/settings/nfc/OPNfcForegroundPreference$NfcForegroundAdapter;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mList:[Ljava/lang/String;

.field private mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/CustomDialogPreferenceCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/String;

    iput-object p2, p0, Lcom/android/settings/nfc/OPNfcForegroundPreference;->mList:[Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f120b3d

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroidx/preference/DialogPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    const-string p2, "layout_inflater"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/android/settings/nfc/OPNfcForegroundPreference;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget-object p1, p0, Lcom/android/settings/nfc/OPNfcForegroundPreference;->mList:[Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f120b35

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    aput-object p2, p1, v0

    iget-object p1, p0, Lcom/android/settings/nfc/OPNfcForegroundPreference;->mList:[Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f120b34

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    aput-object p2, p1, v0

    new-instance p1, Lcom/android/settings/nfc/OPNfcForegroundPreference$NfcForegroundAdapter;

    invoke-direct {p1, p0}, Lcom/android/settings/nfc/OPNfcForegroundPreference$NfcForegroundAdapter;-><init>(Lcom/android/settings/nfc/OPNfcForegroundPreference;)V

    iput-object p1, p0, Lcom/android/settings/nfc/OPNfcForegroundPreference;->mAdapter:Lcom/android/settings/nfc/OPNfcForegroundPreference$NfcForegroundAdapter;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/nfc/OPNfcForegroundPreference;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/nfc/OPNfcForegroundPreference;->mList:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/nfc/OPNfcForegroundPreference;)Landroid/view/LayoutInflater;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/nfc/OPNfcForegroundPreference;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settings/nfc/OPNfcForegroundPreference;)Lcom/android/settings/nfc/PaymentBackend;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/nfc/OPNfcForegroundPreference;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/settings/nfc/OPNfcForegroundPreference;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/settings/nfc/OPNfcForegroundPreference;->mList:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "1"

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/settings/nfc/OPNfcForegroundPreference;->mList:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object p0, p0, v0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string v1, "0"

    :cond_1
    :goto_0
    return-object v1
.end method

.method static synthetic access$400(Lcom/android/settings/nfc/OPNfcForegroundPreference;Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->persistString(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/android/settings/nfc/OPNfcForegroundPreference;Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->persistString(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public getEntry()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/nfc/OPNfcForegroundPreference;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    invoke-virtual {v0}, Lcom/android/settings/nfc/PaymentBackend;->isForegroundMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/nfc/OPNfcForegroundPreference;->mList:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object p0, p0, v0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/android/settings/nfc/OPNfcForegroundPreference;->mList:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object p0, p0, v0

    return-object p0
.end method

.method public onPaymentAppsChanged()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/nfc/OPNfcForegroundPreference;->refresh()V

    return-void
.end method

.method protected onPrepareDialogBuilder(Landroidx/appcompat/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1

    iget-object p0, p0, Lcom/android/settings/nfc/OPNfcForegroundPreference;->mAdapter:Lcom/android/settings/nfc/OPNfcForegroundPreference$NfcForegroundAdapter;

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    return-void
.end method

.method refresh()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/nfc/OPNfcForegroundPreference;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    invoke-virtual {v0}, Lcom/android/settings/nfc/PaymentBackend;->isForegroundMode()Z

    move-result v0

    const-string v1, "refresh foregroundMode:"

    const-string v2, "OPNfcForegroundPreference"

    invoke-static {v1, v0, v2}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline43(Ljava/lang/String;ZLjava/lang/String;)V

    if-eqz v0, :cond_0

    const-string v1, "1"

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->persistString(Ljava/lang/String;)Z

    goto :goto_0

    :cond_0
    const-string v1, "0"

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->persistString(Ljava/lang/String;)Z

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/nfc/OPNfcForegroundPreference;->mList:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/settings/nfc/OPNfcForegroundPreference;->mList:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    :goto_1
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setPaymentBackend(Lcom/android/settings/nfc/PaymentBackend;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/nfc/OPNfcForegroundPreference;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    iget-object p1, p0, Lcom/android/settings/nfc/OPNfcForegroundPreference;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    invoke-virtual {p1, p0}, Lcom/android/settings/nfc/PaymentBackend;->registerCallback(Lcom/android/settings/nfc/PaymentBackend$Callback;)V

    return-void
.end method
