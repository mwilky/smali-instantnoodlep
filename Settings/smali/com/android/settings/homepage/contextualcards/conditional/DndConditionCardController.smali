.class public Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;
.super Ljava/lang/Object;
.source "DndConditionCardController.java"

# interfaces
.implements Lcom/android/settings/homepage/contextualcards/conditional/ConditionalCardController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController$ZenModeConfigWrapper;,
        Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController$Receiver;
    }
.end annotation


# static fields
.field static final DND_FILTER:Landroid/content/IntentFilter;

.field static final ID:I

.field private static mZenModeConfigWrapper:Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController$ZenModeConfigWrapper;


# instance fields
.field private final mAppContext:Landroid/content/Context;

.field private final mConditionManager:Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;

.field private final mNotificationManager:Landroid/app/NotificationManager;

.field private final mReceiver:Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController$Receiver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "DndConditionCardController"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;->ID:I

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.app.action.INTERRUPTION_FILTER_CHANGED_INTERNAL"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;->DND_FILTER:Landroid/content/IntentFilter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;->mAppContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;->mConditionManager:Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;

    iget-object p1, p0, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;->mAppContext:Landroid/content/Context;

    const-class p2, Landroid/app/NotificationManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;->mNotificationManager:Landroid/app/NotificationManager;

    iget-object p1, p0, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p1}, Landroid/app/NotificationManager;->getZenMode()I

    new-instance p1, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController$Receiver;

    invoke-direct {p1, p0}, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController$Receiver;-><init>(Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;)V

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;->mReceiver:Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController$Receiver;

    new-instance p1, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController$ZenModeConfigWrapper;

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;->mAppContext:Landroid/content/Context;

    invoke-direct {p1, p0}, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController$ZenModeConfigWrapper;-><init>(Landroid/content/Context;)V

    sput-object p1, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;->mZenModeConfigWrapper:Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController$ZenModeConfigWrapper;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;)Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;->mConditionManager:Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;

    return-object p0
.end method

.method static synthetic access$100(Landroid/content/Context;)J
    .locals 2

    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AlarmManager;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/AlarmManager;->getNextAlarmClock(I)Landroid/app/AlarmManager$AlarmClockInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method


