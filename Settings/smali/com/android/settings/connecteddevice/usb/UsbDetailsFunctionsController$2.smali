.class Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController$2;
.super Ljava/lang/Object;
.source "UsbDetailsFunctionsController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->onRadioButtonClicked(Lcom/android/settings/widget/RadioButtonPreference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;

.field final synthetic val$dontShowAgain:Landroid/widget/CheckBox;

.field final synthetic val$preference:Lcom/android/settings/widget/RadioButtonPreference;

.field final synthetic val$prevPref:Lcom/android/settings/widget/RadioButtonPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;Landroid/widget/CheckBox;Lcom/android/settings/widget/RadioButtonPreference;Lcom/android/settings/widget/RadioButtonPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController$2;->this$0:Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;

    iput-object p2, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController$2;->val$dontShowAgain:Landroid/widget/CheckBox;

    iput-object p3, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController$2;->val$prevPref:Lcom/android/settings/widget/RadioButtonPreference;

    iput-object p4, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController$2;->val$preference:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController$2;->val$dontShowAgain:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "checked"

    goto :goto_0

    :cond_0
    const-string p1, "unchecked"

    :goto_0
    iget-object p2, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController$2;->this$0:Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;

    invoke-static {p2}, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->access$000(Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;)Landroid/content/Context;

    move-result-object p2

    const/4 v0, 0x0

    const-string v1, "tether_settings_prefs"

    invoke-virtual {p2, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const-string v1, "checkbox_status"

    invoke-interface {p2, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController$2;->this$0:Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;

    invoke-static {p1}, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->access$100(Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;)Landroid/net/wifi/WifiManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController$2;->val$prevPref:Lcom/android/settings/widget/RadioButtonPreference;

    const/4 p2, 0x1

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController$2;->val$preference:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_1
    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController$2;->this$0:Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;

    invoke-static {p1}, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->access$200(Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;)Landroid/net/ConnectivityManager;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController$2;->this$0:Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;

    iget-object p0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->mOnStartTetheringCallback:Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController$OnStartTetheringCallback;

    invoke-virtual {p1, p2, p2, p0}, Landroid/net/ConnectivityManager;->startTethering(IZLandroid/net/ConnectivityManager$OnStartTetheringCallback;)V

    return-void
.end method
