.class public final enum Lcom/android/server/am/OnePlusBGController$MySipperType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusBGController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MySipperType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/am/OnePlusBGController$MySipperType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/am/OnePlusBGController$MySipperType;

.field public static final enum B:Lcom/android/server/am/OnePlusBGController$MySipperType;

.field public static final enum M:Lcom/android/server/am/OnePlusBGController$MySipperType;

.field public static final enum T:Lcom/android/server/am/OnePlusBGController$MySipperType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/android/server/am/OnePlusBGController$MySipperType;

    const/4 v1, 0x0

    const-string v2, "T"

    invoke-direct {v0, v2, v1}, Lcom/android/server/am/OnePlusBGController$MySipperType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/am/OnePlusBGController$MySipperType;->T:Lcom/android/server/am/OnePlusBGController$MySipperType;

    new-instance v0, Lcom/android/server/am/OnePlusBGController$MySipperType;

    const/4 v2, 0x1

    const-string v3, "M"

    invoke-direct {v0, v3, v2}, Lcom/android/server/am/OnePlusBGController$MySipperType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/am/OnePlusBGController$MySipperType;->M:Lcom/android/server/am/OnePlusBGController$MySipperType;

    new-instance v0, Lcom/android/server/am/OnePlusBGController$MySipperType;

    const/4 v3, 0x2

    const-string v4, "B"

    invoke-direct {v0, v4, v3}, Lcom/android/server/am/OnePlusBGController$MySipperType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/am/OnePlusBGController$MySipperType;->B:Lcom/android/server/am/OnePlusBGController$MySipperType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/server/am/OnePlusBGController$MySipperType;

    sget-object v4, Lcom/android/server/am/OnePlusBGController$MySipperType;->T:Lcom/android/server/am/OnePlusBGController$MySipperType;

    aput-object v4, v0, v1

    sget-object v1, Lcom/android/server/am/OnePlusBGController$MySipperType;->M:Lcom/android/server/am/OnePlusBGController$MySipperType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/am/OnePlusBGController$MySipperType;->B:Lcom/android/server/am/OnePlusBGController$MySipperType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/server/am/OnePlusBGController$MySipperType;->$VALUES:[Lcom/android/server/am/OnePlusBGController$MySipperType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/am/OnePlusBGController$MySipperType;
    .locals 1

    const-class v0, Lcom/android/server/am/OnePlusBGController$MySipperType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/OnePlusBGController$MySipperType;

    return-object p0
.end method

.method public static values()[Lcom/android/server/am/OnePlusBGController$MySipperType;
    .locals 1

    sget-object v0, Lcom/android/server/am/OnePlusBGController$MySipperType;->$VALUES:[Lcom/android/server/am/OnePlusBGController$MySipperType;

    invoke-virtual {v0}, [Lcom/android/server/am/OnePlusBGController$MySipperType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/am/OnePlusBGController$MySipperType;

    return-object v0
.end method
