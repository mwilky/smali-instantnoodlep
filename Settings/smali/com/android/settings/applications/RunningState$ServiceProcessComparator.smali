.class Lcom/android/settings/applications/RunningState$ServiceProcessComparator;
.super Ljava/lang/Object;
.source "RunningState.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/RunningState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ServiceProcessComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/settings/applications/RunningState$ProcessItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/RunningState;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/RunningState;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/applications/RunningState$ServiceProcessComparator;->this$0:Lcom/android/settings/applications/RunningState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    check-cast p1, Lcom/android/settings/applications/RunningState$ProcessItem;

    check-cast p2, Lcom/android/settings/applications/RunningState$ProcessItem;

    iget v0, p1, Lcom/android/settings/applications/RunningState$BaseItem;->mUserId:I

    iget v1, p2, Lcom/android/settings/applications/RunningState$BaseItem;->mUserId:I

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eq v0, v1, :cond_3

    iget-object p0, p0, Lcom/android/settings/applications/RunningState$ServiceProcessComparator;->this$0:Lcom/android/settings/applications/RunningState;

    iget p0, p0, Lcom/android/settings/applications/RunningState;->mMyUserId:I

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    if-ne v1, p0, :cond_1

    goto :goto_1

    :cond_1
    if-ge v0, v1, :cond_7

    :cond_2
    :goto_0
    move v2, v3

    goto :goto_1

    :cond_3
    iget-boolean p0, p1, Lcom/android/settings/applications/RunningState$ProcessItem;->mIsStarted:Z

    iget-boolean v0, p2, Lcom/android/settings/applications/RunningState$ProcessItem;->mIsStarted:Z

    if-eq p0, v0, :cond_4

    if-eqz p0, :cond_7

    goto :goto_0

    :cond_4
    iget-boolean p0, p1, Lcom/android/settings/applications/RunningState$ProcessItem;->mIsSystem:Z

    iget-boolean v0, p2, Lcom/android/settings/applications/RunningState$ProcessItem;->mIsSystem:Z

    if-eq p0, v0, :cond_5

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_5
    iget-wide p0, p1, Lcom/android/settings/applications/RunningState$ProcessItem;->mActiveSince:J

    iget-wide v0, p2, Lcom/android/settings/applications/RunningState$ProcessItem;->mActiveSince:J

    cmp-long p0, p0, v0

    if-eqz p0, :cond_6

    if-lez p0, :cond_7

    goto :goto_0

    :cond_6
    const/4 v2, 0x0

    :cond_7
    :goto_1
    return v2
.end method
