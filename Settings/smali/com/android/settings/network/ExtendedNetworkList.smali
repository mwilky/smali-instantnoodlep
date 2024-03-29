.class public Lcom/android/settings/network/ExtendedNetworkList;
.super Landroidx/fragment/app/Fragment;
.source "ExtendedNetworkList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/network/ExtendedNetworkList$ExtenderTask;
    }
.end annotation


# instance fields
.field private mEmptyLayout:Landroid/widget/LinearLayout;

.field private mExtenderTask:Lcom/android/settings/network/ExtendedNetworkList$ExtenderTask;

.field private mListLayout:Landroid/widget/LinearLayout;

.field private mSearchLayout:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/network/ExtendedNetworkList;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/network/ExtendedNetworkList;->handleUI(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/network/ExtendedNetworkList;)[Ljava/lang/Long;
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/network/ExtendedNetworkList;->startScan()[Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settings/network/ExtendedNetworkList;[Ljava/lang/Long;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/network/ExtendedNetworkList;->onSearchCompleted([Ljava/lang/Long;)V

    return-void
.end method

.method static synthetic access$302(Lcom/android/settings/network/ExtendedNetworkList;Lcom/android/settings/network/ExtendedNetworkList$ExtenderTask;)Lcom/android/settings/network/ExtendedNetworkList$ExtenderTask;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/network/ExtendedNetworkList;->mExtenderTask:Lcom/android/settings/network/ExtendedNetworkList$ExtenderTask;

    return-object p1
.end method

.method private handleUI(I)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/settings/network/ExtendedNetworkList;->mSearchLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/settings/network/ExtendedNetworkList;->mListLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/settings/network/ExtendedNetworkList;->mEmptyLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/settings/network/ExtendedNetworkList;->mSearchLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/settings/network/ExtendedNetworkList;->mListLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/settings/network/ExtendedNetworkList;->mEmptyLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/android/settings/network/ExtendedNetworkList;->mSearchLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/settings/network/ExtendedNetworkList;->mListLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/settings/network/ExtendedNetworkList;->mEmptyLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private onSearchCompleted([Ljava/lang/Long;)V
    .locals 7

    if-nez p1, :cond_0

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lcom/android/settings/network/ExtendedNetworkList;->handleUI(I)V

    return-void

    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    new-instance v4, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CSG Id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v3, 0x28

    const/16 v5, 0xa

    invoke-virtual {v4, v3, v5, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v3, p0, Lcom/android/settings/network/ExtendedNetworkList;->mListLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v3, p0, Lcom/android/settings/network/ExtendedNetworkList;->mListLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->invalidate()V

    const/4 v3, 0x2

    invoke-direct {p0, v3}, Lcom/android/settings/network/ExtendedNetworkList;->handleUI(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private startScan()[Ljava/lang/Long;
    .locals 11

    const-string p0, "ExtendedNetworkList"

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "extphone"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lorg/codeaurora/internal/IExtTelephony$Stub;->asInterface(Landroid/os/IBinder;)Lorg/codeaurora/internal/IExtTelephony;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v2, "VzwCsgNetworkScaner opVzwCsgNetworkScan()"

    invoke-static {p0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "generalGetter"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const-class v6, Landroid/os/Bundle;

    const/4 v8, 0x1

    aput-object v6, v5, v8

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v3, v4, [Ljava/lang/Object;

    const-string v4, "opVzwCsgNetworkScan"

    aput-object v4, v3, v7

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    aput-object v4, v3, v8

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    if-eqz v1, :cond_2

    const-string v2, "length"

    invoke-virtual {v1, v2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "femtocell_list"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v3, v1

    if-nez v3, :cond_0

    const-string v1, "csg list is null"

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    new-array v2, v2, [Landroid/telephony/OpVzwFemtocellInfo;

    array-length v3, v1

    new-array v3, v3, [Ljava/lang/Long;

    :goto_0
    array-length v4, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-ge v7, v4, :cond_1

    mul-int/lit8 v4, v7, 0x3

    add-int/lit8 v5, v4, 0x0

    :try_start_1
    aget-object v5, v1, v5

    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v3, v7

    add-int/lit8 v8, v4, 0x1

    aget-object v8, v1, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    add-int/lit8 v4, v4, 0x2

    aget-object v4, v1, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    new-instance v9, Landroid/telephony/OpVzwFemtocellInfo;

    invoke-direct {v9, v5, v6, v8, v4}, Landroid/telephony/OpVzwFemtocellInfo;-><init>(JII)V

    aput-object v9, v2, v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "VzwCsgNetworkScaner csg item id "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " status "

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " signalStrength "

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    :try_start_2
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    return-object v3

    :cond_2
    const-string v1, "VzwCsgNetworkScaner result is null"

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_3
    return-object v0

    :catch_1
    move-exception p0

    const-string v1, "exception : "

    const-string v2, "VzwCsgNetworkScaner"

    invoke-static {v1, p0, v2}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline35(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p2, 0x7f0d012f

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a076f

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const p2, 0x7f0a0363

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    const p2, 0x7f0a059e

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ProgressBar;

    const p2, 0x7f0a038f

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/android/settings/network/ExtendedNetworkList;->mListLayout:Landroid/widget/LinearLayout;

    const p2, 0x7f0a0395

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/android/settings/network/ExtendedNetworkList;->mSearchLayout:Landroid/widget/LinearLayout;

    const p2, 0x7f0a038c

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/android/settings/network/ExtendedNetworkList;->mEmptyLayout:Landroid/widget/LinearLayout;

    iget-object p2, p0, Lcom/android/settings/network/ExtendedNetworkList;->mExtenderTask:Lcom/android/settings/network/ExtendedNetworkList$ExtenderTask;

    if-nez p2, :cond_0

    new-instance p2, Lcom/android/settings/network/ExtendedNetworkList$ExtenderTask;

    new-instance p3, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p2, p0, p3}, Lcom/android/settings/network/ExtendedNetworkList$ExtenderTask;-><init>(Lcom/android/settings/network/ExtendedNetworkList;Ljava/lang/ref/WeakReference;)V

    iput-object p2, p0, Lcom/android/settings/network/ExtendedNetworkList;->mExtenderTask:Lcom/android/settings/network/ExtendedNetworkList$ExtenderTask;

    iget-object p0, p0, Lcom/android/settings/network/ExtendedNetworkList;->mExtenderTask:Lcom/android/settings/network/ExtendedNetworkList$ExtenderTask;

    sget-object p2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 p3, 0x0

    new-array p3, p3, [[Ljava/lang/String;

    invoke-virtual {p0, p2, p3}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-object p1
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    iget-object v0, p0, Lcom/android/settings/network/ExtendedNetworkList;->mExtenderTask:Lcom/android/settings/network/ExtendedNetworkList$ExtenderTask;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/network/ExtendedNetworkList;->mExtenderTask:Lcom/android/settings/network/ExtendedNetworkList$ExtenderTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/network/ExtendedNetworkList;->mExtenderTask:Lcom/android/settings/network/ExtendedNetworkList$ExtenderTask;

    :cond_0
    return-void
.end method
