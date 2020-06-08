.class Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;
.super Ljava/lang/Object;
.source "TrustedCredentialsDialogBuilder.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/TrustedCredentialsDialogBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DialogEventHandler"
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mCertHolders:[Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

.field private mCurrentCertIndex:I

.field private mCurrentCertLayout:Landroid/view/View;

.field private final mDelegate:Lcom/android/settings/TrustedCredentialsDialogBuilder$DelegateInterface;

.field private mDialog:Landroidx/appcompat/app/AlertDialog;

.field private final mDpm:Landroid/app/admin/DevicePolicyManager;

.field private mNeedsApproval:Z

.field private mNegativeButton:Landroid/widget/Button;

.field private mPositiveButton:Landroid/widget/Button;

.field private final mRootContainer:Landroid/widget/LinearLayout;

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/android/settings/TrustedCredentialsDialogBuilder$DelegateInterface;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mCurrentCertIndex:I

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    iput-object v0, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mCertHolders:[Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mCurrentCertLayout:Landroid/view/View;

    iput-object p1, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mActivity:Landroid/app/Activity;

    const-class v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mDpm:Landroid/app/admin/DevicePolicyManager;

    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mUserManager:Landroid/os/UserManager;

    iput-object p2, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mDelegate:Lcom/android/settings/TrustedCredentialsDialogBuilder$DelegateInterface;

    new-instance p1, Landroid/widget/LinearLayout;

    iget-object p2, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mActivity:Landroid/app/Activity;

    invoke-direct {p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mRootContainer:Landroid/widget/LinearLayout;

    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mRootContainer:Landroid/widget/LinearLayout;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mRootContainer:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;)Lcom/android/settings/TrustedCredentialsDialogBuilder$DelegateInterface;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mDelegate:Lcom/android/settings/TrustedCredentialsDialogBuilder$DelegateInterface;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->nextOrDismiss()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mCurrentCertLayout:Landroid/view/View;

    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mRootContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mRootContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mRootContainer:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler$4;

    invoke-direct {v0, p0}, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler$4;-><init>(Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mCurrentCertLayout:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method private getCurrentCertInfo()Lcom/android/settings/TrustedCredentialsSettings$CertHolder;
    .locals 2

    iget v0, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mCurrentCertIndex:I

    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mCertHolders:[Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    array-length v1, p0

    if-ge v0, v1, :cond_0

    aget-object p0, p0, v0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static synthetic lambda$l-T7FQ-tmXq7wOC1gAhDRR6fZzQ(Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->onCredentialConfirmed(I)V

    return-void
.end method

.method private nextOrDismiss()V
    .locals 7

    iget v0, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mCurrentCertIndex:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mCurrentCertIndex:I

    :goto_0
    iget v0, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mCurrentCertIndex:I

    iget-object v2, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mCertHolders:[Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    invoke-direct {p0}, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->getCurrentCertInfo()Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    move-result-object v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mCurrentCertIndex:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mCurrentCertIndex:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mCurrentCertIndex:I

    iget-object v2, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mCertHolders:[Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    array-length v2, v2

    if-lt v0, v2, :cond_1

    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->getCurrentCertInfo()Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mDelegate:Lcom/android/settings/TrustedCredentialsDialogBuilder$DelegateInterface;

    invoke-interface {v4, v0}, Lcom/android/settings/TrustedCredentialsDialogBuilder$DelegateInterface;->getX509CertsFromCertHolder(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/X509Certificate;

    new-instance v5, Landroid/net/http/SslCertificate;

    invoke-direct {v5, v4}, Landroid/net/http/SslCertificate;-><init>(Ljava/security/cert/X509Certificate;)V

    iget-object v4, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5, v4}, Landroid/net/http/SslCertificate;->inflateCertificateView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5}, Landroid/net/http/SslCertificate;->getIssuedTo()Landroid/net/http/SslCertificate$DName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/http/SslCertificate$DName;->getCName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v4, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mActivity:Landroid/app/Activity;

    const v5, 0x1090008

    invoke-direct {v0, v4, v5, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const v3, 0x1090009

    invoke-virtual {v0, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    new-instance v3, Landroid/widget/Spinner;

    iget-object v4, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mActivity:Landroid/app/Activity;

    invoke-direct {v3, v4}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    new-instance v0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler$2;

    invoke-direct {v0, p0, v2}, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler$2;-><init>(Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;Ljava/util/ArrayList;)V

    invoke-virtual {v3, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 v3, 0x0

    move v4, v3

    :goto_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/16 v6, 0x8

    if-ge v4, v5, :cond_4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    if-nez v4, :cond_3

    move v6, v3

    :cond_3
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    iget-object v2, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mCurrentCertLayout:Landroid/view/View;

    if-nez v2, :cond_5

    iput-object v0, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mCurrentCertLayout:Landroid/view/View;

    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mRootContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mCurrentCertLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_3

    :cond_5
    new-instance v2, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler$3;

    invoke-direct {v2, p0, v0}, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler$3;-><init>(Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mCurrentCertLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v4, 0x12c

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v4, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mActivity:Landroid/app/Activity;

    const v5, 0x10c000f

    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_3
    invoke-direct {p0}, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->getCurrentCertInfo()Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->isSystemCert()Z

    move-result v2

    if-nez v2, :cond_8

    iget v2, v0, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->mProfileId:I

    new-instance v4, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v5, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mActivity:Landroid/app/Activity;

    invoke-direct {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v5

    if-eqz v5, :cond_6

    move v2, v1

    goto :goto_4

    :cond_6
    iget-object v5, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v5, v2}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    if-nez v2, :cond_7

    move v2, v3

    goto :goto_4

    :cond_7
    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v2

    :goto_4
    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->getAlias()Ljava/lang/String;

    move-result-object v4

    iget v5, v0, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->mProfileId:I

    invoke-virtual {v2, v4, v5}, Landroid/app/admin/DevicePolicyManager;->isCaCertApproved(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_8

    move v2, v1

    goto :goto_5

    :cond_8
    move v2, v3

    :goto_5
    iput-boolean v2, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mNeedsApproval:Z

    iget-object v2, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mActivity:Landroid/app/Activity;

    iget v0, v0, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->mProfileId:I

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/settingslib/RestrictedLockUtils;->getProfileOrDeviceOwner(Landroid/content/Context;Landroid/os/UserHandle;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    if-eqz v0, :cond_9

    move v0, v1

    goto :goto_6

    :cond_9
    move v0, v3

    :goto_6
    iget-object v2, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mNeedsApproval:Z

    if-eqz v0, :cond_a

    const v0, 0x7f1216ba

    goto :goto_7

    :cond_a
    const v0, 0x104000a

    :goto_7
    invoke-virtual {v2, v0}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v2, -0x1

    invoke-direct {p0, v2, v0}, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->updateButton(ILjava/lang/CharSequence;)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mPositiveButton:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->getCurrentCertInfo()Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mUserManager:Landroid/os/UserManager;

    new-instance v4, Landroid/os/UserHandle;

    iget v5, v0, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->mProfileId:I

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    const-string v5, "no_config_credentials"

    invoke-virtual {v2, v5, v4}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v2

    xor-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->isSystemCert()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-virtual {v0}, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->isDeleted()Z

    move-result v0

    if-eqz v0, :cond_b

    const v0, 0x7f1216b5

    goto :goto_8

    :cond_b
    const v0, 0x7f1216b3

    goto :goto_8

    :cond_c
    const v0, 0x7f1216b7

    :goto_8
    invoke-virtual {v2, v0}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v2, -0x2

    invoke-direct {p0, v2, v0}, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->updateButton(ILjava/lang/CharSequence;)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mNegativeButton:Landroid/widget/Button;

    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mNegativeButton:Landroid/widget/Button;

    if-eqz v1, :cond_d

    goto :goto_9

    :cond_d
    move v3, v6

    :goto_9
    invoke-virtual {p0, v3}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method private onClickTrust()V
    .locals 4

    invoke-direct {p0}, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->getCurrentCertInfo()Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mDelegate:Lcom/android/settings/TrustedCredentialsDialogBuilder$DelegateInterface;

    iget v2, v0, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->mProfileId:I

    new-instance v3, Lcom/android/settings/-$$Lambda$TrustedCredentialsDialogBuilder$DialogEventHandler$l-T7FQ-tmXq7wOC1gAhDRR6fZzQ;

    invoke-direct {v3, p0}, Lcom/android/settings/-$$Lambda$TrustedCredentialsDialogBuilder$DialogEventHandler$l-T7FQ-tmXq7wOC1gAhDRR6fZzQ;-><init>(Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;)V

    invoke-interface {v1, v2, v3}, Lcom/android/settings/TrustedCredentialsDialogBuilder$DelegateInterface;->startConfirmCredentialIfNotConfirmed(ILjava/util/function/IntConsumer;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->getAlias()Ljava/lang/String;

    move-result-object v2

    iget v0, v0, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->mProfileId:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/app/admin/DevicePolicyManager;->approveCaCert(Ljava/lang/String;IZ)Z

    invoke-direct {p0}, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->nextOrDismiss()V

    :cond_0
    return-void
.end method

.method private onCredentialConfirmed(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mNeedsApproval:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->getCurrentCertInfo()Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->getCurrentCertInfo()Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    move-result-object v0

    iget v0, v0, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->mProfileId:I

    if-ne v0, p1, :cond_0

    invoke-direct {p0}, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->onClickTrust()V

    :cond_0
    return-void
.end method

.method private updateButton(ILjava/lang/CharSequence;)Landroid/widget/Button;
    .locals 2

    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mDialog:Landroidx/appcompat/app/AlertDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroidx/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mPositiveButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    iget-boolean p1, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mNeedsApproval:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->onClickTrust()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->nextOrDismiss()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mNegativeButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_3

    invoke-direct {p0}, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->getCurrentCertInfo()Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    move-result-object p1

    new-instance v0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler$1;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler$1;-><init>(Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)V

    invoke-virtual {p1}, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->isSystemCert()Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    const/4 p0, -0x1

    invoke-interface {v0, v1, p0}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    goto :goto_0

    :cond_2
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mActivity:Landroid/app/Activity;

    invoke-direct {p1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p0, 0x7f1216b6

    invoke-virtual {p1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    const p0, 0x1040013

    invoke-virtual {p1, p0, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const p0, 0x1040009

    invoke-virtual {p1, p0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    :cond_3
    :goto_0
    return-void
.end method

.method public onShow(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->nextOrDismiss()V

    return-void
.end method

.method public setCertHolders([Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mCertHolders:[Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    return-void
.end method

.method public setDialog(Landroidx/appcompat/app/AlertDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mDialog:Landroidx/appcompat/app/AlertDialog;

    return-void
.end method
