.class public Lcom/android/settings/datausage/AppDataUsage;
.super Lcom/android/settings/datausage/DataUsageBaseFragment;
.source "AppDataUsage.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/datausage/DataSaverBackend$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/datausage/AppDataUsage$UpdateRuleTask;
    }
.end annotation


# static fields
.field public static OSUidDetail:Lcom/android/settingslib/net/UidDetail;


# instance fields
.field private items:[Ljava/lang/String;

.field private mAppItem:Lcom/android/settingslib/AppItem;

.field private mAppList:Landroidx/preference/PreferenceCategory;

.field private final mAppPrefCallbacks:Landroidx/loader/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/loader/app/LoaderManager$LoaderCallbacks<",
            "Landroid/util/ArraySet<",
            "Landroidx/preference/Preference;",
            ">;>;"
        }
    .end annotation
.end field

.field private mAppSettings:Landroidx/preference/Preference;

.field private mAppSettingsIntent:Landroid/content/Intent;

.field private mBackgroundUsage:Landroidx/preference/Preference;

.field private mContext:Landroid/content/Context;

.field private mCycle:Lcom/android/settings/datausage/SpinnerPreference;

.field private mCycleAdapter:Lcom/android/settings/datausage/CycleAdapter;

.field private mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mCycleText:Landroidx/preference/Preference;

.field private mCycles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

.field private mDisabledData:Landroidx/preference/SwitchPreference;

.field private mDisabledWifi:Landroidx/preference/SwitchPreference;

.field private mEnd:J

.field private mForegroundUsage:Landroidx/preference/Preference;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field mLabel:Ljava/lang/CharSequence;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field mPackageName:Ljava/lang/String;

.field private final mPackages:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRestrictBackground:Lcom/android/settingslib/RestrictedSwitchPreference;

.field private mRestrictBackgroundUss:Lcom/android/settingslib/RestrictedPreference;

.field private mSelectedCycle:J

.field private mStart:J

.field private mSubId:I

.field mTemplate:Landroid/net/NetworkTemplate;

.field private mTotalUsage:Landroidx/preference/Preference;

.field final mUidDataCallbacks:Landroidx/loader/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/loader/app/LoaderManager$LoaderCallbacks<",
            "Ljava/util/List<",
            "Lcom/android/settingslib/net/NetworkCycleDataForUid;",
            ">;>;"
        }
    .end annotation
.end field

.field private mUnrestrictedData:Lcom/android/settingslib/RestrictedSwitchPreference;

.field private mUsageData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/net/NetworkCycleDataForUid;",
            ">;"
        }
    .end annotation
.end field

.field private restrictBackgroundChooseIndex:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageBaseFragment;-><init>()V

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mPackages:Landroid/util/ArraySet;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mSubId:I

    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->items:[Ljava/lang/String;

    iput v0, p0, Lcom/android/settings/datausage/AppDataUsage;->restrictBackgroundChooseIndex:I

    new-instance v0, Lcom/android/settings/datausage/AppDataUsage$2;

    invoke-direct {v0, p0}, Lcom/android/settings/datausage/AppDataUsage$2;-><init>(Lcom/android/settings/datausage/AppDataUsage;)V

    iput-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    new-instance v0, Lcom/android/settings/datausage/AppDataUsage$3;

    invoke-direct {v0, p0}, Lcom/android/settings/datausage/AppDataUsage$3;-><init>(Lcom/android/settings/datausage/AppDataUsage;)V

    iput-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mUidDataCallbacks:Landroidx/loader/app/LoaderManager$LoaderCallbacks;

    new-instance v0, Lcom/android/settings/datausage/AppDataUsage$4;

    invoke-direct {v0, p0}, Lcom/android/settings/datausage/AppDataUsage$4;-><init>(Lcom/android/settings/datausage/AppDataUsage;)V

    iput-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppPrefCallbacks:Landroidx/loader/app/LoaderManager$LoaderCallbacks;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/datausage/AppDataUsage;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/datausage/AppDataUsage;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/datausage/AppDataUsage;)Lcom/android/settingslib/AppItem;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/settings/datausage/AppDataUsage;)Landroidx/preference/PreferenceCategory;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppList:Landroidx/preference/PreferenceCategory;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/settings/datausage/AppDataUsage;)Landroidx/preference/SwitchPreference;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/datausage/AppDataUsage;->mDisabledData:Landroidx/preference/SwitchPreference;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/settings/datausage/AppDataUsage;)Landroidx/preference/SwitchPreference;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/datausage/AppDataUsage;->mDisabledWifi:Landroidx/preference/SwitchPreference;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/settings/datausage/AppDataUsage;)I
    .locals 0

    iget p0, p0, Lcom/android/settings/datausage/AppDataUsage;->restrictBackgroundChooseIndex:I

    return p0
.end method

