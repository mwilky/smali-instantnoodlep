.class Lcom/android/settings/notification/ZenRulePreference$2;
.super Ljava/lang/Object;
.source "ZenRulePreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/ZenRulePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/ZenRulePreference;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/ZenRulePreference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/notification/ZenRulePreference$2;->this$0:Lcom/android/settings/notification/ZenRulePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/android/settings/notification/ZenRulePreference$2;->this$0:Lcom/android/settings/notification/ZenRulePreference;

    iget-object v0, p1, Lcom/android/settings/notification/ZenRulePreference;->mRule:Landroid/app/AutomaticZenRule;

    invoke-static {p1}, Lcom/android/settings/notification/ZenRulePreference;->access$100(Lcom/android/settings/notification/ZenRulePreference;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Landroid/app/AutomaticZenRule;->setEnabled(Z)V

    iget-object p1, p0, Lcom/android/settings/notification/ZenRulePreference$2;->this$0:Lcom/android/settings/notification/ZenRulePreference;

    iget-object v0, p1, Lcom/android/settings/notification/ZenRulePreference;->mBackend:Lcom/android/settings/notification/ZenModeBackend;

    iget-object v1, p1, Lcom/android/settings/notification/ZenRulePreference;->mId:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/settings/notification/ZenRulePreference;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v0, v1, p1}, Lcom/android/settings/notification/ZenModeBackend;->updateZenRule(Ljava/lang/String;Landroid/app/AutomaticZenRule;)Z

    iget-object p1, p0, Lcom/android/settings/notification/ZenRulePreference$2;->this$0:Lcom/android/settings/notification/ZenRulePreference;

    iget-object v0, p1, Lcom/android/settings/notification/ZenRulePreference;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v0}, Landroid/app/AutomaticZenRule;->isEnabled()Z

    move-result v0

    invoke-static {p1, v0}, Lcom/android/settings/notification/ZenRulePreference;->access$200(Lcom/android/settings/notification/ZenRulePreference;Z)V

    iget-object p0, p0, Lcom/android/settings/notification/ZenRulePreference$2;->this$0:Lcom/android/settings/notification/ZenRulePreference;

    iget-object p1, p0, Lcom/android/settings/notification/ZenRulePreference;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {p0, p1}, Lcom/android/settings/notification/ZenRulePreference;->setAttributes(Landroid/app/AutomaticZenRule;)V

    return-void
.end method
