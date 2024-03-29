.class public Lcom/android/settings/notification/ZenRulePreference;
.super Lcom/android/settingslib/TwoTargetPreference;
.source "ZenRulePreference.java"


# static fields
.field private static final CONFIG:Lcom/android/settings/utils/ManagedServiceSettings$Config;


# instance fields
.field final mBackend:Lcom/android/settings/notification/ZenModeBackend;

.field private mCheckBox:Landroid/widget/CheckBox;

.field private mChecked:Z

.field final mContext:Landroid/content/Context;

.field final mId:Ljava/lang/String;

.field private mIntent:Landroid/content/Intent;

.field mName:Ljava/lang/CharSequence;

.field private mOnCheckBoxClickListener:Landroid/view/View$OnClickListener;

.field final mPm:Landroid/content/pm/PackageManager;

.field mRule:Landroid/app/AutomaticZenRule;

.field final mServiceListing:Lcom/android/settings/utils/ZenServiceListing;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/android/settings/notification/ZenModeAutomationSettings;->getConditionProviderConfig()Lcom/android/settings/utils/ManagedServiceSettings$Config;

    move-result-object v0

    sput-object v0, Lcom/android/settings/notification/ZenRulePreference;->CONFIG:Lcom/android/settings/utils/ManagedServiceSettings$Config;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/Map$Entry;Landroidx/fragment/app/Fragment;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Landroid/app/AutomaticZenRule;",
            ">;",
            "Landroidx/fragment/app/Fragment;",
            "Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/settingslib/TwoTargetPreference;-><init>(Landroid/content/Context;)V

    new-instance p3, Lcom/android/settings/notification/ZenRulePreference$2;

    invoke-direct {p3, p0}, Lcom/android/settings/notification/ZenRulePreference$2;-><init>(Lcom/android/settings/notification/ZenRulePreference;)V

    iput-object p3, p0, Lcom/android/settings/notification/ZenRulePreference;->mOnCheckBoxClickListener:Landroid/view/View$OnClickListener;

    const p3, 0x7f0d0285

    invoke-virtual {p0, p3}, Landroidx/preference/Preference;->setLayoutResource(I)V

    invoke-static {p1}, Lcom/android/settings/notification/ZenModeBackend;->getInstance(Landroid/content/Context;)Lcom/android/settings/notification/ZenModeBackend;

    move-result-object p3

    iput-object p3, p0, Lcom/android/settings/notification/ZenRulePreference;->mBackend:Lcom/android/settings/notification/ZenModeBackend;

    iput-object p1, p0, Lcom/android/settings/notification/ZenRulePreference;->mContext:Landroid/content/Context;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AutomaticZenRule;

    iput-object p1, p0, Lcom/android/settings/notification/ZenRulePreference;->mRule:Landroid/app/AutomaticZenRule;

    iget-object p1, p0, Lcom/android/settings/notification/ZenRulePreference;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/ZenRulePreference;->mName:Ljava/lang/CharSequence;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/android/settings/notification/ZenRulePreference;->mId:Ljava/lang/String;

    iget-object p1, p0, Lcom/android/settings/notification/ZenRulePreference;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/ZenRulePreference;->mPm:Landroid/content/pm/PackageManager;

    new-instance p1, Lcom/android/settings/utils/ZenServiceListing;

    iget-object p2, p0, Lcom/android/settings/notification/ZenRulePreference;->mContext:Landroid/content/Context;

    sget-object p3, Lcom/android/settings/notification/ZenRulePreference;->CONFIG:Lcom/android/settings/utils/ManagedServiceSettings$Config;

    invoke-direct {p1, p2, p3}, Lcom/android/settings/utils/ZenServiceListing;-><init>(Landroid/content/Context;Lcom/android/settings/utils/ManagedServiceSettings$Config;)V

    iput-object p1, p0, Lcom/android/settings/notification/ZenRulePreference;->mServiceListing:Lcom/android/settings/utils/ZenServiceListing;

    iget-object p1, p0, Lcom/android/settings/notification/ZenRulePreference;->mServiceListing:Lcom/android/settings/utils/ZenServiceListing;

    invoke-virtual {p1}, Lcom/android/settings/utils/ZenServiceListing;->reloadApprovedServices()V

    iget-object p1, p0, Lcom/android/settings/notification/ZenRulePreference;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->isEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/notification/ZenRulePreference;->mChecked:Z

    iget-object p1, p0, Lcom/android/settings/notification/ZenRulePreference;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {p0, p1}, Lcom/android/settings/notification/ZenRulePreference;->setAttributes(Landroid/app/AutomaticZenRule;)V

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenRulePreference;->getSecondTargetResId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setWidgetLayoutResource(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/notification/ZenRulePreference;)Landroid/content/Intent;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/notification/ZenRulePreference;->mIntent:Landroid/content/Intent;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/notification/ZenRulePreference;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/settings/notification/ZenRulePreference;->mChecked:Z

    return p0
.end method

