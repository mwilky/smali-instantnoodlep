.class public Lcom/oneplus/settings/utils/OPDisplayDensityUtils;
.super Ljava/lang/Object;
.source "OPDisplayDensityUtils.java"


# static fields
.field private static mValues:[I


# instance fields
.field private mCurrentIndex:I

.field private mDefaultDensity:I

.field private mEntries:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/oneplus/settings/utils/OPDisplayDensityUtils;->mValues:[I

    const-string v0, "ro.display.series"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    return-void

    :array_0
    .array-data 4
        0x17c
        0x1a4
        0x1e0
        0x1f4
        0x21c
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "480"

    const-string v1, "ro.sf.lcd_density"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    new-instance v2, Lcom/android/settingslib/display/DisplayDensityUtils;

    invoke-direct {v2, p1}, Lcom/android/settingslib/display/DisplayDensityUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/android/settingslib/display/DisplayDensityUtils;->getDefaultDensity()I

    move-result v2

    iput v2, p0, Lcom/oneplus/settings/utils/OPDisplayDensityUtils;->mDefaultDensity:I

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x2

    const-string v3, "oneplus_screen_resolution_adjust"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const-string v3, "560"

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_0

    const-string v3, "400"

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    if-eqz v1, :cond_2

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    move v0, v4

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v5

    :goto_1
    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0300dd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    sput-object v0, Lcom/oneplus/settings/utils/OPDisplayDensityUtils;->mValues:[I

    goto :goto_2

    :cond_3
    invoke-static {}, Lcom/oneplus/settings/utils/OPDisplayDensityUtils;->useNew1080Dpi()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0300dc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    sput-object v0, Lcom/oneplus/settings/utils/OPDisplayDensityUtils;->mValues:[I

    :cond_4
    :goto_2
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f1213d1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f1213ce

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f1213d0

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const/4 v1, 0x3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1213d2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1213cf

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/oneplus/settings/utils/OPDisplayDensityUtils;->mEntries:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v0, -0x2

    const-string v1, "display_density_forced"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    iput v5, p0, Lcom/oneplus/settings/utils/OPDisplayDensityUtils;->mCurrentIndex:I

    goto :goto_4

    :cond_5
    move v0, v4

    :goto_3
    sget-object v1, Lcom/oneplus/settings/utils/OPDisplayDensityUtils;->mValues:[I

    array-length v2, v1

    if-ge v0, v2, :cond_7

    aget v1, v1, v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iput v0, p0, Lcom/oneplus/settings/utils/OPDisplayDensityUtils;->mCurrentIndex:I

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_7
    :goto_4
    iget p1, p0, Lcom/oneplus/settings/utils/OPDisplayDensityUtils;->mCurrentIndex:I

    sget-object v0, Lcom/oneplus/settings/utils/OPDisplayDensityUtils;->mValues:[I

    array-length v1, v0

    sub-int/2addr v1, v5

    if-lt p1, v1, :cond_8

    array-length p1, v0

    sub-int/2addr p1, v5

    iput p1, p0, Lcom/oneplus/settings/utils/OPDisplayDensityUtils;->mCurrentIndex:I

    :cond_8
    iget p1, p0, Lcom/oneplus/settings/utils/OPDisplayDensityUtils;->mCurrentIndex:I

    if-gtz p1, :cond_9

    iput v4, p0, Lcom/oneplus/settings/utils/OPDisplayDensityUtils;->mCurrentIndex:I

    :cond_9
    return-void
.end method

.method public static get1080Dpi(Landroid/content/Context;)[I
    .locals 1

    invoke-static {}, Lcom/oneplus/settings/utils/OPDisplayDensityUtils;->useNew1080Dpi()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0300dc

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, Lcom/oneplus/settings/utils/OPDisplayDensityUtils;->mValues:[I

    return-object p0
.end method

.method public static useNew1080Dpi()Z
    .locals 2

    const-string v0, "ro.sf.lcd_density"

    const-string v1, "480"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "400"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public getCurrentIndex()I
    .locals 0

    iget p0, p0, Lcom/oneplus/settings/utils/OPDisplayDensityUtils;->mCurrentIndex:I

    return p0
.end method

.method public getDefaultDensity()I
    .locals 0

    iget p0, p0, Lcom/oneplus/settings/utils/OPDisplayDensityUtils;->mDefaultDensity:I

    return p0
.end method

.method public getEntries()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/utils/OPDisplayDensityUtils;->mEntries:[Ljava/lang/String;

    return-object p0
.end method

.method public getValues()[I
    .locals 0

    sget-object p0, Lcom/oneplus/settings/utils/OPDisplayDensityUtils;->mValues:[I

    return-object p0
.end method
