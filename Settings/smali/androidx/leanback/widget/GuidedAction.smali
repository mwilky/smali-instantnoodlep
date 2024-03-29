.class public Landroidx/leanback/widget/GuidedAction;
.super Landroidx/leanback/widget/Action;
.source "GuidedAction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/leanback/widget/GuidedAction$Builder;,
        Landroidx/leanback/widget/GuidedAction$BuilderBase;
    }
.end annotation


# instance fields
.field mActionFlags:I

.field mAutofillHints:[Ljava/lang/String;

.field mCheckSetId:I

.field mDescriptionEditInputType:I

.field mDescriptionInputType:I

.field private mEditDescription:Ljava/lang/CharSequence;

.field mEditInputType:I

.field private mEditTitle:Ljava/lang/CharSequence;

.field mEditable:I

.field mInputType:I

.field mSubActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/leanback/widget/GuidedAction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Landroidx/leanback/widget/Action;-><init>(J)V

    return-void
.end method

.method static isPasswordVariant(I)Z
    .locals 1

    and-int/lit16 p0, p0, 0xff0

    const/16 v0, 0x80

    if-eq p0, v0, :cond_1

    const/16 v0, 0x90

    if-eq p0, v0, :cond_1

    const/16 v0, 0xe0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public getDescriptionInputType()I
    .locals 0

    iget p0, p0, Landroidx/leanback/widget/GuidedAction;->mDescriptionInputType:I

    return p0
.end method

.method public getEditDescription()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Landroidx/leanback/widget/GuidedAction;->mEditDescription:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getEditTitle()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Landroidx/leanback/widget/GuidedAction;->mEditTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public hasEditableActivatorView()Z
    .locals 1

    iget p0, p0, Landroidx/leanback/widget/GuidedAction;->mEditable:I

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasSubActions()Z
    .locals 0

    iget-object p0, p0, Landroidx/leanback/widget/GuidedAction;->mSubActions:Ljava/util/List;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasTextEditable()Z
    .locals 2

    iget p0, p0, Landroidx/leanback/widget/GuidedAction;->mEditable:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public final isAutoSaveRestoreEnabled()Z
    .locals 1

    iget p0, p0, Landroidx/leanback/widget/GuidedAction;->mActionFlags:I

    const/16 v0, 0x40

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isChecked()Z
    .locals 1

    iget p0, p0, Landroidx/leanback/widget/GuidedAction;->mActionFlags:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDescriptionEditable()Z
    .locals 1

    iget p0, p0, Landroidx/leanback/widget/GuidedAction;->mEditable:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isEditable()Z
    .locals 1

    iget p0, p0, Landroidx/leanback/widget/GuidedAction;->mEditable:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEnabled()Z
    .locals 1

    iget p0, p0, Landroidx/leanback/widget/GuidedAction;->mActionFlags:I

    const/16 v0, 0x10

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isFocusable()Z
    .locals 1

    iget p0, p0, Landroidx/leanback/widget/GuidedAction;->mActionFlags:I

    const/16 v0, 0x20

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method final needAutoSaveDescription()Z
    .locals 1

    invoke-virtual {p0}, Landroidx/leanback/widget/GuidedAction;->isDescriptionEditable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Landroidx/leanback/widget/GuidedAction;->mDescriptionEditInputType:I

    invoke-static {p0}, Landroidx/leanback/widget/GuidedAction;->isPasswordVariant(I)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method final needAutoSaveTitle()Z
    .locals 1

    invoke-virtual {p0}, Landroidx/leanback/widget/GuidedAction;->isEditable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Landroidx/leanback/widget/GuidedAction;->mEditInputType:I

    invoke-static {p0}, Landroidx/leanback/widget/GuidedAction;->isPasswordVariant(I)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/leanback/widget/GuidedAction;->needAutoSaveTitle()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p0, p1}, Landroidx/leanback/widget/Action;->setLabel1(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/leanback/widget/GuidedAction;->needAutoSaveDescription()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p0, p1}, Landroidx/leanback/widget/Action;->setLabel2(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget v0, p0, Landroidx/leanback/widget/GuidedAction;->mCheckSetId:I

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/leanback/widget/GuidedAction;->isChecked()Z

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/leanback/widget/GuidedAction;->setChecked(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/leanback/widget/GuidedAction;->needAutoSaveTitle()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/leanback/widget/Action;->getLabel1()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/leanback/widget/Action;->getLabel1()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/leanback/widget/GuidedAction;->needAutoSaveDescription()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/leanback/widget/Action;->getLabel2()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/leanback/widget/Action;->getLabel2()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget v0, p0, Landroidx/leanback/widget/GuidedAction;->mCheckSetId:I

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/leanback/widget/GuidedAction;->isChecked()Z

    move-result p0

    invoke-virtual {p1, p2, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    iget v0, p0, Landroidx/leanback/widget/GuidedAction;->mActionFlags:I

    and-int/lit8 v0, v0, -0x2

    and-int/lit8 p1, p1, 0x1

    or-int/2addr p1, v0

    iput p1, p0, Landroidx/leanback/widget/GuidedAction;->mActionFlags:I

    return-void
.end method

.method public setEditDescription(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Landroidx/leanback/widget/GuidedAction;->mEditDescription:Ljava/lang/CharSequence;

    return-void
.end method

.method public setEditTitle(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Landroidx/leanback/widget/GuidedAction;->mEditTitle:Ljava/lang/CharSequence;

    return-void
.end method
