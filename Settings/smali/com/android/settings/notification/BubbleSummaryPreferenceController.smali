.class public Lcom/android/settings/notification/BubbleSummaryPreferenceController;
.super Lcom/android/settings/notification/NotificationPreferenceController;
.source "BubbleSummaryPreferenceController.java"


# static fields
.field static final SYSTEM_WIDE_OFF:I = 0x0

.field static final SYSTEM_WIDE_ON:I = 0x1


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/notification/NotificationPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;)V

    return-void
.end method

.method private isGloballyEnabled()Z
    .locals 2

    iget-object p0, p0, Lcom/android/settings/notification/NotificationPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "notification_bubbles"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    move v0, v1

    :cond_0
    return v0
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "bubble_link_pref"

    return-object p0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 4

    iget-object v0, p0, Lcom/android/settings/notification/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/android/settings/notification/NotificationPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->canBubble()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/settings/notification/BubbleSummaryPreferenceController;->isGloballyEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_0
    iget-boolean v0, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->allowBubbles:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/settings/notification/BubbleSummaryPreferenceController;->isGloballyEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    or-int/2addr v1, v3

    :cond_2
    iget-object p0, p0, Lcom/android/settings/notification/NotificationPreferenceController;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_3

    const v0, 0x7f121649

    goto :goto_1

    :cond_3
    const v0, 0x7f121648

    :goto_1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isAvailable()Z
    .locals 3

    invoke-super {p0}, Lcom/android/settings/notification/NotificationPreferenceController;->isAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/notification/NotificationPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/NotificationPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/android/settings/notification/BubbleSummaryPreferenceController;->isGloballyEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationPreferenceController;->isDefaultChannel()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Lcom/android/settings/notification/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    if-eqz p0, :cond_4

    iget-boolean p0, p0, Lcom/android/settings/notification/NotificationBackend$AppRow;->allowBubbles:Z

    if-eqz p0, :cond_4

    move v1, v2

    :cond_4
    return v1

    :cond_5
    invoke-direct {p0}, Lcom/android/settings/notification/BubbleSummaryPreferenceController;->isGloballyEnabled()Z

    move-result p0

    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    iget-object v0, p0, Lcom/android/settings/notification/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/android/settings/notification/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v1, v1, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    const-string v2, "package"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/notification/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget v1, v1, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    const-string v2, "uid"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v1, Lcom/android/settings/core/SubSettingLauncher;

    iget-object p0, p0, Lcom/android/settings/notification/NotificationPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class p0, Lcom/android/settings/notification/AppBubbleNotificationSettings;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    const/16 v0, 0x48

    invoke-virtual {p0, v0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->toIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
