.class Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment$ColorAdapter;
.super Landroid/widget/ArrayAdapter;
.source "RenameMobileNetworkDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ColorAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment$Color;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mItemResId:I


# direct methods
.method public constructor <init>(Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment;Landroid/content/Context;I[Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment$Color;)V
    .locals 0

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment$ColorAdapter;->mContext:Landroid/content/Context;

    iput p3, p0, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment$ColorAdapter;->mItemResId:I

    return-void
.end method


# virtual methods
.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    iget-object p3, p0, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment$ColorAdapter;->mContext:Landroid/content/Context;

    const-string v0, "layout_inflater"

    invoke-virtual {p3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/LayoutInflater;

    if-nez p2, :cond_0

    iget p2, p0, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment$ColorAdapter;->mItemResId:I

    const/4 v0, 0x0

    invoke-virtual {p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_0
    const p3, 0x7f0a0175

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment$Color;

    invoke-static {v0}, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment$Color;->access$100(Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment$Color;)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const p3, 0x7f0a0176

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment$Color;

    invoke-static {p0}, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment$Color;->access$200(Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment$Color;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    iget-object p3, p0, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment$ColorAdapter;->mContext:Landroid/content/Context;

    const-string v0, "layout_inflater"

    invoke-virtual {p3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/LayoutInflater;

    if-nez p2, :cond_0

    iget p2, p0, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment$ColorAdapter;->mItemResId:I

    const/4 v0, 0x0

    invoke-virtual {p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_0
    const p3, 0x7f0a0175

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment$Color;

    invoke-static {v0}, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment$Color;->access$100(Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment$Color;)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const p3, 0x7f0a0176

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment$Color;

    invoke-static {p0}, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment$Color;->access$200(Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment$Color;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method
