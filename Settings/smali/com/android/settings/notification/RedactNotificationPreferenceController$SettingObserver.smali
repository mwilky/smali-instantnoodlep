.class Lcom/android/settings/notification/RedactNotificationPreferenceController$SettingObserver;
.super Landroid/database/ContentObserver;
.source "RedactNotificationPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/RedactNotificationPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingObserver"
.end annotation


# instance fields
.field private final LOCK_SCREEN_PRIVATE_URI:Landroid/net/Uri;

.field private final LOCK_SCREEN_SHOW_URI:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/settings/notification/RedactNotificationPreferenceController;


# direct methods
.method public constructor <init>(Lcom/android/settings/notification/RedactNotificationPreferenceController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/notification/RedactNotificationPreferenceController$SettingObserver;->this$0:Lcom/android/settings/notification/RedactNotificationPreferenceController;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string p1, "lock_screen_allow_private_notifications"

    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/RedactNotificationPreferenceController$SettingObserver;->LOCK_SCREEN_PRIVATE_URI:Landroid/net/Uri;

    const-string p1, "lock_screen_show_notifications"

    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/RedactNotificationPreferenceController$SettingObserver;->LOCK_SCREEN_SHOW_URI:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    iget-object p1, p0, Lcom/android/settings/notification/RedactNotificationPreferenceController$SettingObserver;->LOCK_SCREEN_PRIVATE_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/notification/RedactNotificationPreferenceController$SettingObserver;->LOCK_SCREEN_SHOW_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_0
    iget-object p1, p0, Lcom/android/settings/notification/RedactNotificationPreferenceController$SettingObserver;->this$0:Lcom/android/settings/notification/RedactNotificationPreferenceController;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p2

    invoke-static {p1, p2}, Lcom/android/settings/notification/RedactNotificationPreferenceController;->access$000(Lcom/android/settings/notification/RedactNotificationPreferenceController;I)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/settings/notification/RedactNotificationPreferenceController$SettingObserver;->this$0:Lcom/android/settings/notification/RedactNotificationPreferenceController;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p2

    invoke-static {p1, p2}, Lcom/android/settings/notification/RedactNotificationPreferenceController;->access$100(Lcom/android/settings/notification/RedactNotificationPreferenceController;I)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/settings/notification/RedactNotificationPreferenceController$SettingObserver;->this$0:Lcom/android/settings/notification/RedactNotificationPreferenceController;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p2

    invoke-static {p1, p2}, Lcom/android/settings/notification/RedactNotificationPreferenceController;->access$200(Lcom/android/settings/notification/RedactNotificationPreferenceController;I)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/settings/notification/RedactNotificationPreferenceController$SettingObserver;->this$0:Lcom/android/settings/notification/RedactNotificationPreferenceController;

    invoke-static {p0}, Lcom/android/settings/notification/RedactNotificationPreferenceController;->access$300(Lcom/android/settings/notification/RedactNotificationPreferenceController;)Landroidx/preference/SwitchPreference;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_1

    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/android/settings/notification/RedactNotificationPreferenceController$SettingObserver;->this$0:Lcom/android/settings/notification/RedactNotificationPreferenceController;

    invoke-static {p0}, Lcom/android/settings/notification/RedactNotificationPreferenceController;->access$300(Lcom/android/settings/notification/RedactNotificationPreferenceController;)Landroidx/preference/SwitchPreference;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_3
    :goto_1
    return-void
.end method

.method public register(Landroid/content/ContentResolver;Z)V
    .locals 1

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/android/settings/notification/RedactNotificationPreferenceController$SettingObserver;->LOCK_SCREEN_PRIVATE_URI:Landroid/net/Uri;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object p2, p0, Lcom/android/settings/notification/RedactNotificationPreferenceController$SettingObserver;->LOCK_SCREEN_SHOW_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2, v0, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :goto_0
    return-void
.end method
