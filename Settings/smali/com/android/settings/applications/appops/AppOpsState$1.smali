.class Lcom/android/settings/applications/appops/AppOpsState$1;
.super Ljava/lang/Object;
.source "AppOpsState.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/appops/AppOpsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;",
        ">;"
    }
.end annotation


# instance fields
.field private final sCollator:Ljava/text/Collator;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/appops/AppOpsState$1;->sCollator:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 6

    check-cast p1, Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;

    check-cast p2, Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;

    invoke-virtual {p1}, Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;->getSwitchOrder()I

    move-result v0

    invoke-virtual {p2}, Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;->getSwitchOrder()I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;->getSwitchOrder()I

    move-result p0

    invoke-virtual {p2}, Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;->getSwitchOrder()I

    move-result p1

    if-ge p0, p1, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;->isRunning()Z

    move-result v0

    invoke-virtual {p2}, Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;->isRunning()Z

    move-result v1

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;->getTime()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;->getTime()J

    move-result-wide v4

    cmp-long v0, v0, v4

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;->getTime()J

    move-result-wide p0

    invoke-virtual {p2}, Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;->getTime()J

    move-result-wide v0

    cmp-long p0, p0, v0

    if-lez p0, :cond_0

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/android/settings/applications/appops/AppOpsState$1;->sCollator:Ljava/text/Collator;

    invoke-virtual {p1}, Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;->getAppEntry()Lcom/android/settings/applications/appops/AppOpsState$AppEntry;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/applications/appops/AppOpsState$AppEntry;->getLabel()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;->getAppEntry()Lcom/android/settings/applications/appops/AppOpsState$AppEntry;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/settings/applications/appops/AppOpsState$AppEntry;->getLabel()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    :goto_0
    return v2
.end method
