.class final Lcom/oneplus/support/core/os/LocaleListHelper;
.super Ljava/lang/Object;
.source "LocaleListHelper.java"


# annotations
.annotation build Lcom/oneplus/support/annotation/RestrictTo;
    value = {
        .enum Lcom/oneplus/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Lcom/oneplus/support/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final EN_LATN:Ljava/util/Locale;

.field private static final LOCALE_AR_XB:Ljava/util/Locale;

.field private static final LOCALE_EN_XA:Ljava/util/Locale;

.field private static final NUM_PSEUDO_LOCALES:I = 0x2

.field private static final STRING_AR_XB:Ljava/lang/String; = "ar-XB"

.field private static final STRING_EN_XA:Ljava/lang/String; = "en-XA"

.field private static sDefaultAdjustedLocaleList:Lcom/oneplus/support/core/os/LocaleListHelper;
    .annotation build Lcom/oneplus/support/annotation/GuardedBy;
        value = "sLock"
    .end annotation
.end field

.field private static sDefaultLocaleList:Lcom/oneplus/support/core/os/LocaleListHelper;
    .annotation build Lcom/oneplus/support/annotation/GuardedBy;
        value = "sLock"
    .end annotation
.end field

.field private static final sEmptyList:[Ljava/util/Locale;

.field private static final sEmptyLocaleList:Lcom/oneplus/support/core/os/LocaleListHelper;

.field private static sLastDefaultLocale:Ljava/util/Locale;
    .annotation build Lcom/oneplus/support/annotation/GuardedBy;
        value = "sLock"
    .end annotation
.end field

.field private static sLastExplicitlySetLocaleList:Lcom/oneplus/support/core/os/LocaleListHelper;
    .annotation build Lcom/oneplus/support/annotation/GuardedBy;
        value = "sLock"
    .end annotation
.end field

.field private static final sLock:Ljava/lang/Object;


# instance fields
.field private final mList:[Ljava/util/Locale;

.field private final mStringRepresentation:Ljava/lang/String;
    .annotation build Lcom/oneplus/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/util/Locale;

    sput-object v1, Lcom/oneplus/support/core/os/LocaleListHelper;->sEmptyList:[Ljava/util/Locale;

    new-instance v1, Lcom/oneplus/support/core/os/LocaleListHelper;

    new-array v0, v0, [Ljava/util/Locale;

    invoke-direct {v1, v0}, Lcom/oneplus/support/core/os/LocaleListHelper;-><init>([Ljava/util/Locale;)V

    sput-object v1, Lcom/oneplus/support/core/os/LocaleListHelper;->sEmptyLocaleList:Lcom/oneplus/support/core/os/LocaleListHelper;

    new-instance v0, Ljava/util/Locale;

    const-string v1, "en"

    const-string v2, "XA"

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/oneplus/support/core/os/LocaleListHelper;->LOCALE_EN_XA:Ljava/util/Locale;

    new-instance v0, Ljava/util/Locale;

    const-string v1, "ar"

    const-string v2, "XB"

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/oneplus/support/core/os/LocaleListHelper;->LOCALE_AR_XB:Ljava/util/Locale;

    const-string v0, "en-Latn"

    invoke-static {v0}, Lcom/oneplus/support/core/os/LocaleHelper;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Lcom/oneplus/support/core/os/LocaleListHelper;->EN_LATN:Ljava/util/Locale;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/oneplus/support/core/os/LocaleListHelper;->sLock:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-object v0, Lcom/oneplus/support/core/os/LocaleListHelper;->sLastExplicitlySetLocaleList:Lcom/oneplus/support/core/os/LocaleListHelper;

    sput-object v0, Lcom/oneplus/support/core/os/LocaleListHelper;->sDefaultLocaleList:Lcom/oneplus/support/core/os/LocaleListHelper;

    sput-object v0, Lcom/oneplus/support/core/os/LocaleListHelper;->sDefaultAdjustedLocaleList:Lcom/oneplus/support/core/os/LocaleListHelper;

    sput-object v0, Lcom/oneplus/support/core/os/LocaleListHelper;->sLastDefaultLocale:Ljava/util/Locale;

    return-void
.end method

.method constructor <init>(Ljava/util/Locale;Lcom/oneplus/support/core/os/LocaleListHelper;)V
    .locals 7
    .param p1    # Ljava/util/Locale;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/oneplus/support/annotation/RestrictTo;
        value = {
            .enum Lcom/oneplus/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Lcom/oneplus/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_a

    const/4 v0, 0x0

    if-nez p2, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v1, p2, Lcom/oneplus/support/core/os/LocaleListHelper;->mList:[Ljava/util/Locale;

    array-length v1, v1

    :goto_0
    const/4 v2, -0x1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_2

    iget-object v4, p2, Lcom/oneplus/support/core/os/LocaleListHelper;->mList:[Ljava/util/Locale;

    aget-object v4, v4, v3

    invoke-virtual {p1, v4}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v2, v3

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    const/4 v4, 0x1

    goto :goto_3

    :cond_3
    move v4, v0

    :goto_3
    add-int/2addr v4, v1

    new-array v5, v4, [Ljava/util/Locale;

    invoke-virtual {p1}, Ljava/util/Locale;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Locale;

    aput-object v6, v5, v0

    if-ne v2, v3, :cond_5

    const/4 v0, 0x0

    :goto_4
    if-ge v0, v1, :cond_4

    add-int/lit8 v3, v0, 0x1

    iget-object v6, p2, Lcom/oneplus/support/core/os/LocaleListHelper;->mList:[Ljava/util/Locale;

    aget-object v6, v6, v0

    invoke-virtual {v6}, Ljava/util/Locale;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Locale;

    aput-object v6, v5, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_4
    goto :goto_7

    :cond_5
    const/4 v0, 0x0

    :goto_5
    if-ge v0, v2, :cond_6

    add-int/lit8 v3, v0, 0x1

    iget-object v6, p2, Lcom/oneplus/support/core/os/LocaleListHelper;->mList:[Ljava/util/Locale;

    aget-object v6, v6, v0

    invoke-virtual {v6}, Ljava/util/Locale;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Locale;

    aput-object v6, v5, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_6
    add-int/lit8 v0, v2, 0x1

    :goto_6
    if-ge v0, v1, :cond_7

    iget-object v3, p2, Lcom/oneplus/support/core/os/LocaleListHelper;->mList:[Ljava/util/Locale;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Ljava/util/Locale;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Locale;

    aput-object v3, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_7
    :goto_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    :goto_8
    if-ge v3, v4, :cond_9

    aget-object v6, v5, v3

    invoke-static {v6}, Lcom/oneplus/support/core/os/LocaleHelper;->toLanguageTag(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v4, -0x1

    if-ge v3, v6, :cond_8

    const/16 v6, 0x2c

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_9
    iput-object v5, p0, Lcom/oneplus/support/core/os/LocaleListHelper;->mList:[Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/support/core/os/LocaleListHelper;->mStringRepresentation:Ljava/lang/String;

    return-void

    :cond_a
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "topLocale is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method varargs constructor <init>([Ljava/util/Locale;)V
    .locals 8
    .param p1    # [Ljava/util/Locale;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/oneplus/support/annotation/RestrictTo;
        value = {
            .enum Lcom/oneplus/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Lcom/oneplus/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p1

    if-nez v0, :cond_0

    sget-object v0, Lcom/oneplus/support/core/os/LocaleListHelper;->sEmptyList:[Ljava/util/Locale;

    iput-object v0, p0, Lcom/oneplus/support/core/os/LocaleListHelper;->mList:[Ljava/util/Locale;

    const-string v0, ""

    iput-object v0, p0, Lcom/oneplus/support/core/os/LocaleListHelper;->mStringRepresentation:Ljava/lang/String;

    goto/16 :goto_1

    :cond_0
    array-length v0, p1

    new-array v0, v0, [Ljava/util/Locale;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_4

    aget-object v4, p1, v3

    const-string v5, "list["

    if-eqz v4, :cond_3

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v4}, Ljava/util/Locale;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Locale;

    aput-object v5, v0, v3

    invoke-static {v5}, Lcom/oneplus/support/core/os/LocaleHelper;->toLanguageTag(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v6, p1

    add-int/lit8 v6, v6, -0x1

    if-ge v3, v6, :cond_1

    const/16 v6, 0x2c

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v1, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "] is a repetition"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_3
    new-instance v6, Ljava/lang/NullPointerException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "] is null"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_4
    iput-object v0, p0, Lcom/oneplus/support/core/os/LocaleListHelper;->mList:[Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/support/core/os/LocaleListHelper;->mStringRepresentation:Ljava/lang/String;

    :goto_1
    return-void
.end method

.method private computeFirstMatch(Ljava/util/Collection;Z)Ljava/util/Locale;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/util/Locale;"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/oneplus/support/core/os/LocaleListHelper;->computeFirstMatchIndex(Ljava/util/Collection;Z)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/oneplus/support/core/os/LocaleListHelper;->mList:[Ljava/util/Locale;

    aget-object v1, v1, v0

    :goto_0
    return-object v1
.end method

.method private computeFirstMatchIndex(Ljava/util/Collection;Z)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;Z)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/oneplus/support/core/os/LocaleListHelper;->mList:[Ljava/util/Locale;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    return v2

    :cond_0
    array-length v0, v0

    if-nez v0, :cond_1

    const/4 v0, -0x1

    return v0

    :cond_1
    const v0, 0x7fffffff

    if-eqz p2, :cond_3

    sget-object v1, Lcom/oneplus/support/core/os/LocaleListHelper;->EN_LATN:Ljava/util/Locale;

    invoke-direct {p0, v1}, Lcom/oneplus/support/core/os/LocaleListHelper;->findFirstMatchIndex(Ljava/util/Locale;)I

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    if-ge v1, v0, :cond_3

    move v0, v1

    :cond_3
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/oneplus/support/core/os/LocaleHelper;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/oneplus/support/core/os/LocaleListHelper;->findFirstMatchIndex(Ljava/util/Locale;)I

    move-result v5

    if-nez v5, :cond_4

    return v2

    :cond_4
    if-ge v5, v0, :cond_5

    move v0, v5

    :cond_5
    goto :goto_0

    :cond_6
    const v1, 0x7fffffff

    if-ne v0, v1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method private findFirstMatchIndex(Ljava/util/Locale;)I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/oneplus/support/core/os/LocaleListHelper;->mList:[Ljava/util/Locale;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object v1, v1, v0

    invoke-static {p1, v1}, Lcom/oneplus/support/core/os/LocaleListHelper;->matchScore(Ljava/util/Locale;Ljava/util/Locale;)I

    move-result v1

    if-lez v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const v0, 0x7fffffff

    return v0
.end method

.method static forLanguageTags(Ljava/lang/String;)Lcom/oneplus/support/core/os/LocaleListHelper;
    .locals 4
    .param p0    # Ljava/lang/String;
        .annotation build Lcom/oneplus/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/oneplus/support/annotation/NonNull;
    .end annotation

    .annotation build Lcom/oneplus/support/annotation/RestrictTo;
        value = {
            .enum Lcom/oneplus/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Lcom/oneplus/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, -0x1

    const-string v1, ","

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    new-array v1, v1, [Ljava/util/Locale;

    const/4 v2, 0x0

    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    aget-object v3, v0, v2

    invoke-static {v3}, Lcom/oneplus/support/core/os/LocaleHelper;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v2, Lcom/oneplus/support/core/os/LocaleListHelper;

    invoke-direct {v2, v1}, Lcom/oneplus/support/core/os/LocaleListHelper;-><init>([Ljava/util/Locale;)V

    return-object v2

    :cond_2
    :goto_1
    invoke-static {}, Lcom/oneplus/support/core/os/LocaleListHelper;->getEmptyLocaleList()Lcom/oneplus/support/core/os/LocaleListHelper;

    move-result-object v0

    return-object v0
.end method

.method static getAdjustedDefault()Lcom/oneplus/support/core/os/LocaleListHelper;
    .locals 2
    .annotation build Lcom/oneplus/support/annotation/NonNull;
    .end annotation

    .annotation build Lcom/oneplus/support/annotation/Size;
        min = 0x1L
    .end annotation

    invoke-static {}, Lcom/oneplus/support/core/os/LocaleListHelper;->getDefault()Lcom/oneplus/support/core/os/LocaleListHelper;

    sget-object v0, Lcom/oneplus/support/core/os/LocaleListHelper;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/oneplus/support/core/os/LocaleListHelper;->sDefaultAdjustedLocaleList:Lcom/oneplus/support/core/os/LocaleListHelper;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static getDefault()Lcom/oneplus/support/core/os/LocaleListHelper;
    .locals 4
    .annotation build Lcom/oneplus/support/annotation/NonNull;
    .end annotation

    .annotation build Lcom/oneplus/support/annotation/RestrictTo;
        value = {
            .enum Lcom/oneplus/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Lcom/oneplus/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation build Lcom/oneplus/support/annotation/Size;
        min = 0x1L
    .end annotation

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    sget-object v1, Lcom/oneplus/support/core/os/LocaleListHelper;->sLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/oneplus/support/core/os/LocaleListHelper;->sLastDefaultLocale:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    sput-object v0, Lcom/oneplus/support/core/os/LocaleListHelper;->sLastDefaultLocale:Ljava/util/Locale;

    sget-object v2, Lcom/oneplus/support/core/os/LocaleListHelper;->sDefaultLocaleList:Lcom/oneplus/support/core/os/LocaleListHelper;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/oneplus/support/core/os/LocaleListHelper;->sDefaultLocaleList:Lcom/oneplus/support/core/os/LocaleListHelper;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/oneplus/support/core/os/LocaleListHelper;->get(I)Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/oneplus/support/core/os/LocaleListHelper;->sDefaultLocaleList:Lcom/oneplus/support/core/os/LocaleListHelper;

    monitor-exit v1

    return-object v2

    :cond_0
    new-instance v2, Lcom/oneplus/support/core/os/LocaleListHelper;

    sget-object v3, Lcom/oneplus/support/core/os/LocaleListHelper;->sLastExplicitlySetLocaleList:Lcom/oneplus/support/core/os/LocaleListHelper;

    invoke-direct {v2, v0, v3}, Lcom/oneplus/support/core/os/LocaleListHelper;-><init>(Ljava/util/Locale;Lcom/oneplus/support/core/os/LocaleListHelper;)V

    sput-object v2, Lcom/oneplus/support/core/os/LocaleListHelper;->sDefaultLocaleList:Lcom/oneplus/support/core/os/LocaleListHelper;

    sget-object v2, Lcom/oneplus/support/core/os/LocaleListHelper;->sDefaultLocaleList:Lcom/oneplus/support/core/os/LocaleListHelper;

    sput-object v2, Lcom/oneplus/support/core/os/LocaleListHelper;->sDefaultAdjustedLocaleList:Lcom/oneplus/support/core/os/LocaleListHelper;

    :cond_1
    sget-object v2, Lcom/oneplus/support/core/os/LocaleListHelper;->sDefaultLocaleList:Lcom/oneplus/support/core/os/LocaleListHelper;

    monitor-exit v1

    return-object v2

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method static getEmptyLocaleList()Lcom/oneplus/support/core/os/LocaleListHelper;
    .locals 1
    .annotation build Lcom/oneplus/support/annotation/NonNull;
    .end annotation

    .annotation build Lcom/oneplus/support/annotation/RestrictTo;
        value = {
            .enum Lcom/oneplus/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Lcom/oneplus/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    sget-object v0, Lcom/oneplus/support/core/os/LocaleListHelper;->sEmptyLocaleList:Lcom/oneplus/support/core/os/LocaleListHelper;

    return-object v0
.end method

.method private static getLikelyScript(Ljava/util/Locale;)Ljava/lang/String;
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, ""

    const/16 v2, 0x15

    if-lt v0, v2, :cond_1

    invoke-virtual {p0}, Ljava/util/Locale;->getScript()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    return-object v0

    :cond_0
    return-object v1

    :cond_1
    return-object v1
.end method

.method private static isPseudoLocale(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "en-XA"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "ar-XB"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static isPseudoLocale(Ljava/util/Locale;)Z
    .locals 1

    sget-object v0, Lcom/oneplus/support/core/os/LocaleListHelper;->LOCALE_EN_XA:Ljava/util/Locale;

    invoke-virtual {v0, p0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/oneplus/support/core/os/LocaleListHelper;->LOCALE_AR_XB:Ljava/util/Locale;

    invoke-virtual {v0, p0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method static isPseudoLocalesOnly([Ljava/lang/String;)Z
    .locals 6
    .param p0    # [Ljava/lang/String;
        .annotation build Lcom/oneplus/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/oneplus/support/annotation/RestrictTo;
        value = {
            .enum Lcom/oneplus/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Lcom/oneplus/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    array-length v1, p0

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-le v1, v2, :cond_1

    return v3

    :cond_1
    array-length v1, p0

    move v2, v3

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v4, p0, v2

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {v4}, Lcom/oneplus/support/core/os/LocaleListHelper;->isPseudoLocale(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    return v3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v0
.end method

.method private static matchScore(Ljava/util/Locale;Ljava/util/Locale;)I
    .locals 5
    .annotation build Lcom/oneplus/support/annotation/IntRange;
        from = 0x0L
        to = 0x1L
    .end annotation

    invoke-virtual {p0, p1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    invoke-static {p0}, Lcom/oneplus/support/core/os/LocaleListHelper;->isPseudoLocale(Ljava/util/Locale;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {p1}, Lcom/oneplus/support/core/os/LocaleListHelper;->isPseudoLocale(Ljava/util/Locale;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {p0}, Lcom/oneplus/support/core/os/LocaleListHelper;->getLikelyScript(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1

    :cond_4
    :goto_0
    nop

    :goto_1
    return v1

    :cond_5
    invoke-static {p1}, Lcom/oneplus/support/core/os/LocaleListHelper;->getLikelyScript(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2

    :cond_6
    :goto_2
    return v2
.end method

.method static setDefault(Lcom/oneplus/support/core/os/LocaleListHelper;)V
    .locals 1
    .param p0    # Lcom/oneplus/support/core/os/LocaleListHelper;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation

        .annotation build Lcom/oneplus/support/annotation/Size;
            min = 0x1L
        .end annotation
    .end param
    .annotation build Lcom/oneplus/support/annotation/RestrictTo;
        value = {
            .enum Lcom/oneplus/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Lcom/oneplus/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/oneplus/support/core/os/LocaleListHelper;->setDefault(Lcom/oneplus/support/core/os/LocaleListHelper;I)V

    return-void
.end method

.method static setDefault(Lcom/oneplus/support/core/os/LocaleListHelper;I)V
    .locals 4
    .param p0    # Lcom/oneplus/support/core/os/LocaleListHelper;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation

        .annotation build Lcom/oneplus/support/annotation/Size;
            min = 0x1L
        .end annotation
    .end param
    .annotation build Lcom/oneplus/support/annotation/RestrictTo;
        value = {
            .enum Lcom/oneplus/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Lcom/oneplus/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/oneplus/support/core/os/LocaleListHelper;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/oneplus/support/core/os/LocaleListHelper;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/oneplus/support/core/os/LocaleListHelper;->get(I)Ljava/util/Locale;

    move-result-object v1

    sput-object v1, Lcom/oneplus/support/core/os/LocaleListHelper;->sLastDefaultLocale:Ljava/util/Locale;

    sget-object v1, Lcom/oneplus/support/core/os/LocaleListHelper;->sLastDefaultLocale:Ljava/util/Locale;

    invoke-static {v1}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    sput-object p0, Lcom/oneplus/support/core/os/LocaleListHelper;->sLastExplicitlySetLocaleList:Lcom/oneplus/support/core/os/LocaleListHelper;

    sput-object p0, Lcom/oneplus/support/core/os/LocaleListHelper;->sDefaultLocaleList:Lcom/oneplus/support/core/os/LocaleListHelper;

    if-nez p1, :cond_0

    sget-object v1, Lcom/oneplus/support/core/os/LocaleListHelper;->sDefaultLocaleList:Lcom/oneplus/support/core/os/LocaleListHelper;

    sput-object v1, Lcom/oneplus/support/core/os/LocaleListHelper;->sDefaultAdjustedLocaleList:Lcom/oneplus/support/core/os/LocaleListHelper;

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/oneplus/support/core/os/LocaleListHelper;

    sget-object v2, Lcom/oneplus/support/core/os/LocaleListHelper;->sLastDefaultLocale:Ljava/util/Locale;

    sget-object v3, Lcom/oneplus/support/core/os/LocaleListHelper;->sDefaultLocaleList:Lcom/oneplus/support/core/os/LocaleListHelper;

    invoke-direct {v1, v2, v3}, Lcom/oneplus/support/core/os/LocaleListHelper;-><init>(Ljava/util/Locale;Lcom/oneplus/support/core/os/LocaleListHelper;)V

    sput-object v1, Lcom/oneplus/support/core/os/LocaleListHelper;->sDefaultAdjustedLocaleList:Lcom/oneplus/support/core/os/LocaleListHelper;

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "locales is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "locales is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/oneplus/support/core/os/LocaleListHelper;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/oneplus/support/core/os/LocaleListHelper;

    iget-object v1, v1, Lcom/oneplus/support/core/os/LocaleListHelper;->mList:[Ljava/util/Locale;

    iget-object v3, p0, Lcom/oneplus/support/core/os/LocaleListHelper;->mList:[Ljava/util/Locale;

    array-length v3, v3

    array-length v4, v1

    if-eq v3, v4, :cond_2

    return v2

    :cond_2
    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lcom/oneplus/support/core/os/LocaleListHelper;->mList:[Ljava/util/Locale;

    array-length v5, v4

    if-ge v3, v5, :cond_4

    aget-object v4, v4, v3

    aget-object v5, v1, v3

    invoke-virtual {v4, v5}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    return v2

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return v0
.end method

.method get(I)Ljava/util/Locale;
    .locals 2
    .annotation build Lcom/oneplus/support/annotation/RestrictTo;
        value = {
            .enum Lcom/oneplus/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Lcom/oneplus/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/oneplus/support/core/os/LocaleListHelper;->mList:[Ljava/util/Locale;

    array-length v1, v0

    if-ge p1, v1, :cond_0

    aget-object v0, v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method getFirstMatch([Ljava/lang/String;)Ljava/util/Locale;
    .locals 2
    .annotation build Lcom/oneplus/support/annotation/Nullable;
    .end annotation

    .annotation build Lcom/oneplus/support/annotation/RestrictTo;
        value = {
            .enum Lcom/oneplus/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Lcom/oneplus/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/oneplus/support/core/os/LocaleListHelper;->computeFirstMatch(Ljava/util/Collection;Z)Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method getFirstMatchIndex([Ljava/lang/String;)I
    .locals 2
    .annotation build Lcom/oneplus/support/annotation/RestrictTo;
        value = {
            .enum Lcom/oneplus/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Lcom/oneplus/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/oneplus/support/core/os/LocaleListHelper;->computeFirstMatchIndex(Ljava/util/Collection;Z)I

    move-result v0

    return v0
.end method

.method getFirstMatchIndexWithEnglishSupported(Ljava/util/Collection;)I
    .locals 1
    .annotation build Lcom/oneplus/support/annotation/RestrictTo;
        value = {
            .enum Lcom/oneplus/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Lcom/oneplus/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/oneplus/support/core/os/LocaleListHelper;->computeFirstMatchIndex(Ljava/util/Collection;Z)I

    move-result v0

    return v0
.end method

.method getFirstMatchIndexWithEnglishSupported([Ljava/lang/String;)I
    .locals 1
    .annotation build Lcom/oneplus/support/annotation/RestrictTo;
        value = {
            .enum Lcom/oneplus/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Lcom/oneplus/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/support/core/os/LocaleListHelper;->getFirstMatchIndexWithEnglishSupported(Ljava/util/Collection;)I

    move-result v0

    return v0
.end method

.method getFirstMatchWithEnglishSupported([Ljava/lang/String;)Ljava/util/Locale;
    .locals 2
    .annotation build Lcom/oneplus/support/annotation/Nullable;
    .end annotation

    .annotation build Lcom/oneplus/support/annotation/RestrictTo;
        value = {
            .enum Lcom/oneplus/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Lcom/oneplus/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/oneplus/support/core/os/LocaleListHelper;->computeFirstMatch(Ljava/util/Collection;Z)Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/oneplus/support/core/os/LocaleListHelper;->mList:[Ljava/util/Locale;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    mul-int/lit8 v3, v0, 0x1f

    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljava/util/Locale;->hashCode()I

    move-result v2

    add-int v0, v3, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method indexOf(Ljava/util/Locale;)I
    .locals 3
    .annotation build Lcom/oneplus/support/annotation/IntRange;
        from = -0x1L
    .end annotation

    .annotation build Lcom/oneplus/support/annotation/RestrictTo;
        value = {
            .enum Lcom/oneplus/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Lcom/oneplus/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/oneplus/support/core/os/LocaleListHelper;->mList:[Ljava/util/Locale;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method isEmpty()Z
    .locals 1
    .annotation build Lcom/oneplus/support/annotation/RestrictTo;
        value = {
            .enum Lcom/oneplus/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Lcom/oneplus/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    iget-object v0, p0, Lcom/oneplus/support/core/os/LocaleListHelper;->mList:[Ljava/util/Locale;

    array-length v0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method size()I
    .locals 1
    .annotation build Lcom/oneplus/support/annotation/IntRange;
        from = 0x0L
    .end annotation

    .annotation build Lcom/oneplus/support/annotation/RestrictTo;
        value = {
            .enum Lcom/oneplus/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Lcom/oneplus/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    iget-object v0, p0, Lcom/oneplus/support/core/os/LocaleListHelper;->mList:[Ljava/util/Locale;

    array-length v0, v0

    return v0
.end method

.method toLanguageTags()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/oneplus/support/annotation/NonNull;
    .end annotation

    .annotation build Lcom/oneplus/support/annotation/RestrictTo;
        value = {
            .enum Lcom/oneplus/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Lcom/oneplus/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    iget-object v0, p0, Lcom/oneplus/support/core/os/LocaleListHelper;->mStringRepresentation:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/oneplus/support/core/os/LocaleListHelper;->mList:[Ljava/util/Locale;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/support/core/os/LocaleListHelper;->mList:[Ljava/util/Locale;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