.method static synthetic access$1302(Lcom/android/settings/datausage/AppDataUsage;I)I
    .locals 0

    iput p1, p0, Lcom/android/settings/datausage/AppDataUsage;->restrictBackgroundChooseIndex:I

    return p1
.end method

.method static synthetic access$1400(Lcom/android/settings/datausage/AppDataUsage;)Lcom/android/settingslib/RestrictedPreference;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/datausage/AppDataUsage;->mRestrictBackgroundUss:Lcom/android/settingslib/RestrictedPreference;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/android/settings/datausage/AppDataUsage;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/datausage/AppDataUsage;->items:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settings/datausage/AppDataUsage;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/datausage/AppDataUsage;->mCycles:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$302(Lcom/android/settings/datausage/AppDataUsage;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mUsageData:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/settings/datausage/AppDataUsage;)Lcom/android/settings/datausage/CycleAdapter;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/datausage/AppDataUsage;->mCycleAdapter:Lcom/android/settings/datausage/CycleAdapter;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/settings/datausage/AppDataUsage;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mSelectedCycle:J

    return-wide v0
.end method

.method static synthetic access$600(Lcom/android/settings/datausage/AppDataUsage;)Lcom/android/settings/datausage/SpinnerPreference;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/datausage/AppDataUsage;->mCycle:Lcom/android/settings/datausage/SpinnerPreference;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/settings/datausage/AppDataUsage;)Landroid/content/Context;
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/settings/datausage/AppDataUsage;)Landroid/util/ArraySet;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/datausage/AppDataUsage;->mPackages:Landroid/util/ArraySet;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/settings/datausage/AppDataUsage;)Landroid/content/pm/PackageManager;
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    return-object p0
.end method

