.class public final Lcom/bumptech/glide/load/engine/cache/InternalCacheDiskCacheFactory;
.super Lcom/bumptech/glide/load/engine/cache/DiskLruCacheFactory;
.source "InternalCacheDiskCacheFactory.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Lcom/bumptech/glide/load/engine/cache/InternalCacheDiskCacheFactory$1;

    const-string v1, "image_manager_disk_cache"

    invoke-direct {v0, p1, v1}, Lcom/bumptech/glide/load/engine/cache/InternalCacheDiskCacheFactory$1;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-wide/32 v1, 0xfa00000

    invoke-direct {p0, v0, v1, v2}, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheFactory;-><init>(Lcom/bumptech/glide/load/engine/cache/DiskLruCacheFactory$CacheDirectoryGetter;J)V

    return-void
.end method
