.class Lcom/oneplus/server/theme/rtg;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/server/theme/ssp;->xw()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/server/theme/ssp;


# direct methods
.method constructor <init>(Lcom/oneplus/server/theme/ssp;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/server/theme/rtg;->this$0:Lcom/oneplus/server/theme/ssp;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "action:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OnePlusThemeController"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.oem.intent.action.parallel_overlay_ready"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x2

    const-string v3, "themeModeStatus:"

    const-string v4, "oneplus_basiccolor_white"

    const/4 v5, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    iget-object p1, p0, Lcom/oneplus/server/theme/rtg;->this$0:Lcom/oneplus/server/theme/ssp;

    invoke-static {p1}, Lcom/oneplus/server/theme/ssp;->zta(Lcom/oneplus/server/theme/ssp;)I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x3e7

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/oneplus/server/theme/rtg;->this$0:Lcom/oneplus/server/theme/ssp;

    invoke-virtual {p1, v4, v0}, Lcom/oneplus/server/theme/ssp;->kth(Ljava/lang/String;I)V

    goto :goto_1

    :cond_0
    if-ne p1, v5, :cond_1

    :try_start_0
    iget-object p1, p0, Lcom/oneplus/server/theme/rtg;->this$0:Lcom/oneplus/server/theme/ssp;

    invoke-static {p1}, Lcom/oneplus/server/theme/ssp;->you(Lcom/oneplus/server/theme/ssp;)Landroid/app/IUiModeManager;

    move-result-object p1

    invoke-interface {p1, v2}, Landroid/app/IUiModeManager;->setNightMode(I)V

    iget-object p1, p0, Lcom/oneplus/server/theme/rtg;->this$0:Lcom/oneplus/server/theme/ssp;

    const-string v6, "oneplus_basiccolor_black"

    invoke-virtual {p1, v6, v0}, Lcom/oneplus/server/theme/ssp;->kth(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, "Strange theme status"

    :goto_0
    invoke-static {v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.settings.oneplus_theme_enable"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v0, "category_map"

    if-eqz p1, :cond_3

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget-object v8, p0, Lcom/oneplus/server/theme/rtg;->this$0:Lcom/oneplus/server/theme/ssp;

    invoke-virtual {v8, v7, v6}, Lcom/oneplus/server/theme/ssp;->processEnableThemeCategory(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v6, "android.settings.oneplus_theme_disable"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v7, p0, Lcom/oneplus/server/theme/rtg;->this$0:Lcom/oneplus/server/theme/ssp;

    invoke-virtual {v7, v6, v0}, Lcom/oneplus/server/theme/ssp;->processDisableThemeCategory(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.settings.oneplus_theme_enable_single"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v0, "secondarycategory_single"

    const-string v6, "category_single"

    if-eqz p1, :cond_5

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/oneplus/server/theme/rtg;->this$0:Lcom/oneplus/server/theme/ssp;

    invoke-virtual {v8, p1, v7}, Lcom/oneplus/server/theme/ssp;->processEnableThemeCategory(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v7, "android.settings.oneplus_theme_disable_single"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v6, p0, Lcom/oneplus/server/theme/rtg;->this$0:Lcom/oneplus/server/theme/ssp;

    invoke-virtual {v6, p1, v0}, Lcom/oneplus/server/theme/ssp;->processDisableThemeCategory(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.USER_ADDED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.USER_BACKGROUND"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    goto/16 :goto_6

    :cond_7
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_4

    :cond_8
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "oneplus.change_white_theme_again"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    :try_start_1
    iget-object p0, p0, Lcom/oneplus/server/theme/rtg;->this$0:Lcom/oneplus/server/theme/ssp;

    invoke-static {p0}, Lcom/oneplus/server/theme/ssp;->you(Lcom/oneplus/server/theme/ssp;)Landroid/app/IUiModeManager;

    move-result-object p0

    invoke-interface {p0, v5}, Landroid/app/IUiModeManager;->setNightMode(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_7

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Change white theme again. Exception:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :cond_9
    :goto_4
    invoke-virtual {p2}, Landroid/content/Intent;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    const-string v0, "com.oem.intent.action.PKG_ADDED_UPDATED"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.oneplus.coreservice"

    const-string v3, "com.oneplus.coreservice.OpThemesApkHandlerReceiver"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/oneplus/server/theme/rtg;->this$0:Lcom/oneplus/server/theme/ssp;

    invoke-static {v0}, Lcom/oneplus/server/theme/ssp;->sis(Lcom/oneplus/server/theme/ssp;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :try_start_2
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_a

    const-string p2, "net.oneplus.launcher"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_a

    const-string p0, "Don\'t enable launcher theme too many time."

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_a
    iget-object p2, p0, Lcom/oneplus/server/theme/rtg;->this$0:Lcom/oneplus/server/theme/ssp;

    invoke-static {p2}, Lcom/oneplus/server/theme/ssp;->zta(Lcom/oneplus/server/theme/ssp;)I

    move-result p2

    if-ne p2, v5, :cond_b

    if-eqz p1, :cond_b

    const-string v0, "black.overlay"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object p0, p0, Lcom/oneplus/server/theme/rtg;->this$0:Lcom/oneplus/server/theme/ssp;

    invoke-static {p0}, Lcom/oneplus/server/theme/ssp;->tsu(Lcom/oneplus/server/theme/ssp;)Landroid/content/om/IOverlayManager;

    move-result-object p0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p2

    :goto_5
    invoke-interface {p0, p1, v5, p2}, Landroid/content/om/IOverlayManager;->setEnabled(Ljava/lang/String;ZI)Z

    goto/16 :goto_7

    :cond_b
    if-nez p2, :cond_10

    if-eqz p1, :cond_10

    const-string p2, "white.overlay"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_10

    iget-object p0, p0, Lcom/oneplus/server/theme/rtg;->this$0:Lcom/oneplus/server/theme/ssp;

    invoke-static {p0}, Lcom/oneplus/server/theme/ssp;->tsu(Lcom/oneplus/server/theme/ssp;)Landroid/content/om/IOverlayManager;

    move-result-object p0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_5

    :cond_c
    :goto_6
    if-eqz p2, :cond_d

    const/4 p1, -0x1

    const-string v0, "android.intent.extra.user_handle"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_d

    const-string p0, "Switch to user 0. Don\'t need to change theme again."

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_d
    :try_start_3
    iget-object p1, p0, Lcom/oneplus/server/theme/rtg;->this$0:Lcom/oneplus/server/theme/ssp;

    invoke-static {p1}, Lcom/oneplus/server/theme/ssp;->sis(Lcom/oneplus/server/theme/ssp;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "oem_black_mode"

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_e

    iget-object p1, p0, Lcom/oneplus/server/theme/rtg;->this$0:Lcom/oneplus/server/theme/ssp;

    invoke-static {p1}, Lcom/oneplus/server/theme/ssp;->you(Lcom/oneplus/server/theme/ssp;)Landroid/app/IUiModeManager;

    move-result-object p1

    invoke-interface {p1, v5}, Landroid/app/IUiModeManager;->setNightMode(I)V

    iget-object p0, p0, Lcom/oneplus/server/theme/rtg;->this$0:Lcom/oneplus/server/theme/ssp;

    invoke-virtual {p0, v4}, Lcom/oneplus/server/theme/ssp;->enableTheme(Ljava/lang/String;)V

    goto :goto_7

    :cond_e
    if-ne p1, v5, :cond_f

    iget-object p0, p0, Lcom/oneplus/server/theme/rtg;->this$0:Lcom/oneplus/server/theme/ssp;

    invoke-static {p0}, Lcom/oneplus/server/theme/ssp;->you(Lcom/oneplus/server/theme/ssp;)Landroid/app/IUiModeManager;

    move-result-object p0

    invoke-interface {p0, v2}, Landroid/app/IUiModeManager;->setNightMode(I)V

    goto :goto_7

    :cond_f
    iget-object p1, p0, Lcom/oneplus/server/theme/rtg;->this$0:Lcom/oneplus/server/theme/ssp;

    invoke-static {p1}, Lcom/oneplus/server/theme/ssp;->you(Lcom/oneplus/server/theme/ssp;)Landroid/app/IUiModeManager;

    move-result-object p1

    invoke-interface {p1, v5}, Landroid/app/IUiModeManager;->setNightMode(I)V

    iget-object p0, p0, Lcom/oneplus/server/theme/rtg;->this$0:Lcom/oneplus/server/theme/ssp;

    invoke-virtual {p0, v4}, Lcom/oneplus/server/theme/ssp;->disableTheme(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_7

    :catch_2
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    :goto_7
    return-void
.end method
