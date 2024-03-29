.class public Landroidx/constraintlayout/widget/ConstraintSet;
.super Ljava/lang/Object;
.source "ConstraintSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    }
.end annotation


# static fields
.field private static final VISIBILITY_FLAGS:[I

.field private static mapToConstant:Landroid/util/SparseIntArray;


# instance fields
.field private mConstraints:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroidx/constraintlayout/widget/ConstraintSet$Constraint;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 16

    const/4 v0, 0x3

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Landroidx/constraintlayout/widget/ConstraintSet;->VISIBILITY_FLAGS:[I

    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v1, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget-object v1, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    const/16 v2, 0x19

    const/16 v3, 0x2f

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v1, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    const/16 v4, 0x1a

    const/16 v5, 0x30

    invoke-virtual {v1, v5, v4}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v1, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    const/16 v6, 0x1d

    const/16 v7, 0x32

    invoke-virtual {v1, v7, v6}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v1, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    const/16 v8, 0x1e

    const/16 v9, 0x33

    invoke-virtual {v1, v9, v8}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v1, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    const/16 v10, 0x24

    const/16 v11, 0x38

    invoke-virtual {v1, v11, v10}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v1, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    const/16 v12, 0x23

    const/16 v13, 0x37

    invoke-virtual {v1, v13, v12}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v1, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    const/4 v14, 0x4

    invoke-virtual {v1, v6, v14}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v1, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    const/16 v6, 0x1c

    invoke-virtual {v1, v6, v0}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v1, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    const/4 v6, 0x1

    invoke-virtual {v1, v4, v6}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v1, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    const/16 v4, 0x40

    const/4 v6, 0x6

    invoke-virtual {v1, v4, v6}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v1, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    const/16 v6, 0x41

    const/4 v15, 0x7

    invoke-virtual {v1, v6, v15}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v1, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    const/16 v6, 0x11

    invoke-virtual {v1, v10, v6}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v1, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    const/16 v6, 0x25

    const/16 v10, 0x12

    invoke-virtual {v1, v6, v10}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v1, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    const/16 v6, 0x26

    const/16 v10, 0x13

    invoke-virtual {v1, v6, v10}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v1, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v6, Landroid/support/constraint/R$styleable;->ConstraintSet_android_orientation:I

    const/16 v10, 0x1b

    invoke-virtual {v1, v6, v10}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v1, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    const/16 v6, 0x34

    const/16 v10, 0x20

    invoke-virtual {v1, v6, v10}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v1, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    const/16 v6, 0x35

    const/16 v10, 0x21

    invoke-virtual {v1, v6, v10}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v1, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    const/16 v6, 0xa

    invoke-virtual {v1, v12, v6}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v1, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    const/16 v6, 0x22

    const/16 v10, 0x9

    invoke-virtual {v1, v6, v10}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v1, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    const/16 v6, 0x44

    const/16 v10, 0xd

    invoke-virtual {v1, v6, v10}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v1, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    const/16 v6, 0x47

    const/16 v10, 0x10

    invoke-virtual {v1, v6, v10}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v1, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    const/16 v6, 0x45

    const/16 v10, 0xe

    invoke-virtual {v1, v6, v10}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v1, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    const/16 v6, 0x42

    const/16 v10, 0xb

    invoke-virtual {v1, v6, v10}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v1, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    const/16 v6, 0x46

    const/16 v10, 0xf

    invoke-virtual {v1, v6, v10}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v1, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    const/16 v6, 0x43

    const/16 v10, 0xc

    invoke-virtual {v1, v6, v10}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v1, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    const/16 v6, 0x3b

    const/16 v10, 0x28

    invoke-virtual {v1, v6, v10}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v1, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    const/16 v6, 0x2d

    const/16 v10, 0x27

    invoke-virtual {v1, v6, v10}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v1, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    const/16 v6, 0x2c

    const/16 v10, 0x29

    invoke-virtual {v1, v6, v10}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v1, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    const/16 v6, 0x3a

    const/16 v10, 0x2a

    invoke-virtual {v1, v6, v10}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v1, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    const/16 v6, 0x2b

    const/16 v10, 0x14

    invoke-virtual {v1, v6, v10}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v1, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    const/16 v6, 0x39

    const/16 v10, 0x25

    invoke-virtual {v1, v6, v10}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v1, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    const/16 v6, 0x21

    const/4 v10, 0x5

    invoke-virtual {v1, v6, v10}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v1, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    const/16 v6, 0x2e

    invoke-virtual {v1, v6, v4}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v1, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    const/16 v6, 0x36

    invoke-virtual {v1, v6, v4}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v1, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    const/16 v6, 0x31

    invoke-virtual {v1, v6, v4}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v1, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    const/16 v6, 0x1b

    invoke-virtual {v1, v6, v4}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v1, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v1, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    const/4 v2, 0x5

    const/16 v4, 0x18

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v1, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    const/4 v2, 0x7

    const/16 v4, 0x1c

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v1, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    const/16 v2, 0x13

    const/16 v4, 0x1f

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v1, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    const/16 v2, 0x14

    const/16 v4, 0x8

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v1, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    const/4 v2, 0x6

    const/16 v4, 0x22

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v1, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    const/16 v2, 0x8

    const/4 v4, 0x2

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v1, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    const/16 v2, 0x17

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    const/16 v1, 0x15

    invoke-virtual {v0, v14, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    const/4 v1, 0x2

    const/16 v2, 0x16

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    const/16 v1, 0x9

    const/16 v2, 0x2b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    const/16 v1, 0x16

    const/16 v2, 0x2c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    const/16 v1, 0x11

    const/16 v2, 0x2d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    const/16 v1, 0x12

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    const/16 v1, 0x10

    const/16 v2, 0x3c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    const/16 v1, 0xe

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    const/16 v1, 0xf

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    const/16 v1, 0xa

    const/16 v2, 0x31

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, v9}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    const/16 v1, 0xd

    const/16 v2, 0x34

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    const/16 v1, 0x15

    const/16 v2, 0x35

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    const/16 v1, 0x3c

    const/16 v2, 0x36

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    const/16 v1, 0x27

    invoke-virtual {v0, v1, v13}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    const/16 v1, 0x3d

    invoke-virtual {v0, v1, v11}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    const/16 v1, 0x28

    const/16 v2, 0x39

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    const/16 v1, 0x3e

    const/16 v2, 0x3a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    const/16 v1, 0x29

    const/16 v2, 0x3b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    const/16 v1, 0x3d

    invoke-virtual {v0, v8, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    const/16 v1, 0x20

    const/16 v2, 0x3e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    const/16 v1, 0x1f

    const/16 v2, 0x3f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    const/4 v1, 0x1

    const/16 v2, 0x26

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x4
        0x8
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    return-void
.end method

.method private fillFromAttributeList(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    .locals 6

    new-instance p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;-><init>(Landroidx/constraintlayout/widget/ConstraintSet$1;)V

    sget-object v0, Landroid/support/constraint/R$styleable;->ConstraintSet:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_e

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    sget-object v2, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    const/4 v3, -0x1

    packed-switch v2, :pswitch_data_0

    const-string v4, "   "

    const-string v5, "ConstraintSet"

    packed-switch v2, :pswitch_data_1

    const-string v2, "Unknown attribute 0x"

    invoke-static {v2}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline23(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :pswitch_0
    iget v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->translationZ:F

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->translationZ:F

    goto/16 :goto_1

    :pswitch_1
    iget v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->translationY:F

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->translationY:F

    goto/16 :goto_1

    :pswitch_2
    iget v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->translationX:F

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->translationX:F

    goto/16 :goto_1

    :pswitch_3
    iget v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transformPivotY:F

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transformPivotY:F

    goto/16 :goto_1

    :pswitch_4
    iget v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transformPivotX:F

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transformPivotX:F

    goto/16 :goto_1

    :pswitch_5
    iget v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->scaleY:F

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->scaleY:F

    goto/16 :goto_1

    :pswitch_6
    iget v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->scaleX:F

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->scaleX:F

    goto/16 :goto_1

    :pswitch_7
    iget v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->rotationY:F

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->rotationY:F

    goto/16 :goto_1

    :pswitch_8
    iget v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->rotationX:F

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->rotationX:F

    goto/16 :goto_1

    :pswitch_9
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->applyElevation:Z

    iget v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->elevation:F

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->elevation:F

    goto/16 :goto_1

    :pswitch_a
    iget v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->alpha:F

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->alpha:F

    goto/16 :goto_1

    :pswitch_b
    iget v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->verticalChainStyle:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->verticalChainStyle:I

    goto/16 :goto_1

    :pswitch_c
    iget v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->horizontalChainStyle:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->horizontalChainStyle:I

    goto/16 :goto_1

    :pswitch_d
    iget v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->verticalWeight:F

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->verticalWeight:F

    goto/16 :goto_1

    :pswitch_e
    iget v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->horizontalWeight:F

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->horizontalWeight:F

    goto/16 :goto_1

    :pswitch_f
    iget v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mViewId:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mViewId:I

    goto/16 :goto_1

    :pswitch_10
    iget v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->verticalBias:F

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->verticalBias:F

    goto/16 :goto_1

    :pswitch_11
    iget v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->topToTop:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    if-ne v2, v3, :cond_0

    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    :cond_0
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->topToTop:I

    goto/16 :goto_1

    :pswitch_12
    iget v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->topToBottom:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    if-ne v2, v3, :cond_1

    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    :cond_1
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->topToBottom:I

    goto/16 :goto_1

    :pswitch_13
    iget v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->topMargin:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->topMargin:I

    goto/16 :goto_1

    :pswitch_14
    iget v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->startToStart:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    if-ne v2, v3, :cond_2

    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    :cond_2
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->startToStart:I

    goto/16 :goto_1

    :pswitch_15
    iget v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->startToEnd:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    if-ne v2, v3, :cond_3

    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    :cond_3
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->startToEnd:I

    goto/16 :goto_1

    :pswitch_16
    iget v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->startMargin:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->startMargin:I

    goto/16 :goto_1

    :pswitch_17
    iget v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->rightToRight:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    if-ne v2, v3, :cond_4

    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    :cond_4
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->rightToRight:I

    goto/16 :goto_1

    :pswitch_18
    iget v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->rightToLeft:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    if-ne v2, v3, :cond_5

    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    :cond_5
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->rightToLeft:I

    goto/16 :goto_1

    :pswitch_19
    iget v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->rightMargin:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->rightMargin:I

    goto/16 :goto_1

    :pswitch_1a
    iget v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->orientation:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->orientation:I

    goto/16 :goto_1

    :pswitch_1b
    iget v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->leftToRight:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    if-ne v2, v3, :cond_6

    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    :cond_6
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->leftToRight:I

    goto/16 :goto_1

    :pswitch_1c
    iget v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->leftToLeft:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    if-ne v2, v3, :cond_7

    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    :cond_7
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->leftToLeft:I

    goto/16 :goto_1

    :pswitch_1d
    iget v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->leftMargin:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->leftMargin:I

    goto/16 :goto_1

    :pswitch_1e
    iget v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mWidth:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mWidth:I

    goto/16 :goto_1

    :pswitch_1f
    iget v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->visibility:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->visibility:I

    sget-object v1, Landroidx/constraintlayout/widget/ConstraintSet;->VISIBILITY_FLAGS:[I

    iget v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->visibility:I

    aget v1, v1, v2

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->visibility:I

    goto/16 :goto_1

    :pswitch_20
    iget v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mHeight:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mHeight:I

    goto/16 :goto_1

    :pswitch_21
    iget v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->horizontalBias:F

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->horizontalBias:F

    goto/16 :goto_1

    :pswitch_22
    iget v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->guidePercent:F

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->guidePercent:F

    goto/16 :goto_1

    :pswitch_23
    iget v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->guideEnd:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->guideEnd:I

    goto/16 :goto_1

    :pswitch_24
    iget v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->guideBegin:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->guideBegin:I

    goto/16 :goto_1

    :pswitch_25
    iget v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->goneTopMargin:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->goneTopMargin:I

    goto/16 :goto_1

    :pswitch_26
    iget v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->goneStartMargin:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->goneStartMargin:I

    goto/16 :goto_1

    :pswitch_27
    iget v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->goneRightMargin:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->goneRightMargin:I

    goto/16 :goto_1

    :pswitch_28
    iget v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->goneLeftMargin:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->goneLeftMargin:I

    goto/16 :goto_1

    :pswitch_29
    iget v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->goneEndMargin:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->goneEndMargin:I

    goto/16 :goto_1

    :pswitch_2a
    iget v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->goneBottomMargin:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->goneBottomMargin:I

    goto/16 :goto_1

    :pswitch_2b
    iget v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->endToStart:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    if-ne v2, v3, :cond_8

    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    :cond_8
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->endToStart:I

    goto/16 :goto_1

    :pswitch_2c
    iget v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->endToEnd:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    if-ne v2, v3, :cond_9

    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    :cond_9
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->endToEnd:I

    goto/16 :goto_1

    :pswitch_2d
    iget v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->endMargin:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->endMargin:I

    goto/16 :goto_1

    :pswitch_2e
    iget v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->editorAbsoluteY:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->editorAbsoluteY:I

    goto/16 :goto_1

    :pswitch_2f
    iget v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->editorAbsoluteX:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->editorAbsoluteX:I

    goto/16 :goto_1

    :pswitch_30
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->dimensionRatio:Ljava/lang/String;

    goto/16 :goto_1

    :pswitch_31
    iget v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->bottomToTop:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    if-ne v2, v3, :cond_a

    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    :cond_a
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->bottomToTop:I

    goto/16 :goto_1

    :pswitch_32
    iget v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->bottomToBottom:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    if-ne v2, v3, :cond_b

    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    :cond_b
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->bottomToBottom:I

    goto :goto_1

    :pswitch_33
    iget v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->bottomMargin:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->bottomMargin:I

    goto :goto_1

    :pswitch_34
    iget v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->baselineToBaseline:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    if-ne v2, v3, :cond_c

    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    :cond_c
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->baselineToBaseline:I

    goto :goto_1

    :pswitch_35
    const-string v2, "unused attribute 0x"

    invoke-static {v2}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline23(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :pswitch_36
    iget v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->circleAngle:F

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->circleAngle:F

    goto :goto_1

    :pswitch_37
    iget v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->circleRadius:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->circleRadius:I

    goto :goto_1

    :pswitch_38
    iget v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->circleConstraint:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    if-ne v2, v3, :cond_d

    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    :cond_d
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->circleConstraint:I

    goto :goto_1

    :pswitch_39
    iget v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->rotation:F

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->rotation:F

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_e
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3c
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
    .end packed-switch
.end method


# virtual methods
.method applyToInternal(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 9

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    const/4 v4, -0x1

    if-ge v2, v0, :cond_6

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v6

    if-eq v6, v4, :cond_5

    iget-object v7, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object v7, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    iget v8, v7, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mHelperType:I

    if-eq v8, v4, :cond_1

    if-eq v8, v3, :cond_0

    goto :goto_1

    :cond_0
    move-object v3, v5

    check-cast v3, Landroidx/constraintlayout/widget/Barrier;

    invoke-virtual {v3, v6}, Landroid/view/View;->setId(I)V

    iget-object v4, v7, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mReferenceIds:[I

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/widget/ConstraintHelper;->setReferencedIds([I)V

    iget v4, v7, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mBarrierDirection:I

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/widget/Barrier;->setType(I)V

    invoke-virtual {p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->generateDefaultLayoutParams()Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v7, v3}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;)V

    :cond_1
    :goto_1
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-virtual {v7, v3}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;)V

    invoke-virtual {v5, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v3, v7, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->visibility:I

    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    iget v3, v7, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->alpha:F

    invoke-virtual {v5, v3}, Landroid/view/View;->setAlpha(F)V

    iget v3, v7, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->rotation:F

    invoke-virtual {v5, v3}, Landroid/view/View;->setRotation(F)V

    iget v3, v7, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->rotationX:F

    invoke-virtual {v5, v3}, Landroid/view/View;->setRotationX(F)V

    iget v3, v7, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->rotationY:F

    invoke-virtual {v5, v3}, Landroid/view/View;->setRotationY(F)V

    iget v3, v7, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->scaleX:F

    invoke-virtual {v5, v3}, Landroid/view/View;->setScaleX(F)V

    iget v3, v7, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->scaleY:F

    invoke-virtual {v5, v3}, Landroid/view/View;->setScaleY(F)V

    iget v3, v7, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transformPivotX:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_2

    iget v3, v7, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transformPivotX:F

    invoke-virtual {v5, v3}, Landroid/view/View;->setPivotX(F)V

    :cond_2
    iget v3, v7, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transformPivotY:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_3

    iget v3, v7, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transformPivotY:F

    invoke-virtual {v5, v3}, Landroid/view/View;->setPivotY(F)V

    :cond_3
    iget v3, v7, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->translationX:F

    invoke-virtual {v5, v3}, Landroid/view/View;->setTranslationX(F)V

    iget v3, v7, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->translationY:F

    invoke-virtual {v5, v3}, Landroid/view/View;->setTranslationY(F)V

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    iget v3, v7, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->translationZ:F

    invoke-virtual {v5, v3}, Landroid/view/View;->setTranslationZ(F)V

    iget-boolean v3, v7, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->applyElevation:Z

    if-eqz v3, :cond_4

    iget v3, v7, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->elevation:F

    invoke-virtual {v5, v3}, Landroid/view/View;->setElevation(F)V

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_5
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "All children of ConstraintLayout must have ids to use ConstraintSet"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    iget v5, v2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mHelperType:I

    if-eq v5, v4, :cond_9

    if-eq v5, v3, :cond_8

    goto :goto_3

    :cond_8
    new-instance v5, Landroidx/constraintlayout/widget/Barrier;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroidx/constraintlayout/widget/Barrier;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setId(I)V

    iget-object v6, v2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mReferenceIds:[I

    invoke-virtual {v5, v6}, Landroidx/constraintlayout/widget/ConstraintHelper;->setReferencedIds([I)V

    iget v6, v2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mBarrierDirection:I

    invoke-virtual {v5, v6}, Landroidx/constraintlayout/widget/Barrier;->setType(I)V

    invoke-virtual {p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->generateDefaultLayoutParams()Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;)V

    invoke-virtual {p1, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_9
    :goto_3
    iget-boolean v5, v2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mIsGuideline:Z

    if-eqz v5, :cond_7

    new-instance v5, Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroidx/constraintlayout/widget/Guideline;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v5, v1}, Landroid/view/View;->setId(I)V

    invoke-virtual {p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->generateDefaultLayoutParams()Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;)V

    invoke-virtual {p1, v5, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    :cond_a
    return-void
.end method

.method public clone(Landroidx/constraintlayout/widget/Constraints;)V
    .locals 9

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/widget/Constraints$LayoutParams;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    iget-object v5, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v7, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;-><init>(Landroidx/constraintlayout/widget/ConstraintSet$1;)V

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v5, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    instance-of v6, v2, Landroidx/constraintlayout/widget/ConstraintHelper;

    if-eqz v6, :cond_1

    check-cast v2, Landroidx/constraintlayout/widget/ConstraintHelper;

    invoke-static {v5, v2, v4, v3}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->access$200(Landroidx/constraintlayout/widget/ConstraintSet$Constraint;Landroidx/constraintlayout/widget/ConstraintHelper;ILandroidx/constraintlayout/widget/Constraints$LayoutParams;)V

    :cond_1
    invoke-static {v5, v4, v3}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->access$300(Landroidx/constraintlayout/widget/ConstraintSet$Constraint;ILandroidx/constraintlayout/widget/Constraints$LayoutParams;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "All children of ConstraintLayout must have ids to use ConstraintSet"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    return-void
.end method

.method public load(Landroid/content/Context;I)V
    .locals 4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p2

    :try_start_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    :goto_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    if-eqz v0, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v1, 0x3

    goto :goto_1

    :cond_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->fillFromAttributeList(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v2

    const-string v3, "Guideline"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v1, v2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mIsGuideline:Z

    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    iget v1, v2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mViewId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    :goto_1
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    :cond_3
    :goto_2
    return-void
.end method
