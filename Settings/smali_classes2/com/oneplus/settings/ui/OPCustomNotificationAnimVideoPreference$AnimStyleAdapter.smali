.class Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference$AnimStyleAdapter;
.super Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;
.source "OPCustomNotificationAnimVideoPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AnimStyleAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter<",
        "Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference$VH;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference$AnimStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;

    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference$AnimStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;

    invoke-static {p0}, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->access$300(Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public synthetic lambda$onBindViewHolder$0$OPCustomNotificationAnimVideoPreference$AnimStyleAdapter(ILcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference$VH;Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference$AnimEntity;Landroid/view/View;)V
    .locals 1

    iget-object p4, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference$AnimStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;

    invoke-static {p4, p1}, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->access$500(Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;I)V

    iget-object p4, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference$AnimStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;

    invoke-static {p4}, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->access$400(Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;)Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference$VH;

    move-result-object p4

    iget-object p4, p4, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference$VH;->imageViewMask:Lcom/oneplus/settings/ui/RadiusImageView;

    const/4 v0, 0x4

    invoke-virtual {p4, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p4, p2, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference$VH;->imageViewMask:Lcom/oneplus/settings/ui/RadiusImageView;

    const/4 v0, 0x0

    invoke-virtual {p4, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p4, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference$AnimStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;

    invoke-static {p4, p2}, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->access$402(Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference$VH;)Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference$VH;

    iget-object p2, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference$AnimStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;

    iget p3, p3, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference$AnimEntity;->animIndex:I

    invoke-static {p2, p3}, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->access$600(Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;I)V

    iget-object p0, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference$AnimStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;

    iput p1, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->mSelectedIndex:I

    return-void
.end method

.method public onBindViewHolder(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;I)V
    .locals 3

    check-cast p1, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference$VH;

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference$AnimStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->access$300(Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference$AnimEntity;

    iget-object v1, p1, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference$VH;->imageView:Lcom/oneplus/settings/ui/RadiusImageView;

    iget v2, v0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference$AnimEntity;->animResId:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    iget-object v1, p1, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference$VH;->textView:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference$AnimEntity;->animName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v1, v0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference$AnimEntity;->selected:Z

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference$VH;->imageViewMask:Lcom/oneplus/settings/ui/RadiusImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference$AnimStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;

    invoke-static {v1, p1}, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->access$402(Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference$VH;)Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference$VH;

    goto :goto_0

    :cond_0
    iget-object v1, p1, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference$VH;->imageViewMask:Lcom/oneplus/settings/ui/RadiusImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    iget-object v1, p1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Lcom/oneplus/settings/ui/-$$Lambda$OPCustomNotificationAnimVideoPreference$AnimStyleAdapter$ZYPPovEzflQuo7dvjtUsZTFbbn4;

    invoke-direct {v2, p0, p2, p1, v0}, Lcom/oneplus/settings/ui/-$$Lambda$OPCustomNotificationAnimVideoPreference$AnimStyleAdapter$ZYPPovEzflQuo7dvjtUsZTFbbn4;-><init>(Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference$AnimStyleAdapter;ILcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference$VH;Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference$AnimEntity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .locals 1

    iget-object p1, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference$AnimStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;

    invoke-static {p1}, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->access$200(Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0d0190

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference$VH;

    iget-object p0, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference$AnimStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;

    invoke-direct {p2, p0, p1}, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference$VH;-><init>(Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;Landroid/view/View;)V

    return-object p2
.end method
