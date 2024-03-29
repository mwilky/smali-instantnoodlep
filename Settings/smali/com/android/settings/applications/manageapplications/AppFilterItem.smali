.class public Lcom/android/settings/applications/manageapplications/AppFilterItem;
.super Ljava/lang/Object;
.source "AppFilterItem.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/settings/applications/manageapplications/AppFilterItem;",
        ">;"
    }
.end annotation


# instance fields
.field private final mFilter:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

.field private final mFilterType:I

.field private final mTitle:I


# direct methods
.method public constructor <init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p3, p0, Lcom/android/settings/applications/manageapplications/AppFilterItem;->mTitle:I

    iput p2, p0, Lcom/android/settings/applications/manageapplications/AppFilterItem;->mFilterType:I

    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/AppFilterItem;->mFilter:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/settings/applications/manageapplications/AppFilterItem;

    if-nez p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    if-ne p0, p1, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    iget p0, p0, Lcom/android/settings/applications/manageapplications/AppFilterItem;->mFilterType:I

    iget p1, p1, Lcom/android/settings/applications/manageapplications/AppFilterItem;->mFilterType:I

    sub-int/2addr p0, p1

    :goto_0
    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    instance-of v1, p1, Lcom/android/settings/applications/manageapplications/AppFilterItem;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    return v1

    :cond_1
    check-cast p1, Lcom/android/settings/applications/manageapplications/AppFilterItem;

    iget v2, p0, Lcom/android/settings/applications/manageapplications/AppFilterItem;->mTitle:I

    iget v3, p1, Lcom/android/settings/applications/manageapplications/AppFilterItem;->mTitle:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/android/settings/applications/manageapplications/AppFilterItem;->mFilterType:I

    iget v3, p1, Lcom/android/settings/applications/manageapplications/AppFilterItem;->mFilterType:I

    if-ne v2, v3, :cond_2

    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/AppFilterItem;->mFilter:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    iget-object p1, p1, Lcom/android/settings/applications/manageapplications/AppFilterItem;->mFilter:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    if-ne p0, p1, :cond_2

    move v0, v1

    :cond_2
    :goto_0
    return v0
.end method

.method public getFilter()Lcom/android/settingslib/applications/ApplicationsState$AppFilter;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/AppFilterItem;->mFilter:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    return-object p0
.end method

.method public getFilterType()I
    .locals 0

    iget p0, p0, Lcom/android/settings/applications/manageapplications/AppFilterItem;->mFilterType:I

    return p0
.end method

.method public getTitle()I
    .locals 0

    iget p0, p0, Lcom/android/settings/applications/manageapplications/AppFilterItem;->mTitle:I

    return p0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/AppFilterItem;->mFilter:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/settings/applications/manageapplications/AppFilterItem;->mTitle:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget p0, p0, Lcom/android/settings/applications/manageapplications/AppFilterItem;->mFilterType:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x2

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
