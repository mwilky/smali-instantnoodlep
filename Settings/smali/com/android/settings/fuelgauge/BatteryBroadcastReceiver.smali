.class public Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BatteryBroadcastReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver$OnBatteryChangedListener;
    }
.end annotation


# instance fields
.field mBatteryLevel:Ljava/lang/String;

.field private mBatteryListener:Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver$OnBatteryChangedListener;

.field mBatteryStatus:Ljava/lang/String;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver;->mContext:Landroid/content/Context;

    return-void
.end method

.method private updateBatteryStatus(Landroid/content/Intent;Z)V
    .locals 2

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver;->mBatteryListener:Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver$OnBatteryChangedListener;

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p1}, Lcom/android/settings/Utils;->getBatteryPercentage(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/android/settingslib/Utils;->getBatteryStatus(Landroid/content/res/Resources;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver;->mBatteryListener:Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver$OnBatteryChangedListener;

    const/4 v1, 0x0

    invoke-interface {p2, v1}, Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver$OnBatteryChangedListener;->onBatteryChanged(I)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver;->mBatteryLevel:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver;->mBatteryListener:Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver$OnBatteryChangedListener;

    const/4 v1, 0x1

    invoke-interface {p2, v1}, Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver$OnBatteryChangedListener;->onBatteryChanged(I)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver;->mBatteryStatus:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver;->mBatteryListener:Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver$OnBatteryChangedListener;

    const/4 v1, 0x3

    invoke-interface {p2, v1}, Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver$OnBatteryChangedListener;->onBatteryChanged(I)V

    :cond_2
    :goto_0
    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver;->mBatteryLevel:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver;->mBatteryStatus:Ljava/lang/String;

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver;->mBatteryListener:Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver$OnBatteryChangedListener;

    const/4 p2, 0x2

    invoke-interface {p1, p2}, Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver$OnBatteryChangedListener;->onBatteryChanged(I)V

    :cond_4
    :goto_1
    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/homepage/contextualcards/slices/BatteryFixSlice;->updateBatteryTipAvailabilityCache(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver;->updateBatteryStatus(Landroid/content/Intent;Z)V

    return-void
.end method

.method public register()V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver;->updateBatteryStatus(Landroid/content/Intent;Z)V

    return-void
.end method

.method public setBatteryChangedListener(Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver$OnBatteryChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver;->mBatteryListener:Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver$OnBatteryChangedListener;

    return-void
.end method

.method public unRegister()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
