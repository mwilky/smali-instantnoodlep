.class public Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCard$Builder;
.super Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;
.source "LegacySuggestionContextualCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mPendingIntent:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCard$Builder;)Landroid/app/PendingIntent;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCard$Builder;->mPendingIntent:Landroid/app/PendingIntent;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/android/settings/homepage/contextualcards/ContextualCard;
    .locals 1

    new-instance v0, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCard;

    invoke-direct {v0, p0}, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCard;-><init>(Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCard$Builder;)V

    return-object v0
.end method

.method public setCardType(I)Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;
    .locals 1

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot change card type for "

    invoke-static {p1}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline23(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-class v0, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCard$Builder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setPendingIntent(Landroid/app/PendingIntent;)Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCard$Builder;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCard$Builder;->mPendingIntent:Landroid/app/PendingIntent;

    return-object p0
.end method