.method static synthetic access$200(Lcom/android/settings/notification/ZenRulePreference;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/notification/ZenRulePreference;->mChecked:Z

    iget-object p0, p0, Lcom/android/settings/notification/ZenRulePreference;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method private computeRuleSummary(Landroid/app/AutomaticZenRule;)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/settings/notification/ZenRulePreference;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f121649

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/settings/notification/ZenRulePreference;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f121648

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0
.end method


# virtual methods
.method protected getSecondTargetResId()I
    .locals 0

    iget-object p0, p0, Lcom/android/settings/notification/ZenRulePreference;->mIntent:Landroid/content/Intent;

    if-eqz p0, :cond_0

    const p0, 0x7f0d039c

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settingslib/TwoTargetPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x1020018

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0777

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/notification/ZenRulePreference;->mIntent:Landroid/content/Intent;

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    new-instance v1, Lcom/android/settings/notification/ZenRulePreference$1;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/ZenRulePreference$1;-><init>(Lcom/android/settings/notification/ZenRulePreference;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    const v0, 0x7f0a014a

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/settings/notification/ZenRulePreference;->mOnCheckBoxClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    const v0, 0x1020001

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/android/settings/notification/ZenRulePreference;->mCheckBox:Landroid/widget/CheckBox;

    iget-object p1, p0, Lcom/android/settings/notification/ZenRulePreference;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz p1, :cond_2

    iget-boolean p0, p0, Lcom/android/settings/notification/ZenRulePreference;->mChecked:Z

    invoke-virtual {p1, p0}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_2
    return-void
.end method

.method public onClick()V
    .locals 1

    iget-object p0, p0, Lcom/android/settings/notification/ZenRulePreference;->mOnCheckBoxClickListener:Landroid/view/View$OnClickListener;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    return-void
.end method

.method protected setAttributes(Landroid/app/AutomaticZenRule;)V
    .locals 3

    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getConditionId()Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/service/notification/ZenModeConfig;->isValidScheduleConditionId(Landroid/net/Uri;Z)Z

    move-result v0

    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getConditionId()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Landroid/service/notification/ZenModeConfig;->isValidEventConditionId(Landroid/net/Uri;)Z

    move-result v1

    invoke-direct {p0, p1}, Lcom/android/settings/notification/ZenRulePreference;->computeRuleSummary(Landroid/app/AutomaticZenRule;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/settings/notification/ZenRulePreference;->mName:Ljava/lang/CharSequence;

    invoke-virtual {p0, v2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroidx/preference/Preference;->setPersistent(Z)V

    if-eqz v0, :cond_0

    const-string v0, "android.settings.ZEN_MODE_SCHEDULE_RULE_SETTINGS"

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    const-string v0, "android.settings.ZEN_MODE_EVENT_RULE_SETTINGS"

    goto :goto_0

    :cond_1
    const-string v0, ""

    :goto_0
    iget-object v1, p0, Lcom/android/settings/notification/ZenRulePreference;->mServiceListing:Lcom/android/settings/utils/ZenServiceListing;

    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getOwner()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/utils/ZenServiceListing;->findService(Landroid/content/ComponentName;)Landroid/content/pm/ComponentInfo;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/settings/notification/AbstractZenModeAutomaticRulePreferenceController;->getSettingsActivity(Landroid/app/AutomaticZenRule;Landroid/content/pm/ComponentInfo;)Landroid/content/ComponentName;

    move-result-object p1

    iget-object v1, p0, Lcom/android/settings/notification/ZenRulePreference;->mId:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/android/settings/notification/AbstractZenModeAutomaticRulePreferenceController;->getRuleIntent(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/ZenRulePreference;->mIntent:Landroid/content/Intent;

    iget-object p1, p0, Lcom/android/settings/notification/ZenRulePreference;->mIntent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/settings/notification/ZenRulePreference;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p1

    if-nez p1, :cond_2

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/settings/notification/ZenRulePreference;->mIntent:Landroid/content/Intent;

    :cond_2
    iget-object p1, p0, Lcom/android/settings/notification/ZenRulePreference;->mId:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    return-void
.end method

.method public updatePreference(Landroid/app/AutomaticZenRule;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/notification/ZenRulePreference;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v0}, Landroid/app/AutomaticZenRule;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/ZenRulePreference;->mName:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/android/settings/notification/ZenRulePreference;->mName:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/ZenRulePreference;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v0}, Landroid/app/AutomaticZenRule;->isEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/notification/ZenRulePreference;->mChecked:Z

    iget-object v1, p0, Lcom/android/settings/notification/ZenRulePreference;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/ZenRulePreference;->mRule:Landroid/app/AutomaticZenRule;

    invoke-direct {p0, v0}, Lcom/android/settings/notification/ZenRulePreference;->computeRuleSummary(Landroid/app/AutomaticZenRule;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iput-object p1, p0, Lcom/android/settings/notification/ZenRulePreference;->mRule:Landroid/app/AutomaticZenRule;

    return-void
.end method
