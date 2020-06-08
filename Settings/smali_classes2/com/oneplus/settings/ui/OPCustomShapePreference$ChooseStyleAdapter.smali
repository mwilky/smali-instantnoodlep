.class Lcom/oneplus/settings/ui/OPCustomShapePreference$ChooseStyleAdapter;
.super Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;
.source "OPCustomShapePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/ui/OPCustomShapePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ChooseStyleAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter<",
        "Lcom/oneplus/settings/ui/OPCustomShapePreference$ShapeViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/ui/OPCustomShapePreference;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/ui/OPCustomShapePreference;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPCustomShapePreference$ChooseStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomShapePreference;

    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/ui/OPCustomShapePreference$ChooseStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomShapePreference;

    invoke-static {p0}, Lcom/oneplus/settings/ui/OPCustomShapePreference;->access$000(Lcom/oneplus/settings/ui/OPCustomShapePreference;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public synthetic lambda$onBindViewHolder$0$OPCustomShapePreference$ChooseStyleAdapter(ILcom/oneplus/settings/ui/OPCustomShapePreference$ShapeViewHolder;Landroid/view/View;)V
    .locals 2

    iget-object p3, p0, Lcom/oneplus/settings/ui/OPCustomShapePreference$ChooseStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomShapePreference;

    iput p1, p3, Lcom/oneplus/settings/ui/OPCustomShapePreference;->mSelectedIndex:I

    invoke-static {p3}, Lcom/oneplus/settings/ui/OPCustomShapePreference;->access$000(Lcom/oneplus/settings/ui/OPCustomShapePreference;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/ui/OPCustomShapePreference$ItemEntity;

    iget v0, v0, Lcom/oneplus/settings/ui/OPCustomShapePreference$ItemEntity;->index:I

    invoke-static {p3, v0}, Lcom/oneplus/settings/ui/OPCustomShapePreference;->access$200(Lcom/oneplus/settings/ui/OPCustomShapePreference;I)V

    iget-object p3, p0, Lcom/oneplus/settings/ui/OPCustomShapePreference$ChooseStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomShapePreference;

    invoke-static {p3}, Lcom/oneplus/settings/ui/OPCustomShapePreference;->access$100(Lcom/oneplus/settings/ui/OPCustomShapePreference;)Lcom/oneplus/settings/ui/OPCustomShapePreference$ShapeViewHolder;

    move-result-object p3

    iget-object p3, p3, Lcom/oneplus/settings/ui/OPCustomShapePreference$ShapeViewHolder;->imageViewMask:Lcom/oneplus/settings/ui/RadiusImageView;

    const/4 v0, 0x4

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p3, p2, Lcom/oneplus/settings/ui/OPCustomShapePreference$ShapeViewHolder;->imageViewMask:Lcom/oneplus/settings/ui/RadiusImageView;

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p3, p0, Lcom/oneplus/settings/ui/OPCustomShapePreference$ChooseStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomShapePreference;

    invoke-static {p3, p2}, Lcom/oneplus/settings/ui/OPCustomShapePreference;->access$102(Lcom/oneplus/settings/ui/OPCustomShapePreference;Lcom/oneplus/settings/ui/OPCustomShapePreference$ShapeViewHolder;)Lcom/oneplus/settings/ui/OPCustomShapePreference$ShapeViewHolder;

    move p2, v0

    :goto_0
    iget-object p3, p0, Lcom/oneplus/settings/ui/OPCustomShapePreference$ChooseStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomShapePreference;

    invoke-static {p3}, Lcom/oneplus/settings/ui/OPCustomShapePreference;->access$000(Lcom/oneplus/settings/ui/OPCustomShapePreference;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-ge p2, p3, :cond_1

    iget-object p3, p0, Lcom/oneplus/settings/ui/OPCustomShapePreference$ChooseStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomShapePreference;

    invoke-static {p3}, Lcom/oneplus/settings/ui/OPCustomShapePreference;->access$000(Lcom/oneplus/settings/ui/OPCustomShapePreference;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/oneplus/settings/ui/OPCustomShapePreference$ItemEntity;

    if-ne p1, p2, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    move v1, v0

    :goto_1
    iput-boolean v1, p3, Lcom/oneplus/settings/ui/OPCustomShapePreference$ItemEntity;->selected:Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onBindViewHolder(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;I)V
    .locals 3

    check-cast p1, Lcom/oneplus/settings/ui/OPCustomShapePreference$ShapeViewHolder;

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomShapePreference$ChooseStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomShapePreference;

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPCustomShapePreference;->access$000(Lcom/oneplus/settings/ui/OPCustomShapePreference;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/ui/OPCustomShapePreference$ItemEntity;

    iget-object v1, p1, Lcom/oneplus/settings/ui/OPCustomShapePreference$ShapeViewHolder;->textView:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/oneplus/settings/ui/OPCustomShapePreference$ItemEntity;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p1, Lcom/oneplus/settings/ui/OPCustomShapePreference$ShapeViewHolder;->imageView:Lcom/oneplus/settings/ui/RadiusImageView;

    iget v2, v0, Lcom/oneplus/settings/ui/OPCustomShapePreference$ItemEntity;->resId:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    iget-boolean v0, v0, Lcom/oneplus/settings/ui/OPCustomShapePreference$ItemEntity;->selected:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/oneplus/settings/ui/OPCustomShapePreference$ShapeViewHolder;->imageViewMask:Lcom/oneplus/settings/ui/RadiusImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomShapePreference$ChooseStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomShapePreference;

    invoke-static {v0, p1}, Lcom/oneplus/settings/ui/OPCustomShapePreference;->access$102(Lcom/oneplus/settings/ui/OPCustomShapePreference;Lcom/oneplus/settings/ui/OPCustomShapePreference$ShapeViewHolder;)Lcom/oneplus/settings/ui/OPCustomShapePreference$ShapeViewHolder;

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/oneplus/settings/ui/OPCustomShapePreference$ShapeViewHolder;->imageViewMask:Lcom/oneplus/settings/ui/RadiusImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    iget-object v0, p1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/oneplus/settings/ui/-$$Lambda$OPCustomShapePreference$ChooseStyleAdapter$em2_OC1o7_7jKoBMws-2jkfrCFA;

    invoke-direct {v1, p0, p2, p1}, Lcom/oneplus/settings/ui/-$$Lambda$OPCustomShapePreference$ChooseStyleAdapter$em2_OC1o7_7jKoBMws-2jkfrCFA;-><init>(Lcom/oneplus/settings/ui/OPCustomShapePreference$ChooseStyleAdapter;ILcom/oneplus/settings/ui/OPCustomShapePreference$ShapeViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .locals 1

    iget-object p1, p0, Lcom/oneplus/settings/ui/OPCustomShapePreference$ChooseStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomShapePreference;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0d0198

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/oneplus/settings/ui/OPCustomShapePreference$ShapeViewHolder;

    iget-object p0, p0, Lcom/oneplus/settings/ui/OPCustomShapePreference$ChooseStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomShapePreference;

    invoke-direct {p2, p0, p1}, Lcom/oneplus/settings/ui/OPCustomShapePreference$ShapeViewHolder;-><init>(Lcom/oneplus/settings/ui/OPCustomShapePreference;Landroid/view/View;)V

    return-object p2
.end method
