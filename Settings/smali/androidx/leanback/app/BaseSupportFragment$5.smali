.class Landroidx/leanback/app/BaseSupportFragment$5;
.super Landroidx/leanback/util/StateMachine$Condition;
.source "BaseSupportFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/leanback/app/BaseSupportFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroidx/leanback/app/BaseSupportFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2}, Landroidx/leanback/util/StateMachine$Condition;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public canProceed()Z
    .locals 0

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 p0, 0x0

    return p0
.end method
