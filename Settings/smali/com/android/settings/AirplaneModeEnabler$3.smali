.class Lcom/android/settings/AirplaneModeEnabler$3;
.super Ljava/lang/Object;
.source "AirplaneModeEnabler.java"

# interfaces
.implements Lcom/oneplus/lib/widget/button/OPCompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic this$0:Lcom/android/settings/AirplaneModeEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/AirplaneModeEnabler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/AirplaneModeEnabler$3;->this$0:Lcom/android/settings/AirplaneModeEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Lcom/oneplus/lib/widget/button/OPCompoundButton;Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/AirplaneModeEnabler$3;->this$0:Lcom/android/settings/AirplaneModeEnabler;

    invoke-static {p0}, Lcom/android/settings/AirplaneModeEnabler;->access$100(Lcom/android/settings/AirplaneModeEnabler;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "airplanechecked"

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
