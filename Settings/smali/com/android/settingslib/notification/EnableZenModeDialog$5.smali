.class Lcom/android/settingslib/notification/EnableZenModeDialog$5;
.super Ljava/lang/Object;
.source "EnableZenModeDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/android/settingslib/notification/EnableZenModeDialog;

.field final synthetic val$row:Landroid/view/View;

.field final synthetic val$rowId:I

.field final synthetic val$tag:Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;


# direct methods
.method constructor <init>(Lcom/android/settingslib/notification/EnableZenModeDialog;Landroid/view/View;Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingslib/notification/EnableZenModeDialog$5;->this$0:Lcom/android/settingslib/notification/EnableZenModeDialog;

    iput-object p2, p0, Lcom/android/settingslib/notification/EnableZenModeDialog$5;->val$row:Landroid/view/View;

    iput-object p3, p0, Lcom/android/settingslib/notification/EnableZenModeDialog$5;->val$tag:Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;

    iput p4, p0, Lcom/android/settingslib/notification/EnableZenModeDialog$5;->val$rowId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/android/settingslib/notification/EnableZenModeDialog$5;->this$0:Lcom/android/settingslib/notification/EnableZenModeDialog;

    iget-object v0, p0, Lcom/android/settingslib/notification/EnableZenModeDialog$5;->val$row:Landroid/view/View;

    iget-object v1, p0, Lcom/android/settingslib/notification/EnableZenModeDialog$5;->val$tag:Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;

    iget p0, p0, Lcom/android/settingslib/notification/EnableZenModeDialog$5;->val$rowId:I

    const/4 v2, 0x1

    invoke-static {p1, v0, v1, v2, p0}, Lcom/android/settingslib/notification/EnableZenModeDialog;->access$500(Lcom/android/settingslib/notification/EnableZenModeDialog;Landroid/view/View;Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;ZI)V

    return-void
.end method
