.class public Lcom/android/settings/applications/manageapplications/AppFilterRegistry;
.super Ljava/lang/Object;
.source "AppFilterRegistry.java"


# static fields
.field private static sRegistry:Lcom/android/settings/applications/manageapplications/AppFilterRegistry;


# instance fields
.field private final mFilters:[Lcom/android/settings/applications/manageapplications/AppFilterItem;


# direct methods
.method private constructor <init>()V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1a

    new-array v0, v0, [Lcom/android/settings/applications/manageapplications/AppFilterItem;

    iput-object v0, p0, Lcom/android/settings/applications/manageapplications/AppFilterRegistry;->mFilters:[Lcom/android/settings/applications/manageapplications/AppFilterItem;

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/AppFilterRegistry;->mFilters:[Lcom/android/settings/applications/manageapplications/AppFilterItem;

    new-instance v1, Lcom/android/settings/applications/manageapplications/AppFilterItem;

    new-instance v2, Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;

    sget-object v3, Lcom/android/settings/applications/AppStatePowerBridge;->FILTER_POWER_WHITELISTED:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    sget-object v4, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_ALL_ENABLED:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    invoke-direct {v2, v3, v4}, Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;Lcom/android/settingslib/applications/ApplicationsState$AppFilter;)V

    const/4 v3, 0x0

    const v4, 0x7f120846

    invoke-direct {v1, v2, v3, v4}, Lcom/android/settings/applications/manageapplications/AppFilterItem;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;II)V

    aput-object v1, v0, v3

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/AppFilterRegistry;->mFilters:[Lcom/android/settings/applications/manageapplications/AppFilterItem;

    new-instance v1, Lcom/android/settings/applications/manageapplications/AppFilterItem;

    new-instance v2, Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;

    sget-object v3, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_WITHOUT_DISABLED_UNTIL_USED:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    sget-object v4, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_ALL_ENABLED:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    invoke-direct {v2, v3, v4}, Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;Lcom/android/settingslib/applications/ApplicationsState$AppFilter;)V

    const/4 v3, 0x1

    const v4, 0x7f120727

    invoke-direct {v1, v2, v3, v4}, Lcom/android/settings/applications/manageapplications/AppFilterItem;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;II)V

    aput-object v1, v0, v3

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/AppFilterRegistry;->mFilters:[Lcom/android/settings/applications/manageapplications/AppFilterItem;

    new-instance v1, Lcom/android/settings/applications/manageapplications/AppFilterItem;

    sget-object v2, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_EVERYTHING:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3, v4}, Lcom/android/settings/applications/manageapplications/AppFilterItem;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;II)V

    aput-object v1, v0, v3

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/AppFilterRegistry;->mFilters:[Lcom/android/settings/applications/manageapplications/AppFilterItem;

    new-instance v1, Lcom/android/settings/applications/manageapplications/AppFilterItem;

    sget-object v2, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_ALL_ENABLED:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    const/4 v3, 0x3

    const v5, 0x7f12072e

    invoke-direct {v1, v2, v3, v5}, Lcom/android/settings/applications/manageapplications/AppFilterItem;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;II)V

    aput-object v1, v0, v3

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/AppFilterRegistry;->mFilters:[Lcom/android/settings/applications/manageapplications/AppFilterItem;

    new-instance v1, Lcom/android/settings/applications/manageapplications/AppFilterItem;

    sget-object v2, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_DISABLED:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    const/4 v3, 0x5

    const v5, 0x7f120729

    invoke-direct {v1, v2, v3, v5}, Lcom/android/settings/applications/manageapplications/AppFilterItem;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;II)V

    aput-object v1, v0, v3

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/AppFilterRegistry;->mFilters:[Lcom/android/settings/applications/manageapplications/AppFilterItem;

    new-instance v1, Lcom/android/settings/applications/manageapplications/AppFilterItem;

    sget-object v2, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_INSTANT:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    const/4 v3, 0x4

    const v5, 0x7f120730

    invoke-direct {v1, v2, v3, v5}, Lcom/android/settings/applications/manageapplications/AppFilterItem;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;II)V

    aput-object v1, v0, v3

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/AppFilterRegistry;->mFilters:[Lcom/android/settings/applications/manageapplications/AppFilterItem;

    new-instance v1, Lcom/android/settings/applications/manageapplications/AppFilterItem;

    sget-object v2, Lcom/android/settings/applications/AppStateNotificationBridge;->FILTER_APP_NOTIFICATION_RECENCY:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    const/4 v3, 0x6

    const v5, 0x7f121541

    invoke-direct {v1, v2, v3, v5}, Lcom/android/settings/applications/manageapplications/AppFilterItem;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;II)V

    aput-object v1, v0, v3

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/AppFilterRegistry;->mFilters:[Lcom/android/settings/applications/manageapplications/AppFilterItem;

    new-instance v1, Lcom/android/settings/applications/manageapplications/AppFilterItem;

    sget-object v2, Lcom/android/settings/applications/AppStateNotificationBridge;->FILTER_APP_NOTIFICATION_FREQUENCY:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    const/4 v3, 0x7

    const v5, 0x7f121540

    invoke-direct {v1, v2, v3, v5}, Lcom/android/settings/applications/manageapplications/AppFilterItem;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;II)V

    aput-object v1, v0, v3

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/AppFilterRegistry;->mFilters:[Lcom/android/settings/applications/manageapplications/AppFilterItem;

    new-instance v1, Lcom/android/settings/applications/manageapplications/AppFilterItem;

    sget-object v2, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_PERSONAL:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    const/16 v3, 0x8

    const v5, 0x7f120738

    invoke-direct {v1, v2, v3, v5}, Lcom/android/settings/applications/manageapplications/AppFilterItem;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;II)V

    aput-object v1, v0, v3

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/AppFilterRegistry;->mFilters:[Lcom/android/settings/applications/manageapplications/AppFilterItem;

    new-instance v1, Lcom/android/settings/applications/manageapplications/AppFilterItem;

    sget-object v2, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_WORK:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    const/16 v3, 0x9

    const v5, 0x7f120739

    invoke-direct {v1, v2, v3, v5}, Lcom/android/settings/applications/manageapplications/AppFilterItem;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;II)V

    aput-object v1, v0, v3

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/AppFilterRegistry;->mFilters:[Lcom/android/settings/applications/manageapplications/AppFilterItem;

    new-instance v1, Lcom/android/settings/applications/manageapplications/AppFilterItem;

    sget-object v2, Lcom/android/settings/applications/AppStateUsageBridge;->FILTER_APP_USAGE:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3, v4}, Lcom/android/settings/applications/manageapplications/AppFilterItem;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;II)V

    aput-object v1, v0, v3

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/AppFilterRegistry;->mFilters:[Lcom/android/settings/applications/manageapplications/AppFilterItem;

    new-instance v1, Lcom/android/settings/applications/manageapplications/AppFilterItem;

    sget-object v2, Lcom/android/settings/applications/AppStateOverlayBridge;->FILTER_SYSTEM_ALERT_WINDOW:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    const/16 v3, 0xb

    const v5, 0x7f120737

    invoke-direct {v1, v2, v3, v5}, Lcom/android/settings/applications/manageapplications/AppFilterItem;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;II)V

    aput-object v1, v0, v3

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/AppFilterRegistry;->mFilters:[Lcom/android/settings/applications/manageapplications/AppFilterItem;

    new-instance v1, Lcom/android/settings/applications/manageapplications/AppFilterItem;

    sget-object v2, Lcom/android/settings/applications/AppStateWriteSettingsBridge;->FILTER_WRITE_SETTINGS:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    const v3, 0x7f12073a

    const/16 v5, 0xc

    invoke-direct {v1, v2, v5, v3}, Lcom/android/settings/applications/manageapplications/AppFilterItem;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;II)V

    aput-object v1, v0, v5

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/AppFilterRegistry;->mFilters:[Lcom/android/settings/applications/manageapplications/AppFilterItem;

    new-instance v1, Lcom/android/settings/applications/manageapplications/AppFilterItem;

    sget-object v2, Lcom/android/settings/applications/AppStateInstallAppsBridge;->FILTER_APP_SOURCES:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    const/16 v5, 0xd

    const v6, 0x7f12072f

    invoke-direct {v1, v2, v5, v6}, Lcom/android/settings/applications/manageapplications/AppFilterItem;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;II)V

    const/16 v2, 0xd

    aput-object v1, v0, v2

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/AppFilterRegistry;->mFilters:[Lcom/android/settings/applications/manageapplications/AppFilterItem;

    new-instance v1, Lcom/android/settings/applications/manageapplications/AppFilterItem;

    sget-object v2, Lcom/android/settings/wifi/AppStateChangeWifiStateBridge;->FILTER_CHANGE_WIFI_STATE:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    const/16 v5, 0xf

    invoke-direct {v1, v2, v5, v3}, Lcom/android/settings/applications/manageapplications/AppFilterItem;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;II)V

    const/16 v2, 0xf

    aput-object v1, v0, v2

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/AppFilterRegistry;->mFilters:[Lcom/android/settings/applications/manageapplications/AppFilterItem;

    new-instance v1, Lcom/android/settings/applications/manageapplications/AppFilterItem;

    sget-object v2, Lcom/android/settings/applications/AppStateNotificationBridge;->FILTER_APP_NOTIFICATION_BLOCKED:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    const/16 v3, 0x10

    const v5, 0x7f120732

    invoke-direct {v1, v2, v3, v5}, Lcom/android/settings/applications/manageapplications/AppFilterItem;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;II)V

    const/16 v2, 0x10

    aput-object v1, v0, v2

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/AppFilterRegistry;->mFilters:[Lcom/android/settings/applications/manageapplications/AppFilterItem;

    new-instance v1, Lcom/android/settings/applications/manageapplications/AppFilterItem;

    sget-object v2, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionBridge;->FILTER_APP_ALL_SCREENS:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    const/16 v3, 0x11

    invoke-direct {v1, v2, v3, v4}, Lcom/android/settings/applications/manageapplications/AppFilterItem;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;II)V

    const/16 v2, 0x11

    aput-object v1, v0, v2

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/AppFilterRegistry;->mFilters:[Lcom/android/settings/applications/manageapplications/AppFilterItem;

    new-instance v1, Lcom/android/settings/applications/manageapplications/AppFilterItem;

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportScreenCutting()Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionBridge;->FILTER_APP_FULL_SCREEN:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionBridge;->FILTER_APP_DEFAULT:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    :goto_0
    const/16 v3, 0x12

    const v5, 0x7f120c54

    invoke-direct {v1, v2, v3, v5}, Lcom/android/settings/applications/manageapplications/AppFilterItem;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;II)V

    const/16 v2, 0x12

    aput-object v1, v0, v2

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/AppFilterRegistry;->mFilters:[Lcom/android/settings/applications/manageapplications/AppFilterItem;

    const/16 v1, 0x13

    new-instance v2, Lcom/android/settings/applications/manageapplications/AppFilterItem;

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportScreenCutting()Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionBridge;->FILTER_APP_ORIGINAL_SIZE:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    goto :goto_1

    :cond_1
    sget-object v3, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionBridge;->FILTER_APP_FULL_SCREEN:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    :goto_1
    const/16 v5, 0x13

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportScreenCutting()Z

    move-result v6

    if-nez v6, :cond_2

    const v6, 0x7f120c53

    goto :goto_2

    :cond_2
    const v6, 0x7f1205d2

    :goto_2
    invoke-direct {v2, v3, v5, v6}, Lcom/android/settings/applications/manageapplications/AppFilterItem;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;II)V

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/AppFilterRegistry;->mFilters:[Lcom/android/settings/applications/manageapplications/AppFilterItem;

    const/16 v1, 0x14

    new-instance v2, Lcom/android/settings/applications/manageapplications/AppFilterItem;

    sget-object v3, Lcom/oneplus/settings/backgroundoptimize/AppBgOptimizeBridge;->FILTER_APP_BG_All:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    const/16 v5, 0x14

    invoke-direct {v2, v3, v5, v4}, Lcom/android/settings/applications/manageapplications/AppFilterItem;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;II)V

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/AppFilterRegistry;->mFilters:[Lcom/android/settings/applications/manageapplications/AppFilterItem;

    const/16 v1, 0x15

    new-instance v2, Lcom/android/settings/applications/manageapplications/AppFilterItem;

    sget-object v3, Lcom/oneplus/settings/backgroundoptimize/AppBgOptimizeBridge;->FILTER_APP_BG_NOT_OPTIMIZE:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    const/16 v5, 0x15

    const v6, 0x7f120b7f

    invoke-direct {v2, v3, v5, v6}, Lcom/android/settings/applications/manageapplications/AppFilterItem;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;II)V

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/AppFilterRegistry;->mFilters:[Lcom/android/settings/applications/manageapplications/AppFilterItem;

    const/16 v1, 0x16

    new-instance v2, Lcom/android/settings/applications/manageapplications/AppFilterItem;

    sget-object v3, Lcom/oneplus/settings/better/ReadingModeEffectSelectBridge;->FILTER_ALL:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    const/16 v5, 0x16

    invoke-direct {v2, v3, v5, v4}, Lcom/android/settings/applications/manageapplications/AppFilterItem;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;II)V

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/AppFilterRegistry;->mFilters:[Lcom/android/settings/applications/manageapplications/AppFilterItem;

    const/16 v1, 0x17

    new-instance v2, Lcom/android/settings/applications/manageapplications/AppFilterItem;

    sget-object v3, Lcom/oneplus/settings/better/ReadingModeEffectSelectBridge;->FILTER_CHROMATIC:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    const/16 v4, 0x17

    const v5, 0x7f120f65

    invoke-direct {v2, v3, v4, v5}, Lcom/android/settings/applications/manageapplications/AppFilterItem;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;II)V

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/AppFilterRegistry;->mFilters:[Lcom/android/settings/applications/manageapplications/AppFilterItem;

    const/16 v1, 0x18

    new-instance v2, Lcom/android/settings/applications/manageapplications/AppFilterItem;

    sget-object v3, Lcom/oneplus/settings/better/ReadingModeEffectSelectBridge;->FILTER_MONO:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    const/16 v4, 0x18

    const v5, 0x7f120f69

    invoke-direct {v2, v3, v4, v5}, Lcom/android/settings/applications/manageapplications/AppFilterItem;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;II)V

    aput-object v2, v0, v1

    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/AppFilterRegistry;->mFilters:[Lcom/android/settings/applications/manageapplications/AppFilterItem;

    const/16 v0, 0x19

    new-instance v1, Lcom/android/settings/applications/manageapplications/AppFilterItem;

    sget-object v2, Lcom/oneplus/settings/better/ReadingModeEffectSelectBridge;->FILTER_AVAILABLE:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    const/16 v3, 0x19

    const v4, 0x7f120f63

    invoke-direct {v1, v2, v3, v4}, Lcom/android/settings/applications/manageapplications/AppFilterItem;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;II)V

    aput-object v1, p0, v0

    return-void
