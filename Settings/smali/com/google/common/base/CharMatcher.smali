.class public abstract Lcom/google/common/base/CharMatcher;
.super Ljava/lang/Object;
.source "CharMatcher.java"

# interfaces
.implements Lcom/google/common/base/Predicate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/base/CharMatcher$FastMatcher;,
        Lcom/google/common/base/CharMatcher$Or;,
        Lcom/google/common/base/CharMatcher$RangesMatcher;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Predicate<",
        "Ljava/lang/Character;",
        ">;"
    }
.end annotation


# static fields
.field private static final NINES:Ljava/lang/String;

.field public static final NONE:Lcom/google/common/base/CharMatcher;

.field static final WHITESPACE_SHIFT:I


# instance fields
.field final description:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/google/common/base/CharMatcher$1;

    invoke-direct {v0}, Lcom/google/common/base/CharMatcher$1;-><init>()V

    new-instance v0, Lcom/google/common/base/CharMatcher$13;

    const/16 v1, 0x7f

    const/4 v2, 0x0

    const-string v3, "CharMatcher.ASCII"

    invoke-direct {v0, v3, v2, v1}, Lcom/google/common/base/CharMatcher$13;-><init>(Ljava/lang/String;CC)V

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v3, 0x1f

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    move v4, v2

    :goto_0
    const-string v5, "0\u0660\u06f0\u07c0\u0966\u09e6\u0a66\u0ae6\u0b66\u0be6\u0c66\u0ce6\u0d66\u0e50\u0ed0\u0f20\u1040\u1090\u17e0\u1810\u1946\u19d0\u1b50\u1bb0\u1c40\u1c50\ua620\ua8d0\ua900\uaa50\uff10"

    if-ge v4, v3, :cond_0

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    add-int/lit8 v5, v5, 0x9

    int-to-char v5, v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/common/base/CharMatcher;->NINES:Ljava/lang/String;

    new-instance v0, Lcom/google/common/base/CharMatcher$RangesMatcher;

    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    sget-object v5, Lcom/google/common/base/CharMatcher;->NINES:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    const-string v6, "CharMatcher.DIGIT"

    invoke-direct {v0, v6, v4, v5}, Lcom/google/common/base/CharMatcher$RangesMatcher;-><init>(Ljava/lang/String;[C[C)V

    new-instance v0, Lcom/google/common/base/CharMatcher$2;

    const-string v4, "CharMatcher.JAVA_DIGIT"

    invoke-direct {v0, v4}, Lcom/google/common/base/CharMatcher$2;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/google/common/base/CharMatcher$3;

    const-string v4, "CharMatcher.JAVA_LETTER"

    invoke-direct {v0, v4}, Lcom/google/common/base/CharMatcher$3;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/google/common/base/CharMatcher$4;

    const-string v4, "CharMatcher.JAVA_LETTER_OR_DIGIT"

    invoke-direct {v0, v4}, Lcom/google/common/base/CharMatcher$4;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/google/common/base/CharMatcher$5;

    const-string v4, "CharMatcher.JAVA_UPPER_CASE"

    invoke-direct {v0, v4}, Lcom/google/common/base/CharMatcher$5;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/google/common/base/CharMatcher$6;

    const-string v4, "CharMatcher.JAVA_LOWER_CASE"

    invoke-direct {v0, v4}, Lcom/google/common/base/CharMatcher$6;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/google/common/base/CharMatcher;->inRange(CC)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    const/16 v2, 0x9f

    invoke-static {v1, v2}, Lcom/google/common/base/CharMatcher;->inRange(CC)Lcom/google/common/base/CharMatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/base/CharMatcher;->or(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    const-string v1, "CharMatcher.JAVA_ISO_CONTROL"

    invoke-virtual {v0, v1}, Lcom/google/common/base/CharMatcher;->withToString(Ljava/lang/String;)Lcom/google/common/base/CharMatcher;

    new-instance v0, Lcom/google/common/base/CharMatcher$RangesMatcher;

    const-string v1, "\u0000\u007f\u00ad\u0600\u061c\u06dd\u070f\u1680\u180e\u2000\u2028\u205f\u2066\u2067\u2068\u2069\u206a\u3000\ud800\ufeff\ufff9\ufffa"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    const-string v2, " \u00a0\u00ad\u0604\u061c\u06dd\u070f\u1680\u180e\u200f\u202f\u2064\u2066\u2067\u2068\u2069\u206f\u3000\uf8ff\ufeff\ufff9\ufffb"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    const-string v4, "CharMatcher.INVISIBLE"

    invoke-direct {v0, v4, v1, v2}, Lcom/google/common/base/CharMatcher$RangesMatcher;-><init>(Ljava/lang/String;[C[C)V

    new-instance v0, Lcom/google/common/base/CharMatcher$RangesMatcher;

    const-string v1, "\u0000\u05be\u05d0\u05f3\u0600\u0750\u0e00\u1e00\u2100\ufb50\ufe70\uff61"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    const-string v2, "\u04f9\u05be\u05ea\u05f4\u06ff\u077f\u0e7f\u20af\u213a\ufdff\ufeff\uffdc"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    const-string v4, "CharMatcher.SINGLE_WIDTH"

    invoke-direct {v0, v4, v1, v2}, Lcom/google/common/base/CharMatcher$RangesMatcher;-><init>(Ljava/lang/String;[C[C)V

    new-instance v0, Lcom/google/common/base/CharMatcher$7;

    const-string v1, "CharMatcher.ANY"

    invoke-direct {v0, v1}, Lcom/google/common/base/CharMatcher$7;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/google/common/base/CharMatcher$8;

    const-string v1, "CharMatcher.NONE"

    invoke-direct {v0, v1}, Lcom/google/common/base/CharMatcher$8;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/common/base/CharMatcher;->NONE:Lcom/google/common/base/CharMatcher;

    invoke-static {v3}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v0

    sput v0, Lcom/google/common/base/CharMatcher;->WHITESPACE_SHIFT:I

    new-instance v0, Lcom/google/common/base/CharMatcher$15;

    const-string v1, "WHITESPACE"

    invoke-direct {v0, v1}, Lcom/google/common/base/CharMatcher$15;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/base/CharMatcher;->description:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/base/CharMatcher;->description:Ljava/lang/String;

    return-void
.end method

.method public static inRange(CC)Lcom/google/common/base/CharMatcher;
    .locals 3

    if-lt p1, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/MoreObjects;->checkArgument(Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CharMatcher.inRange(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/google/common/base/CharMatcher;->showCharacter(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/google/common/base/CharMatcher;->showCharacter(C)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\')"

    invoke-static {v0, v1, v2}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline21(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/common/base/CharMatcher$13;

    invoke-direct {v1, v0, p0, p1}, Lcom/google/common/base/CharMatcher$13;-><init>(Ljava/lang/String;CC)V

    return-object v1
.end method

.method private static showCharacter(C)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x6

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    rsub-int/lit8 v3, v1, 0x5

    and-int/lit8 v4, p0, 0xf

    const-string v5, "0123456789ABCDEF"

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aput-char v4, v0, v3

    shr-int/2addr p0, v2

    int-to-char p0, p0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/lang/String;->copyValueOf([C)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :array_0
    .array-data 2
        0x5cs
        0x75s
        0x0s
        0x0s
        0x0s
        0x0s
    .end array-data
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result p0

    return p0
.end method

.method public abstract matches(C)Z
.end method

.method public or(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;
    .locals 3

    new-instance v0, Lcom/google/common/base/CharMatcher$Or;

    if-eqz p1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CharMatcher.or("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lcom/google/common/base/CharMatcher$Or;-><init>(Lcom/google/common/base/CharMatcher;Lcom/google/common/base/CharMatcher;Ljava/lang/String;)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/common/base/CharMatcher;->description:Ljava/lang/String;

    return-object p0
.end method

.method withToString(Ljava/lang/String;)Lcom/google/common/base/CharMatcher;
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
