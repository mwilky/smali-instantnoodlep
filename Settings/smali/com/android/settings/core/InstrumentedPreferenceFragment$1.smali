.class Lcom/android/settings/core/InstrumentedPreferenceFragment$1;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "InstrumentedPreferenceFragment.java"


# instance fields
.field state:I

.field final synthetic val$springRelativeLayout:Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;


# direct methods
.method constructor <init>(Lcom/android/settings/core/InstrumentedPreferenceFragment;Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;)V
    .locals 0

    iput-object p2, p0, Lcom/android/settings/core/InstrumentedPreferenceFragment$1;->val$springRelativeLayout:Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/settings/core/InstrumentedPreferenceFragment$1;->state:I

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    iput p2, p0, Lcom/android/settings/core/InstrumentedPreferenceFragment$1;->state:I

    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    iget p1, p0, Lcom/android/settings/core/InstrumentedPreferenceFragment$1;->state:I

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/android/settings/core/InstrumentedPreferenceFragment$1;->val$springRelativeLayout:Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;

    invoke-virtual {p0}, Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;->onRecyclerViewScrolled()V

    :cond_0
    return-void
.end method
