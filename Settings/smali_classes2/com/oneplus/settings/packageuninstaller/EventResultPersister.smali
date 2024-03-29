.class Lcom/oneplus/settings/packageuninstaller/EventResultPersister;
.super Ljava/lang/Object;
.source "EventResultPersister.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/packageuninstaller/EventResultPersister$OutOfIdsException;,
        Lcom/oneplus/settings/packageuninstaller/EventResultPersister$EventResult;
    }
.end annotation


# instance fields
.field private mCounter:I

.field private mIsPersistScheduled:Z

.field private mIsPersistingStateValid:Z

.field private final mLock:Ljava/lang/Object;

.field private final mResults:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/oneplus/settings/packageuninstaller/EventResultPersister$EventResult;",
            ">;"
        }
    .end annotation
.end field

.field private final mResultsFile:Landroid/util/AtomicFile;


# direct methods
.method constructor <init>(Ljava/io/File;)V
    .locals 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/packageuninstaller/EventResultPersister;->mLock:Ljava/lang/Object;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/packageuninstaller/EventResultPersister;->mResults:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    new-instance v0, Landroid/util/AtomicFile;

    invoke-direct {v0, p1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/oneplus/settings/packageuninstaller/EventResultPersister;->mResultsFile:Landroid/util/AtomicFile;

    const p1, -0x7fffffff

    iput p1, p0, Lcom/oneplus/settings/packageuninstaller/EventResultPersister;->mCounter:I

    :try_start_0
    iget-object p1, p0, Lcom/oneplus/settings/packageuninstaller/EventResultPersister;->mResultsFile:Landroid/util/AtomicFile;

    invoke-virtual {p1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    :cond_0
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v1, v2, :cond_1

    if-ne v1, v3, :cond_0

    :cond_1
    :goto_0
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    if-eq v1, v3, :cond_6

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v4, "results"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    const-string v1, "counter"

    invoke-interface {v0, v5, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/oneplus/settings/packageuninstaller/EventResultPersister;->mCounter:I

    goto :goto_1

    :cond_2
    const-string v4, "result"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "id"

    invoke-interface {v0, v5, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const-string v4, "status"

    invoke-interface {v0, v5, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const-string v4, "legacyStatus"

    invoke-interface {v0, v5, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    const-string v4, "statusMessage"

    invoke-interface {v0, v5, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iget-object v4, p0, Lcom/oneplus/settings/packageuninstaller/EventResultPersister;->mResults:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/oneplus/settings/packageuninstaller/EventResultPersister;->mResults:Landroid/util/SparseArray;

    new-instance v5, Lcom/oneplus/settings/packageuninstaller/EventResultPersister$EventResult;

    const/4 v11, 0x0

    move-object v6, v5

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/oneplus/settings/packageuninstaller/EventResultPersister$EventResult;-><init>(Lcom/oneplus/settings/packageuninstaller/EventResultPersister;IILjava/lang/String;Lcom/oneplus/settings/packageuninstaller/EventResultPersister$1;)V

    invoke-virtual {v4, v1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_3
    :goto_1
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    if-eq v1, v2, :cond_1

    if-ne v1, v3, :cond_3

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_4
    new-instance v0, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " has two results"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "unexpected tag"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_6
    if-eqz p1, :cond_8

    :try_start_2
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :goto_2
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz p1, :cond_7

    :try_start_4
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception p1

    :try_start_5
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_3
    throw v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    iget-object p1, p0, Lcom/oneplus/settings/packageuninstaller/EventResultPersister;->mResults:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    invoke-direct {p0}, Lcom/oneplus/settings/packageuninstaller/EventResultPersister;->writeState()V

    :cond_8
    :goto_4
    return-void
.end method

.method private writeState()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/settings/packageuninstaller/EventResultPersister;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/oneplus/settings/packageuninstaller/EventResultPersister;->mIsPersistingStateValid:Z

    iget-boolean v1, p0, Lcom/oneplus/settings/packageuninstaller/EventResultPersister;->mIsPersistScheduled:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oneplus/settings/packageuninstaller/EventResultPersister;->mIsPersistScheduled:Z

    new-instance v1, Lcom/oneplus/settings/packageuninstaller/-$$Lambda$EventResultPersister$zHzPUvQ151m1efiCPydr8fc75IA;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/packageuninstaller/-$$Lambda$EventResultPersister$zHzPUvQ151m1efiCPydr8fc75IA;-><init>(Lcom/oneplus/settings/packageuninstaller/EventResultPersister;)V

    invoke-static {v1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public getNewId()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oneplus/settings/packageuninstaller/EventResultPersister$OutOfIdsException;
        }
    .end annotation

    iget-object v0, p0, Lcom/oneplus/settings/packageuninstaller/EventResultPersister;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/oneplus/settings/packageuninstaller/EventResultPersister;->mCounter:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/oneplus/settings/packageuninstaller/EventResultPersister;->mCounter:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/oneplus/settings/packageuninstaller/EventResultPersister;->mCounter:I

    invoke-direct {p0}, Lcom/oneplus/settings/packageuninstaller/EventResultPersister;->writeState()V

    iget p0, p0, Lcom/oneplus/settings/packageuninstaller/EventResultPersister;->mCounter:I

    add-int/lit8 p0, p0, -0x1

    monitor-exit v0

    return p0

    :cond_0
    new-instance v1, Lcom/oneplus/settings/packageuninstaller/EventResultPersister$OutOfIdsException;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/packageuninstaller/EventResultPersister$OutOfIdsException;-><init>(Lcom/oneplus/settings/packageuninstaller/EventResultPersister;)V

    throw v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public synthetic lambda$writeState$0$EventResultPersister()V
    .locals 9

    :goto_0
    iget-object v0, p0, Lcom/oneplus/settings/packageuninstaller/EventResultPersister;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/oneplus/settings/packageuninstaller/EventResultPersister;->mCounter:I

    iget-object v2, p0, Lcom/oneplus/settings/packageuninstaller/EventResultPersister;->mResults:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v2

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/oneplus/settings/packageuninstaller/EventResultPersister;->mIsPersistingStateValid:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x0

    const/4 v4, 0x0

    :try_start_1
    iget-object v5, p0, Lcom/oneplus/settings/packageuninstaller/EventResultPersister;->mResultsFile:Landroid/util/AtomicFile;

    invoke-virtual {v5}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v5
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v6

    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v7}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v6, v4, v7}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v7, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-interface {v6, v7, v3}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    const-string v3, "results"

    invoke-interface {v6, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v3, "counter"

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v4, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v1

    move v3, v0

    :goto_1
    if-ge v3, v1, :cond_1

    const-string v7, "result"

    invoke-interface {v6, v4, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v7, "id"

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v7, "status"

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/oneplus/settings/packageuninstaller/EventResultPersister$EventResult;

    iget v8, v8, Lcom/oneplus/settings/packageuninstaller/EventResultPersister$EventResult;->status:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v7, "legacyStatus"

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/oneplus/settings/packageuninstaller/EventResultPersister$EventResult;

    iget v8, v8, Lcom/oneplus/settings/packageuninstaller/EventResultPersister$EventResult;->legacyStatus:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oneplus/settings/packageuninstaller/EventResultPersister$EventResult;

    iget-object v7, v7, Lcom/oneplus/settings/packageuninstaller/EventResultPersister$EventResult;->message:Ljava/lang/String;

    if-eqz v7, :cond_0

    const-string v7, "statusMessage"

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/oneplus/settings/packageuninstaller/EventResultPersister$EventResult;

    iget-object v8, v8, Lcom/oneplus/settings/packageuninstaller/EventResultPersister$EventResult;->message:Ljava/lang/String;

    invoke-interface {v6, v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_0
    const-string v7, "result"

    invoke-interface {v6, v4, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    const-string v1, "results"

    invoke-interface {v6, v4, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    iget-object v1, p0, Lcom/oneplus/settings/packageuninstaller/EventResultPersister;->mResultsFile:Landroid/util/AtomicFile;

    invoke-virtual {v1, v5}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    move-object v5, v4

    :goto_2
    if-eqz v5, :cond_2

    iget-object v2, p0, Lcom/oneplus/settings/packageuninstaller/EventResultPersister;->mResultsFile:Landroid/util/AtomicFile;

    invoke-virtual {v2, v5}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    :cond_2
    const-string v2, "EventResultPersister"

    const-string v3, "error writing results"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v1, p0, Lcom/oneplus/settings/packageuninstaller/EventResultPersister;->mResultsFile:Landroid/util/AtomicFile;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->delete()V

    :goto_3
    iget-object v1, p0, Lcom/oneplus/settings/packageuninstaller/EventResultPersister;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v2, p0, Lcom/oneplus/settings/packageuninstaller/EventResultPersister;->mIsPersistingStateValid:Z

    if-eqz v2, :cond_3

    iput-boolean v0, p0, Lcom/oneplus/settings/packageuninstaller/EventResultPersister;->mIsPersistScheduled:Z

    monitor-exit v1

    return-void

    :cond_3
    monitor-exit v1

    goto/16 :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0
.end method
