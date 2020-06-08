.class public Lcom/oneplus/support/lifecycle/LifecycleRegistry;
.super Lcom/oneplus/support/lifecycle/Lifecycle;
.source "LifecycleRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/support/lifecycle/LifecycleRegistry$ObserverWithState;
    }
.end annotation


# instance fields
.field private mAddingObserverCounter:I

.field private mHandlingEvent:Z

.field private final mLifecycleOwner:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/oneplus/support/lifecycle/LifecycleOwner;",
            ">;"
        }
    .end annotation
.end field

.field private mNewEventOccurred:Z

.field private mObserverMap:Lcom/oneplus/support/collection/FastSafeIterableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/support/collection/FastSafeIterableMap<",
            "Lcom/oneplus/support/lifecycle/LifecycleObserver;",
            "Lcom/oneplus/support/lifecycle/LifecycleRegistry$ObserverWithState;",
            ">;"
        }
    .end annotation
.end field

.field private mParentStates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/support/lifecycle/Lifecycle$State;",
            ">;"
        }
    .end annotation
.end field

.field private mState:Lcom/oneplus/support/lifecycle/Lifecycle$State;


# direct methods
.method public constructor <init>(Lcom/oneplus/support/lifecycle/LifecycleOwner;)V
    .locals 1

    invoke-direct {p0}, Lcom/oneplus/support/lifecycle/Lifecycle;-><init>()V

    new-instance v0, Lcom/oneplus/support/collection/FastSafeIterableMap;

    invoke-direct {v0}, Lcom/oneplus/support/collection/FastSafeIterableMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/support/lifecycle/LifecycleRegistry;->mObserverMap:Lcom/oneplus/support/collection/FastSafeIterableMap;

    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/support/lifecycle/LifecycleRegistry;->mAddingObserverCounter:I

    iput-boolean v0, p0, Lcom/oneplus/support/lifecycle/LifecycleRegistry;->mHandlingEvent:Z

    iput-boolean v0, p0, Lcom/oneplus/support/lifecycle/LifecycleRegistry;->mNewEventOccurred:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/support/lifecycle/LifecycleRegistry;->mParentStates:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/oneplus/support/lifecycle/LifecycleRegistry;->mLifecycleOwner:Ljava/lang/ref/WeakReference;

    sget-object p1, Lcom/oneplus/support/lifecycle/Lifecycle$State;->INITIALIZED:Lcom/oneplus/support/lifecycle/Lifecycle$State;

    iput-object p1, p0, Lcom/oneplus/support/lifecycle/LifecycleRegistry;->mState:Lcom/oneplus/support/lifecycle/Lifecycle$State;

    return-void
.end method

