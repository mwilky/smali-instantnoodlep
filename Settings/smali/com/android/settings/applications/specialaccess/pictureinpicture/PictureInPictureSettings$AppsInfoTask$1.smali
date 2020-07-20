.class Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureSettings$AppsInfoTask$1;
.super Ljava/lang/Object;
.source "PictureInPictureSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic this$1:Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureSettings$AppsInfoTask;

.field final synthetic val$appInfo:Landroid/content/pm/ApplicationInfo;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureSettings$AppsInfoTask;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureSettings$AppsInfoTask$1;->this$1:Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureSettings$AppsInfoTask;

    iput-object p2, p0, Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureSettings$AppsInfoTask$1;->val$packageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureSettings$AppsInfoTask$1;->val$appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 7

    const-class v0, Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureDetails;

    iget-object v2, p0, Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureSettings$AppsInfoTask$1;->val$packageName:Ljava/lang/String;

    iget-object p1, p0, Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureSettings$AppsInfoTask$1;->val$appInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object p0, p0, Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureSettings$AppsInfoTask$1;->this$1:Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureSettings$AppsInfoTask;

    iget-object v4, p0, Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureSettings$AppsInfoTask;->this$0:Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureSettings;

    invoke-virtual {v4}, Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureSettings;->getMetricsCategory()I

    move-result v6

    const v1, 0x7f121207

    const/4 v5, -0x1

    invoke-static/range {v0 .. v6}, Lcom/android/settings/applications/AppInfoBase;->startAppInfoFragment(Ljava/lang/Class;ILjava/lang/String;ILandroidx/fragment/app/Fragment;II)V

    const/4 p0, 0x1

    return p0
.end method
