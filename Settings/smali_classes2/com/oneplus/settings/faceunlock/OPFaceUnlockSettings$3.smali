.class Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings$3;
.super Ljava/lang/Object;
.source "OPFaceUnlockSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings$3;->this$0:Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object p0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings$3;->this$0:Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;

    invoke-static {p0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->access$300(Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;)Landroid/app/ActivityManager;

    move-result-object p0

    const-string v0, "com.oneplus.faceunlock"

    invoke-static {p0, v0}, Lcom/oneplus/lib/app/appcompat/MenuWrapperFactory;->killRunningTargetProcess(Landroid/app/ActivityManager;Ljava/lang/String;)V

    const-string p0, "OPFaceUnlockSettings"

    const-string v0, "Oneplus face unlock killRunningTargetProcess"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
