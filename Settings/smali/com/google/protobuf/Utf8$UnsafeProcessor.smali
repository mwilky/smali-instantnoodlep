.class final Lcom/google/protobuf/Utf8$UnsafeProcessor;
.super Lcom/google/protobuf/Utf8$Processor;
.source "Utf8.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/Utf8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "UnsafeProcessor"
.end annotation


# static fields
.field private static final ARRAY_BASE_OFFSET:I

.field private static final AVAILABLE:Z

.field private static final BUFFER_ADDRESS_OFFSET:J

.field private static final UNSAFE:Lsun/misc/Unsafe;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lcom/google/protobuf/Utf8$UnsafeProcessor$1;

    invoke-direct {v1}, Lcom/google/protobuf/Utf8$UnsafeProcessor$1;-><init>()V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/misc/Unsafe;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-object v1, v0

    :goto_0
    invoke-static {}, Lcom/google/protobuf/Utf8;->access$700()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    const-string v4, "available"

    const-string v5, "unavailable"

    if-eqz v1, :cond_0

    move-object v6, v4

    goto :goto_1

    :cond_0
    move-object v6, v5

    :goto_1
    const-string v7, "sun.misc.Unsafe: {}"

    invoke-virtual {v2, v3, v7, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    sput-object v1, Lcom/google/protobuf/Utf8$UnsafeProcessor;->UNSAFE:Lsun/misc/Unsafe;

    const-class v1, Ljava/nio/Buffer;

    const-string v2, "address"

    const/4 v3, 0x1

    :try_start_1
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v6

    :catchall_1
    invoke-static {}, Lcom/google/protobuf/Utf8;->access$700()Ljava/util/logging/Logger;

    move-result-object v6

    sget-object v7, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v9, 0x0

    aput-object v1, v8, v9

    aput-object v2, v8, v3

    const/4 v1, 0x2

    if-eqz v0, :cond_1

    goto :goto_2

    :cond_1
    move-object v4, v5

    :goto_2
    aput-object v4, v8, v1

    const-string v1, "{0}.{1}: {2}"

    invoke-virtual {v6, v7, v1, v8}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_3

    sget-object v4, Lcom/google/protobuf/Utf8$UnsafeProcessor;->UNSAFE:Lsun/misc/Unsafe;

    if-nez v4, :cond_2

    goto :goto_3

    :cond_2
    invoke-virtual {v4, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v4

    goto :goto_4

    :cond_3
    :goto_3
    move-wide v4, v1

    :goto_4
    sput-wide v4, Lcom/google/protobuf/Utf8$UnsafeProcessor;->BUFFER_ADDRESS_OFFSET:J

    sget-object v0, Lcom/google/protobuf/Utf8$UnsafeProcessor;->UNSAFE:Lsun/misc/Unsafe;

    if-nez v0, :cond_4

    const/4 v0, -0x1

    goto :goto_5

    :cond_4
    const-class v4, [B

    invoke-virtual {v0, v4}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v0

    :goto_5
    sput v0, Lcom/google/protobuf/Utf8$UnsafeProcessor;->ARRAY_BASE_OFFSET:I

    sget-wide v4, Lcom/google/protobuf/Utf8$UnsafeProcessor;->BUFFER_ADDRESS_OFFSET:J

    cmp-long v0, v4, v1

    if-eqz v0, :cond_5

    sget v0, Lcom/google/protobuf/Utf8$UnsafeProcessor;->ARRAY_BASE_OFFSET:I

    rem-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_5

    goto :goto_6

    :cond_5
    move v3, v9

    :goto_6
    sput-boolean v3, Lcom/google/protobuf/Utf8$UnsafeProcessor;->AVAILABLE:Z

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/protobuf/Utf8$Processor;-><init>()V

    return-void
.end method

.method static synthetic access$800(Ljava/lang/Class;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Class;

    const-class v2, Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "arrayBaseOffset"

    invoke-virtual {p0, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Class;

    const-class v4, Ljava/lang/Object;

    aput-object v4, v2, v3

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v0

    const-string v4, "getByte"

    invoke-virtual {p0, v4, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const-class v5, Ljava/lang/Object;

    aput-object v5, v2, v3

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v5, v2, v0

    sget-object v5, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v5, v2, v1

    const-string v5, "putByte"

    invoke-virtual {p0, v5, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v2, v1, [Ljava/lang/Class;

    const-class v6, Ljava/lang/Object;

    aput-object v6, v2, v3

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v2, v0

    const-string v6, "getLong"

    invoke-virtual {p0, v6, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v2, v0, [Ljava/lang/Class;

    const-class v7, Ljava/lang/reflect/Field;

    aput-object v7, v2, v3

    const-string v7, "objectFieldOffset"

    invoke-virtual {p0, v7, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v2, v0, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v2, v3

    invoke-virtual {p0, v4, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v2, v1, [Ljava/lang/Class;

    const-class v4, Ljava/lang/Object;

    aput-object v4, v2, v3

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v0

    invoke-virtual {p0, v6, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v1, v1, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v3

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v0

    invoke-virtual {p0, v5, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v0, v0, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v3

    invoke-virtual {p0, v6, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    return-void
.end method

.method static isAvailable()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/Utf8$UnsafeProcessor;->AVAILABLE:Z

    return v0
.end method


# virtual methods
.method encodeUtf8(Ljava/lang/CharSequence;[BII)I
    .locals 17

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    sget v4, Lcom/google/protobuf/Utf8$UnsafeProcessor;->ARRAY_BASE_OFFSET:I

    add-int/2addr v4, v2

    int-to-long v4, v4

    int-to-long v6, v3

    add-long/2addr v6, v4

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    const-string v9, " at index "

    const-string v10, "Failed writing "

    if-gt v8, v3, :cond_c

    array-length v11, v1

    sub-int/2addr v11, v3

    if-lt v11, v2, :cond_c

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x80

    const-wide/16 v11, 0x1

    if-ge v2, v8, :cond_0

    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v13

    if-ge v13, v3, :cond_0

    sget-object v3, Lcom/google/protobuf/Utf8$UnsafeProcessor;->UNSAFE:Lsun/misc/Unsafe;

    add-long/2addr v11, v4

    int-to-byte v13, v13

    invoke-virtual {v3, v1, v4, v5, v13}, Lsun/misc/Unsafe;->putByte(Ljava/lang/Object;JB)V

    add-int/lit8 v2, v2, 0x1

    move-wide v4, v11

    goto :goto_0

    :cond_0
    if-ne v2, v8, :cond_1

    sget v0, Lcom/google/protobuf/Utf8$UnsafeProcessor;->ARRAY_BASE_OFFSET:I

    goto/16 :goto_4

    :cond_1
    :goto_1
    if-ge v2, v8, :cond_b

    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v13

    if-ge v13, v3, :cond_2

    cmp-long v14, v4, v6

    if-gez v14, :cond_2

    sget-object v14, Lcom/google/protobuf/Utf8$UnsafeProcessor;->UNSAFE:Lsun/misc/Unsafe;

    add-long v15, v4, v11

    int-to-byte v13, v13

    invoke-virtual {v14, v1, v4, v5, v13}, Lsun/misc/Unsafe;->putByte(Ljava/lang/Object;JB)V

    move-object/from16 p0, v9

    move-wide v4, v15

    :goto_2
    move-wide v15, v6

    goto/16 :goto_3

    :cond_2
    const/16 v3, 0x800

    if-ge v13, v3, :cond_3

    const-wide/16 v14, 0x2

    sub-long v14, v6, v14

    cmp-long v3, v4, v14

    if-gtz v3, :cond_3

    sget-object v3, Lcom/google/protobuf/Utf8$UnsafeProcessor;->UNSAFE:Lsun/misc/Unsafe;

    add-long v14, v4, v11

    move-object/from16 p0, v9

    ushr-int/lit8 v9, v13, 0x6

    or-int/lit16 v9, v9, 0x3c0

    int-to-byte v9, v9

    invoke-virtual {v3, v1, v4, v5, v9}, Lsun/misc/Unsafe;->putByte(Ljava/lang/Object;JB)V

    sget-object v3, Lcom/google/protobuf/Utf8$UnsafeProcessor;->UNSAFE:Lsun/misc/Unsafe;

    add-long v4, v14, v11

    and-int/lit8 v9, v13, 0x3f

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    invoke-virtual {v3, v1, v14, v15, v9}, Lsun/misc/Unsafe;->putByte(Ljava/lang/Object;JB)V

    const/16 v3, 0x80

    goto :goto_2

    :cond_3
    move-object/from16 p0, v9

    const v3, 0xdfff

    const v9, 0xd800

    if-lt v13, v9, :cond_4

    if-ge v3, v13, :cond_5

    :cond_4
    const-wide/16 v14, 0x3

    sub-long v14, v6, v14

    cmp-long v14, v4, v14

    if-gtz v14, :cond_5

    sget-object v3, Lcom/google/protobuf/Utf8$UnsafeProcessor;->UNSAFE:Lsun/misc/Unsafe;

    add-long v14, v4, v11

    ushr-int/lit8 v9, v13, 0xc

    or-int/lit16 v9, v9, 0x1e0

    int-to-byte v9, v9

    invoke-virtual {v3, v1, v4, v5, v9}, Lsun/misc/Unsafe;->putByte(Ljava/lang/Object;JB)V

    sget-object v3, Lcom/google/protobuf/Utf8$UnsafeProcessor;->UNSAFE:Lsun/misc/Unsafe;

    add-long/2addr v11, v14

    ushr-int/lit8 v4, v13, 0x6

    and-int/lit8 v4, v4, 0x3f

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    invoke-virtual {v3, v1, v14, v15, v4}, Lsun/misc/Unsafe;->putByte(Ljava/lang/Object;JB)V

    sget-object v3, Lcom/google/protobuf/Utf8$UnsafeProcessor;->UNSAFE:Lsun/misc/Unsafe;

    const-wide/16 v4, 0x1

    add-long/2addr v4, v11

    and-int/lit8 v9, v13, 0x3f

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    invoke-virtual {v3, v1, v11, v12, v9}, Lsun/misc/Unsafe;->putByte(Ljava/lang/Object;JB)V

    const/16 v3, 0x80

    const-wide/16 v11, 0x1

    goto :goto_2

    :cond_5
    const-wide/16 v11, 0x4

    sub-long v11, v6, v11

    cmp-long v11, v4, v11

    const/4 v12, 0x0

    if-gtz v11, :cond_8

    add-int/lit8 v3, v2, 0x1

    if-eq v3, v8, :cond_7

    invoke-interface {v0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v13, v2}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-static {v13, v2}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v2

    sget-object v9, Lcom/google/protobuf/Utf8$UnsafeProcessor;->UNSAFE:Lsun/misc/Unsafe;

    const-wide/16 v11, 0x1

    add-long v13, v4, v11

    ushr-int/lit8 v15, v2, 0x12

    or-int/lit16 v15, v15, 0xf0

    int-to-byte v15, v15

    invoke-virtual {v9, v1, v4, v5, v15}, Lsun/misc/Unsafe;->putByte(Ljava/lang/Object;JB)V

    sget-object v4, Lcom/google/protobuf/Utf8$UnsafeProcessor;->UNSAFE:Lsun/misc/Unsafe;

    move-wide v15, v6

    add-long v5, v13, v11

    ushr-int/lit8 v7, v2, 0xc

    and-int/lit8 v7, v7, 0x3f

    const/16 v9, 0x80

    or-int/2addr v7, v9

    int-to-byte v7, v7

    invoke-virtual {v4, v1, v13, v14, v7}, Lsun/misc/Unsafe;->putByte(Ljava/lang/Object;JB)V

    sget-object v4, Lcom/google/protobuf/Utf8$UnsafeProcessor;->UNSAFE:Lsun/misc/Unsafe;

    add-long v13, v5, v11

    ushr-int/lit8 v7, v2, 0x6

    and-int/lit8 v7, v7, 0x3f

    or-int/2addr v7, v9

    int-to-byte v7, v7

    invoke-virtual {v4, v1, v5, v6, v7}, Lsun/misc/Unsafe;->putByte(Ljava/lang/Object;JB)V

    sget-object v4, Lcom/google/protobuf/Utf8$UnsafeProcessor;->UNSAFE:Lsun/misc/Unsafe;

    add-long v5, v13, v11

    and-int/lit8 v2, v2, 0x3f

    or-int/2addr v2, v9

    int-to-byte v2, v2

    invoke-virtual {v4, v1, v13, v14, v2}, Lsun/misc/Unsafe;->putByte(Ljava/lang/Object;JB)V

    move v2, v3

    move-wide v4, v5

    move v3, v9

    :goto_3
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v9, p0

    move-wide v6, v15

    goto/16 :goto_1

    :cond_6
    move v2, v3

    :cond_7
    new-instance v0, Lcom/google/protobuf/Utf8$UnpairedSurrogateException;

    add-int/lit8 v2, v2, -0x1

    invoke-direct {v0, v2, v8, v12}, Lcom/google/protobuf/Utf8$UnpairedSurrogateException;-><init>(IILcom/google/protobuf/Utf8$1;)V

    throw v0

    :cond_8
    if-gt v9, v13, :cond_a

    if-gt v13, v3, :cond_a

    add-int/lit8 v1, v2, 0x1

    if-eq v1, v8, :cond_9

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v13, v0}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v0

    if-nez v0, :cond_a

    :cond_9
    new-instance v0, Lcom/google/protobuf/Utf8$UnpairedSurrogateException;

    invoke-direct {v0, v2, v8, v12}, Lcom/google/protobuf/Utf8$UnpairedSurrogateException;-><init>(IILcom/google/protobuf/Utf8$1;)V

    throw v0

    :cond_a
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-object/from16 v6, p0

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    sget v0, Lcom/google/protobuf/Utf8$UnsafeProcessor;->ARRAY_BASE_OFFSET:I

    :goto_4
    int-to-long v0, v0

    sub-long/2addr v4, v0

    long-to-int v0, v4

    return v0

    :cond_c
    move-object v6, v9

    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-static {v10}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline23(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v8, v8, -0x1

    invoke-interface {v0, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int v0, v2, v3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
