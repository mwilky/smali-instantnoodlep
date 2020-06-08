.class public Lcom/oneplus/settings/OPFontStyleSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "OPFontStyleSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/settings/search/Indexable;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSlateFont:Landroid/view/View;

.field private mSlateFontButton:Landroid/widget/RadioButton;

.field private mSystemFont:Landroid/view/View;

.field private mSystemFontButton:Landroid/widget/RadioButton;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/oneplus/settings/OPFontStyleSettings$2;

    invoke-direct {v0}, Lcom/oneplus/settings/OPFontStyleSettings$2;-><init>()V

    sput-object v0, Lcom/oneplus/settings/OPFontStyleSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/OPFontStyleSettings;)Landroid/content/ContentResolver;
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/oneplus/settings/OPFontStyleSettings;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/OPFontStyleSettings;->mContext:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x270f

    return p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "oem_font_mode"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const v4, 0x7f0a06fa

    if-ne v0, v4, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v1, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    if-ne p1, v3, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/oneplus/settings/OPFontStyleSettings$1;

    invoke-direct {v0, p0, v3}, Lcom/oneplus/settings/OPFontStyleSettings$1;-><init>(Lcom/oneplus/settings/OPFontStyleSettings;I)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    iget-object p1, p0, Lcom/oneplus/settings/OPFontStyleSettings;->mSystemFontButton:Landroid/widget/RadioButton;

    invoke-virtual {p1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object p0, p0, Lcom/oneplus/settings/OPFontStyleSettings;->mSlateFontButton:Landroid/widget/RadioButton;

    invoke-virtual {p0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a067a

    if-ne p1, v0, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v1, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    return-void

    :cond_2
    new-instance p1, Ljava/lang/Thread;

    new-instance v1, Lcom/oneplus/settings/OPFontStyleSettings$1;

    invoke-direct {v1, p0, v0}, Lcom/oneplus/settings/OPFontStyleSettings$1;-><init>(Lcom/oneplus/settings/OPFontStyleSettings;I)V

    invoke-direct {p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    iget-object p1, p0, Lcom/oneplus/settings/OPFontStyleSettings;->mSlateFontButton:Landroid/widget/RadioButton;

    invoke-virtual {p1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object p0, p0, Lcom/oneplus/settings/OPFontStyleSettings;->mSystemFontButton:Landroid/widget/RadioButton;

    invoke-virtual {p0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/OPFontStyleSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const p1, 0x7f120d85

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(I)V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p2

    const p3, 0x102003f

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->removeAllViews()V

    const v0, 0x7f0d01cf

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const p3, 0x7f0a06fb

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/RadioButton;

    iput-object p3, p0, Lcom/oneplus/settings/OPFontStyleSettings;->mSystemFontButton:Landroid/widget/RadioButton;

    const p3, 0x7f0a067b

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/RadioButton;

    iput-object p3, p0, Lcom/oneplus/settings/OPFontStyleSettings;->mSlateFontButton:Landroid/widget/RadioButton;

    const p3, 0x7f0a06fa

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/oneplus/settings/OPFontStyleSettings;->mSystemFont:Landroid/view/View;

    const p3, 0x7f0a067a

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/OPFontStyleSettings;->mSlateFont:Landroid/view/View;

    iget-object p1, p0, Lcom/oneplus/settings/OPFontStyleSettings;->mSystemFont:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/oneplus/settings/OPFontStyleSettings;->mSlateFont:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method

.method public onResume()V
    .locals 5

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "oem_font_mode"

    invoke-static {v0, v3, v2, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iget-object v3, p0, Lcom/oneplus/settings/OPFontStyleSettings;->mSystemFontButton:Landroid/widget/RadioButton;

    if-ne v0, v2, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v1

    :goto_0
    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object p0, p0, Lcom/oneplus/settings/OPFontStyleSettings;->mSlateFontButton:Landroid/widget/RadioButton;

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {p0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    return-void
.end method
