.class Lcom/oneplus/settings/OPThemeSettings$1;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "OPThemeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/OPThemeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getXmlResourcesToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List<",
            "Landroid/provider/SearchIndexableResource;",
            ">;"
        }
    .end annotation

    new-instance p0, Landroid/provider/SearchIndexableResource;

    invoke-direct {p0, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportNotificationLight()Z

    move-result p1

    if-nez p1, :cond_0

    const p1, 0x7f1600cb

    iput p1, p0, Landroid/provider/SearchIndexableResource;->xmlResId:I

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/oneplus/settings/utils/OPThemeUtils;->isSupportCustomeTheme()Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f1600ca

    iput p1, p0, Landroid/provider/SearchIndexableResource;->xmlResId:I

    goto :goto_0

    :cond_1
    const p1, 0x7f1600c9

    iput p1, p0, Landroid/provider/SearchIndexableResource;->xmlResId:I

    :goto_0
    const/4 p1, 0x1

    new-array p1, p1, [Landroid/provider/SearchIndexableResource;

    const/4 p2, 0x0

    aput-object p0, p1, p2

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected isPageSearchEnabled(Landroid/content/Context;)Z
    .locals 0

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isGuestMode()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
