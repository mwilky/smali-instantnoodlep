.class public Lcom/oneplus/support/core/fragment/app/Fragment;
.super Ljava/lang/Object;
.source "Fragment.java"

# interfaces
.implements Landroid/content/ComponentCallbacks;
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Lcom/oneplus/support/lifecycle/LifecycleOwner;
.implements Lcom/oneplus/support/lifecycle/ViewModelStoreOwner;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;,
        Lcom/oneplus/support/core/fragment/app/Fragment$OnStartEnterTransitionListener;,
        Lcom/oneplus/support/core/fragment/app/Fragment$InstantiationException;,
        Lcom/oneplus/support/core/fragment/app/Fragment$SavedState;
    }
.end annotation


# static fields
.field static final USE_DEFAULT_TRANSITION:Ljava/lang/Object;

.field private static final sClassMap:Lcom/oneplus/support/collection/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/support/collection/SimpleArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field


# instance fields
.field mAdded:Z

.field mAnimationInfo:Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;

.field mArguments:Landroid/os/Bundle;

.field mBackStackNesting:I

.field mCalled:Z

.field mChildFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

.field mChildNonConfig:Lcom/oneplus/support/core/fragment/app/FragmentManagerNonConfig;

.field mContainer:Landroid/view/ViewGroup;

.field mContainerId:I

.field mDeferStart:Z

.field mDetached:Z

.field mFragmentId:I

.field mFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

.field mFromLayout:Z

.field mHasMenu:Z

.field mHidden:Z

.field mHiddenChanged:Z

.field mHost:Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;

.field mInLayout:Z

.field mIndex:I

.field mInnerView:Landroid/view/View;

.field mIsCreated:Z

.field mIsNewlyAdded:Z

.field mLayoutInflater:Landroid/view/LayoutInflater;

.field mLifecycleRegistry:Lcom/oneplus/support/lifecycle/LifecycleRegistry;

.field mMenuVisible:Z

.field mParentFragment:Lcom/oneplus/support/core/fragment/app/Fragment;

.field mPerformedCreateView:Z

.field mPostponedAlpha:F

.field mRemoving:Z

.field mRestored:Z

.field mRetainInstance:Z

.field mRetaining:Z

.field mSavedFragmentState:Landroid/os/Bundle;

.field mSavedUserVisibleHint:Ljava/lang/Boolean;

.field mSavedViewState:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field mState:I

.field mTag:Ljava/lang/String;

.field mTarget:Lcom/oneplus/support/core/fragment/app/Fragment;

.field mTargetIndex:I

.field mTargetRequestCode:I

.field mUserVisibleHint:Z

.field mView:Landroid/view/View;

.field mViewLifecycleOwner:Lcom/oneplus/support/lifecycle/LifecycleOwner;

.field mViewLifecycleOwnerLiveData:Lcom/oneplus/support/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/support/lifecycle/MutableLiveData<",
            "Lcom/oneplus/support/lifecycle/LifecycleOwner;",
            ">;"
        }
    .end annotation
.end field

.field private mViewLifecycleRegistry:Lcom/oneplus/support/lifecycle/LifecycleRegistry;

.field mViewModelStore:Lcom/oneplus/support/lifecycle/ViewModelStore;

.field mWho:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/oneplus/support/collection/SimpleArrayMap;

    invoke-direct {v0}, Lcom/oneplus/support/collection/SimpleArrayMap;-><init>()V

    sput-object v0, Lcom/oneplus/support/core/fragment/app/Fragment;->sClassMap:Lcom/oneplus/support/collection/SimpleArrayMap;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/oneplus/support/core/fragment/app/Fragment;->USE_DEFAULT_TRANSITION:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mState:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mIndex:I

    iput v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mTargetIndex:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mMenuVisible:Z

    iput-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mUserVisibleHint:Z

    new-instance v0, Lcom/oneplus/support/lifecycle/LifecycleRegistry;

    invoke-direct {v0, p0}, Lcom/oneplus/support/lifecycle/LifecycleRegistry;-><init>(Lcom/oneplus/support/lifecycle/LifecycleOwner;)V

    iput-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mLifecycleRegistry:Lcom/oneplus/support/lifecycle/LifecycleRegistry;

    new-instance v0, Lcom/oneplus/support/lifecycle/MutableLiveData;

    invoke-direct {v0}, Lcom/oneplus/support/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mViewLifecycleOwnerLiveData:Lcom/oneplus/support/lifecycle/MutableLiveData;

    return-void
