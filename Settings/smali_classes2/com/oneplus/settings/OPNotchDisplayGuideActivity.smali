.class public Lcom/oneplus/settings/OPNotchDisplayGuideActivity;
.super Lcom/oneplus/settings/BaseActivity;
.source "OPNotchDisplayGuideActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final OVERLAY_INFO_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/content/om/OverlayInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAm:Landroid/app/ActivityManager;

.field private mContext:Landroid/content/Context;

.field private mFullScreenModeGuideTitle:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mHideNotch:Landroid/widget/ImageView;

.field private mHideNotchBtn:Landroid/widget/RadioButton;

.field private mHideNotchMode:Landroid/view/View;

.field private mHideNotchModeTitle:Landroid/widget/TextView;

.field private mHideNotchModeTitleSummary:Landroid/widget/TextView;

.field private mOverlayManager:Landroid/content/om/IOverlayManager;

.field private mShowNotch:Landroid/widget/ImageView;

.field private mShowNotchBtn:Landroid/widget/RadioButton;

.field private mShowNotchMode:Landroid/view/View;

.field private mShowNotchModeTitle:Landroid/widget/TextView;

.field private mShowNotchModeTitleSummary:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/oneplus/settings/-$$Lambda$OPNotchDisplayGuideActivity$lBTk3aV-1tGVERBb37MROjQ8ddA;->INSTANCE:Lcom/oneplus/settings/-$$Lambda$OPNotchDisplayGuideActivity$lBTk3aV-1tGVERBb37MROjQ8ddA;

    invoke-static {v0}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v0

    sput-object v0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->OVERLAY_INFO_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/settings/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/OPNotchDisplayGuideActivity;)Landroid/content/om/IOverlayManager;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mOverlayManager:Landroid/content/om/IOverlayManager;

    return-object p0
.end method

