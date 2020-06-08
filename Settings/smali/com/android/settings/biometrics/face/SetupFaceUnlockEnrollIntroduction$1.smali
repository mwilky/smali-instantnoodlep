.class Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction$1;
.super Ljava/lang/Object;
.source "SetupFaceUnlockEnrollIntroduction.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;


# direct methods
.method constructor <init>(Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction$1;->this$0:Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    const-string p1, "SetupFaceUnlockEnrollIntroduction"

    const-string v0, "Oneplus face unlock service connected"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction$1;->this$0:Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;

    invoke-static {p2}, Lcom/oneplus/faceunlock/internal/IOPFaceSettingService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;->access$002(Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;)Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;

    iget-object p1, p0, Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction$1;->this$0:Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;

    invoke-static {p1}, Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;->access$100(Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction$1;->this$0:Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;

    invoke-static {p0}, Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;->access$200(Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;)Lcom/oneplus/lib/widget/button/OPButton;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction$1;->this$0:Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;

    invoke-static {p0}, Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;->access$300(Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;)Lcom/oneplus/lib/widget/button/OPButton;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "SetupFaceUnlockEnrollIntroduction"

    const-string v0, "Oneplus face unlock service disconnected"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction$1;->this$0:Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;->access$002(Lcom/android/settings/biometrics/face/SetupFaceUnlockEnrollIntroduction;Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;)Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;

    return-void
.end method
