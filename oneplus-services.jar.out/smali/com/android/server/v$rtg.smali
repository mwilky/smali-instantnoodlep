.class Lcom/android/server/v$rtg;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oneplus/config/ConfigObserver$ConfigUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "rtg"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/v;


# direct methods
.method private constructor <init>(Lcom/android/server/v;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/v$rtg;->this$0:Lcom/android/server/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/v;Lcom/android/server/u;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/v$rtg;-><init>(Lcom/android/server/v;)V

    return-void
.end method


# virtual methods
.method public resolveConfigFromJSON(Lorg/json/JSONArray;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "trigger_period"

    const-string v3, "monitor_num"

    const-string v4, "ignore_install_rule_forced"

    const-string v5, "monitor_forced"

    const-string v6, "thermal_precision"

    const-string v7, "thermal_path"

    const-string v8, "mdm"

    const-string v9, "bugreport_beta"

    const-string v10, "bugreport"

    const-string v11, "switch"

    const-string v12, "log_on"

    const-string v13, "OverHeatingDiagnosis"

    if-nez v1, :cond_0

    const-string v0, "[OnlineConfig] config is null!"

    :goto_0
    invoke-static {v13, v0}, Lcom/android/server/kth$zta;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v14, v0, Lcom/android/server/v$rtg;->this$0:Lcom/android/server/v;

    invoke-static {v14}, Lcom/android/server/v;->igw(Lcom/android/server/v;)Z

    move-result v14

    if-nez v14, :cond_1

    const-string v0, "[OnlineConfig] OnlineConfig is disabled"

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-lez v14, :cond_17

    const/4 v14, 0x0

    invoke-virtual {v1, v14}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    invoke-virtual {v15, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_2

    iget-object v14, v0, Lcom/android/server/v$rtg;->this$0:Lcom/android/server/v;

    invoke-virtual {v15, v11}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v11

    invoke-static {v14, v11}, Lcom/android/server/v;->sis(Lcom/android/server/v;Z)Z

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[OnlineConfig] mEnabled: "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v0, Lcom/android/server/v$rtg;->this$0:Lcom/android/server/v;

    invoke-static {v14}, Lcom/android/server/v;->ssp(Lcom/android/server/v;)Z

    move-result v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v13, v11}, Lcom/android/server/kth$zta;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {v15, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v14, "[OnlineConfig] mEnabledBugreport: "

    if-eqz v11, :cond_3

    :try_start_1
    iget-object v11, v0, Lcom/android/server/v$rtg;->this$0:Lcom/android/server/v;

    invoke-virtual {v15, v10}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    invoke-static {v11, v10}, Lcom/android/server/v;->tsu(Lcom/android/server/v;Z)Z

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v0, Lcom/android/server/v$rtg;->this$0:Lcom/android/server/v;

    invoke-static {v11}, Lcom/android/server/v;->wtn(Lcom/android/server/v;)Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v13, v10}, Lcom/android/server/kth$zta;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {v15, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    sget-boolean v10, Lcom/android/server/OpPowerControllerService;->BETA_OR_ALPHA_ROM:Z

    if-eqz v10, :cond_4

    iget-object v10, v0, Lcom/android/server/v$rtg;->this$0:Lcom/android/server/v;

    invoke-virtual {v15, v9}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    invoke-static {v10, v9}, Lcom/android/server/v;->tsu(Lcom/android/server/v;Z)Z

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Lcom/android/server/v$rtg;->this$0:Lcom/android/server/v;

    invoke-static {v10}, Lcom/android/server/v;->wtn(Lcom/android/server/v;)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v13, v9}, Lcom/android/server/kth$zta;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-virtual {v15, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    iget-object v9, v0, Lcom/android/server/v$rtg;->this$0:Lcom/android/server/v;

    invoke-virtual {v15, v8}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    invoke-static {v9, v8}, Lcom/android/server/v;->rtg(Lcom/android/server/v;Z)Z

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[OnlineConfig] mEnabledMDM: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/android/server/v$rtg;->this$0:Lcom/android/server/v;

    invoke-static {v9}, Lcom/android/server/v;->gck(Lcom/android/server/v;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v13, v8}, Lcom/android/server/kth$zta;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-virtual {v15, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/android/server/v$rtg;->this$0:Lcom/android/server/v;

    invoke-virtual {v15, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Lcom/android/server/v;->zta(Lcom/android/server/v;Ljava/lang/String;)Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[OnlineConfig] mThermalZonePath: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/android/server/v$rtg;->this$0:Lcom/android/server/v;

    invoke-static {v8}, Lcom/android/server/v;->dma(Lcom/android/server/v;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v13, v7}, Lcom/android/server/kth$zta;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    invoke-virtual {v15, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    iget-object v7, v0, Lcom/android/server/v$rtg;->this$0:Lcom/android/server/v;

    invoke-virtual {v15, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v7, v6}, Lcom/android/server/v;->rtg(Lcom/android/server/v;I)I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[OnlineConfig] mThermalZonePrecision: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/android/server/v$rtg;->this$0:Lcom/android/server/v;

    invoke-static {v7}, Lcom/android/server/v;->ywr(Lcom/android/server/v;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v13, v6}, Lcom/android/server/kth$zta;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    invoke-virtual {v15, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    iget-object v6, v0, Lcom/android/server/v$rtg;->this$0:Lcom/android/server/v;

    invoke-virtual {v15, v5}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v6, v5}, Lcom/android/server/v;->ssp(Lcom/android/server/v;Z)Z

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[OnlineConfig] mMonitorForced: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/android/server/v$rtg;->this$0:Lcom/android/server/v;

    invoke-static {v6}, Lcom/android/server/v;->qbh(Lcom/android/server/v;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v13, v5}, Lcom/android/server/kth$zta;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    invoke-virtual {v15, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    iget-object v5, v0, Lcom/android/server/v$rtg;->this$0:Lcom/android/server/v;

    invoke-virtual {v15, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v5, v4}, Lcom/android/server/v;->cno(Lcom/android/server/v;Z)Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[OnlineConfig] mIgnoreInstallRuleForced: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/server/v$rtg;->this$0:Lcom/android/server/v;

    invoke-static {v5}, Lcom/android/server/v;->oif(Lcom/android/server/v;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v13, v4}, Lcom/android/server/kth$zta;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    invoke-virtual {v15, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v4, v0, Lcom/android/server/v$rtg;->this$0:Lcom/android/server/v;

    invoke-virtual {v15, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v4, v3}, Lcom/android/server/v;->ssp(Lcom/android/server/v;I)I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[OnlineConfig] mMonitorNum: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/server/v$rtg;->this$0:Lcom/android/server/v;

    invoke-static {v4}, Lcom/android/server/v;->bvj(Lcom/android/server/v;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3}, Lcom/android/server/kth$zta;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v3, v0, Lcom/android/server/v$rtg;->this$0:Lcom/android/server/v;

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/android/server/v;->zta(Lcom/android/server/v;J)J

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] mTriggerPeriod: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/v$rtg;->this$0:Lcom/android/server/v;

    invoke-static {v3}, Lcom/android/server/v;->ibl(Lcom/android/server/v;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Lcom/android/server/kth$zta;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    const-string v2, "min_detect_period"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, v0, Lcom/android/server/v$rtg;->this$0:Lcom/android/server/v;

    const-string v3, "min_detect_period"

    invoke-virtual {v15, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/android/server/v;->you(Lcom/android/server/v;J)J

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] mMinDetectPeriod: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/v$rtg;->this$0:Lcom/android/server/v;

    invoke-static {v3}, Lcom/android/server/v;->gwm(Lcom/android/server/v;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Lcom/android/server/kth$zta;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    const-string v2, "monitor_period"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v2, v0, Lcom/android/server/v$rtg;->this$0:Lcom/android/server/v;

    const-string v3, "monitor_period"

    invoke-virtual {v15, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/android/server/v;->sis(Lcom/android/server/v;J)J

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] mMonitorPeriod: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/v$rtg;->this$0:Lcom/android/server/v;

    invoke-static {v3}, Lcom/android/server/v;->ugm(Lcom/android/server/v;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Lcom/android/server/kth$zta;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    const-string v2, "monitor_frequency"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    iget-object v2, v0, Lcom/android/server/v$rtg;->this$0:Lcom/android/server/v;

    const-string v3, "monitor_frequency"

    invoke-virtual {v15, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/android/server/v;->tsu(Lcom/android/server/v;J)J

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] mMonitorFrequency: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/v$rtg;->this$0:Lcom/android/server/v;

    invoke-static {v3}, Lcom/android/server/v;->vdb(Lcom/android/server/v;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Lcom/android/server/kth$zta;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    const-string v2, "monitor_temp"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    iget-object v2, v0, Lcom/android/server/v$rtg;->this$0:Lcom/android/server/v;

    const-string v3, "monitor_temp"

    invoke-virtual {v15, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/server/v;->cno(Lcom/android/server/v;I)I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] mMonitorTemp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/v$rtg;->this$0:Lcom/android/server/v;

    invoke-static {v3}, Lcom/android/server/v;->zgw(Lcom/android/server/v;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Lcom/android/server/kth$zta;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    const-string v2, "normal_current"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    iget-object v2, v0, Lcom/android/server/v$rtg;->this$0:Lcom/android/server/v;

    const-string v3, "normal_current"

    invoke-virtual {v15, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    int-to-long v3, v3

    invoke-static {v2, v3, v4}, Lcom/android/server/v;->rtg(Lcom/android/server/v;J)J

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] mNormalCurrent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/v$rtg;->this$0:Lcom/android/server/v;

    invoke-static {v3}, Lcom/android/server/v;->obl(Lcom/android/server/v;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Lcom/android/server/kth$zta;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    const-string v2, "critical_cpu"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    iget-object v2, v0, Lcom/android/server/v$rtg;->this$0:Lcom/android/server/v;

    const-string v3, "critical_cpu"

    invoke-virtual {v15, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/server/v;->kth(Lcom/android/server/v;I)I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] mCriticalCpu: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/v$rtg;->this$0:Lcom/android/server/v;

    invoke-static {v3}, Lcom/android/server/v;->oxb(Lcom/android/server/v;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Lcom/android/server/kth$zta;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    const-string v2, "critical_total_cpu"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    iget-object v2, v0, Lcom/android/server/v$rtg;->this$0:Lcom/android/server/v;

    const-string v3, "critical_total_cpu"

    invoke-virtual {v15, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/server/v;->bio(Lcom/android/server/v;I)I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] mCriticalTotalCpu: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/v$rtg;->this$0:Lcom/android/server/v;

    invoke-static {v3}, Lcom/android/server/v;->cjf(Lcom/android/server/v;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Lcom/android/server/kth$zta;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    const-string v2, "critical_foreground"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    iget-object v2, v0, Lcom/android/server/v$rtg;->this$0:Lcom/android/server/v;

    const-string v3, "critical_foreground"

    invoke-virtual {v15, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/android/server/v;->ssp(Lcom/android/server/v;J)J

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] mCriticalForeground: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/v$rtg;->this$0:Lcom/android/server/v;

    invoke-static {v3}, Lcom/android/server/v;->ear(Lcom/android/server/v;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Lcom/android/server/kth$zta;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    const-string v2, "critical_charging"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    iget-object v2, v0, Lcom/android/server/v$rtg;->this$0:Lcom/android/server/v;

    const-string v3, "critical_charging"

    invoke-virtual {v15, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/android/server/v;->cno(Lcom/android/server/v;J)J

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] mCriticalCharging: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/v$rtg;->this$0:Lcom/android/server/v;

    invoke-static {v3}, Lcom/android/server/v;->ire(Lcom/android/server/v;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Lcom/android/server/kth$zta;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    invoke-virtual {v15, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_16

    invoke-virtual {v15, v12}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-static {v3}, Lcom/android/server/kth$zta;->bio(Z)V

    goto :goto_1

    :cond_15
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/server/kth$zta;->bio(Z)V

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[OnlineConfig] log_on: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Lcom/android/server/kth$zta;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v3, v2, :cond_17

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    iget-object v4, v0, Lcom/android/server/v$rtg;->this$0:Lcom/android/server/v;

    const-string v5, "system_report_rules"

    iget-object v6, v0, Lcom/android/server/v$rtg;->this$0:Lcom/android/server/v;

    iget-object v6, v6, Lcom/android/server/v;->Nk:Lcom/android/server/v$cno;

    invoke-virtual {v4, v2, v5, v6}, Lcom/android/server/v;->zta(Lorg/json/JSONObject;Ljava/lang/String;Lcom/android/server/v$cno;)V

    iget-object v4, v0, Lcom/android/server/v$rtg;->this$0:Lcom/android/server/v;

    const-string v5, "ota_upgrade_rules"

    iget-object v6, v0, Lcom/android/server/v$rtg;->this$0:Lcom/android/server/v;

    iget-object v6, v6, Lcom/android/server/v;->Ok:Lcom/android/server/v$cno;

    invoke-virtual {v4, v2, v5, v6}, Lcom/android/server/v;->zta(Lorg/json/JSONObject;Ljava/lang/String;Lcom/android/server/v$cno;)V

    iget-object v4, v0, Lcom/android/server/v$rtg;->this$0:Lcom/android/server/v;

    const-string v5, "install_rules"

    iget-object v6, v0, Lcom/android/server/v$rtg;->this$0:Lcom/android/server/v;

    iget-object v6, v6, Lcom/android/server/v;->Pk:Lcom/android/server/v$cno;

    invoke-virtual {v4, v2, v5, v6}, Lcom/android/server/v;->zta(Lorg/json/JSONObject;Ljava/lang/String;Lcom/android/server/v$cno;)V

    iget-object v4, v0, Lcom/android/server/v$rtg;->this$0:Lcom/android/server/v;

    const-string v5, "dexopt_rules"

    iget-object v6, v0, Lcom/android/server/v$rtg;->this$0:Lcom/android/server/v;

    iget-object v6, v6, Lcom/android/server/v;->Qk:Lcom/android/server/v$cno;

    invoke-virtual {v4, v2, v5, v6}, Lcom/android/server/v;->zta(Lorg/json/JSONObject;Ljava/lang/String;Lcom/android/server/v$cno;)V

    iget-object v4, v0, Lcom/android/server/v$rtg;->this$0:Lcom/android/server/v;

    const-string v5, "forground_report_rules"

    iget-object v6, v0, Lcom/android/server/v$rtg;->this$0:Lcom/android/server/v;

    iget-object v6, v6, Lcom/android/server/v;->Rk:Lcom/android/server/v$cno;

    invoke-virtual {v4, v2, v5, v6}, Lcom/android/server/v;->zta(Lorg/json/JSONObject;Ljava/lang/String;Lcom/android/server/v$cno;)V

    iget-object v4, v0, Lcom/android/server/v$rtg;->this$0:Lcom/android/server/v;

    const-string v5, "background_report_rules"

    iget-object v6, v0, Lcom/android/server/v$rtg;->this$0:Lcom/android/server/v;

    iget-object v6, v6, Lcom/android/server/v;->Sk:Lcom/android/server/v$cno;

    invoke-virtual {v4, v2, v5, v6}, Lcom/android/server/v;->zta(Lorg/json/JSONObject;Ljava/lang/String;Lcom/android/server/v$cno;)V

    iget-object v4, v0, Lcom/android/server/v$rtg;->this$0:Lcom/android/server/v;

    const-string v5, "unknown_report_rules"

    iget-object v6, v0, Lcom/android/server/v$rtg;->this$0:Lcom/android/server/v;

    iget-object v6, v6, Lcom/android/server/v;->Tk:Lcom/android/server/v$cno;

    invoke-virtual {v4, v2, v5, v6}, Lcom/android/server/v;->zta(Lorg/json/JSONObject;Ljava/lang/String;Lcom/android/server/v$cno;)V

    iget-object v4, v0, Lcom/android/server/v$rtg;->this$0:Lcom/android/server/v;

    const-string v5, "flashlight_report_rules"

    iget-object v6, v0, Lcom/android/server/v$rtg;->this$0:Lcom/android/server/v;

    iget-object v6, v6, Lcom/android/server/v;->Wk:Lcom/android/server/v$cno;

    invoke-virtual {v4, v2, v5, v6}, Lcom/android/server/v;->zta(Lorg/json/JSONObject;Ljava/lang/String;Lcom/android/server/v$cno;)V

    iget-object v4, v0, Lcom/android/server/v$rtg;->this$0:Lcom/android/server/v;

    const-string v5, "total_cpu_load_report_rules"

    iget-object v6, v0, Lcom/android/server/v$rtg;->this$0:Lcom/android/server/v;

    iget-object v6, v6, Lcom/android/server/v;->Uk:Lcom/android/server/v$cno;

    invoke-virtual {v4, v2, v5, v6}, Lcom/android/server/v;->zta(Lorg/json/JSONObject;Ljava/lang/String;Lcom/android/server/v$cno;)V

    iget-object v4, v0, Lcom/android/server/v$rtg;->this$0:Lcom/android/server/v;

    const-string v5, "camera_hardware_rules"

    iget-object v6, v0, Lcom/android/server/v$rtg;->this$0:Lcom/android/server/v;

    iget-object v6, v6, Lcom/android/server/v;->Vk:Lcom/android/server/v$cno;

    invoke-virtual {v4, v2, v5, v6}, Lcom/android/server/v;->zta(Lorg/json/JSONObject;Ljava/lang/String;Lcom/android/server/v$cno;)V

    iget-object v4, v0, Lcom/android/server/v$rtg;->this$0:Lcom/android/server/v;

    const-string v5, "phone_call_rules"

    iget-object v6, v0, Lcom/android/server/v$rtg;->this$0:Lcom/android/server/v;

    iget-object v6, v6, Lcom/android/server/v;->Xk:Lcom/android/server/v$cno;

    invoke-virtual {v4, v2, v5, v6}, Lcom/android/server/v;->zta(Lorg/json/JSONObject;Ljava/lang/String;Lcom/android/server/v$cno;)V

    iget-object v4, v0, Lcom/android/server/v$rtg;->this$0:Lcom/android/server/v;

    const-string v5, "env_rules"

    iget-object v6, v0, Lcom/android/server/v$rtg;->this$0:Lcom/android/server/v;

    iget-object v6, v6, Lcom/android/server/v;->Yk:Lcom/android/server/v$cno;

    invoke-virtual {v4, v2, v5, v6}, Lcom/android/server/v;->zta(Lorg/json/JSONObject;Ljava/lang/String;Lcom/android/server/v$cno;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnlineConfig] Failed to process onlineconfig! \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/android/server/kth$zta;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    return-void
.end method

.method public updateConfig(Lorg/json/JSONArray;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/v$rtg;->resolveConfigFromJSON(Lorg/json/JSONArray;)V

    return-void
.end method
