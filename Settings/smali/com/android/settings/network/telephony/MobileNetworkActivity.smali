.class public Lcom/android/settings/network/telephony/MobileNetworkActivity;
.super Lcom/android/settings/core/SettingsBaseActivity;
.source "MobileNetworkActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/network/telephony/MobileNetworkActivity$PhoneChangeReceiver;
    }
.end annotation


# static fields
.field static final MOBILE_SETTINGS_TAG:Ljava/lang/String; = "mobile_settings:"

.field static final SUB_ID_NULL:I = -0x80000000


# instance fields
.field mCurSubscriptionId:I

.field private final mOnSubscriptionsChangeListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field private mPhoneChangeReceiver:Lcom/android/settings/network/telephony/MobileNetworkActivity$PhoneChangeReceiver;

.field mSubscriptionInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field mSubscriptionManager:Landroid/telephony/SubscriptionManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/core/SettingsBaseActivity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/network/telephony/MobileNetworkActivity;->mSubscriptionInfos:Ljava/util/List;

    new-instance v0, Lcom/android/settings/network/telephony/MobileNetworkActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings/network/telephony/MobileNetworkActivity$1;-><init>(Lcom/android/settings/network/telephony/MobileNetworkActivity;)V

    iput-object v0, p0, Lcom/android/settings/network/telephony/MobileNetworkActivity;->mOnSubscriptionsChangeListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    return-void
.end method


# virtual methods
.method getSubscription()Landroid/telephony/SubscriptionInfo;
    .locals 4

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    const/high16 v1, -0x80000000

    const-string v2, "android.provider.extra.SUB_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v1, :cond_1

    invoke-static {p0}, Lcom/android/settings/network/SubscriptionUtil;->getAvailableSubscriptions(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    if-ne v3, v0, :cond_0

    return-object v2

    :cond_1
    iget-object v0, p0, Lcom/android/settings/network/telephony/MobileNetworkActivity;->mSubscriptionInfos:Ljava/util/List;

    invoke-static {v0}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x0

    return-object p0

    :cond_2
    iget-object p0, p0, Lcom/android/settings/network/telephony/MobileNetworkActivity;->mSubscriptionInfos:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/SubscriptionInfo;

    return-object p0
.end method

.method getSubscriptionId()I
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/MobileNetworkActivity;->getSubscription()Landroid/telephony/SubscriptionInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public synthetic lambda$onCreate$0$MobileNetworkActivity()V
    .locals 3

    iget v0, p0, Lcom/android/settings/network/telephony/MobileNetworkActivity;->mCurSubscriptionId:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    new-instance v0, Lcom/android/settings/network/telephony/MobileNetworkSettings;

    invoke-direct {v0}, Lcom/android/settings/network/telephony/MobileNetworkSettings;-><init>()V

    iget v1, p0, Lcom/android/settings/network/telephony/MobileNetworkActivity;->mCurSubscriptionId:I

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/settings/network/telephony/MobileNetworkActivity;->switchFragment(Landroidx/fragment/app/Fragment;IZ)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$updateBottomNavigationView$1$MobileNetworkActivity(Landroid/view/MenuItem;)Z
    .locals 1

    new-instance v0, Lcom/android/settings/network/telephony/MobileNetworkSettings;

    invoke-direct {v0}, Lcom/android/settings/network/telephony/MobileNetworkSettings;-><init>()V

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/android/settings/network/telephony/MobileNetworkActivity;->switchFragment(Landroidx/fragment/app/Fragment;I)V

    const/4 p0, 0x1

    return p0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/core/SettingsBaseActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "settings_network_and_internet_v2"

    invoke-static {p0, v0}, Lcom/android/settings/development/featureflags/FeatureFlagPersistent;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0d0111

    invoke-virtual {p0, v0}, Lcom/android/settings/core/SettingsBaseActivity;->setContentView(I)V

    goto :goto_0

    :cond_0
    const v0, 0x7f0d0110

    invoke-virtual {p0, v0}, Lcom/android/settings/core/SettingsBaseActivity;->setContentView(I)V

    :goto_0
    const v0, 0x7f0a040c

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Toolbar;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setActionBar(Landroid/widget/Toolbar;)V

    new-instance v0, Lcom/android/settings/network/telephony/MobileNetworkActivity$PhoneChangeReceiver;

    new-instance v1, Lcom/android/settings/network/telephony/-$$Lambda$MobileNetworkActivity$K_h5J-N997w0XhBUpaO4I9VLeB0;

    invoke-direct {v1, p0}, Lcom/android/settings/network/telephony/-$$Lambda$MobileNetworkActivity$K_h5J-N997w0XhBUpaO4I9VLeB0;-><init>(Lcom/android/settings/network/telephony/MobileNetworkActivity;)V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/network/telephony/MobileNetworkActivity$PhoneChangeReceiver;-><init>(Landroid/content/Context;Lcom/android/settings/network/telephony/MobileNetworkActivity$PhoneChangeReceiver$Client;)V

    iput-object v0, p0, Lcom/android/settings/network/telephony/MobileNetworkActivity;->mPhoneChangeReceiver:Lcom/android/settings/network/telephony/MobileNetworkActivity$PhoneChangeReceiver;

    const-class v0, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    iput-object v0, p0, Lcom/android/settings/network/telephony/MobileNetworkActivity;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v0, p0, Lcom/android/settings/network/telephony/MobileNetworkActivity;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList(Z)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/telephony/MobileNetworkActivity;->mSubscriptionInfos:Ljava/util/List;

    const/high16 v0, -0x80000000

    if-eqz p1, :cond_1

    const-string v2, "android.provider.extra.SUB_ID"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    :cond_1
    iput v0, p0, Lcom/android/settings/network/telephony/MobileNetworkActivity;->mCurSubscriptionId:I

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/MobileNetworkActivity;->updateSubscriptions(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/MobileNetworkActivity;->saveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onStart()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onStart()V

    iget-object v0, p0, Lcom/android/settings/network/telephony/MobileNetworkActivity;->mPhoneChangeReceiver:Lcom/android/settings/network/telephony/MobileNetworkActivity$PhoneChangeReceiver;

    invoke-virtual {v0}, Lcom/android/settings/network/telephony/MobileNetworkActivity$PhoneChangeReceiver;->register()V

    iget-object v0, p0, Lcom/android/settings/network/telephony/MobileNetworkActivity;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object p0, p0, Lcom/android/settings/network/telephony/MobileNetworkActivity;->mOnSubscriptionsChangeListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v0, p0}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    return-void
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onStop()V

    iget-object v0, p0, Lcom/android/settings/network/telephony/MobileNetworkActivity;->mPhoneChangeReceiver:Lcom/android/settings/network/telephony/MobileNetworkActivity$PhoneChangeReceiver;

    invoke-virtual {v0}, Lcom/android/settings/network/telephony/MobileNetworkActivity$PhoneChangeReceiver;->unregister()V

    iget-object v0, p0, Lcom/android/settings/network/telephony/MobileNetworkActivity;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object p0, p0, Lcom/android/settings/network/telephony/MobileNetworkActivity;->mOnSubscriptionsChangeListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v0, p0}, Landroid/telephony/SubscriptionManager;->removeOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    return-void
