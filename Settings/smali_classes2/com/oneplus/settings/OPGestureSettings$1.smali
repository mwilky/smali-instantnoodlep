.class Lcom/oneplus/settings/OPGestureSettings$1;
.super Landroid/database/ContentObserver;
.source "OPGestureSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/OPGestureSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/OPGestureSettings;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/OPGestureSettings;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/OPGestureSettings$1;->this$0:Lcom/oneplus/settings/OPGestureSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    invoke-static {}, Lcom/oneplus/settings/OPGestureSettings;->access$000()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oneplus/settings/OPGestureSettings$1;->this$0:Lcom/oneplus/settings/OPGestureSettings;

    invoke-static {p1}, Lcom/oneplus/settings/OPGestureSettings;->access$100(Lcom/oneplus/settings/OPGestureSettings;)Landroidx/preference/SwitchPreference;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oneplus/settings/OPGestureSettings$1;->this$0:Lcom/oneplus/settings/OPGestureSettings;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 p2, 0x0

    const-string v0, "oem_acc_sensor_rotate_silent"

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    :goto_0
    iget-object p0, p0, Lcom/oneplus/settings/OPGestureSettings$1;->this$0:Lcom/oneplus/settings/OPGestureSettings;

    invoke-static {p0}, Lcom/oneplus/settings/OPGestureSettings;->access$100(Lcom/oneplus/settings/OPGestureSettings;)Landroidx/preference/SwitchPreference;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_1
    return-void
.end method
