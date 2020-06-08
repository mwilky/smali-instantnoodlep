.class public Lcom/android/settings/applications/assist/DefaultVoiceInputPicker$VoiceInputDefaultAppInfo;
.super Lcom/android/settingslib/applications/DefaultAppInfo;
.source "DefaultVoiceInputPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/assist/DefaultVoiceInputPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VoiceInputDefaultAppInfo"
.end annotation


# instance fields
.field public mInfo:Lcom/android/settings/applications/assist/VoiceInputHelper$BaseInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/PackageManager;ILcom/android/settings/applications/assist/VoiceInputHelper$BaseInfo;Z)V
    .locals 7

    iget-object v4, p4, Lcom/android/settings/applications/assist/VoiceInputHelper$BaseInfo;->componentName:Landroid/content/ComponentName;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/settingslib/applications/DefaultAppInfo;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;ILandroid/content/ComponentName;Ljava/lang/String;Z)V

    iput-object p4, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPicker$VoiceInputDefaultAppInfo;->mInfo:Lcom/android/settings/applications/assist/VoiceInputHelper$BaseInfo;

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPicker$VoiceInputDefaultAppInfo;->mInfo:Lcom/android/settings/applications/assist/VoiceInputHelper$BaseInfo;

    iget-object p0, p0, Lcom/android/settings/applications/assist/VoiceInputHelper$BaseInfo;->key:Ljava/lang/String;

    return-object p0
.end method

.method public loadLabel()Ljava/lang/CharSequence;
    .locals 1

    iget-object p0, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPicker$VoiceInputDefaultAppInfo;->mInfo:Lcom/android/settings/applications/assist/VoiceInputHelper$BaseInfo;

    instance-of v0, p0, Lcom/android/settings/applications/assist/VoiceInputHelper$InteractionInfo;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/applications/assist/VoiceInputHelper$BaseInfo;->appLabel:Ljava/lang/CharSequence;

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/android/settings/applications/assist/VoiceInputHelper$BaseInfo;->label:Ljava/lang/CharSequence;

    return-object p0
.end method
