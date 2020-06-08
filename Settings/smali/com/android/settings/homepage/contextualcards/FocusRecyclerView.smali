.class public Lcom/android/settings/homepage/contextualcards/FocusRecyclerView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "FocusRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/homepage/contextualcards/FocusRecyclerView$FocusListener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/android/settings/homepage/contextualcards/FocusRecyclerView$FocusListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public onWindowFocusChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onWindowFocusChanged(Z)V

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/FocusRecyclerView;->mListener:Lcom/android/settings/homepage/contextualcards/FocusRecyclerView$FocusListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/android/settings/homepage/contextualcards/FocusRecyclerView$FocusListener;->onWindowFocusChanged(Z)V

    :cond_0
    return-void
.end method

.method public setListener(Lcom/android/settings/homepage/contextualcards/FocusRecyclerView$FocusListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/FocusRecyclerView;->mListener:Lcom/android/settings/homepage/contextualcards/FocusRecyclerView$FocusListener;

    return-void
.end method
