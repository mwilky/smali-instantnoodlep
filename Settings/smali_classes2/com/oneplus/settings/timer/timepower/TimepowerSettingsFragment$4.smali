.class Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment$4;
.super Ljava/lang/Object;
.source "TimepowerSettingsFragment.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment$4;->this$0:Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 1

    iget-object p1, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment$4;->this$0:Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;

    invoke-static {p1}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->access$000(Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    return v0

    :cond_0
    iget-object p0, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment$4;->this$0:Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;

    invoke-static {p0, v0}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->access$100(Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;I)Landroid/content/Intent;

    move-result-object p1

    invoke-static {p0, p1, v0}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->access$200(Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;Landroid/content/Intent;I)V

    const/4 p0, 0x0

    return p0
.end method
