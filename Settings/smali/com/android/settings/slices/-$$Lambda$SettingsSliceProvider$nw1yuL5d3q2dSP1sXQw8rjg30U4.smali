.class public final synthetic Lcom/android/settings/slices/-$$Lambda$SettingsSliceProvider$nw1yuL5d3q2dSP1sXQw8rjg30U4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/settings/slices/SettingsSliceProvider;

.field private final synthetic f$1:Landroid/net/Uri;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/slices/SettingsSliceProvider;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/slices/-$$Lambda$SettingsSliceProvider$nw1yuL5d3q2dSP1sXQw8rjg30U4;->f$0:Lcom/android/settings/slices/SettingsSliceProvider;

    iput-object p2, p0, Lcom/android/settings/slices/-$$Lambda$SettingsSliceProvider$nw1yuL5d3q2dSP1sXQw8rjg30U4;->f$1:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/slices/-$$Lambda$SettingsSliceProvider$nw1yuL5d3q2dSP1sXQw8rjg30U4;->f$0:Lcom/android/settings/slices/SettingsSliceProvider;

    iget-object p0, p0, Lcom/android/settings/slices/-$$Lambda$SettingsSliceProvider$nw1yuL5d3q2dSP1sXQw8rjg30U4;->f$1:Landroid/net/Uri;

    invoke-virtual {v0, p0}, Lcom/android/settings/slices/SettingsSliceProvider;->lambda$onSliceUnpinned$1$SettingsSliceProvider(Landroid/net/Uri;)V

    return-void
.end method