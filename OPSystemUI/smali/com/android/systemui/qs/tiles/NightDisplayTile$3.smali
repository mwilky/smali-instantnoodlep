.class Lcom/android/systemui/qs/tiles/NightDisplayTile$3;
.super Lcom/oneplus/util/SystemSetting;
.source "NightDisplayTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/NightDisplayTile;-><init>(Lcom/android/systemui/qs/QSHost;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/NightDisplayTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/NightDisplayTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/NightDisplayTile$3;->this$0:Lcom/android/systemui/qs/tiles/NightDisplayTile;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/oneplus/util/SystemSetting;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method protected handleValueChanged(IZ)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/NightDisplayTile$3;->this$0:Lcom/android/systemui/qs/tiles/NightDisplayTile;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState()V

    return-void
.end method