.method static getStateAfter(Lcom/oneplus/support/lifecycle/Lifecycle$Event;)Lcom/oneplus/support/lifecycle/Lifecycle$State;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    sget-object p0, Lcom/oneplus/support/lifecycle/Lifecycle$State;->DESTROYED:Lcom/oneplus/support/lifecycle/Lifecycle$State;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unexpected event value "

    invoke-static {v1, p0}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline14(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object p0, Lcom/oneplus/support/lifecycle/Lifecycle$State;->RESUMED:Lcom/oneplus/support/lifecycle/Lifecycle$State;

    return-object p0

    :cond_2
    sget-object p0, Lcom/oneplus/support/lifecycle/Lifecycle$State;->STARTED:Lcom/oneplus/support/lifecycle/Lifecycle$State;

    return-object p0

    :cond_3
    sget-object p0, Lcom/oneplus/support/lifecycle/Lifecycle$State;->CREATED:Lcom/oneplus/support/lifecycle/Lifecycle$State;

    return-object p0
.end method

.method static min(Lcom/oneplus/support/lifecycle/Lifecycle$State;Lcom/oneplus/support/lifecycle/Lifecycle$State;)Lcom/oneplus/support/lifecycle/Lifecycle$State;
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-gez v0, :cond_0

    move-object p0, p1

    :cond_0
    return-object p0
.end method

.method private moveToState(Lcom/oneplus/support/lifecycle/Lifecycle$State;)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/support/lifecycle/LifecycleRegistry;->mState:Lcom/oneplus/support/lifecycle/Lifecycle$State;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/oneplus/support/lifecycle/LifecycleRegistry;->mState:Lcom/oneplus/support/lifecycle/Lifecycle$State;

    iget-boolean p1, p0, Lcom/oneplus/support/lifecycle/LifecycleRegistry;->mHandlingEvent:Z

    const/4 v0, 0x1

    if-nez p1, :cond_2

    iget p1, p0, Lcom/oneplus/support/lifecycle/LifecycleRegistry;->mAddingObserverCounter:I

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    iput-boolean v0, p0, Lcom/oneplus/support/lifecycle/LifecycleRegistry;->mHandlingEvent:Z

    invoke-direct {p0}, Lcom/oneplus/support/lifecycle/LifecycleRegistry;->sync()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/oneplus/support/lifecycle/LifecycleRegistry;->mHandlingEvent:Z

    return-void

    :cond_2
    :goto_0
    iput-boolean v0, p0, Lcom/oneplus/support/lifecycle/LifecycleRegistry;->mNewEventOccurred:Z

    return-void
.end method

.method private popParentState()V
    .locals 1

    iget-object p0, p0, Lcom/oneplus/support/lifecycle/LifecycleRegistry;->mParentStates:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private sync()V
    .locals 8

    iget-object v0, p0, Lcom/oneplus/support/lifecycle/LifecycleRegistry;->mLifecycleOwner:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/support/lifecycle/LifecycleOwner;

    if-nez v0, :cond_0

    const-string p0, "LifecycleRegistry"

    const-string v0, "LifecycleOwner is garbage collected, you shouldn\'t try dispatch new events from it."

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, p0, Lcom/oneplus/support/lifecycle/LifecycleRegistry;->mObserverMap:Lcom/oneplus/support/collection/FastSafeIterableMap;

    invoke-virtual {v1}, Lcom/oneplus/support/collection/SafeIterableMap;->size()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/oneplus/support/lifecycle/LifecycleRegistry;->mObserverMap:Lcom/oneplus/support/collection/FastSafeIterableMap;

    invoke-virtual {v1}, Lcom/oneplus/support/collection/SafeIterableMap;->eldest()Ljava/util/Map$Entry;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/support/lifecycle/LifecycleRegistry$ObserverWithState;

    iget-object v1, v1, Lcom/oneplus/support/lifecycle/LifecycleRegistry$ObserverWithState;->mState:Lcom/oneplus/support/lifecycle/Lifecycle$State;

    iget-object v4, p0, Lcom/oneplus/support/lifecycle/LifecycleRegistry;->mObserverMap:Lcom/oneplus/support/collection/FastSafeIterableMap;

    invoke-virtual {v4}, Lcom/oneplus/support/collection/SafeIterableMap;->newest()Ljava/util/Map$Entry;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/support/lifecycle/LifecycleRegistry$ObserverWithState;

    iget-object v4, v4, Lcom/oneplus/support/lifecycle/LifecycleRegistry$ObserverWithState;->mState:Lcom/oneplus/support/lifecycle/Lifecycle$State;

    if-ne v1, v4, :cond_2

    iget-object v1, p0, Lcom/oneplus/support/lifecycle/LifecycleRegistry;->mState:Lcom/oneplus/support/lifecycle/Lifecycle$State;

    if-ne v1, v4, :cond_2

    :goto_0
    move v1, v2

    goto :goto_1

    :cond_2
    move v1, v3

    :goto_1
    if-nez v1, :cond_b

    iput-boolean v3, p0, Lcom/oneplus/support/lifecycle/LifecycleRegistry;->mNewEventOccurred:Z

    iget-object v1, p0, Lcom/oneplus/support/lifecycle/LifecycleRegistry;->mState:Lcom/oneplus/support/lifecycle/Lifecycle$State;

    iget-object v3, p0, Lcom/oneplus/support/lifecycle/LifecycleRegistry;->mObserverMap:Lcom/oneplus/support/collection/FastSafeIterableMap;

    invoke-virtual {v3}, Lcom/oneplus/support/collection/SafeIterableMap;->eldest()Ljava/util/Map$Entry;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/support/lifecycle/LifecycleRegistry$ObserverWithState;

    iget-object v3, v3, Lcom/oneplus/support/lifecycle/LifecycleRegistry$ObserverWithState;->mState:Lcom/oneplus/support/lifecycle/Lifecycle$State;

    invoke-virtual {v1, v3}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-gez v1, :cond_9

    iget-object v1, p0, Lcom/oneplus/support/lifecycle/LifecycleRegistry;->mObserverMap:Lcom/oneplus/support/collection/FastSafeIterableMap;

    invoke-virtual {v1}, Lcom/oneplus/support/collection/SafeIterableMap;->descendingIterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    iget-boolean v3, p0, Lcom/oneplus/support/lifecycle/LifecycleRegistry;->mNewEventOccurred:Z

    if-nez v3, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/support/lifecycle/LifecycleRegistry$ObserverWithState;

    :goto_2
    iget-object v5, v4, Lcom/oneplus/support/lifecycle/LifecycleRegistry$ObserverWithState;->mState:Lcom/oneplus/support/lifecycle/Lifecycle$State;

    iget-object v6, p0, Lcom/oneplus/support/lifecycle/LifecycleRegistry;->mState:Lcom/oneplus/support/lifecycle/Lifecycle$State;

    invoke-virtual {v5, v6}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v5

    if-lez v5, :cond_3

    iget-boolean v5, p0, Lcom/oneplus/support/lifecycle/LifecycleRegistry;->mNewEventOccurred:Z

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/oneplus/support/lifecycle/LifecycleRegistry;->mObserverMap:Lcom/oneplus/support/collection/FastSafeIterableMap;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oneplus/support/lifecycle/LifecycleObserver;

    invoke-virtual {v5, v6}, Lcom/oneplus/support/collection/FastSafeIterableMap;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, v4, Lcom/oneplus/support/lifecycle/LifecycleRegistry$ObserverWithState;->mState:Lcom/oneplus/support/lifecycle/Lifecycle$State;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    if-eqz v6, :cond_8

    if-eq v6, v2, :cond_7

    const/4 v7, 0x2

    if-eq v6, v7, :cond_6

    const/4 v7, 0x3

    if-eq v6, v7, :cond_5

    const/4 v7, 0x4

    if-ne v6, v7, :cond_4

    sget-object v5, Lcom/oneplus/support/lifecycle/Lifecycle$Event;->ON_PAUSE:Lcom/oneplus/support/lifecycle/Lifecycle$Event;

    goto :goto_3

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unexpected state value "

    invoke-static {v0, v5}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline14(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    sget-object v5, Lcom/oneplus/support/lifecycle/Lifecycle$Event;->ON_STOP:Lcom/oneplus/support/lifecycle/Lifecycle$Event;

    goto :goto_3

    :cond_6
    sget-object v5, Lcom/oneplus/support/lifecycle/Lifecycle$Event;->ON_DESTROY:Lcom/oneplus/support/lifecycle/Lifecycle$Event;

    :goto_3
    invoke-static {v5}, Lcom/oneplus/support/lifecycle/LifecycleRegistry;->getStateAfter(Lcom/oneplus/support/lifecycle/Lifecycle$Event;)Lcom/oneplus/support/lifecycle/Lifecycle$State;

    move-result-object v6

    iget-object v7, p0, Lcom/oneplus/support/lifecycle/LifecycleRegistry;->mParentStates:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4, v0, v5}, Lcom/oneplus/support/lifecycle/LifecycleRegistry$ObserverWithState;->dispatchEvent(Lcom/oneplus/support/lifecycle/LifecycleOwner;Lcom/oneplus/support/lifecycle/Lifecycle$Event;)V

    invoke-direct {p0}, Lcom/oneplus/support/lifecycle/LifecycleRegistry;->popParentState()V

    goto :goto_2

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_9
    iget-object v1, p0, Lcom/oneplus/support/lifecycle/LifecycleRegistry;->mObserverMap:Lcom/oneplus/support/collection/FastSafeIterableMap;

    invoke-virtual {v1}, Lcom/oneplus/support/collection/SafeIterableMap;->newest()Ljava/util/Map$Entry;

    move-result-object v1

    iget-boolean v2, p0, Lcom/oneplus/support/lifecycle/LifecycleRegistry;->mNewEventOccurred:Z

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/oneplus/support/lifecycle/LifecycleRegistry;->mState:Lcom/oneplus/support/lifecycle/Lifecycle$State;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/support/lifecycle/LifecycleRegistry$ObserverWithState;

    iget-object v1, v1, Lcom/oneplus/support/lifecycle/LifecycleRegistry$ObserverWithState;->mState:Lcom/oneplus/support/lifecycle/Lifecycle$State;

    invoke-virtual {v2, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/support/lifecycle/LifecycleRegistry;->mObserverMap:Lcom/oneplus/support/collection/FastSafeIterableMap;

    invoke-virtual {v1}, Lcom/oneplus/support/collection/SafeIterableMap;->iteratorWithAdditions()Lcom/oneplus/support/collection/SafeIterableMap$IteratorWithAdditions;

    move-result-object v1

    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/oneplus/support/lifecycle/LifecycleRegistry;->mNewEventOccurred:Z

    if-nez v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/support/lifecycle/LifecycleRegistry$ObserverWithState;

    :goto_4
    iget-object v4, v3, Lcom/oneplus/support/lifecycle/LifecycleRegistry$ObserverWithState;->mState:Lcom/oneplus/support/lifecycle/Lifecycle$State;

    iget-object v5, p0, Lcom/oneplus/support/lifecycle/LifecycleRegistry;->mState:Lcom/oneplus/support/lifecycle/Lifecycle$State;

    invoke-virtual {v4, v5}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v4

    if-gez v4, :cond_a

    iget-boolean v4, p0, Lcom/oneplus/support/lifecycle/LifecycleRegistry;->mNewEventOccurred:Z

    if-nez v4, :cond_a

    iget-object v4, p0, Lcom/oneplus/support/lifecycle/LifecycleRegistry;->mObserverMap:Lcom/oneplus/support/collection/FastSafeIterableMap;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oneplus/support/lifecycle/LifecycleObserver;

    invoke-virtual {v4, v5}, Lcom/oneplus/support/collection/FastSafeIterableMap;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v4, v3, Lcom/oneplus/support/lifecycle/LifecycleRegistry$ObserverWithState;->mState:Lcom/oneplus/support/lifecycle/Lifecycle$State;

    iget-object v5, p0, Lcom/oneplus/support/lifecycle/LifecycleRegistry;->mParentStates:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, v3, Lcom/oneplus/support/lifecycle/LifecycleRegistry$ObserverWithState;->mState:Lcom/oneplus/support/lifecycle/Lifecycle$State;

    invoke-static {v4}, Lcom/oneplus/support/lifecycle/LifecycleRegistry;->upEvent(Lcom/oneplus/support/lifecycle/Lifecycle$State;)Lcom/oneplus/support/lifecycle/Lifecycle$Event;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lcom/oneplus/support/lifecycle/LifecycleRegistry$ObserverWithState;->dispatchEvent(Lcom/oneplus/support/lifecycle/LifecycleOwner;Lcom/oneplus/support/lifecycle/Lifecycle$Event;)V

    invoke-direct {p0}, Lcom/oneplus/support/lifecycle/LifecycleRegistry;->popParentState()V

    goto :goto_4

    :cond_b
    iput-boolean v3, p0, Lcom/oneplus/support/lifecycle/LifecycleRegistry;->mNewEventOccurred:Z

    return-void
.end method

.method private static upEvent(Lcom/oneplus/support/lifecycle/Lifecycle$State;)Lcom/oneplus/support/lifecycle/Lifecycle$Event;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unexpected state value "

    invoke-static {v1, p0}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline14(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_1
    sget-object p0, Lcom/oneplus/support/lifecycle/Lifecycle$Event;->ON_RESUME:Lcom/oneplus/support/lifecycle/Lifecycle$Event;

    return-object p0

    :cond_2
    sget-object p0, Lcom/oneplus/support/lifecycle/Lifecycle$Event;->ON_START:Lcom/oneplus/support/lifecycle/Lifecycle$Event;

    return-object p0

    :cond_3
    sget-object p0, Lcom/oneplus/support/lifecycle/Lifecycle$Event;->ON_CREATE:Lcom/oneplus/support/lifecycle/Lifecycle$Event;

    return-object p0
.end method


# virtual methods
.method public getCurrentState()Lcom/oneplus/support/lifecycle/Lifecycle$State;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/support/lifecycle/LifecycleRegistry;->mState:Lcom/oneplus/support/lifecycle/Lifecycle$State;

    return-object p0
.end method

.method public handleLifecycleEvent(Lcom/oneplus/support/lifecycle/Lifecycle$Event;)V
    .locals 0

    invoke-static {p1}, Lcom/oneplus/support/lifecycle/LifecycleRegistry;->getStateAfter(Lcom/oneplus/support/lifecycle/Lifecycle$Event;)Lcom/oneplus/support/lifecycle/Lifecycle$State;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/oneplus/support/lifecycle/LifecycleRegistry;->moveToState(Lcom/oneplus/support/lifecycle/Lifecycle$State;)V

    return-void
.end method

.method public markState(Lcom/oneplus/support/lifecycle/Lifecycle$State;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/support/lifecycle/LifecycleRegistry;->moveToState(Lcom/oneplus/support/lifecycle/Lifecycle$State;)V

    return-void
.end method
