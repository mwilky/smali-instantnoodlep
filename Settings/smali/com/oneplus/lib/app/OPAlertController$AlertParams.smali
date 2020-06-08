.class public Lcom/oneplus/lib/app/OPAlertController$AlertParams;
.super Ljava/lang/Object;
.source "OPAlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/app/OPAlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlertParams"
.end annotation


# instance fields
.field public mAdapter:Landroid/widget/ListAdapter;

.field public mCancelable:Z

.field public mCheckedItem:I

.field public mCheckedItems:[Z

.field public final mContext:Landroid/content/Context;

.field public mCursor:Landroid/database/Cursor;

.field public mCustomTitleView:Landroid/view/View;

.field public mForceInverseBackground:Z

.field public mIcon:Landroid/graphics/drawable/Drawable;

.field public mIconAttrId:I

.field public mIconId:I

.field public final mInflater:Landroid/view/LayoutInflater;

.field public mIsCheckedColumn:Ljava/lang/String;

.field public mIsMultiChoice:Z

.field public mIsSingleChoice:Z

.field public mItems:[Ljava/lang/CharSequence;

.field public mLabelColumn:Ljava/lang/String;

.field public mMessage:Ljava/lang/CharSequence;

.field public mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field public mNegativeButtonText:Ljava/lang/CharSequence;

.field public mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field public mNeutralButtonText:Ljava/lang/CharSequence;

.field public mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field public mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

.field public mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

.field public mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field public mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field public mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

.field public mOnlyDarkTheme:Z

.field public mOnlyLightTheme:Z

.field public mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field public mPositiveButtonText:Ljava/lang/CharSequence;

.field public mRecycleOnMeasure:Z

.field public mTitle:Ljava/lang/CharSequence;

.field public mView:Landroid/view/View;

.field public mViewLayoutResId:I

.field public mViewSpacingBottom:I

.field public mViewSpacingLeft:I

.field public mViewSpacingRight:I

.field public mViewSpacingSpecified:Z

.field public mViewSpacingTop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mIconId:I

    iput v0, p0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mIconAttrId:I

    iput-boolean v0, p0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mViewSpacingSpecified:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mCheckedItem:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mRecycleOnMeasure:Z

    iput-boolean v0, p0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mOnlyDarkTheme:Z

    iput-boolean v0, p0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mOnlyLightTheme:Z

    iput-object p1, p0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mContext:Landroid/content/Context;

    iput-boolean v1, p0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mCancelable:Z

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method
