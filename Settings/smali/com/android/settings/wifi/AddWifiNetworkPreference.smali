.class public Lcom/android/settings/wifi/AddWifiNetworkPreference;
.super Landroidx/preference/Preference;
.source "AddWifiNetworkPreference.java"


# instance fields
.field private final mScanIconDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p1, 0x7f0d01fe

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    const p1, 0x7f0d037c

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setWidgetLayoutResource(I)V

    const p1, 0x7f080245

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setIcon(I)V

    const p1, 0x7f1218be

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setTitle(I)V

    const p1, 0x7f080330

    :try_start_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "Resource does not exist: "

    const-string v2, "AddWifiNetworkPreference"

    invoke-static {v1, p1, v2}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline32(Ljava/lang/String;ILjava/lang/String;)V

    :goto_0
    iput-object v0, p0, Lcom/android/settings/wifi/AddWifiNetworkPreference;->mScanIconDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public synthetic lambda$onBindViewHolder$0$AddWifiNetworkPreference(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p1}, Lcom/android/settings/wifi/dpp/WifiDppUtils;->getEnrolleeQrCodeScannerIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x7f0a0113

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/android/settings/wifi/AddWifiNetworkPreference;->mScanIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f121944

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/android/settings/wifi/-$$Lambda$AddWifiNetworkPreference$xLKoX30iYXFznnMnnFkVtm9yJ-4;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/-$$Lambda$AddWifiNetworkPreference$xLKoX30iYXFznnMnnFkVtm9yJ-4;-><init>(Lcom/android/settings/wifi/AddWifiNetworkPreference;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
