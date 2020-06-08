.class public Lcom/oneplus/settings/defaultapp/view/DefaultMailPicker;
.super Lcom/oneplus/settings/defaultapp/view/DefaultBasePicker;
.source "DefaultMailPicker.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/settings/defaultapp/view/DefaultBasePicker;-><init>()V

    return-void
.end method


# virtual methods
.method protected getType()Ljava/lang/String;
    .locals 1

    sget-object p0, Lcom/oneplus/settings/defaultapp/DefaultAppConstants;->DEFAULTAPP_VALUE_LIST_KEY:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object p0, p0, v0

    return-object p0
.end method
