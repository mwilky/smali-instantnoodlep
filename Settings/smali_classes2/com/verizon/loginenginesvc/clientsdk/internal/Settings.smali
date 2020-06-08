.class public Lcom/verizon/loginenginesvc/clientsdk/internal/Settings;
.super Ljava/lang/Object;
.source "Settings.java"


# static fields
.field private static final SVC_COMPONENTS:[Landroid/content/ComponentName;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/content/ComponentName;

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.verizon.loginenginesvc.LoginEngineService"

    const-string v3, "com.verizon.mips.services"

    invoke-direct {v1, v3, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    aput-object v1, v0, v3

    new-instance v1, Landroid/content/ComponentName;

    const-string v3, "com.verizon.loginengine.unbranded"

    invoke-direct {v1, v3, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    aput-object v1, v0, v3

    new-instance v1, Landroid/content/ComponentName;

    const-string v3, "com.motricity.verizon.ssoengine"

    invoke-direct {v1, v3, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lcom/verizon/loginenginesvc/clientsdk/internal/Settings;->SVC_COMPONENTS:[Landroid/content/ComponentName;

    return-void
.end method

.method public static findService(Landroid/content/Context;)Landroid/content/ComponentName;
    .locals 11

    sget-object v0, Lcom/verizon/loginenginesvc/clientsdk/internal/Settings;->SVC_COMPONENTS:[Landroid/content/ComponentName;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_5

    aget-object v4, v0, v3

    if-nez v4, :cond_1

    :catch_0
    :cond_0
    :goto_1
    move v5, v2

    goto :goto_3

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x4

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    array-length v6, v5

    move v7, v2

    :goto_2
    if-ge v7, v6, :cond_0

    aget-object v8, v5, v7

    const-string v9, "com.verizon.loginenginesvc.LoginEngineService"

    iget-object v10, v8, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    iget-boolean v5, v8, Landroid/content/pm/ServiceInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :goto_3
    if-eqz v5, :cond_4

    return-object v4

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    const/4 p0, 0x0

    return-object p0
.end method
