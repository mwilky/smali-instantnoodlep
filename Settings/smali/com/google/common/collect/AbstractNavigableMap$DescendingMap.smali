.class final Lcom/google/common/collect/AbstractNavigableMap$DescendingMap;
.super Lcom/google/common/collect/Maps$DescendingMap;
.source "AbstractNavigableMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/AbstractNavigableMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DescendingMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Maps$DescendingMap<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/AbstractNavigableMap;


# direct methods
.method synthetic constructor <init>(Lcom/google/common/collect/AbstractNavigableMap;Lcom/google/common/collect/AbstractNavigableMap$1;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/AbstractNavigableMap$DescendingMap;->this$0:Lcom/google/common/collect/AbstractNavigableMap;

    invoke-direct {p0}, Lcom/google/common/collect/Maps$DescendingMap;-><init>()V

    return-void
.end method
