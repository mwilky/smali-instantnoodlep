.class Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$3;
.super Ljava/lang/Object;
.source "LocaleDragAndDropAdapter.java"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;


# instance fields
.field final synthetic this$0:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;


# direct methods
.method constructor <init>(Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$3;->this$0:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationsFinished()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$3;->this$0:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-static {v0}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->access$200(Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;)Landroid/os/LocaleList;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$3;->this$0:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-static {v0}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->access$200(Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;)Landroid/os/LocaleList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$3;->this$0:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-static {v1}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->access$300(Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;)Landroid/os/LocaleList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "mLocalesToSetNext : "

    invoke-static {v0}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline23(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$3;->this$0:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-static {v1}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->access$200(Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;)Landroid/os/LocaleList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocaleDragAndDropAdapter"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$3;->this$0:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-static {v0}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->access$200(Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;)Landroid/os/LocaleList;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/LocalePicker;->updateLocales(Landroid/os/LocaleList;)V

    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$3;->this$0:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-static {v0}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->access$200(Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;)Landroid/os/LocaleList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->access$302(Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;Landroid/os/LocaleList;)Landroid/os/LocaleList;

    new-instance v0, Lcom/android/settings/shortcut/ShortcutsUpdateTask;

    iget-object v1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$3;->this$0:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-static {v1}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->access$400(Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/shortcut/ShortcutsUpdateTask;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$3;->this$0:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->access$202(Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;Landroid/os/LocaleList;)Landroid/os/LocaleList;

    iget-object p0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$3;->this$0:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/text/NumberFormat;->getNumberInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->access$502(Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;Ljava/text/NumberFormat;)Ljava/text/NumberFormat;

    :cond_1
    :goto_0
    return-void
.end method
