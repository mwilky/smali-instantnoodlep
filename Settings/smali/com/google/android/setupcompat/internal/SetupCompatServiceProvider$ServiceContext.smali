.class final Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$ServiceContext;
.super Ljava/lang/Object;
.source "SetupCompatServiceProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ServiceContext"
.end annotation


# instance fields
.field final compatService:Lcom/google/android/setupcompat/ISetupCompatService;

.field final state:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;


# direct methods
.method private constructor <init>(Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;Lcom/google/android/setupcompat/ISetupCompatService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$ServiceContext;->state:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

    iput-object p2, p0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$ServiceContext;->compatService:Lcom/google/android/setupcompat/ISetupCompatService;

    sget-object p0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;->CONNECTED:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

    if-ne p1, p0, :cond_0

    const-string p0, "CompatService cannot be null when state is connected"

    invoke-static {p2, p0}, Lcom/google/android/setupcompat/R$layout;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;Lcom/google/android/setupcompat/ISetupCompatService;Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$ServiceContext;->state:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

    iput-object p2, p0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$ServiceContext;->compatService:Lcom/google/android/setupcompat/ISetupCompatService;

    sget-object p0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;->CONNECTED:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

    if-ne p1, p0, :cond_0

    const-string p0, "CompatService cannot be null when state is connected"

    invoke-static {p2, p0}, Lcom/google/android/setupcompat/R$layout;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$1;)V
    .locals 0

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$ServiceContext;-><init>(Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;Lcom/google/android/setupcompat/ISetupCompatService;)V

    return-void
.end method
