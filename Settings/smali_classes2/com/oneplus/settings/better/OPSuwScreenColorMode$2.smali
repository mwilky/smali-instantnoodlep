.class Lcom/oneplus/settings/better/OPSuwScreenColorMode$2;
.super Landroid/database/ContentObserver;
.source "OPSuwScreenColorMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/better/OPSuwScreenColorMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/better/OPSuwScreenColorMode;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/better/OPSuwScreenColorMode;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode$2;->this$0:Lcom/oneplus/settings/better/OPSuwScreenColorMode;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 3

    iget-object p1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode$2;->this$0:Lcom/oneplus/settings/better/OPSuwScreenColorMode;

    invoke-static {p1}, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->access$000(Lcom/oneplus/settings/better/OPSuwScreenColorMode;)Landroid/content/ContentResolver;

    move-result-object p1

    const/4 p2, 0x0

    const-string v0, "night_display_activated"

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, p2

    :goto_0
    iget-object v1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode$2;->this$0:Lcom/oneplus/settings/better/OPSuwScreenColorMode;

    invoke-static {v1}, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->access$100(Lcom/oneplus/settings/better/OPSuwScreenColorMode;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "reading_mode_status_manual"

    invoke-static {v1, v2, p2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v0, :cond_1

    move v1, v0

    goto :goto_1

    :cond_1
    move v1, p2

    :goto_1
    if-eqz p1, :cond_2

    if-eqz v1, :cond_2

    move p2, v0

    :cond_2
    iget-object v0, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode$2;->this$0:Lcom/oneplus/settings/better/OPSuwScreenColorMode;

    invoke-static {v0}, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->access$200(Lcom/oneplus/settings/better/OPSuwScreenColorMode;)Lcom/android/settings/ui/RadioButtonPreference;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode$2;->this$0:Lcom/oneplus/settings/better/OPSuwScreenColorMode;

    invoke-static {v0}, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->access$300(Lcom/oneplus/settings/better/OPSuwScreenColorMode;)Lcom/android/settings/ui/RadioButtonPreference;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode$2;->this$0:Lcom/oneplus/settings/better/OPSuwScreenColorMode;

    invoke-static {v0}, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->access$400(Lcom/oneplus/settings/better/OPSuwScreenColorMode;)Lcom/android/settings/ui/RadioButtonPreference;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode$2;->this$0:Lcom/oneplus/settings/better/OPSuwScreenColorMode;

    invoke-static {v0}, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->access$500(Lcom/oneplus/settings/better/OPSuwScreenColorMode;)Lcom/android/settings/ui/RadioButtonPreference;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode$2;->this$0:Lcom/oneplus/settings/better/OPSuwScreenColorMode;

    invoke-static {v0}, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->access$600(Lcom/oneplus/settings/better/OPSuwScreenColorMode;)Lcom/android/settings/ui/RadioButtonPreference;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode$2;->this$0:Lcom/oneplus/settings/better/OPSuwScreenColorMode;

    invoke-static {v0}, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->access$700(Lcom/oneplus/settings/better/OPSuwScreenColorMode;)Lcom/android/settings/ui/RadioButtonPreference;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode$2;->this$0:Lcom/oneplus/settings/better/OPSuwScreenColorMode;

    invoke-static {v0}, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->access$800(Lcom/oneplus/settings/better/OPSuwScreenColorMode;)Lcom/android/settings/ui/RadioButtonPreference;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode$2;->this$0:Lcom/oneplus/settings/better/OPSuwScreenColorMode;

    invoke-static {v0}, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->access$900(Lcom/oneplus/settings/better/OPSuwScreenColorMode;)Lcom/android/settings/ui/OPSuwPreferenceCategory;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode$2;->this$0:Lcom/oneplus/settings/better/OPSuwScreenColorMode;

    invoke-static {v0}, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->access$1000(Lcom/oneplus/settings/better/OPSuwScreenColorMode;)Lcom/oneplus/settings/ui/OPSuwSeekBarPreference;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode$2;->this$0:Lcom/oneplus/settings/better/OPSuwScreenColorMode;

    invoke-static {v0}, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->access$1100(Lcom/oneplus/settings/better/OPSuwScreenColorMode;)Lcom/oneplus/settings/ui/OPScreenColorModeSummary;

    move-result-object v0

    if-eqz v0, :cond_6

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode$2;->this$0:Lcom/oneplus/settings/better/OPSuwScreenColorMode;

    invoke-static {p1}, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->access$1100(Lcom/oneplus/settings/better/OPSuwScreenColorMode;)Lcom/oneplus/settings/ui/OPScreenColorModeSummary;

    move-result-object p1

    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    const v2, 0x7f120fab

    invoke-virtual {v0, v2}, Landroid/app/Application;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/oneplus/settings/ui/OPScreenColorModeSummary;->setSummary(Ljava/lang/CharSequence;)V

    :cond_3
    if-nez v1, :cond_4

    iget-object p1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode$2;->this$0:Lcom/oneplus/settings/better/OPSuwScreenColorMode;

    invoke-static {p1}, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->access$1100(Lcom/oneplus/settings/better/OPSuwScreenColorMode;)Lcom/oneplus/settings/ui/OPScreenColorModeSummary;

    move-result-object p1

    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    const v1, 0x7f120fa8

    invoke-virtual {v0, v1}, Landroid/app/Application;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/oneplus/settings/ui/OPScreenColorModeSummary;->setSummary(Ljava/lang/CharSequence;)V

    :cond_4
    if-nez p2, :cond_5

    iget-object p1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode$2;->this$0:Lcom/oneplus/settings/better/OPSuwScreenColorMode;

    invoke-virtual {p1}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object p0, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode$2;->this$0:Lcom/oneplus/settings/better/OPSuwScreenColorMode;

    invoke-static {p0}, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->access$1100(Lcom/oneplus/settings/better/OPSuwScreenColorMode;)Lcom/oneplus/settings/ui/OPScreenColorModeSummary;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_2

    :cond_5
    iget-object p1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode$2;->this$0:Lcom/oneplus/settings/better/OPSuwScreenColorMode;

    invoke-virtual {p1}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object p0, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode$2;->this$0:Lcom/oneplus/settings/better/OPSuwScreenColorMode;

    invoke-static {p0}, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->access$1100(Lcom/oneplus/settings/better/OPSuwScreenColorMode;)Lcom/oneplus/settings/ui/OPScreenColorModeSummary;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_6
    :goto_2
    return-void
.end method
