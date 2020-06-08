.class public Lcom/oneplus/settings/defaultapp/controller/DefaultGalleryController;
.super Lcom/oneplus/settings/defaultapp/controller/DefaultBasePreferenceController;
.source "DefaultGalleryController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/settings/defaultapp/controller/DefaultBasePreferenceController;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected getType()Ljava/lang/String;
    .locals 1

    sget-object p0, Lcom/oneplus/settings/defaultapp/DefaultAppConstants;->DEFAULTAPP_VALUE_LIST_KEY:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object p0, p0, v0

    return-object p0
.end method
