.class Lcom/android/server/am/gck;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final Mn:Z

.field static final Nn:Z

.field private static Pn:Z = false

.field public static final TAG:Ljava/lang/String; = "LOMM-AppRecordTransition"

.field private static debug:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "persist.sys.omm.debug"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/am/gck;->Mn:Z

    sput-boolean v0, Lcom/android/server/am/gck;->debug:Z

    const-string v1, "persist.sys.omm.test"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/am/gck;->Nn:Z

    sget-boolean v1, Lcom/android/server/am/gck;->Mn:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/android/server/am/gck;->debug:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/android/server/am/gck;->Nn:Z

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    sput-boolean v0, Lcom/android/server/am/gck;->Pn:Z

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/android/server/am/gck;->Pn:Z

    if-eqz v0, :cond_0

    const-string v0, "LOMM-AppRecordTransition"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private static bio(Ljava/io/PrintWriter;)V
    .locals 1

    invoke-static {}, Lcom/android/server/am/AppRecordManagerService;->getInstance()Lcom/android/server/am/AppRecordManagerService;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/am/AppRecordManagerService;->dumpOMMAppRecordInfo(Ljava/io/PrintWriter;)V

    return-void
.end method

.method private static cno(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 10

    const-string v0, "-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x5

    if-lt v0, v1, :cond_1

    const/4 v0, 0x2

    aget-object v0, p1, v0

    const/4 v2, 0x3

    aget-object v2, p1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/4 v2, 0x4

    aget-object v2, p1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    aget-object p1, p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {}, Lcom/android/server/am/AppRecordTransition;->getInstance()Lcom/android/server/am/AppRecordTransition;

    move-result-object v2

    int-to-long v6, p1

    move-object v3, v0

    move v4, v8

    move v5, v9

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/AppRecordTransition;->createProcessStateBM(Ljava/lang/String;IIJ)Lorg/json/JSONObject;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " testProcessStateBM  pkg = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " uid = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " pid = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " bm = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/android/server/am/AppRecordTransition;->getInstance()Lcom/android/server/am/AppRecordTransition;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/server/am/AppRecordTransition;->writeOMM([BLjava/nio/ByteBuffer;)Z

    :cond_0
    return-void

    :cond_1
    const-string p1, " Bad command! please input like dumpsys activity omm-testProcessStateBM-pkg-uid-pid-bm"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method static dumpsysOMM(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 9

    const-string v0, "-"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const-string v2, " \" ! Please input \"dumpsys activity omm-help\" to get help !"

    const-string v3, " Bad command: \""

    const/4 v4, 0x2

    if-lt v1, v4, :cond_1

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const/4 v5, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v6

    const-string v7, "off"

    const-string v8, "on"

    sparse-switch v6, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "testProcessStateBM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v4, 0x6

    goto :goto_1

    :sswitch_1
    const-string v1, "testNotePSSChanged"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v4, 0x4

    goto :goto_1

    :sswitch_2
    const-string v1, "info"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v4, 0x3

    goto :goto_1

    :sswitch_3
    const-string v1, "help"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :sswitch_4
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v4, v1

    goto :goto_1

    :sswitch_5
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v4, 0x0

    goto :goto_1

    :sswitch_6
    const-string v1, "testAppStateBM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v4, 0x7

    goto :goto_1

    :sswitch_7
    const-string v1, "testNoteProcessStateChanged"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v4, 0x5

    goto :goto_1

    :cond_0
    :goto_0
    move v4, v5

    :goto_1
    packed-switch v4, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_2

    :pswitch_0
    invoke-static {p1, p0}, Lcom/android/server/am/gck;->tsu(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_3

    :pswitch_1
    invoke-static {p1, p0}, Lcom/android/server/am/gck;->cno(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_3

    :pswitch_2
    invoke-static {p1, p0}, Lcom/android/server/am/gck;->ssp(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_3

    :pswitch_3
    invoke-static {p1, p0}, Lcom/android/server/am/gck;->rtg(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_3

    :pswitch_4
    invoke-static {p1}, Lcom/android/server/am/gck;->bio(Ljava/io/PrintWriter;)V

    goto :goto_3

    :pswitch_5
    invoke-static {p1}, Lcom/android/server/am/gck;->igw(Ljava/io/PrintWriter;)V

    goto :goto_3

    :pswitch_6
    invoke-static {p1, v7}, Lcom/android/server/am/gck;->sis(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_3

    :pswitch_7
    invoke-static {p1, v8}, Lcom/android/server/am/gck;->sis(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_3

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x605fad52 -> :sswitch_7
        -0x58225a93 -> :sswitch_6
        0xddf -> :sswitch_5
        0x1ad6f -> :sswitch_4
        0x30cf41 -> :sswitch_3
        0x3164ae -> :sswitch_2
        0xe977088 -> :sswitch_1
        0x3f34c45f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static igw(Ljava/io/PrintWriter;)V
    .locals 1

    const-string v0, "==================================OMM commands help:==================================\n\t1. You can input these command to get all command: dumpsys activity omm-help\n\n\t2. You cat get all info that pass to omm by this command: dumpsys activity omm-info\n\n\t3. You can open debug switch on by this command: dumpsys activity omm-on\n\n\t4. You can close debug switch off by this command: dumpsys activity omm-off\n\n\t5. dumpsys activity omm-testNotePSSChanged-pkg-uid-pid-pss\n\texp:dumpsys activity omm-testNotePSSChanged-com.test.pss-23494-6767-23234\n\n\t6. dumpsys activity omm-testNoteProcessStateChanged-pkg-uid-pid-bm-start\n\texp:dumpsys activity omm-testNoteProcessStateChanged-com.test.process-23496-6769-2-start\n\n\t7. dumpsys activity omm-testNoteProcessStateChanged-pkg-uid-pid-remove\n\texp:dumpsys activity omm-testNoteProcessStateChanged-com.test.process-23496-6769-2-remove\n\n\t8. dumpsys activity omm-testProcessStateBM-pkg-uid-pid-bm\n\texp:dumpsys activity omm-testProcessStateBM-com.process.bm-4566-5656-2\n\n\t9. dumpsys activity omm-testAppStateBM-pkg-uid-pid-bm\n\texp:dumpsys activity omm-testAppStateBM-com.app.bm-4535-4656-1024\n"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private static rtg(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 8

    const-string v0, "-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x5

    if-lt v0, v1, :cond_1

    const/4 v0, 0x2

    aget-object v3, p1, v0

    const/4 v0, 0x3

    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v0, 0x4

    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aget-object p1, p1, v1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " testNotePSSChanged  pkg = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " uid = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " pid = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " pss = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/am/AppRecordTransition;->getInstance()Lcom/android/server/am/AppRecordTransition;

    move-result-object v2

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/AppRecordTransition;->createPssUpdate(Ljava/lang/String;IIJ)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/android/server/am/AppRecordTransition;->getInstance()Lcom/android/server/am/AppRecordTransition;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/server/am/AppRecordTransition;->writeOMM([BLjava/nio/ByteBuffer;)Z

    :cond_0
    return-void

    :cond_1
    const-string p1, " Bad command! Please input like dumpsys activity omm-testNotePSSChanged-pkg-uid-pid-pss"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private static sis(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2

    const-string v0, "on"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    sput-boolean v0, Lcom/android/server/am/gck;->debug:Z

    sget-boolean p1, Lcom/android/server/am/gck;->Mn:Z

    if-nez p1, :cond_1

    sget-boolean p1, Lcom/android/server/am/gck;->debug:Z

    if-nez p1, :cond_1

    sget-boolean p1, Lcom/android/server/am/gck;->Nn:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    sput-boolean v0, Lcom/android/server/am/gck;->Pn:Z

    const-string p1, "debug omm switch is on!"

    goto :goto_2

    :cond_2
    sput-boolean v1, Lcom/android/server/am/gck;->debug:Z

    sget-boolean p1, Lcom/android/server/am/gck;->Mn:Z

    if-nez p1, :cond_4

    sget-boolean p1, Lcom/android/server/am/gck;->debug:Z

    if-nez p1, :cond_4

    sget-boolean p1, Lcom/android/server/am/gck;->Nn:Z

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    move v0, v1

    :cond_4
    :goto_1
    sput-boolean v0, Lcom/android/server/am/gck;->Pn:Z

    const-string p1, "debug omm switch is off!"

    :goto_2
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private static ssp(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 7

    const-string v0, "-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x5

    if-lt v0, v1, :cond_2

    const/4 v0, 0x2

    aget-object v0, p1, v0

    const/4 v2, 0x3

    aget-object v2, p1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x4

    aget-object v3, p1, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aget-object v1, p1, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v4, 0x6

    aget-object p1, p1, v4

    const-string v4, "start"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {}, Lcom/android/server/am/AppRecordTransition;->getInstance()Lcom/android/server/am/AppRecordTransition;

    move-result-object v4

    if-eqz p1, :cond_0

    invoke-virtual {v4, v0, v2, v3, v1}, Lcom/android/server/am/AppRecordTransition;->createProcessStart(Ljava/lang/String;III)Lorg/json/JSONObject;

    move-result-object v4

    goto :goto_0

    :cond_0
    invoke-virtual {v4, v0, v2, v3}, Lcom/android/server/am/AppRecordTransition;->createProcessRemove(Ljava/lang/String;II)Lorg/json/JSONObject;

    move-result-object v4

    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " testNoteProcessStateChanged  pkg = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " uid = "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " pid = "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " bm = "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " isStart = "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/android/server/am/AppRecordTransition;->getInstance()Lcom/android/server/am/AppRecordTransition;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/server/am/AppRecordTransition;->writeOMM([BLjava/nio/ByteBuffer;)Z

    :cond_1
    return-void

    :cond_2
    const-string p1, " Bad command! please input like dumpsys activity omm-testNoteProcessStateChanged-pkg-uid-pid-bm-start"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private static tsu(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 6

    const-string v0, "-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x5

    if-lt v0, v1, :cond_1

    const/4 v0, 0x2

    aget-object v0, p1, v0

    const/4 v2, 0x3

    aget-object v2, p1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x4

    aget-object v3, p1, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aget-object p1, p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {}, Lcom/android/server/am/AppRecordTransition;->getInstance()Lcom/android/server/am/AppRecordTransition;

    int-to-long v4, p1

    invoke-static {v0, v2, v3, v4, v5}, Lcom/android/server/am/AppRecordTransition;->createAppStateBM(Ljava/lang/String;IIJ)Lorg/json/JSONObject;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " testAppStateBM  pkg = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " uid = "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " pid = "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " bm = "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/android/server/am/AppRecordTransition;->getInstance()Lcom/android/server/am/AppRecordTransition;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/server/am/AppRecordTransition;->writeOMM([BLjava/nio/ByteBuffer;)Z

    :cond_0
    return-void

    :cond_1
    const-string p1, " Bad command! please input like dumpsys activity omm-testAppStateBM-pkg-uid-pid-bm"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method
