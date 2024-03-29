.class public final Lcom/android/settings/utils/ContentCaptureUtils;
.super Ljava/lang/Object;
.source "ContentCaptureUtils.java"


# static fields
.field private static final MY_USER_ID:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    sput v0, Lcom/android/settings/utils/ContentCaptureUtils;->MY_USER_ID:I

    return-void
.end method

.method public static getServiceSettingsComponentName()Landroid/content/ComponentName;
    .locals 3

    :try_start_0
    invoke-static {}, Landroid/view/contentcapture/ContentCaptureManager;->getServiceSettingsComponentName()Landroid/content/ComponentName;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "Could not get service settings: "

    const-string v2, "ContentCaptureUtils"

    invoke-static {v1, v0, v2}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline37(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public static isEnabledForUser(Landroid/content/Context;)Z
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget v0, Lcom/android/settings/utils/ContentCaptureUtils;->MY_USER_ID:I

    const/4 v1, 0x1

    const-string v2, "content_capture_enabled"

    invoke-static {p0, v2, v1, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isFeatureAvailable()Z
    .locals 1

    const-string v0, "content_capture"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static setEnabledForUser(Landroid/content/Context;Z)V
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget v0, Lcom/android/settings/utils/ContentCaptureUtils;->MY_USER_ID:I

    const-string v1, "content_capture_enabled"

    invoke-static {p0, v1, p1, v0}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method
