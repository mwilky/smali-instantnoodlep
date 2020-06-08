.class public Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;
.super Lcom/oneplus/settings/BaseActivity;
.source "OPLabFeatureDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/oneplus/settings/laboratory/OPRadioButtinGroup$OnRadioGroupClickListener;


# static fields
.field private static mToast:Landroid/widget/Toast;


# instance fields
.field private mActiviteFeatureToggle:Landroid/view/View;

.field private mDescriptionSummary:Landroid/widget/TextView;

.field private mDialog:Lcom/oneplus/lib/app/OPAlertDialog;

.field private mDislikeImageButton:Landroid/widget/ImageButton;

.field private mFeatureToggleNames:[Ljava/lang/String;

.field private mIntent:Landroid/content/Intent;

.field private mLikeImageButton:Landroid/widget/ImageButton;

.field private mMultiToggleGroup:Lcom/oneplus/settings/laboratory/OPRadioButtinGroup;

.field private mOneplusLabFeatureKey:Ljava/lang/String;

.field private mOneplusLabFeatureTitle:Ljava/lang/String;

.field private mOneplusLabFeatureToggleCount:I

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private mSwitch:Landroid/widget/Switch;

.field private mVibratePattern:[J

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/settings/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;)Landroid/widget/Switch;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mSwitch:Landroid/widget/Switch;

    return-object p0
.end method

.method static synthetic access$100(Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mOneplusLabFeatureKey:Ljava/lang/String;

    return-object p0
.end method

.method private saveActitiveHistory(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mOneplusLabFeatureKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_feedback"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mOneplusLabFeatureKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    sget-object p1, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mToast:Landroid/widget/Toast;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/Toast;->cancel()V

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f120e0e

    const/16 v1, 0xbb8

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    sput-object p1, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mToast:Landroid/widget/Toast;

    sget-object p1, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    invoke-direct {p0}, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->setLikeOrDislike()V

    return-void
.end method

.method private setLikeOrDislike()V
    .locals 6

    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mOneplusLabFeatureKey:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    const v1, 0x7f080517

    const v2, 0x7f080519

    const v3, 0x7f060359

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    iget-object v4, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mOneplusLabFeatureKey:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const v4, 0x7f0602fd

    if-ne v0, v5, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mLikeImageButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mDislikeImageButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mLikeImageButton:Landroid/widget/ImageButton;

    const v2, 0x7f08051a

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object p0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mDislikeImageButton:Landroid/widget/ImageButton;

    invoke-virtual {p0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    :cond_0
    const/4 v5, -0x1

    if-ne v0, v5, :cond_1

    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mLikeImageButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mDislikeImageButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mLikeImageButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object p0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mDislikeImageButton:Landroid/widget/ImageButton;

    const v0, 0x7f080518

    invoke-virtual {p0, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mLikeImageButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mDislikeImageButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mLikeImageButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mDislikeImageButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getColor(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mLikeImageButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mDislikeImageButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mLikeImageButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object p0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mDislikeImageButton:Landroid/widget/ImageButton;

    invoke-virtual {p0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public isMultiToggle()Z
    .locals 1

    iget p0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mOneplusLabFeatureToggleCount:I

    const/4 v0, 0x2

    if-le p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a04dc

    if-eq p1, v0, :cond_9

    const v0, 0x7f0a04de

    const/4 v1, 0x1

    if-eq p1, v0, :cond_8

    const v0, 0x7f0a04eb

    if-eq p1, v0, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object p1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mOneplusLabFeatureKey:Ljava/lang/String;

    const-string v0, "oneplus_dc_dimming_value"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    const/16 v0, 0x3eb

    const/4 v2, 0x0

    if-eqz p1, :cond_3

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isHDProject()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {p1}, Landroid/widget/Switch;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {p1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mOneplusLabFeatureKey:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string p1, "dc_dimming"

    const-string v1, "status"

    const-string v2, "0"

    invoke-static {p1, v1, v2}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity$1;

    invoke-direct {p1, p0}, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity$1;-><init>(Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;)V

    iget-object v1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mDialog:Lcom/oneplus/lib/app/OPAlertDialog;

    if-nez v1, :cond_2

    new-instance v1, Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f120e09

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->setTitle(I)Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    const v2, 0x7f120e0a

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->setMessage(I)Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    const v2, 0x7f121096

    invoke-virtual {v1, v2, p1}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    const v2, 0x7f121095

    invoke-virtual {v1, v2, p1}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    new-instance p1, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity$2;

    invoke-direct {p1, p0}, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity$2;-><init>(Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;)V

    invoke-virtual {v1, p1}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    invoke-virtual {v1}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->create()Lcom/oneplus/lib/app/OPAlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mDialog:Lcom/oneplus/lib/app/OPAlertDialog;

    :cond_2
    iget-object p1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mDialog:Lcom/oneplus/lib/app/OPAlertDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :goto_0
    invoke-static {p0}, Lcom/oneplus/lib/app/appcompat/MenuWrapperFactory;->systemVibrateEnabled1(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mVibrator:Landroid/os/Vibrator;

    invoke-static {p0, p1, v0}, Lcom/oneplus/lib/app/appcompat/MenuWrapperFactory;->getVibratorScenePattern1(Landroid/content/Context;Landroid/os/Vibrator;I)[J

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mVibratePattern:[J

    iget-object p1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mVibratePattern:[J

    iget-object p0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mVibrator:Landroid/os/Vibrator;

    invoke-static {p1, p0}, Lcom/oneplus/lib/app/appcompat/MenuWrapperFactory;->vibrateIfNeeded1([JLandroid/os/Vibrator;)V

    goto :goto_4

    :cond_3
    iget-object p1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {p1}, Landroid/widget/Switch;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {p1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {p1, v1}, Landroid/widget/Switch;->setChecked(Z)V

    :goto_1
    invoke-static {p0}, Lcom/oneplus/lib/app/appcompat/MenuWrapperFactory;->systemVibrateEnabled1(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mVibrator:Landroid/os/Vibrator;

    invoke-static {p0, p1, v0}, Lcom/oneplus/lib/app/appcompat/MenuWrapperFactory;->getVibratorScenePattern1(Landroid/content/Context;Landroid/os/Vibrator;I)[J

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mVibratePattern:[J

    iget-object p1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mVibratePattern:[J

    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mVibrator:Landroid/os/Vibrator;

    invoke-static {p1, v0}, Lcom/oneplus/lib/app/appcompat/MenuWrapperFactory;->vibrateIfNeeded1([JLandroid/os/Vibrator;)V

    :cond_5
    iget-object p1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {p1}, Landroid/widget/Switch;->isChecked()Z

    move-result p1

    if-ne p1, v1, :cond_6

    goto :goto_2

    :cond_6
    move v1, v2

    :goto_2
    iget-object p1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mOneplusLabFeatureKey:Ljava/lang/String;

    const-string v0, "show_importance_slider"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mOneplusLabFeatureKey:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_3

    :cond_7
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mOneplusLabFeatureKey:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_3
    iget-object p0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mOneplusLabFeatureKey:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;I)V

    goto :goto_4

    :cond_8
    invoke-direct {p0, v1}, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->saveActitiveHistory(I)V

    goto :goto_4

    :cond_9
    const/4 p1, -0x1

    invoke-direct {p0, p1}, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->saveActitiveHistory(I)V

    :cond_a
    :goto_4
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/oneplus/settings/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d01e3

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportXVibrate()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "vibrator"

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Vibrator;

    iput-object p1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mVibrator:Landroid/os/Vibrator;

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mIntent:Landroid/content/Intent;

    iget-object p1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mIntent:Landroid/content/Intent;

    const/4 v0, 0x2

    const-string v1, "oneplus_lab_feature_toggle_count"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mOneplusLabFeatureToggleCount:I

    iget-object p1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mIntent:Landroid/content/Intent;

    const-string v0, "oneplus_lab_feature_toggle_names"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mFeatureToggleNames:[Ljava/lang/String;

    iget-object p1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mIntent:Landroid/content/Intent;

    const-string v0, "oneplus_lab_feature_title"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mOneplusLabFeatureTitle:Ljava/lang/String;

    iget-object p1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mIntent:Landroid/content/Intent;

    const-string v0, "oneplus_lab_feature_key"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mOneplusLabFeatureKey:Ljava/lang/String;

    iget-object p1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mIntent:Landroid/content/Intent;

    const/4 v0, 0x0

    const-string v1, "oneplus_lab_feature_icon_id"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    iget-object p1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mOneplusLabFeatureTitle:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    const p1, 0x7f0a04e4

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mDescriptionSummary:Landroid/widget/TextView;

    const p1, 0x7f0a04e3

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const p1, 0x7f0a04e2

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const p1, 0x7f0a04eb

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mActiviteFeatureToggle:Landroid/view/View;

    const p1, 0x7f0a04ea

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    iput-object p1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mSwitch:Landroid/widget/Switch;

    iget-object p1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mOneplusLabFeatureKey:Ljava/lang/String;

    const-string v1, "show_importance_slider"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mOneplusLabFeatureKey:Ljava/lang/String;

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    invoke-virtual {p1, v1}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mOneplusLabFeatureKey:Ljava/lang/String;

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_3

    goto :goto_1

    :cond_3
    move v1, v0

    :goto_1
    invoke-virtual {p1, v1}, Landroid/widget/Switch;->setChecked(Z)V

    :goto_2
    const p1, 0x7f0a04e5

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/oneplus/settings/laboratory/OPRadioButtinGroup;

    iput-object p1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mMultiToggleGroup:Lcom/oneplus/settings/laboratory/OPRadioButtinGroup;

    invoke-virtual {p0}, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->isMultiToggle()Z

    move-result p1

    const/16 v1, 0x8

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mMultiToggleGroup:Lcom/oneplus/settings/laboratory/OPRadioButtinGroup;

    iget v2, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mOneplusLabFeatureToggleCount:I

    iget-object v3, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mFeatureToggleNames:[Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/oneplus/settings/laboratory/OPRadioButtinGroup;->addChild(I[Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mMultiToggleGroup:Lcom/oneplus/settings/laboratory/OPRadioButtinGroup;

    invoke-virtual {p1, p0}, Lcom/oneplus/settings/laboratory/OPRadioButtinGroup;->setOnRadioGroupClickListener(Lcom/oneplus/settings/laboratory/OPRadioButtinGroup$OnRadioGroupClickListener;)V

    iget-object p1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mMultiToggleGroup:Lcom/oneplus/settings/laboratory/OPRadioButtinGroup;

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mOneplusLabFeatureKey:Ljava/lang/String;

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/oneplus/settings/laboratory/OPRadioButtinGroup;->setSelect(I)V

    iget-object p1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mActiviteFeatureToggle:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_4
    iget-object p1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mMultiToggleGroup:Lcom/oneplus/settings/laboratory/OPRadioButtinGroup;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_3
    const p1, 0x7f0a04de

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mLikeImageButton:Landroid/widget/ImageButton;

    const p1, 0x7f0a04dc

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mDislikeImageButton:Landroid/widget/ImageButton;

    iget-object p1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mActiviteFeatureToggle:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mLikeImageButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mDislikeImageButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mIntent:Landroid/content/Intent;

    const-string v0, "oneplus_lab_feature_Summary"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mDescriptionSummary:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->setLikeOrDislike()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mDialog:Lcom/oneplus/lib/app/OPAlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mDialog:Lcom/oneplus/lib/app/OPAlertDialog;

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

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
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/4 p0, 0x1

    return p0
.end method

.method public onRadioGroupClick(I)V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mOneplusLabFeatureKey:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mOneplusLabFeatureKey:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;I)V

    return-void
.end method
