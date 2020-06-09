.class Lcom/android/server/signedconfig/GlobalSettingsConfigApplicator;
.super Ljava/lang/Object;
.source "GlobalSettingsConfigApplicator.java"


# static fields
.field private static final ALLOWED_KEYS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final HIDDEN_API_POLICY_KEY_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final KEY_VALUE_MAPPERS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "SignedConfig"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mEvent:Lcom/android/server/signedconfig/SignedConfigEvent;

.field private final mSourcePackage:Ljava/lang/String;

.field private final mVerifier:Lcom/android/server/signedconfig/SignatureVerifier;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Landroid/util/ArraySet;

    const-string v1, "hidden_api_policy"

    const-string v2, "hidden_api_blacklist_exemptions"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/android/server/signedconfig/GlobalSettingsConfigApplicator;->ALLOWED_KEYS:Ljava/util/Set;

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "DEFAULT"

    aput-object v3, v0, v2

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v0, v4

    const/4 v3, 0x2

    const-string v5, "DISABLED"

    aput-object v5, v0, v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    aput-object v5, v0, v6

    const/4 v5, 0x4

    const-string v6, "JUST_WARN"

    aput-object v6, v0, v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x5

    aput-object v5, v0, v6

    const/4 v5, 0x6

    const-string v6, "ENABLED"

    aput-object v6, v0, v5

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x7

    aput-object v5, v0, v6

    invoke-static {v0}, Lcom/android/server/signedconfig/GlobalSettingsConfigApplicator;->makeMap([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/server/signedconfig/GlobalSettingsConfigApplicator;->HIDDEN_API_POLICY_KEY_MAP:Ljava/util/Map;

    new-array v0, v3, [Ljava/lang/Object;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/signedconfig/GlobalSettingsConfigApplicator;->HIDDEN_API_POLICY_KEY_MAP:Ljava/util/Map;

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/android/server/signedconfig/GlobalSettingsConfigApplicator;->makeMap([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/server/signedconfig/GlobalSettingsConfigApplicator;->KEY_VALUE_MAPPERS:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/server/signedconfig/SignedConfigEvent;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/signedconfig/GlobalSettingsConfigApplicator;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/signedconfig/GlobalSettingsConfigApplicator;->mSourcePackage:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/signedconfig/GlobalSettingsConfigApplicator;->mEvent:Lcom/android/server/signedconfig/SignedConfigEvent;

    new-instance v0, Lcom/android/server/signedconfig/SignatureVerifier;

    iget-object v1, p0, Lcom/android/server/signedconfig/GlobalSettingsConfigApplicator;->mEvent:Lcom/android/server/signedconfig/SignedConfigEvent;

    invoke-direct {v0, v1}, Lcom/android/server/signedconfig/SignatureVerifier;-><init>(Lcom/android/server/signedconfig/SignedConfigEvent;)V

    iput-object v0, p0, Lcom/android/server/signedconfig/GlobalSettingsConfigApplicator;->mVerifier:Lcom/android/server/signedconfig/SignatureVerifier;

    return-void
.end method

.method private checkSignature(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/server/signedconfig/GlobalSettingsConfigApplicator;->mVerifier:Lcom/android/server/signedconfig/SignatureVerifier;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/signedconfig/SignatureVerifier;->verifySignature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "SignedConfig"

    const-string v2, "Failed to verify signature"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v1, p0, Lcom/android/server/signedconfig/GlobalSettingsConfigApplicator;->mEvent:Lcom/android/server/signedconfig/SignedConfigEvent;

    const/4 v2, 0x4

    iput v2, v1, Lcom/android/server/signedconfig/SignedConfigEvent;->status:I

    const/4 v1, 0x0

    return v1
.end method

.method private getCurrentConfigVersion()I
    .locals 3

    iget-object v0, p0, Lcom/android/server/signedconfig/GlobalSettingsConfigApplicator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "signed_config_version"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static varargs makeMap([Ljava/lang/Object;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    array-length v0, p0

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    array-length v0, p0

    div-int/lit8 v0, v0, 0x2

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1, v0}, Landroid/util/ArrayMap;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    mul-int/lit8 v3, v2, 0x2

    aget-object v3, p0, v3

    mul-int/lit8 v4, v2, 0x2

    add-int/lit8 v4, v4, 0x1

    aget-object v4, p0, v4

    invoke-virtual {v1, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    return-object v2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method private updateCurrentConfig(ILjava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    iget-object v2, p0, Lcom/android/server/signedconfig/GlobalSettingsConfigApplicator;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/signedconfig/GlobalSettingsConfigApplicator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "signed_config_version"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method


# virtual methods
.method applyConfig(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    invoke-direct {p0, p1, p2}, Lcom/android/server/signedconfig/GlobalSettingsConfigApplicator;->checkSignature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const-string v1, "SignedConfig"

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Signature check on global settings in package "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/signedconfig/GlobalSettingsConfigApplicator;->mSourcePackage:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " failed; ignoring"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    sget-object v0, Lcom/android/server/signedconfig/GlobalSettingsConfigApplicator;->ALLOWED_KEYS:Ljava/util/Set;

    sget-object v2, Lcom/android/server/signedconfig/GlobalSettingsConfigApplicator;->KEY_VALUE_MAPPERS:Ljava/util/Map;

    invoke-static {p1, v0, v2}, Lcom/android/server/signedconfig/SignedConfig;->parse(Ljava/lang/String;Ljava/util/Set;Ljava/util/Map;)Lcom/android/server/signedconfig/SignedConfig;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/signedconfig/GlobalSettingsConfigApplicator;->mEvent:Lcom/android/server/signedconfig/SignedConfigEvent;

    iget v3, v0, Lcom/android/server/signedconfig/SignedConfig;->version:I

    iput v3, v2, Lcom/android/server/signedconfig/SignedConfigEvent;->version:I
    :try_end_0
    .catch Lcom/android/server/signedconfig/InvalidConfigException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    invoke-direct {p0}, Lcom/android/server/signedconfig/GlobalSettingsConfigApplicator;->getCurrentConfigVersion()I

    move-result v2

    iget v3, v0, Lcom/android/server/signedconfig/SignedConfig;->version:I

    if-lt v2, v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Global settings from package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/signedconfig/GlobalSettingsConfigApplicator;->mSourcePackage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is older than existing: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/android/server/signedconfig/SignedConfig;->version:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "<="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/signedconfig/GlobalSettingsConfigApplicator;->mEvent:Lcom/android/server/signedconfig/SignedConfigEvent;

    const/4 v3, 0x6

    iput v3, v1, Lcom/android/server/signedconfig/SignedConfigEvent;->status:I

    return-void

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got new global settings from package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/signedconfig/GlobalSettingsConfigApplicator;->mSourcePackage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": version "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/android/server/signedconfig/SignedConfig;->version:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " replacing existing version "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v3}, Lcom/android/server/signedconfig/SignedConfig;->getMatchingConfig(I)Lcom/android/server/signedconfig/SignedConfig$PerSdkConfig;

    move-result-object v3

    if-nez v3, :cond_2

    const-string v4, "Settings is not applicable to current SDK version; ignoring"

    invoke-static {v1, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/signedconfig/GlobalSettingsConfigApplicator;->mEvent:Lcom/android/server/signedconfig/SignedConfigEvent;

    const/16 v4, 0x8

    iput v4, v1, Lcom/android/server/signedconfig/SignedConfigEvent;->status:I

    return-void

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Updating global settings to version "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/android/server/signedconfig/SignedConfig;->version:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, v0, Lcom/android/server/signedconfig/SignedConfig;->version:I

    iget-object v4, v3, Lcom/android/server/signedconfig/SignedConfig$PerSdkConfig;->values:Ljava/util/Map;

    invoke-direct {p0, v1, v4}, Lcom/android/server/signedconfig/GlobalSettingsConfigApplicator;->updateCurrentConfig(ILjava/util/Map;)V

    iget-object v1, p0, Lcom/android/server/signedconfig/GlobalSettingsConfigApplicator;->mEvent:Lcom/android/server/signedconfig/SignedConfigEvent;

    const/4 v4, 0x1

    iput v4, v1, Lcom/android/server/signedconfig/SignedConfigEvent;->status:I

    return-void

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to parse global settings from package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/signedconfig/GlobalSettingsConfigApplicator;->mSourcePackage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v1, p0, Lcom/android/server/signedconfig/GlobalSettingsConfigApplicator;->mEvent:Lcom/android/server/signedconfig/SignedConfigEvent;

    const/4 v2, 0x5

    iput v2, v1, Lcom/android/server/signedconfig/SignedConfigEvent;->status:I

    return-void
.end method
