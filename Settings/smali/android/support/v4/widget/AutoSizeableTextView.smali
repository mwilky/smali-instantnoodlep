.class public interface abstract Landroid/support/v4/widget/AutoSizeableTextView;
.super Ljava/lang/Object;
.source "AutoSizeableTextView.java"


# static fields
.field public static final PLATFORM_SUPPORTS_AUTOSIZE:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v0, 0x1

    sput-boolean v0, Landroid/support/v4/widget/AutoSizeableTextView;->PLATFORM_SUPPORTS_AUTOSIZE:Z

    return-void
.end method
