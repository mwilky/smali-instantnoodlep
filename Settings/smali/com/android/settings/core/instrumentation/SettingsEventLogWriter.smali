.class public Lcom/android/settings/core/instrumentation/SettingsEventLogWriter;
.super Lcom/android/settingslib/core/instrumentation/EventLogWriter;
.source "SettingsEventLogWriter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settingslib/core/instrumentation/EventLogWriter;-><init>()V

    return-void
.end method

.method private static shouldDisableGenericEventLogging()Z
    .locals 3

    const/4 v0, 0x1

    const-string v1, "settings_ui"

    const-string v2, "event_logging_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public action(Landroid/content/Context;II)V
    .locals 0

    invoke-static {}, Lcom/android/settings/core/instrumentation/SettingsEventLogWriter;->shouldDisableGenericEventLogging()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    invoke-static {p1, p2, p3}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    return-void
.end method

.method public action(Landroid/content/Context;ILjava/lang/String;)V
    .locals 0

    invoke-static {}, Lcom/android/settings/core/instrumentation/SettingsEventLogWriter;->shouldDisableGenericEventLogging()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Landroid/metrics/LogMaker;

    invoke-direct {p0, p2}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object p0

    invoke-virtual {p0, p3}, Landroid/metrics/LogMaker;->setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    return-void
.end method

.method public action(Landroid/content/Context;IZ)V
    .locals 0

    invoke-static {}, Lcom/android/settings/core/instrumentation/SettingsEventLogWriter;->shouldDisableGenericEventLogging()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    invoke-static {p1, p2, p3}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    return-void
.end method

.method public hidden(Landroid/content/Context;I)V
    .locals 0

    invoke-static {}, Lcom/android/settings/core/instrumentation/SettingsEventLogWriter;->shouldDisableGenericEventLogging()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    invoke-static {p1, p2}, Lcom/android/internal/logging/MetricsLogger;->hidden(Landroid/content/Context;I)V

    return-void
.end method

.method public visible(Landroid/content/Context;II)V
    .locals 0

    invoke-static {}, Lcom/android/settings/core/instrumentation/SettingsEventLogWriter;->shouldDisableGenericEventLogging()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Landroid/metrics/LogMaker;

    invoke-direct {p0, p3}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p2, 0x341

    invoke-virtual {p0, p2, p1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    return-void
.end method
