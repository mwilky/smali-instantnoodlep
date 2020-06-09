.class public abstract Lcom/oneplus/android/server/config/OnePlusConfigServiceUpdater;
.super Ljava/lang/Object;
.source "OnePlusConfigServiceUpdater.java"


# instance fields
.field public mConfigName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oneplus/android/server/config/OnePlusConfigServiceUpdater;->mConfigName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getConfigName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/android/server/config/OnePlusConfigServiceUpdater;->mConfigName:Ljava/lang/String;

    return-object v0
.end method

.method public abstract updateConfig(Lorg/json/JSONArray;)V
.end method
