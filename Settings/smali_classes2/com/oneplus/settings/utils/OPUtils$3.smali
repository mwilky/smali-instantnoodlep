.class Lcom/oneplus/settings/utils/OPUtils$3;
.super Ljava/lang/Object;
.source "OPUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/utils/OPUtils;->enableAppBgService(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/utils/OPUtils$3;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Lcom/oneplus/settings/utils/OPUtils$3;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/fuelgauge/BatteryUtils;->getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/BatteryUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/utils/OPUtils$3;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;->getInstance(Landroid/content/Context;)Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;

    sget-object v1, Lcom/oneplus/settings/utils/OPUtils;->GBGSERVICEPACKAGES:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    iget-object v6, p0, Lcom/oneplus/settings/utils/OPUtils$3;->val$context:Landroid/content/Context;

    invoke-static {v6, v5}, Lcom/oneplus/settings/utils/OPUtils;->isAppExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/oneplus/settings/utils/OPUtils$3;->val$context:Landroid/content/Context;

    invoke-static {v6}, Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;->getInstance(Landroid/content/Context;)Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;

    move-result-object v6

    invoke-virtual {v6, v5, v3}, Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;->getAppControlMode(Ljava/lang/String;I)I

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v0, v5}, Lcom/android/settings/fuelgauge/BatteryUtils;->getPackageUid(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v6, v5, v3}, Lcom/android/settings/fuelgauge/BatteryUtils;->setForceAppStandby(ILjava/lang/String;I)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "enableAppBgService pkg:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "OPUtils"

    invoke-static {v6, v5, v7}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline45(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
