.class public Lcom/android/settings/network/ApnEditor;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ApnEditor.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/network/ApnEditor$ApnData;,
        Lcom/android/settings/network/ApnEditor$ErrorDialog;
    }
.end annotation


# static fields
.field static final APN_INDEX:I = 0x2

.field static final CARRIER_ENABLED_INDEX:I = 0x11

.field static final MCC_INDEX:I = 0x9

.field static final MNC_INDEX:I = 0xa

.field static final NAME_INDEX:I = 0x1

.field static sNotSet:Ljava/lang/String;

.field private static final sProjection:[Ljava/lang/String;

.field private static final sUIConfigurableItems:[Ljava/lang/String;


# instance fields
.field private ACTION_FROM:Ljava/lang/String;

.field private ACTION_IS_DATA_CHANGED:Ljava/lang/String;

.field mApn:Landroidx/preference/EditTextPreference;

.field mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

.field mApnType:Landroidx/preference/EditTextPreference;

.field mAuthType:Landroidx/preference/ListPreference;

.field private mBearerInitialVal:I

.field mBearerMulti:Landroidx/preference/MultiSelectListPreference;

.field mCarrierEnabled:Landroidx/preference/SwitchPreference;

.field private mCarrierUri:Landroid/net/Uri;

.field private mCurMcc:Ljava/lang/String;

.field private mCurMnc:Ljava/lang/String;

.field private mDeletableApn:Z

.field private mIsFromHM:Z

.field private mIsPreferenceChanged:Z

.field mMcc:Landroidx/preference/EditTextPreference;

.field mMmsPort:Landroidx/preference/EditTextPreference;

.field mMmsProxy:Landroidx/preference/EditTextPreference;

.field mMmsc:Landroidx/preference/EditTextPreference;

.field mMnc:Landroidx/preference/EditTextPreference;

.field mMvnoMatchData:Landroidx/preference/EditTextPreference;

.field private mMvnoMatchDataStr:Ljava/lang/String;

.field mMvnoType:Landroidx/preference/ListPreference;

.field mName:Landroidx/preference/EditTextPreference;

.field private mNewApn:Z

.field mPassword:Landroidx/preference/EditTextPreference;

.field mPort:Landroidx/preference/EditTextPreference;

.field mProtocol:Landroidx/preference/ListPreference;

.field mProxy:Landroidx/preference/EditTextPreference;

.field private mReadOnlyApn:Z

.field private mReadOnlyApnFields:[Ljava/lang/String;

.field private mReadOnlyApnTypes:[Ljava/lang/String;

.field mRoamingProtocol:Landroidx/preference/ListPreference;

.field mServer:Landroidx/preference/EditTextPreference;

.field private mSubId:I

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field mUser:Landroidx/preference/EditTextPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 27

    const-string v0, "_id"

    const-string v1, "name"

    const-string v2, "apn"

    const-string v3, "proxy"

    const-string v4, "port"

    const-string v5, "user"

    const-string v6, "server"

    const-string v7, "password"

    const-string v8, "mmsc"

    const-string v9, "mcc"

    const-string v10, "mnc"

    const-string v11, "numeric"

    const-string v12, "mmsproxy"

    const-string v13, "mmsport"

    const-string v14, "authtype"

    const-string v15, "type"

    const-string v16, "protocol"

    const-string v17, "carrier_enabled"

    const-string v18, "bearer"

    const-string v19, "bearer_bitmask"

    const-string v20, "roaming_protocol"

    const-string v21, "mvno_type"

    const-string v22, "mvno_match_data"

    const-string v23, "edited"

    const-string v24, "user_editable"

    const-string v25, "persistent"

    const-string v26, "read_only"

    filled-new-array/range {v0 .. v26}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/network/ApnEditor;->sProjection:[Ljava/lang/String;

    const-string v1, "name"

    const-string v2, "apn"

    const-string v3, "proxy"

    const-string v4, "port"

    const-string v5, "user"

    const-string v6, "server"

    const-string v7, "password"

    const-string v8, "mmsc"

    const-string v9, "mmsproxy"

    const-string v10, "mmsport"

    const-string v11, "authtype"

    const-string v12, "type"

    const-string v13, "protocol"

    const-string v14, "carrier_enabled"

    const-string v15, "bearer"

    const-string v16, "bearer_bitmask"

    const-string v17, "roaming_protocol"

    filled-new-array/range {v1 .. v17}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/network/ApnEditor;->sUIConfigurableItems:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/network/ApnEditor;->mBearerInitialVal:I

    iput-boolean v0, p0, Lcom/android/settings/network/ApnEditor;->mIsFromHM:Z

    iput-boolean v0, p0, Lcom/android/settings/network/ApnEditor;->mIsPreferenceChanged:Z

    const-string v0, "isFromHM"

    iput-object v0, p0, Lcom/android/settings/network/ApnEditor;->ACTION_FROM:Ljava/lang/String;

    const-string v0, "isDataChanged"

    iput-object v0, p0, Lcom/android/settings/network/ApnEditor;->ACTION_IS_DATA_CHANGED:Ljava/lang/String;

    return-void
.end method

.method private apnEditorFinish()V
    .locals 3

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportUss()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/network/ApnEditor;->mIsFromHM:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/android/settings/network/ApnEditor;->ACTION_IS_DATA_CHANGED:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/android/settings/network/ApnEditor;->mIsPreferenceChanged:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/SettingsPreferenceFragment;->setResult(ILandroid/content/Intent;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void
.end method

.method private apnTypesMatch([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    invoke-static {p1}, Lcom/android/settings/network/ApnEditor;->hasAllApns([Ljava/lang/String;)Z

    move-result p0

    const/4 v1, 0x1

    if-nez p0, :cond_4

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    const-string p1, ","

    invoke-virtual {p2, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length p2, p1

    move v2, v0

    :goto_0
    const-string v3, "ApnEditor"

    if-ge v2, p2, :cond_3

    aget-object v4, p1, v2

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string p0, "apnTypesMatch: true because match found for "

    invoke-static {p0}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline23(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const-string p0, "apnTypesMatch: false"

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_4
    :goto_1
    return v1
.end method

.method private bearerMultiDescription(Ljava/util/Set;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03001d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x1

    :catch_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/network/ApnEditor;->mBearerMulti:Landroidx/preference/MultiSelectListPreference;

    invoke-virtual {v4, v3}, Landroidx/preference/MultiSelectListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v3

    if-eqz v2, :cond_0

    :try_start_0
    aget-object v3, v0, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v0, v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private checkNotSet(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/android/settings/network/ApnEditor;->sNotSet:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    :cond_0
    return-object p1
.end method

.method private checkNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p1, Lcom/android/settings/network/ApnEditor;->sNotSet:Ljava/lang/String;

    :cond_0
    return-object p1
.end method

.method private deleteApn()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    invoke-virtual {v0}, Lcom/android/settings/network/ApnEditor$ApnData;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    invoke-virtual {v1}, Lcom/android/settings/network/ApnEditor$ApnData;->getUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    new-instance v0, Lcom/android/settings/network/ApnEditor$ApnData;

    sget-object v1, Lcom/android/settings/network/ApnEditor;->sProjection:[Ljava/lang/String;

    array-length v1, v1

    invoke-direct {v0, v1}, Lcom/android/settings/network/ApnEditor$ApnData;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    :cond_0
    return-void
.end method

.method private disableAllFields()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mName:Landroidx/preference/EditTextPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mApn:Landroidx/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mProxy:Landroidx/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mPort:Landroidx/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mUser:Landroidx/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mServer:Landroidx/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mPassword:Landroidx/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mMmsProxy:Landroidx/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mMmsPort:Landroidx/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mMmsc:Landroidx/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mMcc:Landroidx/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mMnc:Landroidx/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mApnType:Landroidx/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mAuthType:Landroidx/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mProtocol:Landroidx/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mRoamingProtocol:Landroidx/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mCarrierEnabled:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mBearerMulti:Landroidx/preference/MultiSelectListPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mMvnoType:Landroidx/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object p0, p0, Lcom/android/settings/network/ApnEditor;->mMvnoMatchData:Landroidx/preference/EditTextPreference;

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method

.method static formatInteger(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const-string v1, "%02d"

    goto :goto_0

    :cond_0
    const-string v1, "%03d"

    :goto_0
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object p0
.end method

.method private getUserEnteredApnType()Ljava/lang/String;
    .locals 8

    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mApnType:Landroidx/preference/EditTextPreference;

    invoke-virtual {v0}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "*"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_1
    iget-object v1, p0, Lcom/android/settings/network/ApnEditor;->mReadOnlyApnTypes:[Ljava/lang/String;

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/android/settings/network/ApnEditor;->mReadOnlyApnTypes:[Ljava/lang/String;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants;->APN_TYPES:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    move v5, v4

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_4

    aget-object v6, v1, v4

    invoke-interface {p0, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "ia"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "emergency"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "mcx"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    if-eqz v5, :cond_2

    move v5, v3

    goto :goto_1

    :cond_2
    const-string v7, ","

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string p0, "getUserEnteredApnType: changed apn type to editable apn types: "

    const-string v1, "ApnEditor"

    invoke-static {p0, v0, v1}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline40(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-object v0
.end method

.method static hasAllApns([Ljava/lang/String;)Z
    .locals 7

    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    const-string v0, "*"

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "ApnEditor"

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    const-string p0, "hasAllApns: true because apnList.contains(PhoneConstants.APN_TYPE_ALL)"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants;->APN_TYPES:[Ljava/lang/String;

    array-length v4, v0

    move v5, v1

    :goto_0
    if-ge v5, v4, :cond_3

    aget-object v6, v0, v5

    invoke-interface {p0, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    return v1

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    const-string p0, "hasAllApns: true"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method private isSprintMccMnc(Ljava/lang/String;)Z
    .locals 1

    const/4 p0, 0x0

    if-eqz p1, :cond_1

    const-string v0, "310120"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "311870"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "311490"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "312530"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "310000"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p0, 0x1

    :cond_1
    return p0
.end method

.method private mvnoDescription(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mMvnoType:Landroidx/preference/ListPreference;

    invoke-virtual {v0, p1}, Landroidx/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/network/ApnEditor;->mMvnoType:Landroidx/preference/ListPreference;

    invoke-virtual {v1}, Landroidx/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    return-object v2

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f03009a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/settings/network/ApnEditor;->mReadOnlyApn:Z

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/settings/network/ApnEditor;->mReadOnlyApnFields:[Ljava/lang/String;

    if-eqz v4, :cond_1

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const-string v7, "mvno_match_data"

    invoke-interface {v4, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    move v4, v5

    goto :goto_1

    :cond_2
    :goto_0
    move v4, v6

    :goto_1
    iget-object v7, p0, Lcom/android/settings/network/ApnEditor;->mMvnoMatchData:Landroidx/preference/EditTextPreference;

    if-nez v4, :cond_3

    if-eqz v0, :cond_3

    move v5, v6

    :cond_3
    invoke-virtual {v7, v5}, Landroidx/preference/Preference;->setEnabled(Z)V

    if-eqz p1, :cond_8

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    aget-object p1, v3, v0

    const-string v1, "SPN"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->mMvnoMatchData:Landroidx/preference/EditTextPreference;

    iget-object p0, p0, Lcom/android/settings/network/ApnEditor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_4
    aget-object p1, v3, v0

    const-string v1, "IMSI"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v1, p0, Lcom/android/settings/network/ApnEditor;->mSubId:I

    invoke-virtual {p1, v1}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportUss()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-direct {p0, p1}, Lcom/android/settings/network/ApnEditor;->isSprintMccMnc(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object p1

    :cond_5
    iget-object p0, p0, Lcom/android/settings/network/ApnEditor;->mMvnoMatchData:Landroidx/preference/EditTextPreference;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "x"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    aget-object p1, v3, v0

    const-string v1, "GID"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->mMvnoMatchData:Landroidx/preference/EditTextPreference;

    iget-object p0, p0, Lcom/android/settings/network/ApnEditor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getGroupIdLevel1()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    aget-object p1, v3, v0

    const-string v1, "ICCID"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->mMvnoMatchDataStr:Ljava/lang/String;

    if-eqz p1, :cond_8

    const-string p1, "mMvnoMatchDataStr: "

    invoke-static {p1}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline23(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lcom/android/settings/network/ApnEditor;->mMvnoMatchDataStr:Ljava/lang/String;

    const-string v4, "ApnEditor"

    invoke-static {p1, v1, v4}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline45(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->mMvnoMatchData:Landroidx/preference/EditTextPreference;

    iget-object p0, p0, Lcom/android/settings/network/ApnEditor;->mMvnoMatchDataStr:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    :cond_8
    :goto_2
    :try_start_0
    aget-object p0, v3, v0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v2
.end method

.method private protocolDescription(Ljava/lang/String;Landroidx/preference/ListPreference;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p2, p1}, Landroidx/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-object p2

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f030007

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    :try_start_0
    aget-object p0, p0, p1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object p2
.end method

.method private starify(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    new-array p0, p0, [C

    const/4 p1, 0x0

    :goto_0
    array-length v0, p0

    if-ge p1, v0, :cond_1

    const/16 v0, 0x2a

    aput-char v0, p0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([C)V

    return-object p1

    :cond_2
    :goto_1
    sget-object p0, Lcom/android/settings/network/ApnEditor;->sNotSet:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method fillUI(Z)V
    .locals 8

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "default"

    const/4 v3, 0x1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->mName:Landroidx/preference/EditTextPreference;

    iget-object v4, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    invoke-virtual {v4, v3}, Lcom/android/settings/network/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->mApn:Landroidx/preference/EditTextPreference;

    iget-object v4, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/android/settings/network/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->mProxy:Landroidx/preference/EditTextPreference;

    iget-object v4, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/android/settings/network/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->mPort:Landroidx/preference/EditTextPreference;

    iget-object v4, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    const/4 v6, 0x4

    invoke-virtual {v4, v6}, Lcom/android/settings/network/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->mUser:Landroidx/preference/EditTextPreference;

    iget-object v4, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    const/4 v7, 0x5

    invoke-virtual {v4, v7}, Lcom/android/settings/network/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->mServer:Landroidx/preference/EditTextPreference;

    iget-object v4, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    const/4 v7, 0x6

    invoke-virtual {v4, v7}, Lcom/android/settings/network/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->mPassword:Landroidx/preference/EditTextPreference;

    iget-object v4, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    const/4 v7, 0x7

    invoke-virtual {v4, v7}, Lcom/android/settings/network/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->mMmsProxy:Landroidx/preference/EditTextPreference;

    iget-object v4, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    const/16 v7, 0xc

    invoke-virtual {v4, v7}, Lcom/android/settings/network/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->mMmsPort:Landroidx/preference/EditTextPreference;

    iget-object v4, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    const/16 v7, 0xd

    invoke-virtual {v4, v7}, Lcom/android/settings/network/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->mMmsc:Landroidx/preference/EditTextPreference;

    iget-object v4, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    const/16 v7, 0x8

    invoke-virtual {v4, v7}, Lcom/android/settings/network/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->mMcc:Landroidx/preference/EditTextPreference;

    iget-object v4, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    const/16 v7, 0x9

    invoke-virtual {v4, v7}, Lcom/android/settings/network/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->mMnc:Landroidx/preference/EditTextPreference;

    iget-object v4, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    const/16 v7, 0xa

    invoke-virtual {v4, v7}, Lcom/android/settings/network/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->mApnType:Landroidx/preference/EditTextPreference;

    iget-object v4, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    const/16 v7, 0xf

    invoke-virtual {v4, v7}, Lcom/android/settings/network/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/settings/network/ApnEditor;->mNewApn:Z

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/android/settings/network/ApnEditor;->mSubId:I

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result p1

    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getOperatorNumeric()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportUss()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0, p1}, Lcom/android/settings/network/ApnEditor;->isSprintMccMnc(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object p1

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v6, :cond_1

    invoke-virtual {p1, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iget-object v5, p0, Lcom/android/settings/network/ApnEditor;->mMcc:Landroidx/preference/EditTextPreference;

    invoke-virtual {v5, v4}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/settings/network/ApnEditor;->mMnc:Landroidx/preference/EditTextPreference;

    invoke-virtual {v5, p1}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/settings/network/ApnEditor;->mCurMnc:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/settings/network/ApnEditor;->mCurMcc:Ljava/lang/String;

    :cond_1
    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->mApnType:Landroidx/preference/EditTextPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    :cond_2
    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    const/16 v4, 0xe

    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p1, v4, v6}, Lcom/android/settings/network/ApnEditor$ApnData;->getInteger(ILjava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eq p1, v5, :cond_3

    iget-object v4, p0, Lcom/android/settings/network/ApnEditor;->mAuthType:Landroidx/preference/ListPreference;

    invoke-virtual {v4, p1}, Landroidx/preference/ListPreference;->setValueIndex(I)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->mAuthType:Landroidx/preference/ListPreference;

    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->mProtocol:Landroidx/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    const/16 v5, 0x10

    invoke-virtual {v4, v5}, Lcom/android/settings/network/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->mRoamingProtocol:Landroidx/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    const/16 v5, 0x14

    invoke-virtual {v4, v5}, Lcom/android/settings/network/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->mCarrierEnabled:Landroidx/preference/SwitchPreference;

    iget-object v4, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    const/16 v5, 0x11

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/settings/network/ApnEditor$ApnData;->getInteger(ILjava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v3, :cond_4

    move v4, v3

    goto :goto_1

    :cond_4
    move v4, v0

    :goto_1
    invoke-virtual {p1, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    const/16 v4, 0x12

    invoke-virtual {p1, v4, v1}, Lcom/android/settings/network/ApnEditor$ApnData;->getInteger(ILjava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/settings/network/ApnEditor;->mBearerInitialVal:I

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iget-object v4, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    const/16 v5, 0x13

    invoke-virtual {v4, v5, v1}, Lcom/android/settings/network/ApnEditor$ApnData;->getInteger(ILjava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v4, ""

    if-nez v1, :cond_5

    iget v1, p0, Lcom/android/settings/network/ApnEditor;->mBearerInitialVal:I

    if-nez v1, :cond_7

    const-string v1, "0"

    invoke-virtual {p1, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    move v5, v3

    :goto_2
    if-eqz v1, :cond_7

    and-int/lit8 v6, v1, 0x1

    if-ne v6, v3, :cond_6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_6
    shr-int/lit8 v1, v1, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_7
    :goto_3
    iget v1, p0, Lcom/android/settings/network/ApnEditor;->mBearerInitialVal:I

    if-eqz v1, :cond_8

    invoke-static {v4}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline23(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, p0, Lcom/android/settings/network/ApnEditor;->mBearerInitialVal:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    invoke-static {v4}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline23(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/android/settings/network/ApnEditor;->mBearerInitialVal:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_8
    iget-object v1, p0, Lcom/android/settings/network/ApnEditor;->mBearerMulti:Landroidx/preference/MultiSelectListPreference;

    invoke-virtual {v1, p1}, Landroidx/preference/MultiSelectListPreference;->setValues(Ljava/util/Set;)V

    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->mMvnoType:Landroidx/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    const/16 v4, 0x15

    invoke-virtual {v1, v4}, Lcom/android/settings/network/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->mMvnoMatchData:Landroidx/preference/EditTextPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->mMvnoMatchData:Landroidx/preference/EditTextPreference;

    iget-object v1, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    const/16 v4, 0x16

    invoke-virtual {v1, v4}, Lcom/android/settings/network/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v1, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    invoke-virtual {v1, v3}, Lcom/android/settings/network/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/settings/Utils;->getLocalizedName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/android/settings/network/ApnEditor;->mName:Landroidx/preference/EditTextPreference;

    invoke-virtual {v1, p1}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    :cond_9
    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->mName:Landroidx/preference/EditTextPreference;

    invoke-virtual {p1}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/network/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->mApn:Landroidx/preference/EditTextPreference;

    invoke-virtual {p1}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/network/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->mProxy:Landroidx/preference/EditTextPreference;

    invoke-virtual {p1}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/network/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->mPort:Landroidx/preference/EditTextPreference;

    invoke-virtual {p1}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/network/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->mUser:Landroidx/preference/EditTextPreference;

    invoke-virtual {p1}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/network/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->mServer:Landroidx/preference/EditTextPreference;

    invoke-virtual {p1}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/network/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->mPassword:Landroidx/preference/EditTextPreference;

    invoke-virtual {p1}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/network/ApnEditor;->starify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->mMmsProxy:Landroidx/preference/EditTextPreference;

    invoke-virtual {p1}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/network/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->mMmsPort:Landroidx/preference/EditTextPreference;

    invoke-virtual {p1}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/network/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->mMmsc:Landroidx/preference/EditTextPreference;

    invoke-virtual {p1}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/network/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->mMcc:Landroidx/preference/EditTextPreference;

    invoke-virtual {p1}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/network/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/network/ApnEditor;->formatInteger(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->mMnc:Landroidx/preference/EditTextPreference;

    invoke-virtual {p1}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/network/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/network/ApnEditor;->formatInteger(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->mApnType:Landroidx/preference/EditTextPreference;

    invoke-virtual {p1}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_b

    :cond_a
    move-object v1, v2

    :cond_b
    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->mAuthType:Landroidx/preference/ListPreference;

    invoke-virtual {p1}, Landroidx/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_c

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iget-object v1, p0, Lcom/android/settings/network/ApnEditor;->mAuthType:Landroidx/preference/ListPreference;

    invoke-virtual {v1, p1}, Landroidx/preference/ListPreference;->setValueIndex(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f030005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/network/ApnEditor;->mAuthType:Landroidx/preference/ListPreference;

    aget-object p1, v1, p1

    invoke-virtual {v2, p1}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_c
    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->mAuthType:Landroidx/preference/ListPreference;

    sget-object v1, Lcom/android/settings/network/ApnEditor;->sNotSet:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_4
    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->mProtocol:Landroidx/preference/ListPreference;

    invoke-virtual {p1}, Landroidx/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/network/ApnEditor;->mProtocol:Landroidx/preference/ListPreference;

    invoke-direct {p0, v1, v2}, Lcom/android/settings/network/ApnEditor;->protocolDescription(Ljava/lang/String;Landroidx/preference/ListPreference;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/network/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->mRoamingProtocol:Landroidx/preference/ListPreference;

    invoke-virtual {p1}, Landroidx/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/network/ApnEditor;->mRoamingProtocol:Landroidx/preference/ListPreference;

    invoke-direct {p0, v1, v2}, Lcom/android/settings/network/ApnEditor;->protocolDescription(Ljava/lang/String;Landroidx/preference/ListPreference;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/network/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->mBearerMulti:Landroidx/preference/MultiSelectListPreference;

    invoke-virtual {p1}, Landroidx/preference/MultiSelectListPreference;->getValues()Ljava/util/Set;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/network/ApnEditor;->bearerMultiDescription(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/network/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->mMvnoType:Landroidx/preference/ListPreference;

    invoke-virtual {p1}, Landroidx/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/network/ApnEditor;->mvnoDescription(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/network/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->mMvnoMatchData:Landroidx/preference/EditTextPreference;

    invoke-virtual {p1}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/network/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f050007

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p0, p0, Lcom/android/settings/network/ApnEditor;->mCarrierEnabled:Landroidx/preference/SwitchPreference;

    invoke-virtual {p0, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_5

    :cond_d
    iget-object p0, p0, Lcom/android/settings/network/ApnEditor;->mCarrierEnabled:Landroidx/preference/SwitchPreference;

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    :goto_5
    return-void
.end method

.method getApnDataFromUri(Landroid/net/Uri;)Lcom/android/settings/network/ApnEditor$ApnData;
    .locals 8

    const-string v0, "ApnEditor"

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/android/settings/network/ApnEditor;->sProjection:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    new-instance v2, Lcom/android/settings/network/ApnEditor$ApnData;

    invoke-direct {v2, p1, p0}, Lcom/android/settings/network/ApnEditor$ApnData;-><init>(Landroid/net/Uri;Landroid/database/Cursor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v3

    :try_start_3
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p0

    :try_start_4
    invoke-virtual {v2, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v3

    :cond_0
    move-object v2, v1

    :goto_1
    if-eqz p0, :cond_1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :cond_1
    move-object v1, v2

    goto :goto_2

    :catch_0
    move-exception p0

    const-string v2, "getApnDataFromUri exception"

    invoke-static {v2, p0, v0}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline35(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    :goto_2
    if-nez v1, :cond_2

    const-string p0, "Can\'t get apnData from Uri "

    invoke-static {p0, p1, v0}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline35(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    return-object v1
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0xd

    return p0
.end method

.method public synthetic lambda$updateApnDataToDatabase$0$ApnEditor(Landroid/net/Uri;Landroid/content/ContentValues;)V
    .locals 2

    const-string v0, "ApnEditor"

    const-string v1, "postOnBackgroundThread updateApnDataToDatabase start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/network/ApnEditor;->mCarrierUri:Landroid/net/Uri;

    invoke-virtual {p1, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v1, p0, Lcom/android/settings/network/ApnEditor;->mCarrierUri:Landroid/net/Uri;

    invoke-virtual {p1, v1, p2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, "Can\'t add a new apn to database "

    invoke-static {p1}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline23(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/network/ApnEditor;->mCarrierUri:Landroid/net/Uri;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_1
    :goto_0
    const-string p0, "postOnBackgroundThread updateApnDataToDatabase end"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 16

    move-object/from16 v0, p0

    invoke-super/range {p0 .. p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v1, 0x7f160013

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120165

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/settings/network/ApnEditor;->sNotSet:Ljava/lang/String;

    const-string v1, "apn_name"

    invoke-virtual {v0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/EditTextPreference;

    iput-object v1, v0, Lcom/android/settings/network/ApnEditor;->mName:Landroidx/preference/EditTextPreference;

    const-string v1, "apn_apn"

    invoke-virtual {v0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/EditTextPreference;

    iput-object v1, v0, Lcom/android/settings/network/ApnEditor;->mApn:Landroidx/preference/EditTextPreference;

    const-string v1, "apn_http_proxy"

    invoke-virtual {v0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/EditTextPreference;

    iput-object v1, v0, Lcom/android/settings/network/ApnEditor;->mProxy:Landroidx/preference/EditTextPreference;

    const-string v1, "apn_http_port"

    invoke-virtual {v0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/EditTextPreference;

    iput-object v1, v0, Lcom/android/settings/network/ApnEditor;->mPort:Landroidx/preference/EditTextPreference;

    const-string v1, "apn_user"

    invoke-virtual {v0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/EditTextPreference;

    iput-object v1, v0, Lcom/android/settings/network/ApnEditor;->mUser:Landroidx/preference/EditTextPreference;

    const-string v1, "apn_server"

    invoke-virtual {v0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/EditTextPreference;

    iput-object v1, v0, Lcom/android/settings/network/ApnEditor;->mServer:Landroidx/preference/EditTextPreference;

    const-string v1, "apn_password"

    invoke-virtual {v0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/EditTextPreference;

    iput-object v1, v0, Lcom/android/settings/network/ApnEditor;->mPassword:Landroidx/preference/EditTextPreference;

    const-string v1, "apn_mms_proxy"

    invoke-virtual {v0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/EditTextPreference;

    iput-object v1, v0, Lcom/android/settings/network/ApnEditor;->mMmsProxy:Landroidx/preference/EditTextPreference;

    const-string v1, "apn_mms_port"

    invoke-virtual {v0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/EditTextPreference;

    iput-object v1, v0, Lcom/android/settings/network/ApnEditor;->mMmsPort:Landroidx/preference/EditTextPreference;

    const-string v1, "apn_mmsc"

    invoke-virtual {v0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/EditTextPreference;

    iput-object v1, v0, Lcom/android/settings/network/ApnEditor;->mMmsc:Landroidx/preference/EditTextPreference;

    const-string v1, "apn_mcc"

    invoke-virtual {v0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/EditTextPreference;

    iput-object v1, v0, Lcom/android/settings/network/ApnEditor;->mMcc:Landroidx/preference/EditTextPreference;

    const-string v1, "apn_mnc"

    invoke-virtual {v0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/EditTextPreference;

    iput-object v1, v0, Lcom/android/settings/network/ApnEditor;->mMnc:Landroidx/preference/EditTextPreference;

    const-string v1, "apn_type"

    invoke-virtual {v0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/EditTextPreference;

    iput-object v1, v0, Lcom/android/settings/network/ApnEditor;->mApnType:Landroidx/preference/EditTextPreference;

    const-string v1, "auth_type"

    invoke-virtual {v0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/ListPreference;

    iput-object v1, v0, Lcom/android/settings/network/ApnEditor;->mAuthType:Landroidx/preference/ListPreference;

    const-string v1, "apn_protocol"

    invoke-virtual {v0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/ListPreference;

    iput-object v1, v0, Lcom/android/settings/network/ApnEditor;->mProtocol:Landroidx/preference/ListPreference;

    const-string v1, "apn_roaming_protocol"

    invoke-virtual {v0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/ListPreference;

    iput-object v1, v0, Lcom/android/settings/network/ApnEditor;->mRoamingProtocol:Landroidx/preference/ListPreference;

    const-string v1, "carrier_enabled"

    invoke-virtual {v0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Landroidx/preference/SwitchPreference;

    iput-object v2, v0, Lcom/android/settings/network/ApnEditor;->mCarrierEnabled:Landroidx/preference/SwitchPreference;

    const-string v2, "bearer_multi"

    invoke-virtual {v0, v2}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Landroidx/preference/MultiSelectListPreference;

    iput-object v2, v0, Lcom/android/settings/network/ApnEditor;->mBearerMulti:Landroidx/preference/MultiSelectListPreference;

    iget-object v2, v0, Lcom/android/settings/network/ApnEditor;->mBearerMulti:Landroidx/preference/MultiSelectListPreference;

    const v3, 0x7f120648

    invoke-virtual {v2, v3}, Landroidx/preference/DialogPreference;->setPositiveButtonText(I)V

    iget-object v2, v0, Lcom/android/settings/network/ApnEditor;->mBearerMulti:Landroidx/preference/MultiSelectListPreference;

    const v3, 0x7f120643

    invoke-virtual {v2, v3}, Landroidx/preference/DialogPreference;->setNegativeButtonText(I)V

    const-string v2, "mvno_type"

    invoke-virtual {v0, v2}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Landroidx/preference/ListPreference;

    iput-object v3, v0, Lcom/android/settings/network/ApnEditor;->mMvnoType:Landroidx/preference/ListPreference;

    const-string v3, "mvno_match_data"

    invoke-virtual {v0, v3}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    check-cast v4, Landroidx/preference/EditTextPreference;

    iput-object v4, v0, Lcom/android/settings/network/ApnEditor;->mMvnoMatchData:Landroidx/preference/EditTextPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsPreferenceFragment;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void

    :cond_0
    const/4 v6, -0x1

    const-string v7, "sub_id"

    invoke-virtual {v4, v7, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iput v6, v0, Lcom/android/settings/network/ApnEditor;->mSubId:I

    const/4 v6, 0x0

    iput-boolean v6, v0, Lcom/android/settings/network/ApnEditor;->mReadOnlyApn:Z

    const/4 v7, 0x0

    iput-object v7, v0, Lcom/android/settings/network/ApnEditor;->mReadOnlyApnTypes:[Ljava/lang/String;

    iput-object v7, v0, Lcom/android/settings/network/ApnEditor;->mReadOnlyApnFields:[Ljava/lang/String;

    const-string v8, "carrier_config"

    invoke-virtual {v0, v8}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/telephony/CarrierConfigManager;

    const-string v10, "ApnEditor"

    if-eqz v9, :cond_2

    iget v11, v0, Lcom/android/settings/network/ApnEditor;->mSubId:I

    invoke-virtual {v9, v11}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v9

    if-eqz v9, :cond_2

    const-string v11, "read_only_apn_types_string_array"

    invoke-virtual {v9, v11}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    iput-object v11, v0, Lcom/android/settings/network/ApnEditor;->mReadOnlyApnTypes:[Ljava/lang/String;

    iget-object v11, v0, Lcom/android/settings/network/ApnEditor;->mReadOnlyApnTypes:[Ljava/lang/String;

    invoke-static {v11}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    iget-object v11, v0, Lcom/android/settings/network/ApnEditor;->mReadOnlyApnTypes:[Ljava/lang/String;

    array-length v12, v11

    :goto_0
    if-ge v6, v12, :cond_1

    aget-object v13, v11, v6

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "onCreate: read only APN type: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v10, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    const-string v6, "read_only_apn_fields_string_array"

    invoke-virtual {v9, v6}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/android/settings/network/ApnEditor;->mReadOnlyApnFields:[Ljava/lang/String;

    :cond_2
    const-string v6, "android.intent.action.EDIT"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-string v9, "android.intent.action.INSERT"

    const/4 v11, 0x1

    if-eqz v6, :cond_3

    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    sget-object v12, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6, v12}, Landroid/net/Uri;->isPathPrefixMatch(Landroid/net/Uri;)Z

    move-result v12

    if-nez v12, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Edit request not for carrier table. Uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void

    :cond_3
    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17

    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    iput-object v6, v0, Lcom/android/settings/network/ApnEditor;->mCarrierUri:Landroid/net/Uri;

    iget-object v6, v0, Lcom/android/settings/network/ApnEditor;->mCarrierUri:Landroid/net/Uri;

    sget-object v12, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6, v12}, Landroid/net/Uri;->isPathPrefixMatch(Landroid/net/Uri;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v1, "Insert request not for carrier table. Uri: "

    invoke-static {v1}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline23(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/android/settings/network/ApnEditor;->mCarrierUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void

    :cond_4
    iput-boolean v11, v0, Lcom/android/settings/network/ApnEditor;->mNewApn:Z

    invoke-virtual {v4, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v4, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/android/settings/network/ApnEditor;->mMvnoMatchDataStr:Ljava/lang/String;

    move-object v6, v7

    :cond_5
    iput-object v7, v0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    if-eqz v6, :cond_6

    invoke-virtual {v0, v6}, Lcom/android/settings/network/ApnEditor;->getApnDataFromUri(Landroid/net/Uri;)Lcom/android/settings/network/ApnEditor$ApnData;

    move-result-object v6

    iput-object v6, v0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    :cond_6
    iget-object v6, v0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    if-nez v6, :cond_c

    new-instance v6, Lcom/android/settings/network/ApnEditor$ApnData;

    sget-object v12, Lcom/android/settings/network/ApnEditor;->sProjection:[Ljava/lang/String;

    array-length v12, v12

    invoke-direct {v6, v12}, Lcom/android/settings/network/ApnEditor$ApnData;-><init>(I)V

    iput-object v6, v0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-virtual {v0, v8}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/CarrierConfigManager;

    if-eqz v5, :cond_c

    iget v6, v0, Lcom/android/settings/network/ApnEditor;->mSubId:I

    invoke-virtual {v5, v6}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v5

    if-eqz v5, :cond_c

    const-string v6, "apn_default_values_strings_array"

    invoke-virtual {v5, v6}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v5

    if-eqz v5, :cond_c

    invoke-virtual {v5}, Landroid/os/PersistableBundle;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_c

    invoke-virtual {v5}, Landroid/os/PersistableBundle;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_7
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    sget-object v9, Lcom/android/settings/network/ApnEditor;->sUIConfigurableItems:[Ljava/lang/String;

    array-length v12, v9

    const/4 v13, 0x0

    :goto_2
    if-ge v13, v12, :cond_9

    aget-object v14, v9, v13

    invoke-virtual {v14, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_8

    move v9, v11

    goto :goto_3

    :cond_8
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    :cond_9
    const-string v9, " is not configurable"

    invoke-static {v8, v9, v10}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline41(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x0

    :goto_3
    if-eqz v9, :cond_7

    invoke-virtual {v5, v8}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    const/4 v12, 0x0

    :goto_4
    sget-object v13, Lcom/android/settings/network/ApnEditor;->sProjection:[Ljava/lang/String;

    array-length v14, v13

    if-ge v12, v14, :cond_b

    aget-object v13, v13, v12

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    goto :goto_5

    :cond_a
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    :cond_b
    const/4 v12, -0x1

    :goto_5
    if-ltz v12, :cond_7

    iget-object v8, v0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    invoke-virtual {v8, v12, v9}, Lcom/android/settings/network/ApnEditor$ApnData;->setObject(ILjava/lang/Object;)V

    goto :goto_1

    :cond_c
    const-string v5, "phone"

    invoke-virtual {v0, v5}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    iput-object v5, v0, Lcom/android/settings/network/ApnEditor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v5, v0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    const/16 v6, 0x17

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Lcom/android/settings/network/ApnEditor$ApnData;->getInteger(ILjava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v11, :cond_d

    move v5, v11

    goto :goto_6

    :cond_d
    const/4 v5, 0x0

    :goto_6
    const-string v6, "onCreate: EDITED "

    invoke-static {v6, v5, v10}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline43(Ljava/lang/String;ZLjava/lang/String;)V

    const/16 v6, 0xf

    if-nez v5, :cond_f

    iget-object v5, v0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    const/16 v8, 0x18

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Lcom/android/settings/network/ApnEditor$ApnData;->getInteger(ILjava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eqz v5, :cond_e

    iget-object v5, v0, Lcom/android/settings/network/ApnEditor;->mReadOnlyApnTypes:[Ljava/lang/String;

    iget-object v8, v0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    invoke-virtual {v8, v6}, Lcom/android/settings/network/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v5, v8}, Lcom/android/settings/network/ApnEditor;->apnTypesMatch([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_e

    iget-object v5, v0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    const/16 v8, 0x1a

    invoke-virtual {v5, v8}, Lcom/android/settings/network/ApnEditor$ApnData;->getInteger(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v11, :cond_f

    :cond_e
    const-string v1, "onCreate: apnTypesMatch; read-only APN"

    invoke-static {v10, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v11, v0, Lcom/android/settings/network/ApnEditor;->mReadOnlyApn:Z

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/network/ApnEditor;->disableAllFields()V

    goto/16 :goto_b

    :cond_f
    iget-object v5, v0, Lcom/android/settings/network/ApnEditor;->mReadOnlyApnFields:[Ljava/lang/String;

    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_12

    iget-object v5, v0, Lcom/android/settings/network/ApnEditor;->mReadOnlyApnFields:[Ljava/lang/String;

    array-length v8, v5

    const/4 v9, 0x0

    :goto_7
    if-ge v9, v8, :cond_12

    aget-object v10, v5, v9

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v12

    sparse-switch v12, :sswitch_data_0

    goto/16 :goto_8

    :sswitch_0
    const-string v12, "authtype"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10

    const/16 v10, 0xd

    goto/16 :goto_9

    :sswitch_1
    const-string v12, "password"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10

    const/4 v10, 0x6

    goto/16 :goto_9

    :sswitch_2
    const-string v12, "mmsport"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10

    const/16 v10, 0x8

    goto/16 :goto_9

    :sswitch_3
    const-string v12, "proxy"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10

    const/4 v10, 0x2

    goto/16 :goto_9

    :sswitch_4
    const-string v12, "user"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10

    const/4 v10, 0x4

    goto/16 :goto_9

    :sswitch_5
    const-string v12, "type"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10

    const/16 v10, 0xc

    goto/16 :goto_9

    :sswitch_6
    const-string v12, "port"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10

    const/4 v10, 0x3

    goto/16 :goto_9

    :sswitch_7
    const-string v12, "name"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10

    const/4 v10, 0x0

    goto/16 :goto_9

    :sswitch_8
    const-string v12, "mmsc"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10

    const/16 v10, 0x9

    goto/16 :goto_9

    :sswitch_9
    const-string v12, "mnc"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10

    const/16 v10, 0xb

    goto/16 :goto_9

    :sswitch_a
    const-string v12, "mcc"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10

    const/16 v10, 0xa

    goto/16 :goto_9

    :sswitch_b
    const-string v12, "apn"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10

    move v10, v11

    goto :goto_9

    :sswitch_c
    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10

    const/16 v10, 0x14

    goto :goto_9

    :sswitch_d
    const-string v12, "server"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10

    const/4 v10, 0x5

    goto :goto_9

    :sswitch_e
    const-string v12, "protocol"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10

    const/16 v10, 0xe

    goto :goto_9

    :sswitch_f
    const-string v12, "roaming_protocol"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10

    move v10, v6

    goto :goto_9

    :sswitch_10
    const-string v12, "bearer_bitmask"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10

    const/16 v10, 0x12

    goto :goto_9

    :sswitch_11
    const-string v12, "bearer"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10

    const/16 v10, 0x11

    goto :goto_9

    :sswitch_12
    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10

    const/16 v10, 0x10

    goto :goto_9

    :sswitch_13
    const-string v12, "mmsproxy"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10

    const/4 v10, 0x7

    goto :goto_9

    :sswitch_14
    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10

    const/16 v10, 0x13

    goto :goto_9

    :cond_10
    :goto_8
    const/4 v10, -0x1

    :goto_9
    packed-switch v10, :pswitch_data_0

    move-object v10, v7

    goto :goto_a

    :pswitch_0
    iget-object v10, v0, Lcom/android/settings/network/ApnEditor;->mMvnoMatchData:Landroidx/preference/EditTextPreference;

    goto :goto_a

    :pswitch_1
    iget-object v10, v0, Lcom/android/settings/network/ApnEditor;->mMvnoType:Landroidx/preference/ListPreference;

    goto :goto_a

    :pswitch_2
    iget-object v10, v0, Lcom/android/settings/network/ApnEditor;->mBearerMulti:Landroidx/preference/MultiSelectListPreference;

    goto :goto_a

    :pswitch_3
    iget-object v10, v0, Lcom/android/settings/network/ApnEditor;->mCarrierEnabled:Landroidx/preference/SwitchPreference;

    goto :goto_a

    :pswitch_4
    iget-object v10, v0, Lcom/android/settings/network/ApnEditor;->mRoamingProtocol:Landroidx/preference/ListPreference;

    goto :goto_a

    :pswitch_5
    iget-object v10, v0, Lcom/android/settings/network/ApnEditor;->mProtocol:Landroidx/preference/ListPreference;

    goto :goto_a

    :pswitch_6
    iget-object v10, v0, Lcom/android/settings/network/ApnEditor;->mAuthType:Landroidx/preference/ListPreference;

    goto :goto_a

    :pswitch_7
    iget-object v10, v0, Lcom/android/settings/network/ApnEditor;->mApnType:Landroidx/preference/EditTextPreference;

    goto :goto_a

    :pswitch_8
    iget-object v10, v0, Lcom/android/settings/network/ApnEditor;->mMnc:Landroidx/preference/EditTextPreference;

    goto :goto_a

    :pswitch_9
    iget-object v10, v0, Lcom/android/settings/network/ApnEditor;->mMcc:Landroidx/preference/EditTextPreference;

    goto :goto_a

    :pswitch_a
    iget-object v10, v0, Lcom/android/settings/network/ApnEditor;->mMmsc:Landroidx/preference/EditTextPreference;

    goto :goto_a

    :pswitch_b
    iget-object v10, v0, Lcom/android/settings/network/ApnEditor;->mMmsPort:Landroidx/preference/EditTextPreference;

    goto :goto_a

    :pswitch_c
    iget-object v10, v0, Lcom/android/settings/network/ApnEditor;->mMmsProxy:Landroidx/preference/EditTextPreference;

    goto :goto_a

    :pswitch_d
    iget-object v10, v0, Lcom/android/settings/network/ApnEditor;->mPassword:Landroidx/preference/EditTextPreference;

    goto :goto_a

    :pswitch_e
    iget-object v10, v0, Lcom/android/settings/network/ApnEditor;->mServer:Landroidx/preference/EditTextPreference;

    goto :goto_a

    :pswitch_f
    iget-object v10, v0, Lcom/android/settings/network/ApnEditor;->mUser:Landroidx/preference/EditTextPreference;

    goto :goto_a

    :pswitch_10
    iget-object v10, v0, Lcom/android/settings/network/ApnEditor;->mPort:Landroidx/preference/EditTextPreference;

    goto :goto_a

    :pswitch_11
    iget-object v10, v0, Lcom/android/settings/network/ApnEditor;->mProxy:Landroidx/preference/EditTextPreference;

    goto :goto_a

    :pswitch_12
    iget-object v10, v0, Lcom/android/settings/network/ApnEditor;->mApn:Landroidx/preference/EditTextPreference;

    goto :goto_a

    :pswitch_13
    iget-object v10, v0, Lcom/android/settings/network/ApnEditor;->mName:Landroidx/preference/EditTextPreference;

    :goto_a
    const/4 v12, 0x0

    if-eqz v10, :cond_11

    invoke-virtual {v10, v12}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_11
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_7

    :cond_12
    :goto_b
    const/4 v1, 0x0

    iget-object v2, v0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    const/16 v3, 0x19

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/android/settings/network/ApnEditor$ApnData;->getInteger(ILjava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v11, :cond_13

    move v1, v11

    goto :goto_c

    :cond_13
    const/4 v1, 0x0

    :goto_c
    iput-boolean v1, v0, Lcom/android/settings/network/ApnEditor;->mDeletableApn:Z

    const/4 v1, 0x0

    :goto_d
    invoke-virtual/range {p0 .. p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    if-ge v1, v2, :cond_14

    invoke-virtual/range {p0 .. p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_14
    if-nez p1, :cond_15

    move v1, v11

    goto :goto_e

    :cond_15
    const/4 v1, 0x0

    :goto_e
    invoke-virtual {v0, v1}, Lcom/android/settings/network/ApnEditor;->fillUI(Z)V

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportUss()Z

    move-result v1

    if-eqz v1, :cond_16

    iget-object v1, v0, Lcom/android/settings/network/ApnEditor;->ACTION_FROM:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v4, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/settings/network/ApnEditor;->mIsFromHM:Z

    iget-boolean v1, v0, Lcom/android/settings/network/ApnEditor;->mIsFromHM:Z

    if-eqz v1, :cond_16

    iput-boolean v2, v0, Lcom/android/settings/network/ApnEditor;->mReadOnlyApn:Z

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/network/ApnEditor;->disableAllFields()V

    iget-object v1, v0, Lcom/android/settings/network/ApnEditor;->mApn:Landroidx/preference/EditTextPreference;

    invoke-virtual {v1, v11}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v0, v0, Lcom/android/settings/network/ApnEditor;->mProtocol:Landroidx/preference/ListPreference;

    invoke-virtual {v0, v11}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_16
    return-void

    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7f4962d1 -> :sswitch_14
        -0x747b9085 -> :sswitch_13
        -0x61c86706 -> :sswitch_12
        -0x5307fc9f -> :sswitch_11
        -0x49581165 -> :sswitch_10
        -0x3df71002 -> :sswitch_f
        -0x3af57168 -> :sswitch_e
        -0x35fdd0bd -> :sswitch_d
        -0x1f00dbe7 -> :sswitch_c
        0x17a1f -> :sswitch_b
        0x1a58d -> :sswitch_a
        0x1a6e2 -> :sswitch_9
        0x3333f0 -> :sswitch_8
        0x337a8b -> :sswitch_7
        0x349881 -> :sswitch_6
        0x368f3a -> :sswitch_5
        0x36ebcb -> :sswitch_4
        0x65fca6e -> :sswitch_3
        0x46909dd4 -> :sswitch_2
        0x4889ba9b -> :sswitch_1
        0x556d58e2 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    iget-boolean p2, p0, Lcom/android/settings/network/ApnEditor;->mNewApn:Z

    const/4 v0, 0x0

    if-nez p2, :cond_0

    iget-boolean p2, p0, Lcom/android/settings/network/ApnEditor;->mReadOnlyApn:Z

    if-nez p2, :cond_0

    iget-boolean p0, p0, Lcom/android/settings/network/ApnEditor;->mDeletableApn:Z

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/oneplus/lib/app/appcompat/MenuWrapperFactory;->isUsvMode()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    const p2, 0x7f120a81

    invoke-interface {p1, v0, p0, v0, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p0

    const p2, 0x7f0801d3

    invoke-interface {p0, p2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_0
    const/4 p0, 0x2

    const p2, 0x7f120a8e

    invoke-interface {p1, v0, p0, v0, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p0

    const p2, 0x108004e

    invoke-interface {p0, p2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/4 p0, 0x3

    const p2, 0x7f120a80

    invoke-interface {p1, v0, p0, v0, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p0

    const p1, 0x1080038

    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p3, 0x0

    if-eqz p1, :cond_0

    return p3

    :cond_0
    const/4 p1, 0x4

    if-eq p2, p1, :cond_1

    return p3

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->validateAndSaveApnData()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/android/settings/network/ApnEditor;->apnEditorFinish()V

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->validateAndSaveApnData()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/android/settings/network/ApnEditor;->apnEditorFinish()V

    :cond_2
    return v1

    :cond_3
    invoke-direct {p0}, Lcom/android/settings/network/ApnEditor;->deleteApn()V

    invoke-direct {p0}, Lcom/android/settings/network/ApnEditor;->apnEditorFinish()V

    return v1
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "auth_type"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    :try_start_0
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iget-object p2, p0, Lcom/android/settings/network/ApnEditor;->mAuthType:Landroidx/preference/ListPreference;

    invoke-virtual {p2, p1}, Landroidx/preference/ListPreference;->setValueIndex(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f030005

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2

    iget-object p0, p0, Lcom/android/settings/network/ApnEditor;->mAuthType:Landroidx/preference/ListPreference;

    aget-object p1, p2, p1

    invoke-virtual {p0, p1}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    return v2

    :cond_0
    const-string v1, "apn_protocol"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    check-cast p2, Ljava/lang/String;

    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->mProtocol:Landroidx/preference/ListPreference;

    invoke-direct {p0, p2, p1}, Lcom/android/settings/network/ApnEditor;->protocolDescription(Ljava/lang/String;Landroidx/preference/ListPreference;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    return v2

    :cond_1
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mProtocol:Landroidx/preference/ListPreference;

    invoke-virtual {v0, p1}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/android/settings/network/ApnEditor;->mProtocol:Landroidx/preference/ListPreference;

    invoke-virtual {p0, p2}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_2
    const-string v1, "apn_roaming_protocol"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    check-cast p2, Ljava/lang/String;

    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->mRoamingProtocol:Landroidx/preference/ListPreference;

    invoke-direct {p0, p2, p1}, Lcom/android/settings/network/ApnEditor;->protocolDescription(Ljava/lang/String;Landroidx/preference/ListPreference;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mRoamingProtocol:Landroidx/preference/ListPreference;

    invoke-virtual {v0, p1}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/android/settings/network/ApnEditor;->mRoamingProtocol:Landroidx/preference/ListPreference;

    invoke-virtual {p0, p2}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_4
    const-string v1, "bearer_multi"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    check-cast p2, Ljava/util/Set;

    invoke-direct {p0, p2}, Lcom/android/settings/network/ApnEditor;->bearerMultiDescription(Ljava/util/Set;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mBearerMulti:Landroidx/preference/MultiSelectListPreference;

    invoke-virtual {v0, p2}, Landroidx/preference/MultiSelectListPreference;->setValues(Ljava/util/Set;)V

    iget-object p0, p0, Lcom/android/settings/network/ApnEditor;->mBearerMulti:Landroidx/preference/MultiSelectListPreference;

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_6
    const-string v1, "mvno_type"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/android/settings/network/ApnEditor;->mvnoDescription(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_7

    return v2

    :cond_7
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mMvnoType:Landroidx/preference/ListPreference;

    invoke-virtual {v0, p2}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/settings/network/ApnEditor;->mMvnoType:Landroidx/preference/ListPreference;

    invoke-virtual {p0, p1}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_8
    const-string v1, "apn_password"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->mPassword:Landroidx/preference/EditTextPreference;

    if-eqz p2, :cond_9

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_9
    const-string p2, ""

    :goto_0
    invoke-direct {p0, p2}, Lcom/android/settings/network/ApnEditor;->starify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_a
    const-string v1, "carrier_enabled"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_2

    :cond_b
    if-eqz p2, :cond_c

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_c
    const/4 p2, 0x0

    :goto_1
    invoke-direct {p0, p2}, Lcom/android/settings/network/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_2
    const/4 p0, 0x1

    return p0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/preference/PreferenceFragmentCompat;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return-void
.end method

.method setIntValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;IZI)Z
    .locals 0

    iget-object p0, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    invoke-virtual {p0, p5}, Lcom/android/settings/network/ApnEditor$ApnData;->getInteger(I)Ljava/lang/Integer;

    move-result-object p0

    if-nez p4, :cond_1

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-eq p3, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    if-eqz p0, :cond_2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_2
    return p0
.end method

.method setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z
    .locals 0

    iget-object p0, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    invoke-virtual {p0, p5}, Lcom/android/settings/network/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object p0

    if-nez p4, :cond_2

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_1

    :cond_0
    if-eqz p3, :cond_2

    invoke-virtual {p3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    if-eqz p0, :cond_3

    if-eqz p3, :cond_3

    invoke-virtual {p1, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return p0
.end method

.method showError()V
    .locals 2

    new-instance v0, Lcom/android/settings/network/ApnEditor$ErrorDialog;

    invoke-direct {v0}, Lcom/android/settings/network/ApnEditor$ErrorDialog;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroidx/fragment/app/Fragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string v1, "error"

    invoke-virtual {v0, p0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method validateAndSaveApnData()Z
    .locals 13

    iget-boolean v0, p0, Lcom/android/settings/network/ApnEditor;->mReadOnlyApn:Z

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    if-eqz v0, :cond_0

    return v6

    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mName:Landroidx/preference/EditTextPreference;

    invoke-virtual {v0}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/network/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mApn:Landroidx/preference/EditTextPreference;

    invoke-virtual {v0}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/network/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mMcc:Landroidx/preference/EditTextPreference;

    invoke-virtual {v0}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/network/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mMnc:Landroidx/preference/EditTextPreference;

    invoke-virtual {v0}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/network/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->validateApnData()Ljava/lang/String;

    move-result-object v0

    const/4 v11, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->showError()V

    return v11

    :cond_1
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    iget-boolean v4, p0, Lcom/android/settings/network/ApnEditor;->mNewApn:Z

    const/4 v5, 0x1

    const-string v2, "name"

    move-object v0, p0

    move-object v1, v12

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v4

    const/4 v5, 0x2

    const-string v2, "apn"

    move-object v3, v8

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v4

    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mProxy:Landroidx/preference/EditTextPreference;

    invoke-virtual {v0}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/network/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x3

    const-string v2, "proxy"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v4

    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mPort:Landroidx/preference/EditTextPreference;

    invoke-virtual {v0}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/network/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const-string v2, "port"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v4

    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mMmsProxy:Landroidx/preference/EditTextPreference;

    invoke-virtual {v0}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/network/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0xc

    const-string v2, "mmsproxy"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v4

    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mMmsPort:Landroidx/preference/EditTextPreference;

    invoke-virtual {v0}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/network/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0xd

    const-string v2, "mmsport"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v4

    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mUser:Landroidx/preference/EditTextPreference;

    invoke-virtual {v0}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/network/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x5

    const-string v2, "user"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v4

    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mServer:Landroidx/preference/EditTextPreference;

    invoke-virtual {v0}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/network/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x6

    const-string v2, "server"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v4

    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mPassword:Landroidx/preference/EditTextPreference;

    invoke-virtual {v0}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/network/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x7

    const-string v2, "password"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v4

    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mMmsc:Landroidx/preference/EditTextPreference;

    invoke-virtual {v0}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/network/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x8

    const-string v2, "mmsc"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v4

    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mAuthType:Landroidx/preference/ListPreference;

    invoke-virtual {v0}, Landroidx/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/16 v5, 0xe

    const-string v2, "authtype"

    move-object v0, p0

    move-object v1, v12

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/ApnEditor;->setIntValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;IZI)Z

    move-result v0

    move v4, v0

    :cond_2
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mProtocol:Landroidx/preference/ListPreference;

    invoke-virtual {v0}, Landroidx/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/network/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x10

    const-string v2, "protocol"

    move-object v0, p0

    move-object v1, v12

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v4

    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mRoamingProtocol:Landroidx/preference/ListPreference;

    invoke-virtual {v0}, Landroidx/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/network/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x14

    const-string v2, "roaming_protocol"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v4

    invoke-direct {p0}, Lcom/android/settings/network/ApnEditor;->getUserEnteredApnType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    const-string v0, "default"

    :cond_4
    move-object v3, v0

    const/16 v5, 0xf

    const-string v2, "type"

    move-object v0, p0

    move-object v1, v12

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v4

    const/16 v5, 0x9

    const-string v2, "mcc"

    move-object v3, v9

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v4

    const/16 v5, 0xa

    const-string v2, "mnc"

    move-object v3, v10

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "numeric"

    invoke-virtual {v12, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mCurMnc:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/android/settings/network/ApnEditor;->mCurMcc:Ljava/lang/String;

    if-eqz v1, :cond_5

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mCurMcc:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "current"

    invoke-virtual {v12, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_5
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mBearerMulti:Landroidx/preference/MultiSelectListPreference;

    invoke-virtual {v0}, Landroidx/preference/MultiSelectListPreference;->getValues()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v1, v11

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_6

    move v8, v11

    goto :goto_1

    :cond_6
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Landroid/telephony/ServiceState;->getBitmaskForTech(I)I

    move-result v2

    or-int/2addr v1, v2

    goto :goto_0

    :cond_7
    move v8, v1

    :goto_1
    const/16 v5, 0x13

    const-string v2, "bearer_bitmask"

    move-object v0, p0

    move-object v1, v12

    move v3, v8

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/ApnEditor;->setIntValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;IZI)Z

    move-result v4

    if-eqz v8, :cond_9

    iget v0, p0, Lcom/android/settings/network/ApnEditor;->mBearerInitialVal:I

    if-nez v0, :cond_8

    goto :goto_2

    :cond_8
    invoke-static {v8, v0}, Landroid/telephony/ServiceState;->bitmaskHasTech(II)Z

    move-result v0

    if-eqz v0, :cond_9

    iget v0, p0, Lcom/android/settings/network/ApnEditor;->mBearerInitialVal:I

    move v3, v0

    goto :goto_3

    :cond_9
    :goto_2
    move v3, v11

    :goto_3
    const/16 v5, 0x12

    const-string v2, "bearer"

    move-object v0, p0

    move-object v1, v12

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/ApnEditor;->setIntValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;IZI)Z

    move-result v4

    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mMvnoType:Landroidx/preference/ListPreference;

    invoke-virtual {v0}, Landroidx/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/network/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x15

    const-string v2, "mvno_type"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v4

    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mMvnoMatchData:Landroidx/preference/EditTextPreference;

    invoke-virtual {v0}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/network/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x16

    const-string v2, "mvno_match_data"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v4

    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mCarrierEnabled:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v3

    const/16 v5, 0x11

    const-string v2, "carrier_enabled"

    move-object v0, p0

    move-object v1, v12

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/ApnEditor;->setIntValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;IZI)Z

    move-result v0

    const-string v1, "edited"

    invoke-virtual {v12, v1, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    invoke-virtual {v0}, Lcom/android/settings/network/ApnEditor$ApnData;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mCarrierUri:Landroid/net/Uri;

    goto :goto_4

    :cond_a
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    invoke-virtual {v0}, Lcom/android/settings/network/ApnEditor$ApnData;->getUri()Landroid/net/Uri;

    move-result-object v0

    :goto_4
    new-instance v1, Lcom/android/settings/network/-$$Lambda$ApnEditor$1vSLgWOnd4pMuFU2qFaSz0HXNw8;

    invoke-direct {v1, p0, v0, v12}, Lcom/android/settings/network/-$$Lambda$ApnEditor$1vSLgWOnd4pMuFU2qFaSz0HXNw8;-><init>(Lcom/android/settings/network/ApnEditor;Landroid/net/Uri;Landroid/content/ContentValues;)V

    invoke-static {v1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportUss()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/android/settings/network/ApnEditor;->mIsFromHM:Z

    if-eqz v0, :cond_b

    iput-boolean v6, p0, Lcom/android/settings/network/ApnEditor;->mIsPreferenceChanged:Z

    :cond_b
    return v6
.end method

.method validateApnData()Ljava/lang/String;
    .locals 9

    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mName:Landroidx/preference/EditTextPreference;

    invoke-virtual {v0}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/network/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/network/ApnEditor;->mApn:Landroidx/preference/EditTextPreference;

    invoke-virtual {v1}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/network/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/network/ApnEditor;->mMcc:Landroidx/preference/EditTextPreference;

    invoke-virtual {v2}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/network/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mMnc:Landroidx/preference/EditTextPreference;

    invoke-virtual {v3}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/network/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v4, 0x2

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1206fc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1206f8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_1
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    goto :goto_1

    :cond_2
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    const v1, 0xfffe

    and-int/2addr v0, v1

    if-eq v0, v4, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    :cond_4
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1206fb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_5
    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1206fa

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportUss()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Lcom/android/settings/network/ApnEditor;->mIsFromHM:Z

    if-eqz v1, :cond_6

    return-object v0

    :cond_6
    if-nez v0, :cond_9

    iget-object v1, p0, Lcom/android/settings/network/ApnEditor;->mReadOnlyApnTypes:[Ljava/lang/String;

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/android/settings/network/ApnEditor;->mReadOnlyApnTypes:[Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/settings/network/ApnEditor;->getUserEnteredApnType()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/settings/network/ApnEditor;->apnTypesMatch([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/settings/network/ApnEditor;->mReadOnlyApnTypes:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    move v5, v3

    :goto_3
    if-ge v5, v2, :cond_7

    aget-object v6, v1, v5

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "validateApnData: appending type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "ApnEditor"

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lt v1, v4, :cond_8

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    sub-int/2addr v1, v4

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f1206f7

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v3

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_9
    return-object v0
.end method
