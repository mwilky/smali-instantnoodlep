.class Lcom/oneplus/settings/ui/OPCustomClockPreference$ChooseStyleAdapter;
.super Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;
.source "OPCustomClockPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/ui/OPCustomClockPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ChooseStyleAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter<",
        "Lcom/oneplus/settings/ui/OPCustomClockPreference$ClockViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/ui/OPCustomClockPreference;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/ui/OPCustomClockPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPCustomClockPreference$ChooseStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomClockPreference;

    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/ui/OPCustomClockPreference$ChooseStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomClockPreference;

    invoke-static {p0}, Lcom/oneplus/settings/ui/OPCustomClockPreference;->access$000(Lcom/oneplus/settings/ui/OPCustomClockPreference;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public synthetic lambda$onBindViewHolder$0$OPCustomClockPreference$ChooseStyleAdapter(ILcom/oneplus/settings/ui/OPCustomClockPreference$ClockViewHolder;Landroid/view/View;)V
    .locals 3

    iget-object p3, p0, Lcom/oneplus/settings/ui/OPCustomClockPreference$ChooseStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomClockPreference;

    iput p1, p3, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mSelectedIndex:I

    invoke-static {p3}, Lcom/oneplus/settings/ui/OPCustomClockPreference;->access$000(Lcom/oneplus/settings/ui/OPCustomClockPreference;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;

    iget p3, p3, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;->type:I

    const/4 v0, 0x1

    if-nez p3, :cond_0

    iget-object p3, p0, Lcom/oneplus/settings/ui/OPCustomClockPreference$ChooseStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomClockPreference;

    invoke-static {p3}, Lcom/oneplus/settings/ui/OPCustomClockPreference;->access$200(Lcom/oneplus/settings/ui/OPCustomClockPreference;)Landroid/widget/ImageView;

    move-result-object p3

    const v1, 0x7f080624

    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_0

    :cond_0
    iget-object p3, p0, Lcom/oneplus/settings/ui/OPCustomClockPreference$ChooseStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomClockPreference;

    invoke-static {p3}, Lcom/oneplus/settings/ui/OPCustomClockPreference;->access$000(Lcom/oneplus/settings/ui/OPCustomClockPreference;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;

    iget p3, p3, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;->type:I

    const/4 v1, 0x2

    if-ne p3, v1, :cond_1

    iget-object p3, p0, Lcom/oneplus/settings/ui/OPCustomClockPreference$ChooseStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomClockPreference;

    invoke-static {p3}, Lcom/oneplus/settings/ui/OPCustomClockPreference;->access$200(Lcom/oneplus/settings/ui/OPCustomClockPreference;)Landroid/widget/ImageView;

    move-result-object p3

    const v1, 0x7f080626

    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    :cond_1
    iget-object p3, p0, Lcom/oneplus/settings/ui/OPCustomClockPreference$ChooseStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomClockPreference;

    invoke-static {p3}, Lcom/oneplus/settings/ui/OPCustomClockPreference;->access$000(Lcom/oneplus/settings/ui/OPCustomClockPreference;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;

    iget p3, p3, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;->type:I

    if-ne p3, v0, :cond_2

    iget-object p3, p0, Lcom/oneplus/settings/ui/OPCustomClockPreference$ChooseStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomClockPreference;

    invoke-static {p3}, Lcom/oneplus/settings/ui/OPCustomClockPreference;->access$200(Lcom/oneplus/settings/ui/OPCustomClockPreference;)Landroid/widget/ImageView;

    move-result-object p3

    const v1, 0x7f080623

    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    :cond_2
    iget-object p3, p0, Lcom/oneplus/settings/ui/OPCustomClockPreference$ChooseStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomClockPreference;

    invoke-static {p3}, Lcom/oneplus/settings/ui/OPCustomClockPreference;->access$000(Lcom/oneplus/settings/ui/OPCustomClockPreference;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;

    iget p3, p3, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;->type:I

    const/4 v1, 0x3

    if-ne p3, v1, :cond_3

    iget-object p3, p0, Lcom/oneplus/settings/ui/OPCustomClockPreference$ChooseStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomClockPreference;

    invoke-static {p3}, Lcom/oneplus/settings/ui/OPCustomClockPreference;->access$200(Lcom/oneplus/settings/ui/OPCustomClockPreference;)Landroid/widget/ImageView;

    move-result-object p3

    const v1, 0x7f080627

    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    :cond_3
    iget-object p3, p0, Lcom/oneplus/settings/ui/OPCustomClockPreference$ChooseStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomClockPreference;

    invoke-static {p3}, Lcom/oneplus/settings/ui/OPCustomClockPreference;->access$000(Lcom/oneplus/settings/ui/OPCustomClockPreference;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;

    iget p3, p3, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;->type:I

    const/16 v1, 0xa

    if-ne p3, v1, :cond_4

    iget-object p3, p0, Lcom/oneplus/settings/ui/OPCustomClockPreference$ChooseStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomClockPreference;

    invoke-static {p3}, Lcom/oneplus/settings/ui/OPCustomClockPreference;->access$200(Lcom/oneplus/settings/ui/OPCustomClockPreference;)Landroid/widget/ImageView;

    move-result-object p3

    const v1, 0x7f080625

    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :cond_4
    :goto_0
    iget-object p3, p0, Lcom/oneplus/settings/ui/OPCustomClockPreference$ChooseStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomClockPreference;

    invoke-static {p3}, Lcom/oneplus/settings/ui/OPCustomClockPreference;->access$100(Lcom/oneplus/settings/ui/OPCustomClockPreference;)Lcom/oneplus/settings/ui/OPCustomClockPreference$ClockViewHolder;

    move-result-object p3

    if-eqz p3, :cond_5

    iget-object p3, p0, Lcom/oneplus/settings/ui/OPCustomClockPreference$ChooseStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomClockPreference;

    invoke-static {p3}, Lcom/oneplus/settings/ui/OPCustomClockPreference;->access$100(Lcom/oneplus/settings/ui/OPCustomClockPreference;)Lcom/oneplus/settings/ui/OPCustomClockPreference$ClockViewHolder;

    move-result-object p3

    iget-object p3, p3, Lcom/oneplus/settings/ui/OPCustomClockPreference$ClockViewHolder;->imageViewMask:Lcom/oneplus/settings/ui/RadiusImageView;

    if-eqz p3, :cond_5

    iget-object p3, p0, Lcom/oneplus/settings/ui/OPCustomClockPreference$ChooseStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomClockPreference;

    invoke-static {p3}, Lcom/oneplus/settings/ui/OPCustomClockPreference;->access$100(Lcom/oneplus/settings/ui/OPCustomClockPreference;)Lcom/oneplus/settings/ui/OPCustomClockPreference$ClockViewHolder;

    move-result-object p3

    iget-object p3, p3, Lcom/oneplus/settings/ui/OPCustomClockPreference$ClockViewHolder;->imageViewMask:Lcom/oneplus/settings/ui/RadiusImageView;

    const/4 v1, 0x4

    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_5
    iget-object p3, p2, Lcom/oneplus/settings/ui/OPCustomClockPreference$ClockViewHolder;->imageViewMask:Lcom/oneplus/settings/ui/RadiusImageView;

    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p3, p0, Lcom/oneplus/settings/ui/OPCustomClockPreference$ChooseStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomClockPreference;

    invoke-static {p3, p2}, Lcom/oneplus/settings/ui/OPCustomClockPreference;->access$102(Lcom/oneplus/settings/ui/OPCustomClockPreference;Lcom/oneplus/settings/ui/OPCustomClockPreference$ClockViewHolder;)Lcom/oneplus/settings/ui/OPCustomClockPreference$ClockViewHolder;

    move p2, v1

    :goto_1
    iget-object p3, p0, Lcom/oneplus/settings/ui/OPCustomClockPreference$ChooseStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomClockPreference;

    invoke-static {p3}, Lcom/oneplus/settings/ui/OPCustomClockPreference;->access$000(Lcom/oneplus/settings/ui/OPCustomClockPreference;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-ge p2, p3, :cond_7

    iget-object p3, p0, Lcom/oneplus/settings/ui/OPCustomClockPreference$ChooseStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomClockPreference;

    invoke-static {p3}, Lcom/oneplus/settings/ui/OPCustomClockPreference;->access$000(Lcom/oneplus/settings/ui/OPCustomClockPreference;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;

    if-ne p1, p2, :cond_6

    move v2, v0

    goto :goto_2

    :cond_6
    move v2, v1

    :goto_2
    iput-boolean v2, p3, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;->selected:Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_7
    return-void
.end method

.method public onBindViewHolder(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;I)V
    .locals 3

    check-cast p1, Lcom/oneplus/settings/ui/OPCustomClockPreference$ClockViewHolder;

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomClockPreference$ChooseStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomClockPreference;

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPCustomClockPreference;->access$000(Lcom/oneplus/settings/ui/OPCustomClockPreference;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;

    iget-object v1, p1, Lcom/oneplus/settings/ui/OPCustomClockPreference$ClockViewHolder;->textView:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p1, Lcom/oneplus/settings/ui/OPCustomClockPreference$ClockViewHolder;->imageView:Lcom/oneplus/settings/ui/RadiusImageView;

    iget v2, v0, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;->resId:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    iget-boolean v0, v0, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;->selected:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/oneplus/settings/ui/OPCustomClockPreference$ClockViewHolder;->imageViewMask:Lcom/oneplus/settings/ui/RadiusImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomClockPreference$ChooseStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomClockPreference;

    invoke-static {v0, p1}, Lcom/oneplus/settings/ui/OPCustomClockPreference;->access$102(Lcom/oneplus/settings/ui/OPCustomClockPreference;Lcom/oneplus/settings/ui/OPCustomClockPreference$ClockViewHolder;)Lcom/oneplus/settings/ui/OPCustomClockPreference$ClockViewHolder;

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/oneplus/settings/ui/OPCustomClockPreference$ClockViewHolder;->imageViewMask:Lcom/oneplus/settings/ui/RadiusImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    iget-object v0, p1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/oneplus/settings/ui/-$$Lambda$OPCustomClockPreference$ChooseStyleAdapter$w5E-rJ7hfpkhOWi8HD6IBwTjpxA;

    invoke-direct {v1, p0, p2, p1}, Lcom/oneplus/settings/ui/-$$Lambda$OPCustomClockPreference$ChooseStyleAdapter$w5E-rJ7hfpkhOWi8HD6IBwTjpxA;-><init>(Lcom/oneplus/settings/ui/OPCustomClockPreference$ChooseStyleAdapter;ILcom/oneplus/settings/ui/OPCustomClockPreference$ClockViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .locals 1

    iget-object p1, p0, Lcom/oneplus/settings/ui/OPCustomClockPreference$ChooseStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomClockPreference;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0d018e

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/oneplus/settings/ui/OPCustomClockPreference$ClockViewHolder;

    iget-object p0, p0, Lcom/oneplus/settings/ui/OPCustomClockPreference$ChooseStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomClockPreference;

    invoke-direct {p2, p0, p1}, Lcom/oneplus/settings/ui/OPCustomClockPreference$ClockViewHolder;-><init>(Lcom/oneplus/settings/ui/OPCustomClockPreference;Landroid/view/View;)V

    return-object p2
.end method
