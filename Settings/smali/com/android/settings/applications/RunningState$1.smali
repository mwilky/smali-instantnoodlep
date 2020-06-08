.class Lcom/android/settings/applications/RunningState$1;
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
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/settings/applications/RunningState$MergedItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/RunningState;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/RunningState;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/applications/RunningState$1;->this$0:Lcom/android/settings/applications/RunningState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 7

    check-cast p1, Lcom/android/settings/applications/RunningState$MergedItem;

    check-cast p2, Lcom/android/settings/applications/RunningState$MergedItem;

    iget v0, p1, Lcom/android/settings/applications/RunningState$BaseItem;->mUserId:I

    iget v1, p2, Lcom/android/settings/applications/RunningState$BaseItem;->mUserId:I

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq v0, v1, :cond_3

    iget-object p0, p0, Lcom/android/settings/applications/RunningState$1;->this$0:Lcom/android/settings/applications/RunningState;

    iget p0, p0, Lcom/android/settings/applications/RunningState;->mMyUserId:I

    if-ne v0, p0, :cond_0

    goto/16 :goto_6

    :cond_0
    if-ne v1, p0, :cond_1

    goto :goto_0

    :cond_1
    if-ge v0, v1, :cond_2

    goto/16 :goto_6

    :cond_2
    :goto_0
    move v2, v3

    goto/16 :goto_6

    :cond_3
    iget-object p0, p1, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    iget-object v0, p2, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_5

    iget-object p0, p1, Lcom/android/settings/applications/RunningState$BaseItem;->mLabel:Ljava/lang/String;

    iget-object p1, p2, Lcom/android/settings/applications/RunningState$BaseItem;->mLabel:Ljava/lang/String;

    if-ne p0, p1, :cond_4

    :goto_1
    move v2, v1

    goto/16 :goto_6

    :cond_4
    if-eqz p0, :cond_12

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    goto/16 :goto_6

    :cond_5
    if-nez p0, :cond_6

    goto/16 :goto_6

    :cond_6
    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    iget-object p0, p0, Lcom/android/settings/applications/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v4, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v5, 0x190

    if-lt v4, v5, :cond_8

    move v4, v3

    goto :goto_2

    :cond_8
    move v4, v1

    :goto_2
    iget v6, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    if-lt v6, v5, :cond_9

    move v5, v3

    goto :goto_3

    :cond_9
    move v5, v1

    :goto_3
    if-eq v4, v5, :cond_a

    if-eqz v4, :cond_12

    goto :goto_0

    :cond_a
    iget v4, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_b

    move v4, v3

    goto :goto_4

    :cond_b
    move v4, v1

    :goto_4
    iget v5, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_c

    move v5, v3

    goto :goto_5

    :cond_c
    move v5, v1

    :goto_5
    if-eq v4, v5, :cond_d

    if-eqz v4, :cond_2

    goto :goto_6

    :cond_d
    iget p0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->lru:I

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->lru:I

    if-eq p0, v0, :cond_e

    if-ge p0, v0, :cond_2

    goto :goto_6

    :cond_e
    iget-object p0, p1, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    iget-object p0, p0, Lcom/android/settings/applications/RunningState$BaseItem;->mLabel:Ljava/lang/String;

    iget-object p1, p2, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    iget-object p1, p1, Lcom/android/settings/applications/RunningState$BaseItem;->mLabel:Ljava/lang/String;

    if-ne p0, p1, :cond_f

    goto :goto_1

    :cond_f
    if-nez p0, :cond_10

    goto :goto_0

    :cond_10
    if-nez p1, :cond_11

    goto :goto_6

    :cond_11
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    :cond_12
    :goto_6
    return v2
.end method
