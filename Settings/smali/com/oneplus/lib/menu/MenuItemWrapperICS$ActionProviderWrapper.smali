.class Lcom/oneplus/lib/menu/MenuItemWrapperICS$ActionProviderWrapper;
.super Lcom/oneplus/lib/widget/ActionProvider;
.source "MenuItemWrapperICS.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/menu/MenuItemWrapperICS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ActionProviderWrapper"
.end annotation


# instance fields
.field final mInner:Landroid/view/ActionProvider;

.field final synthetic this$0:Lcom/oneplus/lib/menu/MenuItemWrapperICS;


# direct methods
.method public constructor <init>(Lcom/oneplus/lib/menu/MenuItemWrapperICS;Landroid/content/Context;Landroid/view/ActionProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/menu/MenuItemWrapperICS$ActionProviderWrapper;->this$0:Lcom/oneplus/lib/menu/MenuItemWrapperICS;

    invoke-direct {p0, p2}, Lcom/oneplus/lib/widget/ActionProvider;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/oneplus/lib/menu/MenuItemWrapperICS$ActionProviderWrapper;->mInner:Landroid/view/ActionProvider;

    return-void
.end method


# virtual methods
.method public onCreateActionView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/menu/MenuItemWrapperICS$ActionProviderWrapper;->mInner:Landroid/view/ActionProvider;

    invoke-virtual {p0}, Landroid/view/ActionProvider;->onCreateActionView()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method
