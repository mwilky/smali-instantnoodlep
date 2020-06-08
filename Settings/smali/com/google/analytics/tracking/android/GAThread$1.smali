.class Lcom/google/analytics/tracking/android/GAThread$1;
.super Ljava/lang/Object;
.source "GAThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/analytics/tracking/android/GAThread;->sendHit(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/analytics/tracking/android/GAThread;

.field final synthetic val$hitCopy:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/google/analytics/tracking/android/GAThread;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/google/analytics/tracking/android/GAThread$1;->this$0:Lcom/google/analytics/tracking/android/GAThread;

    iput-object p2, p0, Lcom/google/analytics/tracking/android/GAThread$1;->val$hitCopy:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/analytics/tracking/android/GAThread$1;->val$hitCopy:Ljava/util/Map;

    const-string v2, "&cid"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/google/analytics/tracking/android/GAThread$1;->val$hitCopy:Ljava/util/Map;

    iget-object v3, v0, Lcom/google/analytics/tracking/android/GAThread$1;->this$0:Lcom/google/analytics/tracking/android/GAThread;

    invoke-static {v3}, Lcom/google/analytics/tracking/android/GAThread;->access$000(Lcom/google/analytics/tracking/android/GAThread;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v1, v0, Lcom/google/analytics/tracking/android/GAThread$1;->this$0:Lcom/google/analytics/tracking/android/GAThread;

    invoke-static {v1}, Lcom/google/analytics/tracking/android/GAThread;->access$100(Lcom/google/analytics/tracking/android/GAThread;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/analytics/tracking/android/GoogleAnalytics;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->getAppOptOut()Z

    move-result v1

    if-nez v1, :cond_f

    iget-object v1, v0, Lcom/google/analytics/tracking/android/GAThread$1;->this$0:Lcom/google/analytics/tracking/android/GAThread;

    iget-object v2, v0, Lcom/google/analytics/tracking/android/GAThread$1;->val$hitCopy:Ljava/util/Map;

    invoke-static {v1, v2}, Lcom/google/analytics/tracking/android/GAThread;->access$200(Lcom/google/analytics/tracking/android/GAThread;Ljava/util/Map;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_6

    :cond_1
    iget-object v1, v0, Lcom/google/analytics/tracking/android/GAThread$1;->this$0:Lcom/google/analytics/tracking/android/GAThread;

    invoke-static {v1}, Lcom/google/analytics/tracking/android/GAThread;->access$300(Lcom/google/analytics/tracking/android/GAThread;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "&"

    const/4 v3, 0x1

    if-nez v1, :cond_a

    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/google/analytics/tracking/android/GAUsage;->setDisableUsage(Z)V

    iget-object v1, v0, Lcom/google/analytics/tracking/android/GAThread$1;->val$hitCopy:Ljava/util/Map;

    new-instance v4, Lcom/google/analytics/tracking/android/MapBuilder;

    invoke-direct {v4}, Lcom/google/analytics/tracking/android/MapBuilder;-><init>()V

    iget-object v5, v0, Lcom/google/analytics/tracking/android/GAThread$1;->this$0:Lcom/google/analytics/tracking/android/GAThread;

    invoke-static {v5}, Lcom/google/analytics/tracking/android/GAThread;->access$300(Lcom/google/analytics/tracking/android/GAThread;)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v6

    sget-object v7, Lcom/google/analytics/tracking/android/GAUsage$Field;->MAP_BUILDER_SET_CAMPAIGN_PARAMS:Lcom/google/analytics/tracking/android/GAUsage$Field;

    invoke-virtual {v6, v7}, Lcom/google/analytics/tracking/android/GAUsage;->setUsage(Lcom/google/analytics/tracking/android/GAUsage$Field;)V

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    if-eqz v6, :cond_2

    goto :goto_0

    :cond_2
    const-string v6, "?"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "[\\?]"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v9, v6

    if-le v9, v3, :cond_3

    aget-object v5, v6, v3

    :cond_3
    const-string v6, "%3D"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    const-string v9, "="

    if-eqz v6, :cond_4

    :try_start_0
    const-string v6, "UTF-8"

    invoke-static {v5, v6}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_4
    invoke-virtual {v5, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    :catch_0
    :goto_0
    move-object v5, v8

    goto :goto_3

    :cond_5
    :goto_1
    invoke-static {v5}, Lcom/google/analytics/tracking/android/Utils;->parseURLParameters(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5

    const-string v10, "dclid"

    const-string v11, "utm_source"

    const-string v12, "gclid"

    const-string v13, "utm_campaign"

    const-string v14, "utm_medium"

    const-string v15, "utm_term"

    const-string v16, "utm_content"

    const-string v17, "utm_id"

    const-string v18, "gmob_t"

    filled-new-array/range {v10 .. v18}, [Ljava/lang/String;

    move-result-object v6

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move v11, v7

    :goto_2
    array-length v12, v6

    if-ge v11, v12, :cond_8

    aget-object v12, v6, v11

    invoke-interface {v5, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/CharSequence;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_7

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    if-lez v12, :cond_6

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    aget-object v12, v6, v11

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v12, v6, v11

    invoke-interface {v5, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_8
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_3
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_9

    goto :goto_4

    :cond_9
    invoke-static {v5}, Lcom/google/analytics/tracking/android/Utils;->parseURLParameters(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5

    const-string v6, "utm_content"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v9, "&cc"

    invoke-virtual {v4, v9, v6}, Lcom/google/analytics/tracking/android/MapBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/analytics/tracking/android/MapBuilder;

    const-string v6, "utm_medium"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v9, "&cm"

    invoke-virtual {v4, v9, v6}, Lcom/google/analytics/tracking/android/MapBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/analytics/tracking/android/MapBuilder;

    const-string v6, "utm_campaign"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v9, "&cn"

    invoke-virtual {v4, v9, v6}, Lcom/google/analytics/tracking/android/MapBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/analytics/tracking/android/MapBuilder;

    const-string v6, "utm_source"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v9, "&cs"

    invoke-virtual {v4, v9, v6}, Lcom/google/analytics/tracking/android/MapBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/analytics/tracking/android/MapBuilder;

    const-string v6, "utm_term"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v9, "&ck"

    invoke-virtual {v4, v9, v6}, Lcom/google/analytics/tracking/android/MapBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/analytics/tracking/android/MapBuilder;

    const-string v6, "utm_id"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v9, "&ci"

    invoke-virtual {v4, v9, v6}, Lcom/google/analytics/tracking/android/MapBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/analytics/tracking/android/MapBuilder;

    const-string v6, "gclid"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v9, "&gclid"

    invoke-virtual {v4, v9, v6}, Lcom/google/analytics/tracking/android/MapBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/analytics/tracking/android/MapBuilder;

    const-string v6, "dclid"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v9, "&dclid"

    invoke-virtual {v4, v9, v6}, Lcom/google/analytics/tracking/android/MapBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/analytics/tracking/android/MapBuilder;

    const-string v6, "gmob_t"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "&gmob_t"

    invoke-virtual {v4, v6, v5}, Lcom/google/analytics/tracking/android/MapBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/analytics/tracking/android/MapBuilder;

    :goto_4
    invoke-virtual {v4}, Lcom/google/analytics/tracking/android/MapBuilder;->build()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/google/analytics/tracking/android/GAUsage;->setDisableUsage(Z)V

    iget-object v1, v0, Lcom/google/analytics/tracking/android/GAThread$1;->this$0:Lcom/google/analytics/tracking/android/GAThread;

    invoke-static {v1, v8}, Lcom/google/analytics/tracking/android/GAThread;->access$302(Lcom/google/analytics/tracking/android/GAThread;Ljava/lang/String;)Ljava/lang/String;

    :cond_a
    iget-object v1, v0, Lcom/google/analytics/tracking/android/GAThread$1;->this$0:Lcom/google/analytics/tracking/android/GAThread;

    iget-object v4, v0, Lcom/google/analytics/tracking/android/GAThread$1;->val$hitCopy:Ljava/util/Map;

    invoke-static {v1, v4}, Lcom/google/analytics/tracking/android/GAThread;->access$400(Lcom/google/analytics/tracking/android/GAThread;Ljava/util/Map;)V

    iget-object v1, v0, Lcom/google/analytics/tracking/android/GAThread$1;->val$hitCopy:Ljava/util/Map;

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_c

    goto :goto_5

    :cond_c
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_d

    goto :goto_5

    :cond_d
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_e
    iget-object v1, v0, Lcom/google/analytics/tracking/android/GAThread$1;->this$0:Lcom/google/analytics/tracking/android/GAThread;

    invoke-static {v1}, Lcom/google/analytics/tracking/android/GAThread;->access$700(Lcom/google/analytics/tracking/android/GAThread;)Lcom/google/analytics/tracking/android/ServiceProxy;

    move-result-object v4

    iget-object v1, v0, Lcom/google/analytics/tracking/android/GAThread$1;->val$hitCopy:Ljava/util/Map;

    const-string v2, "&ht"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-object v1, v0, Lcom/google/analytics/tracking/android/GAThread$1;->this$0:Lcom/google/analytics/tracking/android/GAThread;

    iget-object v2, v0, Lcom/google/analytics/tracking/android/GAThread$1;->val$hitCopy:Ljava/util/Map;

    invoke-static {v1, v2}, Lcom/google/analytics/tracking/android/GAThread;->access$500(Lcom/google/analytics/tracking/android/GAThread;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v8

    iget-object v0, v0, Lcom/google/analytics/tracking/android/GAThread$1;->this$0:Lcom/google/analytics/tracking/android/GAThread;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/GAThread;->access$600(Lcom/google/analytics/tracking/android/GAThread;)Ljava/util/List;

    move-result-object v9

    invoke-interface/range {v4 .. v9}, Lcom/google/analytics/tracking/android/ServiceProxy;->putHit(Ljava/util/Map;JLjava/lang/String;Ljava/util/List;)V

    :cond_f
    :goto_6
    return-void
.end method
