.class public final synthetic Lcom/android/settings/deviceinfo/-$$Lambda$StorageDashboardFragment$IconLoaderCallbacks$Jn0eBlqBHbuO-2COJ4jEmaXSJJc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Landroid/util/SparseArray;


# direct methods
.method public synthetic constructor <init>(Landroid/util/SparseArray;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/deviceinfo/-$$Lambda$StorageDashboardFragment$IconLoaderCallbacks$Jn0eBlqBHbuO-2COJ4jEmaXSJJc;->f$0:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/deviceinfo/-$$Lambda$StorageDashboardFragment$IconLoaderCallbacks$Jn0eBlqBHbuO-2COJ4jEmaXSJJc;->f$0:Landroid/util/SparseArray;

    check-cast p1, Lcom/android/settingslib/core/AbstractPreferenceController;

    check-cast p1, Lcom/android/settings/deviceinfo/storage/UserIconLoader$UserIconHandler;

    invoke-interface {p1, p0}, Lcom/android/settings/deviceinfo/storage/UserIconLoader$UserIconHandler;->handleUserIcons(Landroid/util/SparseArray;)V

    return-void
.end method
