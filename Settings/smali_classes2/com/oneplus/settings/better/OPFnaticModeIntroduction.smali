.class public Lcom/oneplus/settings/better/OPFnaticModeIntroduction;
.super Lcom/oneplus/settings/BaseActivity;
.source "OPFnaticModeIntroduction.java"


# instance fields
.field private mCurrentMode:I

.field private mDescritionView:Landroid/view/View;

.field private mDevHitCountdown:I

.field private mLogoView:Landroid/widget/ImageView;

.field private mPSWText:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/oneplus/settings/BaseActivity;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/settings/better/OPFnaticModeIntroduction;->mCurrentMode:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/oneplus/settings/better/OPFnaticModeIntroduction;->mDevHitCountdown:I

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/better/OPFnaticModeIntroduction;)V
    .locals 14

    iget v0, p0, Lcom/oneplus/settings/better/OPFnaticModeIntroduction;->mCurrentMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/oneplus/settings/better/OPFnaticModeIntroduction;->mDevHitCountdown:I

    if-lez v0, :cond_1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/oneplus/settings/better/OPFnaticModeIntroduction;->mDevHitCountdown:I

    goto :goto_0

    :cond_1
    iput v1, p0, Lcom/oneplus/settings/better/OPFnaticModeIntroduction;->mCurrentMode:I

    iget-object v0, p0, Lcom/oneplus/settings/better/OPFnaticModeIntroduction;->mDescritionView:Landroid/view/View;

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    const-string v3, "alpha"

    invoke-static {v0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v2, Lcom/oneplus/settings/better/OPFnaticModeIntroduction$4;

    invoke-direct {v2, p0}, Lcom/oneplus/settings/better/OPFnaticModeIntroduction$4;-><init>(Lcom/oneplus/settings/better/OPFnaticModeIntroduction;)V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v2, 0xe1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    new-instance v0, Landroid/view/animation/AnimationSet;

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v1, Landroid/view/animation/ScaleAnimation;

    const/high16 v5, 0x3f000000    # 0.5f

    const/high16 v13, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x2

    const/high16 v10, 0x3f000000    # 0.5f

    const/4 v11, 0x2

    const/high16 v12, 0x3f000000    # 0.5f

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v4, v1

    invoke-direct/range {v4 .. v12}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    new-instance v4, Landroid/view/animation/AlphaAnimation;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v13}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v4, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v0, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AnimationSet;->setStartOffset(J)V

    iget-object v1, p0, Lcom/oneplus/settings/better/OPFnaticModeIntroduction;->mPSWText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/oneplus/settings/better/OPFnaticModeIntroduction;->mPSWText:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/settings/better/OPFnaticModeIntroduction;->mPSWText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v0, p0, Lcom/oneplus/settings/better/OPFnaticModeIntroduction;->mPSWText:Landroid/widget/EditText;

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPFnaticModeIntroduction;->showKeyboard(Landroid/view/View;)V

    :goto_0
    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method static synthetic access$100(Lcom/oneplus/settings/better/OPFnaticModeIntroduction;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/settings/better/OPFnaticModeIntroduction;->resetTaState()V

    return-void
.end method

.method static synthetic access$200(Lcom/oneplus/settings/better/OPFnaticModeIntroduction;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/better/OPFnaticModeIntroduction;->mDescritionView:Landroid/view/View;

    return-object p0
.end method

.method public static hideKeyboard(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method

.method private resetTaState()V
    .locals 4

    const/4 v0, 0x4

    iput v0, p0, Lcom/oneplus/settings/better/OPFnaticModeIntroduction;->mDevHitCountdown:I

    iget-object v1, p0, Lcom/oneplus/settings/better/OPFnaticModeIntroduction;->mDescritionView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/oneplus/settings/better/OPFnaticModeIntroduction;->mDescritionView:Landroid/view/View;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, p0, Lcom/oneplus/settings/better/OPFnaticModeIntroduction;->mPSWText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/settings/better/OPFnaticModeIntroduction;->mPSWText:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iput v2, p0, Lcom/oneplus/settings/better/OPFnaticModeIntroduction;->mCurrentMode:I

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/oneplus/settings/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d01c3

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    const p1, 0x7f0a04ce

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/oneplus/settings/better/OPFnaticModeIntroduction;->mLogoView:Landroid/widget/ImageView;

    iget-object p1, p0, Lcom/oneplus/settings/better/OPFnaticModeIntroduction;->mLogoView:Landroid/widget/ImageView;

    new-instance v0, Lcom/oneplus/settings/better/OPFnaticModeIntroduction$1;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/better/OPFnaticModeIntroduction$1;-><init>(Lcom/oneplus/settings/better/OPFnaticModeIntroduction;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a04d0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/better/OPFnaticModeIntroduction;->mDescritionView:Landroid/view/View;

    const p1, 0x7f0a0174

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/oneplus/settings/better/OPFnaticModeIntroduction;->mPSWText:Landroid/widget/EditText;

    iget-object p1, p0, Lcom/oneplus/settings/better/OPFnaticModeIntroduction;->mPSWText:Landroid/widget/EditText;

    new-instance v0, Lcom/oneplus/settings/better/OPFnaticModeIntroduction$2;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/better/OPFnaticModeIntroduction$2;-><init>(Lcom/oneplus/settings/better/OPFnaticModeIntroduction;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPFnaticModeIntroduction;->mPSWText:Landroid/widget/EditText;

    new-instance v0, Lcom/oneplus/settings/better/OPFnaticModeIntroduction$3;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/better/OPFnaticModeIntroduction$3;-><init>(Lcom/oneplus/settings/better/OPFnaticModeIntroduction;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    invoke-super {p0, p1}, Lcom/oneplus/settings/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->onBackPressed()V

    const/4 p0, 0x1

    return p0
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-object p0, p0, Lcom/oneplus/settings/better/OPFnaticModeIntroduction;->mPSWText:Landroid/widget/EditText;

    invoke-static {p0}, Lcom/oneplus/settings/better/OPFnaticModeIntroduction;->hideKeyboard(Landroid/view/View;)V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-direct {p0}, Lcom/oneplus/settings/better/OPFnaticModeIntroduction;->resetTaState()V

    return-void
.end method

.method public showKeyboard(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/inputmethod/InputMethodManager;

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method
