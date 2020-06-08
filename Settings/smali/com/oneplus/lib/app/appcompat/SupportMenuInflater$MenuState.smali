.class Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;
.super Ljava/lang/Object;
.source "SupportMenuInflater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/app/appcompat/SupportMenuInflater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MenuState"
.end annotation


# instance fields
.field private groupCategory:I

.field private groupCheckable:I

.field private groupEnabled:Z

.field private groupId:I

.field private groupOrder:I

.field private groupVisible:Z

.field itemActionProvider:Lcom/oneplus/support/core/view/ActionProvider;

.field private itemActionProviderClassName:Ljava/lang/String;

.field private itemActionViewClassName:Ljava/lang/String;

.field private itemActionViewLayout:I

.field private itemAdded:Z

.field private itemAlphabeticShortcut:C

.field private itemCategoryOrder:I

.field private itemCheckable:I

.field private itemChecked:Z

.field private itemEnabled:Z

.field private itemIconResId:I

.field private itemId:I

.field private itemListenerMethodName:Ljava/lang/String;

.field private itemNumericShortcut:C

.field private itemShowAsAction:I

.field private itemTitle:Ljava/lang/CharSequence;

.field private itemTitleCondensed:Ljava/lang/CharSequence;

.field private itemVisible:Z

.field private menu:Landroid/view/Menu;

.field final synthetic this$0:Lcom/oneplus/lib/app/appcompat/SupportMenuInflater;


