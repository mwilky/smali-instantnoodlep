.class Lcom/oneplus/airplane/AirplanePopupActivity$2;
.super Ljava/lang/Object;
.source "AirplanePopupActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/airplane/AirplanePopupActivity;->getDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/airplane/AirplanePopupActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/airplane/AirplanePopupActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/airplane/AirplanePopupActivity$2;->this$0:Lcom/oneplus/airplane/AirplanePopupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/airplane/AirplanePopupActivity$2;->this$0:Lcom/oneplus/airplane/AirplanePopupActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
