.class Lsis/you/you/tsu/zta/you;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lsis/you/you/tsu/zta/zta$sis;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsis/you/you/tsu/zta/zta$you;->onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsis/you/you/tsu/zta/zta$you;

.field final synthetic val$_hidl_reply:Landroid/os/HwParcel;


# direct methods
.method constructor <init>(Lsis/you/you/tsu/zta/zta$you;Landroid/os/HwParcel;)V
    .locals 0

    iput-object p1, p0, Lsis/you/you/tsu/zta/you;->this$0:Lsis/you/you/tsu/zta/zta$you;

    iput-object p2, p0, Lsis/you/you/tsu/zta/you;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public you(Ljava/util/ArrayList;IIJI)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;IIJI)V"
        }
    .end annotation

    iget-object v0, p0, Lsis/you/you/tsu/zta/you;->val$_hidl_reply:Landroid/os/HwParcel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    iget-object v0, p0, Lsis/you/you/tsu/zta/you;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt8Vector(Ljava/util/ArrayList;)V

    iget-object p1, p0, Lsis/you/you/tsu/zta/you;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {p1, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    iget-object p1, p0, Lsis/you/you/tsu/zta/you;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {p1, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    iget-object p1, p0, Lsis/you/you/tsu/zta/you;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {p1, p4, p5}, Landroid/os/HwParcel;->writeInt64(J)V

    iget-object p1, p0, Lsis/you/you/tsu/zta/you;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {p1, p6}, Landroid/os/HwParcel;->writeInt32(I)V

    iget-object p0, p0, Lsis/you/you/tsu/zta/you;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {p0}, Landroid/os/HwParcel;->send()V

    return-void
.end method
