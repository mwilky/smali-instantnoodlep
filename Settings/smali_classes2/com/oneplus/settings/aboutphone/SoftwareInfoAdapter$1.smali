.class Lcom/oneplus/settings/aboutphone/SoftwareInfoAdapter$1;
.super Ljava/lang/Object;
.source "SoftwareInfoAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/aboutphone/SoftwareInfoAdapter;

.field final synthetic val$holder:Lcom/oneplus/settings/aboutphone/SoftwareInfoAdapter$ViewHolder;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/oneplus/settings/aboutphone/SoftwareInfoAdapter;Lcom/oneplus/settings/aboutphone/SoftwareInfoAdapter$ViewHolder;I)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/aboutphone/SoftwareInfoAdapter$1;->this$0:Lcom/oneplus/settings/aboutphone/SoftwareInfoAdapter;

    iput-object p2, p0, Lcom/oneplus/settings/aboutphone/SoftwareInfoAdapter$1;->val$holder:Lcom/oneplus/settings/aboutphone/SoftwareInfoAdapter$ViewHolder;

    iput p3, p0, Lcom/oneplus/settings/aboutphone/SoftwareInfoAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/oneplus/settings/aboutphone/SoftwareInfoAdapter$1;->this$0:Lcom/oneplus/settings/aboutphone/SoftwareInfoAdapter;

    invoke-static {p1}, Lcom/oneplus/settings/aboutphone/SoftwareInfoAdapter;->access$000(Lcom/oneplus/settings/aboutphone/SoftwareInfoAdapter;)Lcom/oneplus/settings/aboutphone/SoftwareInfoAdapter$OnItemClickListener;

    move-result-object p1

    iget-object v0, p0, Lcom/oneplus/settings/aboutphone/SoftwareInfoAdapter$1;->val$holder:Lcom/oneplus/settings/aboutphone/SoftwareInfoAdapter$ViewHolder;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget p0, p0, Lcom/oneplus/settings/aboutphone/SoftwareInfoAdapter$1;->val$position:I

    check-cast p1, Lcom/oneplus/settings/aboutphone/OPAboutPhone$1;

    iget-object v1, p1, Lcom/oneplus/settings/aboutphone/OPAboutPhone$1;->this$0:Lcom/oneplus/settings/aboutphone/OPAboutPhone;

    invoke-static {v1, v0}, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->access$002(Lcom/oneplus/settings/aboutphone/OPAboutPhone;Landroid/view/View;)Landroid/view/View;

    iget-object p1, p1, Lcom/oneplus/settings/aboutphone/OPAboutPhone$1;->this$0:Lcom/oneplus/settings/aboutphone/OPAboutPhone;

    invoke-static {p1}, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->access$100(Lcom/oneplus/settings/aboutphone/OPAboutPhone;)Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->onItemClick(I)V

    return-void
.end method
