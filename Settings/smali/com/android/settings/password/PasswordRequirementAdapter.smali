.class public Lcom/android/settings/password/PasswordRequirementAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "PasswordRequirementAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/password/PasswordRequirementAdapter$PasswordRequirementViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/android/settings/password/PasswordRequirementAdapter$PasswordRequirementViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mForSetup:Z

.field private mRequirements:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/password/PasswordRequirementAdapter;->mForSetup:Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/android/settings/password/PasswordRequirementAdapter;->mRequirements:[Ljava/lang/String;

    array-length p0, p0

    return p0
.end method

.method public getItemId(I)J
    .locals 0

    iget-object p0, p0, Lcom/android/settings/password/PasswordRequirementAdapter;->mRequirements:[Ljava/lang/String;

    aget-object p0, p0, p1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    int-to-long p0, p0

    return-wide p0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    check-cast p1, Lcom/android/settings/password/PasswordRequirementAdapter$PasswordRequirementViewHolder;

    invoke-static {p1}, Lcom/android/settings/password/PasswordRequirementAdapter$PasswordRequirementViewHolder;->access$000(Lcom/android/settings/password/PasswordRequirementAdapter$PasswordRequirementViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/password/PasswordRequirementAdapter;->mRequirements:[Ljava/lang/String;

    aget-object p2, v1, p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean p0, p0, Lcom/android/settings/password/PasswordRequirementAdapter;->mForSetup:Z

    if-eqz p0, :cond_0

    invoke-static {p1}, Lcom/android/settings/password/PasswordRequirementAdapter$PasswordRequirementViewHolder;->access$000(Lcom/android/settings/password/PasswordRequirementAdapter$PasswordRequirementViewHolder;)Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p0

    const p2, 0x7f060347

    invoke-virtual {p0, p2}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-static {p1}, Lcom/android/settings/password/PasswordRequirementAdapter$PasswordRequirementViewHolder;->access$000(Lcom/android/settings/password/PasswordRequirementAdapter$PasswordRequirementViewHolder;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const p2, 0x7f0d0279

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    new-instance p1, Lcom/android/settings/password/PasswordRequirementAdapter$PasswordRequirementViewHolder;

    invoke-direct {p1, p0}, Lcom/android/settings/password/PasswordRequirementAdapter$PasswordRequirementViewHolder;-><init>(Landroid/view/View;)V

    return-object p1
.end method

.method public setForSetup(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/password/PasswordRequirementAdapter;->mForSetup:Z

    return-void
.end method

.method public setRequirements([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/password/PasswordRequirementAdapter;->mRequirements:[Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
