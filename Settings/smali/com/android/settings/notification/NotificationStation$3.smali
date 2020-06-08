.class Lcom/android/settings/notification/NotificationStation$3;
.super Ljava/lang/Object;
.source "NotificationStation.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/NotificationStation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/android/settings/notification/NotificationStation;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;

    check-cast p2, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;

    iget-wide v0, p2, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;->timestamp:J

    iget-wide p0, p1, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;->timestamp:J

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0
.end method
