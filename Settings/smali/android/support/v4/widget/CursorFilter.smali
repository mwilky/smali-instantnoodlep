.class Landroid/support/v4/widget/CursorFilter;
.super Landroid/widget/Filter;
.source "CursorFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/CursorFilter$CursorFilterClient;
    }
.end annotation


# instance fields
.field mClient:Landroid/support/v4/widget/CursorFilter$CursorFilterClient;


# direct methods
.method constructor <init>(Landroid/support/v4/widget/CursorFilter$CursorFilterClient;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    iput-object p1, p0, Landroid/support/v4/widget/CursorFilter;->mClient:Landroid/support/v4/widget/CursorFilter$CursorFilterClient;

    return-void
.end method


# virtual methods
.method public convertResultToString(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Landroid/support/v4/widget/CursorFilter;->mClient:Landroid/support/v4/widget/CursorFilter$CursorFilterClient;

    check-cast p1, Landroid/database/Cursor;

    invoke-interface {p0, p1}, Landroid/support/v4/widget/CursorFilter$CursorFilterClient;->convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 1

    iget-object p0, p0, Landroid/support/v4/widget/CursorFilter;->mClient:Landroid/support/v4/widget/CursorFilter$CursorFilterClient;

    invoke-interface {p0, p1}, Landroid/support/v4/widget/CursorFilter$CursorFilterClient;->runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;

    move-result-object p0

    new-instance p1, Landroid/widget/Filter$FilterResults;

    invoke-direct {p1}, Landroid/widget/Filter$FilterResults;-><init>()V

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iput v0, p1, Landroid/widget/Filter$FilterResults;->count:I

    iput-object p0, p1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    iput p0, p1, Landroid/widget/Filter$FilterResults;->count:I

    const/4 p0, 0x0

    iput-object p0, p1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    :goto_0
    return-object p1
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 0

    iget-object p0, p0, Landroid/support/v4/widget/CursorFilter;->mClient:Landroid/support/v4/widget/CursorFilter$CursorFilterClient;

    move-object p1, p0

    check-cast p1, Landroid/support/v4/widget/CursorAdapter;

    iget-object p1, p1, Landroid/support/v4/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    iget-object p2, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    if-eqz p2, :cond_0

    if-eq p2, p1, :cond_0

    check-cast p2, Landroid/database/Cursor;

    invoke-interface {p0, p2}, Landroid/support/v4/widget/CursorFilter$CursorFilterClient;->changeCursor(Landroid/database/Cursor;)V

    :cond_0
    return-void
.end method
