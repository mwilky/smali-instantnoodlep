.class public Lcom/oneplus/settings/gestures/OPGestureAppModel;
.super Ljava/lang/Object;
.source "OPGestureAppModel.java"


# instance fields
.field private ShortCutId:Ljava/lang/String;

.field private appIcon:Landroid/graphics/drawable/Drawable;

.field private pkgName:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oneplus/settings/gestures/OPGestureAppModel;->pkgName:Ljava/lang/String;

    iput-object p2, p0, Lcom/oneplus/settings/gestures/OPGestureAppModel;->title:Ljava/lang/String;

    iput-object p3, p0, Lcom/oneplus/settings/gestures/OPGestureAppModel;->ShortCutId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAppIcon()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/gestures/OPGestureAppModel;->appIcon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getPkgName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/gestures/OPGestureAppModel;->pkgName:Ljava/lang/String;

    return-object p0
.end method

.method public getShortCutId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/gestures/OPGestureAppModel;->ShortCutId:Ljava/lang/String;

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/gestures/OPGestureAppModel;->title:Ljava/lang/String;

    return-object p0
.end method

.method public setAppIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/gestures/OPGestureAppModel;->appIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method
