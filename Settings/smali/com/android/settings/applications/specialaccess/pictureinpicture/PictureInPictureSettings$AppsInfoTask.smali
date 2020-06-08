.class Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureSettings$AppsInfoTask;
.super Landroid/os/AsyncTask;
.source "PictureInPictureSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppsInfoTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/ArrayList<",
        "Landroid/util/Pair<",
        "Landroid/content/pm/ApplicationInfo;",
        "Ljava/lang/Integer;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureSettings;


# direct methods
.method synthetic constructor <init>(Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureSettings;Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureSettings$1;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureSettings$AppsInfoTask;->this$0:Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureSettings;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    iget-object p0, p0, Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureSettings$AppsInfoTask;->this$0:Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureSettings;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureSettings;->collectPipApps(I)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 9

    check-cast p1, Ljava/util/ArrayList;

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureSettings$AppsInfoTask;->this$0:Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureSettings;

    invoke-virtual {v0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    new-instance v1, Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureSettings$AppComparator;

    iget-object v2, p0, Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureSettings$AppsInfoTask;->this$0:Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureSettings;

    invoke-static {v2}, Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureSettings;->access$100(Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureSettings;)Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureSettings$AppComparator;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-static {p1, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v1, p0, Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureSettings$AppsInfoTask;->this$0:Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureSettings;

    invoke-static {v1}, Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureSettings;->access$200(Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureSettings;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    iget-object v5, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureSettings$AppsInfoTask;->this$0:Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureSettings;

    invoke-static {v6}, Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureSettings;->access$100(Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureSettings;)Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    new-instance v7, Lcom/android/settings/widget/AppPreference;

    invoke-direct {v7, v1}, Lcom/android/settings/widget/AppPreference;-><init>(Landroid/content/Context;)V

    iget-object v8, p0, Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureSettings$AppsInfoTask;->this$0:Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureSettings;

    invoke-static {v8}, Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureSettings;->access$300(Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureSettings;)Landroid/util/IconDrawableFactory;

    move-result-object v8

    invoke-virtual {v8, v3, v2}, Landroid/util/IconDrawableFactory;->getBadgedIcon(Landroid/content/pm/ApplicationInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureSettings$AppsInfoTask;->this$0:Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureSettings;

    invoke-static {v2}, Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureSettings;->access$100(Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureSettings;)Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v6, v4}, Landroid/content/pm/PackageManager;->getUserBadgedLabel(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget v2, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1, v2, v5}, Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureDetails;->getPreferenceSummary(Landroid/content/Context;ILjava/lang/String;)I

    move-result v2

    invoke-virtual {v7, v2}, Landroidx/preference/Preference;->setSummary(I)V

    new-instance v2, Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureSettings$AppsInfoTask$1;

    invoke-direct {v2, p0, v5, v3}, Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureSettings$AppsInfoTask$1;-><init>(Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureSettings$AppsInfoTask;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)V

    invoke-virtual {v7, v2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    invoke-virtual {v0, v7}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    :cond_0
    return-void
.end method
