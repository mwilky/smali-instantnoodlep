.class Lcom/oneplus/android/server/iris/ssp$zta;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lsis/sis/zta/zta/zta/sis$tsu;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/android/server/iris/ssp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zta"
.end annotation


# instance fields
.field private mResult:I

.field private mValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/oneplus/android/server/iris/ssp;


# direct methods
.method private constructor <init>(Lcom/oneplus/android/server/iris/ssp;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/iris/ssp$zta;->this$0:Lcom/oneplus/android/server/iris/ssp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Lcom/oneplus/android/server/iris/ssp$zta;->mResult:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/android/server/iris/ssp;Lcom/oneplus/android/server/iris/rtg;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/android/server/iris/ssp$zta;-><init>(Lcom/oneplus/android/server/iris/ssp;)V

    return-void
.end method


# virtual methods
.method public getResult()I
    .locals 0

    iget p0, p0, Lcom/oneplus/android/server/iris/ssp$zta;->mResult:I

    return p0
.end method

.method public getValues()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oneplus/android/server/iris/ssp$zta;->mValues:Ljava/util/ArrayList;

    return-object p0
.end method

.method public onValues(ILjava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iput p1, p0, Lcom/oneplus/android/server/iris/ssp$zta;->mResult:I

    iput-object p2, p0, Lcom/oneplus/android/server/iris/ssp$zta;->mValues:Ljava/util/ArrayList;

    return-void
.end method
