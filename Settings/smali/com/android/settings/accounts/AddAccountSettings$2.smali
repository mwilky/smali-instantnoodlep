.class Lcom/android/settings/accounts/AddAccountSettings$2;
.super Ljava/lang/Object;
.source "AddAccountSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accounts/AddAccountSettings;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accounts/AddAccountSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/accounts/AddAccountSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/accounts/AddAccountSettings$2;->this$0:Lcom/android/settings/accounts/AddAccountSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/accounts/AddAccountSettings$2;->this$0:Lcom/android/settings/accounts/AddAccountSettings;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