# virtual methods
.method public buildContextualCard()Lcom/android/settings/homepage/contextualcards/ContextualCard;
    .locals 12

    new-instance v0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard$Builder;

    invoke-direct {v0}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard$Builder;-><init>()V

    sget v1, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;->ID:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard$Builder;->setConditionId(J)Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard$Builder;

    const/16 v1, 0x17d

    invoke-virtual {v0, v1}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard$Builder;->setMetricsConstant(I)Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard$Builder;

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;->mAppContext:Landroid/content/Context;

    const v2, 0x7f120d17

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard$Builder;->setActionText(Ljava/lang/CharSequence;)Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard$Builder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;->mAppContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;->mAppContext:Landroid/content/Context;

    const v3, 0x7f12048f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->setName(Ljava/lang/String;)Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;->mAppContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->setTitleText(Ljava/lang/String;)Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v1}, Landroid/app/NotificationManager;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v1

    iget-object v2, v1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-wide/16 v5, -0x1

    const-string v7, ""

    if-eqz v2, :cond_2

    iget-object v8, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    iget-object v2, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->enabler:Ljava/lang/String;

    if-eqz v2, :cond_0

    sget-object v8, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;->mZenModeConfigWrapper:Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController$ZenModeConfigWrapper;

    invoke-virtual {v8, v2}, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController$ZenModeConfigWrapper;->getOwnerCaption(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_2

    iget-object v7, p0, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;->mAppContext:Landroid/content/Context;

    const v8, 0x7f121b1d

    new-array v9, v4, [Ljava/lang/Object;

    aput-object v2, v9, v3

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :cond_0
    if-nez v8, :cond_1

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;->mAppContext:Landroid/content/Context;

    const v2, 0x7f121acd

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    :cond_1
    sget-object v2, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;->mZenModeConfigWrapper:Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController$ZenModeConfigWrapper;

    invoke-virtual {v2, v8}, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController$ZenModeConfigWrapper;->parseManualRuleTime(Landroid/net/Uri;)J

    move-result-wide v5

    const-wide/16 v8, 0x0

    cmp-long v2, v5, v8

    if-lez v2, :cond_2

    sget-object v2, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;->mZenModeConfigWrapper:Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController$ZenModeConfigWrapper;

    iget-object v7, p0, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;->mAppContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getUserId()I

    move-result v7

    invoke-virtual {v2, v5, v6, v7}, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController$ZenModeConfigWrapper;->getFormattedTime(JI)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v7, p0, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;->mAppContext:Landroid/content/Context;

    const v8, 0x10407ce

    new-array v9, v4, [Ljava/lang/Object;

    aput-object v2, v9, v3

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    :cond_2
    :goto_0
    iget-object v1, v1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-virtual {v2}, Landroid/service/notification/ZenModeConfig$ZenRule;->isAutomaticActive()Z

    move-result v8

    if-eqz v8, :cond_3

    sget-object v8, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;->mZenModeConfigWrapper:Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController$ZenModeConfigWrapper;

    iget-object v9, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    invoke-virtual {v8, v9}, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController$ZenModeConfigWrapper;->isTimeRule(Landroid/net/Uri;)Z

    move-result v8

    const v9, 0x7f121b1c

    if-nez v8, :cond_4

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;->mAppContext:Landroid/content/Context;

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v2, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    aput-object v2, v4, v3

    invoke-virtual {v1, v9, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_4
    sget-object v8, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;->mZenModeConfigWrapper:Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController$ZenModeConfigWrapper;

    iget-object v10, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    invoke-virtual {v8, v10}, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController$ZenModeConfigWrapper;->parseAutomaticRuleEndTime(Landroid/net/Uri;)J

    move-result-wide v10

    cmp-long v8, v10, v5

    if-lez v8, :cond_3

    iget-object v5, p0, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;->mAppContext:Landroid/content/Context;

    new-array v6, v4, [Ljava/lang/Object;

    iget-object v2, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    aput-object v2, v6, v3

    invoke-virtual {v5, v9, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    move-wide v5, v10

    goto :goto_1

    :cond_5
    move-object v1, v7

    :goto_2
    invoke-virtual {v0, v1}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->setSummaryText(Ljava/lang/String;)Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;->mAppContext:Landroid/content/Context;

    const v1, 0x7f0801db

    invoke-virtual {p0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->setIconDrawable(Landroid/graphics/drawable/Drawable;)Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    const p0, 0x7f0d0056

    invoke-virtual {v0, p0}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->setViewType(I)Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    invoke-virtual {v0}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->build()Lcom/android/settings/homepage/contextualcards/ContextualCard;

    move-result-object p0

    return-object p0
.end method

.method public getId()J
    .locals 2

    sget p0, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;->ID:I

    int-to-long v0, p0

    return-wide v0
.end method

.method public isDisplayable()Z
    .locals 0

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p0}, Landroid/app/NotificationManager;->getZenMode()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onActionClick()V
    .locals 3

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v0, 0x0

    const/4 v1, 0x0

    const-string v2, "DndCondition"

    invoke-virtual {p0, v0, v1, v2}, Landroid/app/NotificationManager;->setZenMode(ILandroid/net/Uri;Ljava/lang/String;)V

    return-void
.end method

.method public onPrimaryClick(Landroid/content/Context;)V
    .locals 0

    new-instance p0, Lcom/android/settings/core/SubSettingLauncher;

    invoke-direct {p0, p1}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class p1, Lcom/android/settings/notification/ZenModeSettings;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    const/16 p1, 0x5de

    invoke-virtual {p0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    const p1, 0x7f121b23

    invoke-virtual {p0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method

.method public startMonitoringStateChange()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;->mAppContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;->mReceiver:Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController$Receiver;

    sget-object v1, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;->DND_FILTER:Landroid/content/IntentFilter;

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public stopMonitoringStateChange()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;->mAppContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;->mReceiver:Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController$Receiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
