.class Lcom/oneplus/settings/controllers/UstWfcStatusTracker$1;
.super Landroid/os/Handler;
.source "UstWfcStatusTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/controllers/UstWfcStatusTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/controllers/UstWfcStatusTracker;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/controllers/UstWfcStatusTracker;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/controllers/UstWfcStatusTracker$1;->this$0:Lcom/oneplus/settings/controllers/UstWfcStatusTracker;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "status"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Receive WFC status is "

    invoke-static {v0, p1}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline17(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/settings/controllers/UstWfcStatusTracker;->access$000(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/oneplus/settings/controllers/UstWfcStatusTracker$1;->this$0:Lcom/oneplus/settings/controllers/UstWfcStatusTracker;

    invoke-static {p0}, Lcom/oneplus/settings/controllers/UstWfcStatusTracker;->access$100(Lcom/oneplus/settings/controllers/UstWfcStatusTracker;)Landroidx/preference/Preference;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/oneplus/settings/controllers/UstWfcStatusTracker$1;->this$0:Lcom/oneplus/settings/controllers/UstWfcStatusTracker;

    invoke-static {p1}, Lcom/oneplus/settings/controllers/UstWfcStatusTracker;->access$100(Lcom/oneplus/settings/controllers/UstWfcStatusTracker;)Landroidx/preference/Preference;

    move-result-object p1

    iget-object p0, p0, Lcom/oneplus/settings/controllers/UstWfcStatusTracker$1;->this$0:Lcom/oneplus/settings/controllers/UstWfcStatusTracker;

    invoke-static {p0}, Lcom/oneplus/settings/controllers/UstWfcStatusTracker;->access$200(Lcom/oneplus/settings/controllers/UstWfcStatusTracker;)Landroid/content/Context;

    move-result-object p0

    const v0, 0x7f12114f

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