.end method

.method saveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    iget p0, p0, Lcom/android/settings/network/telephony/MobileNetworkActivity;->mCurSubscriptionId:I

    const-string v0, "android.provider.extra.SUB_ID"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method switchFragment(Landroidx/fragment/app/Fragment;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/settings/network/telephony/MobileNetworkActivity;->switchFragment(Landroidx/fragment/app/Fragment;IZ)V

    return-void
.end method

.method switchFragment(Landroidx/fragment/app/Fragment;IZ)V
    .locals 3

    iget v0, p0, Lcom/android/settings/network/telephony/MobileNetworkActivity;->mCurSubscriptionId:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    if-ne p2, v0, :cond_0

    if-nez p3, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "android.provider.extra.SUB_ID"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    const v0, 0x7f0a03dd

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mobile_settings:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, p1, v1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    invoke-virtual {p3}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    iput p2, p0, Lcom/android/settings/network/telephony/MobileNetworkActivity;->mCurSubscriptionId:I

    return-void
.end method

.method updateBottomNavigationView()V
    .locals 7

    const v0, 0x7f0a00f1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    iget-object v1, p0, Lcom/android/settings/network/telephony/MobileNetworkActivity;->mSubscriptionInfos:Ljava/util/List;

    invoke-static {v1}, Lcom/android/internal/util/CollectionUtils;->size(Ljava/util/Collection;)I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_0

    const/16 p0, 0x8

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/Menu;->clear()V

    iget-object v2, p0, Lcom/android/settings/network/telephony/MobileNetworkActivity;->mSubscriptionInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    iget-object v5, p0, Lcom/android/settings/network/telephony/MobileNetworkActivity;->mSubscriptionInfos:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v6

    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v1, v3, v6, v4, v5}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v5

    const v6, 0x7f08035d

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/android/settings/network/telephony/-$$Lambda$MobileNetworkActivity$8_W3xuS52S5lS9sDDDvURuS61Zo;

    invoke-direct {v1, p0}, Lcom/android/settings/network/telephony/-$$Lambda$MobileNetworkActivity$8_W3xuS52S5lS9sDDDvURuS61Zo;-><init>(Lcom/android/settings/network/telephony/MobileNetworkActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setOnNavigationItemSelectedListener(Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener;)V

    :goto_1
    return-void
.end method

.method updateSubscriptions(Landroid/os/Bundle;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/MobileNetworkActivity;->getSubscription()Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/telephony/MobileNetworkActivity;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList(Z)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/telephony/MobileNetworkActivity;->mSubscriptionInfos:Ljava/util/List;

    const-string v0, "settings_network_and_internet_v2"

    invoke-static {p0, v0}, Lcom/android/settings/development/featureflags/FeatureFlagPersistent;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/MobileNetworkActivity;->updateBottomNavigationView()V

    :cond_1
    if-nez p1, :cond_2

    new-instance p1, Lcom/android/settings/network/telephony/MobileNetworkSettings;

    invoke-direct {p1}, Lcom/android/settings/network/telephony/MobileNetworkSettings;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/MobileNetworkActivity;->getSubscriptionId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/network/telephony/MobileNetworkActivity;->switchFragment(Landroidx/fragment/app/Fragment;I)V

    :cond_2
    return-void
.end method
