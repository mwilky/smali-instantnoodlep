.class public Lcom/android/settings/notification/BubblePreferenceController;
.super Lcom/android/settings/notification/NotificationPreferenceController;
.source "BubblePreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# static fields
.field static final SYSTEM_WIDE_OFF:I = 0x0

.field static final SYSTEM_WIDE_ON:I = 0x1


# instance fields
.field private mFragmentManager:Landroidx/fragment/app/FragmentManager;

.field private mIsAppPage:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;Lcom/android/settings/notification/NotificationBackend;Z)V
    .locals 0

    invoke-direct {p0, p1, p3}, Lcom/android/settings/notification/NotificationPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;)V

    iput-object p2, p0, Lcom/android/settings/notification/BubblePreferenceController;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    iput-boolean p4, p0, Lcom/android/settings/notification/BubblePreferenceController;->mIsAppPage:Z

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

    const-string p0, "bubble_pref"

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
    iget-boolean v0, p0, Lcom/android/settings/notification/BubblePreferenceController;->mIsAppPage:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/settings/notification/BubblePreferenceController;->isGloballyEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/NotificationPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationPreferenceController;->isDefaultChannel()Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    :cond_2
    iget-object p0, p0, Lcom/android/settings/notification/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    if-eqz p0, :cond_3

    iget-boolean p0, p0, Lcom/android/settings/notification/NotificationBackend$AppRow;->allowBubbles:Z

    if-eqz p0, :cond_3

    move v1, v2

    :cond_3
    return v1

    :cond_4
    return v2
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/android/settings/notification/BubblePreferenceController;->isGloballyEnabled()Z

    move-result p2

    if-eqz p2, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    iget-object v2, p0, Lcom/android/settings/notification/NotificationPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    if-eqz v2, :cond_1

    invoke-virtual {v2, p2}, Landroid/app/NotificationChannel;->setAllowBubbles(Z)V

    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationPreferenceController;->saveChannel()V

    return v1

    :cond_1
    iget-object v2, p0, Lcom/android/settings/notification/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/notification/BubblePreferenceController;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    if-eqz v2, :cond_3

    check-cast p1, Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-direct {p0}, Lcom/android/settings/notification/BubblePreferenceController;->isGloballyEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p1

    if-nez p1, :cond_2

    new-instance p1, Lcom/android/settings/notification/BubbleWarningDialogFragment;

    invoke-direct {p1}, Lcom/android/settings/notification/BubbleWarningDialogFragment;-><init>()V

    iget-object p2, p0, Lcom/android/settings/notification/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v1, p2, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget p2, p2, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    invoke-virtual {p1, v1, p2}, Lcom/android/settings/notification/BubbleWarningDialogFragment;->setPkgInfo(Ljava/lang/String;I)Lcom/android/settings/notification/BubbleWarningDialogFragment;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/notification/BubblePreferenceController;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    const-string p2, "dialog"

    invoke-virtual {p1, p0, p2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return v0

    :cond_2
    iget-object p1, p0, Lcom/android/settings/notification/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iput-boolean p2, p1, Lcom/android/settings/notification/NotificationBackend$AppRow;->allowBubbles:Z

    iget-object p0, p0, Lcom/android/settings/notification/NotificationPreferenceController;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v0, p1, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget p1, p1, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/settings/notification/NotificationBackend;->setAllowBubbles(Ljava/lang/String;IZ)Z

    :cond_3
    return v1
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/notification/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    if-eqz v0, :cond_3

    check-cast p1, Lcom/android/settingslib/RestrictedSwitchPreference;

    iget-object v0, p0, Lcom/android/settings/notification/NotificationPreferenceController;->mAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-virtual {p1, v0}, Lcom/android/settingslib/RestrictedSwitchPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    iget-object v0, p0, Lcom/android/settings/notification/NotificationPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->canBubble()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/notification/BubblePreferenceController;->isGloballyEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    move v1, v2

    :cond_0
    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    invoke-virtual {p1}, Lcom/android/settingslib/RestrictedSwitchPreference;->isDisabledByAdmin()Z

    move-result p0

    xor-int/2addr p0, v2

    invoke-virtual {p1, p0}, Lcom/android/settingslib/RestrictedSwitchPreference;->setEnabled(Z)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-boolean v0, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->allowBubbles:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/settings/notification/BubblePreferenceController;->isGloballyEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/notification/NotificationPreferenceController;->mContext:Landroid/content/Context;

    const v3, 0x7f1203c7

    new-array v2, v2, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/settings/notification/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object p0, p0, Lcom/android/settings/notification/NotificationBackend$AppRow;->label:Ljava/lang/CharSequence;

    aput-object p0, v2, v1

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_1
    return-void
.end method