.end method

.method static synthetic access$800(Lcom/oneplus/support/core/fragment/app/Fragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/support/core/fragment/app/Fragment;->callStartTransitionListener()V

    return-void
.end method

.method static synthetic access$900(Lcom/oneplus/support/core/fragment/app/Fragment;)Lcom/oneplus/support/lifecycle/LifecycleRegistry;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mViewLifecycleRegistry:Lcom/oneplus/support/lifecycle/LifecycleRegistry;

    return-object p0
.end method

.method static synthetic access$902(Lcom/oneplus/support/core/fragment/app/Fragment;Lcom/oneplus/support/lifecycle/LifecycleRegistry;)Lcom/oneplus/support/lifecycle/LifecycleRegistry;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mViewLifecycleRegistry:Lcom/oneplus/support/lifecycle/LifecycleRegistry;

    return-object p1
.end method

.method private callStartTransitionListener()V
    .locals 2

    iget-object p0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mAnimationInfo:Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;->mEnterTransitionPostponed:Z

    iget-object v1, p0, Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;->mStartEnterTransitionListener:Lcom/oneplus/support/core/fragment/app/Fragment$OnStartEnterTransitionListener;

    iput-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;->mStartEnterTransitionListener:Lcom/oneplus/support/core/fragment/app/Fragment$OnStartEnterTransitionListener;

    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    check-cast v0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;

    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;->onStartEnterTransition()V

    :cond_1
    return-void
.end method

.method private ensureAnimationInfo()Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mAnimationInfo:Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;

    if-nez v0, :cond_0

    new-instance v0, Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;

    invoke-direct {v0}, Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;-><init>()V

    iput-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mAnimationInfo:Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;

    :cond_0
    iget-object p0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mAnimationInfo:Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;

    return-object p0
.end method

.method public static instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Lcom/oneplus/support/core/fragment/app/Fragment;
    .locals 4

    const-string v0, ": make sure class name exists, is public, and has an empty constructor that is public"

    const-string v1, "Unable to instantiate fragment "

    :try_start_0
    sget-object v2, Lcom/oneplus/support/core/fragment/app/Fragment;->sClassMap:Lcom/oneplus/support/collection/SimpleArrayMap;

    invoke-virtual {v2, p1}, Lcom/oneplus/support/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    if-nez v2, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sget-object p0, Lcom/oneplus/support/core/fragment/app/Fragment;->sClassMap:Lcom/oneplus/support/collection/SimpleArrayMap;

    invoke-virtual {p0, p1, v2}, Lcom/oneplus/support/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 p0, 0x0

    new-array v3, p0, [Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    new-array p0, p0, [Ljava/lang/Object;

    invoke-virtual {v2, p0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oneplus/support/core/fragment/app/Fragment;

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    invoke-virtual {p0, p2}, Lcom/oneplus/support/core/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object p0

    :catch_0
    move-exception p0

    new-instance p2, Lcom/oneplus/support/core/fragment/app/Fragment$InstantiationException;

    const-string v0, ": calling Fragment constructor caused an exception"

    invoke-static {v1, p1, v0}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline18(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Lcom/oneplus/support/core/fragment/app/Fragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_1
    move-exception p0

    new-instance p2, Lcom/oneplus/support/core/fragment/app/Fragment$InstantiationException;

    const-string v0, ": could not find Fragment constructor"

    invoke-static {v1, p1, v0}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline18(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Lcom/oneplus/support/core/fragment/app/Fragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_2
    move-exception p0

    new-instance p2, Lcom/oneplus/support/core/fragment/app/Fragment$InstantiationException;

    invoke-static {v1, p1, v0}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline18(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Lcom/oneplus/support/core/fragment/app/Fragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_3
    move-exception p0

    new-instance p2, Lcom/oneplus/support/core/fragment/app/Fragment$InstantiationException;

    invoke-static {v1, p1, v0}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline18(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Lcom/oneplus/support/core/fragment/app/Fragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_4
    move-exception p0

    new-instance p2, Lcom/oneplus/support/core/fragment/app/Fragment$InstantiationException;

    invoke-static {v1, p1, v0}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline18(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Lcom/oneplus/support/core/fragment/app/Fragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2
.end method

.method static isSupportFragmentClass(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    :try_start_0
    sget-object v0, Lcom/oneplus/support/core/fragment/app/Fragment;->sClassMap:Lcom/oneplus/support/collection/SimpleArrayMap;

    invoke-virtual {v0, p1}, Lcom/oneplus/support/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sget-object p0, Lcom/oneplus/support/core/fragment/app/Fragment;->sClassMap:Lcom/oneplus/support/collection/SimpleArrayMap;

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/support/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-class p0, Lcom/oneplus/support/core/fragment/app/Fragment;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method findFragmentByWho(Ljava/lang/String;)Lcom/oneplus/support/core/fragment/app/Fragment;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mChildFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->findFragmentByWho(Ljava/lang/String;)Lcom/oneplus/support/core/fragment/app/Fragment;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method getAnimatingAway()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mAnimationInfo:Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;->mAnimatingAway:Landroid/view/View;

    return-object p0
.end method

.method getAnimator()Landroid/animation/Animator;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mAnimationInfo:Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;->mAnimator:Landroid/animation/Animator;

    return-object p0
.end method

.method public getEnterTransition()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mAnimationInfo:Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p0}, Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;->access$000(Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method getEnterTransitionCallback()V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mAnimationInfo:Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;

    if-nez p0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;->mEnterTransitionCallback:Lcom/oneplus/support/core/app/SharedElementCallback;

    return-void
.end method

.method public getExitTransition()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mAnimationInfo:Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p0}, Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;->access$200(Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getLifecycle()Lcom/oneplus/support/lifecycle/Lifecycle;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mLifecycleRegistry:Lcom/oneplus/support/lifecycle/LifecycleRegistry;

    return-object p0
.end method

.method getNextAnim()I
    .locals 0

    iget-object p0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mAnimationInfo:Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget p0, p0, Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;->mNextAnim:I

    return p0
.end method

.method getNextTransition()I
    .locals 0

    iget-object p0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mAnimationInfo:Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget p0, p0, Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;->mNextTransition:I

    return p0
.end method

.method getNextTransitionStyle()I
    .locals 0

    iget-object p0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mAnimationInfo:Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget p0, p0, Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;->mNextTransitionStyle:I

    return p0
.end method

.method public getReenterTransition()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mAnimationInfo:Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {v0}, Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;->access$300(Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/support/core/fragment/app/Fragment;->USE_DEFAULT_TRANSITION:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/support/core/fragment/app/Fragment;->getExitTransition()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mAnimationInfo:Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;

    invoke-static {p0}, Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;->access$300(Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getReturnTransition()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mAnimationInfo:Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {v0}, Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;->access$100(Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/support/core/fragment/app/Fragment;->USE_DEFAULT_TRANSITION:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/support/core/fragment/app/Fragment;->getEnterTransition()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mAnimationInfo:Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;

    invoke-static {p0}, Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;->access$100(Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getSharedElementEnterTransition()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mAnimationInfo:Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p0}, Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;->access$400(Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getSharedElementReturnTransition()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mAnimationInfo:Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {v0}, Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;->access$500(Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/support/core/fragment/app/Fragment;->USE_DEFAULT_TRANSITION:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/support/core/fragment/app/Fragment;->getSharedElementEnterTransition()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mAnimationInfo:Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;

    invoke-static {p0}, Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;->access$500(Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method getStateAfterAnimating()I
    .locals 0

    iget-object p0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mAnimationInfo:Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget p0, p0, Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;->mStateAfterAnimating:I

    return p0
.end method

.method public getViewModelStore()Lcom/oneplus/support/lifecycle/ViewModelStore;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mHost:Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mViewModelStore:Lcom/oneplus/support/lifecycle/ViewModelStore;

    if-nez v0, :cond_1

    new-instance v0, Lcom/oneplus/support/lifecycle/ViewModelStore;

    invoke-direct {v0}, Lcom/oneplus/support/lifecycle/ViewModelStore;-><init>()V

    iput-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mViewModelStore:Lcom/oneplus/support/lifecycle/ViewModelStore;

    :cond_1
    iget-object p0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mViewModelStore:Lcom/oneplus/support/lifecycle/ViewModelStore;

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Can\'t access ViewModels from detached fragment"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final hashCode()I
    .locals 0

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method instantiateChildFragmentManager()V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mHost:Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    invoke-direct {v0}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;-><init>()V

    iput-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mChildFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mChildFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    iget-object v1, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mHost:Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;

    new-instance v2, Lcom/oneplus/support/core/fragment/app/Fragment$2;

    invoke-direct {v2, p0}, Lcom/oneplus/support/core/fragment/app/Fragment$2;-><init>(Lcom/oneplus/support/core/fragment/app/Fragment;)V

    iget-object v3, v0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mHost:Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;

    if-nez v3, :cond_0

    iput-object v1, v0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mHost:Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;

    iput-object v2, v0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mContainer:Lcom/oneplus/support/core/fragment/app/FragmentContainer;

    iput-object p0, v0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mParent:Lcom/oneplus/support/core/fragment/app/Fragment;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Already attached"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Fragment has not been attached yet."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method isHideReplaced()Z
    .locals 0

    iget-object p0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mAnimationInfo:Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-boolean p0, p0, Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;->mIsHideReplaced:Z

    return p0
.end method

.method final isInBackStack()Z
    .locals 0

    iget p0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mBackStackNesting:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mCalled:Z

    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mHost:Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;->getActivity()Landroid/app/Activity;

    move-result-object p0

    check-cast p0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;

    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    return-void
.end method

.method public onDestroyOptionsMenu()V
    .locals 0

    return-void
.end method

.method public onInflate(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mCalled:Z

    iget-object p2, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mHost:Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;->getActivity()Landroid/app/Activity;

    move-result-object p2

    :goto_0
    if-eqz p2, :cond_1

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mCalled:Z

    iput-boolean p1, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mCalled:Z

    :cond_1
    return-void
.end method

.method public onLowMemory()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mCalled:Z

    return-void
.end method

.method peekChildFragmentManager()Lcom/oneplus/support/core/fragment/app/FragmentManager;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mChildFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    return-object p0
.end method

.method performConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mCalled:Z

    iget-object p0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mChildFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method performContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mHidden:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mChildFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->dispatchContextItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method performCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mHidden:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mHasMenu:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mMenuVisible:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    move v1, v0

    :cond_0
    iget-object p0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mChildFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1, p2}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->dispatchCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result p0

    or-int/2addr v1, p0

    :cond_1
    return v1
.end method

.method performCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V
    .locals 0

    iget-object p1, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mChildFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->noteStateNotSaved()V

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mPerformedCreateView:Z

    new-instance p1, Lcom/oneplus/support/core/fragment/app/Fragment$3;

    invoke-direct {p1, p0}, Lcom/oneplus/support/core/fragment/app/Fragment$3;-><init>(Lcom/oneplus/support/core/fragment/app/Fragment;)V

    iput-object p1, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mViewLifecycleOwner:Lcom/oneplus/support/lifecycle/LifecycleOwner;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mViewLifecycleRegistry:Lcom/oneplus/support/lifecycle/LifecycleRegistry;

    iput-object p1, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mView:Landroid/view/View;

    iget-object p2, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mViewLifecycleOwner:Lcom/oneplus/support/lifecycle/LifecycleOwner;

    invoke-interface {p1}, Lcom/oneplus/support/lifecycle/LifecycleOwner;->getLifecycle()Lcom/oneplus/support/lifecycle/Lifecycle;

    iget-object p1, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mViewLifecycleOwnerLiveData:Lcom/oneplus/support/lifecycle/MutableLiveData;

    iget-object p0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mViewLifecycleOwner:Lcom/oneplus/support/lifecycle/LifecycleOwner;

    invoke-virtual {p1, p0}, Lcom/oneplus/support/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mViewLifecycleRegistry:Lcom/oneplus/support/lifecycle/LifecycleRegistry;

    if-nez p2, :cond_2

    iput-object p1, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mViewLifecycleOwner:Lcom/oneplus/support/lifecycle/LifecycleOwner;

    :goto_0
    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Called getViewLifecycleOwner() but onCreateView() returned null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method performDestroyView()V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mChildFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->dispatchDestroyView()V

    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mState:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mCalled:Z

    iput-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mCalled:Z

    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mViewLifecycleRegistry:Lcom/oneplus/support/lifecycle/LifecycleRegistry;

    sget-object v2, Lcom/oneplus/support/lifecycle/Lifecycle$Event;->ON_DESTROY:Lcom/oneplus/support/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v2}, Lcom/oneplus/support/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Lcom/oneplus/support/lifecycle/Lifecycle$Event;)V

    :cond_1
    iget-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mCalled:Z

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/oneplus/support/loader/app/LoaderManager;->getInstance(Lcom/oneplus/support/lifecycle/LifecycleOwner;)Lcom/oneplus/support/loader/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/support/loader/app/LoaderManager;->markForRedelivery()V

    iput-boolean v1, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mPerformedCreateView:Z

    return-void

    :cond_2
    new-instance v0, Lcom/oneplus/support/core/fragment/app/SuperNotCalledException;

    const-string v1, "Fragment "

    const-string v2, " did not call through to super.onDestroyView()"

    invoke-static {v1, p0, v2}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline15(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/oneplus/support/core/fragment/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method performGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 2

    iget-object p1, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mHost:Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;

    if-eqz p1, :cond_4

    check-cast p1, Lcom/oneplus/support/core/fragment/app/FragmentActivity$HostCallbacks;

    iget-object v0, p1, Lcom/oneplus/support/core/fragment/app/FragmentActivity$HostCallbacks;->this$0:Lcom/oneplus/support/core/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object p1, p1, Lcom/oneplus/support/core/fragment/app/FragmentActivity$HostCallbacks;->this$0:Lcom/oneplus/support/core/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mChildFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/oneplus/support/core/fragment/app/Fragment;->instantiateChildFragmentManager()V

    iget v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mState:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mChildFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->dispatchResume()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mChildFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->dispatchStart()V

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mChildFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->dispatchActivityCreated()V

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    if-lt v0, v1, :cond_3

    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mChildFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->dispatchCreate()V

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mChildFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->getLayoutInflaterFactory()Landroid/view/LayoutInflater$Factory2;

    invoke-virtual {p1, v0}, Landroid/view/LayoutInflater;->setFactory2(Landroid/view/LayoutInflater$Factory2;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iput-object p1, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget-object p0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-object p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "onGetLayoutInflater() cannot be executed until the Fragment is attached to the FragmentManager."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method performLowMemory()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mCalled:Z

    iget-object p0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mChildFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->dispatchLowMemory()V

    :cond_0
    return-void
.end method

.method performMultiWindowModeChanged(Z)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mChildFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->dispatchMultiWindowModeChanged(Z)V

    :cond_0
    return-void
.end method

.method performOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mHidden:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mHasMenu:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mMenuVisible:Z

    :cond_0
    iget-object p0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mChildFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->dispatchOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method performOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mHidden:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mHasMenu:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mMenuVisible:Z

    :cond_0
    iget-object p0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mChildFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->dispatchOptionsMenuClosed(Landroid/view/Menu;)V

    :cond_1
    return-void
.end method

.method performPause()V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mViewLifecycleRegistry:Lcom/oneplus/support/lifecycle/LifecycleRegistry;

    sget-object v1, Lcom/oneplus/support/lifecycle/Lifecycle$Event;->ON_PAUSE:Lcom/oneplus/support/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Lcom/oneplus/support/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Lcom/oneplus/support/lifecycle/Lifecycle$Event;)V

    :cond_0
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mLifecycleRegistry:Lcom/oneplus/support/lifecycle/LifecycleRegistry;

    sget-object v1, Lcom/oneplus/support/lifecycle/Lifecycle$Event;->ON_PAUSE:Lcom/oneplus/support/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Lcom/oneplus/support/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Lcom/oneplus/support/lifecycle/Lifecycle$Event;)V

    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mChildFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->dispatchPause()V

    :cond_1
    const/4 v0, 0x3

    iput v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mState:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mCalled:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mCalled:Z

    iget-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mCalled:Z

    if-eqz v0, :cond_2

    return-void

    :cond_2
    new-instance v0, Lcom/oneplus/support/core/fragment/app/SuperNotCalledException;

    const-string v1, "Fragment "

    const-string v2, " did not call through to super.onPause()"

    invoke-static {v1, p0, v2}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline15(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/oneplus/support/core/fragment/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method performPictureInPictureModeChanged(Z)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mChildFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->dispatchPictureInPictureModeChanged(Z)V

    :cond_0
    return-void
.end method

.method performPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mHidden:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mHasMenu:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mMenuVisible:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    move v1, v0

    :cond_0
    iget-object p0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mChildFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->dispatchPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result p0

    or-int/2addr v1, p0

    :cond_1
    return v1
.end method

.method performResume()V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mChildFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->noteStateNotSaved()V

    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mChildFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->execPendingActions()Z

    :cond_0
    const/4 v0, 0x4

    iput v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mState:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mCalled:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mCalled:Z

    iget-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mCalled:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mChildFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->dispatchResume()V

    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mChildFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->execPendingActions()Z

    :cond_1
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mLifecycleRegistry:Lcom/oneplus/support/lifecycle/LifecycleRegistry;

    sget-object v1, Lcom/oneplus/support/lifecycle/Lifecycle$Event;->ON_RESUME:Lcom/oneplus/support/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Lcom/oneplus/support/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Lcom/oneplus/support/lifecycle/Lifecycle$Event;)V

    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mViewLifecycleRegistry:Lcom/oneplus/support/lifecycle/LifecycleRegistry;

    sget-object v0, Lcom/oneplus/support/lifecycle/Lifecycle$Event;->ON_RESUME:Lcom/oneplus/support/lifecycle/Lifecycle$Event;

    invoke-virtual {p0, v0}, Lcom/oneplus/support/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Lcom/oneplus/support/lifecycle/Lifecycle$Event;)V

    :cond_2
    return-void

    :cond_3
    new-instance v0, Lcom/oneplus/support/core/fragment/app/SuperNotCalledException;

    const-string v1, "Fragment "

    const-string v2, " did not call through to super.onResume()"

    invoke-static {v1, p0, v2}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline15(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/oneplus/support/core/fragment/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method performSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    iget-object p0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mChildFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->saveAllState()Landroid/os/Parcelable;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "android:support:fragments"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    return-void
.end method

.method performStart()V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mChildFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->noteStateNotSaved()V

    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mChildFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->execPendingActions()Z

    :cond_0
    const/4 v0, 0x3

    iput v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mState:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mCalled:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mCalled:Z

    iget-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mCalled:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mChildFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->dispatchStart()V

    :cond_1
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mLifecycleRegistry:Lcom/oneplus/support/lifecycle/LifecycleRegistry;

    sget-object v1, Lcom/oneplus/support/lifecycle/Lifecycle$Event;->ON_START:Lcom/oneplus/support/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Lcom/oneplus/support/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Lcom/oneplus/support/lifecycle/Lifecycle$Event;)V

    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mViewLifecycleRegistry:Lcom/oneplus/support/lifecycle/LifecycleRegistry;

    sget-object v0, Lcom/oneplus/support/lifecycle/Lifecycle$Event;->ON_START:Lcom/oneplus/support/lifecycle/Lifecycle$Event;

    invoke-virtual {p0, v0}, Lcom/oneplus/support/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Lcom/oneplus/support/lifecycle/Lifecycle$Event;)V

    :cond_2
    return-void

    :cond_3
    new-instance v0, Lcom/oneplus/support/core/fragment/app/SuperNotCalledException;

    const-string v1, "Fragment "

    const-string v2, " did not call through to super.onStart()"

    invoke-static {v1, p0, v2}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline15(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/oneplus/support/core/fragment/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method restoreChildFragmentState(Landroid/os/Bundle;)V
    .locals 2

    if-eqz p1, :cond_1

    const-string v0, "android:support:fragments"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mChildFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/support/core/fragment/app/Fragment;->instantiateChildFragmentManager()V

    :cond_0
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mChildFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    iget-object v1, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mChildNonConfig:Lcom/oneplus/support/core/fragment/app/FragmentManagerNonConfig;

    invoke-virtual {v0, p1, v1}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->restoreAllState(Landroid/os/Parcelable;Lcom/oneplus/support/core/fragment/app/FragmentManagerNonConfig;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mChildNonConfig:Lcom/oneplus/support/core/fragment/app/FragmentManagerNonConfig;

    iget-object p0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mChildFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    invoke-virtual {p0}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->dispatchCreate()V

    :cond_1
    return-void
.end method

.method final restoreViewState(Landroid/os/Bundle;)V
    .locals 2

    iget-object p1, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mInnerView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mCalled:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mCalled:Z

    iget-object p1, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mViewLifecycleRegistry:Lcom/oneplus/support/lifecycle/LifecycleRegistry;

    sget-object v0, Lcom/oneplus/support/lifecycle/Lifecycle$Event;->ON_CREATE:Lcom/oneplus/support/lifecycle/Lifecycle$Event;

    invoke-virtual {p1, v0}, Lcom/oneplus/support/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Lcom/oneplus/support/lifecycle/Lifecycle$Event;)V

    :cond_1
    iget-boolean p1, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mCalled:Z

    if-eqz p1, :cond_2

    return-void

    :cond_2
    new-instance p1, Lcom/oneplus/support/core/fragment/app/SuperNotCalledException;

    const-string v0, "Fragment "

    const-string v1, " did not call through to super.onViewStateRestored()"

    invoke-static {v0, p0, v1}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline15(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/oneplus/support/core/fragment/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method setAnimatingAway(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/support/core/fragment/app/Fragment;->ensureAnimationInfo()Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;

    move-result-object p0

    iput-object p1, p0, Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;->mAnimatingAway:Landroid/view/View;

    return-void
.end method

.method setAnimator(Landroid/animation/Animator;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/support/core/fragment/app/Fragment;->ensureAnimationInfo()Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;

    move-result-object p0

    iput-object p1, p0, Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;->mAnimator:Landroid/animation/Animator;

    return-void
.end method

.method public setArguments(Landroid/os/Bundle;)V
    .locals 1

    iget v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mIndex:I

    if-ltz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->isStateSaved()Z

    move-result v0

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Fragment already active and state has been saved"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_1
    iput-object p1, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mArguments:Landroid/os/Bundle;

    return-void
.end method

.method setHideReplaced(Z)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/support/core/fragment/app/Fragment;->ensureAnimationInfo()Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;

    move-result-object p0

    iput-boolean p1, p0, Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;->mIsHideReplaced:Z

    return-void
.end method

.method final setIndex(ILcom/oneplus/support/core/fragment/app/Fragment;)V
    .locals 0

    iput p1, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mIndex:I

    if-eqz p2, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p2, Lcom/oneplus/support/core/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ":"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mIndex:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mWho:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, "android:fragment:"

    invoke-static {p1}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline23(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mIndex:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mWho:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method setNextAnim(I)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mAnimationInfo:Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/oneplus/support/core/fragment/app/Fragment;->ensureAnimationInfo()Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;

    move-result-object p0

    iput p1, p0, Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;->mNextAnim:I

    return-void
.end method

.method setNextTransition(II)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mAnimationInfo:Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/oneplus/support/core/fragment/app/Fragment;->ensureAnimationInfo()Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;

    iget-object p0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mAnimationInfo:Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;

    iput p1, p0, Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;->mNextTransition:I

    iput p2, p0, Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;->mNextTransitionStyle:I

    return-void
.end method

.method setOnStartEnterTransitionListener(Lcom/oneplus/support/core/fragment/app/Fragment$OnStartEnterTransitionListener;)V
    .locals 1

    invoke-direct {p0}, Lcom/oneplus/support/core/fragment/app/Fragment;->ensureAnimationInfo()Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;

    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mAnimationInfo:Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;

    iget-object v0, v0, Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;->mStartEnterTransitionListener:Lcom/oneplus/support/core/fragment/app/Fragment$OnStartEnterTransitionListener;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Trying to set a replacement startPostponedEnterTransition on "

    invoke-static {v0, p0}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline14(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mAnimationInfo:Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;

    iget-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;->mEnterTransitionPostponed:Z

    if-eqz v0, :cond_3

    iput-object p1, p0, Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;->mStartEnterTransitionListener:Lcom/oneplus/support/core/fragment/app/Fragment$OnStartEnterTransitionListener;

    :cond_3
    if-eqz p1, :cond_4

    check-cast p1, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;

    invoke-virtual {p1}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;->startListening()V

    :cond_4
    return-void
.end method

.method setStateAfterAnimating(I)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/support/core/fragment/app/Fragment;->ensureAnimationInfo()Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;

    move-result-object p0

    iput p1, p0, Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;->mStateAfterAnimating:I

    return-void
.end method

.method public startPostponedEnterTransition()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mHost:Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    iget-object v1, v1, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mHost:Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;

    invoke-virtual {v1}, Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    iget-object v0, v0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mHost:Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;

    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/oneplus/support/core/fragment/app/Fragment$1;

    invoke-direct {v1, p0}, Lcom/oneplus/support/core/fragment/app/Fragment$1;-><init>(Lcom/oneplus/support/core/fragment/app/Fragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/oneplus/support/core/fragment/app/Fragment;->callStartTransitionListener()V

    goto :goto_1

    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/oneplus/support/core/fragment/app/Fragment;->ensureAnimationInfo()Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;

    move-result-object p0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/Fragment$AnimationInfo;->mEnterTransitionPostponed:Z

    :goto_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {p0, v0}, Lcom/oneplus/lib/app/appcompat/MenuWrapperFactory;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    iget v1, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mIndex:I

    if-ltz v1, :cond_0

    const-string v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_0
    iget v1, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mFragmentId:I

    if-eqz v1, :cond_1

    const-string v1, " id=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mFragmentId:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v1, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mTag:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
