.class Lcom/oneplus/settings/better/OPFnaticWallPapers$1;
.super Ljava/lang/Object;
.source "OPFnaticWallPapers.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/better/OPFnaticWallPapers;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/better/OPFnaticWallPapers;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/better/OPFnaticWallPapers$1;->this$0:Lcom/oneplus/settings/better/OPFnaticWallPapers;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    iget-object p1, p0, Lcom/oneplus/settings/better/OPFnaticWallPapers$1;->this$0:Lcom/oneplus/settings/better/OPFnaticWallPapers;

    invoke-static {p1}, Lcom/oneplus/settings/better/OPFnaticWallPapers;->access$000(Lcom/oneplus/settings/better/OPFnaticWallPapers;)I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/oneplus/settings/better/OPFnaticWallPapers$1;->this$0:Lcom/oneplus/settings/better/OPFnaticWallPapers;

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v0, -0x2

    const-string v1, "fnatic_mode_egg_activated"

    const-string v2, "1"

    invoke-static {p1, v1, v2, v0}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    iget-object p1, p0, Lcom/oneplus/settings/better/OPFnaticWallPapers$1;->this$0:Lcom/oneplus/settings/better/OPFnaticWallPapers;

    const v0, 0x7f120d9a

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/oneplus/settings/better/OPFnaticWallPapers;->access$200(Lcom/oneplus/settings/better/OPFnaticWallPapers;)[I

    move-result-object v4

    array-length v4, v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p1, v0, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    iget-object p0, p0, Lcom/oneplus/settings/better/OPFnaticWallPapers$1;->this$0:Lcom/oneplus/settings/better/OPFnaticWallPapers;

    invoke-static {p0}, Lcom/oneplus/settings/better/OPFnaticWallPapers;->access$300(Lcom/oneplus/settings/better/OPFnaticWallPapers;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/oneplus/settings/better/OPFnaticWallPapers$1;->this$0:Lcom/oneplus/settings/better/OPFnaticWallPapers;

    invoke-static {p0}, Lcom/oneplus/settings/better/OPFnaticWallPapers;->access$400(Lcom/oneplus/settings/better/OPFnaticWallPapers;)V

    :goto_0
    return-void
.end method
