.class Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$9;
.super Landroid/content/BroadcastReceiver;
.source "OPMultiAppListSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$9;->this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    const-string p2, "has changed"

    const-string v0, "OPMultiAppListSettings"

    invoke-static {p1, p2, v0}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline40(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$9;->this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->access$2202(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;Z)Z

    :cond_2
    return-void
.end method
