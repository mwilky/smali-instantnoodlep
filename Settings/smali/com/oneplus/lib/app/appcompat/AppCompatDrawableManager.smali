.class public Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;
.super Ljava/lang/Object;
.source "AppCompatDrawableManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager$ColorFilterLruCache;,
        Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager$InflateDelegate;
    }
.end annotation


# static fields
.field private static final COLORFILTER_COLOR_BACKGROUND_MULTIPLY:[I

.field private static final COLORFILTER_COLOR_CONTROL_ACTIVATED:[I

.field private static final COLORFILTER_TINT_COLOR_CONTROL_NORMAL:[I

.field private static final COLOR_FILTER_CACHE:Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager$ColorFilterLruCache;

.field private static final DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

.field private static INSTANCE:Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;

.field private static final TINT_CHECKABLE_BUTTON_LIST:[I

.field private static final TINT_COLOR_CONTROL_NORMAL:[I

.field private static final TINT_COLOR_CONTROL_STATE_LIST:[I


# instance fields
.field private mDelegates:Lcom/oneplus/support/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/support/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager$InflateDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final mDrawableCacheLock:Ljava/lang/Object;

.field private final mDrawableCaches:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/content/Context;",
            "Lcom/oneplus/support/collection/LongSparseArray<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mHasCheckedVectorDrawableSetup:Z

.field private mKnownDrawableIdTags:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTintLists:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/content/Context;",
            "Landroid/util/SparseArray<",
            "Landroid/content/res/ColorStateList;",
            ">;>;"
        }
    .end annotation
.end field

.field private mTypedValue:Landroid/util/TypedValue;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    sput-object v0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    new-instance v0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager$ColorFilterLruCache;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager$ColorFilterLruCache;-><init>(I)V

    sput-object v0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->COLOR_FILTER_CACHE:Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager$ColorFilterLruCache;

    const/4 v0, 0x3

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->COLORFILTER_TINT_COLOR_CONTROL_NORMAL:[I

    const/4 v1, 0x7

    new-array v1, v1, [I

    fill-array-data v1, :array_1

    sput-object v1, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->TINT_COLOR_CONTROL_NORMAL:[I

    const/16 v1, 0xa

    new-array v1, v1, [I

    fill-array-data v1, :array_2

    sput-object v1, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->COLORFILTER_COLOR_CONTROL_ACTIVATED:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->COLORFILTER_COLOR_BACKGROUND_MULTIPLY:[I

    const/4 v0, 0x2

    new-array v1, v0, [I

    fill-array-data v1, :array_4

    sput-object v1, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->TINT_COLOR_CONTROL_STATE_LIST:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->TINT_CHECKABLE_BUTTON_LIST:[I

    return-void

    :array_0
    .array-data 4
        0x7f08008e
        0x7f08008c
        0x7f080035
    .end array-data

    :array_1
    .array-data 4
        0x7f08004e
        0x7f080079
        0x7f080055
        0x7f080050
        0x7f080051
        0x7f080054
        0x7f080053
    .end array-data

    :array_2
    .array-data 4
        0x7f08008b
        0x7f08008d
        0x7f080046
        0x7f080084
        0x7f080085
        0x7f080087
        0x7f080089
        0x7f080086
        0x7f080088
        0x7f08008a
    .end array-data

    :array_3
    .array-data 4
        0x7f08006f
        0x7f080044
        0x7f08006e
    .end array-data

    :array_4
    .array-data 4
        0x7f080082
        0x7f08008f
    .end array-data

    :array_5
    .array-data 4
        0x7f080038
        0x7f08003e
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->mDrawableCacheLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/WeakHashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/WeakHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->mDrawableCaches:Ljava/util/WeakHashMap;

    return-void
.end method

.method private addDrawableToCache(Landroid/content/Context;JLandroid/graphics/drawable/Drawable;)Z
    .locals 2

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p4

    if-eqz p4, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->mDrawableCacheLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->mDrawableCaches:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/support/collection/LongSparseArray;

    if-nez v1, :cond_0

    new-instance v1, Lcom/oneplus/support/collection/LongSparseArray;

    invoke-direct {v1}, Lcom/oneplus/support/collection/LongSparseArray;-><init>()V

    iget-object p0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->mDrawableCaches:Ljava/util/WeakHashMap;

    invoke-virtual {p0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    new-instance p0, Ljava/lang/ref/WeakReference;

    invoke-direct {p0, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, p2, p3, p0}, Lcom/oneplus/support/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static arrayContains([II)Z
    .locals 4

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, p0, v2

    if-ne v3, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private createButtonColorStateList(Landroid/content/Context;ILandroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;
    .locals 4

    const/4 p0, 0x4

    new-array v0, p0, [[I

    new-array p0, p0, [I

    const v1, 0x7f0400d4

    invoke-static {p1, v1}, Lcom/oneplus/lib/app/appcompat/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v1

    const v2, 0x7f0400d2

    invoke-static {p1, v2}, Lcom/oneplus/lib/app/appcompat/ThemeUtils;->getDisabledThemeAttrColor(Landroid/content/Context;I)I

    move-result p1

    sget-object v2, Lcom/oneplus/lib/app/appcompat/ThemeUtils;->DISABLED_STATE_SET:[I

    const/4 v3, 0x0

    aput-object v2, v0, v3

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    aget-object p1, v0, v3

    invoke-virtual {p3, p1, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    :goto_0
    aput p1, p0, v3

    const/4 p1, 0x1

    sget-object v2, Lcom/oneplus/lib/app/appcompat/ThemeUtils;->PRESSED_STATE_SET:[I

    aput-object v2, v0, p1

    if-nez p3, :cond_1

    move v2, p2

    goto :goto_1

    :cond_1
    aget-object v2, v0, p1

    invoke-virtual {p3, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    :goto_1
    invoke-static {v1, v2}, Lcom/oneplus/support/core/graphics/ColorUtils;->compositeColors(II)I

    move-result v2

    aput v2, p0, p1

    const/4 p1, 0x2

    sget-object v2, Lcom/oneplus/lib/app/appcompat/ThemeUtils;->FOCUSED_STATE_SET:[I

    aput-object v2, v0, p1

    if-nez p3, :cond_2

    move v2, p2

    goto :goto_2

    :cond_2
    aget-object v2, v0, p1

    invoke-virtual {p3, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    :goto_2
    invoke-static {v1, v2}, Lcom/oneplus/support/core/graphics/ColorUtils;->compositeColors(II)I

    move-result v1

    aput v1, p0, p1

    const/4 p1, 0x3

    sget-object v1, Lcom/oneplus/lib/app/appcompat/ThemeUtils;->EMPTY_STATE_SET:[I

    aput-object v1, v0, p1

    if-nez p3, :cond_3

    goto :goto_3

    :cond_3
    aget-object p2, v0, p1

    invoke-virtual {p3, p2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p2

    :goto_3
    aput p2, p0, p1

    new-instance p1, Landroid/content/res/ColorStateList;

    invoke-direct {p1, v0, p0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object p1
.end method

.method private static createCacheKey(Landroid/util/TypedValue;)J
    .locals 4

    iget v0, p0, Landroid/util/TypedValue;->assetCookie:I

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    iget p0, p0, Landroid/util/TypedValue;->data:I

    int-to-long v2, p0

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static get()Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;
    .locals 1

    sget-object v0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->INSTANCE:Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;

    invoke-direct {v0}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;-><init>()V

    sput-object v0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->INSTANCE:Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    :cond_0
    sget-object v0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->INSTANCE:Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;

    return-object v0
.end method

.method private getCachedDrawable(Landroid/content/Context;J)Landroid/graphics/drawable/Drawable;
    .locals 3

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->mDrawableCacheLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->mDrawableCaches:Ljava/util/WeakHashMap;

    invoke-virtual {p0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oneplus/support/collection/LongSparseArray;

    const/4 v1, 0x0

    if-nez p0, :cond_0

    monitor-exit v0

    return-object v1

    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/oneplus/support/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable$ConstantState;

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {v2, p0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :cond_1
    invoke-virtual {p0, p2, p3}, Lcom/oneplus/support/collection/LongSparseArray;->delete(J)V

    :cond_2
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static getPorterDuffColorFilter(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .locals 2

    sget-object v0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->COLOR_FILTER_CACHE:Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager$ColorFilterLruCache;

    invoke-virtual {v0, p0, p1}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager$ColorFilterLruCache;->get(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v0, p0, p1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    sget-object v1, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->COLOR_FILTER_CACHE:Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager$ColorFilterLruCache;

    invoke-virtual {v1, p0, p1, v0}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager$ColorFilterLruCache;->put(ILandroid/graphics/PorterDuff$Mode;Landroid/graphics/PorterDuffColorFilter;)Landroid/graphics/PorterDuffColorFilter;

    :cond_0
    return-object v0
.end method

.method private static setPorterDuffColorFilter(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V
    .locals 2

    invoke-static {p0}, Lcom/oneplus/lib/app/appcompat/DrawableUtils;->canSafelyMutateDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    :cond_0
    if-nez p2, :cond_1

    sget-object p2, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    :cond_1
    sget-object v0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->COLOR_FILTER_CACHE:Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager$ColorFilterLruCache;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager$ColorFilterLruCache;->get(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v0, p1, p2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    sget-object v1, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->COLOR_FILTER_CACHE:Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager$ColorFilterLruCache;

    invoke-virtual {v1, p1, p2, v0}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager$ColorFilterLruCache;->put(ILandroid/graphics/PorterDuff$Mode;Landroid/graphics/PorterDuffColorFilter;)Landroid/graphics/PorterDuffColorFilter;

    :cond_2
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method


# virtual methods
.method public getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 10

    iget-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->mHasCheckedVectorDrawableSetup:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean v1, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->mHasCheckedVectorDrawableSetup:Z

    :goto_0
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->mDelegates:Lcom/oneplus/support/collection/ArrayMap;

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/oneplus/support/collection/SimpleArrayMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->mKnownDrawableIdTags:Landroid/util/SparseArray;

    const-string v4, "appcompat_skip_skip"

    if-eqz v0, :cond_1

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    if-eqz v0, :cond_2

    iget-object v5, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->mDelegates:Lcom/oneplus/support/collection/ArrayMap;

    invoke-virtual {v5, v0}, Lcom/oneplus/support/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    goto/16 :goto_3

    :cond_1
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->mKnownDrawableIdTags:Landroid/util/SparseArray;

    :cond_2
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->mTypedValue:Landroid/util/TypedValue;

    if-nez v0, :cond_3

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->mTypedValue:Landroid/util/TypedValue;

    :cond_3
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->mTypedValue:Landroid/util/TypedValue;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, p2, v0, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-static {v0}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->createCacheKey(Landroid/util/TypedValue;)J

    move-result-wide v6

    invoke-direct {p0, p1, v6, v7}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->getCachedDrawable(Landroid/content/Context;J)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v6, :cond_4

    goto :goto_4

    :cond_4
    iget-object v7, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-eqz v7, :cond_8

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, ".xml"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    :try_start_0
    invoke-virtual {v5, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v5

    invoke-static {v5}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v7

    :goto_1
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    if-eq v8, v2, :cond_5

    if-eq v8, v1, :cond_5

    goto :goto_1

    :cond_5
    if-ne v8, v2, :cond_7

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->mKnownDrawableIdTags:Landroid/util/SparseArray;

    invoke-virtual {v9, p2, v8}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    iget-object v9, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->mDelegates:Lcom/oneplus/support/collection/ArrayMap;

    invoke-virtual {v9, v8}, Lcom/oneplus/support/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager$InflateDelegate;

    if-eqz v8, :cond_6

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v9

    invoke-interface {v8, p1, v5, v7, v9}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager$InflateDelegate;->createFromXmlInner(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    :cond_6
    if-eqz v6, :cond_8

    iget v0, v0, Landroid/util/TypedValue;->changingConfigurations:I

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    goto :goto_2

    :cond_7
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v5, "No start tag found"

    invoke-direct {v0, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_8
    :goto_2
    if-nez v6, :cond_a

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->mKnownDrawableIdTags:Landroid/util/SparseArray;

    invoke-virtual {v0, p2, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    goto :goto_4

    :cond_9
    :goto_3
    move-object v6, v3

    :cond_a
    :goto_4
    const/4 v0, 0x0

    if-nez v6, :cond_f

    iget-object v4, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->mTypedValue:Landroid/util/TypedValue;

    if-nez v4, :cond_b

    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    iput-object v4, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->mTypedValue:Landroid/util/TypedValue;

    :cond_b
    iget-object v4, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->mTypedValue:Landroid/util/TypedValue;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, p2, v4, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-static {v4}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->createCacheKey(Landroid/util/TypedValue;)J

    move-result-wide v5

    invoke-direct {p0, p1, v5, v6}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->getCachedDrawable(Landroid/content/Context;J)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    if-eqz v7, :cond_d

    :cond_c
    :goto_5
    move-object v6, v7

    goto :goto_6

    :cond_d
    const v8, 0x7f080045

    if-ne p2, v8, :cond_e

    new-instance v7, Landroid/graphics/drawable/LayerDrawable;

    new-array v2, v2, [Landroid/graphics/drawable/Drawable;

    const v8, 0x7f080044

    invoke-virtual {p0, p1, v8}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    aput-object v8, v2, v0

    const v8, 0x7f080046

    invoke-virtual {p0, p1, v8}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    aput-object v8, v2, v1

    invoke-direct {v7, v2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    :cond_e
    if-eqz v7, :cond_c

    iget v2, v4, Landroid/util/TypedValue;->changingConfigurations:I

    invoke-virtual {v7, v2}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    invoke-direct {p0, p1, v5, v6, v7}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->addDrawableToCache(Landroid/content/Context;JLandroid/graphics/drawable/Drawable;)Z

    goto :goto_5

    :cond_f
    :goto_6
    if-nez v6, :cond_10

    invoke-static {p1, p2}, Lcom/oneplus/support/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    :cond_10
    if-eqz v6, :cond_2e

    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->mTintLists:Ljava/util/WeakHashMap;

    if-eqz v2, :cond_11

    invoke-virtual {v2, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    if-eqz v2, :cond_11

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/res/ColorStateList;

    goto :goto_7

    :cond_11
    move-object v2, v3

    :goto_7
    const v4, 0x7f080080

    const v5, 0x7f0400d5

    if-nez v2, :cond_20

    const v7, 0x7f080049

    if-ne p2, v7, :cond_12

    const v2, 0x7f060014

    invoke-static {p1, v2}, Lcom/oneplus/lib/app/appcompat/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    goto/16 :goto_9

    :cond_12
    const v7, 0x7f080081

    if-ne p2, v7, :cond_13

    const v2, 0x7f060017

    invoke-static {p1, v2}, Lcom/oneplus/lib/app/appcompat/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    goto/16 :goto_9

    :cond_13
    if-ne p2, v4, :cond_14

    const v2, 0x7f0603ad

    invoke-static {p1, v2}, Lcom/oneplus/lib/app/appcompat/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    goto/16 :goto_9

    :cond_14
    const v7, 0x7f08003d

    if-ne p2, v7, :cond_15

    const v2, 0x7f0400d2

    invoke-static {p1, v2}, Lcom/oneplus/lib/app/appcompat/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {p0, p1, v2, v3}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->createButtonColorStateList(Landroid/content/Context;ILandroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v2

    goto/16 :goto_9

    :cond_15
    const v7, 0x7f080037

    if-ne p2, v7, :cond_16

    invoke-direct {p0, p1, v0, v3}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->createButtonColorStateList(Landroid/content/Context;ILandroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v2

    goto :goto_9

    :cond_16
    const v7, 0x7f08003c

    if-ne p2, v7, :cond_17

    const v2, 0x7f0400d0

    invoke-static {p1, v2}, Lcom/oneplus/lib/app/appcompat/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {p0, p1, v2, v3}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->createButtonColorStateList(Landroid/content/Context;ILandroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v2

    goto :goto_9

    :cond_17
    const v7, 0x7f08007e

    if-eq p2, v7, :cond_1c

    const v7, 0x7f08007f

    if-ne p2, v7, :cond_18

    goto :goto_8

    :cond_18
    sget-object v7, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->TINT_COLOR_CONTROL_NORMAL:[I

    invoke-static {v7, p2}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->arrayContains([II)Z

    move-result v7

    if-eqz v7, :cond_19

    invoke-static {p1, v5}, Lcom/oneplus/lib/app/appcompat/ThemeUtils;->getThemeAttrColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    goto :goto_9

    :cond_19
    sget-object v7, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->TINT_COLOR_CONTROL_STATE_LIST:[I

    invoke-static {v7, p2}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->arrayContains([II)Z

    move-result v7

    if-eqz v7, :cond_1a

    const v2, 0x7f060013

    invoke-static {p1, v2}, Lcom/oneplus/lib/app/appcompat/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    goto :goto_9

    :cond_1a
    sget-object v7, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->TINT_CHECKABLE_BUTTON_LIST:[I

    invoke-static {v7, p2}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->arrayContains([II)Z

    move-result v7

    if-eqz v7, :cond_1b

    const v2, 0x7f060012

    invoke-static {p1, v2}, Lcom/oneplus/lib/app/appcompat/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    goto :goto_9

    :cond_1b
    const v7, 0x7f080078

    if-ne p2, v7, :cond_1d

    const v2, 0x7f060015

    invoke-static {p1, v2}, Lcom/oneplus/lib/app/appcompat/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    goto :goto_9

    :cond_1c
    :goto_8
    const v2, 0x7f060016

    invoke-static {p1, v2}, Lcom/oneplus/lib/app/appcompat/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    :cond_1d
    :goto_9
    if-eqz v2, :cond_20

    iget-object v7, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->mTintLists:Ljava/util/WeakHashMap;

    if-nez v7, :cond_1e

    new-instance v7, Ljava/util/WeakHashMap;

    invoke-direct {v7}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v7, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->mTintLists:Ljava/util/WeakHashMap;

    :cond_1e
    iget-object v7, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->mTintLists:Ljava/util/WeakHashMap;

    invoke-virtual {v7, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/SparseArray;

    if-nez v7, :cond_1f

    new-instance v7, Landroid/util/SparseArray;

    invoke-direct {v7}, Landroid/util/SparseArray;-><init>()V

    iget-object p0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->mTintLists:Ljava/util/WeakHashMap;

    invoke-virtual {p0, p1, v7}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1f
    invoke-virtual {v7, p2, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    :cond_20
    if-eqz v2, :cond_23

    invoke-static {v6}, Lcom/oneplus/lib/app/appcompat/DrawableUtils;->canSafelyMutateDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result p0

    if-eqz p0, :cond_21

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    move-object v6, p0

    :cond_21
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v6, v2}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    if-ne p2, v4, :cond_22

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    :cond_22
    if-eqz v3, :cond_2e

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v6, v3}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    goto/16 :goto_f

    :cond_23
    const p0, 0x7f08007a

    const v2, 0x102000d

    const v3, 0x102000f

    const/high16 v4, 0x1020000

    const v7, 0x7f0400d3

    if-ne p2, p0, :cond_24

    move-object p0, v6

    check-cast p0, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {p0, v4}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-static {p1, v5}, Lcom/oneplus/lib/app/appcompat/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v0

    sget-object v1, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    invoke-static {p2, v0, v1}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->setPorterDuffColorFilter(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p0, v3}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-static {p1, v5}, Lcom/oneplus/lib/app/appcompat/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v0

    sget-object v1, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    invoke-static {p2, v0, v1}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->setPorterDuffColorFilter(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p0, v2}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-static {p1, v7}, Lcom/oneplus/lib/app/appcompat/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result p1

    sget-object p2, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    invoke-static {p0, p1, p2}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->setPorterDuffColorFilter(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    goto/16 :goto_f

    :cond_24
    const p0, 0x7f080071

    if-eq p2, p0, :cond_2d

    const p0, 0x7f080070

    if-eq p2, p0, :cond_2d

    const p0, 0x7f080072

    if-ne p2, p0, :cond_25

    goto/16 :goto_e

    :cond_25
    sget-object p0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    sget-object v2, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->COLORFILTER_TINT_COLOR_CONTROL_NORMAL:[I

    invoke-static {v2, p2}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->arrayContains([II)Z

    move-result v2

    const v3, 0x1010031

    if-eqz v2, :cond_26

    move v3, v5

    goto :goto_a

    :cond_26
    sget-object v2, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->COLORFILTER_COLOR_CONTROL_ACTIVATED:[I

    invoke-static {v2, p2}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->arrayContains([II)Z

    move-result v2

    if-eqz v2, :cond_27

    move v3, v7

    goto :goto_a

    :cond_27
    sget-object v2, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->COLORFILTER_COLOR_BACKGROUND_MULTIPLY:[I

    invoke-static {v2, p2}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->arrayContains([II)Z

    move-result v2

    if-eqz v2, :cond_28

    sget-object p0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    goto :goto_a

    :cond_28
    const v2, 0x7f080063

    if-ne p2, v2, :cond_29

    const p2, 0x1010030

    const v2, 0x42233333    # 40.8f

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    goto :goto_b

    :cond_29
    const v2, 0x7f080048

    if-ne p2, v2, :cond_2a

    :goto_a
    move v2, v0

    move p2, v3

    :goto_b
    move v3, v2

    move-object v2, p0

    move p0, v1

    goto :goto_c

    :cond_2a
    move-object v2, p0

    move p0, v0

    move p2, p0

    move v3, p2

    :goto_c
    if-eqz p0, :cond_2e

    invoke-static {v6}, Lcom/oneplus/lib/app/appcompat/DrawableUtils;->canSafelyMutateDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result p0

    if-eqz p0, :cond_2b

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_d

    :cond_2b
    move-object p0, v6

    :goto_d
    invoke-static {p1, p2}, Lcom/oneplus/lib/app/appcompat/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result p1

    invoke-static {p1, v2}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->getPorterDuffColorFilter(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    const/4 p1, -0x1

    if-eq v3, p1, :cond_2c

    invoke-virtual {p0, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_2c
    move v0, v1

    goto :goto_f

    :cond_2d
    :goto_e
    move-object p0, v6

    check-cast p0, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {p0, v4}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-static {p1, v5}, Lcom/oneplus/lib/app/appcompat/ThemeUtils;->getDisabledThemeAttrColor(Landroid/content/Context;I)I

    move-result v0

    sget-object v1, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    invoke-static {p2, v0, v1}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->setPorterDuffColorFilter(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p0, v3}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-static {p1, v7}, Lcom/oneplus/lib/app/appcompat/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v0

    sget-object v1, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    invoke-static {p2, v0, v1}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->setPorterDuffColorFilter(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p0, v2}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-static {p1, v7}, Lcom/oneplus/lib/app/appcompat/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result p1

    sget-object p2, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    invoke-static {p0, p1, p2}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->setPorterDuffColorFilter(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    :cond_2e
    :goto_f
    if-eqz v6, :cond_2f

    invoke-static {v6}, Lcom/oneplus/lib/app/appcompat/DrawableUtils;->fixDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2f
    return-object v6
.end method
