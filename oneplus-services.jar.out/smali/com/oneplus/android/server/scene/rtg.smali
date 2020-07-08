.class public Lcom/oneplus/android/server/scene/rtg;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/android/server/scene/rtg$zta;,
        Lcom/oneplus/android/server/scene/rtg$you;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static Rta:Z = false

.field private static final TAG:Ljava/lang/String; = "ESportGuider"

.field private static final VALUE_OFF:Ljava/lang/String; = "0"

.field private static final VALUE_ON:Ljava/lang/String; = "1"

.field private static sInstance:Lcom/oneplus/android/server/scene/rtg;


# instance fields
.field private Ita:Landroid/widget/LinearLayout;

.field private Jta:Landroid/widget/TextView;

.field private Kta:Landroid/view/View;

.field private Lta:Landroid/view/View;

.field private Mta:Landroid/widget/TextView;

.field private Nta:Landroid/widget/CheckBox;

.field private Ota:Z

.field private Pta:Lcom/oneplus/android/server/scene/vju;

.field private Qta:Z

.field private mContext:Landroid/content/Context;

.field private mDismissListener:Lcom/oneplus/android/server/scene/rtg$zta;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mResolver:Landroid/content/ContentResolver;

.field private mRotation:I

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/oneplus/android/server/scene/rtg;->DBG:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/oneplus/android/server/scene/rtg;->Rta:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/oneplus/android/server/scene/rtg;->sInstance:Lcom/oneplus/android/server/scene/rtg;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/android/server/scene/rtg;->mRotation:I

    iput-boolean v0, p0, Lcom/oneplus/android/server/scene/rtg;->Ota:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oneplus/android/server/scene/rtg;->Pta:Lcom/oneplus/android/server/scene/vju;

    iput-boolean v0, p0, Lcom/oneplus/android/server/scene/rtg;->Qta:Z

    iput-object p1, p0, Lcom/oneplus/android/server/scene/rtg;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/oneplus/android/server/scene/rtg;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/oneplus/android/server/scene/rtg;->mWindowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/oneplus/android/server/scene/rtg;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/oneplus/android/server/scene/rtg;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/android/server/scene/rtg;->mResolver:Landroid/content/ContentResolver;

    invoke-direct {p0}, Lcom/oneplus/android/server/scene/rtg;->listenForConfigChanged()V

    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    sget-boolean v0, Lcom/oneplus/android/server/scene/rtg;->Rta:Z

    return v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/oneplus/android/server/scene/rtg;
    .locals 1

    sget-object v0, Lcom/oneplus/android/server/scene/rtg;->sInstance:Lcom/oneplus/android/server/scene/rtg;

    if-nez v0, :cond_0

    new-instance v0, Lcom/oneplus/android/server/scene/rtg;

    invoke-direct {v0, p0}, Lcom/oneplus/android/server/scene/rtg;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/oneplus/android/server/scene/rtg;->sInstance:Lcom/oneplus/android/server/scene/rtg;

    :cond_0
    sget-object p0, Lcom/oneplus/android/server/scene/rtg;->sInstance:Lcom/oneplus/android/server/scene/rtg;

    return-object p0
.end method

