.class Lcom/android/settings/network/telephony/VideoCallingPreferenceController$PhoneCallStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "VideoCallingPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/network/telephony/VideoCallingPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhoneCallStateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/network/telephony/VideoCallingPreferenceController;


# direct methods
.method public constructor <init>(Lcom/android/settings/network/telephony/VideoCallingPreferenceController;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/network/telephony/VideoCallingPreferenceController$PhoneCallStateListener;->this$0:Lcom/android/settings/network/telephony/VideoCallingPreferenceController;

    invoke-direct {p0, p2}, Landroid/telephony/PhoneStateListener;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/network/telephony/VideoCallingPreferenceController$PhoneCallStateListener;->this$0:Lcom/android/settings/network/telephony/VideoCallingPreferenceController;

    invoke-static {p0}, Lcom/android/settings/network/telephony/VideoCallingPreferenceController;->access$000(Lcom/android/settings/network/telephony/VideoCallingPreferenceController;)Landroidx/preference/Preference;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/VideoCallingPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method public register(I)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Landroid/telephony/PhoneStateListener;->mSubId:Ljava/lang/Integer;

    iget-object p1, p0, Lcom/android/settings/network/telephony/VideoCallingPreferenceController$PhoneCallStateListener;->this$0:Lcom/android/settings/network/telephony/VideoCallingPreferenceController;

    invoke-static {p1}, Lcom/android/settings/network/telephony/VideoCallingPreferenceController;->access$100(Lcom/android/settings/network/telephony/VideoCallingPreferenceController;)Landroid/telephony/TelephonyManager;

    move-result-object p1

    const/16 v0, 0x20

    invoke-virtual {p1, p0, v0}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method
