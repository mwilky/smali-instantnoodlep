.class public Lcom/android/settings/notification/SettingPref;
.super Ljava/lang/Object;
.source "SettingPref.java"


# instance fields
.field protected final mDefault:I

.field protected mDropDown:Landroidx/preference/DropDownPreference;

.field private final mKey:Ljava/lang/String;

.field protected final mSetting:Ljava/lang/String;

.field protected mTwoState:Landroidx/preference/TwoStatePreference;

.field protected final mType:I

.field private final mUri:Landroid/net/Uri;

.field private final mValues:[I


# direct methods
.method public varargs constructor <init>(ILjava/lang/String;Ljava/lang/String;I[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/settings/notification/SettingPref;->mType:I

    iput-object p2, p0, Lcom/android/settings/notification/SettingPref;->mKey:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/settings/notification/SettingPref;->mSetting:Ljava/lang/String;

    iput p4, p0, Lcom/android/settings/notification/SettingPref;->mDefault:I

    iput-object p5, p0, Lcom/android/settings/notification/SettingPref;->mValues:[I

    iget p1, p0, Lcom/android/settings/notification/SettingPref;->mType:I

    iget-object p2, p0, Lcom/android/settings/notification/SettingPref;->mSetting:Ljava/lang/String;

    const/4 p3, 0x1

    if-eq p1, p3, :cond_2

    const/4 p3, 0x2

    if-eq p1, p3, :cond_1

    const/4 p3, 0x3

    if-ne p1, p3, :cond_0

    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_1
    invoke-static {p2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-static {p2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/android/settings/notification/SettingPref;->mUri:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method protected getCaption(Landroid/content/res/Resources;I)Ljava/lang/String;
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/notification/SettingPref;->mKey:Ljava/lang/String;

    return-object p0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/notification/SettingPref;->mUri:Landroid/net/Uri;

    return-object p0
.end method

.method public init(Lcom/android/settings/SettingsPreferenceFragment;)Landroidx/preference/Preference;
    .locals 7

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/notification/SettingPref;->mKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/SettingPref;->isApplicable(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p1}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    move-object v1, v2

    :cond_0
    instance-of p1, v1, Landroidx/preference/TwoStatePreference;

    if-eqz p1, :cond_1

    move-object p1, v1

    check-cast p1, Landroidx/preference/TwoStatePreference;

    iput-object p1, p0, Lcom/android/settings/notification/SettingPref;->mTwoState:Landroidx/preference/TwoStatePreference;

    goto :goto_1

    :cond_1
    instance-of p1, v1, Landroidx/preference/DropDownPreference;

    if-eqz p1, :cond_3

    move-object p1, v1

    check-cast p1, Landroidx/preference/DropDownPreference;

    iput-object p1, p0, Lcom/android/settings/notification/SettingPref;->mDropDown:Landroidx/preference/DropDownPreference;

    iget-object p1, p0, Lcom/android/settings/notification/SettingPref;->mValues:[I

    array-length v3, p1

    new-array v3, v3, [Ljava/lang/CharSequence;

    array-length p1, p1

    new-array p1, p1, [Ljava/lang/CharSequence;

    const/4 v4, 0x0

    :goto_0
    iget-object v5, p0, Lcom/android/settings/notification/SettingPref;->mValues:[I

    array-length v5, v5

    if-ge v4, v5, :cond_2

    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/notification/SettingPref;->mValues:[I

    aget v6, v6, v4

    invoke-virtual {p0, v5, v6}, Lcom/android/settings/notification/SettingPref;->getCaption(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    iget-object v5, p0, Lcom/android/settings/notification/SettingPref;->mValues:[I

    aget v5, v5, v4

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, p1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/android/settings/notification/SettingPref;->mDropDown:Landroidx/preference/DropDownPreference;

    invoke-virtual {v4, v3}, Landroidx/preference/DropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/settings/notification/SettingPref;->mDropDown:Landroidx/preference/DropDownPreference;

    invoke-virtual {v3, p1}, Landroidx/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    :cond_3
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/settings/notification/SettingPref;->update(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/android/settings/notification/SettingPref;->mTwoState:Landroidx/preference/TwoStatePreference;

    if-eqz p1, :cond_4

    new-instance p1, Lcom/android/settings/notification/SettingPref$1;

    invoke-direct {p1, p0, v0}, Lcom/android/settings/notification/SettingPref$1;-><init>(Lcom/android/settings/notification/SettingPref;Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    iget-object p0, p0, Lcom/android/settings/notification/SettingPref;->mTwoState:Landroidx/preference/TwoStatePreference;

    return-object p0

    :cond_4
    iget-object p1, p0, Lcom/android/settings/notification/SettingPref;->mDropDown:Landroidx/preference/DropDownPreference;

    if-eqz p1, :cond_5

    new-instance p1, Lcom/android/settings/notification/SettingPref$2;

    invoke-direct {p1, p0, v0}, Lcom/android/settings/notification/SettingPref$2;-><init>(Lcom/android/settings/notification/SettingPref;Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    iget-object p0, p0, Lcom/android/settings/notification/SettingPref;->mDropDown:Landroidx/preference/DropDownPreference;

    return-object p0

    :cond_5
    return-object v2
.end method

.method public isApplicable(Landroid/content/Context;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected setSetting(Landroid/content/Context;I)Z
    .locals 2

    iget v0, p0, Lcom/android/settings/notification/SettingPref;->mType:I

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/notification/SettingPref;->mSetting:Ljava/lang/String;

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-static {p1, p0, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result p0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_1
    invoke-static {p1, p0, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result p0

    goto :goto_0

    :cond_2
    invoke-static {p1, p0, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result p0

    :goto_0
    return p0
.end method

.method public update(Landroid/content/Context;)V
    .locals 5

    iget v0, p0, Lcom/android/settings/notification/SettingPref;->mType:I

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v1, p0, Lcom/android/settings/notification/SettingPref;->mSetting:Ljava/lang/String;

    iget v2, p0, Lcom/android/settings/notification/SettingPref;->mDefault:I

    const/4 v3, 0x1

    if-eq v0, v3, :cond_2

    const/4 v4, 0x2

    if-eq v0, v4, :cond_1

    const/4 v4, 0x3

    if-ne v0, v4, :cond_0

    invoke-static {p1, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_1
    invoke-static {p1, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    goto :goto_0

    :cond_2
    invoke-static {p1, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    :goto_0
    iget-object v0, p0, Lcom/android/settings/notification/SettingPref;->mTwoState:Landroidx/preference/TwoStatePreference;

    if-eqz v0, :cond_4

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v0, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_2

    :cond_4
    iget-object p0, p0, Lcom/android/settings/notification/SettingPref;->mDropDown:Landroidx/preference/DropDownPreference;

    if-eqz p0, :cond_5

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    :cond_5
    :goto_2
    return-void
.end method
