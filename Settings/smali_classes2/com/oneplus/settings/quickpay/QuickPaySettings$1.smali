.class Lcom/oneplus/settings/quickpay/QuickPaySettings$1;
.super Ljava/lang/Object;
.source "QuickPaySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/quickpay/QuickPaySettings;

.field final synthetic val$state:Z


# direct methods
.method constructor <init>(Lcom/oneplus/settings/quickpay/QuickPaySettings;Z)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings$1;->this$0:Lcom/oneplus/settings/quickpay/QuickPaySettings;

    iput-boolean p2, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings$1;->val$state:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p2, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings$1;->this$0:Lcom/oneplus/settings/quickpay/QuickPaySettings;

    iget-boolean v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings$1;->val$state:Z

    invoke-static {p2, v0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->access$000(Lcom/oneplus/settings/quickpay/QuickPaySettings;Z)V

    iget-object p2, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings$1;->this$0:Lcom/oneplus/settings/quickpay/QuickPaySettings;

    invoke-static {p2}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->access$100(Lcom/oneplus/settings/quickpay/QuickPaySettings;)Landroidx/preference/SwitchPreference;

    move-result-object p2

    iget-boolean p0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings$1;->val$state:Z

    invoke-virtual {p2, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
