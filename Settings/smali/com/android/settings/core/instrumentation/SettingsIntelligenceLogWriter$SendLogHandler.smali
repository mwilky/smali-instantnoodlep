.class Lcom/android/settings/core/instrumentation/SettingsIntelligenceLogWriter$SendLogHandler;
.super Landroid/os/Handler;
.source "SettingsIntelligenceLogWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/core/instrumentation/SettingsIntelligenceLogWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SendLogHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/core/instrumentation/SettingsIntelligenceLogWriter;


# direct methods
.method public constructor <init>(Lcom/android/settings/core/instrumentation/SettingsIntelligenceLogWriter;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/core/instrumentation/SettingsIntelligenceLogWriter$SendLogHandler;->this$0:Lcom/android/settings/core/instrumentation/SettingsIntelligenceLogWriter;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method