.end method

.method public static getInstance()Lcom/android/settings/applications/manageapplications/AppFilterRegistry;
    .locals 1

    sget-object v0, Lcom/android/settings/applications/manageapplications/AppFilterRegistry;->sRegistry:Lcom/android/settings/applications/manageapplications/AppFilterRegistry;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/settings/applications/manageapplications/AppFilterRegistry;

    invoke-direct {v0}, Lcom/android/settings/applications/manageapplications/AppFilterRegistry;-><init>()V

    sput-object v0, Lcom/android/settings/applications/manageapplications/AppFilterRegistry;->sRegistry:Lcom/android/settings/applications/manageapplications/AppFilterRegistry;

    :cond_0
    sget-object v0, Lcom/android/settings/applications/manageapplications/AppFilterRegistry;->sRegistry:Lcom/android/settings/applications/manageapplications/AppFilterRegistry;

    return-object v0
.end method


# virtual methods
.method public get(I)Lcom/android/settings/applications/manageapplications/AppFilterItem;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/AppFilterRegistry;->mFilters:[Lcom/android/settings/applications/manageapplications/AppFilterItem;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public getDefaultFilterType(I)I
    .locals 0

    const/4 p0, 0x1

    if-eq p1, p0, :cond_1

    const/16 p0, 0xd

    if-eq p1, p0, :cond_0

    packed-switch p1, :pswitch_data_0

    const/4 p0, 0x2

    :pswitch_0
    return p0

    :pswitch_1
    const/16 p0, 0xc

    return p0

    :pswitch_2
    const/16 p0, 0xb

    return p0

    :pswitch_3
    const/4 p0, 0x0

    return p0

    :pswitch_4
    const/16 p0, 0xa

    return p0

    :cond_0
    const/16 p0, 0xf

    return p0

    :cond_1
    const/4 p0, 0x6

    return p0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
