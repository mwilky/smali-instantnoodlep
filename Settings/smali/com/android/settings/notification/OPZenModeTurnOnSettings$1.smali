.class Lcom/android/settings/notification/OPZenModeTurnOnSettings$1;
.super Ljava/lang/Object;
.source "OPZenModeTurnOnSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/OPZenModeTurnOnSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/OPZenModeTurnOnSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/OPZenModeTurnOnSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/notification/OPZenModeTurnOnSettings$1;->this$0:Lcom/android/settings/notification/OPZenModeTurnOnSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/notification/OPZenModeTurnOnSettings$1;->this$0:Lcom/android/settings/notification/OPZenModeTurnOnSettings;

    iget-object p1, p0, Lcom/android/settings/notification/OPZenModeTurnOnSettings;->mSwitchPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {p0, p1}, Lcom/android/settings/notification/OPZenModeTurnOnSettings;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method
