.class Lcom/android/settings/applications/DefaultAppSettings$SummaryProvider;
.super Ljava/lang/Object;
.source "DefaultAppSettings.java"

# interfaces
.implements Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/DefaultAppSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SummaryProvider"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/dashboard/SummaryLoader;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/applications/DefaultAppSettings$SummaryProvider;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/applications/DefaultAppSettings$SummaryProvider;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    new-instance p1, Lcom/android/settings/applications/defaultapps/DefaultSmsPreferenceController;

    iget-object p2, p0, Lcom/android/settings/applications/DefaultAppSettings$SummaryProvider;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/android/settings/applications/defaultapps/DefaultSmsPreferenceController;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/android/settings/applications/defaultapps/DefaultBrowserPreferenceController;

    iget-object p2, p0, Lcom/android/settings/applications/DefaultAppSettings$SummaryProvider;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/android/settings/applications/defaultapps/DefaultBrowserPreferenceController;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/android/settings/applications/defaultapps/DefaultPhonePreferenceController;

    iget-object p0, p0, Lcom/android/settings/applications/DefaultAppSettings$SummaryProvider;->mContext:Landroid/content/Context;

    invoke-direct {p1, p0}, Lcom/android/settings/applications/defaultapps/DefaultPhonePreferenceController;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public setListening(Z)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/settings/applications/DefaultAppSettings$SummaryProvider;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    iget-object v0, p0, Lcom/android/settings/applications/DefaultAppSettings$SummaryProvider;->mContext:Landroid/content/Context;

    const v1, 0x7f121138

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/android/settings/dashboard/SummaryLoader;->setSummary(Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;Ljava/lang/CharSequence;)V

    return-void
.end method
