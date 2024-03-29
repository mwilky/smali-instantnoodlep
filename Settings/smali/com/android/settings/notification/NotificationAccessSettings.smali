.class public Lcom/android/settings/notification/NotificationAccessSettings;
.super Lcom/android/settings/utils/ManagedServiceSettings;
.source "NotificationAccessSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/NotificationAccessSettings$FriendlyWarningDialogFragment;
    }
.end annotation


# static fields
.field private static final CONFIG:Lcom/android/settings/utils/ManagedServiceSettings$Config;

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mNm:Landroid/app/NotificationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;

    invoke-direct {v0}, Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;-><init>()V

    const-string v1, "NotificationAccessSettings"

    invoke-virtual {v0, v1}, Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;->setTag(Ljava/lang/String;)Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;

    const-string v1, "enabled_notification_listeners"

    invoke-virtual {v0, v1}, Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;->setSetting(Ljava/lang/String;)Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;

    const-string v1, "android.service.notification.NotificationListenerService"

    invoke-virtual {v0, v1}, Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;->setIntentAction(Ljava/lang/String;)Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;

    const-string v1, "android.permission.BIND_NOTIFICATION_LISTENER_SERVICE"

    invoke-virtual {v0, v1}, Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;->setPermission(Ljava/lang/String;)Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;

    const-string v1, "notification listener"

    invoke-virtual {v0, v1}, Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;->setNoun(Ljava/lang/String;)Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;

    const v1, 0x7f120bac

    invoke-virtual {v0, v1}, Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;->setWarningDialogTitle(I)Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;

    const v1, 0x7f120bab

    invoke-virtual {v0, v1}, Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;->setWarningDialogSummary(I)Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;

    const v1, 0x7f120b72

    invoke-virtual {v0, v1}, Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;->setEmptyText(I)Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;

    invoke-virtual {v0}, Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;->build()Lcom/android/settings/utils/ManagedServiceSettings$Config;

    move-result-object v0

    sput-object v0, Lcom/android/settings/notification/NotificationAccessSettings;->CONFIG:Lcom/android/settings/utils/ManagedServiceSettings$Config;

    new-instance v0, Lcom/android/settings/notification/NotificationAccessSettings$1;

    invoke-direct {v0}, Lcom/android/settings/notification/NotificationAccessSettings$1;-><init>()V

    sput-object v0, Lcom/android/settings/notification/NotificationAccessSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/utils/ManagedServiceSettings;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/notification/NotificationAccessSettings;Landroid/content/ComponentName;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/notification/NotificationAccessSettings;->mNm:Landroid/app/NotificationManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/app/NotificationManager;->setNotificationListenerAccessGranted(Landroid/content/ComponentName;Z)V

    new-instance v0, Lcom/android/settings/notification/-$$Lambda$NotificationAccessSettings$5Getr2Y6VpjSaSB3qVPpmCZNr9A;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/notification/-$$Lambda$NotificationAccessSettings$5Getr2Y6VpjSaSB3qVPpmCZNr9A;-><init>(Lcom/android/settings/notification/NotificationAccessSettings;Landroid/content/ComponentName;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic lambda$disable$0(Lcom/android/settings/notification/NotificationAccessSettings;Landroid/content/ComponentName;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/notification/NotificationAccessSettings;->mNm:Landroid/app/NotificationManager;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->isNotificationPolicyAccessGrantedForPackage(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/notification/NotificationAccessSettings;->mNm:Landroid/app/NotificationManager;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/NotificationManager;->removeAutomaticZenRules(Ljava/lang/String;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method protected enable(Landroid/content/ComponentName;)V
    .locals 1

    iget-object p0, p0, Lcom/android/settings/notification/NotificationAccessSettings;->mNm:Landroid/app/NotificationManager;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/app/NotificationManager;->setNotificationListenerAccessGranted(Landroid/content/ComponentName;Z)V

    return-void
.end method

.method protected getConfig()Lcom/android/settings/utils/ManagedServiceSettings$Config;
    .locals 0

    sget-object p0, Lcom/android/settings/notification/NotificationAccessSettings;->CONFIG:Lcom/android/settings/utils/ManagedServiceSettings$Config;

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0xb3

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f16007c

    return p0
.end method

.method protected isServiceEnabled(Landroid/content/ComponentName;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/settings/notification/NotificationAccessSettings;->mNm:Landroid/app/NotificationManager;

    invoke-virtual {p0, p1}, Landroid/app/NotificationManager;->isNotificationListenerAccessGranted(Landroid/content/ComponentName;)Z

    move-result p0

    return p0
.end method

.method logSpecialPermissionChange(ZLjava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    const/16 p1, 0x308

    goto :goto_0

    :cond_0
    const/16 p1, 0x309

    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;ILjava/lang/String;)V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onAttach(Landroid/content/Context;)V

    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    iput-object p1, p0, Lcom/android/settings/notification/NotificationAccessSettings;->mNm:Landroid/app/NotificationManager;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/utils/ManagedServiceSettings;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->isManagedProfile()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f120bd0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_0
    return-void
.end method

.method protected setEnabled(Landroid/content/ComponentName;Ljava/lang/String;Z)Z
    .locals 2

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p3, v0}, Lcom/android/settings/notification/NotificationAccessSettings;->logSpecialPermissionChange(ZLjava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p3, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/settings/notification/NotificationAccessSettings;->isServiceEnabled(Landroid/content/ComponentName;)Z

    move-result p3

    if-nez p3, :cond_0

    return v0

    :cond_0
    new-instance p3, Lcom/android/settings/notification/NotificationAccessSettings$FriendlyWarningDialogFragment;

    invoke-direct {p3}, Lcom/android/settings/notification/NotificationAccessSettings$FriendlyWarningDialogFragment;-><init>()V

    invoke-virtual {p3, p1, p2, p0}, Lcom/android/settings/notification/NotificationAccessSettings$FriendlyWarningDialogFragment;->setServiceInfo(Landroid/content/ComponentName;Ljava/lang/String;Landroidx/fragment/app/Fragment;)Lcom/android/settings/notification/NotificationAccessSettings$FriendlyWarningDialogFragment;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string p2, "friendlydialog"

    invoke-virtual {p1, p0, p2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return v1

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/settings/notification/NotificationAccessSettings;->isServiceEnabled(Landroid/content/ComponentName;)Z

    move-result p3

    if-eqz p3, :cond_2

    return v0

    :cond_2
    new-instance p3, Lcom/android/settings/utils/ManagedServiceSettings$ScaryWarningDialogFragment;

    invoke-direct {p3}, Lcom/android/settings/utils/ManagedServiceSettings$ScaryWarningDialogFragment;-><init>()V

    invoke-virtual {p3, p1, p2, p0}, Lcom/android/settings/utils/ManagedServiceSettings$ScaryWarningDialogFragment;->setServiceInfo(Landroid/content/ComponentName;Ljava/lang/String;Landroidx/fragment/app/Fragment;)Lcom/android/settings/utils/ManagedServiceSettings$ScaryWarningDialogFragment;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string p2, "dialog"

    invoke-virtual {p1, p0, p2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return v1
.end method
