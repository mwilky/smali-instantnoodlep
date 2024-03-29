.class public Lcom/android/settings/datetime/timezone/RegionPreferenceController;
.super Lcom/android/settings/datetime/timezone/BaseTimeZonePreferenceController;
.source "RegionPreferenceController.java"


# static fields
.field private static final PREFERENCE_KEY:Ljava/lang/String; = "region"


# instance fields
.field private final mLocaleDisplayNames:Landroid/icu/text/LocaleDisplayNames;

.field private mRegionId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "region"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/datetime/timezone/BaseTimeZonePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/datetime/timezone/RegionPreferenceController;->mRegionId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object p1

    invoke-static {p1}, Landroid/icu/text/LocaleDisplayNames;->getInstance(Ljava/util/Locale;)Landroid/icu/text/LocaleDisplayNames;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/datetime/timezone/RegionPreferenceController;->mLocaleDisplayNames:Landroid/icu/text/LocaleDisplayNames;

    return-void
.end method


# virtual methods
.method public getRegionId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/datetime/timezone/RegionPreferenceController;->mRegionId:Ljava/lang/String;

    return-object p0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datetime/timezone/RegionPreferenceController;->mLocaleDisplayNames:Landroid/icu/text/LocaleDisplayNames;

    iget-object p0, p0, Lcom/android/settings/datetime/timezone/RegionPreferenceController;->mRegionId:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/icu/text/LocaleDisplayNames;->regionDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public setRegionId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/datetime/timezone/RegionPreferenceController;->mRegionId:Ljava/lang/String;

    return-void
.end method
