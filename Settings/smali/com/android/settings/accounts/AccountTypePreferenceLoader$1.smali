.class Lcom/android/settings/accounts/AccountTypePreferenceLoader$1;
.super Ljava/lang/Object;
.source "AccountTypePreferenceLoader.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accounts/AccountTypePreferenceLoader;->updatePreferenceIntents(Landroidx/preference/PreferenceGroup;Ljava/lang/String;Landroid/accounts/Account;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accounts/AccountTypePreferenceLoader;

.field final synthetic val$acccountType:Ljava/lang/String;

.field final synthetic val$pm:Landroid/content/pm/PackageManager;


# direct methods
.method constructor <init>(Lcom/android/settings/accounts/AccountTypePreferenceLoader;Landroid/content/pm/PackageManager;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/accounts/AccountTypePreferenceLoader$1;->this$0:Lcom/android/settings/accounts/AccountTypePreferenceLoader;

    iput-object p2, p0, Lcom/android/settings/accounts/AccountTypePreferenceLoader$1;->val$pm:Landroid/content/pm/PackageManager;

    iput-object p3, p0, Lcom/android/settings/accounts/AccountTypePreferenceLoader$1;->val$acccountType:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 3

    invoke-virtual {p1}, Landroidx/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/accounts/AccountTypePreferenceLoader$1;->this$0:Lcom/android/settings/accounts/AccountTypePreferenceLoader;

    iget-object v1, p0, Lcom/android/settings/accounts/AccountTypePreferenceLoader$1;->val$pm:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/android/settings/accounts/AccountTypePreferenceLoader$1;->val$acccountType:Ljava/lang/String;

    invoke-static {v0, v1, p1, v2}, Lcom/android/settings/accounts/AccountTypePreferenceLoader;->access$000(Lcom/android/settings/accounts/AccountTypePreferenceLoader;Landroid/content/pm/PackageManager;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/accounts/AccountTypePreferenceLoader$1;->this$0:Lcom/android/settings/accounts/AccountTypePreferenceLoader;

    invoke-static {v0}, Lcom/android/settings/accounts/AccountTypePreferenceLoader;->access$200(Lcom/android/settings/accounts/AccountTypePreferenceLoader;)Landroidx/preference/PreferenceFragmentCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/accounts/AccountTypePreferenceLoader$1;->this$0:Lcom/android/settings/accounts/AccountTypePreferenceLoader;

    invoke-static {p0}, Lcom/android/settings/accounts/AccountTypePreferenceLoader;->access$100(Lcom/android/settings/accounts/AccountTypePreferenceLoader;)Landroid/os/UserHandle;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Landroid/app/Activity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0

    :cond_0
    const-string p0, "Refusing to launch authenticator intent becauseit exploits Settings permissions: "

    const-string v0, "AccountTypePrefLoader"

    invoke-static {p0, p1, v0}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline36(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    const/4 p0, 0x1

    return p0
.end method
