.class public final synthetic Lcom/oneplus/settings/receiver/-$$Lambda$SettingsReceiver$uHhg75OTj5Qj163rjvrnoywbKqM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/oneplus/settings/receiver/-$$Lambda$SettingsReceiver$uHhg75OTj5Qj163rjvrnoywbKqM;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/oneplus/settings/receiver/-$$Lambda$SettingsReceiver$uHhg75OTj5Qj163rjvrnoywbKqM;

    invoke-direct {v0}, Lcom/oneplus/settings/receiver/-$$Lambda$SettingsReceiver$uHhg75OTj5Qj163rjvrnoywbKqM;-><init>()V

    sput-object v0, Lcom/oneplus/settings/receiver/-$$Lambda$SettingsReceiver$uHhg75OTj5Qj163rjvrnoywbKqM;->INSTANCE:Lcom/oneplus/settings/receiver/-$$Lambda$SettingsReceiver$uHhg75OTj5Qj163rjvrnoywbKqM;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Landroid/content/om/OverlayInfo;

    invoke-static {p1}, Lcom/oneplus/settings/receiver/SettingsReceiver;->lambda$setOverlay$1(Landroid/content/om/OverlayInfo;)Z

    move-result p0

    return p0
.end method
