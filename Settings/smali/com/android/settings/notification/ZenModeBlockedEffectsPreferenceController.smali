.class public Lcom/android/settings/notification/ZenModeBlockedEffectsPreferenceController;
.super Lcom/android/settings/notification/AbstractZenModePreferenceController;
.source "ZenModeBlockedEffectsPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field private final mSummaryBuilder:Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1

    const-string v0, "zen_mode_block_effects_settings"

    invoke-direct {p0, p1, v0, p2}, Lcom/android/settings/notification/AbstractZenModePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    new-instance p2, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;

    invoke-direct {p2, p1}, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/notification/ZenModeBlockedEffectsPreferenceController;->mSummaryBuilder:Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "zen_mode_block_effects_settings"

    return-object p0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeBlockedEffectsPreferenceController;->mSummaryBuilder:Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;

    invoke-virtual {p0}, Lcom/android/settings/notification/AbstractZenModePreferenceController;->getPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->getBlockedEffectsSummary(Landroid/app/NotificationManager$Policy;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
