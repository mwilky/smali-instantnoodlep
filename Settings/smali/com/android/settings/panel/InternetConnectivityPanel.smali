.class public Lcom/android/settings/panel/InternetConnectivityPanel;
.super Ljava/lang/Object;
.source "InternetConnectivityPanel.java"

# interfaces
.implements Lcom/android/settings/panel/PanelContent;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/panel/InternetConnectivityPanel;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/android/settings/panel/InternetConnectivityPanel;
    .locals 1

    new-instance v0, Lcom/android/settings/panel/InternetConnectivityPanel;

    invoke-direct {v0, p0}, Lcom/android/settings/panel/InternetConnectivityPanel;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x676

    return p0
.end method

.method public getSeeMoreIntent()Landroid/content/Intent;
    .locals 1

    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.settings.WIRELESS_SETTINGS"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x10000000

    invoke-virtual {p0, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public getSlices()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    sget-object v0, Lcom/android/settings/slices/CustomSliceRegistry;->WIFI_SLICE_URI:Landroid/net/Uri;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/slices/CustomSliceRegistry;->MOBILE_DATA_SLICE_URI:Landroid/net/Uri;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/slices/CustomSliceRegistry;->AIRPLANE_URI:Landroid/net/Uri;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object p0, p0, Lcom/android/settings/panel/InternetConnectivityPanel;->mContext:Landroid/content/Context;

    const v0, 0x7f120891

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method
