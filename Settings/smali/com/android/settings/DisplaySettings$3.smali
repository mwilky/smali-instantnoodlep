.class Lcom/android/settings/DisplaySettings$3;
.super Ljava/lang/Object;
.source "DisplaySettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/DisplaySettings;->saveBrightnessDataBase(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DisplaySettings;

.field final synthetic val$setting:Ljava/lang/String;

.field final synthetic val$val:I


# direct methods
.method constructor <init>(Lcom/android/settings/DisplaySettings;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/DisplaySettings$3;->this$0:Lcom/android/settings/DisplaySettings;

    iput p2, p0, Lcom/android/settings/DisplaySettings$3;->val$val:I

    iput-object p3, p0, Lcom/android/settings/DisplaySettings$3;->val$setting:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget v0, p0, Lcom/android/settings/DisplaySettings$3;->val$val:I

    iget-object v1, p0, Lcom/android/settings/DisplaySettings$3;->this$0:Lcom/android/settings/DisplaySettings;

    invoke-static {v1}, Lcom/android/settings/DisplaySettings;->access$400(Lcom/android/settings/DisplaySettings;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v0, p0, Lcom/android/settings/DisplaySettings$3;->val$val:I

    div-int/lit8 v0, v0, 0x64

    :cond_0
    iget-object v1, p0, Lcom/android/settings/DisplaySettings$3;->this$0:Lcom/android/settings/DisplaySettings;

    invoke-static {v1}, Lcom/android/settings/DisplaySettings;->access$000(Lcom/android/settings/DisplaySettings;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, -0x2

    const-string v3, "op_screen_brightness_anim"

    invoke-static {v1, v3, v0, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget-object v1, p0, Lcom/android/settings/DisplaySettings$3;->this$0:Lcom/android/settings/DisplaySettings;

    invoke-static {v1}, Lcom/android/settings/DisplaySettings;->access$000(Lcom/android/settings/DisplaySettings;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/DisplaySettings$3;->val$setting:Ljava/lang/String;

    invoke-static {v1, v3, v0, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget-object p0, p0, Lcom/android/settings/DisplaySettings$3;->this$0:Lcom/android/settings/DisplaySettings;

    const-wide/16 v0, -0x1

    invoke-static {p0, v0, v1}, Lcom/android/settings/DisplaySettings;->access$502(Lcom/android/settings/DisplaySettings;J)J

    sget-object p0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {p0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "screen_brightness_mode"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_1

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTrackerForBrightness()V

    :cond_1
    return-void
.end method
