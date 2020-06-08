.class public Lcom/oneplus/lib/app/OPAlertDialog$Builder;
.super Ljava/lang/Object;
.source "OPAlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/app/OPAlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    invoke-direct {v0, p1}, Lcom/oneplus/lib/app/OPAlertController$AlertParams;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-static {p1, p2}, Lcom/oneplus/lib/app/OPAlertDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result p2

    invoke-direct {v1, p1, p2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Lcom/oneplus/lib/app/OPAlertController$AlertParams;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    return-void
.end method


# virtual methods
.method public create()Lcom/oneplus/lib/app/OPAlertDialog;
    .locals 14

    new-instance v0, Lcom/oneplus/lib/app/OPAlertDialog;

    iget-object v1, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iget-object v1, v1, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/oneplus/lib/app/OPAlertDialog;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    invoke-static {v0}, Lcom/oneplus/lib/app/OPAlertDialog;->access$000(Lcom/oneplus/lib/app/OPAlertDialog;)Lcom/oneplus/lib/app/OPAlertController;

    move-result-object v9

    iget-object v2, v1, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mCustomTitleView:Landroid/view/View;

    if-eqz v2, :cond_0

    invoke-virtual {v9, v2}, Lcom/oneplus/lib/app/OPAlertController;->setCustomTitle(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    iget-object v2, v1, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    if-eqz v2, :cond_1

    invoke-virtual {v9, v2}, Lcom/oneplus/lib/app/OPAlertController;->setTitle(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v2, v1, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    invoke-virtual {v9, v2}, Lcom/oneplus/lib/app/OPAlertController;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    iget v2, v1, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mIconId:I

    if-eqz v2, :cond_3

    invoke-virtual {v9, v2}, Lcom/oneplus/lib/app/OPAlertController;->setIcon(I)V

    :cond_3
    iget v2, v1, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mIconAttrId:I

    if-eqz v2, :cond_4

    invoke-virtual {v9, v2}, Lcom/oneplus/lib/app/OPAlertController;->getIconAttributeResId(I)I

    move-result v2

    invoke-virtual {v9, v2}, Lcom/oneplus/lib/app/OPAlertController;->setIcon(I)V

    :cond_4
    :goto_0
    iget-boolean v2, v1, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mOnlyDarkTheme:Z

    invoke-virtual {v9, v2}, Lcom/oneplus/lib/app/OPAlertController;->setOnlyDarkTheme(Z)V

    iget-boolean v2, v1, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mOnlyLightTheme:Z

    invoke-virtual {v9, v2}, Lcom/oneplus/lib/app/OPAlertController;->setOnlyLightTheme(Z)V

    iget-object v2, v1, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    if-eqz v2, :cond_5

    invoke-virtual {v9, v2}, Lcom/oneplus/lib/app/OPAlertController;->setMessage(Ljava/lang/CharSequence;)V

    :cond_5
    iget-object v2, v1, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    const/4 v3, 0x0

    if-eqz v2, :cond_6

    const/4 v4, -0x1

    iget-object v5, v1, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v9, v4, v2, v5, v3}, Lcom/oneplus/lib/app/OPAlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    :cond_6
    iget-object v2, v1, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    if-eqz v2, :cond_7

    const/4 v4, -0x2

    iget-object v5, v1, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v9, v4, v2, v5, v3}, Lcom/oneplus/lib/app/OPAlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    :cond_7
    iget-object v2, v1, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    if-eqz v2, :cond_8

    const/4 v4, -0x3

    iget-object v5, v1, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v9, v4, v2, v5, v3}, Lcom/oneplus/lib/app/OPAlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    :cond_8
    iget-boolean v2, v1, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mForceInverseBackground:Z

    const/4 v10, 0x1

    if-eqz v2, :cond_9

    invoke-virtual {v9, v10}, Lcom/oneplus/lib/app/OPAlertController;->setInverseBackgroundForced(Z)V

    :cond_9
    iget-object v2, v1, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    if-nez v2, :cond_a

    iget-object v2, v1, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    if-nez v2, :cond_a

    iget-object v2, v1, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_15

    :cond_a
    iget-object v2, v1, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mInflater:Landroid/view/LayoutInflater;

    invoke-static {v9}, Lcom/oneplus/lib/app/OPAlertController;->access$900(Lcom/oneplus/lib/app/OPAlertController;)I

    move-result v4

    invoke-virtual {v2, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lcom/oneplus/lib/app/OPAlertController$RecycleListView;

    iget-boolean v2, v1, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mIsMultiChoice:Z

    if-eqz v2, :cond_c

    iget-object v5, v1, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    if-nez v5, :cond_b

    new-instance v12, Lcom/oneplus/lib/app/OPAlertController$AlertParams$1;

    iget-object v4, v1, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/oneplus/lib/app/OPAlertController;->access$1000(Lcom/oneplus/lib/app/OPAlertController;)I

    move-result v5

    const v6, 0x1020014

    iget-object v7, v1, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    move-object v2, v12

    move-object v3, v1

    move-object v8, v11

    invoke-direct/range {v2 .. v8}, Lcom/oneplus/lib/app/OPAlertController$AlertParams$1;-><init>(Lcom/oneplus/lib/app/OPAlertController$AlertParams;Landroid/content/Context;II[Ljava/lang/CharSequence;Lcom/oneplus/lib/app/OPAlertController$RecycleListView;)V

    goto :goto_3

    :cond_b
    new-instance v12, Lcom/oneplus/lib/app/OPAlertController$AlertParams$2;

    iget-object v4, v1, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    move-object v2, v12

    move-object v3, v1

    move-object v7, v11

    move-object v8, v9

    invoke-direct/range {v2 .. v8}, Lcom/oneplus/lib/app/OPAlertController$AlertParams$2;-><init>(Lcom/oneplus/lib/app/OPAlertController$AlertParams;Landroid/content/Context;Landroid/database/Cursor;ZLcom/oneplus/lib/app/OPAlertController$RecycleListView;Lcom/oneplus/lib/app/OPAlertController;)V

    goto :goto_3

    :cond_c
    iget-boolean v2, v1, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mIsSingleChoice:Z

    if-eqz v2, :cond_d

    invoke-static {v9}, Lcom/oneplus/lib/app/OPAlertController;->access$1100(Lcom/oneplus/lib/app/OPAlertController;)I

    move-result v2

    goto :goto_1

    :cond_d
    invoke-static {v9}, Lcom/oneplus/lib/app/OPAlertController;->access$1200(Lcom/oneplus/lib/app/OPAlertController;)I

    move-result v2

    :goto_1
    move v5, v2

    iget-object v6, v1, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    const v2, 0x1020014

    if-eqz v6, :cond_e

    new-instance v12, Landroid/widget/SimpleCursorAdapter;

    iget-object v4, v1, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mContext:Landroid/content/Context;

    new-array v7, v10, [Ljava/lang/String;

    iget-object v3, v1, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    new-array v13, v10, [I

    aput v2, v13, v8

    move-object v3, v12

    move-object v8, v13

    invoke-direct/range {v3 .. v8}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    goto :goto_3

    :cond_e
    iget-object v3, v1, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_f

    goto :goto_2

    :cond_f
    new-instance v3, Lcom/oneplus/lib/app/OPAlertController$CheckedItemAdapter;

    iget-object v4, v1, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mContext:Landroid/content/Context;

    iget-object v6, v1, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    invoke-direct {v3, v4, v5, v2, v6}, Lcom/oneplus/lib/app/OPAlertController$CheckedItemAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/CharSequence;)V

    :goto_2
    move-object v12, v3

    :goto_3
    invoke-static {v9, v12}, Lcom/oneplus/lib/app/OPAlertController;->access$1302(Lcom/oneplus/lib/app/OPAlertController;Landroid/widget/ListAdapter;)Landroid/widget/ListAdapter;

    iget v2, v1, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mCheckedItem:I

    invoke-static {v9, v2}, Lcom/oneplus/lib/app/OPAlertController;->access$1402(Lcom/oneplus/lib/app/OPAlertController;I)I

    iget-object v2, v1, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v2, :cond_10

    new-instance v2, Lcom/oneplus/lib/app/OPAlertController$AlertParams$3;

    invoke-direct {v2, v1, v9}, Lcom/oneplus/lib/app/OPAlertController$AlertParams$3;-><init>(Lcom/oneplus/lib/app/OPAlertController$AlertParams;Lcom/oneplus/lib/app/OPAlertController;)V

    invoke-virtual {v11, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_4

    :cond_10
    iget-object v2, v1, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    if-eqz v2, :cond_11

    new-instance v2, Lcom/oneplus/lib/app/OPAlertController$AlertParams$4;

    invoke-direct {v2, v1, v11, v9}, Lcom/oneplus/lib/app/OPAlertController$AlertParams$4;-><init>(Lcom/oneplus/lib/app/OPAlertController$AlertParams;Lcom/oneplus/lib/app/OPAlertController$RecycleListView;Lcom/oneplus/lib/app/OPAlertController;)V

    invoke-virtual {v11, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_11
    :goto_4
    iget-object v2, v1, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v2, :cond_12

    invoke-virtual {v11, v2}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    :cond_12
    iget-boolean v2, v1, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mIsSingleChoice:Z

    if-eqz v2, :cond_13

    invoke-virtual {v11, v10}, Landroid/widget/ListView;->setChoiceMode(I)V

    goto :goto_5

    :cond_13
    iget-boolean v2, v1, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mIsMultiChoice:Z

    if-eqz v2, :cond_14

    const/4 v2, 0x2

    invoke-virtual {v11, v2}, Landroid/widget/ListView;->setChoiceMode(I)V

    :cond_14
    :goto_5
    iget-boolean v2, v1, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mRecycleOnMeasure:Z

    iput-boolean v2, v11, Lcom/oneplus/lib/app/OPAlertController$RecycleListView;->mRecycleOnMeasure:Z

    invoke-static {v9, v11}, Lcom/oneplus/lib/app/OPAlertController;->access$1502(Lcom/oneplus/lib/app/OPAlertController;Landroid/widget/ListView;)Landroid/widget/ListView;

    :cond_15
    iget-object v3, v1, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mView:Landroid/view/View;

    if-eqz v3, :cond_17

    iget-boolean v2, v1, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mViewSpacingSpecified:Z

    if-eqz v2, :cond_16

    iget v4, v1, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mViewSpacingLeft:I

    iget v5, v1, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mViewSpacingTop:I

    iget v6, v1, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mViewSpacingRight:I

    iget v7, v1, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mViewSpacingBottom:I

    move-object v2, v9

    invoke-virtual/range {v2 .. v7}, Lcom/oneplus/lib/app/OPAlertController;->setView(Landroid/view/View;IIII)V

    goto :goto_6

    :cond_16
    invoke-virtual {v9, v3}, Lcom/oneplus/lib/app/OPAlertController;->setView(Landroid/view/View;)V

    goto :goto_6

    :cond_17
    iget v1, v1, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mViewLayoutResId:I

    if-eqz v1, :cond_18

    invoke-virtual {v9, v1}, Lcom/oneplus/lib/app/OPAlertController;->setView(I)V

    :cond_18
    :goto_6
    iget-object v1, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iget-boolean v1, v1, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mCancelable:Z

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    iget-object v1, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iget-boolean v1, v1, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mCancelable:Z

    if-eqz v1, :cond_19

    invoke-virtual {v0, v10}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    :cond_19
    iget-object v1, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iget-object v1, v1, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object v1, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iget-object v1, v1, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object p0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iget-object p0, p0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    if-eqz p0, :cond_1a

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    :cond_1a
    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iget-object p0, p0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput-object p1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    iput-object p2, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setCancelable(Z)Lcom/oneplus/lib/app/OPAlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput-boolean p1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mCancelable:Z

    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput-object p1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setMessage(I)Lcom/oneplus/lib/app/OPAlertDialog$Builder;
    .locals 2

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iget-object v1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setMessage(Ljava/lang/CharSequence;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput-object p1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;
    .locals 2

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iget-object v1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    iget-object p1, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput-object p2, p1, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput-object p1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    iput-object p2, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput-object p1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    return-object p0
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput-object p1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    return-object p0
.end method

.method public setOnlyDarkTheme(Z)Lcom/oneplus/lib/app/OPAlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput-boolean p1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mOnlyDarkTheme:Z

    return-object p0
.end method

.method public setOnlyLightTheme(Z)Lcom/oneplus/lib/app/OPAlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput-boolean p1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mOnlyLightTheme:Z

    return-object p0
.end method

.method public setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;
    .locals 2

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iget-object v1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    iget-object p1, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput-object p2, p1, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput-object p1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    iput-object p2, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;
    .locals 2

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iget-object v1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    iget-object p1, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput-object p3, p1, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    iput p2, p1, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mCheckedItem:I

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mIsSingleChoice:Z

    return-object p0
.end method

.method public setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput-object p1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    iput-object p3, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    iput p2, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mCheckedItem:I

    const/4 p1, 0x1

    iput-boolean p1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mIsSingleChoice:Z

    return-object p0
.end method

.method public setTitle(I)Lcom/oneplus/lib/app/OPAlertDialog$Builder;
    .locals 2

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iget-object v1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput-object p1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setView(I)Lcom/oneplus/lib/app/OPAlertDialog$Builder;
    .locals 2

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mView:Landroid/view/View;

    iput p1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mViewLayoutResId:I

    const/4 p1, 0x0

    iput-boolean p1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mViewSpacingSpecified:Z

    return-object p0
.end method

.method public setView(Landroid/view/View;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput-object p1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mView:Landroid/view/View;

    const/4 p1, 0x0

    iput p1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mViewLayoutResId:I

    iput-boolean p1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mViewSpacingSpecified:Z

    return-object p0
.end method
