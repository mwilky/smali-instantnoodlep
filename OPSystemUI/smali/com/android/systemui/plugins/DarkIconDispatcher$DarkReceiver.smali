.class public interface abstract Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;
.super Ljava/lang/Object;
.source "DarkIconDispatcher.java"


# annotations
.annotation runtime Lcom/android/systemui/plugins/annotations/ProvidesInterface;
    version = 0x1
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/plugins/DarkIconDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DarkReceiver"
.end annotation


# static fields
.field public static final VERSION:I = 0x1


# virtual methods
.method public abstract onDarkChanged(Landroid/graphics/Rect;FI)V
.end method

.method public abstract updateViews(F)V
.end method

