.class public Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;
.super Landroid/app/Activity;
.source "OPShutdownActivity.java"


# static fields
.field public static sCountDownTimer:Landroid/os/CountDownTimer;


# instance fields
.field private mMessage:Ljava/lang/String;

.field private mSecondsCountdown:I

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;)I
    .locals 0

    iget p0, p0, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;->mSecondsCountdown:I

    return p0
.end method

.method static synthetic access$002(Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;I)I
    .locals 0

    iput p1, p0, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;->mSecondsCountdown:I

    return p1
.end method

.method static synthetic access$102(Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;->mMessage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;)Landroid/telephony/TelephonyManager;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object p0
.end method

.method static synthetic access$300(Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;->fireShutDown()V

    return-void
.end method

.method static synthetic access$400(Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;->cancelCountDownTimer()V

    return-void
.end method

.method private cancelCountDownTimer()V
    .locals 1

    sget-object p0, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;->sCountDownTimer:Landroid/os/CountDownTimer;

    if-eqz p0, :cond_0

    const-string p0, "ShutdownActivity"

    const-string v0, "cancel sCountDownTimer"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;->sCountDownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {p0}, Landroid/os/CountDownTimer;->cancel()V

    const/4 p0, 0x0

    sput-object p0, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;->sCountDownTimer:Landroid/os/CountDownTimer;

    :cond_0
    return-void
.end method

.method private fireShutDown()V
    .locals 3

    const/4 v0, 0x0

    const-string v1, "sys.debug.watchdog"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.internal.intent.action.REQUEST_SHUTDOWN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.extra.KEY_CONFIRM"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v0, 0x800000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "power"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const-string v1, "screen is on ? ----- "

    invoke-static {v1}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline23(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ShutdownActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v2, 0x480000

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    if-nez p1, :cond_0

    const/16 p1, 0xb

    iput p1, p0, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;->mSecondsCountdown:I

    goto :goto_0

    :cond_0
    const-string v0, "lefttime"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;->mSecondsCountdown:I

    const-string v0, "message"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;->mMessage:Ljava/lang/String;

    :goto_0
    new-instance p1, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity$1;

    iget v0, p0, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;->mSecondsCountdown:I

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v4, v0

    const-wide/16 v6, 0x3e8

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity$1;-><init>(Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;JJ)V

    sput-object p1, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;->sCountDownTimer:Landroid/os/CountDownTimer;

    const-string p1, "ShutdonwActivity onCreate"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;->sCountDownTimer:Landroid/os/CountDownTimer;

    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    :goto_1
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 2

    const-string p1, "ShutdownActivity"

    const-string v0, "onCreateDialog"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x1080027

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string v0, "power off"

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;->mMessage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity$3;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity$3;-><init>(Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;)V

    const v1, 0x1040013

    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity$2;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity$2;-><init>(Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;)V

    const p0, 0x1040009

    invoke-virtual {p1, p0, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 0

    check-cast p2, Landroid/app/AlertDialog;

    iget-object p0, p0, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;->mMessage:Ljava/lang/String;

    invoke-virtual {p2, p0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget v0, p0, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;->mSecondsCountdown:I

    const-string v1, "lefttime"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object p0, p0, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;->mMessage:Ljava/lang/String;

    const-string v0, "message"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
