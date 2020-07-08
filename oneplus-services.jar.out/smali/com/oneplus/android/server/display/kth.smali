.class Lcom/oneplus/android/server/display/kth;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/server/OnePlusUtil$zta$you;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/android/server/display/OpColorDisplayService;->systemReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/android/server/display/OpColorDisplayService;


# direct methods
.method constructor <init>(Lcom/oneplus/android/server/display/OpColorDisplayService;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/display/kth;->this$0:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public frontPackageChanged(Ljava/lang/String;IILjava/lang/String;II)V
    .locals 8

    const-string p2, "com.tencent.ig"

    const-string p3, "pubg-fg-status"

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "frontPackageChanged: "

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    const-string v0, "OpColorDisplayService"

    invoke-static {v0, p5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "lpackageName: "

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {v0, p5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p5, p0, Lcom/oneplus/android/server/display/kth;->this$0:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-static {p5}, Lcom/oneplus/android/server/display/OpColorDisplayService;->access$200(Lcom/oneplus/android/server/display/OpColorDisplayService;)Landroid/content/Context;

    move-result-object p5

    invoke-static {p5}, Lcom/android/server/display/OpAutoBrightnessHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/display/OpAutoBrightnessHelper;

    move-result-object p5

    invoke-virtual {p5, p1}, Lcom/android/server/display/OpAutoBrightnessHelper;->setFontPackageName(Ljava/lang/String;)V

    iget-object p5, p0, Lcom/oneplus/android/server/display/kth;->this$0:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-static {p5}, Lcom/oneplus/android/server/display/OpColorDisplayService;->access$1200(Lcom/oneplus/android/server/display/OpColorDisplayService;)Z

    move-result p5

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p5, :cond_4

    const-string p5, "com.ss.android.ugc.aweme"

    invoke-virtual {p1, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    const/16 v4, 0x13

    if-eqz p5, :cond_0

    iget-object p5, p0, Lcom/oneplus/android/server/display/kth;->this$0:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-static {p5}, Lcom/oneplus/android/server/display/OpColorDisplayService;->access$1100(Lcom/oneplus/android/server/display/OpColorDisplayService;)Lcom/oneplus/android/server/display/OpColorModeManager;

    move-result-object p5

    invoke-virtual {p5, v4, v2}, Lcom/oneplus/android/server/display/OpColorModeManager;->gwm(IZ)V

    iget-object p5, p0, Lcom/oneplus/android/server/display/kth;->this$0:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-static {p5, v3}, Lcom/oneplus/android/server/display/OpColorDisplayService;->access$1302(Lcom/oneplus/android/server/display/OpColorDisplayService;Z)Z

    goto :goto_1

    :cond_0
    iget-object p5, p0, Lcom/oneplus/android/server/display/kth;->this$0:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-static {p5}, Lcom/oneplus/android/server/display/OpColorDisplayService;->access$1300(Lcom/oneplus/android/server/display/OpColorDisplayService;)Z

    move-result p5

    if-eqz p5, :cond_4

    iget-object p5, p0, Lcom/oneplus/android/server/display/kth;->this$0:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-static {p5}, Lcom/oneplus/android/server/display/OpColorDisplayService;->access$1100(Lcom/oneplus/android/server/display/OpColorDisplayService;)Lcom/oneplus/android/server/display/OpColorModeManager;

    move-result-object p5

    iget-object v5, p0, Lcom/oneplus/android/server/display/kth;->this$0:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-static {v5}, Lcom/oneplus/android/server/display/OpColorDisplayService;->access$300(Lcom/oneplus/android/server/display/OpColorDisplayService;)I

    move-result v5

    invoke-virtual {p5, v5}, Lcom/oneplus/android/server/display/OpColorModeManager;->Q(I)I

    move-result p5

    if-eq p5, v3, :cond_2

    const/4 v5, 0x3

    if-eq p5, v5, :cond_1

    goto :goto_0

    :cond_1
    iget-object p5, p0, Lcom/oneplus/android/server/display/kth;->this$0:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-static {p5}, Lcom/oneplus/android/server/display/OpColorDisplayService;->access$1100(Lcom/oneplus/android/server/display/OpColorDisplayService;)Lcom/oneplus/android/server/display/OpColorModeManager;

    move-result-object p5

    iget-object v5, p0, Lcom/oneplus/android/server/display/kth;->this$0:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-static {v5}, Lcom/oneplus/android/server/display/OpColorDisplayService;->access$300(Lcom/oneplus/android/server/display/OpColorDisplayService;)I

    move-result v5

    invoke-virtual {p5, v5}, Lcom/oneplus/android/server/display/OpColorModeManager;->S(I)I

    move-result p5

    if-nez p5, :cond_3

    new-array p5, v3, [I

    const/16 v5, 0x10f

    aput v5, p5, v2

    invoke-static {p5}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result p5

    if-nez p5, :cond_2

    new-array p5, v3, [I

    const/16 v5, 0x10e

    aput v5, p5, v2

    invoke-static {p5}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result p5

    if-eqz p5, :cond_3

    :cond_2
    iget-object p5, p0, Lcom/oneplus/android/server/display/kth;->this$0:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-static {p5}, Lcom/oneplus/android/server/display/OpColorDisplayService;->access$1100(Lcom/oneplus/android/server/display/OpColorDisplayService;)Lcom/oneplus/android/server/display/OpColorModeManager;

    move-result-object p5

    invoke-virtual {p5, v4, v3}, Lcom/oneplus/android/server/display/OpColorModeManager;->gwm(IZ)V

    :cond_3
    :goto_0
    iget-object p5, p0, Lcom/oneplus/android/server/display/kth;->this$0:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-static {p5, v2}, Lcom/oneplus/android/server/display/OpColorDisplayService;->access$1302(Lcom/oneplus/android/server/display/OpColorDisplayService;Z)Z

    :cond_4
    :goto_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    :try_start_0
    const-string p5, "net.oneplus.launcher"

    invoke-virtual {p1, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v6, "fg-app"

    if-eqz p5, :cond_5

    :try_start_1
    iget-object p5, p0, Lcom/oneplus/android/server/display/kth;->this$0:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-static {p5}, Lcom/oneplus/android/server/display/OpColorDisplayService;->access$200(Lcom/oneplus/android/server/display/OpColorDisplayService;)Landroid/content/Context;

    move-result-object p5

    invoke-virtual {p5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p5

    iget-object v7, p0, Lcom/oneplus/android/server/display/kth;->this$0:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-static {v7}, Lcom/oneplus/android/server/display/OpColorDisplayService;->access$300(Lcom/oneplus/android/server/display/OpColorDisplayService;)I

    move-result v7

    invoke-static {p5, v6, v3, v7}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_2

    :cond_5
    iget-object p5, p0, Lcom/oneplus/android/server/display/kth;->this$0:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-static {p5}, Lcom/oneplus/android/server/display/OpColorDisplayService;->access$200(Lcom/oneplus/android/server/display/OpColorDisplayService;)Landroid/content/Context;

    move-result-object p5

    invoke-virtual {p5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p5

    iget-object v7, p0, Lcom/oneplus/android/server/display/kth;->this$0:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-static {v7}, Lcom/oneplus/android/server/display/OpColorDisplayService;->access$300(Lcom/oneplus/android/server/display/OpColorDisplayService;)I

    move-result v7

    invoke-static {p5, v6, v2, v7}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :goto_2
    invoke-static {}, Lcom/oneplus/android/server/display/OpColorDisplayService;->access$1400()Z

    move-result p5

    if-eqz p5, :cond_8

    iget-object p5, p0, Lcom/oneplus/android/server/display/kth;->this$0:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-static {p5}, Lcom/oneplus/android/server/display/OpColorDisplayService;->access$200(Lcom/oneplus/android/server/display/OpColorDisplayService;)Landroid/content/Context;

    move-result-object p5

    invoke-virtual {p5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p5

    iget-object v6, p0, Lcom/oneplus/android/server/display/kth;->this$0:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-static {v6}, Lcom/oneplus/android/server/display/OpColorDisplayService;->access$300(Lcom/oneplus/android/server/display/OpColorDisplayService;)I

    move-result v6

    invoke-static {p5, p3, v2, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p5

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/oneplus/android/server/display/kth;->this$0:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-static {p1}, Lcom/oneplus/android/server/display/OpColorDisplayService;->access$200(Lcom/oneplus/android/server/display/OpColorDisplayService;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p0, p0, Lcom/oneplus/android/server/display/kth;->this$0:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-static {p0}, Lcom/oneplus/android/server/display/OpColorDisplayService;->access$300(Lcom/oneplus/android/server/display/OpColorDisplayService;)I

    move-result p0

    invoke-static {p1, p3, v3, p0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_4

    :cond_6
    if-ne p5, v3, :cond_7

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_7

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "frontPackageChanged. "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/oneplus/android/server/display/kth;->this$0:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-static {p1}, Lcom/oneplus/android/server/display/OpColorDisplayService;->access$200(Lcom/oneplus/android/server/display/OpColorDisplayService;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p0, p0, Lcom/oneplus/android/server/display/kth;->this$0:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-static {p0}, Lcom/oneplus/android/server/display/OpColorDisplayService;->access$300(Lcom/oneplus/android/server/display/OpColorDisplayService;)I

    move-result p0

    :goto_3
    invoke-static {p1, p3, v2, p0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_4

    :cond_7
    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/oneplus/android/server/display/kth;->this$0:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-static {p1}, Lcom/oneplus/android/server/display/OpColorDisplayService;->access$200(Lcom/oneplus/android/server/display/OpColorDisplayService;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p0, p0, Lcom/oneplus/android/server/display/kth;->this$0:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-static {p0}, Lcom/oneplus/android/server/display/OpColorDisplayService;->access$300(Lcom/oneplus/android/server/display/OpColorDisplayService;)I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :cond_8
    :goto_4
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method
