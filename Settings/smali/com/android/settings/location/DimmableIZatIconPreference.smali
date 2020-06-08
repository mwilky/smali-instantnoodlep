.class public Lcom/android/settings/location/DimmableIZatIconPreference;
.super Ljava/lang/Object;
.source "DimmableIZatIconPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/location/DimmableIZatIconPreference$IZatRestrictedAppPreference;,
        Lcom/android/settings/location/DimmableIZatIconPreference$IZatAppPreference;
    }
.end annotation


# static fields
.field private static mGetConsentMethod:Ljava/lang/reflect/Method;

.field private static mGetXtProxyMethod:Ljava/lang/reflect/Method;

.field private static mIzatPackage:Ljava/lang/String;

.field private static mLoader:Ldalvik/system/DexClassLoader;

.field private static mNotifierClz:Ljava/lang/Class;

.field private static mShowIzatMethod:Ljava/lang/reflect/Method;

.field private static mXtProxyClz:Ljava/lang/Class;


# direct methods
.method static synthetic access$000()Ldalvik/system/DexClassLoader;
    .locals 1

    sget-object v0, Lcom/android/settings/location/DimmableIZatIconPreference;->mLoader:Ldalvik/system/DexClassLoader;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/Class;
    .locals 1

    sget-object v0, Lcom/android/settings/location/DimmableIZatIconPreference;->mNotifierClz:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/widget/AppPreference;Z)V
    .locals 2

    invoke-virtual {p0}, Landroidx/preference/Preference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz p1, :cond_0

    const/16 p1, 0x66

    goto :goto_0

    :cond_0
    const/16 p1, 0xff

    :goto_0
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method static synthetic access$400()Ljava/lang/reflect/Method;
    .locals 1

    sget-object v0, Lcom/android/settings/location/DimmableIZatIconPreference;->mGetXtProxyMethod:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic access$500()Ljava/lang/reflect/Method;
    .locals 1

    sget-object v0, Lcom/android/settings/location/DimmableIZatIconPreference;->mGetConsentMethod:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static getAppPreference(Landroid/content/Context;Lcom/android/settingslib/location/InjectedSetting;)Lcom/android/settings/widget/AppPreference;
    .locals 1

    sget-object v0, Lcom/android/settings/location/DimmableIZatIconPreference;->mIzatPackage:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/android/settingslib/location/InjectedSetting;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    new-instance p1, Lcom/android/settings/location/DimmableIZatIconPreference$IZatAppPreference;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/settings/location/DimmableIZatIconPreference$IZatAppPreference;-><init>(Landroid/content/Context;Lcom/android/settings/location/DimmableIZatIconPreference$1;)V

    goto :goto_1

    :cond_1
    new-instance p1, Lcom/android/settings/widget/AppPreference;

    invoke-direct {p1, p0}, Lcom/android/settings/widget/AppPreference;-><init>(Landroid/content/Context;)V

    :goto_1
    return-object p1
.end method

.method static getRestrictedAppPreference(Landroid/content/Context;Lcom/android/settingslib/location/InjectedSetting;)Lcom/android/settings/widget/RestrictedAppPreference;
    .locals 2

    sget-object v0, Lcom/android/settings/location/DimmableIZatIconPreference;->mIzatPackage:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p1, Lcom/android/settingslib/location/InjectedSetting;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/settings/location/DimmableIZatIconPreference$IZatRestrictedAppPreference;

    iget-object p1, p1, Lcom/android/settingslib/location/InjectedSetting;->userRestriction:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/settings/location/DimmableIZatIconPreference$IZatRestrictedAppPreference;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settings/location/DimmableIZatIconPreference$1;)V

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/android/settings/widget/RestrictedAppPreference;

    iget-object p1, p1, Lcom/android/settingslib/location/InjectedSetting;->userRestriction:Ljava/lang/String;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/widget/RestrictedAppPreference;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    :goto_1
    return-object v0
.end method

