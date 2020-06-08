.class Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionApps$SummaryProvider;
.super Ljava/lang/Object;
.source "DisplaySizeAdaptionApps.java"

# interfaces
.implements Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionApps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SummaryProvider"
.end annotation


# direct methods
.method synthetic constructor <init>(Landroid/content/Context;Lcom/android/settings/dashboard/SummaryLoader;Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionApps$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p0, Lcom/android/settings/notification/NotificationBackend;

    invoke-direct {p0}, Lcom/android/settings/notification/NotificationBackend;-><init>()V

    return-void
.end method


# virtual methods
.method public setListening(Z)V
    .locals 0

    return-void
.end method
