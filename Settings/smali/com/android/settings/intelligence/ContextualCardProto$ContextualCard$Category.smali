.class public final enum Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;
.super Ljava/lang/Enum;
.source "ContextualCardProto.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Category"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;

.field public static final enum DEFAULT:Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;

.field public static final enum DEFERRED_SETUP:Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;

.field public static final enum IMPORTANT:Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;

.field public static final enum POSSIBLE:Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;

.field public static final enum SUGGESTION:Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;

    const/4 v1, 0x0

    const-string v2, "DEFAULT"

    invoke-direct {v0, v2, v1, v1}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;->DEFAULT:Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;

    new-instance v0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;

    const/4 v2, 0x1

    const-string v3, "SUGGESTION"

    invoke-direct {v0, v3, v2, v2}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;->SUGGESTION:Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;

    new-instance v0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;

    const/4 v3, 0x2

    const-string v4, "POSSIBLE"

    invoke-direct {v0, v4, v3, v3}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;->POSSIBLE:Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;

    new-instance v0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;

    const/4 v4, 0x3

    const-string v5, "IMPORTANT"

    invoke-direct {v0, v5, v4, v4}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;->IMPORTANT:Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;

    new-instance v0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;

    const/4 v5, 0x5

    const/4 v6, 0x4

    const-string v7, "DEFERRED_SETUP"

    invoke-direct {v0, v7, v6, v5}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;->DEFERRED_SETUP:Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;

    new-array v0, v5, [Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;

    sget-object v5, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;->DEFAULT:Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;

    aput-object v5, v0, v1

    sget-object v1, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;->SUGGESTION:Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;->POSSIBLE:Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;->IMPORTANT:Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;->DEFERRED_SETUP:Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;->$VALUES:[Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;
    .locals 1

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;->DEFERRED_SETUP:Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;

    return-object p0

    :cond_1
    sget-object p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;->IMPORTANT:Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;

    return-object p0

    :cond_2
    sget-object p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;->POSSIBLE:Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;

    return-object p0

    :cond_3
    sget-object p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;->SUGGESTION:Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;

    return-object p0

    :cond_4
    sget-object p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;->DEFAULT:Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;
    .locals 1

    const-class v0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;

    return-object p0
.end method

.method public static values()[Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;
    .locals 1

    sget-object v0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;->$VALUES:[Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;

    invoke-virtual {v0}, [Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 0

    iget p0, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;->value:I

    return p0
.end method
