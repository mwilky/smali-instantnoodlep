.class Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask$1;
.super Ljava/lang/Object;
.source "ResetSystemSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;

.field final synthetic val$value:I


# direct methods
.method constructor <init>(Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask$1;->this$1:Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;

    iput p2, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask$1;->val$value:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-wide/16 v0, 0x12c

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    iget-object v0, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask$1;->this$1:Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;

    iget-object v0, v0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->this$0:Lcom/android/settings/ResetSystemSettings;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask$1;->val$value:I

    const-string v2, "oem_font_mode"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget v1, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask$1;->val$value:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "oneplus_dynamicfont"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/oneplus/sdk/utils/OpTheme;

    iget-object p0, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask$1;->this$1:Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;

    iget-object p0, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->this$0:Lcom/android/settings/ResetSystemSettings;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/oneplus/sdk/utils/OpTheme;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/oneplus/sdk/utils/OpTheme;->enableTheme(Ljava/util/HashMap;)I

    return-void
.end method
