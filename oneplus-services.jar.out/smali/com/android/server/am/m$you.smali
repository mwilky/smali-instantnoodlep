.class Lcom/android/server/am/m$you;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "you"
.end annotation


# instance fields
.field KD:Z

.field final LD:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field MD:Ljava/lang/String;

.field enable:I

.field final synthetic this$0:Lcom/android/server/am/m;


# direct methods
.method constructor <init>(Lcom/android/server/am/m;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/m$you;->this$0:Lcom/android/server/am/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/am/m$you;->KD:Z

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/m$you;->LD:Ljava/util/List;

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/server/am/m$you;->enable:I

    const-string p1, ""

    iput-object p1, p0, Lcom/android/server/am/m$you;->MD:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method Pc()Lcom/android/server/am/m$you;
    .locals 3

    new-instance v0, Lcom/android/server/am/m$you;

    iget-object v1, p0, Lcom/android/server/am/m$you;->this$0:Lcom/android/server/am/m;

    invoke-direct {v0, v1}, Lcom/android/server/am/m$you;-><init>(Lcom/android/server/am/m;)V

    iget-boolean v1, p0, Lcom/android/server/am/m$you;->KD:Z

    iput-boolean v1, v0, Lcom/android/server/am/m$you;->KD:Z

    iget v1, p0, Lcom/android/server/am/m$you;->enable:I

    iput v1, v0, Lcom/android/server/am/m$you;->enable:I

    iget-object v1, v0, Lcom/android/server/am/m$you;->LD:Ljava/util/List;

    iget-object v2, p0, Lcom/android/server/am/m$you;->LD:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p0, p0, Lcom/android/server/am/m$you;->MD:Ljava/lang/String;

    iput-object p0, v0, Lcom/android/server/am/m$you;->MD:Ljava/lang/String;

    return-object v0
.end method

.method debugToString()Ljava/lang/String;
    .locals 4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/am/m$you;->this$0:Lcom/android/server/am/m;

    iget v3, p0, Lcom/android/server/am/m$you;->enable:I

    invoke-virtual {v2, v3}, Lcom/android/server/am/m;->debugTriStateDesc(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object p0, p0, Lcom/android/server/am/m$you;->LD:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x1

    aput-object p0, v1, v2

    const-string p0, "{enable = %s | compatVers = %s}"

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method sis(Lorg/json/JSONObject;)Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "fallback"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/am/m$you;->KD:Z

    const-string v1, "enable"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/am/m$you;->enable:I

    const-string v1, "compatVers"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_0

    move v2, v0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/android/server/am/m$you;->LD:Ljava/util/List;

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->optInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-string v1, "specialActions"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/am/m$you;->MD:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :catch_0
    return v0
.end method

.method zta(Lcom/android/server/am/m$you;)Z
    .locals 2

    if-eqz p1, :cond_1

    iget-boolean v0, p1, Lcom/android/server/am/m$you;->KD:Z

    iget-boolean v1, p0, Lcom/android/server/am/m$you;->KD:Z

    if-ne v0, v1, :cond_1

    iget v0, p1, Lcom/android/server/am/m$you;->enable:I

    iget v1, p0, Lcom/android/server/am/m$you;->enable:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/am/m$you;->LD:Ljava/util/List;

    iget-object v1, p1, Lcom/android/server/am/m$you;->LD:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/server/am/m$you;->MD:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/server/am/m$you;->MD:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
