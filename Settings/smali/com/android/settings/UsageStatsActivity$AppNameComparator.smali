.class public Lcom/android/settings/UsageStatsActivity$AppNameComparator;
.super Ljava/lang/Object;
.source "UsageStatsActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/UsageStatsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppNameComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/app/usage/UsageStats;",
        ">;"
    }
.end annotation


# instance fields
.field private mAppLabelList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/UsageStatsActivity$AppNameComparator;->mAppLabelList:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Landroid/app/usage/UsageStats;

    check-cast p2, Landroid/app/usage/UsageStats;

    iget-object v0, p0, Lcom/android/settings/UsageStatsActivity$AppNameComparator;->mAppLabelList:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/app/usage/UsageStats;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object p0, p0, Lcom/android/settings/UsageStatsActivity$AppNameComparator;->mAppLabelList:Ljava/util/Map;

    invoke-virtual {p2}, Landroid/app/usage/UsageStats;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method
