.class Lcom/android/settings/accessibility/VibrationPreferenceFragment$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "VibrationPreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accessibility/VibrationPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/VibrationPreferenceFragment;


# direct methods
.method public constructor <init>(Lcom/android/settings/accessibility/VibrationPreferenceFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/accessibility/VibrationPreferenceFragment$SettingsObserver;->this$0:Lcom/android/settings/accessibility/VibrationPreferenceFragment;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    iget-object p1, p0, Lcom/android/settings/accessibility/VibrationPreferenceFragment$SettingsObserver;->this$0:Lcom/android/settings/accessibility/VibrationPreferenceFragment;

    invoke-virtual {p1}, Lcom/android/settings/widget/RadioButtonPickerFragment;->updateCandidates()V

    iget-object p0, p0, Lcom/android/settings/accessibility/VibrationPreferenceFragment$SettingsObserver;->this$0:Lcom/android/settings/accessibility/VibrationPreferenceFragment;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/VibrationPreferenceFragment;->playVibrationPreview()V

    return-void
.end method
