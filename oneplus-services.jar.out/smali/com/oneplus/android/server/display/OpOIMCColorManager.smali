.class public Lcom/oneplus/android/server/display/OpOIMCColorManager;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/android/server/display/OpOIMCColorManager$ColorDisable;,
        Lcom/oneplus/android/server/display/OpOIMCColorManager$GoogleMatrix;,
        Lcom/oneplus/android/server/display/OpOIMCColorManager$PaperColor;,
        Lcom/oneplus/android/server/display/OpOIMCColorManager$GrayColor;,
        Lcom/oneplus/android/server/display/OpOIMCColorManager$ColorBalance;
    }
.end annotation


# static fields
.field private static final DISABLE_COLOR_FAST:I = 0x0

.field private static final TAG:Ljava/lang/String; = "OpOIMCColorManager"

.field private static final Vpa:I = 0x38

.field private static final Wpa:I = 0x0

.field private static final Xpa:Ljava/lang/String; = "56-1"

.field private static final Ypa:Ljava/lang/String; = "56-0"

.field private static final Zpa:I = 0x0

.field private static final _pa:I = 0x1

.field private static final aqa:I = 0x2

.field private static final bqa:I = 0x3

.field private static final cqa:I = 0x4

.field private static final dqa:I = 0x2


# instance fields
.field public Jpa:Ljava/lang/String;

.field public Kpa:Lcom/oneplus/android/server/display/OpOIMCColorManager$ColorBalance;

.field public Lpa:Lcom/oneplus/android/server/display/OpOIMCColorManager$GrayColor;

.field public Mpa:Lcom/oneplus/android/server/display/OpOIMCColorManager$PaperColor;

.field public Npa:Lcom/oneplus/android/server/display/OpOIMCColorManager$ColorDisable;

.field public Opa:Lcom/oneplus/android/server/display/OpOIMCColorManager$GoogleMatrix;

.field private Ppa:Z

.field private Qpa:Z

.field private Rpa:Z

.field private Spa:Z

.field private Tpa:Z

.field public Upa:I

.field private mContext:Landroid/content/Context;

.field protected mOneplusColorDisplayManager:Lcom/oneplus/display/IOneplusColorDisplayManager;

