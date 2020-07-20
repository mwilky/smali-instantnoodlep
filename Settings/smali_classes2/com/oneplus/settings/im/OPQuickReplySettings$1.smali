.class Lcom/oneplus/settings/im/OPQuickReplySettings$1;
.super Landroid/os/Handler;
.source "OPQuickReplySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/im/OPQuickReplySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/im/OPQuickReplySettings;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/im/OPQuickReplySettings;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/im/OPQuickReplySettings$1;->this$0:Lcom/oneplus/settings/im/OPQuickReplySettings;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget-object v0, p0, Lcom/oneplus/settings/im/OPQuickReplySettings$1;->this$0:Lcom/oneplus/settings/im/OPQuickReplySettings;

    iget-object v1, v0, Lcom/android/settings/SettingsPreferenceFragment;->mAdapter:Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;

    if-eqz v1, :cond_3

    invoke-static {v0}, Lcom/oneplus/settings/im/OPQuickReplySettings;->access$000(Lcom/oneplus/settings/im/OPQuickReplySettings;)Lcom/oneplus/settings/apploader/OPApplicationLoader;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oneplus/settings/im/OPQuickReplySettings$1;->this$0:Lcom/oneplus/settings/im/OPQuickReplySettings;

    invoke-static {v0}, Lcom/oneplus/settings/im/OPQuickReplySettings;->access$100(Lcom/oneplus/settings/im/OPQuickReplySettings;)Landroidx/preference/PreferenceCategory;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    iget-object v0, p0, Lcom/oneplus/settings/im/OPQuickReplySettings$1;->this$0:Lcom/oneplus/settings/im/OPQuickReplySettings;

    invoke-static {v0}, Lcom/oneplus/settings/im/OPQuickReplySettings;->access$200(Lcom/oneplus/settings/im/OPQuickReplySettings;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/oneplus/settings/im/OPQuickReplySettings$1;->this$0:Lcom/oneplus/settings/im/OPQuickReplySettings;

    invoke-static {v0}, Lcom/oneplus/settings/im/OPQuickReplySettings;->access$200(Lcom/oneplus/settings/im/OPQuickReplySettings;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/im/OPQuickReplySettings$1;->this$0:Lcom/oneplus/settings/im/OPQuickReplySettings;

    invoke-static {v1}, Lcom/oneplus/settings/im/OPQuickReplySettings;->access$000(Lcom/oneplus/settings/im/OPQuickReplySettings;)Lcom/oneplus/settings/apploader/OPApplicationLoader;

    move-result-object v1

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, p1}, Lcom/oneplus/settings/apploader/OPApplicationLoader;->getAppListByType(I)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/oneplus/settings/im/OPQuickReplySettings$1;->this$0:Lcom/oneplus/settings/im/OPQuickReplySettings;

    invoke-static {p1}, Lcom/oneplus/settings/im/OPQuickReplySettings;->access$200(Lcom/oneplus/settings/im/OPQuickReplySettings;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/better/OPAppModel;

    new-instance v1, Landroidx/preference/SwitchPreference;

    iget-object v2, p0, Lcom/oneplus/settings/im/OPQuickReplySettings$1;->this$0:Lcom/oneplus/settings/im/OPQuickReplySettings;

    invoke-static {v2}, Lcom/oneplus/settings/im/OPQuickReplySettings;->access$300(Lcom/oneplus/settings/im/OPQuickReplySettings;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroidx/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const v2, 0x7f0d0215

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setLayoutResource(I)V

    const v2, 0x7f0d0226

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setWidgetLayoutResource(I)V

    invoke-virtual {v0}, Lcom/oneplus/settings/better/OPAppModel;->getPkgName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v3}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0300c8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    :goto_1
    if-eqz v3, :cond_0

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/oneplus/settings/better/OPAppModel;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/oneplus/settings/better/OPAppModel;->getAppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->isQuickReplyAppSelected(Lcom/oneplus/settings/better/OPAppModel;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    new-instance v2, Lcom/oneplus/settings/im/OPQuickReplySettings$1$1;

    invoke-direct {v2, p0, v0}, Lcom/oneplus/settings/im/OPQuickReplySettings$1$1;-><init>(Lcom/oneplus/settings/im/OPQuickReplySettings$1;Lcom/oneplus/settings/better/OPAppModel;)V

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/oneplus/settings/im/OPQuickReplySettings$1;->this$0:Lcom/oneplus/settings/im/OPQuickReplySettings;

    invoke-static {v0}, Lcom/oneplus/settings/im/OPQuickReplySettings;->access$100(Lcom/oneplus/settings/im/OPQuickReplySettings;)Landroidx/preference/PreferenceCategory;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/oneplus/settings/im/OPQuickReplySettings$1;->this$0:Lcom/oneplus/settings/im/OPQuickReplySettings;

    invoke-static {p1}, Lcom/oneplus/settings/im/OPQuickReplySettings;->access$100(Lcom/oneplus/settings/im/OPQuickReplySettings;)Landroidx/preference/PreferenceCategory;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/oneplus/settings/im/OPQuickReplySettings$1;->this$0:Lcom/oneplus/settings/im/OPQuickReplySettings;

    invoke-static {p1}, Lcom/oneplus/settings/im/OPQuickReplySettings;->access$100(Lcom/oneplus/settings/im/OPQuickReplySettings;)Landroidx/preference/PreferenceCategory;

    move-result-object p1

    iget-object p0, p0, Lcom/oneplus/settings/im/OPQuickReplySettings$1;->this$0:Lcom/oneplus/settings/im/OPQuickReplySettings;

    invoke-static {p0}, Lcom/oneplus/settings/im/OPQuickReplySettings;->access$600(Lcom/oneplus/settings/im/OPQuickReplySettings;)Landroidx/preference/Preference;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :cond_3
    return-void
.end method
