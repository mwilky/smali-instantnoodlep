.class Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController$1;
.super Ljava/lang/Object;
.source "OPReadingModeTurnOnPreferenceController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController;->showSelectEffectDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController$1;->this$0:Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    iget-object p1, p0, Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController$1;->this$0:Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController;

    invoke-static {p1}, Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController;->access$000(Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "reading_mode_status"

    const/4 v2, -0x2

    invoke-static {p1, v1, v0, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    iget-object p0, p0, Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController$1;->this$0:Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController;

    invoke-static {p0}, Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController;->access$100(Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController;)Lcom/android/settings/widget/MasterSwitchPreference;

    move-result-object p0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/settings/widget/MasterSwitchPreference;->setChecked(Z)V

    return-void
.end method