.method private igw(Landroid/content/Context;)Z
    .locals 0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x1110064

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method private listenForConfigChanged()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oneplus/android/server/scene/rtg;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/oneplus/android/server/scene/tsu;

    invoke-direct {v2, p0}, Lcom/oneplus/android/server/scene/tsu;-><init>(Lcom/oneplus/android/server/scene/rtg;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private qbh(Landroid/content/Context;)Z
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/scene/rtg;->mContext:Landroid/content/Context;

    const-string p1, "phone"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result p0

    const/4 p1, 0x2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic sis(Lcom/oneplus/android/server/scene/rtg;)Lcom/oneplus/android/server/scene/rtg$zta;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/scene/rtg;->mDismissListener:Lcom/oneplus/android/server/scene/rtg$zta;

    return-object p0
.end method

.method static synthetic you(Lcom/oneplus/android/server/scene/rtg;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/scene/rtg;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private you(Landroid/view/ViewGroup;)V
    .locals 4

    const v0, 0x5080058

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/android/server/scene/rtg;->Kta:Landroid/view/View;

    const v0, 0x5080057

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/android/server/scene/rtg;->Lta:Landroid/view/View;

    const v0, 0x5080155

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/android/server/scene/rtg;->Jta:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/oneplus/android/server/scene/rtg;->Jta:Landroid/widget/TextView;

    new-instance v1, Lcom/oneplus/android/server/scene/you;

    invoke-direct {v1, p0}, Lcom/oneplus/android/server/scene/you;-><init>(Lcom/oneplus/android/server/scene/rtg;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x5080075

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/oneplus/android/server/scene/rtg;->Nta:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/oneplus/android/server/scene/rtg;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "game_mode_show_fnatic_intr"

    const/4 v3, -0x2

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    iget-object v0, p0, Lcom/oneplus/android/server/scene/rtg;->Nta:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/oneplus/android/server/scene/rtg;->Nta:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    sput-boolean v0, Lcom/oneplus/android/server/scene/rtg;->Rta:Z

    const v0, 0x5080076

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/android/server/scene/rtg;->Mta:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/oneplus/android/server/scene/rtg;->Mta:Landroid/widget/TextView;

    new-instance v1, Lcom/oneplus/android/server/scene/sis;

    invoke-direct {v1, p0}, Lcom/oneplus/android/server/scene/sis;-><init>(Lcom/oneplus/android/server/scene/rtg;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, p1}, Lcom/oneplus/android/server/scene/rtg;->zta(Landroid/view/ViewGroup;)V

    return-void
.end method

.method static synthetic zta(Lcom/oneplus/android/server/scene/rtg;)Landroid/widget/CheckBox;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/scene/rtg;->Nta:Landroid/widget/CheckBox;

    return-object p0
.end method


# virtual methods
.method public configurationChanged()V
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/android/server/scene/rtg;->Qta:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/android/server/scene/rtg;->show()V

    :cond_0
    return-void
.end method

.method protected hide()V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/android/server/scene/rtg;->Ita:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/oneplus/android/server/scene/rtg;->Pta:Lcom/oneplus/android/server/scene/vju;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/android/server/scene/rtg;->Pta:Lcom/oneplus/android/server/scene/vju;

    invoke-virtual {v0}, Lcom/oneplus/android/server/scene/vju;->hg()V

    :cond_0
    iget-object v0, p0, Lcom/oneplus/android/server/scene/rtg;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/oneplus/android/server/scene/rtg;->Ita:Landroid/widget/LinearLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeView() exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ESportGuider"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/android/server/scene/rtg;->Ita:Landroid/widget/LinearLayout;

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/android/server/scene/rtg;->Qta:Z

    return-void
.end method

.method public isAcquired()Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/android/server/scene/rtg;->Qta:Z

    return p0
.end method

.method protected declared-synchronized show()V
    .locals 9

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/oneplus/android/server/scene/rtg;->hide()V

    new-instance v0, Lcom/oneplus/android/server/scene/rtg$you;

    iget-object v1, p0, Lcom/oneplus/android/server/scene/rtg;->mContext:Landroid/content/Context;

    const v2, 0x50b003b

    invoke-direct {v0, p0, v1, v2}, Lcom/oneplus/android/server/scene/rtg$you;-><init>(Lcom/oneplus/android/server/scene/rtg;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/oneplus/android/server/scene/rtg;->Ita:Landroid/widget/LinearLayout;

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v4, -0x2

    const/4 v5, -0x2

    const/16 v6, 0x7d8

    const/16 v7, 0x8

    const/4 v8, -0x2

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iget-object v1, p0, Lcom/oneplus/android/server/scene/rtg;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    new-instance v0, Lcom/oneplus/android/server/scene/rtg$you;

    iget-object v1, p0, Lcom/oneplus/android/server/scene/rtg;->mContext:Landroid/content/Context;

    const v2, 0x50b003c

    invoke-direct {v0, p0, v1, v2}, Lcom/oneplus/android/server/scene/rtg$you;-><init>(Lcom/oneplus/android/server/scene/rtg;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/oneplus/android/server/scene/rtg;->Ita:Landroid/widget/LinearLayout;

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v4, -0x2

    const/4 v5, -0x1

    const/16 v6, 0x7d8

    const/16 v7, 0x8

    const/4 v8, -0x2

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    :cond_0
    iget-object v1, p0, Lcom/oneplus/android/server/scene/rtg;->Ita:Landroid/widget/LinearLayout;

    invoke-direct {p0, v1}, Lcom/oneplus/android/server/scene/rtg;->you(Landroid/view/ViewGroup;)V

    const/16 v1, 0x11

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x12

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const-string v1, "ESportGuider"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/oneplus/android/server/scene/rtg;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/oneplus/android/server/scene/rtg;->Ita:Landroid/widget/LinearLayout;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/oneplus/android/server/scene/rtg;->Ita:Landroid/widget/LinearLayout;

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSystemUiVisibility(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/android/server/scene/rtg;->Qta:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method zta(Landroid/view/ViewGroup;)V
    .locals 7

    const v0, 0x5080059

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x508005a

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x508005b

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const v2, 0x50800b8

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v5, 0x50800b9

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x507014d

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    const v3, 0x507014b

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    const v3, 0x5070149

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    const v2, 0x50f0077

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x50f0078

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/oneplus/android/server/scene/rtg;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/oneplus/android/server/scene/rtg;->qbh(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/oneplus/android/server/scene/rtg;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/oneplus/android/server/scene/rtg;->igw(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x50f0079

    goto :goto_0

    :cond_0
    const p0, 0x50f0073

    :goto_0
    invoke-virtual {v5, p0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_1
    const/16 p0, 0x8

    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public zta(Lcom/oneplus/android/server/scene/rtg$zta;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/scene/rtg;->mDismissListener:Lcom/oneplus/android/server/scene/rtg$zta;

    return-void
.end method

.method public zta(Lcom/oneplus/android/server/scene/vju;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/scene/rtg;->Pta:Lcom/oneplus/android/server/scene/vju;

    return-void
.end method
