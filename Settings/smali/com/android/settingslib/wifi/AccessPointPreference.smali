.class public Lcom/android/settingslib/wifi/AccessPointPreference;
.super Landroidx/preference/Preference;
.source "AccessPointPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/wifi/AccessPointPreference$IconInjector;,
        Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;
    }
.end annotation


# static fields
.field private static final FRICTION_ATTRS:[I

.field private static final STATE_METERED:[I

.field private static final STATE_SECURED:[I

.field private static final WIFI_CONNECTION_STRENGTH:[I


# instance fields
.field private mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

.field private mBadge:Landroid/graphics/drawable/Drawable;

.field private final mBadgeCache:Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;

.field private final mBadgePadding:I

.field private mContentDescription:Ljava/lang/CharSequence;

.field private mContext:Landroid/content/Context;

.field private mDefaultIconResId:I

.field private mForSavedNetworks:Z

.field private final mFrictionSld:Landroid/graphics/drawable/StateListDrawable;

.field private mHe8ssCapableAp:Z

.field private final mIconInjector:Lcom/android/settingslib/wifi/AccessPointPreference$IconInjector;

.field private mLevel:I

.field private final mNotifyChanged:Ljava/lang/Runnable;

.field private mShowDivider:Z

.field private mTitleView:Landroid/widget/TextView;

.field private mVhtMax8SpatialStreamsSupport:Z

.field private mWifiGeneration:I

.field private mWifiSpeed:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const v3, 0x7f040430

    aput v3, v1, v2

    sput-object v1, Lcom/android/settingslib/wifi/AccessPointPreference;->STATE_SECURED:[I

    new-array v1, v0, [I

    const v3, 0x7f040434

    aput v3, v1, v2

    sput-object v1, Lcom/android/settingslib/wifi/AccessPointPreference;->STATE_METERED:[I

    new-array v0, v0, [I

    const v1, 0x7f04051b

    aput v1, v0, v2

    sput-object v0, Lcom/android/settingslib/wifi/AccessPointPreference;->FRICTION_ATTRS:[I

    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settingslib/wifi/AccessPointPreference;->WIFI_CONNECTION_STRENGTH:[I

    return-void

    :array_0
    .array-data 4
        0x7f120072
        0x7f1200bb
        0x7f1200c0
        0x7f1200bf
        0x7f1200be
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mForSavedNetworks:Z

    iput p2, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mWifiSpeed:I

    new-instance v0, Lcom/android/settingslib/wifi/AccessPointPreference$1;

    invoke-direct {v0, p0}, Lcom/android/settingslib/wifi/AccessPointPreference$1;-><init>(Lcom/android/settingslib/wifi/AccessPointPreference;)V

    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mNotifyChanged:Ljava/lang/Runnable;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mFrictionSld:Landroid/graphics/drawable/StateListDrawable;

    iput p2, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mBadgePadding:I

    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mBadgeCache:Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;

    new-instance p2, Lcom/android/settingslib/wifi/AccessPointPreference$IconInjector;

    invoke-direct {p2, p1}, Lcom/android/settingslib/wifi/AccessPointPreference$IconInjector;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mIconInjector:Lcom/android/settingslib/wifi/AccessPointPreference$IconInjector;

    iput-object p1, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Lcom/android/settingslib/wifi/AccessPoint;Landroid/content/Context;Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;IZ)V
    .locals 10

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget-object v2, Lcom/android/settingslib/wifi/AccessPointPreference;->FRICTION_ATTRS:[I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    :cond_0
    move-object v7, v0

    const/4 v8, -0x1

    new-instance v9, Lcom/android/settingslib/wifi/AccessPointPreference$IconInjector;

    invoke-direct {v9, p2}, Lcom/android/settingslib/wifi/AccessPointPreference$IconInjector;-><init>(Landroid/content/Context;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v9}, Lcom/android/settingslib/wifi/AccessPointPreference;-><init>(Lcom/android/settingslib/wifi/AccessPoint;Landroid/content/Context;Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;IZLandroid/graphics/drawable/StateListDrawable;ILcom/android/settingslib/wifi/AccessPointPreference$IconInjector;)V

    iput-object p2, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mContext:Landroid/content/Context;

    return-void
.end method

.method constructor <init>(Lcom/android/settingslib/wifi/AccessPoint;Landroid/content/Context;Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;IZLandroid/graphics/drawable/StateListDrawable;ILcom/android/settingslib/wifi/AccessPointPreference$IconInjector;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mForSavedNetworks:Z

    iput v0, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mWifiSpeed:I

    new-instance v0, Lcom/android/settingslib/wifi/AccessPointPreference$1;

    invoke-direct {v0, p0}, Lcom/android/settingslib/wifi/AccessPointPreference$1;-><init>(Lcom/android/settingslib/wifi/AccessPointPreference;)V

    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mNotifyChanged:Ljava/lang/Runnable;

    const v0, 0x7f0d027c

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setLayoutResource(I)V

    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPointPreference;->getWidgetLayoutResourceId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setWidgetLayoutResource(I)V

    iput-object p3, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mBadgeCache:Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;

    iput-object p1, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    iput-boolean p5, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mForSavedNetworks:Z

    iget-object p1, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {p1, p0}, Lcom/android/settingslib/wifi/AccessPoint;->setTag(Ljava/lang/Object;)V

    iput p7, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mLevel:I

    iput p4, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mDefaultIconResId:I

    iput-object p6, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mFrictionSld:Landroid/graphics/drawable/StateListDrawable;

    iput-object p8, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mIconInjector:Lcom/android/settingslib/wifi/AccessPointPreference$IconInjector;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f070644

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mBadgePadding:I

    iput-object p2, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Lcom/android/settingslib/wifi/AccessPoint;Landroid/content/Context;Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;Z)V
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/settingslib/wifi/AccessPointPreference;-><init>(Lcom/android/settingslib/wifi/AccessPoint;Landroid/content/Context;Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;IZ)V

    iput-object p2, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPointPreference;->refresh()V

    return-void
.end method

.method static buildContentDescription(Landroid/content/Context;Landroidx/preference/Preference;Lcom/android/settingslib/wifi/AccessPoint;)Ljava/lang/CharSequence;
    .locals 8

    invoke-virtual {p1}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x2

    const-string v3, ","

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x3

    if-nez v1, :cond_0

    new-array v1, v6, [Ljava/lang/CharSequence;

    aput-object v0, v1, v5

    aput-object v3, v1, v4

    aput-object p1, v1, v2

    invoke-static {v1}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    :cond_0
    invoke-virtual {p2}, Lcom/android/settingslib/wifi/AccessPoint;->getLevel()I

    move-result p1

    if-ltz p1, :cond_1

    sget-object v1, Lcom/android/settingslib/wifi/AccessPointPreference;->WIFI_CONNECTION_STRENGTH:[I

    array-length v7, v1

    if-ge p1, v7, :cond_1

    new-array v7, v6, [Ljava/lang/CharSequence;

    aput-object v0, v7, v5

    aput-object v3, v7, v4

    aget p1, v1, p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v7, v2

    invoke-static {v7}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    :cond_1
    new-array p1, v6, [Ljava/lang/CharSequence;

    aput-object v0, p1, v5

    aput-object v3, p1, v4

    invoke-virtual {p2}, Lcom/android/settingslib/wifi/AccessPoint;->getSecurity()I

    move-result p2

    if-nez p2, :cond_2

    const p2, 0x7f1200bc

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    const p2, 0x7f1200bd

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    aput-object p0, p1, v2

    invoke-static {p1}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method static setTitle(Lcom/android/settingslib/wifi/AccessPointPreference;Lcom/android/settingslib/wifi/AccessPoint;)V
    .locals 0

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public getAccessPoint()Lcom/android/settingslib/wifi/AccessPoint;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    return-object p0
.end method

.method protected getWidgetLayoutResourceId()I
    .locals 0

    const p0, 0x7f0d002d

    return p0
.end method

.method protected notifyChanged()V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mNotifyChanged:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    invoke-super {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 7

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mLevel:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    :cond_1
    const v0, 0x1020016

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mTitleView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mBadge:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v1, v2}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mTitleView:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mBadgePadding:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    :cond_2
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mContentDescription:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a02ac

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x4

    const/16 v2, 0x8

    if-eqz v0, :cond_6

    iget-object v3, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mFrictionSld:Landroid/graphics/drawable/StateListDrawable;

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/settingslib/wifi/AccessPoint;->getSecurity()I

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/settingslib/wifi/AccessPoint;->getSecurity()I

    move-result v3

    if-eq v3, v1, :cond_4

    iget-object v3, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/settingslib/wifi/AccessPoint;->getSecurity()I

    move-result v3

    if-eq v3, v2, :cond_4

    iget-object v3, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mFrictionSld:Landroid/graphics/drawable/StateListDrawable;

    sget-object v4, Lcom/android/settingslib/wifi/AccessPointPreference;->STATE_SECURED:[I

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/settingslib/wifi/AccessPoint;->isMetered()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mFrictionSld:Landroid/graphics/drawable/StateListDrawable;

    sget-object v4, Lcom/android/settingslib/wifi/AccessPointPreference;->STATE_METERED:[I

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    :cond_5
    :goto_0
    iget-object v3, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mFrictionSld:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/StateListDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_6
    :goto_1
    const v0, 0x7f0a030e

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "oneplus_passpoint"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_7

    move v3, v5

    goto :goto_2

    :cond_7
    move v3, v4

    :goto_2
    new-array v5, v5, [I

    const/16 v6, 0x5d

    aput v6, v5, v4

    invoke-static {v5}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v5

    if-eqz v5, :cond_a

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/settingslib/wifi/AccessPoint;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v3, v5, :cond_a

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    if-eqz v3, :cond_9

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v5

    if-eqz v5, :cond_9

    iget-boolean v2, v3, Landroid/net/wifi/WifiConfiguration;->isHomeProviderNetwork:Z

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08031c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    :cond_8
    iget-object v2, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08031b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    :cond_9
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    :cond_a
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_3
    const v0, 0x7f0a0777

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPointPreference;->shouldShowDivider()Z

    move-result p0

    if-eqz p0, :cond_b

    move v1, v4

    :cond_b
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onLevelChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mNotifyChanged:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public refresh()V
    .locals 7

    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0, v0}, Lcom/android/settingslib/wifi/AccessPointPreference;->setTitle(Lcom/android/settingslib/wifi/AccessPointPreference;Lcom/android/settingslib/wifi/AccessPoint;)V

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPoint;->getLevel()I

    move-result v1

    iget-object v2, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settingslib/wifi/AccessPoint;->getSpeed()I

    move-result v2

    iget-object v3, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/settingslib/wifi/AccessPoint;->getWifiGeneration()I

    move-result v3

    iget-object v4, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v4}, Lcom/android/settingslib/wifi/AccessPoint;->isVhtMax8SpatialStreamsSupported()Z

    move-result v4

    iget-object v5, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v5}, Lcom/android/settingslib/wifi/AccessPoint;->isHe8ssCapableAp()Z

    move-result v5

    iget v6, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mLevel:I

    if-ne v1, v6, :cond_1

    iget v6, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mWifiSpeed:I

    if-ne v2, v6, :cond_1

    iget v6, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mWifiGeneration:I

    if-ne v3, v6, :cond_1

    iget-boolean v6, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mVhtMax8SpatialStreamsSupport:Z

    if-ne v6, v4, :cond_1

    iget-boolean v6, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mHe8ssCapableAp:Z

    if-eq v6, v5, :cond_3

    :cond_1
    iput v1, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mLevel:I

    iput v2, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mWifiSpeed:I

    iput v3, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mWifiGeneration:I

    iput-boolean v4, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mVhtMax8SpatialStreamsSupport:Z

    iput-boolean v5, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mHe8ssCapableAp:Z

    iget v1, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mLevel:I

    iget v2, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mWifiGeneration:I

    iget-boolean v3, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mVhtMax8SpatialStreamsSupport:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mHe8ssCapableAp:Z

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/android/settingslib/wifi/AccessPointPreference;->updateIcon(IIZLandroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPointPreference;->notifyChanged()V

    :cond_3
    invoke-virtual {p0, v0}, Lcom/android/settingslib/wifi/AccessPointPreference;->updateBadge(Landroid/content/Context;)V

    iget-boolean v0, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mForSavedNetworks:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->getSavedNetworkSummary()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->getSettingsSummary()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPoint;->getSecurity()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_5

    const-string v1, "WPA3(SAE) "

    invoke-static {v1, v0}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline17(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_5
    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPoint;->getSecurity()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_6

    const-string v1, "WPA3(OWE) "

    invoke-static {v1, v0}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline17(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_6
    :goto_2
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-static {v0, p0, v1}, Lcom/android/settingslib/wifi/AccessPointPreference;->buildContentDescription(Landroid/content/Context;Landroidx/preference/Preference;Lcom/android/settingslib/wifi/AccessPoint;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mContentDescription:Ljava/lang/CharSequence;

    return-void
.end method

.method public setShowDivider(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mShowDivider:Z

    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPointPreference;->notifyChanged()V

    return-void
.end method

.method public shouldShowDivider()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mShowDivider:Z

    return p0
.end method

.method protected updateBadge(Landroid/content/Context;)V
    .locals 1

    iget-object p1, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mBadgeCache:Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;

    iget p1, p1, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    invoke-static {v0, p1}, Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;->access$000(Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mBadge:Landroid/graphics/drawable/Drawable;

    :cond_0
    return-void
.end method

.method protected updateIcon(IIZLandroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    iget p1, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mDefaultIconResId:I

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setIcon(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void

    :cond_1
    iget v1, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mWifiSpeed:I

    const-string v2, "settings_wifi_speed_labels"

    invoke-static {p4, v2, v1}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mIconInjector:Lcom/android/settingslib/wifi/AccessPointPreference$IconInjector;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/settingslib/wifi/AccessPointPreference$IconInjector;->getIcon(IIZ)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-boolean p2, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mForSavedNetworks:Z

    if-nez p2, :cond_2

    if-eqz p1, :cond_2

    const p2, 0x1010435

    invoke-static {p4, p2}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_2
    iget p1, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mDefaultIconResId:I

    if-eqz p1, :cond_3

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setIcon(I)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    return-void
.end method
