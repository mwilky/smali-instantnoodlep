.class Lcom/android/settings/notification/ZenRuleButtonsPreferenceController$EditRuleNameClickListener$1;
.super Ljava/lang/Object;
.source "ZenRuleButtonsPreferenceController.java"

# interfaces
.implements Lcom/android/settings/notification/ZenRuleNameDialog$PositiveClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/ZenRuleButtonsPreferenceController$EditRuleNameClickListener;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/notification/ZenRuleButtonsPreferenceController$EditRuleNameClickListener;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/ZenRuleButtonsPreferenceController$EditRuleNameClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/notification/ZenRuleButtonsPreferenceController$EditRuleNameClickListener$1;->this$1:Lcom/android/settings/notification/ZenRuleButtonsPreferenceController$EditRuleNameClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOk(Ljava/lang/String;Landroidx/fragment/app/Fragment;)V
    .locals 3

    iget-object p2, p0, Lcom/android/settings/notification/ZenRuleButtonsPreferenceController$EditRuleNameClickListener$1;->this$1:Lcom/android/settings/notification/ZenRuleButtonsPreferenceController$EditRuleNameClickListener;

    iget-object p2, p2, Lcom/android/settings/notification/ZenRuleButtonsPreferenceController$EditRuleNameClickListener;->this$0:Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;

    invoke-static {p2}, Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;->access$100(Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;)Landroid/app/AutomaticZenRule;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/AutomaticZenRule;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lcom/android/settings/notification/ZenRuleButtonsPreferenceController$EditRuleNameClickListener$1;->this$1:Lcom/android/settings/notification/ZenRuleButtonsPreferenceController$EditRuleNameClickListener;

    iget-object p2, p2, Lcom/android/settings/notification/ZenRuleButtonsPreferenceController$EditRuleNameClickListener;->this$0:Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;

    iget-object v0, p2, Lcom/android/settings/notification/AbstractZenModePreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-static {p2}, Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;->access$200(Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;)Landroid/content/Context;

    move-result-object p2

    const/16 v1, 0x4f3

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/util/Pair;

    invoke-virtual {v0, p2, v1, v2}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    iget-object p2, p0, Lcom/android/settings/notification/ZenRuleButtonsPreferenceController$EditRuleNameClickListener$1;->this$1:Lcom/android/settings/notification/ZenRuleButtonsPreferenceController$EditRuleNameClickListener;

    iget-object p2, p2, Lcom/android/settings/notification/ZenRuleButtonsPreferenceController$EditRuleNameClickListener;->this$0:Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;

    invoke-static {p2}, Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;->access$100(Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;)Landroid/app/AutomaticZenRule;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/app/AutomaticZenRule;->setName(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/settings/notification/ZenRuleButtonsPreferenceController$EditRuleNameClickListener$1;->this$1:Lcom/android/settings/notification/ZenRuleButtonsPreferenceController$EditRuleNameClickListener;

    iget-object p1, p1, Lcom/android/settings/notification/ZenRuleButtonsPreferenceController$EditRuleNameClickListener;->this$0:Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;

    invoke-static {p1}, Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;->access$100(Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;)Landroid/app/AutomaticZenRule;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/app/AutomaticZenRule;->setModified(Z)V

    iget-object p1, p0, Lcom/android/settings/notification/ZenRuleButtonsPreferenceController$EditRuleNameClickListener$1;->this$1:Lcom/android/settings/notification/ZenRuleButtonsPreferenceController$EditRuleNameClickListener;

    iget-object p1, p1, Lcom/android/settings/notification/ZenRuleButtonsPreferenceController$EditRuleNameClickListener;->this$0:Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;

    iget-object p2, p1, Lcom/android/settings/notification/AbstractZenModePreferenceController;->mBackend:Lcom/android/settings/notification/ZenModeBackend;

    invoke-static {p1}, Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;->access$300(Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/notification/ZenRuleButtonsPreferenceController$EditRuleNameClickListener$1;->this$1:Lcom/android/settings/notification/ZenRuleButtonsPreferenceController$EditRuleNameClickListener;

    iget-object p0, p0, Lcom/android/settings/notification/ZenRuleButtonsPreferenceController$EditRuleNameClickListener;->this$0:Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;

    invoke-static {p0}, Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;->access$100(Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;)Landroid/app/AutomaticZenRule;

    move-result-object p0

    invoke-virtual {p2, p1, p0}, Lcom/android/settings/notification/ZenModeBackend;->updateZenRule(Ljava/lang/String;Landroid/app/AutomaticZenRule;)Z

    return-void
.end method
