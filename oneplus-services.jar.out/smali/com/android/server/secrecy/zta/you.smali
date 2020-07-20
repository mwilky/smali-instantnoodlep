.class public Lcom/android/server/secrecy/zta/you;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static TAG:Ljava/lang/String; = "SecrecyService.FlashInfo"


# instance fields
.field private QV:Z

.field private RV:Ljava/lang/String;

.field private SV:Ljava/lang/String;

.field private UV:Ljava/lang/String;

.field private VV:J

.field private WV:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ea(Ljava/lang/String;)V
    .locals 4

    if-eqz p1, :cond_0

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/secrecy/zta/you;->WV:J

    :cond_0
    sget-object v0, Lcom/android/server/secrecy/zta/you;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLastDownloadTimeInMills, mLastDownloadTimeInMillis = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/secrecy/zta/you;->WV:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ", lastDownloadTimeInMillis = "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/server/secrecy/zta/zta/zta;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public je()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/secrecy/zta/you;->VV:J

    return-wide v0
.end method

.method public ke()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/secrecy/zta/you;->WV:J

    return-wide v0
.end method

.method public le()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/secrecy/zta/you;->QV:Z

    return p0
.end method

.method public me()V
    .locals 2

    invoke-static {}, Lcom/android/server/secrecy/zta/zta/tsu;->Be()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/secrecy/zta/you;->UV:Ljava/lang/String;

    invoke-static {}, Lcom/android/server/secrecy/zta/zta/tsu;->Ae()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/secrecy/zta/you;->QV:Z

    iget-object v0, p0, Lcom/android/server/secrecy/zta/you;->UV:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/secrecy/zta/zta/tsu;->ia(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/secrecy/zta/you;->RV:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/secrecy/zta/you;->UV:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/secrecy/zta/zta/tsu;->ja(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/secrecy/zta/you;->SV:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/secrecy/zta/you;->RV:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/secrecy/zta/you;->SV:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/secrecy/zta/zta/tsu;->dma(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/secrecy/zta/you;->VV:J

    return-void
.end method

.method public zta(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mCurrentDownloadInternal   = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/secrecy/zta/you;->QV:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mCurrentDownloadStatus = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/secrecy/zta/you;->UV:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mCurrentDownloadTimeInMillis = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/android/server/secrecy/zta/you;->VV:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", mLastDownloadTimeInMillis = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/android/server/secrecy/zta/you;->WV:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method
