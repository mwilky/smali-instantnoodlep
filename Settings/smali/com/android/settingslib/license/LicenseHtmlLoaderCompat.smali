.class public Lcom/android/settingslib/license/LicenseHtmlLoaderCompat;
.super Lcom/android/settingslib/utils/AsyncLoaderCompat;
.source "LicenseHtmlLoaderCompat.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settingslib/utils/AsyncLoaderCompat<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# static fields
.field static final DEFAULT_LICENSE_XML_PATHS:[Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string v0, "/system/etc/NOTICE.xml.gz"

    const-string v1, "/vendor/etc/NOTICE.xml.gz"

    const-string v2, "/odm/etc/NOTICE.xml.gz"

    const-string v3, "/oem/etc/NOTICE.xml.gz"

    const-string v4, "/product/etc/NOTICE.xml.gz"

    const-string v5, "/product_services/etc/NOTICE.xml.gz"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settingslib/license/LicenseHtmlLoaderCompat;->DEFAULT_LICENSE_XML_PATHS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingslib/utils/AsyncLoaderCompat;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settingslib/license/LicenseHtmlLoaderCompat;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public loadInBackground()Ljava/lang/Object;
    .locals 14

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/android/settingslib/license/LicenseHtmlLoaderCompat;->DEFAULT_LICENSE_XML_PATHS:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const-wide/16 v5, 0x0

    if-ge v4, v2, :cond_1

    aget-object v7, v1, v4

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v9

    cmp-long v5, v9, v5

    if-eqz v5, :cond_0

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    const-string p0, "LicenseHtmlLoaderCompat"

    const-string v0, "No notice file exists."

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    :cond_2
    iget-object v1, p0, Lcom/android/settingslib/license/LicenseHtmlLoaderCompat;->mContext:Landroid/content/Context;

    new-instance v4, Ljava/io/File;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v7, "NOTICE.html"

    invoke-direct {v4, v1, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v7, 0x1

    if-eqz v1, :cond_5

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v8

    cmp-long v1, v8, v5

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v9

    invoke-virtual {v8}, Ljava/io/File;->lastModified()J

    move-result-wide v11

    cmp-long v8, v9, v11

    if-gez v8, :cond_3

    goto :goto_1

    :cond_4
    move v1, v3

    goto :goto_2

    :cond_5
    :goto_1
    move v1, v7

    :goto_2
    if-eqz v1, :cond_c

    iget-object p0, p0, Lcom/android/settingslib/license/LicenseHtmlLoaderCompat;->mContext:Landroid/content/Context;

    const v1, 0x7f120b69

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    const-string v10, "LicenseGeneratorFromXml"

    if-eqz v9, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/io/File;

    if-eqz v9, :cond_6

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v11

    cmp-long v11, v11, v5

    if-nez v11, :cond_7

    goto :goto_3

    :cond_7
    :try_start_0
    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    const-string v12, ".gz"

    invoke-virtual {v11, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_8

    new-instance v11, Ljava/io/InputStreamReader;

    new-instance v12, Ljava/util/zip/GZIPInputStream;

    new-instance v13, Ljava/io/FileInputStream;

    invoke-direct {v13, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v12, v13}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v11, v12}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    goto :goto_4

    :cond_8
    new-instance v11, Ljava/io/FileReader;

    invoke-direct {v11, v9}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_4
    :try_start_1
    invoke-static {v11, v1, v8}, Lcom/android/settingslib/license/LicenseHtmlGeneratorFromXml;->parse(Ljava/io/InputStreamReader;Ljava/util/Map;Ljava/util/Map;)V

    invoke-virtual {v11}, Ljava/io/InputStreamReader;->close()V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v12

    goto :goto_5

    :catch_1
    move-exception v11

    move-object v12, v11

    move-object v11, v2

    :goto_5
    const-string v13, "Failed to parse "

    invoke-static {v13, v9, v10, v12}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline39(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    if-eqz v11, :cond_6

    :try_start_2
    invoke-virtual {v11}, Ljava/io/InputStreamReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    const-string v11, "Failed to close "

    invoke-static {v11, v9, v10}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline37(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    :cond_9
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-interface {v8}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_7

    :cond_a
    :try_start_3
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, v4}, Ljava/io/PrintWriter;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_4

    :try_start_4
    invoke-static {v1, v8, v0, p0}, Lcom/android/settingslib/license/LicenseHtmlGeneratorFromXml;->generateHtml(Ljava/util/Map;Ljava/util/Map;Ljava/io/PrintWriter;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_3

    move v3, v7

    goto :goto_7

    :catch_3
    move-exception p0

    goto :goto_6

    :catch_4
    move-exception p0

    move-object v0, v2

    :goto_6
    const-string v1, "Failed to generate "

    invoke-static {v1, v4, v10, p0}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline39(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    :cond_b
    :goto_7
    if-eqz v3, :cond_d

    :cond_c
    move-object v2, v4

    :cond_d
    :goto_8
    return-object v2
.end method

.method protected onDiscardResult(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/io/File;

    return-void
.end method
