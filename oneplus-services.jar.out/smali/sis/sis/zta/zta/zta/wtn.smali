.class public final Lsis/sis/zta/zta/zta/wtn;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final TYPE_MAX:I = 0x209

.field public static final U_a:I = 0x200

.field public static final VYa:I = 0x203

.field public static final V_a:I = 0x201

.field public static final WYa:I = 0x204

.field public static final W_a:I = 0x202

.field public static final X_a:I = 0x206

.field public static final Y_a:I = 0x207

.field public static final _qa:I = 0x208

.field public static final cZa:I = 0x205


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    and-int/lit16 v1, p0, 0x200

    const/16 v2, 0x200

    if-ne v1, v2, :cond_0

    const-string v1, "DATA_GAIN"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    and-int/lit16 v1, p0, 0x201

    const/16 v3, 0x201

    if-ne v1, v3, :cond_1

    const-string v1, "FORCE_LUT"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v2, v2, 0x201

    :cond_1
    and-int/lit16 v1, p0, 0x202

    const/16 v3, 0x202

    if-ne v1, v3, :cond_2

    const-string v1, "DISPLAY_BRIGHTNESS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v2, v2, 0x202

    :cond_2
    and-int/lit16 v1, p0, 0x203

    const/16 v3, 0x203

    if-ne v1, v3, :cond_3

    const-string v1, "CM_COLOR_TEMP_MODE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v2, v2, 0x203

    :cond_3
    and-int/lit16 v1, p0, 0x204

    const/16 v3, 0x204

    if-ne v1, v3, :cond_4

    const-string v1, "CM_COLOR_GAMUT"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v2, v2, 0x204

    :cond_4
    and-int/lit16 v1, p0, 0x205

    const/16 v3, 0x205

    if-ne v1, v3, :cond_5

    const-string v1, "COLOR_TEMP_VALUE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v2, v2, 0x205

    :cond_5
    and-int/lit16 v1, p0, 0x206

    const/16 v3, 0x206

    if-ne v1, v3, :cond_6

    const-string v1, "CALIBRATION"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v2, v2, 0x206

    :cond_6
    and-int/lit16 v1, p0, 0x207

    const/16 v3, 0x207

    if-ne v1, v3, :cond_7

    const-string v1, "PQ_TARGET"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v2, v2, 0x207

    :cond_7
    and-int/lit16 v1, p0, 0x208

    const/16 v3, 0x208

    if-ne v1, v3, :cond_8

    const-string v1, "BYPASS_MODE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v2, v2, 0x208

    :cond_8
    and-int/lit16 v1, p0, 0x209

    const/16 v3, 0x209

    if-ne v1, v3, :cond_9

    const-string v1, "TYPE_MAX"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v2, v2, 0x209

    :cond_9
    if-eq p0, v2, :cond_a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    not-int v2, v2

    and-int/2addr p0, v2

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    const-string p0, " | "

    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x200

    if-ne p0, v0, :cond_0

    const-string p0, "DATA_GAIN"

    return-object p0

    :cond_0
    const/16 v0, 0x201

    if-ne p0, v0, :cond_1

    const-string p0, "FORCE_LUT"

    return-object p0

    :cond_1
    const/16 v0, 0x202

    if-ne p0, v0, :cond_2

    const-string p0, "DISPLAY_BRIGHTNESS"

    return-object p0

    :cond_2
    const/16 v0, 0x203

    if-ne p0, v0, :cond_3

    const-string p0, "CM_COLOR_TEMP_MODE"

    return-object p0

    :cond_3
    const/16 v0, 0x204

    if-ne p0, v0, :cond_4

    const-string p0, "CM_COLOR_GAMUT"

    return-object p0

    :cond_4
    const/16 v0, 0x205

    if-ne p0, v0, :cond_5

    const-string p0, "COLOR_TEMP_VALUE"

    return-object p0

    :cond_5
    const/16 v0, 0x206

    if-ne p0, v0, :cond_6

    const-string p0, "CALIBRATION"

    return-object p0

    :cond_6
    const/16 v0, 0x207

    if-ne p0, v0, :cond_7

    const-string p0, "PQ_TARGET"

    return-object p0

    :cond_7
    const/16 v0, 0x208

    if-ne p0, v0, :cond_8

    const-string p0, "BYPASS_MODE"

    return-object p0

    :cond_8
    const/16 v0, 0x209

    if-ne p0, v0, :cond_9

    const-string p0, "TYPE_MAX"

    return-object p0

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
