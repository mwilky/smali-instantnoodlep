.class Lcom/oneplus/settings/OPButtonsAndGesturesSettings$2;
.super Ljava/lang/Object;
.source "OPButtonsAndGesturesSettings.java"

# interfaces
.implements Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/OPButtonsAndGesturesSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createSummaryProvider(Landroid/app/Activity;Lcom/android/settings/dashboard/SummaryLoader;)Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;
    .locals 1

    new-instance p0, Lcom/oneplus/settings/OPButtonsAndGesturesSettings$SummaryProvider;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/settings/OPButtonsAndGesturesSettings$SummaryProvider;-><init>(Landroid/content/Context;Lcom/android/settings/dashboard/SummaryLoader;Lcom/oneplus/settings/OPButtonsAndGesturesSettings$1;)V

    return-object p0
.end method
