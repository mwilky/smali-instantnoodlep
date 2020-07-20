.class public Lcom/oneplus/settings/OPRegulatoryInfoDisplayActivity;
.super Landroid/app/Activity;
.source "OPRegulatoryInfoDisplayActivity.java"


# instance fields
.field private mBuildModel:Landroid/widget/TextView;

.field private mIndiaSarInfo:Landroid/view/View;

.field private mIndiaSarInfoBody:Landroid/widget/TextView;

.field private mIndiaSarInfoHead:Landroid/widget/TextView;

.field private mNorthAmericaAuthenticationInfo:Landroid/view/View;

.field private mNorthAmericaSaudiArabia:Landroid/view/View;

.field private mRegulatoryInfoCanada:Landroid/widget/TextView;

.field private mRegulatoryInfoCanadaCan:Landroid/widget/TextView;

.field private mRegulatoryInfoCanadaIC:Landroid/widget/TextView;

.field private mRegulatoryInfoSaudiArabiaId:Landroid/widget/TextView;

.field private mRegulatoryInfoUSFCCID:Landroid/widget/TextView;

.field private mRegulatoryInfoUSHacRating:Landroid/widget/TextView;

.field private mRegulatoryInfoUSSummary:Landroid/widget/TextView;

.field private mSaudiArabiaAuthenticationInfo:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private showSaudiArabiaInfo()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/settings/OPRegulatoryInfoDisplayActivity;->mNorthAmericaAuthenticationInfo:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/settings/OPRegulatoryInfoDisplayActivity;->mSaudiArabiaAuthenticationInfo:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "HD1913"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f120c13

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "HD1903"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f120c0f

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "GM1913"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f120c03

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "GM1903"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f120c0a

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "ONEPLUS A6013"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x7f120c3b

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    const-string v0, "none"

    :goto_0
    iget-object p0, p0, Lcom/oneplus/settings/OPRegulatoryInfoDisplayActivity;->mRegulatoryInfoSaudiArabiaId:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isWhiteModeOn()Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x2000

    invoke-static {p0, p1}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline29(Landroid/app/Activity;I)V

    :cond_0
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isnoDisplaySarValueProject()Z

    move-result p1

    const-string v0, "HD1913"

    const-string v1, "HD1903"

    const-string v2, "GM1903"

    const-string v3, "GM1913"

    if-nez p1, :cond_2

    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_1
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isEUVersion()Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const p1, 0x7f0d022d

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    const p1, 0x7f0a0496

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/oneplus/settings/OPRegulatoryInfoDisplayActivity;->mBuildModel:Landroid/widget/TextView;

    const p1, 0x7f0a05d5

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/oneplus/settings/OPRegulatoryInfoDisplayActivity;->mRegulatoryInfoUSFCCID:Landroid/widget/TextView;

    const p1, 0x7f0a05ce

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/oneplus/settings/OPRegulatoryInfoDisplayActivity;->mRegulatoryInfoCanada:Landroid/widget/TextView;

    const p1, 0x7f0a05d0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/oneplus/settings/OPRegulatoryInfoDisplayActivity;->mRegulatoryInfoCanadaIC:Landroid/widget/TextView;

    const p1, 0x7f0a05cf

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/oneplus/settings/OPRegulatoryInfoDisplayActivity;->mRegulatoryInfoCanadaCan:Landroid/widget/TextView;

    const p1, 0x7f0a0476

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/OPRegulatoryInfoDisplayActivity;->mNorthAmericaAuthenticationInfo:Landroid/view/View;

    const p1, 0x7f0a0477

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/OPRegulatoryInfoDisplayActivity;->mNorthAmericaSaudiArabia:Landroid/view/View;

    const p1, 0x7f0a032f

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/OPRegulatoryInfoDisplayActivity;->mIndiaSarInfo:Landroid/view/View;

    const p1, 0x7f0a0331

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/oneplus/settings/OPRegulatoryInfoDisplayActivity;->mIndiaSarInfoHead:Landroid/widget/TextView;

    const p1, 0x7f0a0330

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/oneplus/settings/OPRegulatoryInfoDisplayActivity;->mIndiaSarInfoBody:Landroid/widget/TextView;

    const p1, 0x7f0a0609

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/OPRegulatoryInfoDisplayActivity;->mSaudiArabiaAuthenticationInfo:Landroid/view/View;

    const p1, 0x7f0a05d3

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/oneplus/settings/OPRegulatoryInfoDisplayActivity;->mRegulatoryInfoSaudiArabiaId:Landroid/widget/TextView;

    const p1, 0x7f0a05d6

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/oneplus/settings/OPRegulatoryInfoDisplayActivity;->mRegulatoryInfoUSHacRating:Landroid/widget/TextView;

    const p1, 0x7f0a05d7

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/oneplus/settings/OPRegulatoryInfoDisplayActivity;->mRegulatoryInfoUSSummary:Landroid/widget/TextView;

    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const v5, 0x7f120e7b

    invoke-virtual {p0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    const/4 v5, 0x0

    if-nez p1, :cond_5

    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const v6, 0x7f120e80

    invoke-virtual {p0, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5

    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v6, "GM1911"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5

    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v6, "GM1901"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5

    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v6, "HD1901"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5

    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v6, "HD1911"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5

    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v6, "ONEPLUS A6000"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5

    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v6, "ONEPLUS A6010"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    move p1, v5

    goto :goto_1

    :cond_5
    :goto_0
    move p1, v4

    :goto_1
    const-string v6, "ONEPLUS A5010"

    const-string v7, "ONEPLUS A5000"

    const-string v8, "ONEPLUS A6013"

    const-string v9, "ONEPLUS A6003"

    if-eqz p1, :cond_e

    iget-object p1, p0, Lcom/oneplus/settings/OPRegulatoryInfoDisplayActivity;->mNorthAmericaSaudiArabia:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/oneplus/settings/OPRegulatoryInfoDisplayActivity;->mIndiaSarInfo:Landroid/view/View;

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const v0, 0x7f120e7b

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    const-string v0, "XXX"

    if-eqz p1, :cond_6

    const p1, 0x7f120c18

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const p1, 0x7f120c17

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_2

    :cond_6
    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const v1, 0x7f120e80

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    const p1, 0x7f120c1c

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const p1, 0x7f120c1b

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_2

    :cond_7
    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "GM1911"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    const p1, 0x7f120c05

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const p1, 0x7f120c04

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_2

    :cond_8
    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "GM1901"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    const p1, 0x7f120c0c

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const p1, 0x7f120c0b

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_9
    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "HD1901"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a

    const p1, 0x7f120c11

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const p1, 0x7f120c10

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_a
    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "HD1911"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b

    const p1, 0x7f120c15

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const p1, 0x7f120c14

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_b
    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "ONEPLUS A6000"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_c

    const p1, 0x7f120c34

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const p1, 0x7f120c33

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_c
    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "ONEPLUS A6010"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_d

    const p1, 0x7f120c39

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const p1, 0x7f120c38

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_d
    move-object p1, v0

    :goto_2
    iget-object v1, p0, Lcom/oneplus/settings/OPRegulatoryInfoDisplayActivity;->mIndiaSarInfoHead:Landroid/widget/TextView;

    const v2, 0x7f120e18

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v0, v3, v5

    invoke-virtual {p0, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/oneplus/settings/OPRegulatoryInfoDisplayActivity;->mIndiaSarInfoBody:Landroid/widget/TextView;

    const v1, 0x7f120e17

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v5

    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_9

    :cond_e
    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_10

    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_10

    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_10

    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_f

    goto :goto_3

    :cond_f
    move p1, v5

    goto :goto_4

    :cond_10
    :goto_3
    move p1, v4

    :goto_4
    if-eqz p1, :cond_11

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const v0, 0x7f120e6c

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/oneplus/settings/OPRegulatoryInfoDisplayActivity;->mBuildModel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/oneplus/settings/OPRegulatoryInfoDisplayActivity;->showSaudiArabiaInfo()V

    goto/16 :goto_9

    :cond_11
    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const v0, 0x7f120e7c

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v1, "HD1905"

    const-string v2, "GM1905"

    const-string v3, "GM1917"

    const v10, 0x7f120e81

    if-nez p1, :cond_13

    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p0, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_13

    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_13

    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_13

    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_13

    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_13

    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_13

    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_13

    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    goto :goto_5

    :cond_12
    move p1, v5

    goto :goto_6

    :cond_13
    :goto_5
    move p1, v4

    :goto_6
    if-eqz p1, :cond_1d

    iget-object p1, p0, Lcom/oneplus/settings/OPRegulatoryInfoDisplayActivity;->mRegulatoryInfoCanada:Landroid/widget/TextView;

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/oneplus/settings/OPRegulatoryInfoDisplayActivity;->mRegulatoryInfoUSFCCID:Landroid/widget/TextView;

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/oneplus/settings/OPRegulatoryInfoDisplayActivity;->mRegulatoryInfoCanadaIC:Landroid/widget/TextView;

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/oneplus/settings/OPRegulatoryInfoDisplayActivity;->mRegulatoryInfoCanadaCan:Landroid/widget/TextView;

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    const p1, 0x7f120f7c

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    sget-object v11, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_14

    invoke-static {p1}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline23(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const v11, 0x7f120c16

    invoke-static {p0, v11, p1}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline9(Landroid/app/Activity;ILjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_7

    :cond_14
    sget-object v11, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p0, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_15

    invoke-static {p1}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline23(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const v11, 0x7f120c1a

    invoke-static {p0, v11, p1}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline9(Landroid/app/Activity;ILjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_7

    :cond_15
    sget-object v11, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v11, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_16

    invoke-static {p1}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline23(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const v11, 0x7f120c02

    invoke-static {p0, v11, p1}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline9(Landroid/app/Activity;ILjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_7

    :cond_16
    sget-object v11, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v11, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_17

    invoke-static {p1}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline23(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const v11, 0x7f120c09

    invoke-static {p0, v11, p1}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline9(Landroid/app/Activity;ILjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    goto :goto_7

    :cond_17
    sget-object v11, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v11, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_18

    invoke-static {p1}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline23(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const v11, 0x7f120c0e

    invoke-static {p0, v11, p1}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline9(Landroid/app/Activity;ILjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    goto :goto_7

    :cond_18
    sget-object v11, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_19

    invoke-static {p1}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline23(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const v11, 0x7f120c35

    invoke-static {p0, v11, p1}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline9(Landroid/app/Activity;ILjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    goto :goto_7

    :cond_19
    sget-object v11, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1a

    invoke-static {p1}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline23(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const v11, 0x7f120c3a

    invoke-static {p0, v11, p1}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline9(Landroid/app/Activity;ILjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    goto :goto_7

    :cond_1a
    sget-object v11, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1b

    invoke-static {p1}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline23(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const v11, 0x7f120c2d

    invoke-static {p0, v11, p1}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline9(Landroid/app/Activity;ILjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    goto :goto_7

    :cond_1b
    sget-object v11, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1c

    invoke-static {p1}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline23(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const v11, 0x7f120c2f

    invoke-static {p0, v11, p1}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline9(Landroid/app/Activity;ILjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    :cond_1c
    :goto_7
    iget-object v11, p0, Lcom/oneplus/settings/OPRegulatoryInfoDisplayActivity;->mRegulatoryInfoCanadaIC:Landroid/widget/TextView;

    invoke-virtual {v11, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1d
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const v11, 0x7f120e6c

    invoke-virtual {p0, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " "

    invoke-virtual {p1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v11, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v11, p0, Lcom/oneplus/settings/OPRegulatoryInfoDisplayActivity;->mBuildModel:Landroid/widget/TextView;

    invoke-virtual {v11, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const v11, 0x7f120f80

    invoke-virtual {p0, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v11, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const v0, 0x7f120c19

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_8

    :cond_1e
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p0, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    const v0, 0x7f120c1d

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_8

    :cond_1f
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const v10, 0x7f120e85

    invoke-virtual {p0, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    const v0, 0x7f120c21

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_8

    :cond_20
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    const v0, 0x7f120c06

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_8

    :cond_21
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "GM1915"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    const v0, 0x7f120c07

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_8

    :cond_22
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    const v0, 0x7f120c0d

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_8

    :cond_23
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "HD1907"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    const v0, 0x7f120c20

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_8

    :cond_24
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    const v0, 0x7f120c12

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :cond_25
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "HD1925"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    const v0, 0x7f120c1f

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :cond_26
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    const v0, 0x7f120c36

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :cond_27
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    const v0, 0x7f120c3c

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :cond_28
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    const v0, 0x7f120c2e

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :cond_29
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    const v0, 0x7f120c30

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :cond_2a
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "IN2017"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    const v0, 0x7f120c1e

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :cond_2b
    const-string v0, "none"

    :goto_8
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/oneplus/settings/OPRegulatoryInfoDisplayActivity;->mRegulatoryInfoUSFCCID:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_9
    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/16 v0, 0x8

    if-eqz p1, :cond_2c

    iget-object p1, p0, Lcom/oneplus/settings/OPRegulatoryInfoDisplayActivity;->mRegulatoryInfoUSSummary:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/oneplus/settings/OPRegulatoryInfoDisplayActivity;->mRegulatoryInfoUSHacRating:Landroid/widget/TextView;

    const v0, 0x7f120c37

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_a

    :cond_2c
    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2d

    iget-object p1, p0, Lcom/oneplus/settings/OPRegulatoryInfoDisplayActivity;->mRegulatoryInfoUSSummary:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/oneplus/settings/OPRegulatoryInfoDisplayActivity;->mRegulatoryInfoUSHacRating:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_a

    :cond_2d
    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2e

    iget-object p1, p0, Lcom/oneplus/settings/OPRegulatoryInfoDisplayActivity;->mRegulatoryInfoUSSummary:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/oneplus/settings/OPRegulatoryInfoDisplayActivity;->mRegulatoryInfoUSHacRating:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/oneplus/settings/OPRegulatoryInfoDisplayActivity;->mIndiaSarInfo:Landroid/view/View;

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    const p1, 0x7f120c32

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f120c31

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/OPRegulatoryInfoDisplayActivity;->mIndiaSarInfoHead:Landroid/widget/TextView;

    const v2, 0x7f120e18

    new-array v3, v4, [Ljava/lang/Object;

    aput-object p1, v3, v5

    invoke-virtual {p0, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/oneplus/settings/OPRegulatoryInfoDisplayActivity;->mIndiaSarInfoBody:Landroid/widget/TextView;

    const v1, 0x7f120e17

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v0, v2, v5

    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2e
    :goto_a
    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2f

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportUstMode()Z

    move-result p1

    if-nez p1, :cond_2f

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isO2()Z

    move-result p1

    if-eqz p1, :cond_2f

    invoke-direct {p0}, Lcom/oneplus/settings/OPRegulatoryInfoDisplayActivity;->showSaudiArabiaInfo()V

    :cond_2f
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method
