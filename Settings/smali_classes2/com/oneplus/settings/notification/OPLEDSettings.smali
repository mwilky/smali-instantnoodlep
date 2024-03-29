.class public Lcom/oneplus/settings/notification/OPLEDSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "OPLEDSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mBatteryChargingPreference:Lcom/oneplus/settings/ui/OPLedColorPickerPreference;

.field private mBatteryFullPreference:Lcom/oneplus/settings/ui/OPLedColorPickerPreference;

.field private mBatteryLowPreference:Lcom/oneplus/settings/ui/OPLedColorPickerPreference;

.field private mDialogColorPalette:[Ljava/lang/String;

.field private mGlobalNotificationPreference:Lcom/oneplus/settings/ui/OPLedColorPickerPreference;


# direct methods
.method public constructor <init>()V
    .locals 8

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const-string v0, "#FF0000FF"

    const-string v1, "#FF40FFFF"

    const-string v2, "#FFFFAE00"

    const-string v3, "#FF40FF00"

    const-string v4, "#FFFF0000"

    const-string v5, "#FFFFFF00"

    const-string v6, "#FF9E00F9"

    const-string v7, "#FFEC407A"

    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPLEDSettings;->mDialogColorPalette:[Ljava/lang/String;

    return-void
.end method

.method private getDialogCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p0

    const-string v0, "#FF40FFFF"

    const-string v1, "#FF40FF00"

    const-string v2, "#FF0000FF"

    const-string v3, "#FFFFFF00"

    const-string v4, "#FFFF0000"

    sparse-switch p0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_1

    :sswitch_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x3

    goto :goto_1

    :sswitch_2
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :sswitch_3
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x5

    goto :goto_1

    :sswitch_4
    const-string p0, "#FFFF4000"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    goto :goto_1

    :sswitch_5
    const-string p0, "#FFFF00FF"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x6

    goto :goto_1

    :sswitch_6
    const-string p0, "#FFFF0040"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x7

    goto :goto_1

    :sswitch_7
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x4

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p0, -0x1

    :goto_1
    packed-switch p0, :pswitch_data_0

    const-string v0, ""

    goto :goto_2

    :pswitch_0
    const-string v0, "#FFEC407A"

    goto :goto_2

    :pswitch_1
    const-string v0, "#FF9E00F9"

    goto :goto_2

    :pswitch_2
    move-object v0, v3

    goto :goto_2

    :pswitch_3
    move-object v0, v4

    goto :goto_2

    :pswitch_4
    move-object v0, v1

    goto :goto_2

    :pswitch_5
    const-string v0, "#FFFFAE00"

    goto :goto_2

    :pswitch_6
    move-object v0, v2

    :goto_2
    :pswitch_7
    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x60ba255d -> :sswitch_7
        -0x60ba24e1 -> :sswitch_6
        -0x60ba229d -> :sswitch_5
        -0x60b853e1 -> :sswitch_4
        -0x60afd29d -> :sswitch_3
        0x78853aa3 -> :sswitch_2
        0x7f62ed1f -> :sswitch_1
        0x7f62efdf -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x270f

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f1600a7

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    const-string p1, "led_settings_global_notification"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;

    iput-object p1, p0, Lcom/oneplus/settings/notification/OPLEDSettings;->mGlobalNotificationPreference:Lcom/oneplus/settings/ui/OPLedColorPickerPreference;

    iget-object p1, p0, Lcom/oneplus/settings/notification/OPLEDSettings;->mGlobalNotificationPreference:Lcom/oneplus/settings/ui/OPLedColorPickerPreference;

    iget-object v0, p0, Lcom/oneplus/settings/notification/OPLEDSettings;->mDialogColorPalette:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->setColorPalette([Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oneplus/settings/notification/OPLEDSettings;->mGlobalNotificationPreference:Lcom/oneplus/settings/ui/OPLedColorPickerPreference;

    const-string v0, "#FF00FF00"

    invoke-virtual {p1, v0}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->setDefaultColor(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const-string v2, "notification_light_pulse_color"

    invoke-static {p1, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "#%06X"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/oneplus/settings/notification/OPLEDSettings;->mGlobalNotificationPreference:Lcom/oneplus/settings/ui/OPLedColorPickerPreference;

    invoke-direct {p0, v2}, Lcom/oneplus/settings/notification/OPLEDSettings;->getDialogCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->setColor(Ljava/lang/String;)V

    :cond_0
    iget-object v2, p0, Lcom/oneplus/settings/notification/OPLEDSettings;->mGlobalNotificationPreference:Lcom/oneplus/settings/ui/OPLedColorPickerPreference;

    const v4, 0x7f120463

    invoke-virtual {v2, v4}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->setMessageText(I)V

    iget-object v2, p0, Lcom/oneplus/settings/notification/OPLEDSettings;->mGlobalNotificationPreference:Lcom/oneplus/settings/ui/OPLedColorPickerPreference;

    invoke-virtual {v2}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->setImageViewVisibility()V

    iget-object v2, p0, Lcom/oneplus/settings/notification/OPLEDSettings;->mGlobalNotificationPreference:Lcom/oneplus/settings/ui/OPLedColorPickerPreference;

    invoke-virtual {v2, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string v2, "led_settings_battery_full"

    invoke-virtual {p0, v2}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;

    iput-object v2, p0, Lcom/oneplus/settings/notification/OPLEDSettings;->mBatteryFullPreference:Lcom/oneplus/settings/ui/OPLedColorPickerPreference;

    iget-object v2, p0, Lcom/oneplus/settings/notification/OPLEDSettings;->mBatteryFullPreference:Lcom/oneplus/settings/ui/OPLedColorPickerPreference;

    iget-object v5, p0, Lcom/oneplus/settings/notification/OPLEDSettings;->mDialogColorPalette:[Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->setColorPalette([Ljava/lang/String;)V

    iget-object v2, p0, Lcom/oneplus/settings/notification/OPLEDSettings;->mBatteryFullPreference:Lcom/oneplus/settings/ui/OPLedColorPickerPreference;

    invoke-virtual {v2, v0}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->setDefaultColor(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    const-string v5, "battery_light_full_color"

    invoke-static {v2, v5, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/oneplus/settings/notification/OPLEDSettings;->mBatteryFullPreference:Lcom/oneplus/settings/ui/OPLedColorPickerPreference;

    invoke-direct {p0, v0}, Lcom/oneplus/settings/notification/OPLEDSettings;->getDialogCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->setColor(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPLEDSettings;->mBatteryFullPreference:Lcom/oneplus/settings/ui/OPLedColorPickerPreference;

    invoke-virtual {v0, v4}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->setMessageText(I)V

    iget-object v0, p0, Lcom/oneplus/settings/notification/OPLEDSettings;->mBatteryFullPreference:Lcom/oneplus/settings/ui/OPLedColorPickerPreference;

    invoke-virtual {v0}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->setImageViewVisibility()V

    iget-object v0, p0, Lcom/oneplus/settings/notification/OPLEDSettings;->mBatteryFullPreference:Lcom/oneplus/settings/ui/OPLedColorPickerPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "led_settings_battery_charging"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPLEDSettings;->mBatteryChargingPreference:Lcom/oneplus/settings/ui/OPLedColorPickerPreference;

    iget-object v0, p0, Lcom/oneplus/settings/notification/OPLEDSettings;->mBatteryChargingPreference:Lcom/oneplus/settings/ui/OPLedColorPickerPreference;

    iget-object v2, p0, Lcom/oneplus/settings/notification/OPLEDSettings;->mDialogColorPalette:[Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->setColorPalette([Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oneplus/settings/notification/OPLEDSettings;->mBatteryChargingPreference:Lcom/oneplus/settings/ui/OPLedColorPickerPreference;

    const-string v2, "#FEFF0000"

    invoke-virtual {v0, v2}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->setDefaultColor(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    const-string v6, "battery_light_medium_color"

    invoke-static {v0, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v3

    invoke-static {p1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/oneplus/settings/notification/OPLEDSettings;->mBatteryChargingPreference:Lcom/oneplus/settings/ui/OPLedColorPickerPreference;

    invoke-direct {p0, v0}, Lcom/oneplus/settings/notification/OPLEDSettings;->getDialogCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->setColor(Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPLEDSettings;->mBatteryChargingPreference:Lcom/oneplus/settings/ui/OPLedColorPickerPreference;

    invoke-virtual {v0, v4}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->setMessageText(I)V

    iget-object v0, p0, Lcom/oneplus/settings/notification/OPLEDSettings;->mBatteryChargingPreference:Lcom/oneplus/settings/ui/OPLedColorPickerPreference;

    invoke-virtual {v0}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->setImageViewVisibility()V

    iget-object v0, p0, Lcom/oneplus/settings/notification/OPLEDSettings;->mBatteryChargingPreference:Lcom/oneplus/settings/ui/OPLedColorPickerPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "led_settings_battery_low"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPLEDSettings;->mBatteryLowPreference:Lcom/oneplus/settings/ui/OPLedColorPickerPreference;

    iget-object v0, p0, Lcom/oneplus/settings/notification/OPLEDSettings;->mBatteryLowPreference:Lcom/oneplus/settings/ui/OPLedColorPickerPreference;

    iget-object v5, p0, Lcom/oneplus/settings/notification/OPLEDSettings;->mDialogColorPalette:[Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->setColorPalette([Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oneplus/settings/notification/OPLEDSettings;->mBatteryLowPreference:Lcom/oneplus/settings/ui/OPLedColorPickerPreference;

    invoke-virtual {v0, v2}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->setDefaultColor(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    const-string v5, "battery_light_low_color"

    invoke-static {v0, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v3

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/oneplus/settings/notification/OPLEDSettings;->mBatteryLowPreference:Lcom/oneplus/settings/ui/OPLedColorPickerPreference;

    invoke-direct {p0, p1}, Lcom/oneplus/settings/notification/OPLEDSettings;->getDialogCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->setColor(Ljava/lang/String;)V

    :cond_3
    iget-object p1, p0, Lcom/oneplus/settings/notification/OPLEDSettings;->mBatteryLowPreference:Lcom/oneplus/settings/ui/OPLedColorPickerPreference;

    invoke-virtual {p1, v4}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->setMessageText(I)V

    iget-object p1, p0, Lcom/oneplus/settings/notification/OPLEDSettings;->mBatteryLowPreference:Lcom/oneplus/settings/ui/OPLedColorPickerPreference;

    invoke-virtual {p1}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->setImageViewVisibility()V

    iget-object p1, p0, Lcom/oneplus/settings/notification/OPLEDSettings;->mBatteryLowPreference:Lcom/oneplus/settings/ui/OPLedColorPickerPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 8

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const-string v1, "#FF40FFFF"

    const-string v2, "#FF40FF00"

    const-string v3, "#FF0000FF"

    const-string v4, "#FFFFFF00"

    const-string v5, "#FFFF0000"

    const/4 v6, 0x0

    const/4 v7, 0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    move p2, v7

    goto :goto_1

    :sswitch_1
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x3

    goto :goto_1

    :sswitch_2
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    move p2, v6

    goto :goto_1

    :sswitch_3
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x5

    goto :goto_1

    :sswitch_4
    const-string v0, "#FFFFAE00"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x2

    goto :goto_1

    :sswitch_5
    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x4

    goto :goto_1

    :sswitch_6
    const-string v0, "#FFEC407A"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x7

    goto :goto_1

    :sswitch_7
    const-string v0, "#FF9E00F9"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x6

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p2, -0x1

    :goto_1
    packed-switch p2, :pswitch_data_0

    const-string v1, ""

    goto :goto_2

    :pswitch_0
    const-string v1, "#FFFF0040"

    goto :goto_2

    :pswitch_1
    const-string v1, "#FFFF00FF"

    goto :goto_2

    :pswitch_2
    move-object v1, v4

    goto :goto_2

    :pswitch_3
    move-object v1, v5

    goto :goto_2

    :pswitch_4
    move-object v1, v2

    goto :goto_2

    :pswitch_5
    const-string v1, "#FFFF4000"

    goto :goto_2

    :pswitch_6
    move-object v1, v3

    :goto_2
    :pswitch_7
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    move v6, v7

    :cond_1
    const-string p2, "led_settings_global_notification"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-string v0, "#FF00FF00"

    if-eqz p2, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    if-eqz v6, :cond_2

    move-object v2, v1

    goto :goto_3

    :cond_2
    move-object v2, v0

    :goto_3
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    const-string v3, "notification_light_pulse_color"

    invoke-static {p2, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_3
    const-string p2, "led_settings_battery_full"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    if-eqz v6, :cond_4

    move-object v0, v1

    :cond_4
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    const-string v2, "battery_light_full_color"

    invoke-static {p2, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_5
    const-string p2, "led_settings_battery_charging"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-string v0, "#FEFF0000"

    if-eqz p2, :cond_7

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    if-eqz v6, :cond_6

    move-object v2, v1

    goto :goto_4

    :cond_6
    move-object v2, v0

    :goto_4
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    const-string v3, "battery_light_medium_color"

    invoke-static {p2, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_7
    const-string p2, "led_settings_battery_low"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    if-eqz v6, :cond_8

    move-object v0, v1

    :cond_8
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    const-string p2, "battery_light_low_color"

    invoke-static {p0, p2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_9
    return v7

    nop

    :sswitch_data_0
    .sparse-switch
        -0x76f73a3e -> :sswitch_7
        -0x62977219 -> :sswitch_6
        -0x60ba255d -> :sswitch_5
        -0x60b21c39 -> :sswitch_4
        -0x60afd29d -> :sswitch_3
        0x78853aa3 -> :sswitch_2
        0x7f62ed1f -> :sswitch_1
        0x7f62efdf -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    iget-object v0, p0, Lcom/oneplus/settings/notification/OPLEDSettings;->mBatteryLowPreference:Lcom/oneplus/settings/ui/OPLedColorPickerPreference;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120946

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, " 5%"

    const-string v2, " 15%"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/oneplus/settings/notification/OPLEDSettings;->mBatteryLowPreference:Lcom/oneplus/settings/ui/OPLedColorPickerPreference;

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
