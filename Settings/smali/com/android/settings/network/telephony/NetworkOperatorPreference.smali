.class public Lcom/android/settings/network/telephony/NetworkOperatorPreference;
.super Landroidx/preference/Preference;
.source "NetworkOperatorPreference.java"


# instance fields
.field private mCellInfo:Landroid/telephony/CellInfo;

.field private mForbiddenPlmns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLevel:I

.field private mShow4GForLTE:Z

.field private mUseNewApi:Z


# direct methods
.method public constructor <init>(Landroid/telephony/CellInfo;Landroid/content/Context;Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telephony/CellInfo;",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->mLevel:I

    iput-object p1, p0, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->mCellInfo:Landroid/telephony/CellInfo;

    iput-object p3, p0, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->mForbiddenPlmns:Ljava/util/List;

    iput-boolean p4, p0, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->mShow4GForLTE:Z

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x1110079

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->mUseNewApi:Z

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->refresh()V

    return-void
.end method

.method private updateIcon(I)V
    .locals 5

    iget-boolean v0, p0, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->mUseNewApi:Z

    if-eqz v0, :cond_6

    if-ltz p1, :cond_6

    sget v0, Landroid/telephony/SignalStrength;->NUM_SIGNAL_STRENGTH_BINS:I

    if-lt p1, v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Landroid/telephony/SignalStrength;->NUM_SIGNAL_STRENGTH_BINS:I

    iget-object v2, p0, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->mCellInfo:Landroid/telephony/CellInfo;

    invoke-virtual {v2}, Landroid/telephony/CellInfo;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/CellIdentity;->getType()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v2, v3, :cond_5

    const/4 v3, 0x2

    if-eq v2, v3, :cond_4

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    const/4 v3, 0x5

    if-eq v2, v3, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    const v2, 0x7f0806c6

    goto :goto_0

    :cond_2
    iget-boolean v2, p0, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->mShow4GForLTE:Z

    if-eqz v2, :cond_3

    const v2, 0x7f080374

    goto :goto_0

    :cond_3
    const v2, 0x7f0806c8

    goto :goto_0

    :cond_4
    const v2, 0x7f0806c5

    goto :goto_0

    :cond_5
    const v2, 0x7f0806c7

    :goto_0
    invoke-static {v0, p1, v1, v2, v4}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->getSignalStrengthIcon(Landroid/content/Context;IIIZ)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_6
    :goto_1
    return-void
.end method


# virtual methods
.method public getCellInfo()Landroid/telephony/CellInfo;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->mCellInfo:Landroid/telephony/CellInfo;

    return-object p0
.end method

.method public refresh()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->mCellInfo:Landroid/telephony/CellInfo;

    invoke-static {v0}, Lcom/android/settings/network/telephony/CellInfoUtil;->getNetworkTitle(Landroid/telephony/CellInfo;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->mCellInfo:Landroid/telephony/CellInfo;

    iget-object v2, p0, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->mForbiddenPlmns:Ljava/util/List;

    invoke-static {v1}, Lcom/android/settings/network/telephony/CellInfoUtil;->getOperatorInfoFromCellInfo(Landroid/telephony/CellInfo;)Lcom/android/internal/telephony/OperatorInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    if-eqz v2, :cond_0

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    const-string v1, " "

    invoke-static {v0, v1}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline27(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f12077d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->mCellInfo:Landroid/telephony/CellInfo;

    invoke-virtual {v0}, Landroid/telephony/CellInfo;->getCellSignalStrength()Landroid/telephony/CellSignalStrength;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/telephony/CellSignalStrength;->getLevel()I

    move-result v0

    goto :goto_1

    :cond_2
    const/4 v0, -0x1

    :goto_1
    iget v1, p0, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->mLevel:I

    if-eq v1, v0, :cond_3

    iput v0, p0, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->mLevel:I

    iget v0, p0, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->mLevel:I

    invoke-direct {p0, v0}, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->updateIcon(I)V

    :cond_3
    return-void
.end method

.method public setIcon(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->updateIcon(I)V

    return-void
.end method
