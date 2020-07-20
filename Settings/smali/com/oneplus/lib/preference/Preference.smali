.class public Lcom/oneplus/lib/preference/Preference;
.super Ljava/lang/Object;
.source "Preference.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/preference/Preference$BaseSavedState;,
        Lcom/oneplus/lib/preference/Preference$OnPreferenceChangeInternalListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/oneplus/lib/preference/Preference;",
        ">;"
    }
.end annotation


# instance fields
.field private mCanRecycleLayout:Z

.field private mContext:Landroid/content/Context;

.field private mDependencyKey:Ljava/lang/String;

.field private mDependencyMet:Z

.field private mDependents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oneplus/lib/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private mEnabled:Z

.field private mFragment:Ljava/lang/String;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconResId:I

.field private mId:J

.field private mImageFrame:Landroid/view/View;

.field private mIntent:Landroid/content/Intent;

.field private mIsAvatarIcon:Z

.field private mKey:Ljava/lang/String;

.field private mLayoutResId:I

.field private mListener:Lcom/oneplus/lib/preference/Preference$OnPreferenceChangeInternalListener;

.field private mOrder:I

.field private mParentDependencyMet:Z

.field private mPersistent:Z

.field private mSecondaryIcon:Landroid/graphics/drawable/Drawable;

.field private mSecondaryIconResId:I

.field private mSelectable:Z

.field private mShouldDisableView:Z

.field private mSummary:Ljava/lang/CharSequence;

.field private mSummaryOff:Ljava/lang/CharSequence;

.field private mSummaryOn:Ljava/lang/CharSequence;

.field private mTitle:Ljava/lang/CharSequence;

.field private mWidgetFrame:Landroid/view/ViewGroup;

