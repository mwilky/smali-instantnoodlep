.class Lcom/oneplus/settings/OPFontStyleActivity$1;
.super Ljava/lang/Object;
.source "OPFontStyleActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/OPFontStyleActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/OPFontStyleActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/OPFontStyleActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/OPFontStyleActivity$1;->this$0:Lcom/oneplus/settings/OPFontStyleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object p0, p0, Lcom/oneplus/settings/OPFontStyleActivity$1;->this$0:Lcom/oneplus/settings/OPFontStyleActivity;

    invoke-static {p0}, Lcom/oneplus/settings/OPFontStyleActivity;->access$200(Lcom/oneplus/settings/OPFontStyleActivity;)I

    move-result v0

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "oem_font_mode"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "oneplus_dynamicfont"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/oneplus/sdk/utils/OpTheme;

    invoke-direct {v0, p0}, Lcom/oneplus/sdk/utils/OpTheme;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/oneplus/sdk/utils/OpTheme;->enableTheme(Ljava/util/HashMap;)I

    return-void
.end method