.method static showIzat(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8

    sget-object v0, Lcom/android/settings/location/DimmableIZatIconPreference;->mLoader:Ldalvik/system/DexClassLoader;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v0, :cond_1

    :try_start_0
    sget-object v0, Lcom/android/settings/location/DimmableIZatIconPreference;->mXtProxyClz:Ljava/lang/Class;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/location/DimmableIZatIconPreference;->mNotifierClz:Ljava/lang/Class;

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ldalvik/system/DexClassLoader;

    const-string v5, "/system/framework/izat.xt.srv.jar"

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-direct {v0, v5, v6, v3, v7}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    sput-object v0, Lcom/android/settings/location/DimmableIZatIconPreference;->mLoader:Ldalvik/system/DexClassLoader;

    const-string v0, "com.qti.izat.XTProxy"

    sget-object v5, Lcom/android/settings/location/DimmableIZatIconPreference;->mLoader:Ldalvik/system/DexClassLoader;

    invoke-static {v0, v4, v5}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/android/settings/location/DimmableIZatIconPreference;->mXtProxyClz:Ljava/lang/Class;

    const-string v0, "com.qti.izat.XTProxy$Notifier"

    sget-object v5, Lcom/android/settings/location/DimmableIZatIconPreference;->mLoader:Ldalvik/system/DexClassLoader;

    invoke-static {v0, v4, v5}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/android/settings/location/DimmableIZatIconPreference;->mNotifierClz:Ljava/lang/Class;

    sget-object v0, Lcom/android/settings/location/DimmableIZatIconPreference;->mXtProxyClz:Ljava/lang/Class;

    const-string v5, "IZAT_XT_PACKAGE"

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/android/settings/location/DimmableIZatIconPreference;->mIzatPackage:Ljava/lang/String;

    sget-object v0, Lcom/android/settings/location/DimmableIZatIconPreference;->mXtProxyClz:Ljava/lang/Class;

    const-string v5, "getXTProxy"

    new-array v6, v2, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    aput-object v7, v6, v1

    sget-object v7, Lcom/android/settings/location/DimmableIZatIconPreference;->mNotifierClz:Ljava/lang/Class;

    aput-object v7, v6, v4

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/android/settings/location/DimmableIZatIconPreference;->mGetXtProxyMethod:Ljava/lang/reflect/Method;

    sget-object v0, Lcom/android/settings/location/DimmableIZatIconPreference;->mXtProxyClz:Ljava/lang/Class;

    const-string v5, "getUserConsent"

    new-array v6, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/android/settings/location/DimmableIZatIconPreference;->mGetConsentMethod:Ljava/lang/reflect/Method;

    sget-object v0, Lcom/android/settings/location/DimmableIZatIconPreference;->mXtProxyClz:Ljava/lang/Class;

    const-string v5, "showIzat"

    new-array v6, v2, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    aput-object v7, v6, v1

    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v4

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/android/settings/location/DimmableIZatIconPreference;->mShowIzatMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sput-object v3, Lcom/android/settings/location/DimmableIZatIconPreference;->mXtProxyClz:Ljava/lang/Class;

    sput-object v3, Lcom/android/settings/location/DimmableIZatIconPreference;->mNotifierClz:Ljava/lang/Class;

    sput-object v3, Lcom/android/settings/location/DimmableIZatIconPreference;->mIzatPackage:Ljava/lang/String;

    sput-object v3, Lcom/android/settings/location/DimmableIZatIconPreference;->mGetXtProxyMethod:Ljava/lang/reflect/Method;

    sput-object v3, Lcom/android/settings/location/DimmableIZatIconPreference;->mGetConsentMethod:Ljava/lang/reflect/Method;

    sput-object v3, Lcom/android/settings/location/DimmableIZatIconPreference;->mShowIzatMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    :try_start_1
    sget-object v0, Lcom/android/settings/location/DimmableIZatIconPreference;->mShowIzatMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/settings/location/DimmableIZatIconPreference;->mShowIzatMethod:Ljava/lang/reflect/Method;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v1

    aput-object p1, v2, v4

    invoke-virtual {v0, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_1 .. :try_end_1} :catch_1

    move v4, p0

    goto :goto_1

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_1
    return v4
.end method
