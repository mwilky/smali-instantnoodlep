.class Lcom/android/settings/inputmethod/SpellCheckersSettings$2;
.super Ljava/lang/Object;
.source "SpellCheckersSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/android/settings/inputmethod/SpellCheckersSettings;

.field final synthetic val$sci:Landroid/view/textservice/SpellCheckerInfo;


# direct methods
.method constructor <init>(Lcom/android/settings/inputmethod/SpellCheckersSettings;Landroid/view/textservice/SpellCheckerInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings$2;->this$0:Lcom/android/settings/inputmethod/SpellCheckersSettings;

    iput-object p2, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings$2;->val$sci:Landroid/view/textservice/SpellCheckerInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings$2;->this$0:Lcom/android/settings/inputmethod/SpellCheckersSettings;

    iget-object p0, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings$2;->val$sci:Landroid/view/textservice/SpellCheckerInfo;

    invoke-static {p1, p0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->access$300(Lcom/android/settings/inputmethod/SpellCheckersSettings;Landroid/view/textservice/SpellCheckerInfo;)V

    return-void
.end method
