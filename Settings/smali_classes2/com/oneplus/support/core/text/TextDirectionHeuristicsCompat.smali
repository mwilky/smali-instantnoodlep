.class public final Lcom/oneplus/support/core/text/TextDirectionHeuristicsCompat;
.super Ljava/lang/Object;
.source "TextDirectionHeuristicsCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/support/core/text/TextDirectionHeuristicsCompat$AnyStrong;,
        Lcom/oneplus/support/core/text/TextDirectionHeuristicsCompat$FirstStrong;,
        Lcom/oneplus/support/core/text/TextDirectionHeuristicsCompat$TextDirectionAlgorithm;,
        Lcom/oneplus/support/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicInternal;,
        Lcom/oneplus/support/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicImpl;
    }
.end annotation


# static fields
.field public static final FIRSTSTRONG_LTR:Lcom/oneplus/support/core/text/TextDirectionHeuristicCompat;

.field public static final FIRSTSTRONG_RTL:Lcom/oneplus/support/core/text/TextDirectionHeuristicCompat;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/oneplus/support/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicInternal;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/oneplus/support/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicInternal;-><init>(Lcom/oneplus/support/core/text/TextDirectionHeuristicsCompat$TextDirectionAlgorithm;Z)V

    new-instance v0, Lcom/oneplus/support/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicInternal;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/oneplus/support/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicInternal;-><init>(Lcom/oneplus/support/core/text/TextDirectionHeuristicsCompat$TextDirectionAlgorithm;Z)V

    new-instance v0, Lcom/oneplus/support/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicInternal;

    sget-object v1, Lcom/oneplus/support/core/text/TextDirectionHeuristicsCompat$FirstStrong;->INSTANCE:Lcom/oneplus/support/core/text/TextDirectionHeuristicsCompat$FirstStrong;

    invoke-direct {v0, v1, v2}, Lcom/oneplus/support/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicInternal;-><init>(Lcom/oneplus/support/core/text/TextDirectionHeuristicsCompat$TextDirectionAlgorithm;Z)V

    sput-object v0, Lcom/oneplus/support/core/text/TextDirectionHeuristicsCompat;->FIRSTSTRONG_LTR:Lcom/oneplus/support/core/text/TextDirectionHeuristicCompat;

    new-instance v0, Lcom/oneplus/support/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicInternal;

    sget-object v1, Lcom/oneplus/support/core/text/TextDirectionHeuristicsCompat$FirstStrong;->INSTANCE:Lcom/oneplus/support/core/text/TextDirectionHeuristicsCompat$FirstStrong;

    invoke-direct {v0, v1, v3}, Lcom/oneplus/support/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicInternal;-><init>(Lcom/oneplus/support/core/text/TextDirectionHeuristicsCompat$TextDirectionAlgorithm;Z)V

    sput-object v0, Lcom/oneplus/support/core/text/TextDirectionHeuristicsCompat;->FIRSTSTRONG_RTL:Lcom/oneplus/support/core/text/TextDirectionHeuristicCompat;

    new-instance v0, Lcom/oneplus/support/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicInternal;

    sget-object v1, Lcom/oneplus/support/core/text/TextDirectionHeuristicsCompat$AnyStrong;->INSTANCE_RTL:Lcom/oneplus/support/core/text/TextDirectionHeuristicsCompat$AnyStrong;

    invoke-direct {v0, v1, v2}, Lcom/oneplus/support/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicInternal;-><init>(Lcom/oneplus/support/core/text/TextDirectionHeuristicsCompat$TextDirectionAlgorithm;Z)V

    return-void
.end method

.method static isRtlText(I)I
    .locals 1

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    return v0
.end method

.method static isRtlTextOrFormat(I)I
    .locals 2

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    packed-switch p0, :pswitch_data_0

    return v1

    :cond_0
    :pswitch_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :pswitch_1
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