.field private mWidgetLayoutResId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v0, 0x0

    const v1, 0x7f040361

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/oneplus/lib/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/lib/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, Lcom/oneplus/lib/preference/Preference;->mOrder:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/preference/Preference;->mEnabled:Z

    iput-boolean v0, p0, Lcom/oneplus/lib/preference/Preference;->mSelectable:Z

    iput-boolean v0, p0, Lcom/oneplus/lib/preference/Preference;->mPersistent:Z

    iput-boolean v0, p0, Lcom/oneplus/lib/preference/Preference;->mDependencyMet:Z

    iput-boolean v0, p0, Lcom/oneplus/lib/preference/Preference;->mParentDependencyMet:Z

    iput-boolean v0, p0, Lcom/oneplus/lib/preference/Preference;->mShouldDisableView:Z

    const v1, 0x7f0d01fd

    iput v1, p0, Lcom/oneplus/lib/preference/Preference;->mLayoutResId:I

    iput-boolean v0, p0, Lcom/oneplus/lib/preference/Preference;->mCanRecycleLayout:Z

    iput-object p1, p0, Lcom/oneplus/lib/preference/Preference;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/oneplus/commonctrl/R$styleable;->Preference:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    const/16 p3, 0x1e

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/oneplus/lib/preference/Preference;->mIsAvatarIcon:Z

    const-string p3, "mIsAvatarIcon = "

    invoke-static {p3}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline23(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget-boolean p4, p0, Lcom/oneplus/lib/preference/Preference;->mIsAvatarIcon:Z

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "Preference"

    invoke-static {p4, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget p3, Lcom/oneplus/commonctrl/R$styleable;->Preference_android_icon:I

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lcom/oneplus/lib/preference/Preference;->mIconResId:I

    const/4 p3, 0x6

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/oneplus/lib/preference/Preference;->mKey:Ljava/lang/String;

    const/4 p3, 0x4

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/oneplus/lib/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    const/4 p2, 0x7

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/oneplus/lib/preference/Preference;->mSummary:Ljava/lang/CharSequence;

    iget p2, p0, Lcom/oneplus/lib/preference/Preference;->mOrder:I

    const/16 p3, 0x8

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/oneplus/lib/preference/Preference;->mOrder:I

    const/16 p2, 0xd

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/oneplus/lib/preference/Preference;->mFragment:Ljava/lang/String;

    iget p2, p0, Lcom/oneplus/lib/preference/Preference;->mLayoutResId:I

    const/4 p3, 0x3

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/oneplus/lib/preference/Preference;->mLayoutResId:I

    iget p2, p0, Lcom/oneplus/lib/preference/Preference;->mWidgetLayoutResId:I

    const/16 p3, 0x9

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/oneplus/lib/preference/Preference;->mWidgetLayoutResId:I

    const/4 p2, 0x2

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/oneplus/lib/preference/Preference;->mEnabled:Z

    const/4 p2, 0x5

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/oneplus/lib/preference/Preference;->mSelectable:Z

    iget-boolean p2, p0, Lcom/oneplus/lib/preference/Preference;->mPersistent:Z

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/oneplus/lib/preference/Preference;->mPersistent:Z

    const/16 p2, 0xa

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/oneplus/lib/preference/Preference;->mDependencyKey:Ljava/lang/String;

    const/16 p2, 0xb

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/oneplus/lib/preference/Preference;->onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;

    :cond_0
    const/16 p2, 0xc

    iget-boolean p3, p0, Lcom/oneplus/lib/preference/Preference;->mShouldDisableView:Z

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/oneplus/lib/preference/Preference;->mShouldDisableView:Z

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private setEnabledStateOnViews(Landroid/view/View;Z)V
    .locals 2

    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/oneplus/lib/preference/Preference;->setEnabledStateOnViews(Landroid/view/View;Z)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method protected callChangeListener(Ljava/lang/Object;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method canRecycleLayout()Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/lib/preference/Preference;->mCanRecycleLayout:Z

    return p0
.end method

.method public compareTo(Lcom/oneplus/lib/preference/Preference;)I
    .locals 7

    iget v0, p0, Lcom/oneplus/lib/preference/Preference;->mOrder:I

    iget v1, p1, Lcom/oneplus/lib/preference/Preference;->mOrder:I

    if-eq v0, v1, :cond_0

    sub-int/2addr v0, v1

    return v0

    :cond_0
    iget-object p0, p0, Lcom/oneplus/lib/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    iget-object p1, p1, Lcom/oneplus/lib/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    const/4 v0, 0x0

    if-ne p0, p1, :cond_1

    return v0

    :cond_1
    if-nez p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    if-nez p1, :cond_3

    const/4 p0, -0x1

    return p0

    :cond_3
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_4

    move v3, v1

    goto :goto_0

    :cond_4
    move v3, v2

    :goto_0
    move v4, v0

    :goto_1
    if-ge v0, v3, :cond_6

    add-int/lit8 v5, v0, 0x1

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    add-int/lit8 v6, v4, 0x1

    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v4

    sub-int/2addr v0, v4

    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    move v0, v5

    move v4, v6

    goto :goto_1

    :cond_6
    sub-int v0, v1, v2

    :goto_2
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/oneplus/lib/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/preference/Preference;->compareTo(Lcom/oneplus/lib/preference/Preference;)I

    move-result p0

    return p0
.end method

.method protected findPreferenceInHierarchy(Ljava/lang/String;)Lcom/oneplus/lib/preference/Preference;
    .locals 0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/preference/Preference;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method getFilterableStringBuilder()Ljava/lang/StringBuilder;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/16 v3, 0x20

    if-nez v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-lez p0, :cond_2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_2
    return-object v0
.end method

.method public getFragment()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/preference/Preference;->mFragment:Ljava/lang/String;

    return-object p0
.end method

.method getId()J
    .locals 2

    iget-wide v0, p0, Lcom/oneplus/lib/preference/Preference;->mId:J

    return-wide v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/preference/Preference;->mIntent:Landroid/content/Intent;

    return-object p0
.end method

.method public getLayoutResource()I
    .locals 0

    iget p0, p0, Lcom/oneplus/lib/preference/Preference;->mLayoutResId:I

    return p0
.end method

.method protected getPersistedBoolean(Z)Z
    .locals 0

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->shouldPersist()Z

    move-result p0

    if-nez p0, :cond_0

    return p1

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method protected getPersistedInt(I)I
    .locals 0

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->shouldPersist()Z

    move-result p0

    if-nez p0, :cond_0

    return p1

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method protected getPersistedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->shouldPersist()Z

    move-result p0

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method public getPreferenceManager()V
    .locals 0

    return-void
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/preference/Preference;->mSummary:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    if-nez p1, :cond_0

    invoke-virtual {p0, p2}, Lcom/oneplus/lib/preference/Preference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/preference/Preference;->onBindView(Landroid/view/View;)V

    return-object p1
.end method

.method public getWidgetLayoutResource()I
    .locals 0

    iget p0, p0, Lcom/oneplus/lib/preference/Preference;->mWidgetLayoutResId:I

    return p0
.end method

.method public isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/lib/preference/Preference;->mEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/lib/preference/Preference;->mDependencyMet:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/oneplus/lib/preference/Preference;->mParentDependencyMet:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSelectable()Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/lib/preference/Preference;->mSelectable:Z

    return p0
.end method

.method public isSummaryEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mSummary:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mSummaryOn:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oneplus/lib/preference/Preference;->mSummaryOff:Ljava/lang/CharSequence;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected notifyChanged()V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/preference/Preference;->mListener:Lcom/oneplus/lib/preference/Preference$OnPreferenceChangeInternalListener;

    if-eqz p0, :cond_0

    check-cast p0, Lcom/oneplus/lib/preference/PreferenceGroupAdapter;

    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public notifyDependencyChange(Z)V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mDependents:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/lib/preference/Preference;

    invoke-virtual {v3, p0, p1}, Lcom/oneplus/lib/preference/Preference;->onDependencyChanged(Lcom/oneplus/lib/preference/Preference;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onAttachedToActivity()V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mDependencyKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mDependencyKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/preference/Preference;->findPreferenceInHierarchy(Ljava/lang/String;)Lcom/oneplus/lib/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/oneplus/lib/preference/Preference;->mDependents:Ljava/util/List;

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/oneplus/lib/preference/Preference;->mDependents:Ljava/util/List;

    :cond_1
    iget-object v1, v0, Lcom/oneplus/lib/preference/Preference;->mDependents:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/oneplus/lib/preference/Preference;->shouldDisableDependents()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/lib/preference/Preference;->onDependencyChanged(Lcom/oneplus/lib/preference/Preference;Z)V

    :goto_0
    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Dependency \""

    invoke-static {v1}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline23(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/lib/preference/Preference;->mDependencyKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" not found for preference \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/lib/preference/Preference;->mKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" (title: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oneplus/lib/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    const-string v2, "\""

    invoke-static {v1, p0, v2}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline20(Ljava/lang/StringBuilder;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 8

    const v0, 0x1020016

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    :goto_0
    const v0, 0x1020010

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    :goto_1
    const v0, 0x1020006

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_8

    iget v3, p0, Lcom/oneplus/lib/preference/Preference;->mIconResId:I

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/oneplus/lib/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_6

    :cond_4
    iget-object v3, p0, Lcom/oneplus/lib/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_5

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v4, p0, Lcom/oneplus/lib/preference/Preference;->mIconResId:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/lib/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    :cond_5
    iget-object v3, p0, Lcom/oneplus/lib/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_6

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_6
    iget-object v3, p0, Lcom/oneplus/lib/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_7

    move v3, v2

    goto :goto_2

    :cond_7
    move v3, v1

    :goto_2
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_8
    const v0, 0x7f0a030c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mImageFrame:Landroid/view/View;

    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mImageFrame:Landroid/view/View;

    if-eqz v0, :cond_a

    iget-object v3, p0, Lcom/oneplus/lib/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_9

    move v3, v2

    goto :goto_3

    :cond_9
    move v3, v1

    :goto_3
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_a
    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mImageFrame:Landroid/view/View;

    const/16 v3, 0x10

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_e

    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mImageFrame:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v0, :cond_e

    iget-boolean v4, p0, Lcom/oneplus/lib/preference/Preference;->mIsAvatarIcon:Z

    if-eqz v4, :cond_c

    iget-object v4, p0, Lcom/oneplus/lib/preference/Preference;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070379

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget v4, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget-object v4, p0, Lcom/oneplus/lib/preference/Preference;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0703b9

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    iget-object v4, p0, Lcom/oneplus/lib/preference/Preference;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0703be

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->isSummaryEmpty()Z

    move-result v4

    if-eqz v4, :cond_b

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v4, p0, Lcom/oneplus/lib/preference/Preference;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0703b0

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    goto :goto_4

    :cond_b
    const v4, 0x800033

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v4, p0, Lcom/oneplus/lib/preference/Preference;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0703c2

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    goto :goto_4

    :cond_c
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->isSummaryEmpty()Z

    move-result v4

    if-eqz v4, :cond_d

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    goto :goto_4

    :cond_d
    iget-object v4, p0, Lcom/oneplus/lib/preference/Preference;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0703ed

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    :goto_4
    iget-object v4, p0, Lcom/oneplus/lib/preference/Preference;->mImageFrame:Landroid/view/View;

    invoke-virtual {v4, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_e
    const v0, 0x7f0a0712

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_13

    const v4, 0x7f0a0754

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v5, :cond_13

    iget-object v6, p0, Lcom/oneplus/lib/preference/Preference;->mImageFrame:Landroid/view/View;

    if-eqz v6, :cond_f

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-eq v6, v1, :cond_f

    iput v2, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    goto :goto_5

    :cond_f
    iget-boolean v6, p0, Lcom/oneplus/lib/preference/Preference;->mIsAvatarIcon:Z

    if-nez v6, :cond_10

    iget-object v6, p0, Lcom/oneplus/lib/preference/Preference;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0703ca

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget-object v6, p0, Lcom/oneplus/lib/preference/Preference;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    goto :goto_5

    :cond_10
    iput v2, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    :goto_5
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->isSummaryEmpty()Z

    move-result v6

    if-nez v6, :cond_11

    if-eqz v4, :cond_13

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6

    :cond_11
    iput v3, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/4 v3, -0x2

    iput v3, v5, Landroid/widget/LinearLayout$LayoutParams;->height:I

    if-eqz v4, :cond_12

    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_12
    invoke-virtual {v0, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_13
    :goto_6
    const v0, 0x7f0a0630

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_18

    iget v3, p0, Lcom/oneplus/lib/preference/Preference;->mSecondaryIconResId:I

    if-nez v3, :cond_14

    iget-object v3, p0, Lcom/oneplus/lib/preference/Preference;->mSecondaryIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_16

    :cond_14
    iget-object v3, p0, Lcom/oneplus/lib/preference/Preference;->mSecondaryIcon:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_15

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v4, p0, Lcom/oneplus/lib/preference/Preference;->mSecondaryIconResId:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/lib/preference/Preference;->mSecondaryIcon:Landroid/graphics/drawable/Drawable;

    :cond_15
    iget-object v3, p0, Lcom/oneplus/lib/preference/Preference;->mSecondaryIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_16

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_16
    iget-object v3, p0, Lcom/oneplus/lib/preference/Preference;->mSecondaryIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_17

    move v1, v2

    :cond_17
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_18
    iget-boolean v0, p0, Lcom/oneplus/lib/preference/Preference;->mShouldDisableView:Z

    if-eqz v0, :cond_19

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->isEnabled()Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/preference/Preference;->setEnabledStateOnViews(Landroid/view/View;Z)V

    :cond_19
    return-void
.end method

.method protected onClick()V
    .locals 0

    return-void
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iget v1, p0, Lcom/oneplus/lib/preference/Preference;->mLayoutResId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const v1, 0x1020018

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/oneplus/lib/preference/Preference;->mWidgetFrame:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/oneplus/lib/preference/Preference;->mWidgetFrame:Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    iget v3, p0, Lcom/oneplus/lib/preference/Preference;->mWidgetLayoutResId:I

    const/16 v4, 0x8

    if-eqz v3, :cond_0

    invoke-virtual {v0, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->isSummaryEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mWidgetFrame:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-eq v0, v4, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mWidgetFrame:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v0, :cond_1

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    const/16 v1, 0x10

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object p0, p0, Lcom/oneplus/lib/preference/Preference;->mWidgetFrame:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-object p1
.end method

.method public onDependencyChanged(Lcom/oneplus/lib/preference/Preference;Z)V
    .locals 0

    iget-boolean p1, p0, Lcom/oneplus/lib/preference/Preference;->mDependencyMet:Z

    if-ne p1, p2, :cond_0

    xor-int/lit8 p1, p2, 0x1

    iput-boolean p1, p0, Lcom/oneplus/lib/preference/Preference;->mDependencyMet:Z

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->shouldDisableDependents()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/preference/Preference;->notifyDependencyChange(Z)V

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onParentChanged(Lcom/oneplus/lib/preference/Preference;Z)V
    .locals 0

    iget-boolean p1, p0, Lcom/oneplus/lib/preference/Preference;->mParentDependencyMet:Z

    if-ne p1, p2, :cond_0

    xor-int/lit8 p1, p2, 0x1

    iput-boolean p1, p0, Lcom/oneplus/lib/preference/Preference;->mParentDependencyMet:Z

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->shouldDisableDependents()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/preference/Preference;->notifyDependencyChange(Z)V

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public performClick(Lcom/oneplus/lib/preference/PreferenceScreen;)V
    .locals 0

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->onClick()V

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->getPreferenceManager()V

    iget-object p1, p0, Lcom/oneplus/lib/preference/Preference;->mIntent:Landroid/content/Intent;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lcom/oneplus/lib/preference/Preference;->mIntent:Landroid/content/Intent;

    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method protected persistBoolean(Z)Z
    .locals 1

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->shouldPersist()Z

    move-result v0

    if-eqz v0, :cond_1

    xor-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/preference/Preference;->getPersistedBoolean(Z)Z

    move-result p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    throw p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method protected persistInt(I)Z
    .locals 1

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->shouldPersist()Z

    move-result v0

    if-eqz v0, :cond_1

    not-int v0, p1

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/preference/Preference;->getPersistedInt(I)I

    move-result p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    throw p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public setLayoutResource(I)V
    .locals 1

    iget v0, p0, Lcom/oneplus/lib/preference/Preference;->mLayoutResId:I

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/preference/Preference;->mCanRecycleLayout:Z

    :cond_0
    iput p1, p0, Lcom/oneplus/lib/preference/Preference;->mLayoutResId:I

    return-void
.end method

.method final setOnPreferenceChangeInternalListener(Lcom/oneplus/lib/preference/Preference$OnPreferenceChangeInternalListener;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/preference/Preference;->mListener:Lcom/oneplus/lib/preference/Preference$OnPreferenceChangeInternalListener;

    return-void
.end method

.method protected setSummaryOffFromTwoState(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/preference/Preference;->mSummaryOff:Ljava/lang/CharSequence;

    return-void
.end method

.method protected setSummaryOnFromTwoState(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/preference/Preference;->mSummaryOn:Ljava/lang/CharSequence;

    return-void
.end method

.method public shouldDisableDependents()Z
    .locals 0

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->isEnabled()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method protected shouldPersist()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->getFilterableStringBuilder()Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
