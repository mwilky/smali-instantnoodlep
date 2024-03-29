.class Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController$ZenModeConfigWrapper;
.super Ljava/lang/Object;
.source "DndConditionCardController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ZenModeConfigWrapper"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController$ZenModeConfigWrapper;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected getFormattedTime(JI)Ljava/lang/CharSequence;
    .locals 1

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController$ZenModeConfigWrapper;->mContext:Landroid/content/Context;

    invoke-static {p1, p2}, Landroid/service/notification/ZenModeConfig;->isToday(J)Z

    move-result v0

    invoke-static {p0, p1, p2, v0, p3}, Landroid/service/notification/ZenModeConfig;->getFormattedTime(Landroid/content/Context;JZI)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method protected getOwnerCaption(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController$ZenModeConfigWrapper;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Landroid/service/notification/ZenModeConfig;->getOwnerCaption(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected isTimeRule(Landroid/net/Uri;)Z
    .locals 0

    invoke-static {p1}, Landroid/service/notification/ZenModeConfig;->isValidEventConditionId(Landroid/net/Uri;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {p1}, Landroid/service/notification/ZenModeConfig;->isValidScheduleConditionId(Landroid/net/Uri;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method protected parseAutomaticRuleEndTime(Landroid/net/Uri;)J
    .locals 6

    invoke-static {p1}, Landroid/service/notification/ZenModeConfig;->isValidEventConditionId(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide p0, 0x7fffffffffffffffL

    return-wide p0

    :cond_0
    invoke-static {p1}, Landroid/service/notification/ZenModeConfig;->isValidScheduleConditionId(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Landroid/service/notification/ZenModeConfig;->toScheduleCalendar(Landroid/net/Uri;)Landroid/service/notification/ScheduleCalendar;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/service/notification/ScheduleCalendar;->getNextChangeTime(J)J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/service/notification/ScheduleCalendar;->exitAtAlarm()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController$ZenModeConfigWrapper;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;->access$100(Landroid/content/Context;)J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/service/notification/ScheduleCalendar;->maybeSetNextAlarm(JJ)V

    invoke-virtual {p1, v0, v1}, Landroid/service/notification/ScheduleCalendar;->shouldExitForAlarm(J)Z

    move-result p0

    if-eqz p0, :cond_1

    return-wide v2

    :cond_1
    return-wide v0

    :cond_2
    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method protected parseManualRuleTime(Landroid/net/Uri;)J
    .locals 0

    invoke-static {p1}, Landroid/service/notification/ZenModeConfig;->tryParseCountdownConditionId(Landroid/net/Uri;)J

    move-result-wide p0

    return-wide p0
.end method
