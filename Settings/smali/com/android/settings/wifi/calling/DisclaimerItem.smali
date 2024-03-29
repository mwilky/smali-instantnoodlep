.class public abstract Lcom/android/settings/wifi/calling/DisclaimerItem;
.super Ljava/lang/Object;
.source "DisclaimerItem.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation


# instance fields
.field private final mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

.field protected final mContext:Landroid/content/Context;

.field protected final mSubId:I


# direct methods
.method constructor <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/wifi/calling/DisclaimerItem;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/android/settings/wifi/calling/DisclaimerItem;->mSubId:I

    iget-object p1, p0, Lcom/android/settings/wifi/calling/DisclaimerItem;->mContext:Landroid/content/Context;

    const-class p2, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/CarrierConfigManager;

    iput-object p1, p0, Lcom/android/settings/wifi/calling/DisclaimerItem;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    return-void
.end method


# virtual methods
.method protected getCarrierConfig()Landroid/os/PersistableBundle;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/calling/DisclaimerItem;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    iget p0, p0, Lcom/android/settings/wifi/calling/DisclaimerItem;->mSubId:I

    invoke-virtual {v0, p0}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    invoke-static {}, Landroid/telephony/CarrierConfigManager;->getDefaultConfig()Landroid/os/PersistableBundle;

    move-result-object p0

    return-object p0
.end method

.method protected abstract getMessageId()I
.end method

.method protected abstract getName()Ljava/lang/String;
.end method

.method protected abstract getPrefKey()Ljava/lang/String;
.end method

.method protected abstract getTitleId()I
.end method

.method protected logd(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/DisclaimerItem;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "["

    invoke-static {v1}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline23(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget p0, p0, Lcom/android/settings/wifi/calling/DisclaimerItem;->mSubId:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "] "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method onAgreed()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/DisclaimerItem;->getPrefKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/calling/DisclaimerItem;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const-string v3, "wfc_disclaimer_prefs"

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-static {v0}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline23(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p0, p0, Lcom/android/settings/wifi/calling/DisclaimerItem;->mSubId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    invoke-interface {v1, p0, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method shouldShow()Z
    .locals 4

    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/DisclaimerItem;->getPrefKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/calling/DisclaimerItem;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const-string v3, "wfc_disclaimer_prefs"

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-static {v0}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline23(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/android/settings/wifi/calling/DisclaimerItem;->mSubId:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "shouldShow: false due to a user has already agreed."

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/calling/DisclaimerItem;->logd(Ljava/lang/String;)V

    return v2

    :cond_0
    const-string v0, "shouldShow: true"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/calling/DisclaimerItem;->logd(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method
