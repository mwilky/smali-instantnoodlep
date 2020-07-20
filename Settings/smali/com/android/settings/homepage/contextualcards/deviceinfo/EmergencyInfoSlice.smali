.class public Lcom/android/settings/homepage/contextualcards/deviceinfo/EmergencyInfoSlice;
.super Ljava/lang/Object;
.source "EmergencyInfoSlice.java"

# interfaces
.implements Lcom/android/settings/slices/CustomSliceable;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/deviceinfo/EmergencyInfoSlice;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 1

    new-instance v0, Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/deviceinfo/EmergencyInfoSlice;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/accounts/EmergencyInfoPreferenceController;->getIntentAction(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getSlice()Landroidx/slice/Slice;
    .locals 7

    new-instance v0, Landroidx/slice/builders/ListBuilder;

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/deviceinfo/EmergencyInfoSlice;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/settings/slices/CustomSliceRegistry;->EMERGENCY_INFO_SLICE_URI:Landroid/net/Uri;

    const-wide/16 v3, -0x1

    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/slice/builders/ListBuilder;-><init>(Landroid/content/Context;Landroid/net/Uri;J)V

    new-instance v1, Landroidx/slice/builders/ListBuilder$RowBuilder;

    invoke-direct {v1}, Landroidx/slice/builders/ListBuilder$RowBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/homepage/contextualcards/deviceinfo/EmergencyInfoSlice;->mContext:Landroid/content/Context;

    const v3, 0x7f120692

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    iget-object v2, p0, Lcom/android/settings/homepage/contextualcards/deviceinfo/EmergencyInfoSlice;->mContext:Landroid/content/Context;

    const v4, 0x7f120690

    invoke-virtual {v2, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setSubtitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    iget-object v2, p0, Lcom/android/settings/homepage/contextualcards/deviceinfo/EmergencyInfoSlice;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/settings/homepage/contextualcards/deviceinfo/EmergencyInfoSlice;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const/4 v5, 0x0

    const/high16 v6, 0x8000000

    invoke-static {v2, v5, v4, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iget-object v4, p0, Lcom/android/settings/homepage/contextualcards/deviceinfo/EmergencyInfoSlice;->mContext:Landroid/content/Context;

    const v6, 0x7f080174

    invoke-static {v4, v6}, Landroidx/core/graphics/drawable/IconCompat;->createWithResource(Landroid/content/Context;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v4

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/deviceinfo/EmergencyInfoSlice;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {v2, v4, v5, p0}, Landroidx/slice/builders/SliceAction;->createDeeplink(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;ILjava/lang/CharSequence;)Landroidx/slice/builders/SliceAction;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setPrimaryAction(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    invoke-virtual {v0, v1}, Landroidx/slice/builders/ListBuilder;->addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)Landroidx/slice/builders/ListBuilder;

    invoke-virtual {v0}, Landroidx/slice/builders/ListBuilder;->build()Landroidx/slice/Slice;

    move-result-object p0

    return-object p0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 0

    sget-object p0, Lcom/android/settings/slices/CustomSliceRegistry;->EMERGENCY_INFO_SLICE_URI:Landroid/net/Uri;

    return-object p0
.end method

.method public onNotifyChange(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method
