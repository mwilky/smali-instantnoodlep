.class public Lcom/google/android/setupdesign/template/NavigationBarMixin;
.super Ljava/lang/Object;
.source "NavigationBarMixin.java"

# interfaces
.implements Lcom/google/android/setupcompat/template/Mixin;


# instance fields
.field private final templateLayout:Lcom/google/android/setupcompat/internal/TemplateLayout;


# direct methods
.method public constructor <init>(Lcom/google/android/setupcompat/internal/TemplateLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/setupdesign/template/NavigationBarMixin;->templateLayout:Lcom/google/android/setupcompat/internal/TemplateLayout;

    return-void
.end method


# virtual methods
.method public getNavigationBar()Lcom/google/android/setupdesign/view/NavigationBar;
    .locals 1

    iget-object p0, p0, Lcom/google/android/setupdesign/template/NavigationBarMixin;->templateLayout:Lcom/google/android/setupcompat/internal/TemplateLayout;

    const v0, 0x7f0a06d5

    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->findManagedViewById(I)Landroid/view/View;

    move-result-object p0

    instance-of v0, p0, Lcom/google/android/setupdesign/view/NavigationBar;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/android/setupdesign/view/NavigationBar;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
