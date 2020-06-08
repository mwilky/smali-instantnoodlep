.class Lcom/android/settings/notification/ZenRuleSelectionDialog$2;
.super Ljava/lang/Object;
.source "ZenRuleSelectionDialog.java"

# interfaces
.implements Lcom/android/settings/utils/ZenServiceListing$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/ZenRuleSelectionDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/ZenRuleSelectionDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/ZenRuleSelectionDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/notification/ZenRuleSelectionDialog$2;->this$0:Lcom/android/settings/notification/ZenRuleSelectionDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComponentsReloaded(Ljava/util/Set;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/content/pm/ComponentInfo;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/android/settings/notification/ZenRuleSelectionDialog;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Reloaded: count="

    invoke-static {v0}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline23(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZenRuleSelectionDialog"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Ljava/util/TreeSet;

    invoke-static {}, Lcom/android/settings/notification/ZenRuleSelectionDialog;->access$100()Ljava/util/Comparator;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ComponentInfo;

    invoke-static {}, Lcom/android/settings/notification/ZenRuleSelectionDialog;->access$200()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v1, :cond_6

    iget-object v4, v1, Landroid/content/pm/ComponentInfo;->metaData:Landroid/os/Bundle;

    if-nez v4, :cond_2

    goto :goto_3

    :cond_2
    instance-of v4, v1, Landroid/content/pm/ServiceInfo;

    const-string v5, "android.service.zen.automatic.ruleType"

    if-eqz v4, :cond_3

    iget-object v6, v1, Landroid/content/pm/ComponentInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v6, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_3
    iget-object v6, v1, Landroid/content/pm/ComponentInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v6, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_1
    invoke-static {v3, v1}, Lcom/android/settings/notification/AbstractZenModeAutomaticRulePreferenceController;->getSettingsActivity(Landroid/app/AutomaticZenRule;Landroid/content/pm/ComponentInfo;)Landroid/content/ComponentName;

    move-result-object v6

    if-eqz v5, :cond_6

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_6

    if-eqz v6, :cond_6

    new-instance v7, Lcom/android/settings/notification/ZenRuleInfo;

    invoke-direct {v7}, Lcom/android/settings/notification/ZenRuleInfo;-><init>()V

    if-eqz v4, :cond_4

    new-instance v3, Landroid/content/ComponentName;

    iget-object v8, v1, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iget-object v9, v1, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iput-object v3, v7, Lcom/android/settings/notification/ZenRuleInfo;->serviceComponent:Landroid/content/ComponentName;

    const-string v3, "android.settings.ZEN_MODE_EXTERNAL_RULE_SETTINGS"

    iput-object v3, v7, Lcom/android/settings/notification/ZenRuleInfo;->settingsAction:Ljava/lang/String;

    iput-object v5, v7, Lcom/android/settings/notification/ZenRuleInfo;->title:Ljava/lang/String;

    iget-object v3, v1, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iput-object v3, v7, Lcom/android/settings/notification/ZenRuleInfo;->packageName:Ljava/lang/String;

    iput-object v6, v7, Lcom/android/settings/notification/ZenRuleInfo;->configurationActivity:Landroid/content/ComponentName;

    iget-object v3, v1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v7, Lcom/android/settings/notification/ZenRuleInfo;->packageLabel:Ljava/lang/CharSequence;

    const/4 v2, -0x1

    const-string v3, "android.service.zen.automatic.ruleInstanceLimit"

    if-eqz v4, :cond_5

    iget-object v4, v1, Landroid/content/pm/ComponentInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v4, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    goto :goto_2

    :cond_5
    iget-object v4, v1, Landroid/content/pm/ComponentInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v4, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    :goto_2
    iput v2, v7, Lcom/android/settings/notification/ZenRuleInfo;->ruleInstanceLimit:I

    move-object v3, v7

    :cond_6
    :goto_3
    if-eqz v3, :cond_1

    iget-object v2, v3, Lcom/android/settings/notification/ZenRuleInfo;->configurationActivity:Landroid/content/ComponentName;

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/settings/notification/ZenRuleSelectionDialog;->access$300()Landroid/app/NotificationManager;

    move-result-object v2

    iget-object v4, v3, Lcom/android/settings/notification/ZenRuleInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/app/NotificationManager;->isNotificationPolicyAccessGrantedForPackage(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, v3, Lcom/android/settings/notification/ZenRuleInfo;->ruleInstanceLimit:I

    if-lez v2, :cond_7

    invoke-static {}, Lcom/android/settings/notification/ZenRuleSelectionDialog;->access$300()Landroid/app/NotificationManager;

    move-result-object v4

    invoke-virtual {v1}, Landroid/content/pm/ComponentInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/app/NotificationManager;->getRuleInstanceCount(Landroid/content/ComponentName;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    if-lt v2, v1, :cond_1

    :cond_7
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_8
    iget-object p0, p0, Lcom/android/settings/notification/ZenRuleSelectionDialog$2;->this$0:Lcom/android/settings/notification/ZenRuleSelectionDialog;

    invoke-static {p0, v0}, Lcom/android/settings/notification/ZenRuleSelectionDialog;->access$400(Lcom/android/settings/notification/ZenRuleSelectionDialog;Ljava/util/Set;)V

    return-void
.end method
