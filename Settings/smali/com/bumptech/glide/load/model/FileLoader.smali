.class public Lcom/bumptech/glide/load/model/FileLoader;
.super Ljava/lang/Object;
.source "FileLoader.java"

# interfaces
.implements Lcom/bumptech/glide/load/model/ModelLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/model/FileLoader$FileDescriptorFactory;,
        Lcom/bumptech/glide/load/model/FileLoader$StreamFactory;,
        Lcom/bumptech/glide/load/model/FileLoader$Factory;,
        Lcom/bumptech/glide/load/model/FileLoader$FileFetcher;,
        Lcom/bumptech/glide/load/model/FileLoader$FileOpener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/model/ModelLoader<",
        "Ljava/io/File;",
        "TData;>;"
    }
.end annotation


# instance fields
.field private final fileOpener:Lcom/bumptech/glide/load/model/FileLoader$FileOpener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/model/FileLoader$FileOpener<",
            "TData;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/model/FileLoader$FileOpener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/model/FileLoader$FileOpener<",
            "TData;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/load/model/FileLoader;->fileOpener:Lcom/bumptech/glide/load/model/FileLoader$FileOpener;

    return-void
.end method


# virtual methods
.method public buildLoadData(Ljava/lang/Object;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/model/ModelLoader$LoadData;
    .locals 0

    check-cast p1, Ljava/io/File;

    new-instance p2, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    new-instance p3, Lcom/bumptech/glide/signature/ObjectKey;

    invoke-direct {p3, p1}, Lcom/bumptech/glide/signature/ObjectKey;-><init>(Ljava/lang/Object;)V

    new-instance p4, Lcom/bumptech/glide/load/model/FileLoader$FileFetcher;

    iget-object p0, p0, Lcom/bumptech/glide/load/model/FileLoader;->fileOpener:Lcom/bumptech/glide/load/model/FileLoader$FileOpener;

    invoke-direct {p4, p1, p0}, Lcom/bumptech/glide/load/model/FileLoader$FileFetcher;-><init>(Ljava/io/File;Lcom/bumptech/glide/load/model/FileLoader$FileOpener;)V

    invoke-direct {p2, p3, p4}, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;-><init>(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/data/DataFetcher;)V

    return-object p2
.end method

.method public handles(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/io/File;

    const/4 p0, 0x1

    return p0
.end method
