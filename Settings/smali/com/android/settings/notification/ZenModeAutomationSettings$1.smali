.class Lcom/android/settings/notification/ZenModeAutomationSettings$1;
.super Ljava/lang/Object;
.source "ZenModeAutomationSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/ZenModeAutomationSettings;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/ZenModeAutomationSettings;

.field final synthetic val$rules:[Ljava/util/Map$Entry;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/ZenModeAutomationSettings;[Ljava/util/Map$Entry;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/notification/ZenModeAutomationSettings$1;->this$0:Lcom/android/settings/notification/ZenModeAutomationSettings;

    iput-object p2, p0, Lcom/android/settings/notification/ZenModeAutomationSettings$1;->val$rules:[Ljava/util/Map$Entry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 p1, 0x0

    :goto_0
    iget-object p2, p0, Lcom/android/settings/notification/ZenModeAutomationSettings$1;->val$rules:[Ljava/util/Map$Entry;

    array-length p2, p2

    if-ge p1, p2, :cond_1

    iget-object p2, p0, Lcom/android/settings/notification/ZenModeAutomationSettings$1;->this$0:Lcom/android/settings/notification/ZenModeAutomationSettings;

    invoke-static {p2}, Lcom/android/settings/notification/ZenModeAutomationSettings;->access$000(Lcom/android/settings/notification/ZenModeAutomationSettings;)[Z

    move-result-object p2

    aget-boolean p2, p2, p1

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/android/settings/notification/ZenModeAutomationSettings$1;->this$0:Lcom/android/settings/notification/ZenModeAutomationSettings;

    iget-object v0, p2, Lcom/android/settings/notification/ZenModeSettingsBase;->mBackend:Lcom/android/settings/notification/ZenModeBackend;

    invoke-static {p2}, Lcom/android/settings/notification/ZenModeAutomationSettings;->access$100(Lcom/android/settings/notification/ZenModeAutomationSettings;)[Ljava/lang/String;

    move-result-object p2

    aget-object p2, p2, p1

    invoke-virtual {v0, p2}, Lcom/android/settings/notification/ZenModeBackend;->removeZenRule(Ljava/lang/String;)Z

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
