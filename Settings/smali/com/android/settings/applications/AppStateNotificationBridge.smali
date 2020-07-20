.class public Lcom/android/settings/applications/AppStateNotificationBridge;
.super Lcom/android/settings/applications/AppStateBaseBridge;
.source "AppStateNotificationBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;
    }
.end annotation


# static fields
.field public static final BASE_URI:Landroid/net/Uri;

.field public static final FILTER_APP_NOTIFICATION_BLOCKED:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

.field public static final FILTER_APP_NOTIFICATION_FREQUENCY:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

.field public static final FILTER_APP_NOTIFICATION_RECENCY:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

.field public static final FREQUENCY_NOTIFICATION_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field public static final RECENT_NOTIFICATION_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBackend:Lcom/android/settings/notification/NotificationBackend;

.field private final mContext:Landroid/content/Context;

.field private mUsageStatsManager:Landroid/app/usage/IUsageStatsManager;

.field protected mUserIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mVibratePattern:[J

.field protected mVibrator:Landroid/os/Vibrator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.nearme.instant.setting/notification"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/applications/AppStateNotificationBridge;->BASE_URI:Landroid/net/Uri;

    new-instance v0, Lcom/android/settings/applications/AppStateNotificationBridge$1;

    invoke-direct {v0}, Lcom/android/settings/applications/AppStateNotificationBridge$1;-><init>()V

    sput-object v0, Lcom/android/settings/applications/AppStateNotificationBridge;->FILTER_APP_NOTIFICATION_RECENCY:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    new-instance v0, Lcom/android/settings/applications/AppStateNotificationBridge$2;

    invoke-direct {v0}, Lcom/android/settings/applications/AppStateNotificationBridge$2;-><init>()V

    sput-object v0, Lcom/android/settings/applications/AppStateNotificationBridge;->FILTER_APP_NOTIFICATION_FREQUENCY:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    new-instance v0, Lcom/android/settings/applications/AppStateNotificationBridge$3;

    invoke-direct {v0}, Lcom/android/settings/applications/AppStateNotificationBridge$3;-><init>()V

    sput-object v0, Lcom/android/settings/applications/AppStateNotificationBridge;->FILTER_APP_NOTIFICATION_BLOCKED:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    new-instance v0, Lcom/android/settings/applications/AppStateNotificationBridge$4;

    invoke-direct {v0}, Lcom/android/settings/applications/AppStateNotificationBridge$4;-><init>()V

    sput-object v0, Lcom/android/settings/applications/AppStateNotificationBridge;->RECENT_NOTIFICATION_COMPARATOR:Ljava/util/Comparator;

    new-instance v0, Lcom/android/settings/applications/AppStateNotificationBridge$5;

    invoke-direct {v0}, Lcom/android/settings/applications/AppStateNotificationBridge$5;-><init>()V

    sput-object v0, Lcom/android/settings/applications/AppStateNotificationBridge;->FREQUENCY_NOTIFICATION_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;Landroid/app/usage/IUsageStatsManager;Landroid/os/UserManager;Lcom/android/settings/notification/NotificationBackend;)V
    .locals 0

    invoke-direct {p0, p2, p3}, Lcom/android/settings/applications/AppStateBaseBridge;-><init>(Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V

    iput-object p1, p0, Lcom/android/settings/applications/AppStateNotificationBridge;->mContext:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/settings/applications/AppStateNotificationBridge;->mUsageStatsManager:Landroid/app/usage/IUsageStatsManager;

    iput-object p6, p0, Lcom/android/settings/applications/AppStateNotificationBridge;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/settings/applications/AppStateNotificationBridge;->mUserIds:Ljava/util/List;

    iget-object p2, p0, Lcom/android/settings/applications/AppStateNotificationBridge;->mUserIds:Ljava/util/List;

    iget-object p3, p0, Lcom/android/settings/applications/AppStateNotificationBridge;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getUserId()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/android/settings/applications/AppStateNotificationBridge;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getUserId()I

    move-result p2

    invoke-static {p5, p2}, Lcom/android/settings/Utils;->getManagedProfileId(Landroid/os/UserManager;I)I

    move-result p2

    const/16 p3, -0x2710

    if-eq p2, p3, :cond_0

    iget-object p3, p0, Lcom/android/settings/applications/AppStateNotificationBridge;->mUserIds:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportXVibrate()Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "vibrator"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Vibrator;

    iput-object p1, p0, Lcom/android/settings/applications/AppStateNotificationBridge;->mVibrator:Landroid/os/Vibrator;

    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;
    .locals 0

    invoke-static {p0}, Lcom/android/settings/applications/AppStateNotificationBridge;->getNotificationsSentState(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;

    move-result-object p0

    return-object p0
.end method

.method private addBlockStatus(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;)V
    .locals 3

    if-eqz p2, :cond_0

    iget-boolean v0, p2, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;->instantApp:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_3

    iget-object v0, p0, Lcom/android/settings/applications/AppStateNotificationBridge;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/notification/NotificationBackend;->getNotificationsBanned(Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p2, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;->blocked:Z

    iget-object v0, p0, Lcom/android/settings/applications/AppStateNotificationBridge;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object p0, p0, Lcom/android/settings/applications/AppStateNotificationBridge;->mContext:Landroid/content/Context;

    iget-object p1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, p0, p1}, Lcom/android/settings/notification/NotificationBackend;->isSystemApp(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Z

    move-result p0

    iput-boolean p0, p2, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;->systemApp:Z

    iget-boolean p0, p2, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;->systemApp:Z

    if-eqz p0, :cond_2

    iget-boolean p0, p2, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;->blocked:Z

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    iput-boolean p0, p2, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;->blockable:Z

    :cond_3
    return-void
.end method

.method private calculateAvgSentCounts(Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-boolean p0, p1, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;->instantApp:Z

    if-eqz p0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget p0, p1, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;->sentCount:I

    int-to-float p0, p0

    const/high16 v0, 0x40e00000    # 7.0f

    div-float/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    iput p0, p1, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;->avgSentDaily:I

    iget p0, p1, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;->sentCount:I

    const/4 v0, 0x7

    if-ge p0, v0, :cond_1

    iput p0, p1, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;->avgSentWeekly:I

    :cond_1
    return-void
.end method

.method public static final checkSwitch(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/settings/applications/AppStateNotificationBridge;->getNotificationsSentState(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-boolean p0, p0, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;->blocked:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static final enableSwitch(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/settings/applications/AppStateNotificationBridge;->getNotificationsSentState(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-boolean p0, p0, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;->blockable:Z

    return p0
.end method

.method protected static getKey(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "|"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getNotificationsSentState(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    iget-object p0, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v1, p0, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;

    if-eqz v1, :cond_1

    check-cast p0, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;

    return-object p0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static getSummary(Landroid/content/Context;Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;I)Ljava/lang/CharSequence;
    .locals 5

    iget-boolean v0, p1, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;->instantApp:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-string p1, "com.nearme.instant.platform"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    :try_start_0
    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_1

    :cond_0
    const-string p0, "(unknown)"

    :goto_1
    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_1
    const v0, 0x7f0a068c

    const/4 v2, 0x1

    if-ne p2, v0, :cond_3

    iget-wide v0, p1, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;->lastSent:J

    const-wide/16 v3, 0x0

    cmp-long p2, v0, v3

    if-nez p2, :cond_2

    const p1, 0x7f120bea

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide p1, p1, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;->lastSent:J

    sub-long/2addr v0, p1

    long-to-double p1, v0

    invoke-static {p0, p1, p2, v2}, Lcom/android/settingslib/RestrictedLockUtils;->formatRelativeTime(Landroid/content/Context;DZ)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_3
    const v0, 0x7f0a068b

    if-ne p2, v0, :cond_5

    iget p2, p1, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;->avgSentDaily:I

    if-lez p2, :cond_4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f100033

    iget p1, p1, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;->avgSentDaily:I

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, p2, p1, v0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f100034

    iget p1, p1, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;->avgSentWeekly:I

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, p2, p1, v0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    const-string p0, ""

    return-object p0
.end method


# virtual methods
.method public getSwitchOnClickListener(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Landroid/view/View$OnClickListener;
    .locals 1

    if-eqz p1, :cond_0

    new-instance v0, Lcom/android/settings/applications/-$$Lambda$AppStateNotificationBridge$3yb6PrF82n91FG3YEHY_Ccl1JyI;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/applications/-$$Lambda$AppStateNotificationBridge$3yb6PrF82n91FG3YEHY_Ccl1JyI;-><init>(Lcom/android/settings/applications/AppStateNotificationBridge;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public synthetic lambda$getSwitchOnClickListener$0$AppStateNotificationBridge(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Landroid/view/View;)V
    .locals 4

    check-cast p2, Landroid/view/ViewGroup;

    const v0, 0x7f0a06e9

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Switch;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/widget/Switch;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/widget/Switch;->toggle()V

    invoke-static {p1}, Lcom/android/settings/applications/AppStateNotificationBridge;->getNotificationsSentState(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;->instantApp:Z

    if-eqz v1, :cond_1

    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p2}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "notify"

    invoke-virtual {p1, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v1, p0, Lcom/android/settings/applications/AppStateNotificationBridge;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/settings/applications/AppStateNotificationBridge;->BASE_URI:Landroid/net/Uri;

    iget-object v3, v0, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;->instantAppPKG:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/settings/applications/AppStateNotificationBridge;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v2, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p2}, Landroid/widget/Switch;->isChecked()Z

    move-result v3

    invoke-virtual {v1, v2, p1, v3}, Lcom/android/settings/notification/NotificationBackend;->setNotificationsEnabledForPackage(Ljava/lang/String;IZ)Z

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {p2}, Landroid/widget/Switch;->isChecked()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, v0, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;->blocked:Z

    :cond_2
    iget-object p1, p0, Lcom/android/settings/applications/AppStateNotificationBridge;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroidx/mediarouter/R$string;->systemVibrateEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/settings/applications/AppStateNotificationBridge;->mContext:Landroid/content/Context;

    iget-object p2, p0, Lcom/android/settings/applications/AppStateNotificationBridge;->mVibrator:Landroid/os/Vibrator;

    const/16 v0, 0x3eb

    invoke-static {p1, p2, v0}, Landroidx/mediarouter/R$string;->getVibratorScenePattern(Landroid/content/Context;Landroid/os/Vibrator;I)[J

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/AppStateNotificationBridge;->mVibratePattern:[J

    iget-object p1, p0, Lcom/android/settings/applications/AppStateNotificationBridge;->mVibratePattern:[J

    iget-object p0, p0, Lcom/android/settings/applications/AppStateNotificationBridge;->mVibrator:Landroid/os/Vibrator;

    invoke-static {p1, p0}, Landroidx/mediarouter/R$string;->vibrateIfNeeded([JLandroid/os/Vibrator;)V

    :cond_3
    return-void
.end method

.method protected loadAllExtraInfo()V
    .locals 19

    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/settings/applications/AppStateBaseBridge;->mAppSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settingslib/applications/ApplicationsState$Session;->getAllApps()Ljava/util/ArrayList;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    const-wide/32 v4, 0x240c8400

    sub-long v13, v11, v4

    iget-object v0, v1, Lcom/android/settings/applications/AppStateNotificationBridge;->mUserIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const/16 v16, 0x0

    :try_start_0
    iget-object v4, v1, Lcom/android/settings/applications/AppStateNotificationBridge;->mUsageStatsManager:Landroid/app/usage/IUsageStatsManager;

    iget-object v0, v1, Lcom/android/settings/applications/AppStateNotificationBridge;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-wide v5, v13

    move-wide v7, v11

    move v9, v10

    move-wide/from16 v17, v11

    move v11, v10

    move-object v10, v0

    :try_start_1
    invoke-interface/range {v4 .. v10}, Landroid/app/usage/IUsageStatsManager;->queryEventsForUser(JJILjava/lang/String;)Landroid/app/usage/UsageEvents;

    move-result-object v16
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    move-wide/from16 v17, v11

    move v11, v10

    :goto_1
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_2
    move-object/from16 v0, v16

    if-eqz v0, :cond_4

    new-instance v4, Landroid/app/usage/UsageEvents$Event;

    invoke-direct {v4}, Landroid/app/usage/UsageEvents$Event;-><init>()V

    :cond_1
    :goto_3
    invoke-virtual {v0}, Landroid/app/usage/UsageEvents;->hasNextEvent()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v0, v4}, Landroid/app/usage/UsageEvents;->getNextEvent(Landroid/app/usage/UsageEvents$Event;)Z

    invoke-virtual {v4}, Landroid/app/usage/UsageEvents$Event;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v11, v5}, Lcom/android/settings/applications/AppStateNotificationBridge;->getKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;

    if-nez v5, :cond_2

    new-instance v5, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;

    invoke-direct {v5}, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;-><init>()V

    invoke-virtual {v4}, Landroid/app/usage/UsageEvents$Event;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v11, v6}, Lcom/android/settings/applications/AppStateNotificationBridge;->getKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-virtual {v4}, Landroid/app/usage/UsageEvents$Event;->getEventType()I

    move-result v6

    const/16 v7, 0xc

    if-ne v6, v7, :cond_1

    invoke-virtual {v4}, Landroid/app/usage/UsageEvents$Event;->getTimeStamp()J

    move-result-wide v6

    iget-wide v8, v5, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;->lastSent:J

    cmp-long v6, v6, v8

    if-lez v6, :cond_3

    invoke-virtual {v4}, Landroid/app/usage/UsageEvents$Event;->getTimeStamp()J

    move-result-wide v6

    iput-wide v6, v5, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;->lastSent:J

    :cond_3
    iget v6, v5, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;->sentCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;->sentCount:I

    goto :goto_3

    :cond_4
    move-wide/from16 v11, v17

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v4, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    iget-object v5, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/android/settings/applications/AppStateNotificationBridge;->getKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;

    invoke-direct {v1, v4}, Lcom/android/settings/applications/AppStateNotificationBridge;->calculateAvgSentCounts(Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;)V

    invoke-direct {v1, v2, v4}, Lcom/android/settings/applications/AppStateNotificationBridge;->addBlockStatus(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;)V

    iput-object v4, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    goto :goto_4

    :cond_6
    return-void
.end method

.method protected updateExtraInfo(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Ljava/lang/String;I)V
    .locals 8

    iget-object p2, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget p2, p2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    iget-object p2, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/32 p2, 0x240c8400

    sub-long v1, v3, p2

    const/4 p2, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/android/settings/applications/AppStateNotificationBridge;->mUsageStatsManager:Landroid/app/usage/IUsageStatsManager;

    iget-object p3, p0, Lcom/android/settings/applications/AppStateNotificationBridge;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-interface/range {v0 .. v7}, Landroid/app/usage/IUsageStatsManager;->queryEventsForPackageForUser(JJILjava/lang/String;Ljava/lang/String;)Landroid/app/usage/UsageEvents;

    move-result-object p3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p3

    invoke-virtual {p3}, Landroid/os/RemoteException;->printStackTrace()V

    move-object p3, p2

    :goto_0
    if-eqz p3, :cond_3

    new-instance v0, Landroid/app/usage/UsageEvents$Event;

    invoke-direct {v0}, Landroid/app/usage/UsageEvents$Event;-><init>()V

    :cond_0
    :goto_1
    invoke-virtual {p3}, Landroid/app/usage/UsageEvents;->hasNextEvent()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p3, v0}, Landroid/app/usage/UsageEvents;->getNextEvent(Landroid/app/usage/UsageEvents$Event;)Z

    invoke-virtual {v0}, Landroid/app/usage/UsageEvents$Event;->getEventType()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_0

    if-nez p2, :cond_1

    new-instance p2, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;

    invoke-direct {p2}, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;-><init>()V

    :cond_1
    invoke-virtual {v0}, Landroid/app/usage/UsageEvents$Event;->getTimeStamp()J

    move-result-wide v1

    iget-wide v3, p2, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;->lastSent:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_2

    invoke-virtual {v0}, Landroid/app/usage/UsageEvents$Event;->getTimeStamp()J

    move-result-wide v1

    iput-wide v1, p2, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;->lastSent:J

    :cond_2
    iget v1, p2, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;->sentCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p2, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;->sentCount:I

    goto :goto_1

    :cond_3
    invoke-direct {p0, p2}, Lcom/android/settings/applications/AppStateNotificationBridge;->calculateAvgSentCounts(Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;)V

    invoke-direct {p0, p1, p2}, Lcom/android/settings/applications/AppStateNotificationBridge;->addBlockStatus(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;)V

    iput-object p2, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    return-void
.end method
