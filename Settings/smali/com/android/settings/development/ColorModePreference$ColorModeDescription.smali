.class Lcom/android/settings/development/ColorModePreference$ColorModeDescription;
.super Ljava/lang/Object;
.source "ColorModePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/development/ColorModePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ColorModeDescription"
.end annotation


# instance fields
.field private colorMode:I


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/development/ColorModePreference$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/development/ColorModePreference$ColorModeDescription;)I
    .locals 0

    iget p0, p0, Lcom/android/settings/development/ColorModePreference$ColorModeDescription;->colorMode:I

    return p0
.end method

.method static synthetic access$102(Lcom/android/settings/development/ColorModePreference$ColorModeDescription;I)I
    .locals 0

    iput p1, p0, Lcom/android/settings/development/ColorModePreference$ColorModeDescription;->colorMode:I

    return p1
.end method
