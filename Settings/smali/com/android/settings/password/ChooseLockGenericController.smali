.class public Lcom/android/settings/password/ChooseLockGenericController;
.super Ljava/lang/Object;
.source "ChooseLockGenericController.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mManagedPasswordProvider:Lcom/android/settings/password/ManagedLockPasswordProvider;

.field private final mRequestedMinComplexity:I

.field private final mUserId:I


# direct methods
.method constructor <init>(Landroid/content/Context;IILandroid/app/admin/DevicePolicyManager;Lcom/android/settings/password/ManagedLockPasswordProvider;Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/password/ChooseLockGenericController;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/android/settings/password/ChooseLockGenericController;->mUserId:I

    iput p3, p0, Lcom/android/settings/password/ChooseLockGenericController;->mRequestedMinComplexity:I

    iput-object p5, p0, Lcom/android/settings/password/ChooseLockGenericController;->mManagedPasswordProvider:Lcom/android/settings/password/ManagedLockPasswordProvider;

    iput-object p4, p0, Lcom/android/settings/password/ChooseLockGenericController;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iput-object p6, p0, Lcom/android/settings/password/ChooseLockGenericController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILcom/android/internal/widget/LockPatternUtils;)V
    .locals 8

    const-class v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/app/admin/DevicePolicyManager;

    new-instance v6, Lcom/android/settings/password/ManagedLockPasswordProvider;

    invoke-direct {v6}, Lcom/android/settings/password/ManagedLockPasswordProvider;-><init>()V

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/settings/password/ChooseLockGenericController;-><init>(Landroid/content/Context;IILandroid/app/admin/DevicePolicyManager;Lcom/android/settings/password/ManagedLockPasswordProvider;Lcom/android/internal/widget/LockPatternUtils;)V

    return-void
.end method


# virtual methods
.method public getTitle(Lcom/android/settings/password/ScreenLockType;)Ljava/lang/CharSequence;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_5

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/android/settings/password/ChooseLockGenericController;->mManagedPasswordProvider:Lcom/android/settings/password/ManagedLockPasswordProvider;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/settings/password/ManagedLockPasswordProvider;->getPickerOptionTitle(Z)Ljava/lang/CharSequence;

    const-string p0, ""

    return-object p0

    :cond_1
    iget-object p0, p0, Lcom/android/settings/password/ChooseLockGenericController;->mContext:Landroid/content/Context;

    const p1, 0x7f121753

    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_2
    iget-object p0, p0, Lcom/android/settings/password/ChooseLockGenericController;->mContext:Landroid/content/Context;

    const p1, 0x7f121757

    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_3
    iget-object p0, p0, Lcom/android/settings/password/ChooseLockGenericController;->mContext:Landroid/content/Context;

    const p1, 0x7f121755

    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_4
    iget-object p0, p0, Lcom/android/settings/password/ChooseLockGenericController;->mContext:Landroid/content/Context;

    const p1, 0x7f12174f

    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_5
    iget-object p0, p0, Lcom/android/settings/password/ChooseLockGenericController;->mContext:Landroid/content/Context;

    const p1, 0x7f121751

    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public getVisibleScreenLockTypes(IZ)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/List<",
            "Lcom/android/settings/password/ScreenLockType;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/settings/password/ChooseLockGenericController;->upgradeQuality(I)I

    move-result p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/android/settings/password/ScreenLockType;->values()[Lcom/android/settings/password/ScreenLockType;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    invoke-virtual {p0, v4}, Lcom/android/settings/password/ChooseLockGenericController;->isScreenLockVisible(Lcom/android/settings/password/ScreenLockType;)Z

    move-result v5

    if-eqz v5, :cond_1

    if-nez p2, :cond_0

    invoke-virtual {p0, v4, p1}, Lcom/android/settings/password/ChooseLockGenericController;->isScreenLockEnabled(Lcom/android/settings/password/ScreenLockType;I)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public isScreenLockDisabledByAdmin(Lcom/android/settings/password/ScreenLockType;I)Z
    .locals 2

    iget v0, p1, Lcom/android/settings/password/ScreenLockType;->maxQuality:I

    const/4 v1, 0x1

    if-ge v0, p2, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    sget-object v0, Lcom/android/settings/password/ScreenLockType;->MANAGED:Lcom/android/settings/password/ScreenLockType;

    if-ne p1, v0, :cond_2

    if-nez p2, :cond_1

    iget-object p0, p0, Lcom/android/settings/password/ChooseLockGenericController;->mManagedPasswordProvider:Lcom/android/settings/password/ManagedLockPasswordProvider;

    invoke-virtual {p0}, Lcom/android/settings/password/ManagedLockPasswordProvider;->isManagedPasswordChoosable()Z

    :cond_1
    move p2, v1

    :cond_2
    return p2
.end method

.method public isScreenLockEnabled(Lcom/android/settings/password/ScreenLockType;I)Z
    .locals 0

    iget p0, p1, Lcom/android/settings/password/ScreenLockType;->maxQuality:I

    if-lt p0, p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isScreenLockVisible(Lcom/android/settings/password/ScreenLockType;)Z
    .locals 4

    iget v0, p0, Lcom/android/settings/password/ChooseLockGenericController;->mUserId:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_5

    if-eq p1, v3, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    return v3

    :cond_1
    iget-object p0, p0, Lcom/android/settings/password/ChooseLockGenericController;->mManagedPasswordProvider:Lcom/android/settings/password/ManagedLockPasswordProvider;

    invoke-virtual {p0}, Lcom/android/settings/password/ManagedLockPasswordProvider;->isManagedPasswordChoosable()Z

    return v2

    :cond_2
    iget-object p0, p0, Lcom/android/settings/password/ChooseLockGenericController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->hasSecureLockScreen()Z

    move-result p0

    return p0

    :cond_3
    iget-object p0, p0, Lcom/android/settings/password/ChooseLockGenericController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f050011

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    if-nez p0, :cond_4

    if-nez v0, :cond_4

    move v2, v3

    :cond_4
    return v2

    :cond_5
    iget-object p0, p0, Lcom/android/settings/password/ChooseLockGenericController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f050010

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    if-nez p0, :cond_6

    if-nez v0, :cond_6

    move v2, v3

    :cond_6
    return v2
.end method

.method public upgradeQuality(I)I
    .locals 3

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGenericController;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget v1, p0, Lcom/android/settings/password/ChooseLockGenericController;->mUserId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;I)I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget p0, p0, Lcom/android/settings/password/ChooseLockGenericController;->mRequestedMinComplexity:I

    invoke-static {p0}, Landroid/app/admin/PasswordMetrics;->complexityLevelToMinQuality(I)I

    move-result p0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method
