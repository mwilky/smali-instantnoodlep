.class Lcom/oneplus/settings/utils/OPThemeUtils$1;
.super Ljava/lang/Object;
.source "OPThemeUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$enable:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Z)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/utils/OPThemeUtils$1;->val$context:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/oneplus/settings/utils/OPThemeUtils$1;->val$enable:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "OPThemeUtils"

    const-string v1, "enableAospDarkTheme delay"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/settings/utils/OPThemeUtils$1;->val$context:Landroid/content/Context;

    iget-boolean p0, p0, Lcom/oneplus/settings/utils/OPThemeUtils$1;->val$enable:Z

    invoke-static {v0, p0}, Lcom/oneplus/settings/utils/OPThemeUtils;->access$000(Landroid/content/Context;Z)V

    return-void
.end method
