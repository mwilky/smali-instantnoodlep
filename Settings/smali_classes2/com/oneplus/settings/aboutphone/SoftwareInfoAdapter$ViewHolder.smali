.class Lcom/oneplus/settings/aboutphone/SoftwareInfoAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SoftwareInfoAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/aboutphone/SoftwareInfoAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field imageView:Landroid/widget/ImageView;

.field tvSummary:Landroid/widget/TextView;

.field tvTitle:Landroid/widget/TextView;

.field viewDividerBottom:Landroid/view/View;

.field viewDividerRight:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/oneplus/settings/aboutphone/SoftwareInfoAdapter;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0a0775

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/oneplus/settings/aboutphone/SoftwareInfoAdapter$ViewHolder;->tvTitle:Landroid/widget/TextView;

    const p1, 0x7f0a0771

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/oneplus/settings/aboutphone/SoftwareInfoAdapter$ViewHolder;->tvSummary:Landroid/widget/TextView;

    const p1, 0x7f0a0326

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/oneplus/settings/aboutphone/SoftwareInfoAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    const p1, 0x7f0a0217

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/aboutphone/SoftwareInfoAdapter$ViewHolder;->viewDividerRight:Landroid/view/View;

    const p1, 0x7f0a0214

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/aboutphone/SoftwareInfoAdapter$ViewHolder;->viewDividerBottom:Landroid/view/View;

    return-void
.end method
