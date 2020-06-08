.class public final synthetic Lcom/android/settings/-$$Lambda$AirplaneModeEnabler$Gg5VVf5AVNja8hbm8nZp_bWD9gY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/android/settings/AirplaneModeEnabler;

.field private final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/AirplaneModeEnabler;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/-$$Lambda$AirplaneModeEnabler$Gg5VVf5AVNja8hbm8nZp_bWD9gY;->f$0:Lcom/android/settings/AirplaneModeEnabler;

    iput-boolean p2, p0, Lcom/android/settings/-$$Lambda$AirplaneModeEnabler$Gg5VVf5AVNja8hbm8nZp_bWD9gY;->f$1:Z

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/-$$Lambda$AirplaneModeEnabler$Gg5VVf5AVNja8hbm8nZp_bWD9gY;->f$0:Lcom/android/settings/AirplaneModeEnabler;

    iget-boolean p0, p0, Lcom/android/settings/-$$Lambda$AirplaneModeEnabler$Gg5VVf5AVNja8hbm8nZp_bWD9gY;->f$1:Z

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/settings/AirplaneModeEnabler;->lambda$showEnableDialog$0$AirplaneModeEnabler(ZLandroid/content/DialogInterface;I)V

    return-void
.end method
