.class Lcom/oneplus/settings/better/OPGamingMode$1$1;
.super Ljava/lang/Object;
.source "OPGamingMode.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/better/OPGamingMode$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/settings/better/OPGamingMode$1;

.field final synthetic val$model:Lcom/oneplus/settings/better/OPAppModel;

.field final synthetic val$pref:Lcom/oneplus/settings/ui/OPTextViewButtonPreference;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/better/OPGamingMode$1;Lcom/oneplus/settings/ui/OPTextViewButtonPreference;Lcom/oneplus/settings/better/OPAppModel;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/better/OPGamingMode$1$1;->this$1:Lcom/oneplus/settings/better/OPGamingMode$1;

    iput-object p2, p0, Lcom/oneplus/settings/better/OPGamingMode$1$1;->val$pref:Lcom/oneplus/settings/ui/OPTextViewButtonPreference;

    iput-object p3, p0, Lcom/oneplus/settings/better/OPGamingMode$1$1;->val$model:Lcom/oneplus/settings/better/OPAppModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object p1, p0, Lcom/oneplus/settings/better/OPGamingMode$1$1;->val$pref:Lcom/oneplus/settings/ui/OPTextViewButtonPreference;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->setButtonEnable(Z)V

    iget-object p1, p0, Lcom/oneplus/settings/better/OPGamingMode$1$1;->this$1:Lcom/oneplus/settings/better/OPGamingMode$1;

    iget-object p1, p1, Lcom/oneplus/settings/better/OPGamingMode$1;->this$0:Lcom/oneplus/settings/better/OPGamingMode;

    invoke-static {p1}, Lcom/oneplus/settings/better/OPGamingMode;->access$000(Lcom/oneplus/settings/better/OPGamingMode;)Landroidx/preference/PreferenceCategory;

    move-result-object p1

    iget-object v0, p0, Lcom/oneplus/settings/better/OPGamingMode$1$1;->val$pref:Lcom/oneplus/settings/ui/OPTextViewButtonPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    iget-object p1, p0, Lcom/oneplus/settings/better/OPGamingMode$1$1;->this$1:Lcom/oneplus/settings/better/OPGamingMode$1;

    iget-object p1, p1, Lcom/oneplus/settings/better/OPGamingMode$1;->this$0:Lcom/oneplus/settings/better/OPGamingMode;

    invoke-static {p1}, Lcom/oneplus/settings/better/OPGamingMode;->access$400(Lcom/oneplus/settings/better/OPGamingMode;)Landroid/app/AppOpsManager;

    move-result-object p1

    iget-object v0, p0, Lcom/oneplus/settings/better/OPGamingMode$1$1;->val$model:Lcom/oneplus/settings/better/OPAppModel;

    invoke-virtual {v0}, Lcom/oneplus/settings/better/OPAppModel;->getUid()I

    move-result v0

    iget-object v1, p0, Lcom/oneplus/settings/better/OPGamingMode$1$1;->val$model:Lcom/oneplus/settings/better/OPAppModel;

    invoke-virtual {v1}, Lcom/oneplus/settings/better/OPAppModel;->getPkgName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3ec

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    new-instance p1, Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oneplus/settings/better/OPGamingMode$1$1;->this$1:Lcom/oneplus/settings/better/OPGamingMode$1;

    iget-object v0, v0, Lcom/oneplus/settings/better/OPGamingMode$1;->this$0:Lcom/oneplus/settings/better/OPGamingMode;

    invoke-static {v0}, Lcom/oneplus/settings/better/OPGamingMode;->access$300(Lcom/oneplus/settings/better/OPGamingMode;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->getGameModeAppListString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oneplus/settings/better/OPGamingMode$1$1;->this$1:Lcom/oneplus/settings/better/OPGamingMode$1;

    iget-object v0, v0, Lcom/oneplus/settings/better/OPGamingMode$1;->this$0:Lcom/oneplus/settings/better/OPGamingMode;

    invoke-static {v0}, Lcom/oneplus/settings/better/OPGamingMode;->access$300(Lcom/oneplus/settings/better/OPGamingMode;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/better/OPGamingMode$1$1;->val$model:Lcom/oneplus/settings/better/OPAppModel;

    invoke-static {v0, v1}, Lcom/oneplus/settings/utils/OPUtils;->isInRemovedGameAppListString(Landroid/content/Context;Lcom/oneplus/settings/better/OPAppModel;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/better/OPGamingMode$1$1;->val$model:Lcom/oneplus/settings/better/OPAppModel;

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->getGameModeAppString(Lcom/oneplus/settings/better/OPAppModel;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oneplus/settings/better/OPGamingMode$1$1;->this$1:Lcom/oneplus/settings/better/OPGamingMode$1;

    iget-object p0, p0, Lcom/oneplus/settings/better/OPGamingMode$1;->this$0:Lcom/oneplus/settings/better/OPGamingMode;

    invoke-static {p0}, Lcom/oneplus/settings/better/OPGamingMode;->access$300(Lcom/oneplus/settings/better/OPGamingMode;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "op_gamemode_removed_packages_by_user"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    sget-object p0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {p0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
