.class public Lcom/oneplus/settings/ui/OPListDialog;
.super Ljava/lang/Object;
.source "OPListDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/ui/OPListDialog$OnDialogListItemClickListener;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentIndex:I

.field private mDialog:Landroid/app/AlertDialog;

.field private mListEntries:[Ljava/lang/String;

.field private mListEntriesValue:[Ljava/lang/String;

.field private mOnDialogListItemClickListener:Lcom/oneplus/settings/ui/OPListDialog$OnDialogListItemClickListener;

.field private mRootContainer:Landroid/widget/RadioGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPListDialog;->mDialog:Landroid/app/AlertDialog;

    const/4 v1, 0x0

    iput v1, p0, Lcom/oneplus/settings/ui/OPListDialog;->mCurrentIndex:I

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPListDialog;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/oneplus/settings/ui/OPListDialog;->mListEntriesValue:[Ljava/lang/String;

    iput-object p4, p0, Lcom/oneplus/settings/ui/OPListDialog;->mListEntries:[Ljava/lang/String;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p3, 0x7f0d01ec

    invoke-virtual {p1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const p3, 0x7f0a05bb

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/RadioGroup;

    iput-object p3, p0, Lcom/oneplus/settings/ui/OPListDialog;->mRootContainer:Landroid/widget/RadioGroup;

    new-instance p3, Landroid/app/AlertDialog$Builder;

    iget-object p4, p0, Lcom/oneplus/settings/ui/OPListDialog;->mContext:Landroid/content/Context;

    invoke-direct {p3, p4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object p4, p0, Lcom/oneplus/settings/ui/OPListDialog;->mRootContainer:Landroid/widget/RadioGroup;

    invoke-virtual {p3, p4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Lcom/oneplus/settings/ui/OPListDialog$2;

    invoke-direct {p2, p0}, Lcom/oneplus/settings/ui/OPListDialog$2;-><init>(Lcom/oneplus/settings/ui/OPListDialog;)V

    const p3, 0x7f120bfb

    invoke-virtual {p1, p3, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Lcom/oneplus/settings/ui/OPListDialog$1;

    invoke-direct {p2, p0}, Lcom/oneplus/settings/ui/OPListDialog$1;-><init>(Lcom/oneplus/settings/ui/OPListDialog;)V

    const p3, 0x7f1203f6

    invoke-virtual {p1, p3, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPListDialog;->mDialog:Landroid/app/AlertDialog;

    iget-object p1, p0, Lcom/oneplus/settings/ui/OPListDialog;->mDialog:Landroid/app/AlertDialog;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/ui/OPListDialog;->mDialog:Landroid/app/AlertDialog;

    new-instance p2, Lcom/oneplus/settings/ui/OPListDialog$3;

    invoke-direct {p2, p0}, Lcom/oneplus/settings/ui/OPListDialog$3;-><init>(Lcom/oneplus/settings/ui/OPListDialog;)V

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/settings/ui/OPListDialog;)Lcom/oneplus/settings/ui/OPListDialog$OnDialogListItemClickListener;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/ui/OPListDialog;->mOnDialogListItemClickListener:Lcom/oneplus/settings/ui/OPListDialog$OnDialogListItemClickListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/oneplus/settings/ui/OPListDialog;)I
    .locals 0

    iget p0, p0, Lcom/oneplus/settings/ui/OPListDialog;->mCurrentIndex:I

    return p0
.end method

.method static synthetic access$202(Lcom/oneplus/settings/ui/OPListDialog;I)I
    .locals 0

    iput p1, p0, Lcom/oneplus/settings/ui/OPListDialog;->mCurrentIndex:I

    return p1
.end method


# virtual methods
.method public getRootContainer()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/ui/OPListDialog;->mRootContainer:Landroid/widget/RadioGroup;

    return-object p0
.end method

.method public setOnDialogListItemClickListener(Lcom/oneplus/settings/ui/OPListDialog$OnDialogListItemClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPListDialog;->mOnDialogListItemClickListener:Lcom/oneplus/settings/ui/OPListDialog$OnDialogListItemClickListener;

    return-void
.end method

.method public setVibrateLevelKey(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPListDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/oneplus/settings/ui/OPListDialog;->mCurrentIndex:I

    iget-object p1, p0, Lcom/oneplus/settings/ui/OPListDialog;->mListEntriesValue:[Ljava/lang/String;

    array-length p1, p1

    move v0, v1

    :goto_0
    if-ge v0, p1, :cond_1

    iget-object v2, p0, Lcom/oneplus/settings/ui/OPListDialog;->mRootContainer:Landroid/widget/RadioGroup;

    invoke-virtual {v2, v0}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    invoke-virtual {v2, v1}, Landroid/widget/RadioButton;->setVisibility(I)V

    iget-object v3, p0, Lcom/oneplus/settings/ui/OPListDialog;->mListEntries:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    iget v3, p0, Lcom/oneplus/settings/ui/OPListDialog;->mCurrentIndex:I

    if-ne v3, v0, :cond_0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1

    :cond_0
    invoke-virtual {v2, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    :goto_1
    new-instance v3, Lcom/oneplus/settings/ui/OPListDialog$5;

    invoke-direct {v3, p0}, Lcom/oneplus/settings/ui/OPListDialog$5;-><init>(Lcom/oneplus/settings/ui/OPListDialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public show()V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/ui/OPListDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
