.class public Lcom/oneplus/settings/controllers/OPChargeOptimizePreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "OPChargeOptimizePreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;


# static fields
.field public static final CHARING_GUARDER_ENABLED:Ljava/lang/String; = "charging_guarder_enabled"

.field private static final KEY_CHARGE_OPTIMIZE:Ljava/lang/String; = "charging_optimization_summary"


# instance fields
.field private mPreference:Landroidx/preference/Preference;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "charging_optimization_summary"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static getChargingOptimizationState(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "charging_guarder_enabled"

    invoke-static {p0, v1, v0, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-lez p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method static synthetic lambda$displayPreference$0(Landroidx/preference/PreferenceScreen;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/oneplus/settings/controllers/OPChargeOptimizePreferenceController;->setChargingOptimizationState(Landroid/content/Context;Z)V

    const/4 p0, 0x1

    return p0
.end method

.method public static setChargingOptimizationState(Landroid/content/Context;Z)V
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "charging_guarder_enabled"

    invoke-static {p0, v1, p1, v0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    if-eqz p1, :cond_0

    const-string p0, "1"

    goto :goto_0

    :cond_0
    const-string p0, "0"

    :goto_0
    const-string p1, "optimized_charging_switch"

    const-string v0, "switch"

    invoke-static {p1, v0, p0}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/oneplus/settings/controllers/OPChargeOptimizePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/controllers/OPChargeOptimizePreferenceController;->mPreference:Landroidx/preference/Preference;

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/settings/controllers/OPChargeOptimizePreferenceController;->getChargingOptimizationState(Landroid/content/Context;)Z

    move-result v0

    iget-object v1, p0, Lcom/oneplus/settings/controllers/OPChargeOptimizePreferenceController;->mPreference:Landroidx/preference/Preference;

    check-cast v1, Landroidx/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/controllers/OPChargeOptimizePreferenceController;->mPreference:Landroidx/preference/Preference;

    new-instance v1, Lcom/oneplus/settings/controllers/-$$Lambda$OPChargeOptimizePreferenceController$F1tpBAUloLCbC03PvcVx7K4_EJU;

    invoke-direct {v1, p1}, Lcom/oneplus/settings/controllers/-$$Lambda$OPChargeOptimizePreferenceController$F1tpBAUloLCbC03PvcVx7K4_EJU;-><init>(Landroidx/preference/PreferenceScreen;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    iget-object p0, p0, Lcom/oneplus/settings/controllers/OPChargeOptimizePreferenceController;->mPreference:Landroidx/preference/Preference;

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isGuestMode()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    const-string p0, "OP_FEATURE_CHARGE_OPTIMIZATED"

    invoke-static {p0}, Lcom/oneplus/lib/app/appcompat/MenuWrapperFactory;->isFeatureSupported(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSM8X50Products()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    :goto_0
    return p0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "charging_optimization_summary"

    return-object p0
.end method
