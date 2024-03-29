.class public Lcom/oneplus/android/server/display/OpColorModeManager;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final Eoa:I = 0x0

.field static final Foa:Ljava/lang/String; = "persist.sys.sf.color_mode"

.field private static final OP_DISPLAY_HALSRGB_COLOR_MODE:I = 0x12

.field private static final OP_DISPLAY_P3_COLOR_MODE:I = 0x10

.field private static final OP_DISPLAY_WIDE_COLOR_MODE:I = 0x11

.field private static final OP_NATIVE_CUSTOMER_P3_MODE:I = 0x15

.field private static final OP_NATIVE_CUSTOMER_SRGB_MODE:I = 0x14

.field static final PERSISTENT_PROPERTY_DISPLAY_COLOR:Ljava/lang/String; = "persist.sys.sf.native_mode"

.field private static final SURFACE_FLINGER:Ljava/lang/String; = "SurfaceFlinger"

.field private static final SURFACE_FLINGER_TRANSACTION_DISPLAY_COLOR:I = 0x3ff

.field private static final TAG:Ljava/lang/String; = "OpColorModeManager"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oneplus/android/server/display/OpColorModeManager;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/oneplus/android/server/display/OpColorModeManager;->nativeCreate()V

    return-void
.end method

.method private Yu()V
    .locals 1

    const/4 p0, 0x0

    const/16 v0, 0x10

    invoke-static {v0, p0}, Lcom/oneplus/android/server/display/OpColorModeManager;->nativeSetPanelMode(IZ)V

    const/16 v0, 0x11

    invoke-static {v0, p0}, Lcom/oneplus/android/server/display/OpColorModeManager;->nativeSetPanelMode(IZ)V

    const/16 v0, 0x12

    invoke-static {v0, p0}, Lcom/oneplus/android/server/display/OpColorModeManager;->nativeSetPanelMode(IZ)V

    const/16 v0, 0x14

    invoke-static {v0, p0}, Lcom/oneplus/android/server/display/OpColorModeManager;->nativeSetPanelMode(IZ)V

    const/16 v0, 0x15

    invoke-static {v0, p0}, Lcom/oneplus/android/server/display/OpColorModeManager;->nativeSetPanelMode(IZ)V

    return-void
.end method

.method private static native nativeCreate()V
.end method

.method private static native nativeSetActiveModesId(I)V
.end method

.method private static native nativeSetPanelMode(IZ)V
.end method


# virtual methods
.method public Q(I)I
    .locals 2

    iget-object p0, p0, Lcom/oneplus/android/server/display/OpColorModeManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "screen_color_mode_settings_value"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, p1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public R(I)Z
    .locals 2

    iget-object p0, p0, Lcom/oneplus/android/server/display/OpColorModeManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "reading_mode_status"

    invoke-static {p0, v1, v0, p1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 p1, 0x2

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public S(I)I
    .locals 2

    iget-object p0, p0, Lcom/oneplus/android/server/display/OpColorModeManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "screen_color_mode_advanced_settings_value"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public T(I)Z
    .locals 2

    iget-object p0, p0, Lcom/oneplus/android/server/display/OpColorModeManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "accessibility_display_daltonizer_enabled"

    invoke-static {p0, v1, v0, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    return p1
.end method

.method public U(I)Z
    .locals 2

    iget-object p0, p0, Lcom/oneplus/android/server/display/OpColorModeManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x1

    const-string v1, "accessibility_display_grayscale_enabled"

    invoke-static {p0, v1, v0, p1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public V(I)Z
    .locals 2

    iget-object p0, p0, Lcom/oneplus/android/server/display/OpColorModeManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "accessibility_display_inversion_enabled"

    invoke-static {p0, v1, v0, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    return p1
.end method

.method public W(I)Z
    .locals 2

    iget-object p0, p0, Lcom/oneplus/android/server/display/OpColorModeManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "night_display_activated"

    invoke-static {p0, v1, v0, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    return p1
.end method

.method public X(I)Z
    .locals 2

    iget-object p0, p0, Lcom/oneplus/android/server/display/OpColorModeManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "reading_mode_status"

    invoke-static {p0, v1, v0, p1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    return p1
.end method

.method public gwm(IZ)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/oneplus/android/server/display/OpColorModeManager;->Yu()V

    :goto_0
    invoke-static {p1, p2}, Lcom/oneplus/android/server/display/OpColorModeManager;->nativeSetPanelMode(IZ)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public setActiveModesId(I)V
    .locals 3

    const/4 p0, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    move v0, p0

    goto :goto_0

    :pswitch_1
    const/16 v0, 0x108

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x107

    goto :goto_0

    :pswitch_3
    const/16 v0, 0x106

    goto :goto_0

    :pswitch_4
    const/16 v0, 0x105

    goto :goto_0

    :pswitch_5
    const/16 v0, 0x104

    goto :goto_0

    :pswitch_6
    const/16 v0, 0x103

    goto :goto_0

    :pswitch_7
    const/16 v0, 0x102

    goto :goto_0

    :pswitch_8
    const/16 v0, 0x101

    goto :goto_0

    :pswitch_9
    const/16 v0, 0x100

    :goto_0
    const/4 v1, 0x1

    const-string v2, "persist.sys.color.adaptivep3"

    if-ne v1, p1, :cond_0

    const-string p1, "1"

    goto :goto_1

    :cond_0
    const-string p1, "0"

    :goto_1
    invoke-static {v2, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "persist.sys.sf.native_mode"

    invoke-static {v1, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "SurfaceFlinger"

    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    const-string v2, "android.ui.ISurfaceComposer"

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v0, 0x3ff

    const/4 v2, 0x0

    :try_start_0
    invoke-interface {p1, v0, v1, v2, p0}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    goto :goto_4

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception p0

    :try_start_1
    const-string p1, "OpColorModeManager"

    const-string v0, "Failed to set display color"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_3
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw p0

    :cond_1
    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
