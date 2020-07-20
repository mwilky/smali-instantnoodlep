.class Lcom/oneplus/settings/OPButtonsAndGesturesSettings$SummaryProvider;
.super Ljava/lang/Object;
.source "OPButtonsAndGesturesSettings.java"

# interfaces
.implements Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/OPButtonsAndGesturesSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SummaryProvider"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mLoader:Lcom/android/settings/dashboard/SummaryLoader;


# direct methods
.method synthetic constructor <init>(Landroid/content/Context;Lcom/android/settings/dashboard/SummaryLoader;Lcom/oneplus/settings/OPButtonsAndGesturesSettings$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oneplus/settings/OPButtonsAndGesturesSettings$SummaryProvider;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/oneplus/settings/OPButtonsAndGesturesSettings$SummaryProvider;->mLoader:Lcom/android/settings/dashboard/SummaryLoader;

    return-void
.end method


# virtual methods
.method public setListening(Z)V
    .locals 6

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportSocTriState()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oneplus/settings/OPButtonsAndGesturesSettings$SummaryProvider;->mLoader:Lcom/android/settings/dashboard/SummaryLoader;

    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsAndGesturesSettings$SummaryProvider;->mContext:Landroid/content/Context;

    const v1, 0x7f120cb2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/android/settings/dashboard/SummaryLoader;->setSummary(Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/oneplus/settings/OPButtonsAndGesturesSettings$SummaryProvider;->mContext:Landroid/content/Context;

    const v0, 0x7f120116

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsAndGesturesSettings$SummaryProvider;->mContext:Landroid/content/Context;

    const v1, 0x7f1203dc

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/OPButtonsAndGesturesSettings$SummaryProvider;->mContext:Landroid/content/Context;

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 p1, 0x1

    aput-object v0, v3, p1

    const v0, 0x7f120895

    invoke-virtual {v1, v0, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/oneplus/settings/OPButtonsAndGesturesSettings$SummaryProvider;->mContext:Landroid/content/Context;

    const v5, 0x7f120f37

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/oneplus/settings/OPButtonsAndGesturesSettings$SummaryProvider;->mContext:Landroid/content/Context;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v4

    aput-object v3, v2, p1

    invoke-virtual {v5, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsAndGesturesSettings$SummaryProvider;->mLoader:Lcom/android/settings/dashboard/SummaryLoader;

    invoke-virtual {v0, p0, p1}, Lcom/android/settings/dashboard/SummaryLoader;->setSummary(Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method