.method private addUid(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mPackages:Landroid/util/ArraySet;

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private getAppRestrictBackground()Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget v0, v0, Lcom/android/settingslib/AppItem;->key:I

    iget-object p0, p0, Lcom/android/settings/datausage/DataUsageBaseFragment;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object p0, p0, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {p0, v0}, Landroid/net/NetworkPolicyManager;->getUidPolicy(I)I

    move-result p0

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getUnrestrictData()Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget p0, p0, Lcom/android/settingslib/AppItem;->key:I

    invoke-virtual {v0, p0}, Lcom/android/settings/datausage/DataSaverBackend;->isWhitelisted(I)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private updatePrefs(ZZ)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget v2, v2, Lcom/android/settingslib/AppItem;->key:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfMeteredDataRestricted(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mRestrictBackground:Lcom/android/settingslib/RestrictedSwitchPreference;

    if-eqz v1, :cond_0

    xor-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mRestrictBackground:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {v1, v0}, Lcom/android/settingslib/RestrictedSwitchPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    :cond_0
    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mUnrestrictedData:Lcom/android/settingslib/RestrictedSwitchPreference;

    if-eqz v1, :cond_2

    if-eqz p1, :cond_1

    const/4 p0, 0x0

    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    invoke-virtual {v1, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mUnrestrictedData:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {p1, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p0, p0, Lcom/android/settings/datausage/AppDataUsage;->mUnrestrictedData:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/RestrictedSwitchPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method bindData(I)V
    .locals 7

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mUsageData:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mUsageData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/net/NetworkCycleDataForUid;

    invoke-virtual {p1}, Lcom/android/settingslib/net/NetworkCycleDataForUid;->getBackgroudUsage()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/android/settingslib/net/NetworkCycleDataForUid;->getForegroudUsage()J

    move-result-wide v2

    goto :goto_1

    :cond_1
    :goto_0
    const-wide/16 v0, 0x0

    move-wide v2, v0

    :goto_1
    add-long v4, v0, v2

    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mTotalUsage:Landroidx/preference/Preference;

    iget-object v6, p0, Lcom/android/settings/datausage/AppDataUsage;->mContext:Landroid/content/Context;

    invoke-static {v6, v4, v5}, Landroidx/transition/R$id;->formatDataUsage(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mForegroundUsage:Landroidx/preference/Preference;

    iget-object v4, p0, Lcom/android/settings/datausage/AppDataUsage;->mContext:Landroid/content/Context;

    invoke-static {v4, v2, v3}, Landroidx/transition/R$id;->formatDataUsage(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mBackgroundUsage:Landroidx/preference/Preference;

    iget-object p0, p0, Lcom/android/settings/datausage/AppDataUsage;->mContext:Landroid/content/Context;

    invoke-static {p0, v0, v1}, Landroidx/transition/R$id;->formatDataUsage(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public changeRestrictBackgroundType(I)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, v0, Lcom/android/settings/datausage/AppDataUsage;->mPackageName:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget v0, v0, Lcom/android/settingslib/AppItem;->key:I

    invoke-static {v2}, Lcom/android/settings/datausage/backgrounddata/utils/BackgroundDataUtils;->getSqliteDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v12

    if-nez v12, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-static {v12, v3, v0}, Lcom/android/settings/datausage/backgrounddata/utils/BackgroundDataUtils;->queryApp(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_8

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v12, v3, v0, v1}, Lcom/android/settings/datausage/backgrounddata/utils/BackgroundDataUtils;->addBackgroundDataApp(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;II)V

    new-instance v4, Lcom/android/settings/datausage/backgrounddata/bean/BackgroundDataBean;

    invoke-direct {v4, v3, v0, v1}, Lcom/android/settings/datausage/backgrounddata/bean/BackgroundDataBean;-><init>(Ljava/lang/String;II)V

    goto/16 :goto_3

    :cond_1
    const/4 v13, 0x0

    invoke-interface {v4, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/datausage/backgrounddata/bean/BackgroundDataBean;

    invoke-virtual {v4}, Lcom/android/settings/datausage/backgrounddata/bean/BackgroundDataBean;->getId()I

    move-result v14

    if-gez v14, :cond_2

    goto/16 :goto_2

    :cond_2
    const-string v15, "type"

    const/4 v11, 0x1

    if-gez v14, :cond_3

    move v13, v11

    goto :goto_0

    :cond_3
    const/4 v6, 0x0

    new-array v8, v11, [Ljava/lang/String;

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v8, v13

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v16, 0x0

    const-string v5, "background_data"

    const-string v7, "id = ?"

    move-object v4, v12

    move v13, v11

    move-object/from16 v11, v16

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-lez v5, :cond_5

    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v5, "package_name"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v5, ""

    :cond_4
    const-string v6, "uid"

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-interface {v4, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    new-instance v4, Lcom/android/settings/datausage/backgrounddata/bean/BackgroundDataBean;

    invoke-direct {v4, v14, v5, v6, v7}, Lcom/android/settings/datausage/backgrounddata/bean/BackgroundDataBean;-><init>(ILjava/lang/String;II)V

    goto :goto_1

    :cond_5
    if-eqz v4, :cond_6

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_6
    :goto_0
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_7

    invoke-virtual {v4}, Lcom/android/settings/datausage/backgrounddata/bean/BackgroundDataBean;->getId()I

    move-result v4

    if-lez v4, :cond_7

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v15, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    new-array v5, v13, [Ljava/lang/String;

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const-string v6, "background_data"

    const-string v7, "id = ?"

    invoke-virtual {v12, v6, v4, v7, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_7
    :goto_2
    new-instance v4, Lcom/android/settings/datausage/backgrounddata/bean/BackgroundDataBean;

    invoke-direct {v4, v3, v0, v1}, Lcom/android/settings/datausage/backgrounddata/bean/BackgroundDataBean;-><init>(Ljava/lang/String;II)V

    :goto_3
    invoke-static {v2, v4}, Lcom/android/settings/datausage/backgrounddata/utils/BackgroundDataUtils;->changeRoamingAppStatus(Landroid/content/Context;Lcom/android/settings/datausage/backgrounddata/bean/BackgroundDataBean;)V

    :cond_8
    :goto_4
    return-void
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "AppDataUsage"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x157

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f160017

    return p0
.end method

.method getUidDetailProvider()Lcom/android/settingslib/net/UidDetailProvider;
    .locals 1

    new-instance v0, Lcom/android/settingslib/net/UidDetailProvider;

    iget-object p0, p0, Lcom/android/settings/datausage/AppDataUsage;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/android/settingslib/net/UidDetailProvider;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public onBlacklistStatusChanged(IZ)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget-object v0, v0, Lcom/android/settingslib/AppItem;->uids:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/settings/datausage/AppDataUsage;->getUnrestrictData()Z

    move-result p1

    invoke-direct {p0, p2, p1}, Lcom/android/settings/datausage/AppDataUsage;->updatePrefs(ZZ)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13

    invoke-super {p0, p1}, Lcom/android/settings/datausage/DataUsageBaseFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "app_item"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/AppItem;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    iput-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    if-eqz p1, :cond_1

    const-string v1, "network_template"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkTemplate;

    goto :goto_1

    :cond_1
    move-object v1, v0

    :goto_1
    iput-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mTemplate:Landroid/net/NetworkTemplate;

    if-eqz p1, :cond_2

    const-string v1, "network_cycles"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    goto :goto_2

    :cond_2
    move-object v1, v0

    :goto_2
    iput-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mCycles:Ljava/util/ArrayList;

    if-eqz p1, :cond_3

    const-string v1, "selected_cycle"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    goto :goto_3

    :cond_3
    const-wide/16 v1, 0x0

    :goto_3
    iput-wide v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mSelectedCycle:J

    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mTemplate:Landroid/net/NetworkTemplate;

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v2

    invoke-static {v1, v2}, Landroidx/transition/R$id;->getDefaultTemplate(Landroid/content/Context;I)Landroid/net/NetworkTemplate;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mTemplate:Landroid/net/NetworkTemplate;

    :cond_4
    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-nez v1, :cond_7

    const-string v1, "uid"

    if-eqz p1, :cond_5

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    goto :goto_4

    :cond_5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    :goto_4
    if-ne v1, v2, :cond_6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_7

    :cond_6
    invoke-direct {p0, v1}, Lcom/android/settings/datausage/AppDataUsage;->addUid(I)V

    new-instance v4, Lcom/android/settingslib/AppItem;

    invoke-direct {v4, v1}, Lcom/android/settingslib/AppItem;-><init>(I)V

    iput-object v4, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget-object v4, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    invoke-virtual {v4, v1}, Lcom/android/settingslib/AppItem;->addUid(I)V

    goto :goto_7

    :cond_7
    move v1, v3

    :goto_5
    iget-object v4, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget-object v4, v4, Lcom/android/settingslib/AppItem;->uids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4}, Landroid/util/SparseBooleanArray;->size()I

    move-result v4

    if-ge v1, v4, :cond_8

    iget-object v4, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget-object v4, v4, Lcom/android/settingslib/AppItem;->uids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/settings/datausage/AppDataUsage;->addUid(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_8
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportUss()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget-object v1, v1, Lcom/android/settingslib/AppItem;->uids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    if-nez v1, :cond_a

    if-eqz p1, :cond_9

    const-string v1, "restricted"

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_6

    :cond_9
    move v1, v3

    :goto_6
    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget v1, v1, Lcom/android/settingslib/AppItem;->key:I

    invoke-direct {p0, v1}, Lcom/android/settings/datausage/AppDataUsage;->addUid(I)V

    :cond_a
    :goto_7
    const-string v1, "total_usage"

    invoke-virtual {p0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mTotalUsage:Landroidx/preference/Preference;

    const-string v1, "foreground_usage"

    invoke-virtual {p0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mForegroundUsage:Landroidx/preference/Preference;

    const-string v1, "background_usage"

    invoke-virtual {p0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mBackgroundUsage:Landroidx/preference/Preference;

    if-eqz p1, :cond_b

    const-string v1, "arg_subid"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    goto :goto_8

    :cond_b
    move p1, v3

    :goto_8
    iput p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mSubId:I

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p1

    iget v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mSubId:I

    invoke-static {p1, v1}, Landroidx/transition/R$id;->getDataUsageSectionTimeMillByAccountDay(Landroid/content/Context;I)[J

    move-result-object p1

    aget-wide v4, p1, v3

    iput-wide v4, p0, Lcom/android/settings/datausage/AppDataUsage;->mStart:J

    const/4 v1, 0x1

    aget-wide v4, p1, v1

    iput-wide v4, p0, Lcom/android/settings/datausage/AppDataUsage;->mEnd:J

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p1

    iget-wide v4, p0, Lcom/android/settings/datausage/AppDataUsage;->mStart:J

    iget-wide v6, p0, Lcom/android/settings/datausage/AppDataUsage;->mEnd:J

    invoke-static {p1, v4, v5, v6, v7}, Lcom/android/settings/Utils;->formatDateRange(Landroid/content/Context;JJ)Ljava/lang/String;

    move-result-object p1

    const-string v4, "pf_cycle"

    invoke-virtual {p0, v4}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/datausage/AppDataUsage;->mCycleText:Landroidx/preference/Preference;

    iget-object v4, p0, Lcom/android/settings/datausage/AppDataUsage;->mCycleText:Landroidx/preference/Preference;

    invoke-virtual {v4, p1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    const-string p1, "disabled_mobile"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SwitchPreference;

    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mDisabledData:Landroidx/preference/SwitchPreference;

    const-string p1, "disabled_wifi"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SwitchPreference;

    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mDisabledWifi:Landroidx/preference/SwitchPreference;

    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    if-eqz p1, :cond_c

    iget p1, p1, Lcom/android/settingslib/AppItem;->key:I

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    :cond_c
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isGuestMode()Z

    move-result p1

    if-nez p1, :cond_11

    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget p1, p1, Lcom/android/settingslib/AppItem;->key:I

    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result p1

    if-eqz p1, :cond_11

    const/16 p1, 0x3e7

    if-eq v2, p1, :cond_11

    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mDisabledData:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mDisabledWifi:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p1

    iget-object v2, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget v2, v2, Lcom/android/settingslib/AppItem;->key:I

    invoke-static {p1, v2}, Landroidx/transition/R$id;->getApplicationInfoByUid(Landroid/content/Context;I)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_12

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ApplicationInfo;

    if-eqz p1, :cond_12

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v2, p1}, Lcom/oneplus/settings/utils/OPFirewallUtils;->selectFirewallRuleByPkg(Landroid/content/Context;Ljava/lang/String;)Lcom/oneplus/settings/utils/OPFirewallRule;

    move-result-object p1

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Lcom/oneplus/settings/utils/OPFirewallRule;->getMobile()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/android/settings/datausage/AppDataUsage;->mDisabledData:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1}, Lcom/oneplus/settings/utils/OPFirewallRule;->getMobile()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v4, :cond_d

    move v4, v1

    goto :goto_9

    :cond_d
    move v4, v3

    :goto_9
    invoke-virtual {v2, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_a

    :cond_e
    iget-object v2, p0, Lcom/android/settings/datausage/AppDataUsage;->mDisabledData:Landroidx/preference/SwitchPreference;

    invoke-virtual {v2, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :goto_a
    if-eqz p1, :cond_10

    invoke-virtual {p1}, Lcom/oneplus/settings/utils/OPFirewallRule;->getWlan()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/android/settings/datausage/AppDataUsage;->mDisabledWifi:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1}, Lcom/oneplus/settings/utils/OPFirewallRule;->getWlan()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eqz p1, :cond_f

    move p1, v1

    goto :goto_b

    :cond_f
    move p1, v3

    :goto_b
    invoke-virtual {v2, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_c

    :cond_10
    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mDisabledWifi:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_c

    :cond_11
    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mDisabledData:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mDisabledWifi:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_12
    :goto_c
    const-string p1, "cycle"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/datausage/SpinnerPreference;

    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mCycle:Lcom/android/settings/datausage/SpinnerPreference;

    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mCycle:Lcom/android/settings/datausage/SpinnerPreference;

    invoke-virtual {p1, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    new-instance p1, Lcom/android/settings/datausage/CycleAdapter;

    iget-object v2, p0, Lcom/android/settings/datausage/AppDataUsage;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/settings/datausage/AppDataUsage;->mCycle:Lcom/android/settings/datausage/SpinnerPreference;

    iget-object v5, p0, Lcom/android/settings/datausage/AppDataUsage;->mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-direct {p1, v2, v4, v5}, Lcom/android/settings/datausage/CycleAdapter;-><init>(Landroid/content/Context;Lcom/android/settings/datausage/CycleAdapter$SpinnerInterface;Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mCycleAdapter:Lcom/android/settings/datausage/CycleAdapter;

    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getUidDetailProvider()Lcom/android/settingslib/net/UidDetailProvider;

    move-result-object p1

    iget-object v2, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget v2, v2, Lcom/android/settingslib/AppItem;->key:I

    const v4, 0x7f120e8c

    const v5, 0x7f121388

    const v6, 0x7f06032f

    const v7, 0x7f120a3c

    const-string v8, "app_list"

    const-string v9, "app_settings"

    const-string v10, "restrict_background_uss"

    const-string v11, "restrict_background"

    const-string v12, "unrestricted_data_saver"

    if-lez v2, :cond_22

    invoke-static {v2}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v2

    if-nez v2, :cond_15

    iget-object v2, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget v2, v2, Lcom/android/settingslib/AppItem;->key:I

    invoke-virtual {p1, v2, v1}, Lcom/android/settingslib/net/UidDetailProvider;->getUidDetail(IZ)Lcom/android/settingslib/net/UidDetail;

    move-result-object p1

    iget-object v2, p0, Lcom/android/settings/datausage/AppDataUsage;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v7, p1, Lcom/android/settingslib/net/UidDetail;->label:Ljava/lang/CharSequence;

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    iget-object v2, p0, Lcom/android/settings/datausage/AppDataUsage;->mContext:Landroid/content/Context;

    new-array v7, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v3

    invoke-virtual {v2, v5, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p1, Lcom/android/settingslib/net/UidDetail;->label:Ljava/lang/CharSequence;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    goto :goto_d

    :cond_13
    iget-object v2, p1, Lcom/android/settingslib/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Lcom/android/settings/datausage/AppDataUsage;->mIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_e

    :cond_14
    :goto_d
    iget-object v2, p1, Lcom/android/settingslib/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/android/settings/datausage/AppDataUsage;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v6}, Landroid/content/Context;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    iput-object v2, p0, Lcom/android/settings/datausage/AppDataUsage;->mIcon:Landroid/graphics/drawable/Drawable;

    :goto_e
    iget-object p1, p1, Lcom/android/settingslib/net/UidDetail;->label:Ljava/lang/CharSequence;

    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {p0, v12}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    invoke-virtual {p0, v11}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    invoke-virtual {p0, v10}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    goto/16 :goto_11

    :cond_15
    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mPackages:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result p1

    if-eqz p1, :cond_16

    :try_start_0
    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/android/settings/datausage/AppDataUsage;->mPackages:Landroid/util/ArraySet;

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget v4, v4, Lcom/android/settingslib/AppItem;->key:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Landroid/util/IconDrawableFactory;->newInstance(Landroid/content/Context;)Landroid/util/IconDrawableFactory;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/util/IconDrawableFactory;->getBadgedIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/datausage/AppDataUsage;->mIcon:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/android/settings/datausage/AppDataUsage;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/datausage/AppDataUsage;->mLabel:Ljava/lang/CharSequence;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mPackageName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_16
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportUss()Z

    move-result p1

    if-nez p1, :cond_17

    invoke-virtual {p0, v10}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    invoke-virtual {p0, v11}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/RestrictedSwitchPreference;

    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mRestrictBackground:Lcom/android/settingslib/RestrictedSwitchPreference;

    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mRestrictBackground:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {p0, v12}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/RestrictedSwitchPreference;

    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mUnrestrictedData:Lcom/android/settingslib/RestrictedSwitchPreference;

    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mUnrestrictedData:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    goto/16 :goto_11

    :cond_17
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x7f0300ff

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->items:[Ljava/lang/String;

    invoke-virtual {p0, v11}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    invoke-virtual {p0, v10}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/RestrictedPreference;

    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mRestrictBackgroundUss:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {p0, v12}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/RestrictedSwitchPreference;

    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mUnrestrictedData:Lcom/android/settingslib/RestrictedSwitchPreference;

    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mUnrestrictedData:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v2, p0, Lcom/android/settings/datausage/AppDataUsage;->mPackageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget v4, v4, Lcom/android/settingslib/AppItem;->key:I

    invoke-static {p1}, Lcom/android/settings/datausage/backgrounddata/utils/BackgroundDataUtils;->getSqliteDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    const/4 v6, 0x2

    if-nez v5, :cond_18

    goto :goto_10

    :cond_18
    invoke-static {p1, v5}, Lcom/android/settings/datausage/backgrounddata/utils/BackgroundDataUtils;->initAppBackgroundDataType(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-static {v5, v2, v4}, Lcom/android/settings/datausage/backgrounddata/utils/BackgroundDataUtils;->queryApp(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1b

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_19

    goto :goto_f

    :cond_19
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/datausage/backgrounddata/bean/BackgroundDataBean;

    invoke-virtual {p1}, Lcom/android/settings/datausage/backgrounddata/bean/BackgroundDataBean;->getType()I

    move-result p1

    if-gt p1, v6, :cond_1c

    if-gez p1, :cond_1a

    goto :goto_10

    :cond_1a
    move v6, p1

    goto :goto_10

    :cond_1b
    :goto_f
    invoke-static {v5, v2, v4, v6}, Lcom/android/settings/datausage/backgrounddata/utils/BackgroundDataUtils;->addBackgroundDataApp(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;II)V

    :cond_1c
    :goto_10
    iput v6, p0, Lcom/android/settings/datausage/AppDataUsage;->restrictBackgroundChooseIndex:I

    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->items:[Ljava/lang/String;

    array-length v2, p1

    iget v4, p0, Lcom/android/settings/datausage/AppDataUsage;->restrictBackgroundChooseIndex:I

    if-le v2, v4, :cond_1d

    iget-object v2, p0, Lcom/android/settings/datausage/AppDataUsage;->mRestrictBackgroundUss:Lcom/android/settingslib/RestrictedPreference;

    aget-object p1, p1, v4

    invoke-virtual {v2, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1d
    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mRestrictBackgroundUss:Lcom/android/settingslib/RestrictedPreference;

    new-instance v2, Lcom/android/settings/datausage/AppDataUsage$1;

    invoke-direct {v2, p0}, Lcom/android/settings/datausage/AppDataUsage$1;-><init>(Lcom/android/settings/datausage/AppDataUsage;)V

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    :goto_11
    new-instance p1, Lcom/android/settings/datausage/DataSaverBackend;

    iget-object v2, p0, Lcom/android/settings/datausage/AppDataUsage;->mContext:Landroid/content/Context;

    invoke-direct {p1, v2}, Lcom/android/settings/datausage/DataSaverBackend;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {p0, v9}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppSettings:Landroidx/preference/Preference;

    new-instance p1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MANAGE_NETWORK_USAGE"

    invoke-direct {p1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppSettingsIntent:Landroid/content/Intent;

    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppSettingsIntent:Landroid/content/Intent;

    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iget-object v2, p0, Lcom/android/settings/datausage/AppDataUsage;->mPackages:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppSettingsIntent:Landroid/content/Intent;

    invoke-virtual {v5, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppSettingsIntent:Landroid/content/Intent;

    invoke-virtual {p1, v4, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    if-eqz v4, :cond_1e

    move v3, v1

    :cond_1f
    if-nez v3, :cond_20

    invoke-virtual {p0, v9}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    iput-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppSettings:Landroidx/preference/Preference;

    :cond_20
    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mPackages:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result p1

    if-le p1, v1, :cond_21

    invoke-virtual {p0, v8}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppList:Landroidx/preference/PreferenceCategory;

    invoke-static {p0}, Landroidx/loader/app/LoaderManager;->getInstance(Landroidx/lifecycle/LifecycleOwner;)Landroidx/loader/app/LoaderManager;

    move-result-object p1

    const/4 v0, 0x3

    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    iget-object p0, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppPrefCallbacks:Landroidx/loader/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {p1, v0, v1, p0}, Landroidx/loader/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    goto :goto_14

    :cond_21
    invoke-virtual {p0, v8}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    goto :goto_14

    :cond_22
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget v2, v2, Lcom/android/settingslib/AppItem;->key:I

    invoke-virtual {p1, v2, v1}, Lcom/android/settingslib/net/UidDetailProvider;->getUidDetail(IZ)Lcom/android/settingslib/net/UidDetail;

    move-result-object p1

    iget-object v2, p0, Lcom/android/settings/datausage/AppDataUsage;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v7, p1, Lcom/android/settingslib/net/UidDetail;->label:Ljava/lang/CharSequence;

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24

    iget-object v2, p0, Lcom/android/settings/datausage/AppDataUsage;->mContext:Landroid/content/Context;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-virtual {v2, v5, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/android/settingslib/net/UidDetail;->label:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    goto :goto_12

    :cond_23
    iget-object v1, p1, Lcom/android/settingslib/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_13

    :cond_24
    :goto_12
    iget-object v1, p1, Lcom/android/settingslib/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/android/settings/datausage/AppDataUsage;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v6}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    iput-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mIcon:Landroid/graphics/drawable/Drawable;

    :goto_13
    iget-object p1, p1, Lcom/android/settingslib/net/UidDetail;->label:Ljava/lang/CharSequence;

    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0, v12}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    invoke-virtual {p0, v9}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    invoke-virtual {p0, v11}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    invoke-virtual {p0, v8}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    invoke-virtual {p0, v10}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    :goto_14
    return-void
.end method

.method public onDataSaverChanged(Z)V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/android/settings/datausage/DataSaverBackend;->remListener(Lcom/android/settings/datausage/DataSaverBackend$Listener;)V

    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 8

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mRestrictBackground:Lcom/android/settingslib/RestrictedSwitchPreference;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget v0, v0, Lcom/android/settingslib/AppItem;->key:I

    iget-object v2, p0, Lcom/android/settings/datausage/AppDataUsage;->mPackageName:Ljava/lang/String;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    xor-int/2addr p2, v1

    invoke-virtual {p1, v0, v2, p2}, Lcom/android/settings/datausage/DataSaverBackend;->setIsBlacklisted(ILjava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->updatePrefs()V

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mUnrestrictedData:Lcom/android/settingslib/RestrictedSwitchPreference;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget v0, v0, Lcom/android/settingslib/AppItem;->key:I

    iget-object p0, p0, Lcom/android/settings/datausage/AppDataUsage;->mPackageName:Ljava/lang/String;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, v0, p0, p2}, Lcom/android/settings/datausage/DataSaverBackend;->setIsWhitelisted(ILjava/lang/String;Z)V

    return v1

    :cond_1
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mDisabledWifi:Landroidx/preference/SwitchPreference;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget v5, p1, Lcom/android/settingslib/AppItem;->key:I

    new-instance p1, Lcom/android/settings/datausage/AppDataUsage$UpdateRuleTask;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v4

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    const/4 v7, 0x1

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/settings/datausage/AppDataUsage$UpdateRuleTask;-><init>(Lcom/android/settings/datausage/AppDataUsage;Landroid/content/Context;IZI)V

    new-array p0, v1, [Ljava/lang/Void;

    invoke-virtual {p1, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mDisabledData:Landroidx/preference/SwitchPreference;

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget v5, p1, Lcom/android/settingslib/AppItem;->key:I

    new-instance p1, Lcom/android/settings/datausage/AppDataUsage$UpdateRuleTask;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v4

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    const/4 v7, 0x0

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/settings/datausage/AppDataUsage$UpdateRuleTask;-><init>(Lcom/android/settings/datausage/AppDataUsage;Landroid/content/Context;IZI)V

    new-array p0, v1, [Ljava/lang/Void;

    invoke-virtual {p1, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_3
    :goto_0
    return v1
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppSettings:Landroidx/preference/Preference;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppSettingsIntent:Landroid/content/Intent;

    new-instance v1, Landroid/os/UserHandle;

    iget-object p0, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget p0, p0, Lcom/android/settingslib/AppItem;->key:I

    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p0

    invoke-direct {v1, p0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Lcom/android/settings/datausage/DataUsageBaseFragment;->onResume()V

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/android/settings/datausage/DataSaverBackend;->addListener(Lcom/android/settings/datausage/DataSaverBackend$Listener;)V

    :cond_0
    invoke-static {p0}, Landroidx/loader/app/LoaderManager;->getInstance(Landroidx/lifecycle/LifecycleOwner;)Landroidx/loader/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings/datausage/AppDataUsage;->mUidDataCallbacks:Landroidx/loader/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v1, v2, v3}, Landroidx/loader/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->updatePrefs()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1, p2}, Landroidx/preference/PreferenceFragmentCompat;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mPackages:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mPackages:Landroid/util/ArraySet;

    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    if-eqz p1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget v2, v2, Lcom/android/settingslib/AppItem;->key:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string v1, "Skipping UID because cannot find package "

    const-string v2, "AppDataUsage"

    invoke-static {v1, p1, v2}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline41(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    move v1, v0

    :goto_1
    iget-object v2, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget v2, v2, Lcom/android/settingslib/AppItem;->key:I

    if-lez v2, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    move v2, v0

    :goto_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0d0246

    invoke-virtual {v4, v5, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    invoke-static {v3, p0, p2}, Lcom/android/settings/widget/EntityHeaderController;->newInstance(Landroid/app/Activity;Landroidx/fragment/app/Fragment;Landroid/view/View;)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object p2

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v5

    invoke-virtual {p2, v4, v5}, Lcom/android/settings/widget/EntityHeaderController;->setRecyclerView(Landroidx/recyclerview/widget/RecyclerView;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object p2

    invoke-virtual {p2, v1}, Lcom/android/settings/widget/EntityHeaderController;->setUid(I)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object p2

    invoke-virtual {p2, v2}, Lcom/android/settings/widget/EntityHeaderController;->setHasAppInfoLink(Z)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object p2

    invoke-virtual {p2, v0, v0}, Lcom/android/settings/widget/EntityHeaderController;->setButtonActions(II)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object p2

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, v0}, Lcom/android/settings/widget/EntityHeaderController;->setIcon(Landroid/graphics/drawable/Drawable;)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object p2

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Lcom/android/settings/widget/EntityHeaderController;->setLabel(Ljava/lang/CharSequence;)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/settings/widget/EntityHeaderController;->setPackageName(Ljava/lang/String;)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, v3, p2}, Lcom/android/settings/widget/EntityHeaderController;->done(Landroid/app/Activity;Landroid/content/Context;)Lcom/android/settingslib/widget/LayoutPreference;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    return-void
.end method

.method public onWhitelistStatusChanged(IZ)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget-object v0, v0, Lcom/android/settingslib/AppItem;->uids:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/settings/datausage/AppDataUsage;->getAppRestrictBackground()Z

    move-result p1

    invoke-direct {p0, p1, p2}, Lcom/android/settings/datausage/AppDataUsage;->updatePrefs(ZZ)V

    :cond_0
    return-void
.end method

.method public showRestrictBackgroundDialog()V
    .locals 4

    new-instance v0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f121359

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->setTitle(I)Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->items:[Ljava/lang/String;

    iget v2, p0, Lcom/android/settings/datausage/AppDataUsage;->restrictBackgroundChooseIndex:I

    new-instance v3, Lcom/android/settings/datausage/AppDataUsage$5;

    invoke-direct {v3, p0}, Lcom/android/settings/datausage/AppDataUsage$5;-><init>(Lcom/android/settings/datausage/AppDataUsage;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    invoke-virtual {v0}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->create()Lcom/oneplus/lib/app/OPAlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method updatePrefs()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/datausage/AppDataUsage;->getAppRestrictBackground()Z

    move-result v0

    invoke-direct {p0}, Lcom/android/settings/datausage/AppDataUsage;->getUnrestrictData()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/datausage/AppDataUsage;->updatePrefs(ZZ)V

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportUss()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->updateUssPreference()V

    :cond_0
    return-void
.end method

.method public updateUssPreference()V
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget v2, v2, Lcom/android/settingslib/AppItem;->key:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfMeteredDataRestricted(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mRestrictBackgroundUss:Lcom/android/settingslib/RestrictedPreference;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lcom/android/settingslib/RestrictedPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    :cond_0
    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mUnrestrictedData:Lcom/android/settingslib/RestrictedSwitchPreference;

    if-eqz v1, :cond_2

    iget v2, p0, Lcom/android/settings/datausage/AppDataUsage;->restrictBackgroundChooseIndex:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    const/4 p0, 0x0

    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mUnrestrictedData:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-direct {p0}, Lcom/android/settings/datausage/AppDataUsage;->getUnrestrictData()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p0, p0, Lcom/android/settings/datausage/AppDataUsage;->mUnrestrictedData:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/RestrictedSwitchPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    :cond_2
    :goto_0
    return-void
.end method
