.class public Lcom/google/android/setupcompat/template/SystemNavBarMixin;
.super Ljava/lang/Object;
.source "SystemNavBarMixin.java"

# interfaces
.implements Lcom/google/android/setupcompat/template/Mixin;


# instance fields
.field final applyPartnerResources:Z

.field private sucSystemNavBarBackgroundColor:I

.field private final templateLayout:Lcom/google/android/setupcompat/internal/TemplateLayout;

.field private final windowOfActivity:Landroid/view/Window;


# direct methods
.method public constructor <init>(Lcom/google/android/setupcompat/internal/TemplateLayout;Landroid/view/Window;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/setupcompat/template/SystemNavBarMixin;->sucSystemNavBarBackgroundColor:I

    iput-object p1, p0, Lcom/google/android/setupcompat/template/SystemNavBarMixin;->templateLayout:Lcom/google/android/setupcompat/internal/TemplateLayout;

    iput-object p2, p0, Lcom/google/android/setupcompat/template/SystemNavBarMixin;->windowOfActivity:Landroid/view/Window;

    instance-of p2, p1, Lcom/google/android/setupcompat/PartnerCustomizationLayout;

    if-eqz p2, :cond_0

    check-cast p1, Lcom/google/android/setupcompat/PartnerCustomizationLayout;

    invoke-virtual {p1}, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->shouldApplyPartnerResource()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/google/android/setupcompat/template/SystemNavBarMixin;->applyPartnerResources:Z

    return-void
.end method


# virtual methods
.method public applyPartnerCustomizations(Landroid/util/AttributeSet;I)V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object v0, p0, Lcom/google/android/setupcompat/template/SystemNavBarMixin;->templateLayout:Lcom/google/android/setupcompat/internal/TemplateLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/google/android/setupcompat/R$styleable;->SucSystemNavBarMixin:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/setupcompat/template/SystemNavBarMixin;->sucSystemNavBarBackgroundColor:I

    iget p2, p0, Lcom/google/android/setupcompat/template/SystemNavBarMixin;->sucSystemNavBarBackgroundColor:I

    invoke-virtual {p0, p2}, Lcom/google/android/setupcompat/template/SystemNavBarMixin;->setSystemNavBarBackground(I)V

    sget p2, Lcom/google/android/setupcompat/R$styleable;->SucSystemNavBarMixin_sucLightSystemNavBar:I

    invoke-virtual {p0}, Lcom/google/android/setupcompat/template/SystemNavBarMixin;->isLightSystemNavBar()Z

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/google/android/setupcompat/template/SystemNavBarMixin;->setLightSystemNavBar(Z)V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public isLightSystemNavBar()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object p0, p0, Lcom/google/android/setupcompat/template/SystemNavBarMixin;->windowOfActivity:Landroid/view/Window;

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result p0

    const/16 v1, 0x10

    and-int/2addr p0, v1

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public setLightSystemNavBar(Z)V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object v0, p0, Lcom/google/android/setupcompat/template/SystemNavBarMixin;->windowOfActivity:Landroid/view/Window;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/setupcompat/template/SystemNavBarMixin;->applyPartnerResources:Z

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/google/android/setupcompat/template/SystemNavBarMixin;->templateLayout:Lcom/google/android/setupcompat/internal/TemplateLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v0

    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_LIGHT_NAVIGATION_BAR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getBoolean(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Z)Z

    move-result p1

    :cond_0
    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/setupcompat/template/SystemNavBarMixin;->windowOfActivity:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/setupcompat/template/SystemNavBarMixin;->windowOfActivity:Landroid/view/Window;

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result p0

    or-int/lit8 p0, p0, 0x10

    invoke-virtual {p1, p0}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/google/android/setupcompat/template/SystemNavBarMixin;->windowOfActivity:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/setupcompat/template/SystemNavBarMixin;->windowOfActivity:Landroid/view/Window;

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result p0

    and-int/lit8 p0, p0, -0x11

    invoke-virtual {p1, p0}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setSystemNavBarBackground(I)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object v0, p0, Lcom/google/android/setupcompat/template/SystemNavBarMixin;->windowOfActivity:Landroid/view/Window;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/setupcompat/template/SystemNavBarMixin;->applyPartnerResources:Z

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/google/android/setupcompat/template/SystemNavBarMixin;->templateLayout:Lcom/google/android/setupcompat/internal/TemplateLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v0

    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_NAVIGATION_BAR_BG_COLOR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getColor(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)I

    move-result p1

    :cond_0
    iget-object p0, p0, Lcom/google/android/setupcompat/template/SystemNavBarMixin;->windowOfActivity:Landroid/view/Window;

    invoke-virtual {p0, p1}, Landroid/view/Window;->setNavigationBarColor(I)V

    :cond_1
    return-void
.end method
