.class Lcom/oneplus/settings/OPScreenColorModeForSetupWizard$1;
.super Ljava/lang/Object;
.source "OPScreenColorModeForSetupWizard.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/OPScreenColorModeForSetupWizard;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/OPScreenColorModeForSetupWizard;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/OPScreenColorModeForSetupWizard;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/OPScreenColorModeForSetupWizard$1;->this$0:Lcom/oneplus/settings/OPScreenColorModeForSetupWizard;

    iput-object p2, p0, Lcom/oneplus/settings/OPScreenColorModeForSetupWizard$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    new-instance p1, Landroid/content/ComponentName;

    const-string v0, "com.oneplus.setupwizard"

    const-string v1, "com.oneplus.setupwizard.OneplusFontSetActivity"

    invoke-direct {p1, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oneplus/settings/OPScreenColorModeForSetupWizard$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/oneplus/settings/OPScreenColorModeForSetupWizard$1;->this$0:Lcom/oneplus/settings/OPScreenColorModeForSetupWizard;

    iget-object v0, p0, Lcom/oneplus/settings/OPScreenColorModeForSetupWizard$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    iget-object p0, p0, Lcom/oneplus/settings/OPScreenColorModeForSetupWizard$1;->this$0:Lcom/oneplus/settings/OPScreenColorModeForSetupWizard;

    const p1, 0x7f01005a

    const v0, 0x7f01005b

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method
