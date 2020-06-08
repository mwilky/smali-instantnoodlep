.class public Lcom/oneplus/settings/OPColorPickerActivity;
.super Lcom/oneplus/settings/BaseActivity;
.source "OPColorPickerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/oneplus/settings/ui/ColorPickerView$OnColorChangedListener;
.implements Lcom/oneplus/settings/OnBackPressListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/OPColorPickerActivity$ViewAdapter;
    }
.end annotation


# instance fields
.field private mAm:Landroid/app/ActivityManager;

.field private mBlackColors:[Ljava/lang/String;

.field private mBottomIndicator:Landroid/view/View;

.field private mColorEditButton:Landroid/view/View;

.field private mColorEditView:Landroid/widget/EditText;

.field private mColors:[Ljava/lang/String;

.field private mCurrentColor:Ljava/lang/String;

.field private mCurrentTempColor:Ljava/lang/String;

.field private mCustomView:Landroid/view/View;

.field private mDisabledCellColor:I

.field private mEditColorDialog:Landroid/app/AlertDialog;

.field private mIndicator1:Landroid/view/View;

.field private mIndicator2:Landroid/view/View;

.field private mIsCustomColor:Z

.field private mModifyColorPicker:Lcom/oneplus/lib/widget/button/OPButton;

.field private mPickerView:Lcom/oneplus/settings/ui/ColorPickerView;

.field private mPresetView:Landroid/view/View;

.field private mPreviewAdvanceDark:Landroid/widget/TextView;

.field private mPreviewAdvanceLight:Landroid/widget/TextView;

.field private mPreviewColorDark:Landroid/widget/TextView;

.field private mPreviewColorLight:Landroid/widget/TextView;

.field private mPreviewRadio1Dark:Lcom/oneplus/lib/widget/button/OPRadioButton;

.field private mPreviewRadio1Light:Lcom/oneplus/lib/widget/button/OPRadioButton;

.field private mPreviewRadio2Dark:Lcom/oneplus/lib/widget/button/OPRadioButton;

.field private mPreviewRadio2Light:Lcom/oneplus/lib/widget/button/OPRadioButton;

.field private mPreviewRadio3Dark:Lcom/oneplus/lib/widget/button/OPRadioButton;

.field private mPreviewRadio3Light:Lcom/oneplus/lib/widget/button/OPRadioButton;

.field private mPreviewRadio4Dark:Lcom/oneplus/lib/widget/button/OPRadioButton;

.field private mPreviewRadio4Light:Lcom/oneplus/lib/widget/button/OPRadioButton;

.field private mPreviewSeekbarDark:Landroid/widget/SeekBar;

.field private mPreviewSeekbarLight:Landroid/widget/SeekBar;

.field private mPreviewText1Dark:Landroid/widget/TextView;

.field private mPreviewText1Light:Landroid/widget/TextView;

.field private mPreviewText2Dark:Landroid/widget/TextView;

.field private mPreviewText2Light:Landroid/widget/TextView;

.field private mPreviewText3Dark:Landroid/widget/TextView;

.field private mPreviewText3Light:Landroid/widget/TextView;

.field private mPreviewText4Dark:Landroid/widget/TextView;

.field private mPreviewText4Light:Landroid/widget/TextView;

.field private mPreviewViewPager:Landroidx/viewpager/widget/ViewPager;

.field private mPreviewcoldDark:Landroid/widget/TextView;

.field private mPreviewcoldLight:Landroid/widget/TextView;

.field private mPreviewwarmDark:Landroid/widget/TextView;

.field private mPreviewwarmLight:Landroid/widget/TextView;

.field private mRippleEffectColor:I

.field private mSelectIndex:I

.field private mViews:[Landroid/view/View;

.field private mWhiteColors:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/oneplus/settings/BaseActivity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mIsCustomColor:Z

    iput v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mSelectIndex:I

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/OPColorPickerActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/settings/OPColorPickerActivity;->setIndicator(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/settings/OPColorPickerActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mIsCustomColor:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/oneplus/settings/OPColorPickerActivity;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mColorEditView:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$102(Lcom/oneplus/settings/OPColorPickerActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mIsCustomColor:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/oneplus/settings/OPColorPickerActivity;Landroid/widget/EditText;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/settings/OPColorPickerActivity;->setEditTextAtLastLocation(Landroid/widget/EditText;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/oneplus/settings/OPColorPickerActivity;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/settings/OPColorPickerActivity;->isColorCodeValid(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1300(Lcom/oneplus/settings/OPColorPickerActivity;)Lcom/oneplus/settings/ui/ColorPickerView;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mPickerView:Lcom/oneplus/settings/ui/ColorPickerView;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/oneplus/settings/OPColorPickerActivity;)Landroid/app/AlertDialog;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mEditColorDialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static synthetic access$200(Lcom/oneplus/settings/OPColorPickerActivity;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mPresetView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$300(Lcom/oneplus/settings/OPColorPickerActivity;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mCustomView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$400(Lcom/oneplus/settings/OPColorPickerActivity;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mColorEditButton:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$500(Lcom/oneplus/settings/OPColorPickerActivity;)Lcom/oneplus/lib/widget/button/OPButton;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mModifyColorPicker:Lcom/oneplus/lib/widget/button/OPButton;

    return-object p0
.end method

.method static synthetic access$600(Lcom/oneplus/settings/OPColorPickerActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mCurrentTempColor:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$602(Lcom/oneplus/settings/OPColorPickerActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mCurrentTempColor:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$702(Lcom/oneplus/settings/OPColorPickerActivity;I)I
    .locals 0

    iput p1, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mSelectIndex:I

    return p1
.end method

.method static synthetic access$800(Lcom/oneplus/settings/OPColorPickerActivity;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/oneplus/settings/OPColorPickerActivity;->refreshUI(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/oneplus/settings/OPColorPickerActivity;)Landroid/app/ActivityManager;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mAm:Landroid/app/ActivityManager;

    return-object p0
.end method

.method private initDarkView(Landroid/view/View;)V
    .locals 3

    const v0, 0x7f0a0493

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mPreviewColorDark:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mPreviewColorDark:Landroid/widget/TextView;

    const v1, 0x7f060341

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, 0x7f0a0492

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mPreviewAdvanceDark:Landroid/widget/TextView;

    const v0, 0x7f0a048a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/widget/button/OPRadioButton;

    iput-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mPreviewRadio1Dark:Lcom/oneplus/lib/widget/button/OPRadioButton;

    const v0, 0x7f0a048b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/widget/button/OPRadioButton;

    iput-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mPreviewRadio2Dark:Lcom/oneplus/lib/widget/button/OPRadioButton;

    const v0, 0x7f0a048c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/widget/button/OPRadioButton;

    iput-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mPreviewRadio3Dark:Lcom/oneplus/lib/widget/button/OPRadioButton;

    const v0, 0x7f0a048d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/widget/button/OPRadioButton;

    iput-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mPreviewRadio4Dark:Lcom/oneplus/lib/widget/button/OPRadioButton;

    const v0, 0x7f0a048e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mPreviewText1Dark:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mPreviewText1Dark:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, 0x7f0a048f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mPreviewText2Dark:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mPreviewText2Dark:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, 0x7f0a0490

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mPreviewText3Dark:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mPreviewText3Dark:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, 0x7f0a0491

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mPreviewText4Dark:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mPreviewText4Dark:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, 0x7f0a0496

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mPreviewcoldDark:Landroid/widget/TextView;

    const v0, 0x7f0a0497

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mPreviewwarmDark:Landroid/widget/TextView;

    const v0, 0x7f0a0494

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SeekBar;

    iput-object p1, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mPreviewSeekbarDark:Landroid/widget/SeekBar;

    iget-object p1, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mPreviewSeekbarDark:Landroid/widget/SeekBar;

    new-instance v0, Lcom/oneplus/settings/OPColorPickerActivity$6;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/OPColorPickerActivity$6;-><init>(Lcom/oneplus/settings/OPColorPickerActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private initLightView(Landroid/view/View;)V
    .locals 3

    const v0, 0x7f0a0493

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mPreviewColorLight:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mPreviewColorLight:Landroid/widget/TextView;

    const v1, 0x7f060343

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, 0x7f0a0492

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mPreviewAdvanceLight:Landroid/widget/TextView;

    const v0, 0x7f0a048a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/widget/button/OPRadioButton;

    iput-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mPreviewRadio1Light:Lcom/oneplus/lib/widget/button/OPRadioButton;

    const v0, 0x7f0a048b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/widget/button/OPRadioButton;

    iput-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mPreviewRadio2Light:Lcom/oneplus/lib/widget/button/OPRadioButton;

    const v0, 0x7f0a048c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/widget/button/OPRadioButton;

    iput-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mPreviewRadio3Light:Lcom/oneplus/lib/widget/button/OPRadioButton;

    const v0, 0x7f0a048d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/widget/button/OPRadioButton;

    iput-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mPreviewRadio4Light:Lcom/oneplus/lib/widget/button/OPRadioButton;

    const v0, 0x7f0a048e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mPreviewText1Light:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mPreviewText1Light:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, 0x7f0a048f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mPreviewText2Light:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mPreviewText2Light:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, 0x7f0a0490

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mPreviewText3Light:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mPreviewText3Light:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, 0x7f0a0491

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mPreviewText4Light:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mPreviewText4Light:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, 0x7f0a0496

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mPreviewcoldLight:Landroid/widget/TextView;

    const v0, 0x7f0a0497

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mPreviewwarmLight:Landroid/widget/TextView;

    const v0, 0x7f0a0494

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SeekBar;

    iput-object p1, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mPreviewSeekbarLight:Landroid/widget/SeekBar;

    iget-object p1, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mPreviewSeekbarLight:Landroid/widget/SeekBar;

    new-instance v0, Lcom/oneplus/settings/OPColorPickerActivity$5;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/OPColorPickerActivity$5;-><init>(Lcom/oneplus/settings/OPColorPickerActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private isColorCodeValid(Ljava/lang/String;)Z
    .locals 0

    const-string p0, "^#([0-9a-fA-F]{6})"

    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0
.end method

.method private refreshUI(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mPreviewAdvanceLight:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/oneplus/settings/utils/OPUtils;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mPreviewcoldLight:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/oneplus/settings/utils/OPUtils;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mPreviewwarmLight:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/oneplus/settings/utils/OPUtils;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mPreviewSeekbarLight:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p1}, Lcom/oneplus/settings/utils/OPUtils;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mPreviewSeekbarLight:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p1}, Lcom/oneplus/settings/utils/OPUtils;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mPreviewSeekbarLight:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p1}, Lcom/oneplus/settings/utils/OPUtils;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mPreviewRadio1Light:Lcom/oneplus/lib/widget/button/OPRadioButton;

    invoke-static {p1}, Lcom/oneplus/settings/utils/OPUtils;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/button/OPCompoundButton;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mPreviewRadio2Light:Lcom/oneplus/lib/widget/button/OPRadioButton;

    invoke-static {p1}, Lcom/oneplus/settings/utils/OPUtils;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/button/OPCompoundButton;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mPreviewRadio3Light:Lcom/oneplus/lib/widget/button/OPRadioButton;

    invoke-static {p1}, Lcom/oneplus/settings/utils/OPUtils;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/button/OPCompoundButton;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mPreviewRadio4Light:Lcom/oneplus/lib/widget/button/OPRadioButton;

    invoke-static {p1}, Lcom/oneplus/settings/utils/OPUtils;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/button/OPCompoundButton;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mPreviewAdvanceDark:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/oneplus/settings/utils/OPUtils;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mPreviewcoldDark:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/oneplus/settings/utils/OPUtils;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mPreviewwarmDark:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/oneplus/settings/utils/OPUtils;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mPreviewSeekbarDark:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p1}, Lcom/oneplus/settings/utils/OPUtils;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mPreviewSeekbarDark:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p1}, Lcom/oneplus/settings/utils/OPUtils;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mPreviewSeekbarDark:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p1}, Lcom/oneplus/settings/utils/OPUtils;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mPreviewRadio1Dark:Lcom/oneplus/lib/widget/button/OPRadioButton;

    invoke-static {p1}, Lcom/oneplus/settings/utils/OPUtils;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/button/OPCompoundButton;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mPreviewRadio2Dark:Lcom/oneplus/lib/widget/button/OPRadioButton;

    invoke-static {p1}, Lcom/oneplus/settings/utils/OPUtils;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/button/OPCompoundButton;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mPreviewRadio3Dark:Lcom/oneplus/lib/widget/button/OPRadioButton;

    invoke-static {p1}, Lcom/oneplus/settings/utils/OPUtils;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/button/OPCompoundButton;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    iget-object p0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mPreviewRadio4Dark:Lcom/oneplus/lib/widget/button/OPRadioButton;

    invoke-static {p1}, Lcom/oneplus/settings/utils/OPUtils;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/button/OPCompoundButton;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method private setEditTextAtLastLocation(Landroid/widget/EditText;)V
    .locals 0

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    instance-of p1, p0, Landroid/text/Spannable;

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p1

    invoke-static {p0, p1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    :cond_0
    return-void
.end method

.method private setIndicator(I)V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isBlackModeOn()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0806ab

    const v1, 0x7f0806a9

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mIndicator1:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object p0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mIndicator2:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mIndicator2:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object p0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mIndicator1:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :cond_1
    const v0, 0x7f0806ac

    const v1, 0x7f0806aa

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mIndicator1:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object p0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mIndicator2:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mIndicator2:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object p0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mIndicator1:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method addOptionsMenuItems(Landroid/view/Menu;)V
    .locals 1

    const/4 p0, 0x0

    const v0, 0x7f12196d

    invoke-interface {p1, p0, p0, p0, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p0

    const p1, 0x7f0804d4

    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object p0

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    return-void
.end method

.method public createRippleDrawable(Ljava/lang/String;)Landroid/graphics/drawable/RippleDrawable;
    .locals 5

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget p1, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mDisabledCellColor:I

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/oneplus/settings/utils/OPUtils;->parseColor(Ljava/lang/String;)I

    move-result p1

    :goto_0
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/high16 p1, 0x41200000    # 10.0f

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    new-instance p1, Landroid/content/res/ColorStateList;

    const/4 v1, 0x1

    new-array v2, v1, [[I

    const/4 v3, 0x0

    new-array v4, v3, [I

    aput-object v4, v2, v3

    new-array v1, v1, [I

    iget p0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mRippleEffectColor:I

    aput p0, v1, v3

    invoke-direct {p1, v2, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    new-instance p0, Landroid/graphics/drawable/RippleDrawable;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-object p0
.end method

.method public init()V
    .locals 3

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isBlackModeOn()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "oem_black_mode_accent_color"

    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mCurrentColor:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "oem_black_mode_accent_color_index"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mSelectIndex:I

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "oem_white_mode_accent_color"

    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mCurrentColor:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "oem_white_mode_accent_color_index"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mSelectIndex:I

    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oneplus_accent_color"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mCurrentColor:Ljava/lang/String;

    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mCurrentColor:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "#FF2196F3"

    iput-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mCurrentColor:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mColors:[Ljava/lang/String;

    if-eqz v0, :cond_2

    iget v1, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mSelectIndex:I

    if-ltz v1, :cond_2

    iget-object v2, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mCurrentColor:Ljava/lang/String;

    aget-object v0, v0, v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mSelectIndex:I

    :cond_2
    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mCurrentColor:Ljava/lang/String;

    iput-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mCurrentTempColor:Ljava/lang/String;

    iget v1, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mSelectIndex:I

    if-ltz v1, :cond_3

    invoke-virtual {p0}, Lcom/oneplus/settings/OPColorPickerActivity;->setSelectionVisible()V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mPickerView:Lcom/oneplus/settings/ui/ColorPickerView;

    if-eqz v1, :cond_4

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/oneplus/settings/ui/ColorPickerView;->setColor(I)V

    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mCurrentColor:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/oneplus/settings/OPColorPickerActivity;->refreshUI(Ljava/lang/String;)V

    return-void
.end method

.method protected needShowWarningDialog()Z
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mCurrentColor:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mCurrentTempColor:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mCurrentColor:Ljava/lang/String;

    iget-object p0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mCurrentTempColor:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public onBackPressed()V
    .locals 0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onCancelPressed()V
    .locals 0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onColorChanged(I)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "#"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const-string v4, "0"

    const/4 v5, 0x1

    if-ne v3, v5, :cond_0

    invoke-static {v4, v1}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline17(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v5, :cond_1

    invoke-static {v4, v2}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline17(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v5, :cond_2

    invoke-static {v4, p1}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline17(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mCurrentTempColor:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/oneplus/settings/OPColorPickerActivity;->setSelectionGone()V

    const/4 p1, -0x1

    iput p1, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mSelectIndex:I

    iget-object p1, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mCurrentTempColor:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/oneplus/settings/OPColorPickerActivity;->refreshUI(Ljava/lang/String;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 18

    move-object/from16 v0, p0

    invoke-super/range {p0 .. p1}, Lcom/oneplus/settings/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const v1, 0x7f0d0187

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(I)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isAndroidModeOn()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const v1, 0x7f120cb2

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_1

    const v3, 0x7f121671

    invoke-virtual {v1, v3}, Landroid/app/ActionBar;->setTitle(I)V

    :cond_1
    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    iput-object v1, v0, Lcom/oneplus/settings/OPColorPickerActivity;->mAm:Landroid/app/ActivityManager;

    invoke-virtual {v0, v0}, Lcom/oneplus/settings/BaseActivity;->setOnBackPressListener(Lcom/oneplus/settings/OnBackPressListener;)V

    const v1, 0x7f0a058e

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/viewpager/widget/ViewPager;

    iput-object v1, v0, Lcom/oneplus/settings/OPColorPickerActivity;->mPreviewViewPager:Landroidx/viewpager/widget/ViewPager;

    const v1, 0x7f0a00ed

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/oneplus/settings/OPColorPickerActivity;->mBottomIndicator:Landroid/view/View;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const/4 v4, 0x0

    const v5, 0x7f0d0188

    invoke-virtual {v3, v5, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v3, v5, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isBlackModeOn()Z

    move-result v4

    const v5, 0x7f0806ae

    const v7, 0x7f0806af

    const v8, 0x7f0a07b4

    if-eqz v4, :cond_2

    const-string v4, "#282828"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v6, v9}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v3, v9}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v9, v0, Lcom/oneplus/settings/OPColorPickerActivity;->mBottomIndicator:Landroid/view/View;

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v9, v4}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-direct {v0, v3}, Lcom/oneplus/settings/OPColorPickerActivity;->initLightView(Landroid/view/View;)V

    invoke-direct {v0, v6}, Lcom/oneplus/settings/OPColorPickerActivity;->initDarkView(Landroid/view/View;)V

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :cond_2
    const-string v4, "#f5f5f5"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v6, v9}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v3, v9}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v9, v0, Lcom/oneplus/settings/OPColorPickerActivity;->mBottomIndicator:Landroid/view/View;

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v9, v4}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-direct {v0, v6}, Lcom/oneplus/settings/OPColorPickerActivity;->initLightView(Landroid/view/View;)V

    invoke-direct {v0, v3}, Lcom/oneplus/settings/OPColorPickerActivity;->initDarkView(Landroid/view/View;)V

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_0
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/oneplus/settings/OPColorPickerActivity$ViewAdapter;

    invoke-direct {v3, v0, v1}, Lcom/oneplus/settings/OPColorPickerActivity$ViewAdapter;-><init>(Lcom/oneplus/settings/OPColorPickerActivity;Ljava/util/List;)V

    iget-object v1, v0, Lcom/oneplus/settings/OPColorPickerActivity;->mPreviewViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1, v3}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    iget-object v1, v0, Lcom/oneplus/settings/OPColorPickerActivity;->mPreviewViewPager:Landroidx/viewpager/widget/ViewPager;

    new-instance v3, Lcom/oneplus/settings/OPColorPickerActivity$1;

    invoke-direct {v3, v0}, Lcom/oneplus/settings/OPColorPickerActivity$1;-><init>(Lcom/oneplus/settings/OPColorPickerActivity;)V

    invoke-virtual {v1, v3}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    const v1, 0x7f0a0493

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v1, 0x7f0a0488

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/oneplus/settings/ui/ColorPickerView;

    iput-object v3, v0, Lcom/oneplus/settings/OPColorPickerActivity;->mPickerView:Lcom/oneplus/settings/ui/ColorPickerView;

    iget-object v3, v0, Lcom/oneplus/settings/OPColorPickerActivity;->mPickerView:Lcom/oneplus/settings/ui/ColorPickerView;

    invoke-virtual {v3, v0}, Lcom/oneplus/settings/ui/ColorPickerView;->setOnColorChangedListener(Lcom/oneplus/settings/ui/ColorPickerView$OnColorChangedListener;)V

    const v3, 0x7f0600de

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getColor(I)I

    move-result v3

    iput v3, v0, Lcom/oneplus/settings/OPColorPickerActivity;->mRippleEffectColor:I

    const v3, 0x7f0600dd

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getColor(I)I

    move-result v3

    iput v3, v0, Lcom/oneplus/settings/OPColorPickerActivity;->mDisabledCellColor:I

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/16 v4, 0xc

    new-array v5, v4, [Ljava/lang/String;

    const v6, 0x7f0603e2

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const v6, 0x7f0603e6

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    const v6, 0x7f0603ed

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x2

    aput-object v6, v5, v8

    const v6, 0x7f0603e8

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x3

    aput-object v6, v5, v9

    const v6, 0x7f0603e0

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v10, 0x4

    aput-object v6, v5, v10

    const v6, 0x7f0603f1

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v11, 0x5

    aput-object v6, v5, v11

    const v6, 0x7f0603fd

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v12, 0x6

    aput-object v6, v5, v12

    const v6, 0x7f0603e4

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v13, 0x7

    aput-object v6, v5, v13

    const v6, 0x7f0603ef

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/16 v14, 0x8

    aput-object v6, v5, v14

    const v6, 0x7f0603dc

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/16 v15, 0x9

    aput-object v6, v5, v15

    const v6, 0x7f0603eb

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/16 v16, 0xa

    aput-object v6, v5, v16

    const v6, 0x7f0603de

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/16 v17, 0xb

    aput-object v6, v5, v17

    iput-object v5, v0, Lcom/oneplus/settings/OPColorPickerActivity;->mWhiteColors:[Ljava/lang/String;

    new-array v5, v4, [Ljava/lang/String;

    const v6, 0x7f0603e1

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    const v6, 0x7f0603e5

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    const v2, 0x7f0603ec

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v8

    const v2, 0x7f0603e7

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v9

    const v2, 0x7f0603df

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v10

    const v2, 0x7f0603f0

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v11

    const v2, 0x7f0603fc

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v12

    const v2, 0x7f0603e3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v13

    const v2, 0x7f0603ee

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v14

    const v2, 0x7f0603db

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v15

    const v2, 0x7f0603ea

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v16

    const v2, 0x7f0603dd

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v17

    iput-object v5, v0, Lcom/oneplus/settings/OPColorPickerActivity;->mBlackColors:[Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isWhiteModeOn()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, v0, Lcom/oneplus/settings/OPColorPickerActivity;->mWhiteColors:[Ljava/lang/String;

    iput-object v2, v0, Lcom/oneplus/settings/OPColorPickerActivity;->mColors:[Ljava/lang/String;

    goto :goto_1

    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isBlackModeOn()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, v0, Lcom/oneplus/settings/OPColorPickerActivity;->mBlackColors:[Ljava/lang/String;

    iput-object v2, v0, Lcom/oneplus/settings/OPColorPickerActivity;->mColors:[Ljava/lang/String;

    :cond_4
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    iget-object v3, v0, Lcom/oneplus/settings/OPColorPickerActivity;->mColors:[Ljava/lang/String;

    new-array v4, v4, [I

    fill-array-data v4, :array_0

    array-length v5, v3

    new-array v5, v5, [Landroid/view/View;

    iput-object v5, v0, Lcom/oneplus/settings/OPColorPickerActivity;->mViews:[Landroid/view/View;

    move v5, v7

    :goto_2
    array-length v6, v3

    if-ge v5, v6, :cond_5

    iget-object v6, v0, Lcom/oneplus/settings/OPColorPickerActivity;->mViews:[Landroid/view/View;

    aget v8, v4, v5

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    aput-object v8, v6, v5

    iget-object v6, v0, Lcom/oneplus/settings/OPColorPickerActivity;->mViews:[Landroid/view/View;

    aget-object v6, v6, v5

    aget-object v8, v3, v5

    invoke-virtual {v0, v8}, Lcom/oneplus/settings/OPColorPickerActivity;->createRippleDrawable(Ljava/lang/String;)Landroid/graphics/drawable/RippleDrawable;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v6, v0, Lcom/oneplus/settings/OPColorPickerActivity;->mViews:[Landroid/view/View;

    aget-object v6, v6, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v6, v0, Lcom/oneplus/settings/OPColorPickerActivity;->mViews:[Landroid/view/View;

    aget-object v6, v6, v5

    new-instance v8, Lcom/oneplus/settings/OPColorPickerActivity$4;

    invoke-direct {v8, v0, v3}, Lcom/oneplus/settings/OPColorPickerActivity$4;-><init>(Lcom/oneplus/settings/OPColorPickerActivity;[Ljava/lang/String;)V

    invoke-virtual {v6, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/settings/OPColorPickerActivity;->init()V

    const v2, 0x7f0a052f

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/oneplus/settings/OPColorPickerActivity;->mIndicator1:Landroid/view/View;

    const v2, 0x7f0a0530

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/oneplus/settings/OPColorPickerActivity;->mIndicator2:Landroid/view/View;

    invoke-direct {v0, v7}, Lcom/oneplus/settings/OPColorPickerActivity;->setIndicator(I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/oneplus/settings/OPColorPickerActivity;->mCustomView:Landroid/view/View;

    const v1, 0x7f0a0489

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/oneplus/settings/OPColorPickerActivity;->mPresetView:Landroid/view/View;

    const v1, 0x7f0a017b

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oneplus/lib/widget/button/OPButton;

    iput-object v1, v0, Lcom/oneplus/settings/OPColorPickerActivity;->mModifyColorPicker:Lcom/oneplus/lib/widget/button/OPButton;

    iget-object v1, v0, Lcom/oneplus/settings/OPColorPickerActivity;->mModifyColorPicker:Lcom/oneplus/lib/widget/button/OPButton;

    new-instance v2, Lcom/oneplus/settings/OPColorPickerActivity$2;

    invoke-direct {v2, v0}, Lcom/oneplus/settings/OPColorPickerActivity$2;-><init>(Lcom/oneplus/settings/OPColorPickerActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a017f

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/oneplus/settings/OPColorPickerActivity;->mColorEditButton:Landroid/view/View;

    iget-object v1, v0, Lcom/oneplus/settings/OPColorPickerActivity;->mColorEditButton:Landroid/view/View;

    new-instance v2, Lcom/oneplus/settings/OPColorPickerActivity$3;

    invoke-direct {v2, v0}, Lcom/oneplus/settings/OPColorPickerActivity$3;-><init>(Lcom/oneplus/settings/OPColorPickerActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v0, Lcom/oneplus/settings/OPColorPickerActivity;->mColorEditButton:Landroid/view/View;

    invoke-virtual {v0, v14}, Landroid/view/View;->setVisibility(I)V

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0a0167
        0x7f0a0168
        0x7f0a016b
        0x7f0a016c
        0x7f0a016d
        0x7f0a016e
        0x7f0a016f
        0x7f0a0170
        0x7f0a0171
        0x7f0a0172
        0x7f0a0169
        0x7f0a016a
    .end array-data
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/oneplus/settings/OPColorPickerActivity;->addOptionsMenuItems(Landroid/view/Menu;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p0

    return p0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcom/oneplus/settings/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isBlackModeOn()Z

    move-result p1

    const/4 v0, -0x1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v1, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mCurrentTempColor:Ljava/lang/String;

    const-string v2, "oem_black_mode_accent_color"

    invoke-static {p1, v2, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-boolean p1, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mIsCustomColor:Z

    const-string v1, "oem_black_mode_accent_color_index"

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mSelectIndex:I

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v1, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mCurrentTempColor:Ljava/lang/String;

    const-string v2, "oem_white_mode_accent_color"

    invoke-static {p1, v2, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-boolean p1, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mIsCustomColor:Z

    const-string v1, "oem_white_mode_accent_color_index"

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mSelectIndex:I

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_0
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTrackerForAccentColor()V

    iget-object p1, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mCurrentTempColor:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set accentColor "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OPFullScreenGestureGuidePage"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x2

    const-string v2, "oneplus_accent_color"

    invoke-static {v0, v2, p1, v1}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "#"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :cond_4
    const-string v0, "persist.sys.theme.accentcolor"

    invoke-static {v0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/oneplus/settings/OPColorPickerActivity$7;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/OPColorPickerActivity$7;-><init>(Lcom/oneplus/settings/OPColorPickerActivity;)V

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/4 p0, 0x1

    return p0
.end method

.method public setSelectionGone()V
    .locals 2

    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iget v1, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mSelectIndex:I

    if-ltz v1, :cond_0

    iget-object p0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mViews:[Landroid/view/View;

    if-eqz p0, :cond_0

    aget-object p0, p0, v1

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void

    nop

    :array_0
    .array-data 4
        0x7f0a013b
        0x7f0a013c
        0x7f0a013f
        0x7f0a0140
        0x7f0a0141
        0x7f0a0142
        0x7f0a0143
        0x7f0a0144
        0x7f0a0145
        0x7f0a0146
        0x7f0a013d
        0x7f0a013e
    .end array-data
.end method

.method public setSelectionVisible()V
    .locals 2

    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iget v1, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mSelectIndex:I

    if-ltz v1, :cond_0

    iget-object p0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mViews:[Landroid/view/View;

    if-eqz p0, :cond_0

    aget-object p0, p0, v1

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void

    :array_0
    .array-data 4
        0x7f0a013b
        0x7f0a013c
        0x7f0a013f
        0x7f0a0140
        0x7f0a0141
        0x7f0a0142
        0x7f0a0143
        0x7f0a0144
        0x7f0a0145
        0x7f0a0146
        0x7f0a013d
        0x7f0a013e
    .end array-data
.end method

.method public showColotEditDialog()V
    .locals 6

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f0d01c1

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0a051f

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/oneplus/lib/widget/OPEditText;

    iput-object v2, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mColorEditView:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mColorEditView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v2, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mColorEditView:Landroid/widget/EditText;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSingleLine(Z)V

    iget-object v2, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mCurrentTempColor:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mCurrentTempColor:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x9

    if-ne v4, v5, :cond_0

    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "#"

    invoke-static {v4, v2}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline17(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_0
    iget-object v4, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mColorEditView:Landroid/widget/EditText;

    invoke-virtual {v4, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mColorEditView:Landroid/widget/EditText;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v4, v2}, Landroid/widget/EditText;->setSelection(I)V

    :cond_1
    iget-object v2, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mColorEditView:Landroid/widget/EditText;

    new-instance v4, Lcom/oneplus/settings/OPColorPickerActivity$8;

    invoke-direct {v4, p0}, Lcom/oneplus/settings/OPColorPickerActivity$8;-><init>(Lcom/oneplus/settings/OPColorPickerActivity;)V

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f121134

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f120be3

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f120113

    new-instance v2, Lcom/oneplus/settings/OPColorPickerActivity$9;

    invoke-direct {v2, p0}, Lcom/oneplus/settings/OPColorPickerActivity$9;-><init>(Lcom/oneplus/settings/OPColorPickerActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mEditColorDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mEditColorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mEditColorDialog:Landroid/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcom/oneplus/settings/OPColorPickerActivity$10;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/OPColorPickerActivity$10;-><init>(Lcom/oneplus/settings/OPColorPickerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
