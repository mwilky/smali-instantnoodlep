.class Lcom/android/settings/applications/ClearDefaultsPreference$1;
.super Ljava/lang/Object;
.source "ClearDefaultsPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/applications/ClearDefaultsPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/ClearDefaultsPreference;

.field final synthetic val$view:Landroidx/preference/PreferenceViewHolder;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/ClearDefaultsPreference;Landroidx/preference/PreferenceViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/applications/ClearDefaultsPreference$1;->this$0:Lcom/android/settings/applications/ClearDefaultsPreference;

    iput-object p2, p0, Lcom/android/settings/applications/ClearDefaultsPreference$1;->val$view:Landroidx/preference/PreferenceViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    iget-object p1, p0, Lcom/android/settings/applications/ClearDefaultsPreference$1;->this$0:Lcom/android/settings/applications/ClearDefaultsPreference;

    invoke-static {p1}, Lcom/android/settings/applications/ClearDefaultsPreference;->access$000(Lcom/android/settings/applications/ClearDefaultsPreference;)Landroid/hardware/usb/IUsbManager;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    iget-object v0, p0, Lcom/android/settings/applications/ClearDefaultsPreference$1;->this$0:Lcom/android/settings/applications/ClearDefaultsPreference;

    invoke-static {v0}, Lcom/android/settings/applications/ClearDefaultsPreference;->access$200(Lcom/android/settings/applications/ClearDefaultsPreference;)Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/ClearDefaultsPreference$1;->this$0:Lcom/android/settings/applications/ClearDefaultsPreference;

    invoke-static {v1}, Lcom/android/settings/applications/ClearDefaultsPreference;->access$100(Lcom/android/settings/applications/ClearDefaultsPreference;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPackageName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/applications/ClearDefaultsPreference$1;->this$0:Lcom/android/settings/applications/ClearDefaultsPreference;

    invoke-static {v1}, Lcom/android/settings/applications/ClearDefaultsPreference;->access$100(Lcom/android/settings/applications/ClearDefaultsPreference;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ClearDefaultsPreference"

    invoke-static {v0, v1, v2}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline45(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/applications/ClearDefaultsPreference$1;->this$0:Lcom/android/settings/applications/ClearDefaultsPreference;

    invoke-static {v0}, Lcom/android/settings/applications/ClearDefaultsPreference;->access$100(Lcom/android/settings/applications/ClearDefaultsPreference;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/applications/ClearDefaultsPreference;->access$300(Lcom/android/settings/applications/ClearDefaultsPreference;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/ClearDefaultsPreference$1;->this$0:Lcom/android/settings/applications/ClearDefaultsPreference;

    invoke-static {v0}, Lcom/android/settings/applications/ClearDefaultsPreference;->access$200(Lcom/android/settings/applications/ClearDefaultsPreference;)Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/content/pm/PackageManager;->setDefaultBrowserPackageNameAsUser(Ljava/lang/String;I)Z

    :cond_0
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isO2()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/applications/ClearDefaultsPreference$1;->this$0:Lcom/android/settings/applications/ClearDefaultsPreference;

    invoke-static {v0}, Lcom/android/settings/applications/ClearDefaultsPreference;->access$100(Lcom/android/settings/applications/ClearDefaultsPreference;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/ClearDefaultsPreference$1;->this$0:Lcom/android/settings/applications/ClearDefaultsPreference;

    invoke-virtual {v1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "op_default_app_music"

    invoke-static {v1, v3}, Lcom/oneplus/lib/app/appcompat/MenuWrapperFactory;->getDefaultAppPackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/applications/ClearDefaultsPreference$1;->this$0:Lcom/android/settings/applications/ClearDefaultsPreference;

    invoke-virtual {v0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3, v1}, Lcom/oneplus/lib/app/appcompat/MenuWrapperFactory;->setDefaultAppPackageName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/ClearDefaultsPreference$1;->this$0:Lcom/android/settings/applications/ClearDefaultsPreference;

    invoke-static {v0}, Lcom/android/settings/applications/ClearDefaultsPreference;->access$100(Lcom/android/settings/applications/ClearDefaultsPreference;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/applications/ClearDefaultsPreference$1;->this$0:Lcom/android/settings/applications/ClearDefaultsPreference;

    invoke-virtual {v3}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "op_default_app_gallery"

    invoke-static {v3, v4}, Lcom/oneplus/lib/app/appcompat/MenuWrapperFactory;->getDefaultAppPackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/applications/ClearDefaultsPreference$1;->this$0:Lcom/android/settings/applications/ClearDefaultsPreference;

    invoke-virtual {v0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v4, v1}, Lcom/oneplus/lib/app/appcompat/MenuWrapperFactory;->setDefaultAppPackageName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/settings/applications/ClearDefaultsPreference$1;->this$0:Lcom/android/settings/applications/ClearDefaultsPreference;

    invoke-static {v0}, Lcom/android/settings/applications/ClearDefaultsPreference;->access$100(Lcom/android/settings/applications/ClearDefaultsPreference;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/applications/ClearDefaultsPreference$1;->this$0:Lcom/android/settings/applications/ClearDefaultsPreference;

    invoke-virtual {v3}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "op_default_app_email"

    invoke-static {v3, v4}, Lcom/oneplus/lib/app/appcompat/MenuWrapperFactory;->getDefaultAppPackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/applications/ClearDefaultsPreference$1;->this$0:Lcom/android/settings/applications/ClearDefaultsPreference;

    invoke-virtual {v0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v4, v1}, Lcom/oneplus/lib/app/appcompat/MenuWrapperFactory;->setDefaultAppPackageName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/settings/applications/ClearDefaultsPreference$1;->this$0:Lcom/android/settings/applications/ClearDefaultsPreference;

    invoke-static {v0}, Lcom/android/settings/applications/ClearDefaultsPreference;->access$100(Lcom/android/settings/applications/ClearDefaultsPreference;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/applications/ClearDefaultsPreference$1;->this$0:Lcom/android/settings/applications/ClearDefaultsPreference;

    invoke-virtual {v3}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "op_default_app_camera"

    invoke-static {v3, v4}, Lcom/oneplus/lib/app/appcompat/MenuWrapperFactory;->getDefaultAppPackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/applications/ClearDefaultsPreference$1;->this$0:Lcom/android/settings/applications/ClearDefaultsPreference;

    invoke-virtual {v0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v4, v1}, Lcom/oneplus/lib/app/appcompat/MenuWrapperFactory;->setDefaultAppPackageName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/applications/ClearDefaultsPreference$1;->this$0:Lcom/android/settings/applications/ClearDefaultsPreference;

    invoke-static {v0}, Lcom/android/settings/applications/ClearDefaultsPreference;->access$000(Lcom/android/settings/applications/ClearDefaultsPreference;)Landroid/hardware/usb/IUsbManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/ClearDefaultsPreference$1;->this$0:Lcom/android/settings/applications/ClearDefaultsPreference;

    invoke-static {v1}, Lcom/android/settings/applications/ClearDefaultsPreference;->access$100(Lcom/android/settings/applications/ClearDefaultsPreference;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/hardware/usb/IUsbManager;->clearDefaults(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v0, "mUsbManager.clearDefaults"

    invoke-static {v2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    iget-object p1, p0, Lcom/android/settings/applications/ClearDefaultsPreference$1;->this$0:Lcom/android/settings/applications/ClearDefaultsPreference;

    invoke-static {p1}, Lcom/android/settings/applications/ClearDefaultsPreference;->access$400(Lcom/android/settings/applications/ClearDefaultsPreference;)Landroid/appwidget/AppWidgetManager;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/applications/ClearDefaultsPreference$1;->this$0:Lcom/android/settings/applications/ClearDefaultsPreference;

    invoke-static {v0}, Lcom/android/settings/applications/ClearDefaultsPreference;->access$100(Lcom/android/settings/applications/ClearDefaultsPreference;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/appwidget/AppWidgetManager;->setBindAppWidgetPermission(Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/android/settings/applications/ClearDefaultsPreference$1;->val$view:Landroidx/preference/PreferenceViewHolder;

    const v0, 0x7f0a00bf

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object p0, p0, Lcom/android/settings/applications/ClearDefaultsPreference$1;->this$0:Lcom/android/settings/applications/ClearDefaultsPreference;

    invoke-static {p0, p1}, Lcom/android/settings/applications/ClearDefaultsPreference;->access$500(Lcom/android/settings/applications/ClearDefaultsPreference;Landroid/widget/TextView;)V

    :cond_5
    return-void
.end method
