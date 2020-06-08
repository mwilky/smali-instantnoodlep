.class public final Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "ContextualCardProto.java"

# interfaces
.implements Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Builder;,
        Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;",
        "Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Builder;",
        ">;",
        "Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bitField0_:I

.field private cardCategory_:I

.field private cardName_:Ljava/lang/String;

.field private cardScore_:D

.field private sliceUri_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;

    invoke-direct {v0}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;-><init>()V

    sput-object v0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->DEFAULT_INSTANCE:Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;

    sget-object v0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->DEFAULT_INSTANCE:Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->makeImmutable()V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->sliceUri_:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->cardName_:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->cardCategory_:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->cardScore_:D

    return-void
.end method

.method static synthetic access$1100()Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;
    .locals 1

    sget-object v0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->DEFAULT_INSTANCE:Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->bitField0_:I

    iput-object p1, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->sliceUri_:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
.end method

.method static synthetic access$1500(Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->bitField0_:I

    iput-object p1, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->cardName_:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
.end method

.method static synthetic access$1800(Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;)V
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->bitField0_:I

    invoke-virtual {p1}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->cardCategory_:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
.end method

.method public static newBuilder()Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Builder;
    .locals 1

    sget-object v0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->DEFAULT_INSTANCE:Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Builder;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->DEFAULT_INSTANCE:Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/16 v0, 0x8

    const/4 v1, 0x4

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    packed-switch p1, :pswitch_data_0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :pswitch_0
    sget-object p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_1

    const-class p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;

    monitor-enter p0

    :try_start_0
    sget-object p1, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p2, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->DEFAULT_INSTANCE:Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;

    invoke-direct {p1, p2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p1, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->PARSER:Lcom/google/protobuf/Parser;

    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    sget-object p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->PARSER:Lcom/google/protobuf/Parser;

    return-object p0

    :pswitch_1
    new-instance p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Builder;

    invoke-direct {p0, v5}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Builder;-><init>(Lcom/android/settings/intelligence/ContextualCardProto$1;)V

    return-object p0

    :pswitch_2
    new-instance p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;

    invoke-direct {p0}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;-><init>()V

    return-object p0

    :pswitch_3
    return-object v5

    :pswitch_4
    check-cast p2, Lcom/google/protobuf/CodedInputStream;

    check-cast p3, Lcom/google/protobuf/ExtensionRegistryLite;

    :cond_2
    :goto_1
    if-nez v3, :cond_9

    :try_start_1
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result p1

    if-eqz p1, :cond_8

    const/16 p3, 0xa

    if-eq p1, p3, :cond_7

    const/16 p3, 0x1a

    if-eq p1, p3, :cond_6

    const/16 p3, 0x20

    if-eq p1, p3, :cond_4

    const/16 p3, 0x29

    if-eq p1, p3, :cond_3

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageLite;->parseUnknownField(ILcom/google/protobuf/CodedInputStream;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_2

    :cond_3
    iget p1, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->bitField0_:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->bitField0_:I

    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readRawLittleEndian64()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->cardScore_:D

    goto :goto_1

    :cond_4
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result p1

    invoke-static {p1}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;->forNumber(I)Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;

    move-result-object p3

    if-nez p3, :cond_5

    invoke-super {p0, v1, p1}, Lcom/google/protobuf/GeneratedMessageLite;->mergeVarintField(II)V

    goto :goto_1

    :cond_5
    iget p3, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->bitField0_:I

    or-int/2addr p3, v1

    iput p3, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->bitField0_:I

    iput p1, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->cardCategory_:I

    goto :goto_1

    :cond_6
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object p1

    iget p3, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->bitField0_:I

    or-int/2addr p3, v2

    iput p3, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->bitField0_:I

    iput-object p1, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->cardName_:Ljava/lang/String;

    goto :goto_1

    :cond_7
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object p1

    iget p3, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->bitField0_:I

    or-int/2addr p3, v4

    iput p3, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->bitField0_:I

    iput-object p1, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->sliceUri_:Ljava/lang/String;
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :cond_8
    :goto_2
    move v3, v4

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception p1

    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_3
    throw p0

    :cond_9
    :pswitch_5
    sget-object p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->DEFAULT_INSTANCE:Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;

    return-object p0

    :pswitch_6
    move-object p1, p2

    check-cast p1, Lcom/google/protobuf/GeneratedMessageLite$Visitor;

    check-cast p3, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;

    iget p2, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->bitField0_:I

    and-int/2addr p2, v4

    if-ne p2, v4, :cond_a

    move p2, v4

    goto :goto_4

    :cond_a
    move p2, v3

    :goto_4
    iget-object v5, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->sliceUri_:Ljava/lang/String;

    iget v6, p3, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->bitField0_:I

    and-int/2addr v6, v4

    if-ne v6, v4, :cond_b

    move v6, v4

    goto :goto_5

    :cond_b
    move v6, v3

    :goto_5
    iget-object v7, p3, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->sliceUri_:Ljava/lang/String;

    invoke-interface {p1, p2, v5, v6, v7}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->sliceUri_:Ljava/lang/String;

    iget p2, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->bitField0_:I

    and-int/2addr p2, v2

    if-ne p2, v2, :cond_c

    move p2, v4

    goto :goto_6

    :cond_c
    move p2, v3

    :goto_6
    iget-object v5, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->cardName_:Ljava/lang/String;

    iget v6, p3, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->bitField0_:I

    and-int/2addr v6, v2

    if-ne v6, v2, :cond_d

    move v2, v4

    goto :goto_7

    :cond_d
    move v2, v3

    :goto_7
    iget-object v6, p3, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->cardName_:Ljava/lang/String;

    invoke-interface {p1, p2, v5, v2, v6}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->cardName_:Ljava/lang/String;

    iget p2, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->bitField0_:I

    and-int/2addr p2, v1

    if-ne p2, v1, :cond_e

    move p2, v4

    goto :goto_8

    :cond_e
    move p2, v3

    :goto_8
    iget v2, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->cardCategory_:I

    iget v5, p3, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->bitField0_:I

    and-int/2addr v5, v1

    if-ne v5, v1, :cond_f

    move v1, v4

    goto :goto_9

    :cond_f
    move v1, v3

    :goto_9
    iget v5, p3, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->cardCategory_:I

    invoke-interface {p1, p2, v2, v1, v5}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p2

    iput p2, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->cardCategory_:I

    iget p2, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->bitField0_:I

    and-int/2addr p2, v0

    if-ne p2, v0, :cond_10

    move v1, v4

    goto :goto_a

    :cond_10
    move v1, v3

    :goto_a
    iget-wide v5, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->cardScore_:D

    iget p2, p3, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->bitField0_:I

    and-int/2addr p2, v0

    if-ne p2, v0, :cond_11

    goto :goto_b

    :cond_11
    move v4, v3

    :goto_b
    iget-wide v7, p3, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->cardScore_:D

    move-object v0, p1

    move-wide v2, v5

    move-wide v5, v7

    invoke-interface/range {v0 .. v6}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitDouble(ZDZD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->cardScore_:D

    sget-object p2, Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;

    if-ne p1, p2, :cond_12

    iget p1, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->bitField0_:I

    iget p2, p3, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->bitField0_:I

    or-int/2addr p1, p2

    iput p1, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->bitField0_:I

    :cond_12
    return-object p0

    :pswitch_7
    sget-object p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->DEFAULT_INSTANCE:Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_5
        :pswitch_0
    .end packed-switch
.end method

.method public getSerializedSize()I
    .locals 3

    iget v0, p0, Lcom/google/protobuf/GeneratedMessageLite;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    iget v1, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->sliceUri_:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget v1, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->bitField0_:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->cardName_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget v1, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->bitField0_:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_4

    iget v1, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->cardCategory_:I

    invoke-static {v2}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v2

    if-ltz v1, :cond_3

    invoke-static {v1}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v1

    goto :goto_0

    :cond_3
    const/16 v1, 0xa

    :goto_0
    add-int/2addr v1, v2

    add-int/2addr v0, v1

    :cond_4
    iget v1, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->bitField0_:I

    const/16 v2, 0x8

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_5

    const/4 v1, 0x5

    invoke-static {v1}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v1

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    :cond_5
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageLite;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSetLite;->getSerializedSize()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/protobuf/GeneratedMessageLite;->memoizedSerializedSize:I

    return v1
.end method

.method public getSliceUri()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->sliceUri_:Ljava/lang/String;

    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->sliceUri_:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    :cond_0
    iget v0, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->cardName_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    :cond_1
    iget v0, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->cardCategory_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_2
    iget v0, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->bitField0_:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_3

    const/4 v0, 0x5

    iget-wide v1, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->cardScore_:D

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeDouble(ID)V

    :cond_3
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/UnknownFieldSetLite;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
