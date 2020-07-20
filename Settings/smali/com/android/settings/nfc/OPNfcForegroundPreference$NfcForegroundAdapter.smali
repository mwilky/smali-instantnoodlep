.class Lcom/android/settings/nfc/OPNfcForegroundPreference$NfcForegroundAdapter;
.super Landroid/widget/BaseAdapter;
.source "OPNfcForegroundPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/nfc/OPNfcForegroundPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NfcForegroundAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/nfc/OPNfcForegroundPreference$NfcForegroundAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/nfc/OPNfcForegroundPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/nfc/OPNfcForegroundPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/nfc/OPNfcForegroundPreference$NfcForegroundAdapter;->this$0:Lcom/android/settings/nfc/OPNfcForegroundPreference;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 0

    iget-object p0, p0, Lcom/android/settings/nfc/OPNfcForegroundPreference$NfcForegroundAdapter;->this$0:Lcom/android/settings/nfc/OPNfcForegroundPreference;

    invoke-static {p0}, Lcom/android/settings/nfc/OPNfcForegroundPreference;->access$000(Lcom/android/settings/nfc/OPNfcForegroundPreference;)[Ljava/lang/String;

    move-result-object p0

    array-length p0, p0

    return p0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/nfc/OPNfcForegroundPreference$NfcForegroundAdapter;->this$0:Lcom/android/settings/nfc/OPNfcForegroundPreference;

    invoke-static {p0}, Lcom/android/settings/nfc/OPNfcForegroundPreference;->access$000(Lcom/android/settings/nfc/OPNfcForegroundPreference;)[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, p1

    return-object p0
.end method

.method public getItemId(I)J
    .locals 0

    int-to-long p0, p1

    return-wide p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    iget-object v0, p0, Lcom/android/settings/nfc/OPNfcForegroundPreference$NfcForegroundAdapter;->this$0:Lcom/android/settings/nfc/OPNfcForegroundPreference;

    invoke-static {v0}, Lcom/android/settings/nfc/OPNfcForegroundPreference;->access$000(Lcom/android/settings/nfc/OPNfcForegroundPreference;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p1

    const/4 v1, 0x0

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/android/settings/nfc/OPNfcForegroundPreference$NfcForegroundAdapter;->this$0:Lcom/android/settings/nfc/OPNfcForegroundPreference;

    invoke-static {p2}, Lcom/android/settings/nfc/OPNfcForegroundPreference;->access$100(Lcom/android/settings/nfc/OPNfcForegroundPreference;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v2, 0x7f0d01e3

    invoke-virtual {p2, v2, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lcom/android/settings/nfc/OPNfcForegroundPreference$NfcForegroundAdapter$ViewHolder;

    invoke-direct {p3, p0}, Lcom/android/settings/nfc/OPNfcForegroundPreference$NfcForegroundAdapter$ViewHolder;-><init>(Lcom/android/settings/nfc/OPNfcForegroundPreference$NfcForegroundAdapter;)V

    const v2, 0x7f0a0462

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p3, Lcom/android/settings/nfc/OPNfcForegroundPreference$NfcForegroundAdapter$ViewHolder;->root:Landroid/view/View;

    const v2, 0x7f0a02a0

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckedTextView;

    iput-object v2, p3, Lcom/android/settings/nfc/OPNfcForegroundPreference$NfcForegroundAdapter$ViewHolder;->title:Landroid/widget/CheckedTextView;

    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/settings/nfc/OPNfcForegroundPreference$NfcForegroundAdapter$ViewHolder;

    :goto_0
    iget-object v2, p3, Lcom/android/settings/nfc/OPNfcForegroundPreference$NfcForegroundAdapter$ViewHolder;->title:Landroid/widget/CheckedTextView;

    invoke-virtual {v2, v0}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/settings/nfc/OPNfcForegroundPreference$NfcForegroundAdapter;->this$0:Lcom/android/settings/nfc/OPNfcForegroundPreference;

    invoke-static {v2}, Lcom/android/settings/nfc/OPNfcForegroundPreference;->access$200(Lcom/android/settings/nfc/OPNfcForegroundPreference;)Lcom/android/settings/nfc/PaymentBackend;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/nfc/PaymentBackend;->isForegroundMode()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_1
    if-ne p1, v3, :cond_2

    :goto_1
    move p1, v3

    goto :goto_2

    :cond_2
    move p1, v1

    :goto_2
    if-eqz p1, :cond_3

    iget-object p1, p3, Lcom/android/settings/nfc/OPNfcForegroundPreference$NfcForegroundAdapter$ViewHolder;->title:Landroid/widget/CheckedTextView;

    invoke-virtual {p1, v3}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto :goto_3

    :cond_3
    iget-object p1, p3, Lcom/android/settings/nfc/OPNfcForegroundPreference$NfcForegroundAdapter$ViewHolder;->title:Landroid/widget/CheckedTextView;

    invoke-virtual {p1, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    :goto_3
    iget-object p1, p3, Lcom/android/settings/nfc/OPNfcForegroundPreference$NfcForegroundAdapter$ViewHolder;->root:Landroid/view/View;

    new-instance p3, Lcom/android/settings/nfc/-$$Lambda$OPNfcForegroundPreference$NfcForegroundAdapter$qNvWbnsR7zJv3EuWuzylUkURco4;

    invoke-direct {p3, p0, v0}, Lcom/android/settings/nfc/-$$Lambda$OPNfcForegroundPreference$NfcForegroundAdapter$qNvWbnsR7zJv3EuWuzylUkURco4;-><init>(Lcom/android/settings/nfc/OPNfcForegroundPreference$NfcForegroundAdapter;Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method

.method public synthetic lambda$getView$0$OPNfcForegroundPreference$NfcForegroundAdapter(Ljava/lang/String;Landroid/view/View;)V
    .locals 2

    iget-object p2, p0, Lcom/android/settings/nfc/OPNfcForegroundPreference$NfcForegroundAdapter;->this$0:Lcom/android/settings/nfc/OPNfcForegroundPreference;

    invoke-static {p2, p1}, Lcom/android/settings/nfc/OPNfcForegroundPreference;->access$300(Lcom/android/settings/nfc/OPNfcForegroundPreference;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/android/settings/nfc/OPNfcForegroundPreference$NfcForegroundAdapter;->this$0:Lcom/android/settings/nfc/OPNfcForegroundPreference;

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/android/settings/nfc/OPNfcForegroundPreference$NfcForegroundAdapter;->this$0:Lcom/android/settings/nfc/OPNfcForegroundPreference;

    invoke-static {v0}, Lcom/android/settings/nfc/OPNfcForegroundPreference;->access$200(Lcom/android/settings/nfc/OPNfcForegroundPreference;)Lcom/android/settings/nfc/PaymentBackend;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/settings/nfc/PaymentBackend;->setForegroundMode(Z)V

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/settings/nfc/OPNfcForegroundPreference$NfcForegroundAdapter;->this$0:Lcom/android/settings/nfc/OPNfcForegroundPreference;

    const-string v1, "1"

    invoke-static {v0, v1}, Lcom/android/settings/nfc/OPNfcForegroundPreference;->access$400(Lcom/android/settings/nfc/OPNfcForegroundPreference;Ljava/lang/String;)Z

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/settings/nfc/OPNfcForegroundPreference$NfcForegroundAdapter;->this$0:Lcom/android/settings/nfc/OPNfcForegroundPreference;

    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/android/settings/nfc/OPNfcForegroundPreference;->access$500(Lcom/android/settings/nfc/OPNfcForegroundPreference;Ljava/lang/String;)Z

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setForegroundMode newValue:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " foregroundMode:"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "OPNfcForegroundPreference"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/settings/nfc/OPNfcForegroundPreference$NfcForegroundAdapter;->this$0:Lcom/android/settings/nfc/OPNfcForegroundPreference;

    invoke-virtual {p0}, Lcom/android/settingslib/CustomDialogPreferenceCompat;->getDialog()Landroid/app/Dialog;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_2
    return-void
.end method
