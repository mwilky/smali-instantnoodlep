.class public Lcom/android/settings/inputmethod/UserDictionaryAddWordContents$LocaleRenderer;
.super Ljava/lang/Object;
.source "UserDictionaryAddWordContents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocaleRenderer"
.end annotation


# instance fields
.field private final mDescription:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_0

    const p2, 0x7f1217cc

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents$LocaleRenderer;->mDescription:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, ""

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const p2, 0x7f1217c6

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents$LocaleRenderer;->mDescription:Ljava/lang/String;

    goto :goto_0

    :cond_1
    invoke-static {p2}, Lcom/android/settings/Utils;->createLocaleFromString(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents$LocaleRenderer;->mDescription:Ljava/lang/String;

    :goto_0
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents$LocaleRenderer;->mDescription:Ljava/lang/String;

    return-object p0
.end method
