.class Lcom/android/settings/wfd/WifiDisplaySettings$2;
.super Landroidx/preference/Preference;
.source "WifiDisplaySettings.java"


# instance fields
.field final synthetic this$0:Lcom/android/settings/wfd/WifiDisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$2;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x7f0a03b6

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f121906

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    new-instance v1, Lcom/android/settings/wfd/WifiDisplaySettings$2$1;

    invoke-direct {v1, p0}, Lcom/android/settings/wfd/WifiDisplaySettings$2$1;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings$2;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a05f4

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    const v0, 0x7f121907

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    new-instance v0, Lcom/android/settings/wfd/WifiDisplaySettings$2$2;

    invoke-direct {v0, p0}, Lcom/android/settings/wfd/WifiDisplaySettings$2$2;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings$2;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
