.class Lcom/android/server/signedconfig/SignedConfigService$UpdateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SignedConfigService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/signedconfig/SignedConfigService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UpdateReceiver"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/signedconfig/SignedConfigService$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/signedconfig/SignedConfigService$UpdateReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    new-instance v0, Lcom/android/server/signedconfig/SignedConfigService;

    invoke-direct {v0, p1}, Lcom/android/server/signedconfig/SignedConfigService;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Lcom/android/server/signedconfig/SignedConfigService;->handlePackageBroadcast(Landroid/content/Intent;)V

    return-void
.end method
