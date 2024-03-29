.class public Lcom/android/settings/slices/SliceData;
.super Ljava/lang/Object;
.source "SliceData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/slices/SliceData$InvalidSliceDataException;,
        Lcom/android/settings/slices/SliceData$Builder;
    }
.end annotation


# instance fields
.field private final mFragmentClassName:Ljava/lang/String;

.field private final mIconResource:I

.field private final mIsPlatformDefined:Z

.field private final mKey:Ljava/lang/String;

.field private final mKeywords:Ljava/lang/String;

.field private final mPreferenceController:Ljava/lang/String;

.field private final mScreenTitle:Ljava/lang/CharSequence;

.field private final mSliceType:I

.field private final mSummary:Ljava/lang/String;

.field private final mTitle:Ljava/lang/String;

.field private final mUnavailableSliceSubtitle:Ljava/lang/String;

.field private final mUri:Landroid/net/Uri;


# direct methods
.method synthetic constructor <init>(Lcom/android/settings/slices/SliceData$Builder;Lcom/android/settings/slices/SliceData$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/android/settings/slices/SliceData$Builder;->access$000(Lcom/android/settings/slices/SliceData$Builder;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/slices/SliceData;->mKey:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/settings/slices/SliceData$Builder;->access$100(Lcom/android/settings/slices/SliceData$Builder;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/slices/SliceData;->mTitle:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/settings/slices/SliceData$Builder;->access$200(Lcom/android/settings/slices/SliceData$Builder;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/slices/SliceData;->mSummary:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/settings/slices/SliceData$Builder;->access$300(Lcom/android/settings/slices/SliceData$Builder;)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/slices/SliceData;->mScreenTitle:Ljava/lang/CharSequence;

    invoke-static {p1}, Lcom/android/settings/slices/SliceData$Builder;->access$400(Lcom/android/settings/slices/SliceData$Builder;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/slices/SliceData;->mKeywords:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/settings/slices/SliceData$Builder;->access$500(Lcom/android/settings/slices/SliceData$Builder;)I

    move-result p2

    iput p2, p0, Lcom/android/settings/slices/SliceData;->mIconResource:I

    invoke-static {p1}, Lcom/android/settings/slices/SliceData$Builder;->access$600(Lcom/android/settings/slices/SliceData$Builder;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/slices/SliceData;->mFragmentClassName:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/settings/slices/SliceData$Builder;->access$700(Lcom/android/settings/slices/SliceData$Builder;)Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/slices/SliceData;->mUri:Landroid/net/Uri;

    invoke-static {p1}, Lcom/android/settings/slices/SliceData$Builder;->access$800(Lcom/android/settings/slices/SliceData$Builder;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/slices/SliceData;->mPreferenceController:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/settings/slices/SliceData$Builder;->access$900(Lcom/android/settings/slices/SliceData$Builder;)I

    move-result p2

    iput p2, p0, Lcom/android/settings/slices/SliceData;->mSliceType:I

    invoke-static {p1}, Lcom/android/settings/slices/SliceData$Builder;->access$1000(Lcom/android/settings/slices/SliceData$Builder;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/settings/slices/SliceData;->mIsPlatformDefined:Z

    invoke-static {p1}, Lcom/android/settings/slices/SliceData$Builder;->access$1100(Lcom/android/settings/slices/SliceData$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/slices/SliceData;->mUnavailableSliceSubtitle:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/android/settings/slices/SliceData;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    check-cast p1, Lcom/android/settings/slices/SliceData;

    iget-object p0, p0, Lcom/android/settings/slices/SliceData;->mKey:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/settings/slices/SliceData;->mKey:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public getFragmentClassName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/slices/SliceData;->mFragmentClassName:Ljava/lang/String;

    return-object p0
.end method

.method public getIconResource()I
    .locals 0

    iget p0, p0, Lcom/android/settings/slices/SliceData;->mIconResource:I

    return p0
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/slices/SliceData;->mKey:Ljava/lang/String;

    return-object p0
.end method

.method public getKeywords()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/slices/SliceData;->mKeywords:Ljava/lang/String;

    return-object p0
.end method

.method public getPreferenceController()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/slices/SliceData;->mPreferenceController:Ljava/lang/String;

    return-object p0
.end method

.method public getScreenTitle()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/slices/SliceData;->mScreenTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getSliceType()I
    .locals 0

    iget p0, p0, Lcom/android/settings/slices/SliceData;->mSliceType:I

    return p0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/slices/SliceData;->mSummary:Ljava/lang/String;

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/slices/SliceData;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method public getUnavailableSliceSubtitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/slices/SliceData;->mUnavailableSliceSubtitle:Ljava/lang/String;

    return-object p0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/slices/SliceData;->mUri:Landroid/net/Uri;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/android/settings/slices/SliceData;->mKey:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public isPlatformDefined()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/settings/slices/SliceData;->mIsPlatformDefined:Z

    return p0
.end method
