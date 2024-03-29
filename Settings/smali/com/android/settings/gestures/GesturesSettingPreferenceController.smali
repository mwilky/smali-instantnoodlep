.class public Lcom/android/settings/gestures/GesturesSettingPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "GesturesSettingPreferenceController.java"


# static fields
.field private static final FAKE_PREF_KEY:Ljava/lang/String; = "fake_key_only_for_get_available"

.field private static final KEY_GESTURES_SETTINGS:Ljava/lang/String; = "gesture_settings"


# instance fields
.field private final mFeatureProvider:Lcom/android/settings/gestures/AssistGestureFeatureProvider;

.field private mGestureControllers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "gesture_settings"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/overlay/FeatureFactory;->getAssistGestureFeatureProvider()Lcom/android/settings/gestures/AssistGestureFeatureProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/gestures/GesturesSettingPreferenceController;->mFeatureProvider:Lcom/android/settings/gestures/AssistGestureFeatureProvider;

    return-void
.end method

.method private static buildAllPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/hardware/display/AmbientDisplayConfiguration;

    invoke-direct {v0, p0}, Landroid/hardware/display/AmbientDisplayConfiguration;-><init>(Landroid/content/Context;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/android/settings/gestures/AssistGestureSettingsPreferenceController;

    const-string v3, "fake_key_only_for_get_available"

    invoke-direct {v2, p0, v3}, Lcom/android/settings/gestures/AssistGestureSettingsPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/android/settings/gestures/AssistGestureSettingsPreferenceController;->setAssistOnly(Z)Lcom/android/settings/gestures/AssistGestureSettingsPreferenceController;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/android/settings/gestures/SwipeToNotificationPreferenceController;

    invoke-direct {v2, p0, v3}, Lcom/android/settings/gestures/SwipeToNotificationPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/android/settings/gestures/DoubleTwistPreferenceController;

    invoke-direct {v2, p0, v3}, Lcom/android/settings/gestures/DoubleTwistPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/android/settings/gestures/DoubleTapPowerPreferenceController;

    invoke-direct {v2, p0, v3}, Lcom/android/settings/gestures/DoubleTapPowerPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/android/settings/gestures/PickupGesturePreferenceController;

    invoke-direct {v2, p0, v3}, Lcom/android/settings/gestures/PickupGesturePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/android/settings/gestures/PickupGesturePreferenceController;->setConfig(Landroid/hardware/display/AmbientDisplayConfiguration;)Lcom/android/settings/gestures/PickupGesturePreferenceController;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/android/settings/gestures/DoubleTapScreenPreferenceController;

    invoke-direct {v2, p0, v3}, Lcom/android/settings/gestures/DoubleTapScreenPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/android/settings/gestures/DoubleTapScreenPreferenceController;->setConfig(Landroid/hardware/display/AmbientDisplayConfiguration;)Lcom/android/settings/gestures/DoubleTapScreenPreferenceController;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/settings/gestures/PreventRingingParentPreferenceController;

    invoke-direct {v0, p0, v3}, Lcom/android/settings/gestures/PreventRingingParentPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v1
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 3

    iget-object v0, p0, Lcom/android/settings/gestures/GesturesSettingPreferenceController;->mGestureControllers:Ljava/util/List;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/gestures/GesturesSettingPreferenceController;->buildAllPreferenceControllers(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/gestures/GesturesSettingPreferenceController;->mGestureControllers:Ljava/util/List;

    :cond_0
    iget-object p0, p0, Lcom/android/settings/gestures/GesturesSettingPreferenceController;->mGestureControllers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_1
    move v1, v0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/core/AbstractPreferenceController;

    if-nez v1, :cond_2

    invoke-virtual {v2}, Lcom/android/settingslib/core/AbstractPreferenceController;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x3

    return p0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/gestures/GesturesSettingPreferenceController;->mFeatureProvider:Lcom/android/settings/gestures/AssistGestureFeatureProvider;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/settings/gestures/AssistGestureFeatureProviderImpl;

    invoke-virtual {v0, p0}, Lcom/android/settings/gestures/AssistGestureFeatureProviderImpl;->isSensorAvailable(Landroid/content/Context;)Z

    const-string p0, ""

    return-object p0
.end method
