.class public final synthetic Lcom/android/settings/widget/-$$Lambda$HighlightablePreferenceGroupAdapter$tq_kKc8Wy_u27VUZj3YoS-b1PWk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;

.field private final synthetic f$1:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/widget/-$$Lambda$HighlightablePreferenceGroupAdapter$tq_kKc8Wy_u27VUZj3YoS-b1PWk;->f$0:Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;

    iput-object p2, p0, Lcom/android/settings/widget/-$$Lambda$HighlightablePreferenceGroupAdapter$tq_kKc8Wy_u27VUZj3YoS-b1PWk;->f$1:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/widget/-$$Lambda$HighlightablePreferenceGroupAdapter$tq_kKc8Wy_u27VUZj3YoS-b1PWk;->f$0:Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;

    iget-object p0, p0, Lcom/android/settings/widget/-$$Lambda$HighlightablePreferenceGroupAdapter$tq_kKc8Wy_u27VUZj3YoS-b1PWk;->f$1:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->lambda$requestHighlight$0$HighlightablePreferenceGroupAdapter(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method
