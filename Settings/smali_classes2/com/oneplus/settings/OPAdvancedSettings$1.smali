.class Lcom/oneplus/settings/OPAdvancedSettings$1;
.super Landroid/database/ContentObserver;
.source "OPAdvancedSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/OPAdvancedSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/OPAdvancedSettings;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/OPAdvancedSettings;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/OPAdvancedSettings$1;->this$0:Lcom/oneplus/settings/OPAdvancedSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/OPAdvancedSettings$1;->this$0:Lcom/oneplus/settings/OPAdvancedSettings;

    invoke-static {p0}, Lcom/oneplus/settings/OPAdvancedSettings;->access$000(Lcom/oneplus/settings/OPAdvancedSettings;)V

    return-void
.end method
