.class Lcom/android/server/igw$sis;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/igw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "sis"
.end annotation


# static fields
.field public static final G:I = 0xd

.field public static final H:I = 0xe

.field public static final J:I = 0xf

.field public static final MSG_INIT:I = 0x8

.field public static final W:I = 0x10

.field public static final aa:I = 0x11

.field public static final bud:I = 0x1

.field public static final irq:I = 0x3

.field public static final ivd:I = 0x6

.field public static final j:I = 0x7

.field public static final k:I = 0x9

.field public static final les:I = 0x2

.field public static final m:I = 0xa

.field public static final o:I = 0xb

.field public static final qeg:I = 0x5

.field public static final u:I = 0xc

.field public static final vdw:I = 0x4

.field public static final vju:I


# instance fields
.field final synthetic this$0:Lcom/android/server/igw;


# direct methods
.method constructor <init>(Lcom/android/server/igw;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/igw$sis;->this$0:Lcom/android/server/igw;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 30

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "msg.what:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OnePlusChargingGuarder"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, v1, Landroid/os/Message;->what:I

    const/4 v4, -0x1

    const-string v5, "bedtime_mode_custom_end_time"

    const-string v6, "bedtime_mode_custom_start_time"

    const-string v7, "bedtime_mode_auto_mode"

    const/16 v8, 0xc

    const/4 v10, 0x4

    const-wide/16 v11, 0x0

    const-string v13, "NYNCG4I0TI"

    const-string v14, "appid"

    const-string v15, "/proc/wireless/quiet_mode"

    const/4 v9, 0x0

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_b

    :pswitch_0
    iget-object v1, v0, Lcom/android/server/igw$sis;->this$0:Lcom/android/server/igw;

    invoke-static {v1}, Lcom/android/server/igw;->rtg(Lcom/android/server/igw;)Z

    move-result v1

    if-eqz v1, :cond_17

    iget-object v1, v0, Lcom/android/server/igw$sis;->this$0:Lcom/android/server/igw;

    invoke-static {v1}, Lcom/android/server/igw;->obl(Lcom/android/server/igw;)Lnet/oneplus/odm/OpDeviceManagerInjector;

    move-result-object v1

    if-eqz v1, :cond_17

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1, v14, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "reverse_charge_failed"

    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "reverse_charge_failed:2"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, v0, Lcom/android/server/igw$sis;->this$0:Lcom/android/server/igw;

    invoke-static {v4}, Lcom/android/server/igw;->obl(Lcom/android/server/igw;)Lnet/oneplus/odm/OpDeviceManagerInjector;

    move-result-object v4

    iget-object v0, v0, Lcom/android/server/igw$sis;->this$0:Lcom/android/server/igw;

    invoke-static {v0}, Lcom/android/server/igw;->ear(Lcom/android/server/igw;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v4, v0, v3, v2, v1}, Lnet/oneplus/odm/OpDeviceManagerInjector;->preserveOsData(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    goto/16 :goto_b

    :pswitch_1
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, v0, Lcom/android/server/igw$sis;->this$0:Lcom/android/server/igw;

    invoke-static {v2}, Lcom/android/server/igw;->obl(Lcom/android/server/igw;)Lnet/oneplus/odm/OpDeviceManagerInjector;

    move-result-object v2

    if-eqz v2, :cond_17

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v2, v14, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "reverse_charge"

    invoke-virtual {v4, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "reverse_charge:"

    goto :goto_0

    :pswitch_2
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, v0, Lcom/android/server/igw$sis;->this$0:Lcom/android/server/igw;

    invoke-static {v2}, Lcom/android/server/igw;->obl(Lcom/android/server/igw;)Lnet/oneplus/odm/OpDeviceManagerInjector;

    move-result-object v2

    if-eqz v2, :cond_17

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v2, v14, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "reverse_charge_failed"

    invoke-virtual {v4, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "reverse_charge_failed:"

    goto :goto_0

    :pswitch_3
    iget-object v1, v0, Lcom/android/server/igw$sis;->this$0:Lcom/android/server/igw;

    iget-object v1, v1, Lcom/android/server/igw;->mBatteryManager:Landroid/os/BatteryManager;

    invoke-virtual {v1, v10}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result v1

    iget-object v2, v0, Lcom/android/server/igw$sis;->this$0:Lcom/android/server/igw;

    invoke-static {v2}, Lcom/android/server/igw;->obl(Lcom/android/server/igw;)Lnet/oneplus/odm/OpDeviceManagerInjector;

    move-result-object v2

    if-eqz v2, :cond_17

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v2, v14, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "manual_bedtime_off"

    invoke-virtual {v4, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "manual_bedtime_off:"

    :goto_0
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/android/server/igw$sis;->this$0:Lcom/android/server/igw;

    invoke-static {v1}, Lcom/android/server/igw;->obl(Lcom/android/server/igw;)Lnet/oneplus/odm/OpDeviceManagerInjector;

    move-result-object v1

    iget-object v0, v0, Lcom/android/server/igw$sis;->this$0:Lcom/android/server/igw;

    invoke-static {v0}, Lcom/android/server/igw;->ear(Lcom/android/server/igw;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v1, v0, v3, v4, v2}, Lnet/oneplus/odm/OpDeviceManagerInjector;->preserveOsData(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    goto/16 :goto_b

    :pswitch_4
    iget-object v0, v0, Lcom/android/server/igw$sis;->this$0:Lcom/android/server/igw;

    invoke-static {v0}, Lcom/android/server/igw;->cjf(Lcom/android/server/igw;)V

    goto/16 :goto_b

    :pswitch_5
    :try_start_0
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v0

    const-string v1, "android"

    const/4 v2, 0x0

    const v5, 0x33954bd

    invoke-interface {v0, v1, v2, v5, v4}, Landroid/app/INotificationManager;->cancelNotificationWithTag(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_b

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancel notification exception:"

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    :pswitch_6
    iget-object v0, v0, Lcom/android/server/igw$sis;->this$0:Lcom/android/server/igw;

    invoke-static {v0}, Lcom/android/server/igw;->oxb(Lcom/android/server/igw;)Landroid/app/Notification;

    move-result-object v9

    if-eqz v9, :cond_17

    :try_start_1
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v4

    const-string v5, "android"

    const-string v6, "android"

    const/4 v7, 0x0

    const v8, 0x33954bd

    const/4 v10, -0x1

    invoke-interface/range {v4 .. v10}, Landroid/app/INotificationManager;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_b

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_5

    :pswitch_7
    iget-object v1, v0, Lcom/android/server/igw$sis;->this$0:Lcom/android/server/igw;

    invoke-static {v1}, Lcom/android/server/igw;->ear(Lcom/android/server/igw;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v7, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iget-object v2, v0, Lcom/android/server/igw$sis;->this$0:Lcom/android/server/igw;

    invoke-static {v2}, Lcom/android/server/igw;->ear(Lcom/android/server/igw;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v6, v11, v12}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v6

    iget-object v2, v0, Lcom/android/server/igw$sis;->this$0:Lcom/android/server/igw;

    invoke-static {v2}, Lcom/android/server/igw;->ear(Lcom/android/server/igw;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v5, v11, v12}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v4

    if-eqz v1, :cond_17

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v10

    const/16 v11, 0xb

    invoke-virtual {v10, v11}, Ljava/util/Calendar;->get(I)I

    move-result v11

    invoke-virtual {v10, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    const/16 v12, 0xd

    invoke-virtual {v10, v12}, Ljava/util/Calendar;->get(I)I

    move-result v10

    mul-int/lit16 v11, v11, 0xe10

    mul-int/lit8 v8, v8, 0x3c

    add-int/2addr v11, v8

    add-int/2addr v11, v10

    mul-int/lit16 v11, v11, 0x3e8

    int-to-long v10, v11

    cmp-long v8, v6, v4

    if-lez v8, :cond_0

    cmp-long v10, v10, v4

    if-gez v10, :cond_0

    invoke-static {}, Ljava/time/LocalDate;->now()Ljava/time/LocalDate;

    move-result-object v10

    const-wide/16 v11, -0x1

    invoke-virtual {v10, v11, v12}, Ljava/time/LocalDate;->plusDays(J)Ljava/time/LocalDate;

    move-result-object v10

    goto :goto_2

    :cond_0
    invoke-static {}, Ljava/time/LocalDate;->now()Ljava/time/LocalDate;

    move-result-object v10

    :goto_2
    const-wide/16 v11, 0x3e8

    div-long/2addr v6, v11

    invoke-static {v6, v7}, Ljava/time/LocalTime;->ofSecondOfDay(J)Ljava/time/LocalTime;

    move-result-object v6

    div-long/2addr v4, v11

    invoke-static {v4, v5}, Ljava/time/LocalTime;->ofSecondOfDay(J)Ljava/time/LocalTime;

    move-result-object v4

    if-lez v8, :cond_1

    const-wide/16 v7, 0x1

    invoke-virtual {v10, v7, v8}, Ljava/time/LocalDate;->plusDays(J)Ljava/time/LocalDate;

    move-result-object v5

    invoke-static {v5, v4}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v4

    goto :goto_3

    :cond_1
    invoke-static {v10, v4}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v4

    :goto_3
    invoke-static {v10, v6}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v5

    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/time/LocalDateTime;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v5

    invoke-virtual {v5}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v5

    invoke-virtual {v4, v7}, Ljava/time/LocalDateTime;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v4

    invoke-virtual {v4}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v4

    invoke-virtual {v5}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v11

    invoke-virtual {v4}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[quiet mode]sleepStart="

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v13, ", sleepEnd="

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v13, ", mContinueCharingTime="

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v0, Lcom/android/server/igw$sis;->this$0:Lcom/android/server/igw;

    invoke-static {v13}, Lcom/android/server/igw;->lqr(Lcom/android/server/igw;)J

    move-result-wide v13

    invoke-virtual {v8, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, v0, Lcom/android/server/igw$sis;->this$0:Lcom/android/server/igw;

    invoke-static {v8}, Lcom/android/server/igw;->zgw(Lcom/android/server/igw;)Landroid/app/AlarmManager;

    move-result-object v8

    if-nez v8, :cond_2

    iget-object v8, v0, Lcom/android/server/igw$sis;->this$0:Lcom/android/server/igw;

    invoke-static {v8}, Lcom/android/server/igw;->ear(Lcom/android/server/igw;)Landroid/content/Context;

    move-result-object v13

    const-string v14, "alarm"

    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/app/AlarmManager;

    invoke-static {v8, v13}, Lcom/android/server/igw;->zta(Lcom/android/server/igw;Landroid/app/AlarmManager;)Landroid/app/AlarmManager;

    :cond_2
    cmp-long v8, v11, v1

    if-gez v8, :cond_4

    cmp-long v13, v1, v4

    if-gez v13, :cond_4

    iget-object v1, v0, Lcom/android/server/igw$sis;->this$0:Lcom/android/server/igw;

    invoke-static {v1}, Lcom/android/server/igw;->lqr(Lcom/android/server/igw;)J

    move-result-wide v1

    const-wide/32 v6, 0x6ddd00

    add-long/2addr v1, v6

    cmp-long v1, v11, v1

    if-lez v1, :cond_3

    iget-object v1, v0, Lcom/android/server/igw$sis;->this$0:Lcom/android/server/igw;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6, v15}, Lcom/android/server/igw;->zta(Lcom/android/server/igw;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/server/igw$sis;->this$0:Lcom/android/server/igw;

    invoke-static {v1}, Lcom/android/server/igw;->ire(Lcom/android/server/igw;)I

    move-result v1

    if-eq v1, v2, :cond_3

    iget-object v1, v0, Lcom/android/server/igw$sis;->this$0:Lcom/android/server/igw;

    invoke-virtual {v1, v15}, Lcom/android/server/igw;->vdb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/android/server/igw$sis;->this$0:Lcom/android/server/igw;

    invoke-static {v1}, Lcom/android/server/igw;->fto(Lcom/android/server/igw;)Lcom/android/server/igw$sis;

    move-result-object v1

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    :cond_3
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.oneplus.chargingguarder.close_quietmode"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/server/igw$sis;->this$0:Lcom/android/server/igw;

    invoke-static {v2}, Lcom/android/server/igw;->ear(Lcom/android/server/igw;)Landroid/content/Context;

    move-result-object v2

    const/4 v6, 0x1

    invoke-static {v2, v6, v1, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iget-object v0, v0, Lcom/android/server/igw$sis;->this$0:Lcom/android/server/igw;

    invoke-static {v0}, Lcom/android/server/igw;->zgw(Lcom/android/server/igw;)Landroid/app/AlarmManager;

    move-result-object v0

    invoke-virtual {v0, v6, v4, v5, v1}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set a alarm to close quiet mode in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_4
    if-ltz v8, :cond_5

    iget-object v1, v0, Lcom/android/server/igw$sis;->this$0:Lcom/android/server/igw;

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v15}, Lcom/android/server/igw;->zta(Lcom/android/server/igw;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.oneplus.chargingguarder.open_quietmode"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/server/igw$sis;->this$0:Lcom/android/server/igw;

    invoke-static {v2}, Lcom/android/server/igw;->ear(Lcom/android/server/igw;)Landroid/content/Context;

    move-result-object v2

    const/4 v4, 0x1

    invoke-static {v2, v4, v1, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iget-object v0, v0, Lcom/android/server/igw$sis;->this$0:Lcom/android/server/igw;

    invoke-static {v0}, Lcom/android/server/igw;->zgw(Lcom/android/server/igw;)Landroid/app/AlarmManager;

    move-result-object v0

    invoke-virtual {v0, v4, v11, v12, v1}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set a alarm to open quiet mode in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :goto_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    :cond_5
    cmp-long v1, v4, v1

    if-gtz v1, :cond_17

    iget-object v1, v0, Lcom/android/server/igw$sis;->this$0:Lcom/android/server/igw;

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v15}, Lcom/android/server/igw;->zta(Lcom/android/server/igw;Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v1, 0x1

    invoke-virtual {v10, v1, v2}, Ljava/time/LocalDate;->plusDays(J)Ljava/time/LocalDate;

    move-result-object v1

    invoke-static {v1, v6}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/time/LocalDateTime;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v1

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.oneplus.chargingguarder.open_quietmode"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/android/server/igw$sis;->this$0:Lcom/android/server/igw;

    invoke-static {v5}, Lcom/android/server/igw;->ear(Lcom/android/server/igw;)Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v5, v6, v4, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    iget-object v0, v0, Lcom/android/server/igw$sis;->this$0:Lcom/android/server/igw;

    invoke-static {v0}, Lcom/android/server/igw;->zgw(Lcom/android/server/igw;)Landroid/app/AlarmManager;

    move-result-object v0

    invoke-virtual {v0, v6, v1, v2, v4}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set a alarm to open quiet mode in "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_4

    :pswitch_8
    iget-object v1, v0, Lcom/android/server/igw$sis;->this$0:Lcom/android/server/igw;

    invoke-static {v1}, Lcom/android/server/igw;->ear(Lcom/android/server/igw;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/igw$sis;->this$0:Lcom/android/server/igw;

    invoke-static {v2}, Lcom/android/server/igw;->bvj(Lcom/android/server/igw;)Lcom/android/server/igw$zta;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/igw$sis;->this$0:Lcom/android/server/igw;

    invoke-static {v3}, Lcom/android/server/igw;->ibl(Lcom/android/server/igw;)Landroid/content/IntentFilter;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v1, v0, Lcom/android/server/igw$sis;->this$0:Lcom/android/server/igw;

    invoke-static {v1}, Lcom/android/server/igw;->dma(Lcom/android/server/igw;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "charging_guarder_enabled"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/igw$sis;->this$0:Lcom/android/server/igw;

    invoke-static {v3}, Lcom/android/server/igw;->gwm(Lcom/android/server/igw;)Lcom/android/server/igw$you;

    move-result-object v3

    invoke-virtual {v1, v2, v9, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v1, v0, Lcom/android/server/igw$sis;->this$0:Lcom/android/server/igw;

    invoke-static {v1}, Lcom/android/server/igw;->hmo(Lcom/android/server/igw;)Z

    move-result v1

    if-eqz v1, :cond_17

    iget-object v1, v0, Lcom/android/server/igw$sis;->this$0:Lcom/android/server/igw;

    invoke-static {v1}, Lcom/android/server/igw;->dma(Lcom/android/server/igw;)Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v7}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/igw$sis;->this$0:Lcom/android/server/igw;

    invoke-static {v3}, Lcom/android/server/igw;->gwm(Lcom/android/server/igw;)Lcom/android/server/igw$you;

    move-result-object v3

    invoke-virtual {v1, v2, v9, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v1, v0, Lcom/android/server/igw$sis;->this$0:Lcom/android/server/igw;

    invoke-static {v1}, Lcom/android/server/igw;->dma(Lcom/android/server/igw;)Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v6}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/igw$sis;->this$0:Lcom/android/server/igw;

    invoke-static {v3}, Lcom/android/server/igw;->gwm(Lcom/android/server/igw;)Lcom/android/server/igw$you;

    move-result-object v3

    invoke-virtual {v1, v2, v9, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v1, v0, Lcom/android/server/igw$sis;->this$0:Lcom/android/server/igw;

    invoke-static {v1}, Lcom/android/server/igw;->dma(Lcom/android/server/igw;)Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v5}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/igw$sis;->this$0:Lcom/android/server/igw;

    invoke-static {v3}, Lcom/android/server/igw;->gwm(Lcom/android/server/igw;)Lcom/android/server/igw$you;

    move-result-object v3

    invoke-virtual {v1, v2, v9, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v1, v0, Lcom/android/server/igw$sis;->this$0:Lcom/android/server/igw;

    invoke-static {v1}, Lcom/android/server/igw;->dma(Lcom/android/server/igw;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "reverse_wireless_charging_status"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/igw$sis;->this$0:Lcom/android/server/igw;

    invoke-static {v3}, Lcom/android/server/igw;->gwm(Lcom/android/server/igw;)Lcom/android/server/igw$you;

    move-result-object v3

    invoke-virtual {v1, v2, v9, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v1, v0, Lcom/android/server/igw$sis;->this$0:Lcom/android/server/igw;

    invoke-static {v1}, Lcom/android/server/igw;->dma(Lcom/android/server/igw;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "reverse_wireless_disable_reason"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v0, v0, Lcom/android/server/igw$sis;->this$0:Lcom/android/server/igw;

    invoke-static {v0}, Lcom/android/server/igw;->gwm(Lcom/android/server/igw;)Lcom/android/server/igw$you;

    move-result-object v0

    invoke-virtual {v1, v2, v9, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto/16 :goto_b

    :pswitch_9
    iget-object v1, v0, Lcom/android/server/igw$sis;->this$0:Lcom/android/server/igw;

    invoke-static {v1}, Lcom/android/server/igw;->obl(Lcom/android/server/igw;)Lnet/oneplus/odm/OpDeviceManagerInjector;

    move-result-object v1

    if-eqz v1, :cond_17

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1, v14, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lcom/android/server/igw$tsu;->access$2500()Lcom/android/server/igw$tsu;

    move-result-object v5

    iget-wide v5, v5, Lcom/android/server/igw$tsu;->ld:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    const-string v6, "total_connected_duration_secs"

    invoke-virtual {v2, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/android/server/igw$tsu;->access$2500()Lcom/android/server/igw$tsu;

    move-result-object v5

    iget-wide v5, v5, Lcom/android/server/igw$tsu;->md:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    const-string v6, "total_suspended_duration_secs"

    invoke-virtual {v2, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v0, Lcom/android/server/igw$sis;->this$0:Lcom/android/server/igw;

    invoke-static {v5}, Lcom/android/server/igw;->zta(Lcom/android/server/igw;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "optimized_charging"

    invoke-virtual {v2, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v0, Lcom/android/server/igw$sis;->this$0:Lcom/android/server/igw;

    invoke-virtual {v5}, Lcom/android/server/igw;->F()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "full_charge_capacity"

    invoke-virtual {v2, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/android/server/igw$tsu;->access$2500()Lcom/android/server/igw$tsu;

    move-result-object v5

    iget-wide v5, v5, Lcom/android/server/igw$tsu;->nd:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    const-string v6, "totalSusConChargingDurSecs"

    invoke-virtual {v2, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/android/server/igw$tsu;->access$2500()Lcom/android/server/igw$tsu;

    move-result-object v5

    iget-wide v5, v5, Lcom/android/server/igw$tsu;->od:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    const-string v6, "totalSusDisconnectedDurSecs"

    invoke-virtual {v2, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v0, Lcom/android/server/igw$sis;->this$0:Lcom/android/server/igw;

    invoke-static {v5}, Lcom/android/server/igw;->oif(Lcom/android/server/igw;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "wireless_charging_type"

    invoke-virtual {v2, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v0, Lcom/android/server/igw$sis;->this$0:Lcom/android/server/igw;

    invoke-static {v5}, Lcom/android/server/igw;->ywr(Lcom/android/server/igw;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "unaligned_charging"

    invoke-virtual {v2, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v0, Lcom/android/server/igw$sis;->this$0:Lcom/android/server/igw;

    invoke-static {v5}, Lcom/android/server/igw;->igw(Lcom/android/server/igw;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "total_charging"

    invoke-virtual {v2, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "wireless_charging_type:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/android/server/igw$sis;->this$0:Lcom/android/server/igw;

    invoke-static {v6}, Lcom/android/server/igw;->oif(Lcom/android/server/igw;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", unaligned_charging:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/android/server/igw$sis;->this$0:Lcom/android/server/igw;

    invoke-static {v6}, Lcom/android/server/igw;->ywr(Lcom/android/server/igw;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", total_charging:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/android/server/igw$sis;->this$0:Lcom/android/server/igw;

    invoke-static {v6}, Lcom/android/server/igw;->igw(Lcom/android/server/igw;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, v0, Lcom/android/server/igw$sis;->this$0:Lcom/android/server/igw;

    invoke-static {v5, v4}, Lcom/android/server/igw;->rtg(Lcom/android/server/igw;I)I

    iget-object v4, v0, Lcom/android/server/igw$sis;->this$0:Lcom/android/server/igw;

    invoke-static {v4, v9}, Lcom/android/server/igw;->tsu(Lcom/android/server/igw;I)I

    iget-object v4, v0, Lcom/android/server/igw$sis;->this$0:Lcom/android/server/igw;

    invoke-static {v4, v9}, Lcom/android/server/igw;->sis(Lcom/android/server/igw;I)I

    iget-object v4, v0, Lcom/android/server/igw$sis;->this$0:Lcom/android/server/igw;

    invoke-static {v4}, Lcom/android/server/igw;->obl(Lcom/android/server/igw;)Lnet/oneplus/odm/OpDeviceManagerInjector;

    move-result-object v4

    iget-object v5, v0, Lcom/android/server/igw$sis;->this$0:Lcom/android/server/igw;

    invoke-static {v5}, Lcom/android/server/igw;->ear(Lcom/android/server/igw;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5, v3, v2, v1}, Lnet/oneplus/odm/OpDeviceManagerInjector;->preserveOsData(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/server/igw$tsu;->access$2500()Lcom/android/server/igw$tsu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/igw$tsu;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", optimized_charging:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/server/igw$sis;->this$0:Lcom/android/server/igw;

    invoke-static {v2}, Lcom/android/server/igw;->zta(Lcom/android/server/igw;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/igw$tsu;->access$2500()Lcom/android/server/igw$tsu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/igw$tsu;->clear()V

    iget-object v0, v0, Lcom/android/server/igw$sis;->this$0:Lcom/android/server/igw;

    invoke-virtual {v0}, Lcom/android/server/igw;->K()V

    goto/16 :goto_b

    :pswitch_a
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v0, v0, Lcom/android/server/igw$sis;->this$0:Lcom/android/server/igw;

    invoke-static {v0, v1}, Lcom/android/server/igw;->zta(Lcom/android/server/igw;Ljava/lang/String;)Landroid/app/Notification;

    move-result-object v9

    if-eqz v9, :cond_17

    :try_start_2
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v4

    const-string v5, "android"

    const-string v6, "android"

    const/4 v7, 0x0

    const v8, 0x33954bd

    const/4 v10, -0x1

    invoke-interface/range {v4 .. v10}, Landroid/app/INotificationManager;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_b

    :catch_2
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_5
    const-string v2, "push notification exception:"

    goto/16 :goto_1

    :pswitch_b
    iget-object v1, v0, Lcom/android/server/igw$sis;->this$0:Lcom/android/server/igw;

    invoke-static {v1}, Lcom/android/server/igw;->ire(Lcom/android/server/igw;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_6

    invoke-static {}, Lcom/android/server/igw$tsu;->access$2500()Lcom/android/server/igw$tsu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/igw$tsu;->A()V

    invoke-static {}, Lcom/android/server/igw$tsu;->access$2500()Lcom/android/server/igw$tsu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/igw$tsu;->C()V

    iget-object v1, v0, Lcom/android/server/igw$sis;->this$0:Lcom/android/server/igw;

    invoke-virtual {v1}, Lcom/android/server/igw;->E()V

    iget-object v1, v0, Lcom/android/server/igw$sis;->this$0:Lcom/android/server/igw;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v1, v4, v5}, Lcom/android/server/igw;->zta(Lcom/android/server/igw;J)J

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/android/server/igw$sis;->this$0:Lcom/android/server/igw;

    invoke-static {v2}, Lcom/android/server/igw;->lqr(Lcom/android/server/igw;)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/server/igw$sis;->this$0:Lcom/android/server/igw;

    invoke-static {v2}, Lcom/android/server/igw;->ear(Lcom/android/server/igw;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "opcg_recover_charge_data"

    invoke-static {v2, v4, v1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v1, v0, Lcom/android/server/igw$sis;->this$0:Lcom/android/server/igw;

    iget-object v1, v1, Lcom/android/server/igw;->mBatteryManager:Landroid/os/BatteryManager;

    invoke-virtual {v1, v10}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result v1

    iget-object v2, v0, Lcom/android/server/igw$sis;->this$0:Lcom/android/server/igw;

    invoke-static {v2}, Lcom/android/server/igw;->obl(Lcom/android/server/igw;)Lnet/oneplus/odm/OpDeviceManagerInjector;

    move-result-object v2

    if-eqz v2, :cond_6

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v2, v14, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "manual_optimised_off"

    invoke-virtual {v4, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "manual_optimised_off:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/android/server/igw$sis;->this$0:Lcom/android/server/igw;

    invoke-static {v1}, Lcom/android/server/igw;->obl(Lcom/android/server/igw;)Lnet/oneplus/odm/OpDeviceManagerInjector;

    move-result-object v1

    iget-object v5, v0, Lcom/android/server/igw$sis;->this$0:Lcom/android/server/igw;

    invoke-static {v5}, Lcom/android/server/igw;->ear(Lcom/android/server/igw;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v1, v5, v3, v4, v2}, Lnet/oneplus/odm/OpDeviceManagerInjector;->preserveOsData(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    :cond_6
    iget-object v1, v0, Lcom/android/server/igw$sis;->this$0:Lcom/android/server/igw;

    invoke-static {v1}, Lcom/android/server/igw;->hmo(Lcom/android/server/igw;)Z

    move-result v1

    if-eqz v1, :cond_17

    goto :goto_6

    :pswitch_c
    invoke-static {}, Lcom/android/server/igw$tsu;->access$2500()Lcom/android/server/igw$tsu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/igw$tsu;->z()V

    iget-object v1, v0, Lcom/android/server/igw$sis;->this$0:Lcom/android/server/igw;

    invoke-static {v1}, Lcom/android/server/igw;->ire(Lcom/android/server/igw;)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_7

    iget-object v1, v0, Lcom/android/server/igw$sis;->this$0:Lcom/android/server/igw;

    invoke-static {v1}, Lcom/android/server/igw;->ire(Lcom/android/server/igw;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_17

    :cond_7
    iget-object v1, v0, Lcom/android/server/igw$sis;->this$0:Lcom/android/server/igw;

    invoke-virtual {v1}, Lcom/android/server/igw;->E()V

    iget-object v0, v0, Lcom/android/server/igw$sis;->this$0:Lcom/android/server/igw;

    invoke-static {v0}, Lcom/android/server/igw;->fto(Lcom/android/server/igw;)Lcom/android/server/igw$sis;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/os/Handler;->removeMessages(I)V

    invoke-static {}, Lcom/android/server/igw$tsu;->access$2500()Lcom/android/server/igw$tsu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/igw$tsu;->B()V

    invoke-static {}, Lcom/android/server/igw$tsu;->access$2500()Lcom/android/server/igw$tsu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/igw$tsu;->C()V

    goto/16 :goto_b

    :pswitch_d
    iget-object v0, v0, Lcom/android/server/igw$sis;->this$0:Lcom/android/server/igw;

    invoke-virtual {v0}, Lcom/android/server/igw;->D()V

    goto/16 :goto_b

    :pswitch_e
    iget-object v1, v0, Lcom/android/server/igw$sis;->this$0:Lcom/android/server/igw;

    invoke-static {v1}, Lcom/android/server/igw;->ire(Lcom/android/server/igw;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_8

    invoke-static {}, Lcom/android/server/igw$tsu;->access$2500()Lcom/android/server/igw$tsu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/igw$tsu;->C()V

    iget-object v1, v0, Lcom/android/server/igw$sis;->this$0:Lcom/android/server/igw;

    invoke-virtual {v1}, Lcom/android/server/igw;->E()V

    iget-object v1, v0, Lcom/android/server/igw$sis;->this$0:Lcom/android/server/igw;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/android/server/igw;->ssp(Lcom/android/server/igw;I)I

    :cond_8
    iget-object v1, v0, Lcom/android/server/igw$sis;->this$0:Lcom/android/server/igw;

    invoke-static {v1}, Lcom/android/server/igw;->hmo(Lcom/android/server/igw;)Z

    move-result v1

    if-eqz v1, :cond_17

    :goto_6
    iget-object v1, v0, Lcom/android/server/igw$sis;->this$0:Lcom/android/server/igw;

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v15}, Lcom/android/server/igw;->zta(Lcom/android/server/igw;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v0, Lcom/android/server/igw$sis;->this$0:Lcom/android/server/igw;

    invoke-static {v0}, Lcom/android/server/igw;->fto(Lcom/android/server/igw;)Lcom/android/server/igw$sis;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_b

    :pswitch_f
    if-nez v2, :cond_9

    iget v2, v1, Landroid/os/Message;->arg1:I

    iget-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    goto :goto_8

    :cond_9
    const/4 v4, 0x3

    if-eq v2, v4, :cond_b

    const/16 v4, 0x9

    if-ne v2, v4, :cond_a

    iget-object v2, v0, Lcom/android/server/igw$sis;->this$0:Lcom/android/server/igw;

    invoke-static {v2}, Lcom/android/server/igw;->ire(Lcom/android/server/igw;)I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_a

    goto :goto_7

    :cond_a
    move v2, v9

    move v4, v2

    goto :goto_8

    :cond_b
    :goto_7
    iget-object v2, v0, Lcom/android/server/igw$sis;->this$0:Lcom/android/server/igw;

    iget-object v2, v2, Lcom/android/server/igw;->mBatteryManager:Landroid/os/BatteryManager;

    invoke-virtual {v2, v10}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result v2

    invoke-static {}, Lcom/android/server/igw$tsu;->access$2500()Lcom/android/server/igw$tsu;

    move-result-object v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/android/server/igw$tsu;->zta(J)V

    const/4 v4, 0x1

    :goto_8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "level:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", isCharging:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", mState:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/android/server/igw$sis;->this$0:Lcom/android/server/igw;

    invoke-static {v6}, Lcom/android/server/igw;->ire(Lcom/android/server/igw;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, v0, Lcom/android/server/igw$sis;->this$0:Lcom/android/server/igw;

    invoke-static {v5}, Lcom/android/server/igw;->you(Lcom/android/server/igw;)J

    move-result-wide v5

    const-wide/32 v13, 0x36ee80

    sub-long/2addr v5, v13

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iget-object v7, v0, Lcom/android/server/igw$sis;->this$0:Lcom/android/server/igw;

    invoke-static {v7}, Lcom/android/server/igw;->tsu(Lcom/android/server/igw;)Z

    move-result v7

    if-eqz v7, :cond_c

    return-void

    :cond_c
    if-eqz v4, :cond_d

    const/16 v4, 0x50

    if-lt v2, v4, :cond_d

    iget-object v4, v0, Lcom/android/server/igw$sis;->this$0:Lcom/android/server/igw;

    invoke-static {v4}, Lcom/android/server/igw;->ire(Lcom/android/server/igw;)I

    move-result v4

    const/4 v7, 0x2

    if-ne v4, v7, :cond_d

    iget-object v4, v0, Lcom/android/server/igw$sis;->this$0:Lcom/android/server/igw;

    invoke-static {v4}, Lcom/android/server/igw;->lqr(Lcom/android/server/igw;)J

    move-result-wide v16

    cmp-long v4, v5, v16

    if-gtz v4, :cond_e

    :cond_d
    iget v1, v1, Landroid/os/Message;->what:I

    const/16 v4, 0x9

    if-ne v1, v4, :cond_16

    iget-object v1, v0, Lcom/android/server/igw$sis;->this$0:Lcom/android/server/igw;

    invoke-static {v1}, Lcom/android/server/igw;->ire(Lcom/android/server/igw;)I

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_16

    :cond_e
    iget-object v1, v0, Lcom/android/server/igw$sis;->this$0:Lcom/android/server/igw;

    iget-object v1, v1, Lcom/android/server/igw;->mBatteryManager:Landroid/os/BatteryManager;

    invoke-virtual {v1}, Landroid/os/BatteryManager;->computeChargeTimeRemaining()J

    move-result-wide v11

    const-wide/16 v18, -0x1

    cmp-long v1, v11, v18

    if-eqz v1, :cond_f

    add-long v18, v11, v13

    goto :goto_9

    :cond_f
    iget-object v1, v0, Lcom/android/server/igw$sis;->this$0:Lcom/android/server/igw;

    invoke-static {v1}, Lcom/android/server/igw;->ugm(Lcom/android/server/igw;)J

    move-result-wide v18

    add-long v18, v18, v13

    :goto_9
    iget-object v1, v0, Lcom/android/server/igw$sis;->this$0:Lcom/android/server/igw;

    invoke-static {v1}, Lcom/android/server/igw;->hmo(Lcom/android/server/igw;)Z

    move-result v1

    if-eqz v1, :cond_10

    iget-object v1, v0, Lcom/android/server/igw$sis;->this$0:Lcom/android/server/igw;

    const-string v4, "/sys/class/power_supply/wireless/online"

    invoke-virtual {v1, v4}, Lcom/android/server/igw;->vdb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "1"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    iget-object v1, v0, Lcom/android/server/igw$sis;->this$0:Lcom/android/server/igw;

    invoke-static {v1}, Lcom/android/server/igw;->ugm(Lcom/android/server/igw;)J

    move-result-wide v18

    add-long v18, v18, v13

    :cond_10
    iget-object v1, v0, Lcom/android/server/igw$sis;->this$0:Lcom/android/server/igw;

    invoke-static {v1}, Lcom/android/server/igw;->you(Lcom/android/server/igw;)J

    move-result-wide v13

    iget-object v1, v0, Lcom/android/server/igw$sis;->this$0:Lcom/android/server/igw;

    invoke-static {v1}, Lcom/android/server/igw;->vdb(Lcom/android/server/igw;)J

    move-result-wide v20

    add-long v13, v13, v20

    sub-long v20, v13, v18

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v22

    add-long v22, v22, v18

    iget-object v1, v0, Lcom/android/server/igw$sis;->this$0:Lcom/android/server/igw;

    invoke-static {v1}, Lcom/android/server/igw;->zgw(Lcom/android/server/igw;)Landroid/app/AlarmManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlarmManager;->getNextWakeFromIdleTime()J

    move-result-wide v24

    cmp-long v1, v22, v24

    if-lez v1, :cond_12

    const-string v1, "because of the next wake up alarm coming"

    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/android/server/igw$sis;->this$0:Lcom/android/server/igw;

    invoke-static {v1}, Lcom/android/server/igw;->ire(Lcom/android/server/igw;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_11

    iget-object v0, v0, Lcom/android/server/igw$sis;->this$0:Lcom/android/server/igw;

    invoke-virtual {v0}, Lcom/android/server/igw;->E()V

    :cond_11
    return-void

    :cond_12
    iget-object v1, v0, Lcom/android/server/igw$sis;->this$0:Lcom/android/server/igw;

    invoke-static {v1}, Lcom/android/server/igw;->zgw(Lcom/android/server/igw;)Landroid/app/AlarmManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlarmManager;->getNextWakeFromIdleTime()J

    move-result-wide v22

    const-wide v24, 0x7fffffffffffffffL

    cmp-long v1, v22, v24

    if-eqz v1, :cond_14

    iget-object v1, v0, Lcom/android/server/igw$sis;->this$0:Lcom/android/server/igw;

    invoke-static {v1}, Lcom/android/server/igw;->zgw(Lcom/android/server/igw;)Landroid/app/AlarmManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlarmManager;->getNextWakeFromIdleTime()J

    move-result-wide v22

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v24

    sub-long v22, v22, v24

    add-long v22, v22, v9

    sub-long v18, v22, v18

    const-wide/16 v16, 0x0

    cmp-long v1, v18, v16

    if-lez v1, :cond_13

    cmp-long v1, v22, v13

    if-gez v1, :cond_13

    const-string v1, "alarm comes first, so need to change end time"

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-wide/from16 v26, v18

    move-wide/from16 v13, v22

    move-wide/from16 v28, v13

    goto :goto_a

    :cond_13
    move-wide/from16 v26, v20

    move-wide/from16 v28, v22

    goto :goto_a

    :cond_14
    const-wide/16 v16, 0x0

    move-wide/from16 v28, v16

    move-wide/from16 v26, v20

    :goto_a
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v1, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v13, v14}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "now:"

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v13, Ljava/util/Date;

    invoke-direct {v13, v9, v10}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v13}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ",startTime:"

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v13, Ljava/util/Date;

    invoke-direct {v13, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v13}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    cmp-long v5, v9, v5

    if-ltz v5, :cond_16

    move-wide/from16 v5, v26

    cmp-long v7, v9, v5

    if-gtz v7, :cond_16

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "computeChargeTimeRemaining:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, ",end:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v9, Ljava/util/Date;

    invoke-direct {v9, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ",alarmEnd:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v9, Ljava/util/Date;

    move-wide/from16 v10, v28

    invoke-direct {v9, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/android/server/igw$sis;->this$0:Lcom/android/server/igw;

    invoke-virtual {v1}, Lcom/android/server/igw;->D()V

    iget-object v1, v0, Lcom/android/server/igw$sis;->this$0:Lcom/android/server/igw;

    invoke-static {v1}, Lcom/android/server/igw;->hmo(Lcom/android/server/igw;)Z

    move-result v1

    if-eqz v1, :cond_15

    iget-object v1, v0, Lcom/android/server/igw$sis;->this$0:Lcom/android/server/igw;

    const-string v7, "/sys/class/power_supply/wireless/online"

    invoke-virtual {v1, v7}, Lcom/android/server/igw;->vdb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v7, "1"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    iget-object v1, v0, Lcom/android/server/igw$sis;->this$0:Lcom/android/server/igw;

    invoke-static {v1}, Lcom/android/server/igw;->fto(Lcom/android/server/igw;)Lcom/android/server/igw$sis;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, v0, Lcom/android/server/igw$sis;->this$0:Lcom/android/server/igw;

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8, v15}, Lcom/android/server/igw;->zta(Lcom/android/server/igw;Ljava/lang/String;Ljava/lang/String;)V

    :cond_15
    invoke-static {}, Lcom/android/server/igw$tsu;->access$2500()Lcom/android/server/igw$tsu;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    invoke-virtual {v1, v7, v8}, Lcom/android/server/igw$tsu;->you(J)V

    iget-object v1, v0, Lcom/android/server/igw$sis;->this$0:Lcom/android/server/igw;

    invoke-static {v1}, Lcom/android/server/igw;->fto(Lcom/android/server/igw;)Lcom/android/server/igw$sis;

    move-result-object v1

    const/4 v7, 0x6

    invoke-virtual {v1, v7, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    const-string v1, "disable Charging and send notification"

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/Intent;

    const-string v4, "net.oneplus.charingguarder.intent.OPCG"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/android/server/igw$sis;->this$0:Lcom/android/server/igw;

    invoke-static {v4}, Lcom/android/server/igw;->ear(Lcom/android/server/igw;)Landroid/content/Context;

    move-result-object v4

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static {v4, v7, v1, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iget-object v4, v0, Lcom/android/server/igw$sis;->this$0:Lcom/android/server/igw;

    invoke-static {v4}, Lcom/android/server/igw;->zgw(Lcom/android/server/igw;)Landroid/app/AlarmManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    iget-object v4, v0, Lcom/android/server/igw$sis;->this$0:Lcom/android/server/igw;

    invoke-static {v4}, Lcom/android/server/igw;->zgw(Lcom/android/server/igw;)Landroid/app/AlarmManager;

    move-result-object v4

    invoke-virtual {v4, v8, v5, v6, v1}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    :cond_16
    iget-object v1, v0, Lcom/android/server/igw$sis;->this$0:Lcom/android/server/igw;

    invoke-static {v1}, Lcom/android/server/igw;->ire(Lcom/android/server/igw;)I

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_17

    const/16 v1, 0x3c

    if-gt v2, v1, :cond_17

    const-string v1, "level is lower than 60, should enable charging"

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v0, Lcom/android/server/igw$sis;->this$0:Lcom/android/server/igw;

    invoke-virtual {v0}, Lcom/android/server/igw;->E()V

    :cond_17
    :goto_b
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_f
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_f
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
