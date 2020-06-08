.class Lcom/android/settings/users/RestrictedProfileSettings$2;
.super Ljava/lang/Object;
.source "RestrictedProfileSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/android/settings/users/RestrictedProfileSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/users/RestrictedProfileSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/users/RestrictedProfileSettings$2;->this$0:Lcom/android/settings/users/RestrictedProfileSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/users/RestrictedProfileSettings$2;->this$0:Lcom/android/settings/users/RestrictedProfileSettings;

    iget-object v1, v0, Lcom/android/settings/users/AppRestrictionsFragment;->mUserManager:Landroid/os/UserManager;

    iget-object v0, v0, Lcom/android/settings/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/os/UserManager;->removeUser(I)Z

    iget-object p0, p0, Lcom/android/settings/users/RestrictedProfileSettings$2;->this$0:Lcom/android/settings/users/RestrictedProfileSettings;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finishFragment()V

    return-void
.end method
