.class Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$10;
.super Ljava/lang/Object;
.source "OPFingerPrintEditFragments.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->showRenameDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$10;->this$0:Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$10;->this$0:Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;

    invoke-static {p1}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->access$500(Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;)Lcom/oneplus/lib/widget/OPEditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$10;->this$0:Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;

    invoke-static {p1}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->access$600(Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;)Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object p0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$10;->this$0:Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const p1, 0x7f120eeb

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$10;->this$0:Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;

    invoke-static {v0, p1}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->access$602(Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$10;->this$0:Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;

    invoke-static {v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->access$300(Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;)Landroid/hardware/fingerprint/Fingerprint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/fingerprint/Fingerprint;->getBiometricId()I

    move-result v1

    invoke-static {v0, v1, p1}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->access$700(Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$10;->this$0:Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;

    invoke-static {v0, p1}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->access$602(Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$10;->this$0:Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;

    invoke-static {v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->access$800(Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;)Lcom/oneplus/settings/opfinger/OPFingerPrintEditCategory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditCategory;->setFingerprintName(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$10;->this$0:Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;

    invoke-static {p0}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->access$900(Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;)Landroid/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method
