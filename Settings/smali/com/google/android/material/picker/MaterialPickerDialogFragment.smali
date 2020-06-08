.class public abstract Lcom/google/android/material/picker/MaterialPickerDialogFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "MaterialPickerDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/fragment/app/DialogFragment;"
    }
.end annotation


# instance fields
.field private header:Landroid/widget/TextView;

.field private materialCalendarView:Lcom/google/android/material/picker/MaterialCalendarView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/picker/MaterialCalendarView<",
            "+TS;>;"
        }
    .end annotation
.end field

.field private simpleDateFormat:Ljava/text/SimpleDateFormat;

.field private themeResId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/picker/MaterialPickerDialogFragment;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/picker/MaterialPickerDialogFragment;->header:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/google/android/material/picker/MaterialPickerDialogFragment;->getHeaderText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$102(Lcom/google/android/material/picker/MaterialPickerDialogFragment;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    return-object p1
.end method

.method static synthetic access$200(Lcom/google/android/material/picker/MaterialPickerDialogFragment;)Lcom/google/android/material/picker/MaterialCalendarView;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/picker/MaterialPickerDialogFragment;->materialCalendarView:Lcom/google/android/material/picker/MaterialCalendarView;

    return-object p0
.end method


# virtual methods
.method protected abstract createMaterialCalendarView()Lcom/google/android/material/picker/MaterialCalendarView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/material/picker/MaterialCalendarView<",
            "+TS;>;"
        }
    .end annotation
.end method

.method protected abstract getDefaultThemeAttr()I
.end method

.method protected abstract getHeaderText()Ljava/lang/String;
.end method

.method public final getMaterialCalendarView()Lcom/google/android/material/picker/MaterialCalendarView;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/material/picker/MaterialCalendarView<",
            "+TS;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/material/picker/MaterialPickerDialogFragment;->materialCalendarView:Lcom/google/android/material/picker/MaterialCalendarView;

    return-object p0
.end method

.method public final getSimpleDateFormat()Ljava/text/SimpleDateFormat;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/picker/MaterialPickerDialogFragment;->simpleDateFormat:Ljava/text/SimpleDateFormat;

    return-object p0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    new-instance p1, Ljava/text/SimpleDateFormat;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120ada

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object p1, p0, Lcom/google/android/material/picker/MaterialPickerDialogFragment;->simpleDateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/material/picker/MaterialPickerDialogFragment;->getDefaultThemeAttr()I

    move-result v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "themeResId"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v1, v1, Landroid/util/TypedValue;->resourceId:I

    :goto_0
    iput v1, p0, Lcom/google/android/material/picker/MaterialPickerDialogFragment;->themeResId:I

    invoke-virtual {p0}, Lcom/google/android/material/picker/MaterialPickerDialogFragment;->createMaterialCalendarView()Lcom/google/android/material/picker/MaterialCalendarView;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/picker/MaterialPickerDialogFragment;->materialCalendarView:Lcom/google/android/material/picker/MaterialCalendarView;

    iget-object p1, p0, Lcom/google/android/material/picker/MaterialPickerDialogFragment;->materialCalendarView:Lcom/google/android/material/picker/MaterialCalendarView;

    new-instance v0, Lcom/google/android/material/picker/MaterialPickerDialogFragment$1;

    invoke-direct {v0, p0}, Lcom/google/android/material/picker/MaterialPickerDialogFragment$1;-><init>(Lcom/google/android/material/picker/MaterialPickerDialogFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    new-instance p1, Landroid/app/Dialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    iget p0, p0, Lcom/google/android/material/picker/MaterialPickerDialogFragment;->themeResId:I

    invoke-direct {p1, v0, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    return-object p1
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d012d

    invoke-virtual {p1, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a01d3

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/google/android/material/picker/MaterialPickerDialogFragment;->header:Landroid/widget/TextView;

    const p2, 0x7f0a01ce

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    iget-object p3, p0, Lcom/google/android/material/picker/MaterialPickerDialogFragment;->materialCalendarView:Lcom/google/android/material/picker/MaterialCalendarView;

    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    const p2, 0x7f0a0184

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    const p3, 0x7f0a0127

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/Button;

    new-instance v0, Lcom/google/android/material/picker/MaterialPickerDialogFragment$2;

    invoke-direct {v0, p0}, Lcom/google/android/material/picker/MaterialPickerDialogFragment$2;-><init>(Lcom/google/android/material/picker/MaterialPickerDialogFragment;)V

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p2, Lcom/google/android/material/picker/MaterialPickerDialogFragment$3;

    invoke-direct {p2, p0}, Lcom/google/android/material/picker/MaterialPickerDialogFragment$3;-><init>(Lcom/google/android/material/picker/MaterialPickerDialogFragment;)V

    invoke-virtual {p3, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lcom/google/android/material/picker/MaterialPickerDialogFragment;->header:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/google/android/material/picker/MaterialPickerDialogFragment;->getHeaderText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p1
.end method

.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    return-void
.end method
