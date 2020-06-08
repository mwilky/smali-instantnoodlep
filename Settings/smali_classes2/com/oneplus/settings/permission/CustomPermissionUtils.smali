.class public Lcom/oneplus/settings/permission/CustomPermissionUtils;
.super Ljava/lang/Object;
.source "CustomPermissionUtils.java"


# static fields
.field public static mCustomPermissionToOriginalGroup:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/oneplus/settings/permission/CustomPermissionUtils;->mCustomPermissionToOriginalGroup:Ljava/util/LinkedHashMap;

    sget-object v0, Lcom/oneplus/settings/permission/CustomPermissionUtils;->mCustomPermissionToOriginalGroup:Ljava/util/LinkedHashMap;

    const-string v1, "android.permission-group.SMS"

    const-string v2, "CUSTOM_PERMISSION_READ_MMS"

    invoke-virtual {v0, v2, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/oneplus/settings/permission/CustomPermissionUtils;->mCustomPermissionToOriginalGroup:Ljava/util/LinkedHashMap;

    const-string v2, "CUSTOM_PERMISSION_SEND_MMS"

    invoke-virtual {v0, v2, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static isCustomPermission(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "CUSTOM_PERMISSION"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
