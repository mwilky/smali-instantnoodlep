.class Lcom/oneplus/settings/better/OPFnaticModeIntroduction$2;
.super Ljava/lang/Object;
.source "OPFnaticModeIntroduction.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/better/OPFnaticModeIntroduction;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/better/OPFnaticModeIntroduction;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/better/OPFnaticModeIntroduction;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/better/OPFnaticModeIntroduction$2;->this$0:Lcom/oneplus/settings/better/OPFnaticModeIntroduction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "alwaysfnatic"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/oneplus/settings/better/OPFnaticModeIntroduction$2;->this$0:Lcom/oneplus/settings/better/OPFnaticModeIntroduction;

    new-instance p1, Landroid/content/Intent;

    const-string v0, "oneplus.intent.action.ONEPLUS_FNATIC_WALLPAPERS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
