.class public final synthetic Lcom/oneplus/settings/-$$Lambda$OPAdvancedSettings$7du_tj1b_8sZ0NW6ptIJhCKfhQ0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/oneplus/settings/-$$Lambda$OPAdvancedSettings$7du_tj1b_8sZ0NW6ptIJhCKfhQ0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/oneplus/settings/-$$Lambda$OPAdvancedSettings$7du_tj1b_8sZ0NW6ptIJhCKfhQ0;

    invoke-direct {v0}, Lcom/oneplus/settings/-$$Lambda$OPAdvancedSettings$7du_tj1b_8sZ0NW6ptIJhCKfhQ0;-><init>()V

    sput-object v0, Lcom/oneplus/settings/-$$Lambda$OPAdvancedSettings$7du_tj1b_8sZ0NW6ptIJhCKfhQ0;->INSTANCE:Lcom/oneplus/settings/-$$Lambda$OPAdvancedSettings$7du_tj1b_8sZ0NW6ptIJhCKfhQ0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Landroid/content/om/OverlayInfo;

    invoke-static {p1}, Lcom/oneplus/settings/OPAdvancedSettings;->lambda$static$0(Landroid/content/om/OverlayInfo;)I

    move-result p0

    return p0
.end method
