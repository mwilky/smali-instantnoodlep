.class public Lcom/oneplus/settings/ui/OPThemeIconPreference;
.super Landroidx/preference/Preference;
.source "OPThemeIconPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mClockStyle:Lcom/oneplus/settings/ui/RadiusImageView;

.field private mContext:Landroid/content/Context;

.field private mFingerprintAnimation:Lcom/oneplus/settings/ui/RadiusImageView;

.field mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private mNotificationAnimation:Lcom/oneplus/settings/ui/RadiusImageView;

.field private mWallpaper:Lcom/oneplus/settings/ui/RadiusImageView;

.field private mWallpaperInfo:Landroid/app/WallpaperInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p2, 0x7f0d025c

    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->setLayoutResource(I)V

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPThemeIconPreference;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/android/settings/Utils;->getFingerprintManagerOrNull(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object p2

    iput-object p2, p0, Lcom/oneplus/settings/ui/OPThemeIconPreference;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPThemeIconPreference;->mWallpaperInfo:Landroid/app/WallpaperInfo;

    return-void
.end method


# virtual methods
.method public synthetic lambda$onClick$0$OPThemeIconPreference(Landroid/view/View;)V
    .locals 2

    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.oneplus.action.INTENT_TRANSIT_ACTIVITY"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "intent_action"

    const-string v1, "com.android.settings.SEARCH_RESULT_TRAMPOLINE"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, ":settings:show_fragment"

    const-string v1, "com.android.settings.DisplaySettings"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportCustomFingerprint()Z

    move-result v0

    const-string v1, ":settings:fragment_args_key"

    if-eqz v0, :cond_0

    const-string v0, "doze_801"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const-string v0, "doze"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public synthetic lambda$onClick$1$OPThemeIconPreference(Landroid/view/View;)V
    .locals 2

    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.oneplus.action.INTENT_TRANSIT_ACTIVITY"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "intent_action"

    const-string v1, "com.android.settings.SEARCH_RESULT_TRAMPOLINE"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, ":settings:show_fragment"

    const-string v1, "com.android.settings.security.SecuritySettings"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, ":settings:fragment_args_key"

    const-string v1, "fingerprint_settings"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public synthetic lambda$onClick$2$OPThemeIconPreference(Landroid/view/View;)V
    .locals 2

    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.oneplus.action.INTENT_TRANSIT_ACTIVITY"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "intent_action"

    const-string v1, "com.android.settings.SEARCH_RESULT_TRAMPOLINE"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, ":settings:show_fragment"

    const-string v1, "com.android.settings.DisplaySettings"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportCustomFingerprint()Z

    move-result v0

    const-string v1, ":settings:fragment_args_key"

    if-eqz v0, :cond_0

    const-string v0, "doze_801"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const-string v0, "doze"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x7f0a0737

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/ui/RadiusImageView;

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPThemeIconPreference;->mWallpaper:Lcom/oneplus/settings/ui/RadiusImageView;

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPThemeIconPreference;->mContext:Landroid/content/Context;

    const-string v1, "wallpaper"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/WallpaperManager;

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPThemeIconPreference;->mWallpaper:Lcom/oneplus/settings/ui/RadiusImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0723

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/ui/RadiusImageView;

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPThemeIconPreference;->mClockStyle:Lcom/oneplus/settings/ui/RadiusImageView;

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPThemeIconPreference;->mClockStyle:Lcom/oneplus/settings/ui/RadiusImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0724

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/ui/RadiusImageView;

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPThemeIconPreference;->mFingerprintAnimation:Lcom/oneplus/settings/ui/RadiusImageView;

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPThemeIconPreference;->mFingerprintAnimation:Lcom/oneplus/settings/ui/RadiusImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportCustomFingerprint()Z

    move-result v0

    const/16 v1, 0x8

    if-nez v0, :cond_0

    const v0, 0x7f0a0725

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    const v0, 0x7f0a0730

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/ui/RadiusImageView;

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPThemeIconPreference;->mNotificationAnimation:Lcom/oneplus/settings/ui/RadiusImageView;

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPThemeIconPreference;->mNotificationAnimation:Lcom/oneplus/settings/ui/RadiusImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportNotificationLight()Z

    move-result v0

    if-nez v0, :cond_1

    const v0, 0x7f0a04ba

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/settings/ui/OPThemeIconPreference;->refreshUI()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/high16 v1, 0x10000000

    const v2, 0x7f0a0737

    if-ne v0, v2, :cond_0

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "net.oneplus.launcher"

    const-string v2, "net.oneplus.launcher.wallpaper.picker.WallpaperPickerActivity"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_3

    :cond_0
    const v2, 0x7f0a0723

    const-string v3, "com.android.settings"

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v0, v2, :cond_4

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "oem_acc_blackscreen_gestrue_enable"

    invoke-static {v0, v2, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/16 v2, 0xb

    invoke-static {v0, v2}, Lcom/oneplus/lib/app/appcompat/MenuWrapperFactory;->get(II)I

    move-result v0

    if-ne v0, v4, :cond_1

    move v0, v4

    goto :goto_0

    :cond_1
    move v0, v5

    :goto_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v6

    const-string v7, "prox_wake_enabled"

    invoke-static {v2, v7, v5, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v4, v2, :cond_2

    goto :goto_1

    :cond_2
    move v4, v5

    :goto_1
    if-nez v0, :cond_3

    if-nez v4, :cond_3

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f12104d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v5}, Lcom/oneplus/lib/design/widget/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/oneplus/lib/design/widget/Snackbar;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f12104c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/oneplus/settings/ui/-$$Lambda$OPThemeIconPreference$1gv9y775WOwpXD6wQNZOPFoL1jI;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/ui/-$$Lambda$OPThemeIconPreference$1gv9y775WOwpXD6wQNZOPFoL1jI;-><init>(Lcom/oneplus/settings/ui/OPThemeIconPreference;)V

    invoke-virtual {p1, v0, v1}, Lcom/oneplus/lib/design/widget/Snackbar;->setAction(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/oneplus/lib/design/widget/Snackbar;

    invoke-virtual {p1}, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;->show()V

    return-void

    :cond_3
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.android.settings.Settings$OPCustomClockSettingsActivity"

    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_3

    :cond_4
    const v2, 0x7f0a0724

    if-ne v0, v2, :cond_6

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPThemeIconPreference;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f121055

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v5}, Lcom/oneplus/lib/design/widget/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/oneplus/lib/design/widget/Snackbar;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f121054

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/oneplus/settings/ui/-$$Lambda$OPThemeIconPreference$2hUhkUR3NvOGZPRMONCnL7jutRw;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/ui/-$$Lambda$OPThemeIconPreference$2hUhkUR3NvOGZPRMONCnL7jutRw;-><init>(Lcom/oneplus/settings/ui/OPThemeIconPreference;)V

    invoke-virtual {p1, v0, v1}, Lcom/oneplus/lib/design/widget/Snackbar;->setAction(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/oneplus/lib/design/widget/Snackbar;

    invoke-virtual {p1}, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;->show()V

    return-void

    :cond_5
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.android.settings.Settings$OPCustomFingerprintAnimSettingsActivity"

    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object p0, p0, Lcom/oneplus/settings/ui/OPThemeIconPreference;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_3

    :cond_6
    const v2, 0x7f0a0730

    if-ne v0, v2, :cond_9

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    const-string v6, "notification_wake_enabled"

    invoke-static {v0, v6, v4, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v4, :cond_7

    goto :goto_2

    :cond_7
    move v4, v5

    :goto_2
    if-nez v4, :cond_8

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f12014e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v5}, Lcom/oneplus/lib/design/widget/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/oneplus/lib/design/widget/Snackbar;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f12014d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/oneplus/settings/ui/-$$Lambda$OPThemeIconPreference$32z1EioBQt9cLeskTiEIfOEOrw0;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/ui/-$$Lambda$OPThemeIconPreference$32z1EioBQt9cLeskTiEIfOEOrw0;-><init>(Lcom/oneplus/settings/ui/OPThemeIconPreference;)V

    invoke-virtual {p1, v0, v1}, Lcom/oneplus/lib/design/widget/Snackbar;->setAction(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/oneplus/lib/design/widget/Snackbar;

    invoke-virtual {p1}, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;->show()V

    return-void

    :cond_8
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.android.settings.Settings$OPCustomNotificationAnimSettingsActivity"

    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_9
    :goto_3
    return-void
.end method

.method public refreshUI()V
    .locals 10

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPThemeIconPreference;->mWallpaper:Lcom/oneplus/settings/ui/RadiusImageView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPThemeIconPreference;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/oneplus/settings/ui/OPThemeIconPreference;->mWallpaperInfo:Landroid/app/WallpaperInfo;

    invoke-static {v1, v2}, Lcom/oneplus/settings/ui/OPWallPaperUtils;->loadHomeWallpaper(Landroid/content/Context;Landroid/app/WallpaperInfo;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OPSettings-wallpaper-preview--widht:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPThemeIconPreference;->mWallpaper:Lcom/oneplus/settings/ui/RadiusImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " height:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPThemeIconPreference;->mWallpaper:Lcom/oneplus/settings/ui/RadiusImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OPThemeIconPreference"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPThemeIconPreference;->mClockStyle:Lcom/oneplus/settings/ui/RadiusImageView;

    const/16 v1, 0xa

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_6

    iget-object v6, p0, Lcom/oneplus/settings/ui/OPThemeIconPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v7

    const-string v8, "aod_clock_style"

    invoke-static {v6, v8, v5, v7}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    const v7, 0x7f080097

    const v8, 0x7f080098

    if-eqz v6, :cond_4

    if-eq v6, v4, :cond_5

    if-eq v6, v3, :cond_3

    if-eq v6, v2, :cond_2

    if-eq v6, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/oneplus/settings/utils/OPThemeUtils;->isSupportMclTheme()Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v6, "ro.boot.project_name"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "18801"

    invoke-static {v8, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    const v7, 0x7f080099

    goto :goto_1

    :cond_2
    const v7, 0x7f08009b

    goto :goto_1

    :cond_3
    const v7, 0x7f08009a

    goto :goto_1

    :cond_4
    :goto_0
    move v7, v8

    :cond_5
    :goto_1
    invoke-virtual {v0, v7}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    :cond_6
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPThemeIconPreference;->mFingerprintAnimation:Lcom/oneplus/settings/ui/RadiusImageView;

    const/4 v6, -0x2

    if-eqz v0, :cond_d

    iget-object v7, p0, Lcom/oneplus/settings/ui/OPThemeIconPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "op_custom_unlock_animation_style"

    invoke-static {v7, v8, v5, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    const v8, 0x7f080563

    if-eqz v7, :cond_c

    if-eq v7, v4, :cond_b

    if-eq v7, v3, :cond_a

    if-eq v7, v2, :cond_9

    const/4 v9, 0x4

    if-eq v7, v9, :cond_8

    const/16 v9, 0x9

    if-eq v7, v9, :cond_7

    goto :goto_2

    :cond_7
    const v8, 0x7f080566

    goto :goto_2

    :cond_8
    const v8, 0x7f080568

    goto :goto_2

    :cond_9
    const v8, 0x7f080567

    goto :goto_2

    :cond_a
    const v8, 0x7f080565

    goto :goto_2

    :cond_b
    const v8, 0x7f080564

    :cond_c
    :goto_2
    invoke-virtual {v0, v8}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    :cond_d
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPThemeIconPreference;->mNotificationAnimation:Lcom/oneplus/settings/ui/RadiusImageView;

    if-eqz v0, :cond_13

    iget-object p0, p0, Lcom/oneplus/settings/ui/OPThemeIconPreference;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v7, "op_custom_horizon_light_animation_style"

    invoke-static {p0, v7, v5, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const v5, 0x7f080485

    if-eqz p0, :cond_12

    if-eq p0, v4, :cond_11

    if-eq p0, v3, :cond_10

    if-eq p0, v2, :cond_f

    if-eq p0, v1, :cond_e

    goto :goto_3

    :cond_e
    const v5, 0x7f080487

    goto :goto_3

    :cond_f
    const v5, 0x7f080488

    goto :goto_3

    :cond_10
    const v5, 0x7f080486

    goto :goto_3

    :cond_11
    const v5, 0x7f080489

    :cond_12
    :goto_3
    invoke-virtual {v0, v5}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    :cond_13
    return-void
.end method
