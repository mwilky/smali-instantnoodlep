.class Lcom/android/settings/applications/assist/OPDefaultVoiceAssistPicker$Info;
.super Ljava/lang/Object;
.source "OPDefaultVoiceAssistPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/assist/OPDefaultVoiceAssistPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Info"
.end annotation


# instance fields
.field public final component:Landroid/content/ComponentName;

.field public final voiceInteractionServiceInfo:Landroid/service/voice/VoiceInteractionServiceInfo;


# direct methods
.method constructor <init>(Landroid/content/ComponentName;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/applications/assist/OPDefaultVoiceAssistPicker$Info;->component:Landroid/content/ComponentName;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/settings/applications/assist/OPDefaultVoiceAssistPicker$Info;->voiceInteractionServiceInfo:Landroid/service/voice/VoiceInteractionServiceInfo;

    return-void
.end method

.method constructor <init>(Landroid/content/ComponentName;Landroid/service/voice/VoiceInteractionServiceInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/applications/assist/OPDefaultVoiceAssistPicker$Info;->component:Landroid/content/ComponentName;

    iput-object p2, p0, Lcom/android/settings/applications/assist/OPDefaultVoiceAssistPicker$Info;->voiceInteractionServiceInfo:Landroid/service/voice/VoiceInteractionServiceInfo;

    return-void
.end method
