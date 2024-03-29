.class public abstract Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.super Lcom/android/settingslib/core/lifecycle/ObservableDialogFragment;
.source "InstrumentedDialogFragment.java"

# interfaces
.implements Lcom/android/settingslib/core/instrumentation/Instrumentable;


# instance fields
.field protected mDialogId:I

.field protected mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settingslib/core/lifecycle/ObservableDialogFragment;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;->mDialogId:I

    return-void
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservableDialogFragment;->onAttach(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v0, p0, Lcom/android/settingslib/core/lifecycle/ObservableDialogFragment;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    new-instance v1, Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;

    invoke-interface {p0}, Lcom/android/settingslib/core/instrumentation/Instrumentable;->getMetricsCategory()I

    move-result v2

    iget-object v3, p0, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-direct {v1, v2, v3}, Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;-><init>(ILcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;)V

    invoke-virtual {v0, v1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    iget-object p0, p0, Lcom/android/settingslib/core/lifecycle/ObservableDialogFragment;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->onAttach(Landroid/content/Context;)V

    return-void
.end method