.method static synthetic access$100(Lcom/oneplus/settings/OPNotchDisplayGuideActivity;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private getCurrenMode()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "package_device_default"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->getOverlayInfos()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/om/OverlayInfo;

    iget-object v3, v2, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Landroid/content/om/OverlayInfo;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private getOverlayInfos()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/om/OverlayInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    iget-object p0, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mOverlayManager:Landroid/content/om/IOverlayManager;

    const-string v1, "android"

    const/4 v2, 0x0

    invoke-interface {p0, v1, v2}, Landroid/content/om/IOverlayManager;->getOverlayInfosForTarget(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/om/OverlayInfo;

    const-string v2, "com.android.internal.display_cutout_emulation"

    iget-object v3, v1, Landroid/content/om/OverlayInfo;->category:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->OVERLAY_INFO_COMPARATOR:Ljava/util/Comparator;

    invoke-interface {v0, p0}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    return-object v0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method static synthetic lambda$setOverlay$3(Landroid/content/om/OverlayInfo;)Z
    .locals 0

    invoke-virtual {p0}, Landroid/content/om/OverlayInfo;->isEnabled()Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$setOverlay$4(Landroid/content/om/OverlayInfo;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic lambda$static$0(Landroid/content/om/OverlayInfo;)I
    .locals 0

    iget p0, p0, Landroid/content/om/OverlayInfo;->priority:I

    return p0
.end method

.method private setOverlay(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mAm:Landroid/app/ActivityManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/oneplus/lib/app/appcompat/MenuWrapperFactory;->killProcess(Landroid/app/ActivityManager;Z)V

    invoke-direct {p0}, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->getOverlayInfos()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v2, Lcom/oneplus/settings/-$$Lambda$OPNotchDisplayGuideActivity$Mp47syz7Wy6NPVXcC2gvwQMUNKk;->INSTANCE:Lcom/oneplus/settings/-$$Lambda$OPNotchDisplayGuideActivity$Mp47syz7Wy6NPVXcC2gvwQMUNKk;

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v2, Lcom/oneplus/settings/-$$Lambda$OPNotchDisplayGuideActivity$AJT-RBoq9BKBRy3dQIWZ1S86ZMY;->INSTANCE:Lcom/oneplus/settings/-$$Lambda$OPNotchDisplayGuideActivity$AJT-RBoq9BKBRy3dQIWZ1S86ZMY;

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "package_device_default"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    return v1

    :cond_2
    new-instance v2, Lcom/oneplus/settings/OPNotchDisplayGuideActivity$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/oneplus/settings/OPNotchDisplayGuideActivity$1;-><init>(Lcom/oneplus/settings/OPNotchDisplayGuideActivity;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    invoke-virtual {v2, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return v1
.end method


# virtual methods
.method public synthetic lambda$onClick$1$OPNotchDisplayGuideActivity()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mShowNotchBtn:Landroid/widget/RadioButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    iget-object p0, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mHideNotchBtn:Landroid/widget/RadioButton;

    invoke-virtual {p0, v1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    return-void
.end method

.method public synthetic lambda$onClick$2$OPNotchDisplayGuideActivity()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mShowNotchBtn:Landroid/widget/RadioButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    iget-object p0, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mHideNotchBtn:Landroid/widget/RadioButton;

    invoke-virtual {p0, v1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const p1, 0x7f120725

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mShowNotchMode:Landroid/view/View;

    const-string v2, "notch_display"

    const-wide/16 v3, 0x7d0

    const/4 v5, 0x1

    if-ne p1, v0, :cond_2

    invoke-direct {p0}, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->getCurrenMode()Ljava/lang/String;

    move-result-object p1

    const-string v0, "package_device_default"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mShowNotchBtn:Landroid/widget/RadioButton;

    invoke-virtual {p1, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mHideNotchBtn:Landroid/widget/RadioButton;

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mShowNotchBtn:Landroid/widget/RadioButton;

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mHideNotchBtn:Landroid/widget/RadioButton;

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/settings/-$$Lambda$OPNotchDisplayGuideActivity$I7MhZGV2MxvtCUd5vNy8iL55-Lo;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/-$$Lambda$OPNotchDisplayGuideActivity$I7MhZGV2MxvtCUd5vNy8iL55-Lo;-><init>(Lcom/oneplus/settings/OPNotchDisplayGuideActivity;)V

    invoke-virtual {p1, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-direct {p0, v0}, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->setOverlay(Ljava/lang/String;)Z

    invoke-static {v2, v5}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mHideNotchMode:Landroid/view/View;

    if-ne p1, v0, :cond_4

    invoke-direct {p0}, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->getCurrenMode()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.android.internal.display.cutout.emulation.noCutout"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mShowNotchBtn:Landroid/widget/RadioButton;

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mHideNotchBtn:Landroid/widget/RadioButton;

    invoke-virtual {p1, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mShowNotchBtn:Landroid/widget/RadioButton;

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mHideNotchBtn:Landroid/widget/RadioButton;

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    invoke-direct {p0, v0}, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->setOverlay(Ljava/lang/String;)Z

    iget-object p1, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/oneplus/settings/-$$Lambda$OPNotchDisplayGuideActivity$FCz1Ru0CGbBUDAMHGoC-ZNJO4F4;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/-$$Lambda$OPNotchDisplayGuideActivity$FCz1Ru0CGbBUDAMHGoC-ZNJO4F4;-><init>(Lcom/oneplus/settings/OPNotchDisplayGuideActivity;)V

    invoke-virtual {p1, v0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-static {v2, v1}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;I)V

    :cond_4
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/oneplus/settings/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d01d4

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mContext:Landroid/content/Context;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mHandler:Landroid/os/Handler;

    const-string p1, "activity"

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    iput-object p1, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mAm:Landroid/app/ActivityManager;

    iget-object p1, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    const-string p1, "overlay"

    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/content/om/IOverlayManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/om/IOverlayManager;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mOverlayManager:Landroid/content/om/IOverlayManager;

    const p1, 0x7f0a04f5

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mShowNotchMode:Landroid/view/View;

    iget-object p1, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mShowNotchMode:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a04d4

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mHideNotchMode:Landroid/view/View;

    iget-object p1, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mHideNotchMode:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a04f3

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    iput-object p1, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mShowNotchBtn:Landroid/widget/RadioButton;

    const p1, 0x7f0a04d2

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    iput-object p1, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mHideNotchBtn:Landroid/widget/RadioButton;

    const p1, 0x7f0a02b0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mFullScreenModeGuideTitle:Landroid/widget/TextView;

    const p1, 0x7f0a04f6

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mShowNotchModeTitle:Landroid/widget/TextView;

    const p1, 0x7f0a04cf

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mShowNotchModeTitleSummary:Landroid/widget/TextView;

    const p1, 0x7f0a04d5

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mHideNotchModeTitle:Landroid/widget/TextView;

    const p1, 0x7f0a04d6

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mHideNotchModeTitleSummary:Landroid/widget/TextView;

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportHolePunchFrontCam()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_0

    const v0, 0x7f120da5

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object p1, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mFullScreenModeGuideTitle:Landroid/widget/TextView;

    const v0, 0x7f120da4

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mShowNotchModeTitle:Landroid/widget/TextView;

    const v0, 0x7f121027

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mShowNotchModeTitleSummary:Landroid/widget/TextView;

    const v0, 0x7f121026

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mHideNotchModeTitle:Landroid/widget/TextView;

    const v0, 0x7f120e07

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mHideNotchModeTitleSummary:Landroid/widget/TextView;

    const v0, 0x7f120e06

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    const p1, 0x7f0a04f4

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mShowNotch:Landroid/widget/ImageView;

    const p1, 0x7f0a04d3

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mHideNotch:Landroid/widget/ImageView;

    sget-object p1, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {p1}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isBlackModeOn()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mShowNotch:Landroid/widget/ImageView;

    const v0, 0x7f0804be

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mHideNotch:Landroid/widget/ImageView;

    const v0, 0x7f080488

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mShowNotch:Landroid/widget/ImageView;

    const v0, 0x7f0804bf

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mHideNotch:Landroid/widget/ImageView;

    const v0, 0x7f080489

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    iget-object p1, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mShowNotchBtn:Landroid/widget/RadioButton;

    invoke-direct {p0}, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->getCurrenMode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "package_device_default"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->mHideNotchBtn:Landroid/widget/RadioButton;

    invoke-direct {p0}, Lcom/oneplus/settings/OPNotchDisplayGuideActivity;->getCurrenMode()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.android.internal.display.cutout.emulation.noCutout"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/RadioButton;->setChecked(Z)V

    return-void
.end method
