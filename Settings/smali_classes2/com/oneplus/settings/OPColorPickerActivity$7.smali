.class Lcom/oneplus/settings/OPColorPickerActivity$7;
.super Ljava/lang/Object;
.source "OPColorPickerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/OPColorPickerActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/OPColorPickerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/OPColorPickerActivity$7;->this$0:Lcom/oneplus/settings/OPColorPickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity$7;->this$0:Lcom/oneplus/settings/OPColorPickerActivity;

    invoke-static {v0}, Lcom/oneplus/settings/OPColorPickerActivity;->access$900(Lcom/oneplus/settings/OPColorPickerActivity;)Landroid/app/ActivityManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/oneplus/lib/app/appcompat/MenuWrapperFactory;->killProcess(Landroid/app/ActivityManager;Z)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v2, Lcom/oneplus/sdk/utils/OpTheme;

    iget-object v3, p0, Lcom/oneplus/settings/OPColorPickerActivity$7;->this$0:Lcom/oneplus/settings/OPColorPickerActivity;

    invoke-direct {v2, v3}, Lcom/oneplus/sdk/utils/OpTheme;-><init>(Landroid/content/Context;)V

    const-string v3, "oneplus_accentcolor"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, v0}, Lcom/oneplus/sdk/utils/OpTheme;->enableTheme(Ljava/util/HashMap;)I

    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity$7;->this$0:Lcom/oneplus/settings/OPColorPickerActivity;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "oneplus_shape"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPThemeUtils;->getCurrentShapeByIndex(I)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/oneplus/settings/OPColorPickerActivity$7;->this$0:Lcom/oneplus/settings/OPColorPickerActivity;

    invoke-static {v2, v0, p0}, Lcom/oneplus/settings/utils/OPThemeUtils;->enableTheme(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method
