.class final enum Lcom/android/settings/TrustedCredentialsSettings$Tab;
.super Ljava/lang/Enum;
.source "TrustedCredentialsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/TrustedCredentialsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Tab"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/settings/TrustedCredentialsSettings$Tab;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings/TrustedCredentialsSettings$Tab;

.field public static final enum SYSTEM:Lcom/android/settings/TrustedCredentialsSettings$Tab;

.field public static final enum USER:Lcom/android/settings/TrustedCredentialsSettings$Tab;


# instance fields
.field private final mContentView:I

.field private final mLabel:I

.field private final mProgress:I

.field private final mSwitch:Z

.field private final mTag:Ljava/lang/String;

.field private final mView:I


# direct methods
.method static constructor <clinit>()V
    .locals 19

    new-instance v9, Lcom/android/settings/TrustedCredentialsSettings$Tab;

    const-string v1, "SYSTEM"

    const-string v3, "system"

    const v4, 0x7f1216d1

    const v5, 0x7f0a06fc

    const v6, 0x7f0a06fb

    const v7, 0x7f0a06f5

    const/4 v8, 0x1

    const/4 v2, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/android/settings/TrustedCredentialsSettings$Tab;-><init>(Ljava/lang/String;ILjava/lang/String;IIIIZ)V

    sput-object v9, Lcom/android/settings/TrustedCredentialsSettings$Tab;->SYSTEM:Lcom/android/settings/TrustedCredentialsSettings$Tab;

    new-instance v0, Lcom/android/settings/TrustedCredentialsSettings$Tab;

    const-string v11, "USER"

    const/4 v12, 0x1

    const-string v13, "user"

    const v14, 0x7f1216d3

    const v15, 0x7f0a079f

    const v16, 0x7f0a079e

    const v17, 0x7f0a0794

    const/16 v18, 0x0

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Lcom/android/settings/TrustedCredentialsSettings$Tab;-><init>(Ljava/lang/String;ILjava/lang/String;IIIIZ)V

    sput-object v0, Lcom/android/settings/TrustedCredentialsSettings$Tab;->USER:Lcom/android/settings/TrustedCredentialsSettings$Tab;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/settings/TrustedCredentialsSettings$Tab;

    sget-object v1, Lcom/android/settings/TrustedCredentialsSettings$Tab;->SYSTEM:Lcom/android/settings/TrustedCredentialsSettings$Tab;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/TrustedCredentialsSettings$Tab;->USER:Lcom/android/settings/TrustedCredentialsSettings$Tab;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/settings/TrustedCredentialsSettings$Tab;->$VALUES:[Lcom/android/settings/TrustedCredentialsSettings$Tab;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;IIIIZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIIIZ)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/android/settings/TrustedCredentialsSettings$Tab;->mTag:Ljava/lang/String;

    iput p4, p0, Lcom/android/settings/TrustedCredentialsSettings$Tab;->mLabel:I

    iput p5, p0, Lcom/android/settings/TrustedCredentialsSettings$Tab;->mView:I

    iput p6, p0, Lcom/android/settings/TrustedCredentialsSettings$Tab;->mProgress:I

    iput p7, p0, Lcom/android/settings/TrustedCredentialsSettings$Tab;->mContentView:I

    iput-boolean p8, p0, Lcom/android/settings/TrustedCredentialsSettings$Tab;->mSwitch:Z

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/TrustedCredentialsSettings$Tab;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsSettings$Tab;->mTag:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/android/settings/TrustedCredentialsSettings$Tab;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/settings/TrustedCredentialsSettings$Tab;->mSwitch:Z

    return p0
.end method

.method static synthetic access$200(Lcom/android/settings/TrustedCredentialsSettings$Tab;)I
    .locals 0

    iget p0, p0, Lcom/android/settings/TrustedCredentialsSettings$Tab;->mView:I

    return p0
.end method

.method static synthetic access$2500(Lcom/android/settings/TrustedCredentialsSettings$Tab;)I
    .locals 0

    iget p0, p0, Lcom/android/settings/TrustedCredentialsSettings$Tab;->mProgress:I

    return p0
.end method

.method static synthetic access$2700(Lcom/android/settings/TrustedCredentialsSettings$Tab;Landroid/security/IKeyChainService;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/settings/TrustedCredentialsSettings$Tab;->getAliases(Landroid/security/IKeyChainService;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/settings/TrustedCredentialsSettings$Tab;)I
    .locals 0

    iget p0, p0, Lcom/android/settings/TrustedCredentialsSettings$Tab;->mLabel:I

    return p0
.end method

.method static synthetic access$3400(Lcom/android/settings/TrustedCredentialsSettings$Tab;Landroid/security/IKeyChainService;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    invoke-interface {p1, p2}, Landroid/security/IKeyChainService;->containsCaAlias(Ljava/lang/String;)Z

    move-result p0

    xor-int/2addr p0, v0

    :goto_0
    return p0
.end method

.method static synthetic access$500(Lcom/android/settings/TrustedCredentialsSettings$Tab;)I
    .locals 0

    iget p0, p0, Lcom/android/settings/TrustedCredentialsSettings$Tab;->mContentView:I

    return p0
.end method

.method private getAliases(Landroid/security/IKeyChainService;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/security/IKeyChainService;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    invoke-interface {p1}, Landroid/security/IKeyChainService;->getUserCaAliases()Landroid/content/pm/StringParceledListSlice;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/StringParceledListSlice;->getList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    invoke-interface {p1}, Landroid/security/IKeyChainService;->getSystemCaAliases()Landroid/content/pm/StringParceledListSlice;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/StringParceledListSlice;->getList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/TrustedCredentialsSettings$Tab;
    .locals 1

    const-class v0, Lcom/android/settings/TrustedCredentialsSettings$Tab;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/settings/TrustedCredentialsSettings$Tab;

    return-object p0
.end method

.method public static values()[Lcom/android/settings/TrustedCredentialsSettings$Tab;
    .locals 1

    sget-object v0, Lcom/android/settings/TrustedCredentialsSettings$Tab;->$VALUES:[Lcom/android/settings/TrustedCredentialsSettings$Tab;

    invoke-virtual {v0}, [Lcom/android/settings/TrustedCredentialsSettings$Tab;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/TrustedCredentialsSettings$Tab;

    return-object v0
.end method
