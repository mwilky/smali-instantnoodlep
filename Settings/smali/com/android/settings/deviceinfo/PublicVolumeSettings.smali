.class public Lcom/android/settings/deviceinfo/PublicVolumeSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "PublicVolumeSettings.java"


# instance fields
.field private mDisk:Landroid/os/storage/DiskInfo;

.field private mFormatPrivate:Landroidx/preference/Preference;

.field private mFormatPublic:Landroidx/preference/Preference;

.field private mIsPermittedToAdopt:Z

.field private mMount:Landroidx/preference/Preference;

.field private final mStorageListener:Landroid/os/storage/StorageEventListener;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mSummary:Lcom/android/settings/deviceinfo/StorageSummaryPreference;

.field private mUnmount:Landroid/widget/Button;

.field private final mUnmountListener:Landroid/view/View$OnClickListener;

.field private mVolume:Landroid/os/storage/VolumeInfo;

.field private mVolumeId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Lcom/android/settings/deviceinfo/PublicVolumeSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/PublicVolumeSettings$1;-><init>(Lcom/android/settings/deviceinfo/PublicVolumeSettings;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mUnmountListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/settings/deviceinfo/PublicVolumeSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/PublicVolumeSettings$2;-><init>(Lcom/android/settings/deviceinfo/PublicVolumeSettings;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mStorageListener:Landroid/os/storage/StorageEventListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/deviceinfo/PublicVolumeSettings;)Landroid/os/storage/VolumeInfo;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    return-object p0
.end method

.method static synthetic access$002(Lcom/android/settings/deviceinfo/PublicVolumeSettings;Landroid/os/storage/VolumeInfo;)Landroid/os/storage/VolumeInfo;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settings/deviceinfo/PublicVolumeSettings;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mVolumeId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settings/deviceinfo/PublicVolumeSettings;)Landroid/os/storage/StorageManager;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    return-object p0
.end method

.method private addPreference(Landroidx/preference/Preference;)V
    .locals 1

    const v0, 0x7fffffff

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOrder(I)V

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    return-void
.end method

.method private buildAction(I)Landroidx/preference/Preference;
    .locals 2

    new-instance v0, Landroidx/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setTitle(I)V

    return-object v0
.end method

.method private isVolumeValid()Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {p0}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x2a

    return p0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->isVolumeValid()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070625

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getButtonBar()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {v0, p1, p1, p1, p1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    iget-object p0, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mUnmount:Landroid/widget/Button;

    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {p1, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mIsPermittedToAdopt:Z

    const-class v0, Landroid/os/storage/StorageManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/storage/StorageManager;

    iput-object p1, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.provider.action.DOCUMENT_ROOT_SETTINGS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-static {p1}, Landroid/provider/DocumentsContract;->getRootId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v0, p1}, Landroid/os/storage/StorageManager;->findVolumeByUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "android.os.storage.extra.VOLUME_ID"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v0, p1}, Landroid/os/storage/StorageManager;->findVolumeById(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->isVolumeValid()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_3
    iget-object p1, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v0, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getDiskId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/storage/StorageManager;->findDiskById(Ljava/lang/String;)Landroid/os/storage/DiskInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mDisk:Landroid/os/storage/DiskInfo;

    iget-object p1, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mDisk:Landroid/os/storage/DiskInfo;

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mVolumeId:Ljava/lang/String;

    const p1, 0x7f160051

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    new-instance p1, Lcom/android/settings/deviceinfo/StorageSummaryPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/settings/deviceinfo/StorageSummaryPreference;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mSummary:Lcom/android/settings/deviceinfo/StorageSummaryPreference;

    const p1, 0x7f1215b7

    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->buildAction(I)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mMount:Landroidx/preference/Preference;

    new-instance p1, Landroid/widget/Button;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mUnmount:Landroid/widget/Button;

    iget-object p1, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mUnmount:Landroid/widget/Button;

    const v0, 0x7f1215ba

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    iget-object p1, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mUnmount:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mUnmountListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f1215b1

    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->buildAction(I)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mFormatPublic:Landroidx/preference/Preference;

    iget-boolean p1, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mIsPermittedToAdopt:Z

    if-eqz p1, :cond_4

    const p1, 0x7f1215b2

    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->buildAction(I)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mFormatPrivate:Landroidx/preference/Preference;

    :cond_4
    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object p0, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, p0}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    return-void
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mMount:Landroidx/preference/Preference;

    if-ne p1, v0, :cond_0

    new-instance v0, Lcom/android/settings/deviceinfo/StorageSettings$MountTask;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/StorageSettings$MountTask;-><init>(Landroid/content/Context;Landroid/os/storage/VolumeInfo;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mFormatPublic:Landroidx/preference/Preference;

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mDisk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v1}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/deviceinfo/StorageWizardFormatConfirm;->showPublic(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mFormatPrivate:Landroidx/preference/Preference;

    if-ne p1, v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mDisk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v1}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/deviceinfo/StorageWizardFormatConfirm;->showPrivate(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)V

    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    iget-object v0, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mVolumeId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->findVolumeById(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-direct {p0}, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->isVolumeValid()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->update()V

    return-void
.end method

.method public update()V
    .locals 11

    invoke-direct {p0}, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->isVolumeValid()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v1, v2}, Landroid/os/storage/StorageManager;->getBestVolumeDescription(Landroid/os/storage/VolumeInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/preference/PreferenceGroup;->removeAll()V

    iget-object v1, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mSummary:Lcom/android/settings/deviceinfo/StorageSummaryPreference;

    invoke-direct {p0, v1}, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->addPreference(Landroidx/preference/Preference;)V

    iget-object v1, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v3

    invoke-virtual {v1}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v5

    sub-long v5, v3, v5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v5, v6, v2}, Landroid/text/format/Formatter;->formatBytes(Landroid/content/res/Resources;JI)Landroid/text/format/Formatter$BytesResult;

    move-result-object v1

    iget-object v7, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mSummary:Lcom/android/settings/deviceinfo/StorageSummaryPreference;

    const v8, 0x7f1215c8

    invoke-virtual {p0, v8}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/CharSequence;

    iget-object v10, v1, Landroid/text/format/Formatter$BytesResult;->value:Ljava/lang/String;

    aput-object v10, v9, v2

    iget-object v1, v1, Landroid/text/format/Formatter$BytesResult;->units:Ljava/lang/String;

    const/4 v10, 0x1

    aput-object v1, v9, v10

    invoke-static {v8, v9}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mSummary:Lcom/android/settings/deviceinfo/StorageSummaryPreference;

    const v7, 0x7f1215d6

    new-array v8, v10, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/oneplus/settings/utils/OPUtils;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v8, v2

    invoke-virtual {p0, v7, v8}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mSummary:Lcom/android/settings/deviceinfo/StorageSummaryPreference;

    invoke-virtual {v0, v5, v6, v3, v4}, Lcom/android/settings/deviceinfo/StorageSummaryPreference;->setPercent(JJ)V

    :cond_1
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mMount:Landroidx/preference/Preference;

    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->addPreference(Landroidx/preference/Preference;)V

    :cond_2
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getButtonBar()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_3
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mFormatPublic:Landroidx/preference/Preference;

    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->addPreference(Landroidx/preference/Preference;)V

    iget-object v0, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mDisk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v0}, Landroid/os/storage/DiskInfo;->isAdoptable()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mIsPermittedToAdopt:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mFormatPrivate:Landroidx/preference/Preference;

    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->addPreference(Landroidx/preference/Preference;)V

    :cond_4
    return-void
.end method
