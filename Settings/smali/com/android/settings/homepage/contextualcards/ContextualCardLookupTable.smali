.class public Lcom/android/settings/homepage/contextualcards/ContextualCardLookupTable;
.super Ljava/lang/Object;
.source "ContextualCardLookupTable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/homepage/contextualcards/ContextualCardLookupTable$ControllerRendererMapping;
    }
.end annotation


# static fields
.field static final LOOKUP_TABLE:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/settings/homepage/contextualcards/ContextualCardLookupTable$ControllerRendererMapping;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/homepage/contextualcards/ContextualCardLookupTable$1;

    invoke-direct {v0}, Lcom/android/settings/homepage/contextualcards/ContextualCardLookupTable$1;-><init>()V

    sput-object v0, Lcom/android/settings/homepage/contextualcards/ContextualCardLookupTable;->LOOKUP_TABLE:Ljava/util/Set;

    return-void
.end method

.method static synthetic lambda$getCardRendererClassByViewType$0(ILcom/android/settings/homepage/contextualcards/ContextualCardLookupTable$ControllerRendererMapping;)Z
    .locals 0

    iget p1, p1, Lcom/android/settings/homepage/contextualcards/ContextualCardLookupTable$ControllerRendererMapping;->mViewType:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
