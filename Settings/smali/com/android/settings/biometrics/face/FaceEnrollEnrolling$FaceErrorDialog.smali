.class public Lcom/android/settings/biometrics/face/FaceEnrollEnrolling$FaceErrorDialog;
.super Lcom/android/settings/biometrics/BiometricErrorDialog;
.source "FaceEnrollEnrolling.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/biometrics/face/FaceEnrollEnrolling;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FaceErrorDialog"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/biometrics/BiometricErrorDialog;-><init>()V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x5e6

    return p0
.end method

.method public getOkButtonTextResId()I
    .locals 0

    const p0, 0x7f12140d

    return p0
.end method

.method public getTitleResId()I
    .locals 0

    const p0, 0x7f121415

    return p0
.end method
