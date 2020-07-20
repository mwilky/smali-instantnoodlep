.class public Lcom/android/settings/fuelgauge/BatteryEntry;
.super Ljava/lang/Object;
.source "BatteryEntry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fuelgauge/BatteryEntry$UidToDetail;,
        Lcom/android/settings/fuelgauge/BatteryEntry$NameAndIconLoader;
    }
.end annotation


# static fields
.field static final mRequestQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/fuelgauge/BatteryEntry;",
            ">;"
        }
    .end annotation
.end field

.field private static mRequestThread:Lcom/android/settings/fuelgauge/BatteryEntry$NameAndIconLoader;

.field static sCurrentLocale:Ljava/util/Locale;

.field static sHandler:Landroid/os/Handler;

.field static final sUidCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/settings/fuelgauge/BatteryEntry$UidToDetail;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final context:Landroid/content/Context;

.field public defaultPackageName:Ljava/lang/String;

.field public icon:Landroid/graphics/drawable/Drawable;

.field public iconId:I

.field public name:Ljava/lang/String;

.field public final sipper:Lcom/android/internal/os/BatterySipper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settings/fuelgauge/BatteryEntry;->sUidCache:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/settings/fuelgauge/BatteryEntry;->mRequestQueue:Ljava/util/ArrayList;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/fuelgauge/BatteryEntry;->sCurrentLocale:Ljava/util/Locale;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/UserManager;Lcom/android/internal/os/BatterySipper;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p2, Lcom/android/settings/fuelgauge/BatteryEntry;->sHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->context:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    sget-object p2, Lcom/android/settings/fuelgauge/BatteryEntry$1;->$SwitchMap$com$android$internal$os$BatterySipper$DrainType:[I

    iget-object v0, p4, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v0}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    move-result v0

    aget p2, p2, v0

    const v0, 0x7f0801a4

    const v1, 0x7f08034e

    packed-switch p2, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f12012b

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    const p2, 0x7f08033c

    iput p2, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->iconId:I

    goto/16 :goto_1

    :pswitch_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f121213

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    const p2, 0x7f080343

    iput p2, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->iconId:I

    goto/16 :goto_1

    :pswitch_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f121225

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    iput v0, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->iconId:I

    goto/16 :goto_1

    :pswitch_3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f121235

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    iput v0, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->iconId:I

    goto/16 :goto_1

    :pswitch_4
    iget p2, p4, Lcom/android/internal/os/BatterySipper;->userId:I

    invoke-virtual {p3, p2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-static {p1, p3, p2}, Lcom/android/settingslib/Utils;->getUserIcon(Landroid/content/Context;Landroid/os/UserManager;Landroid/content/pm/UserInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->icon:Landroid/graphics/drawable/Drawable;

    invoke-static {p1, p2}, Lcom/android/settingslib/Utils;->getUserLabel(Landroid/content/Context;Landroid/content/pm/UserInfo;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    goto/16 :goto_1

    :cond_0
    const/4 p2, 0x0

    iput-object p2, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f121387

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    goto/16 :goto_1

    :pswitch_5
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    iget-object p3, p4, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    invoke-virtual {p3}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p3

    iput-object p3, p4, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    iget-object p3, p4, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    if-eqz p3, :cond_2

    array-length p3, p3

    const/4 v0, 0x1

    if-eq p3, v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p3, p4, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    invoke-virtual {p3}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x0

    aget-object p3, p3, p4

    iput-object p3, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->defaultPackageName:Ljava/lang/String;

    :try_start_0
    iget-object p3, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->defaultPackageName:Ljava/lang/String;

    invoke-virtual {p2, p3, p4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    const-string p2, "PackageManager failed to retrieve ApplicationInfo for: "

    invoke-static {p2}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline23(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p3, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->defaultPackageName:Ljava/lang/String;

    const-string p4, "BatteryEntry"

    invoke-static {p2, p3, p4}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline45(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->defaultPackageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    goto/16 :goto_1

    :cond_2
    :goto_0
    iget-object p2, p4, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    goto/16 :goto_1

    :pswitch_6
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f121220

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    iput v1, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->iconId:I

    goto :goto_1

    :pswitch_7
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f121232

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    iput v1, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->iconId:I

    goto :goto_1

    :pswitch_8
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f121212

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    const p2, 0x108050d

    iput p2, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->iconId:I

    goto :goto_1

    :pswitch_9
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f12123d

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    const p2, 0x7f08036d

    iput p2, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->iconId:I

    goto :goto_1

    :pswitch_a
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f121226

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    const p2, 0x7f08036b

    iput p2, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->iconId:I

    goto :goto_1

    :pswitch_b
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f121214

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    const p2, 0x7f0801c5

    iput p2, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->iconId:I

    goto :goto_1

    :pswitch_c
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f121221

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    const p2, 0x7f08054b

    iput p2, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->iconId:I

    :goto_1
    iget p2, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->iconId:I

    if-lez p2, :cond_3

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->icon:Landroid/graphics/drawable/Drawable;

    :cond_3
    iget-object p1, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    if-eqz p1, :cond_4

    iget p1, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->iconId:I

    if-nez p1, :cond_5

    :cond_4
    iget-object p1, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-object p1, p1, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/fuelgauge/BatteryEntry;->getQuickNameIconForUid(I)V

    :cond_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static startRequestQueue()V
    .locals 3

    sget-object v0, Lcom/android/settings/fuelgauge/BatteryEntry;->sHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/settings/fuelgauge/BatteryEntry;->mRequestQueue:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/settings/fuelgauge/BatteryEntry;->mRequestQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/android/settings/fuelgauge/BatteryEntry;->mRequestThread:Lcom/android/settings/fuelgauge/BatteryEntry$NameAndIconLoader;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/settings/fuelgauge/BatteryEntry;->mRequestThread:Lcom/android/settings/fuelgauge/BatteryEntry$NameAndIconLoader;

    invoke-virtual {v1}, Lcom/android/settings/fuelgauge/BatteryEntry$NameAndIconLoader;->abort()V

    :cond_0
    new-instance v1, Lcom/android/settings/fuelgauge/BatteryEntry$NameAndIconLoader;

    invoke-direct {v1}, Lcom/android/settings/fuelgauge/BatteryEntry$NameAndIconLoader;-><init>()V

    sput-object v1, Lcom/android/settings/fuelgauge/BatteryEntry;->mRequestThread:Lcom/android/settings/fuelgauge/BatteryEntry$NameAndIconLoader;

    sget-object v1, Lcom/android/settings/fuelgauge/BatteryEntry;->mRequestThread:Lcom/android/settings/fuelgauge/BatteryEntry$NameAndIconLoader;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setPriority(I)V

    sget-object v1, Lcom/android/settings/fuelgauge/BatteryEntry;->mRequestThread:Lcom/android/settings/fuelgauge/BatteryEntry$NameAndIconLoader;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    sget-object v1, Lcom/android/settings/fuelgauge/BatteryEntry;->mRequestQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    :goto_0
    return-void
.end method

.method public static stopRequestQueue()V
    .locals 2

    sget-object v0, Lcom/android/settings/fuelgauge/BatteryEntry;->mRequestQueue:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/settings/fuelgauge/BatteryEntry;->mRequestThread:Lcom/android/settings/fuelgauge/BatteryEntry$NameAndIconLoader;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/settings/fuelgauge/BatteryEntry;->mRequestThread:Lcom/android/settings/fuelgauge/BatteryEntry$NameAndIconLoader;

    invoke-virtual {v1}, Lcom/android/settings/fuelgauge/BatteryEntry$NameAndIconLoader;->abort()V

    const/4 v1, 0x0

    sput-object v1, Lcom/android/settings/fuelgauge/BatteryEntry;->mRequestThread:Lcom/android/settings/fuelgauge/BatteryEntry$NameAndIconLoader;

    sput-object v1, Lcom/android/settings/fuelgauge/BatteryEntry;->sHandler:Landroid/os/Handler;

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method getQuickNameIconForUid(I)V
    .locals 4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    sget-object v1, Lcom/android/settings/fuelgauge/BatteryEntry;->sCurrentLocale:Ljava/util/Locale;

    if-eq v1, v0, :cond_0

    sget-object v1, Lcom/android/settings/fuelgauge/BatteryEntry;->sUidCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    sput-object v0, Lcom/android/settings/fuelgauge/BatteryEntry;->sCurrentLocale:Ljava/util/Locale;

    :cond_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/settings/fuelgauge/BatteryEntry;->sUidCache:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const v3, 0x7f06032f

    if-eqz v2, :cond_2

    sget-object v2, Lcom/android/settings/fuelgauge/BatteryEntry;->sUidCache:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/fuelgauge/BatteryEntry$UidToDetail;

    iget-object v2, v1, Lcom/android/settings/fuelgauge/BatteryEntry$UidToDetail;->packageName:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->defaultPackageName:Ljava/lang/String;

    iget-object v2, v1, Lcom/android/settings/fuelgauge/BatteryEntry$UidToDetail;->name:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    iget-object v1, v1, Lcom/android/settings/fuelgauge/BatteryEntry$UidToDetail;->icon:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->context:Landroid/content/Context;

    invoke-virtual {p0, v3}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1212a4

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    const-string v0, "mediaserver"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1212a5

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    const-string v0, "dex2oat"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1212a2

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    :cond_5
    :goto_0
    const p1, 0x7f080327

    iput p1, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->iconId:I

    iget-object p1, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->context:Landroid/content/Context;

    iget v0, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->iconId:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->icon:Landroid/graphics/drawable/Drawable;

    iget-object p1, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->icon:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->context:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :cond_6
    sget-object p1, Lcom/android/settings/fuelgauge/BatteryEntry;->sHandler:Landroid/os/Handler;

    if-eqz p1, :cond_7

    sget-object p1, Lcom/android/settings/fuelgauge/BatteryEntry;->mRequestQueue:Ljava/util/ArrayList;

    monitor-enter p1

    :try_start_0
    sget-object v0, Lcom/android/settings/fuelgauge/BatteryEntry;->mRequestQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit p1

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_7
    :goto_1
    return-void
.end method