.field protected mOneplusIrisManager:Lcom/oneplus/iris/IOneplusIrisManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "normal"

    iput-object v0, p0, Lcom/oneplus/android/server/display/OpOIMCColorManager;->Jpa:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/android/server/display/OpOIMCColorManager;->Ppa:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/display/OpOIMCColorManager;->Qpa:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/display/OpOIMCColorManager;->Rpa:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/display/OpOIMCColorManager;->Spa:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/display/OpOIMCColorManager;->Tpa:Z

    iput v0, p0, Lcom/oneplus/android/server/display/OpOIMCColorManager;->Upa:I

    iput-object p1, p0, Lcom/oneplus/android/server/display/OpOIMCColorManager;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/oneplus/android/server/display/OpOIMCColorManager$GrayColor;

    invoke-direct {v1, p0, p1}, Lcom/oneplus/android/server/display/OpOIMCColorManager$GrayColor;-><init>(Lcom/oneplus/android/server/display/OpOIMCColorManager;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/oneplus/android/server/display/OpOIMCColorManager;->Lpa:Lcom/oneplus/android/server/display/OpOIMCColorManager$GrayColor;

    new-instance v1, Lcom/oneplus/android/server/display/OpOIMCColorManager$ColorBalance;

    invoke-direct {v1, p0, p1}, Lcom/oneplus/android/server/display/OpOIMCColorManager$ColorBalance;-><init>(Lcom/oneplus/android/server/display/OpOIMCColorManager;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/oneplus/android/server/display/OpOIMCColorManager;->Kpa:Lcom/oneplus/android/server/display/OpOIMCColorManager$ColorBalance;

    new-instance v1, Lcom/oneplus/android/server/display/OpOIMCColorManager$ColorDisable;

    invoke-direct {v1, p0, p1}, Lcom/oneplus/android/server/display/OpOIMCColorManager$ColorDisable;-><init>(Lcom/oneplus/android/server/display/OpOIMCColorManager;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/oneplus/android/server/display/OpOIMCColorManager;->Npa:Lcom/oneplus/android/server/display/OpOIMCColorManager$ColorDisable;

    new-instance v1, Lcom/oneplus/android/server/display/OpOIMCColorManager$PaperColor;

    invoke-direct {v1, p0, p1}, Lcom/oneplus/android/server/display/OpOIMCColorManager$PaperColor;-><init>(Lcom/oneplus/android/server/display/OpOIMCColorManager;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/oneplus/android/server/display/OpOIMCColorManager;->Mpa:Lcom/oneplus/android/server/display/OpOIMCColorManager$PaperColor;

    new-instance v1, Lcom/oneplus/android/server/display/OpOIMCColorManager$GoogleMatrix;

    invoke-direct {v1, p0, p1}, Lcom/oneplus/android/server/display/OpOIMCColorManager$GoogleMatrix;-><init>(Lcom/oneplus/android/server/display/OpOIMCColorManager;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/oneplus/android/server/display/OpOIMCColorManager;->Opa:Lcom/oneplus/android/server/display/OpOIMCColorManager$GoogleMatrix;

    sget-object p1, Lcom/oneplus/android/context/IOneplusContext$EType;->ONEPLUS_COLORDISPLAY_MANAGER:Lcom/oneplus/android/context/IOneplusContext$EType;

    invoke-static {p1}, Lcom/oneplus/android/context/OneplusContext;->queryInterface(Lcom/oneplus/android/context/IOneplusContext$EType;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oneplus/display/IOneplusColorDisplayManager;

    iput-object p1, p0, Lcom/oneplus/android/server/display/OpOIMCColorManager;->mOneplusColorDisplayManager:Lcom/oneplus/display/IOneplusColorDisplayManager;

    const/4 p1, 0x1

    new-array p1, p1, [I

    const/16 v1, 0x10e

    aput v1, p1, v0

    invoke-static {p1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/oneplus/android/context/IOneplusContext$EType;->ONEPLUS_IRIS_SERVICE:Lcom/oneplus/android/context/IOneplusContext$EType;

    invoke-static {p1}, Lcom/oneplus/android/context/OneplusContext;->queryInterface(Lcom/oneplus/android/context/IOneplusContext$EType;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oneplus/iris/IOneplusIrisManager;

    iput-object p1, p0, Lcom/oneplus/android/server/display/OpOIMCColorManager;->mOneplusIrisManager:Lcom/oneplus/iris/IOneplusIrisManager;

    :cond_0
    return-void
.end method

.method static synthetic rtg(Lcom/oneplus/android/server/display/OpOIMCColorManager;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/android/server/display/OpOIMCColorManager;->Tpa:Z

    return p0
.end method

.method static synthetic rtg(Lcom/oneplus/android/server/display/OpOIMCColorManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/android/server/display/OpOIMCColorManager;->Tpa:Z

    return p1
.end method

.method static synthetic sis(Lcom/oneplus/android/server/display/OpOIMCColorManager;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/android/server/display/OpOIMCColorManager;->Rpa:Z

    return p0
.end method

.method static synthetic sis(Lcom/oneplus/android/server/display/OpOIMCColorManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/android/server/display/OpOIMCColorManager;->Rpa:Z

    return p1
.end method

.method static synthetic tsu(Lcom/oneplus/android/server/display/OpOIMCColorManager;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/android/server/display/OpOIMCColorManager;->Spa:Z

    return p0
.end method

.method static synthetic tsu(Lcom/oneplus/android/server/display/OpOIMCColorManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/android/server/display/OpOIMCColorManager;->Spa:Z

    return p1
.end method

.method static synthetic you(Lcom/oneplus/android/server/display/OpOIMCColorManager;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/android/server/display/OpOIMCColorManager;->Qpa:Z

    return p0
.end method

.method static synthetic you(Lcom/oneplus/android/server/display/OpOIMCColorManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/android/server/display/OpOIMCColorManager;->Qpa:Z

    return p1
.end method

.method static synthetic zta(Lcom/oneplus/android/server/display/OpOIMCColorManager;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/android/server/display/OpOIMCColorManager;->Ppa:Z

    return p0
.end method

.method static synthetic zta(Lcom/oneplus/android/server/display/OpOIMCColorManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/android/server/display/OpOIMCColorManager;->Ppa:Z

    return p1
.end method
