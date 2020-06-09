.class public Lcom/oneplus/android/server/config/OnePlusConfigServiceInjector;
.super Ljava/lang/Object;
.source "OnePlusConfigServiceInjector.java"


# static fields
.field private static onePlusConfigServiceInjector:Lcom/oneplus/android/server/config/IOnePlusConfigService;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getConfig(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 1

    sget-object v0, Lcom/oneplus/android/server/config/OnePlusConfigServiceInjector;->onePlusConfigServiceInjector:Lcom/oneplus/android/server/config/IOnePlusConfigService;

    if-nez v0, :cond_0

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_onlineconfig:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/android/server/config/IOnePlusConfigService;

    sput-object v0, Lcom/oneplus/android/server/config/OnePlusConfigServiceInjector;->onePlusConfigServiceInjector:Lcom/oneplus/android/server/config/IOnePlusConfigService;

    :cond_0
    sget-object v0, Lcom/oneplus/android/server/config/OnePlusConfigServiceInjector;->onePlusConfigServiceInjector:Lcom/oneplus/android/server/config/IOnePlusConfigService;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lcom/oneplus/android/server/config/IOnePlusConfigService;->getConfig(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static registerConfig(Lcom/oneplus/android/server/config/OnePlusConfigServiceUpdater;)V
    .locals 1

    sget-object v0, Lcom/oneplus/android/server/config/OnePlusConfigServiceInjector;->onePlusConfigServiceInjector:Lcom/oneplus/android/server/config/IOnePlusConfigService;

    if-nez v0, :cond_0

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_onlineconfig:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/android/server/config/IOnePlusConfigService;

    sput-object v0, Lcom/oneplus/android/server/config/OnePlusConfigServiceInjector;->onePlusConfigServiceInjector:Lcom/oneplus/android/server/config/IOnePlusConfigService;

    :cond_0
    sget-object v0, Lcom/oneplus/android/server/config/OnePlusConfigServiceInjector;->onePlusConfigServiceInjector:Lcom/oneplus/android/server/config/IOnePlusConfigService;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lcom/oneplus/android/server/config/IOnePlusConfigService;->registerConfig(Lcom/oneplus/android/server/config/OnePlusConfigServiceUpdater;)V

    :cond_1
    return-void
.end method
