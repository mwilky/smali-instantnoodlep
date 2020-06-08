.class Lcom/oneplus/settings/aboutphone/OPSecurityPatchLevel$1;
.super Ljava/lang/Object;
.source "OPSecurityPatchLevel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/aboutphone/OPSecurityPatchLevel;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/aboutphone/OPSecurityPatchLevel;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/aboutphone/OPSecurityPatchLevel;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/aboutphone/OPSecurityPatchLevel$1;->this$0:Lcom/oneplus/settings/aboutphone/OPSecurityPatchLevel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/oneplus/settings/aboutphone/OPSecurityPatchLevel;->access$000()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/oneplus/settings/aboutphone/OPSecurityPatchLevel$1;->this$0:Lcom/oneplus/settings/aboutphone/OPSecurityPatchLevel;

    invoke-static {v0}, Lcom/oneplus/settings/aboutphone/OPSecurityPatchLevel;->access$100(Lcom/oneplus/settings/aboutphone/OPSecurityPatchLevel;)Lcom/android/settings/applications/PackageManagerWrapper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/settings/applications/PackageManagerWrapper;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class p0, Lcom/oneplus/settings/aboutphone/OPSecurityPatchLevel;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Stop click action on SECURITY_PATCH_VALUE_ID : queryIntentActivities() returns empty"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p0, p0, Lcom/oneplus/settings/aboutphone/OPSecurityPatchLevel$1;->this$0:Lcom/oneplus/settings/aboutphone/OPSecurityPatchLevel;

    invoke-static {p0}, Lcom/oneplus/settings/aboutphone/OPSecurityPatchLevel;->access$200(Lcom/oneplus/settings/aboutphone/OPSecurityPatchLevel;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