# direct methods
.method public constructor <init>(Lcom/oneplus/lib/app/appcompat/SupportMenuInflater;Landroid/view/Menu;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->this$0:Lcom/oneplus/lib/app/appcompat/SupportMenuInflater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->menu:Landroid/view/Menu;

    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->resetGroup()V

    return-void
.end method

.method private newInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    :try_start_0
    iget-object p0, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->this$0:Lcom/oneplus/lib/app/appcompat/SupportMenuInflater;

    iget-object p0, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    invoke-virtual {p0, p3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Cannot instantiate class: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SupportMenuInflater"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private setItem(Landroid/view/MenuItem;)V
    .locals 5

    iget-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->itemChecked:Z

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->itemVisible:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->itemEnabled:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    iget v1, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->itemCheckable:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lt v1, v3, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->itemTitleCondensed:Ljava/lang/CharSequence;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    iget v1, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->itemIconResId:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-char v1, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->itemAlphabeticShortcut:C

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v0

    iget-char v1, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->itemNumericShortcut:C

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setNumericShortcut(C)Landroid/view/MenuItem;

    iget v0, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->itemShowAsAction:I

    if-ltz v0, :cond_1

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->itemListenerMethodName:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->this$0:Lcom/oneplus/lib/app/appcompat/SupportMenuInflater;

    iget-object v0, v0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->isRestricted()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$InflatedOnMenuItemClickListener;

    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->this$0:Lcom/oneplus/lib/app/appcompat/SupportMenuInflater;

    invoke-virtual {v1}, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater;->getRealOwner()Ljava/lang/Object;

    move-result-object v1

    iget-object v4, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->itemListenerMethodName:Ljava/lang/String;

    invoke-direct {v0, v1, v4}, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$InflatedOnMenuItemClickListener;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "The android:onClick attribute cannot be used within a restricted context"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    instance-of v0, p1, Lcom/oneplus/lib/menu/MenuItemImpl;

    if-eqz v0, :cond_4

    move-object v1, p1

    check-cast v1, Lcom/oneplus/lib/menu/MenuItemImpl;

    :cond_4
    iget v1, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->itemCheckable:I

    const/4 v4, 0x2

    if-lt v1, v4, :cond_6

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, Lcom/oneplus/lib/menu/MenuItemImpl;

    invoke-virtual {v0, v3}, Lcom/oneplus/lib/menu/MenuItemImpl;->setExclusiveCheckable(Z)V

    goto :goto_2

    :cond_5
    instance-of v0, p1, Lcom/oneplus/lib/menu/MenuItemWrapperICS;

    if-eqz v0, :cond_6

    move-object v0, p1

    check-cast v0, Lcom/oneplus/lib/menu/MenuItemWrapperICS;

    invoke-virtual {v0, v3}, Lcom/oneplus/lib/menu/MenuItemWrapperICS;->setExclusiveCheckable(Z)V

    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->itemActionViewClassName:Ljava/lang/String;

    if-eqz v0, :cond_7

    sget-object v1, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater;->ACTION_VIEW_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->this$0:Lcom/oneplus/lib/app/appcompat/SupportMenuInflater;

    iget-object v2, v2, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater;->mActionViewConstructorArguments:[Ljava/lang/Object;

    invoke-direct {p0, v0, v1, v2}, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->newInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    move v2, v3

    :cond_7
    iget v0, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->itemActionViewLayout:I

    if-lez v0, :cond_9

    if-nez v2, :cond_8

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setActionView(I)Landroid/view/MenuItem;

    goto :goto_3

    :cond_8
    const-string v0, "SupportMenuInflater"

    const-string v1, "Ignoring attribute \'itemActionViewLayout\'. Action view already specified."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    :goto_3
    iget-object p0, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->itemActionProvider:Lcom/oneplus/support/core/view/ActionProvider;

    if-eqz p0, :cond_b

    instance-of v0, p1, Lcom/oneplus/support/core/internal/view/SupportMenuItem;

    if-eqz v0, :cond_a

    check-cast p1, Lcom/oneplus/support/core/internal/view/SupportMenuItem;

    invoke-interface {p1, p0}, Lcom/oneplus/support/core/internal/view/SupportMenuItem;->setSupportActionProvider(Lcom/oneplus/support/core/view/ActionProvider;)Lcom/oneplus/support/core/internal/view/SupportMenuItem;

    goto :goto_4

    :cond_a
    const-string p0, "MenuItemCompat"

    const-string p1, "setActionProvider: item does not implement SupportMenuItem; ignoring"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    :goto_4
    return-void
.end method


# virtual methods
.method public addItem()V
    .locals 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->itemAdded:Z

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->menu:Landroid/view/Menu;

    iget v1, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->groupId:I

    iget v2, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->itemId:I

    iget v3, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->itemCategoryOrder:I

    iget-object v4, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->itemTitle:Ljava/lang/CharSequence;

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->setItem(Landroid/view/MenuItem;)V

    return-void
.end method

.method public addSubMenuItem()Landroid/view/SubMenu;
    .locals 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->itemAdded:Z

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->menu:Landroid/view/Menu;

    iget v1, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->groupId:I

    iget v2, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->itemId:I

    iget v3, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->itemCategoryOrder:I

    iget-object v4, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->itemTitle:Ljava/lang/CharSequence;

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SubMenu;->getItem()Landroid/view/MenuItem;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->setItem(Landroid/view/MenuItem;)V

    return-object v0
.end method

.method public hasAddedItem()Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->itemAdded:Z

    return p0
.end method

.method public readGroup(Landroid/util/AttributeSet;)V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->this$0:Lcom/oneplus/lib/app/appcompat/SupportMenuInflater;

    iget-object v0, v0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/oneplus/commonctrl/R$styleable;->OPMenuGroup:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->groupId:I

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->groupCategory:I

    const/4 v2, 0x4

    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->groupOrder:I

    const/4 v2, 0x5

    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->groupCheckable:I

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->groupVisible:Z

    sget v1, Lcom/oneplus/commonctrl/R$styleable;->OPMenuGroup_android_enabled:I

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->groupEnabled:Z

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public readItem(Landroid/util/AttributeSet;)V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->this$0:Lcom/oneplus/lib/app/appcompat/SupportMenuInflater;

    iget-object v0, v0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/oneplus/commonctrl/R$styleable;->OPMenuItem:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->itemId:I

    iget v1, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->groupCategory:I

    const/4 v2, 0x5

    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iget v2, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->groupOrder:I

    const/4 v3, 0x6

    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    const/high16 v3, -0x10000

    and-int/2addr v1, v3

    const v3, 0xffff

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    iput v1, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->itemCategoryOrder:I

    const/4 v1, 0x7

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->itemTitle:Ljava/lang/CharSequence;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->itemTitleCondensed:Ljava/lang/CharSequence;

    sget v1, Lcom/oneplus/commonctrl/R$styleable;->OPMenuItem_android_icon:I

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->itemIconResId:I

    const/16 v1, 0x9

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    :goto_0
    iput-char v1, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->itemAlphabeticShortcut:C

    const/16 v1, 0xa

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    move v1, v0

    goto :goto_1

    :cond_1
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    :goto_1
    iput-char v1, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->itemNumericShortcut:C

    const/16 v1, 0xb

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput v1, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->itemCheckable:I

    goto :goto_2

    :cond_2
    iget v1, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->groupCheckable:I

    iput v1, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->itemCheckable:I

    :goto_2
    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->itemChecked:Z

    const/4 v1, 0x4

    iget-boolean v2, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->groupVisible:Z

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->itemVisible:Z

    iget-boolean v1, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->groupEnabled:Z

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->itemEnabled:Z

    const/16 v1, 0xd

    const/4 v3, -0x1

    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->itemShowAsAction:I

    const/16 v1, 0xc

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->itemListenerMethodName:Ljava/lang/String;

    const/16 v1, 0x11

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->itemActionViewLayout:I

    const/16 v1, 0x13

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->itemActionViewClassName:Ljava/lang/String;

    const/16 v1, 0x12

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->itemActionProviderClassName:Ljava/lang/String;

    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->itemActionProviderClassName:Ljava/lang/String;

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    move v2, v0

    :goto_3
    if-eqz v2, :cond_4

    iget v1, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->itemActionViewLayout:I

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->itemActionViewClassName:Ljava/lang/String;

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->itemActionProviderClassName:Ljava/lang/String;

    sget-object v2, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater;->ACTION_PROVIDER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    iget-object v3, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->this$0:Lcom/oneplus/lib/app/appcompat/SupportMenuInflater;

    iget-object v3, v3, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater;->mActionProviderConstructorArguments:[Ljava/lang/Object;

    invoke-direct {p0, v1, v2, v3}, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->newInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/support/core/view/ActionProvider;

    iput-object v1, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->itemActionProvider:Lcom/oneplus/support/core/view/ActionProvider;

    goto :goto_4

    :cond_4
    if-eqz v2, :cond_5

    const-string v1, "SupportMenuInflater"

    const-string v2, "Ignoring attribute \'actionProviderClass\'. Action view already specified."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->itemActionProvider:Lcom/oneplus/support/core/view/ActionProvider;

    :goto_4
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    iput-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->itemAdded:Z

    return-void
.end method

.method public resetGroup()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->groupId:I

    iput v0, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->groupCategory:I

    iput v0, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->groupOrder:I

    iput v0, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->groupCheckable:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->groupVisible:Z

    iput-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->groupEnabled:Z

    return-void
.end method
