.class public abstract Lcom/oneplus/lib/widget/ActionProvider;
.super Ljava/lang/Object;
.source "ActionProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/widget/ActionProvider$VisibilityListener;,
        Lcom/oneplus/lib/widget/ActionProvider$SubUiVisibilityListener;
    }
.end annotation


# instance fields
.field private mVisibilityListener:Lcom/oneplus/lib/widget/ActionProvider$VisibilityListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onCreateActionView()Landroid/view/View;
.end method

.method public overridesItemVisibility()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public setVisibilityListener(Lcom/oneplus/lib/widget/ActionProvider$VisibilityListener;)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/lib/widget/ActionProvider;->mVisibilityListener:Lcom/oneplus/lib/widget/ActionProvider$VisibilityListener;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const-string v0, "setVisibilityListener: Setting a new ActionProvider.VisibilityListener when one is already set. Are you reusing this "

    invoke-static {v0}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline23(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " instance while it is still in use somewhere else?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActionProvider(support)"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p1, p0, Lcom/oneplus/lib/widget/ActionProvider;->mVisibilityListener:Lcom/oneplus/lib/widget/ActionProvider$VisibilityListener;

    return-void
.end method
