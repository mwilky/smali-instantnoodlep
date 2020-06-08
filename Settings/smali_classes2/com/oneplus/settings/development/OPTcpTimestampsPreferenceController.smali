.class public Lcom/oneplus/settings/development/OPTcpTimestampsPreferenceController;
.super Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;
.source "OPTcpTimestampsPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# static fields
.field private static final mIsH2Version:Z


# instance fields
.field private final mListSummaries:[Ljava/lang/String;

.field private final mListValues:[Ljava/lang/String;

.field private mTcpTimestampsFlag:Landroidx/preference/ListPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v1, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    sput-boolean v0, Lcom/oneplus/settings/development/OPTcpTimestampsPreferenceController;->mIsH2Version:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;-><init>(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0300f2

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/development/OPTcpTimestampsPreferenceController;->mListValues:[Ljava/lang/String;

    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0300f3

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/development/OPTcpTimestampsPreferenceController;->mListSummaries:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "op_tcp_timestamps_randomization"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/ListPreference;

    iput-object p1, p0, Lcom/oneplus/settings/development/OPTcpTimestampsPreferenceController;->mTcpTimestampsFlag:Landroidx/preference/ListPreference;

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "op_tcp_timestamps_randomization"

    return-object p0
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/development/OPTcpTimestampsPreferenceController;->mTcpTimestampsFlag:Landroidx/preference/ListPreference;

    if-ne p1, v0, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iget-object p2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, "op_tcp_timestamps_value"

    invoke-static {p2, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p2, p0, Lcom/oneplus/settings/development/OPTcpTimestampsPreferenceController;->mTcpTimestampsFlag:Landroidx/preference/ListPreference;

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/development/OPTcpTimestampsPreferenceController;->mListValues:[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-virtual {p2, v0}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/oneplus/settings/development/OPTcpTimestampsPreferenceController;->mTcpTimestampsFlag:Landroidx/preference/ListPreference;

    iget-object p0, p0, Lcom/oneplus/settings/development/OPTcpTimestampsPreferenceController;->mListSummaries:[Ljava/lang/String;

    aget-object p0, p0, p1

    invoke-virtual {p2, p0}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/settings/development/OPTcpTimestampsPreferenceController;->mTcpTimestampsFlag:Landroidx/preference/ListPreference;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-boolean v0, Lcom/oneplus/settings/development/OPTcpTimestampsPreferenceController;->mIsH2Version:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const-string v1, "op_tcp_timestamps_value"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iget-object v0, p0, Lcom/oneplus/settings/development/OPTcpTimestampsPreferenceController;->mTcpTimestampsFlag:Landroidx/preference/ListPreference;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/oneplus/settings/development/OPTcpTimestampsPreferenceController;->mListValues:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oneplus/settings/development/OPTcpTimestampsPreferenceController;->mTcpTimestampsFlag:Landroidx/preference/ListPreference;

    iget-object p0, p0, Lcom/oneplus/settings/development/OPTcpTimestampsPreferenceController;->mListSummaries:[Ljava/lang/String;

    aget-object p0, p0, p1

    invoke-virtual {v0, p0}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method
