.class public Lcom/oneplus/settings/aboutphone/OPAboutPhoneHardWareController;
.super Ljava/lang/Object;
.source "OPAboutPhoneHardWareController.java"


# instance fields
.field private mCameraMessage:Ljava/lang/String;

.field private mCpuMessage:Ljava/lang/String;

.field private final mHardWareInfoView:Landroid/view/View;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mScreenMessage:Ljava/lang/String;

.field private mStorageMessage:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroidx/fragment/app/Fragment;Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    iput-object p2, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneHardWareController;->mHardWareInfoView:Landroid/view/View;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0d0169

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneHardWareController;->mHardWareInfoView:Landroid/view/View;

    :goto_0
    return-void
.end method

.method public static newInstance(Landroid/app/Activity;Landroidx/fragment/app/Fragment;Landroid/view/View;)Lcom/oneplus/settings/aboutphone/OPAboutPhoneHardWareController;
    .locals 0

    new-instance p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneHardWareController;

    invoke-direct {p0, p1, p2}, Lcom/oneplus/settings/aboutphone/OPAboutPhoneHardWareController;-><init>(Landroidx/fragment/app/Fragment;Landroid/view/View;)V

    return-object p0
.end method


# virtual methods
.method public done()Landroid/view/View;
    .locals 6

    iget-object v0, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneHardWareController;->mHardWareInfoView:Landroid/view/View;

    const v1, 0x7f0a055f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneHardWareController;->mHardWareInfoView:Landroid/view/View;

    const v2, 0x7f0a01a4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneHardWareController;->mHardWareInfoView:Landroid/view/View;

    const v3, 0x7f0a06b1

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneHardWareController;->mHardWareInfoView:Landroid/view/View;

    const v4, 0x7f0a0122

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneHardWareController;->mHardWareInfoView:Landroid/view/View;

    const v5, 0x7f0a0618

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneHardWareController;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneHardWareController;->mCpuMessage:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneHardWareController;->mStorageMessage:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneHardWareController;->mCameraMessage:Ljava/lang/String;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneHardWareController;->mScreenMessage:Ljava/lang/String;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    
    iget-object v4, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneHardWareController;->mHardWareInfoView:Landroid/view/View;

    const-string v0, "renovate_message"

    const-string v1, "id"

    invoke-static {v0, v1}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I
    
    move-result v0

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;
    
    invoke-static {}, Lcom/oneplus/settings/aboutphone/OPAboutPhoneHardWareController;->getRenovateVersion()Ljava/lang/String;
    
    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneHardWareController;->mHardWareInfoView:Landroid/view/View;

    return-object p0
.end method

.method public setCameraMessage(Ljava/lang/String;)Lcom/oneplus/settings/aboutphone/OPAboutPhoneHardWareController;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneHardWareController;->mCameraMessage:Ljava/lang/String;

    return-object p0
.end method

.method public setCpuMessage(Ljava/lang/String;)Lcom/oneplus/settings/aboutphone/OPAboutPhoneHardWareController;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneHardWareController;->mCpuMessage:Ljava/lang/String;

    return-object p0
.end method

.method public setPhoneImage(Landroid/graphics/drawable/Drawable;)Lcom/oneplus/settings/aboutphone/OPAboutPhoneHardWareController;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneHardWareController;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setScreenMessage(Ljava/lang/String;)Lcom/oneplus/settings/aboutphone/OPAboutPhoneHardWareController;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneHardWareController;->mScreenMessage:Ljava/lang/String;

    return-object p0
.end method

.method public setStorageMessage(Ljava/lang/String;)Lcom/oneplus/settings/aboutphone/OPAboutPhoneHardWareController;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneHardWareController;->mStorageMessage:Ljava/lang/String;

    return-object p0
.end method

.method public static getRenovateVersion()Ljava/lang/String;
    .registers 1

    .line 20
    const-string v0, "rice.version"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 21
    .local v0, "version":Ljava/lang/String;
    return-object v0
.end method
