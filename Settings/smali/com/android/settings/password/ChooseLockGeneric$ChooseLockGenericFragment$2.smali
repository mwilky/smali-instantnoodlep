.class Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$2;
.super Ljava/lang/Object;
.source "ChooseLockGeneric.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$2;->this$0:Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object p0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$2;->this$0:Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->access$200(Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;)Landroid/app/ActivityManager;

    move-result-object p0

    const-string v0, "com.oneplus.faceunlock"

    invoke-static {p0, v0}, Lcom/oneplus/lib/app/appcompat/MenuWrapperFactory;->killRunningTargetProcess(Landroid/app/ActivityManager;Ljava/lang/String;)V

    const-string p0, "ChooseLockGenericFragment"

    const-string v0, "Oneplus face unlock killRunningTargetProcess"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
