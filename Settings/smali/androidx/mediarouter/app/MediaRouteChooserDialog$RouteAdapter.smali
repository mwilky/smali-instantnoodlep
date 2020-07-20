.class final Landroidx/mediarouter/app/MediaRouteChooserDialog$RouteAdapter;
.super Landroid/widget/ArrayAdapter;
.source "MediaRouteChooserDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/mediarouter/app/MediaRouteChooserDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RouteAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Landroidx/mediarouter/media/MediaRouter$RouteInfo;",
        ">;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field private final mDefaultIcon:Landroid/graphics/drawable/Drawable;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mSpeakerGroupIcon:Landroid/graphics/drawable/Drawable;

.field private final mSpeakerIcon:Landroid/graphics/drawable/Drawable;

.field private final mTvIcon:Landroid/graphics/drawable/Drawable;

.field final synthetic this$0:Landroidx/mediarouter/app/MediaRouteChooserDialog;


# direct methods
.method public constructor <init>(Landroidx/mediarouter/app/MediaRouteChooserDialog;Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroidx/mediarouter/media/MediaRouter$RouteInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog$RouteAdapter;->this$0:Landroidx/mediarouter/app/MediaRouteChooserDialog;

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iput-object p2, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog$RouteAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    const/4 p3, 0x4

    new-array p3, p3, [I

    fill-array-data p3, :array_0

    invoke-virtual {p2, p3}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog$RouteAdapter;->mDefaultIcon:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x1

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog$RouteAdapter;->mTvIcon:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x2

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog$RouteAdapter;->mSpeakerIcon:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x3

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog$RouteAdapter;->mSpeakerGroupIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0402bb
        0x7f0402c4
        0x7f0402c1
        0x7f0402c0
    .end array-data
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    const/4 v0, 0x0

    if-nez p2, :cond_0

    iget-object p2, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog$RouteAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0d0119

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    const p3, 0x7f0a042f

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    const v1, 0x7f0a042d

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getConnectionState()I

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v3, v4, :cond_2

    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getConnectionState()I

    move-result v3

    if-ne v3, v5, :cond_1

    goto :goto_0

    :cond_1
    move v3, v0

    goto :goto_1

    :cond_2
    :goto_0
    move v3, v5

    :goto_1
    if-eqz v3, :cond_3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    const/16 v3, 0x50

    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_3
    const/16 v0, 0x10

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setGravity(I)V

    const/16 p3, 0x8

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setVisibility(I)V

    const-string p3, ""

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->isEnabled()Z

    move-result p3

    invoke-virtual {p2, p3}, Landroid/view/View;->setEnabled(Z)V

    const p3, 0x7f0a042e

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    if-eqz p3, :cond_8

    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getIconUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_4

    :try_start_0
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_4

    goto :goto_4

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to load "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MediaRouteChooserDialog"

    invoke-static {v2, v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getDeviceType()I

    move-result v0

    if-eq v0, v5, :cond_7

    if-eq v0, v4, :cond_6

    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->isGroup()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog$RouteAdapter;->mSpeakerGroupIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_3

    :cond_5
    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog$RouteAdapter;->mDefaultIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_3

    :cond_6
    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog$RouteAdapter;->mSpeakerIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_3

    :cond_7
    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog$RouteAdapter;->mTvIcon:Landroid/graphics/drawable/Drawable;

    :goto_3
    move-object v0, p0

    :goto_4
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_8
    return-object p2
.end method

.method public isEnabled(I)Z
    .locals 0

    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->isEnabled()Z

    move-result p0

    return p0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    invoke-virtual {p0, p3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->select()V

    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog$RouteAdapter;->this$0:Landroidx/mediarouter/app/MediaRouteChooserDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method
