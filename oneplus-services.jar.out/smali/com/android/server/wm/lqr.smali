.class Lcom/android/server/wm/lqr;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/OpPowerConsumpStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/server/wm/OpPowerConsumpStats$tsu;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/OpPowerConsumpStats;


# direct methods
.method constructor <init>(Lcom/android/server/wm/OpPowerConsumpStats;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/lqr;->this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/server/wm/OpPowerConsumpStats$tsu;

    check-cast p2, Lcom/android/server/wm/OpPowerConsumpStats$tsu;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/lqr;->zta(Lcom/android/server/wm/OpPowerConsumpStats$tsu;Lcom/android/server/wm/OpPowerConsumpStats$tsu;)I

    move-result p0

    return p0
.end method

.method public zta(Lcom/android/server/wm/OpPowerConsumpStats$tsu;Lcom/android/server/wm/OpPowerConsumpStats$tsu;)I
    .locals 0

    iget p0, p2, Lcom/android/server/wm/OpPowerConsumpStats$tsu;->Eca:I

    iget p1, p1, Lcom/android/server/wm/OpPowerConsumpStats$tsu;->Eca:I

    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method
