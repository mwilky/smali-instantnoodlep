.class Lcom/android/settings/AppWidgetLoader$1;
.super Ljava/lang/Object;
.source "AppWidgetLoader.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/AppWidgetLoader;->getItems(Landroid/content/Intent;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "TItem;>;"
    }
.end annotation


# instance fields
.field mCollator:Ljava/text/Collator;


# direct methods
.method constructor <init>(Lcom/android/settings/AppWidgetLoader;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/AppWidgetLoader$1;->mCollator:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    iget-object p0, p0, Lcom/android/settings/AppWidgetLoader$1;->mCollator:Ljava/text/Collator;

    check-cast p1, Lcom/android/settings/ActivityPicker$PickAdapter$Item;

    invoke-virtual {p1}, Lcom/android/settings/ActivityPicker$PickAdapter$Item;->getLabel()Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p2, Lcom/android/settings/ActivityPicker$PickAdapter$Item;

    invoke-virtual {p2}, Lcom/android/settings/ActivityPicker$PickAdapter$Item;->getLabel()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
