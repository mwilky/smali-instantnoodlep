.class public final synthetic Lcom/android/systemui/-$$Lambda$Dependency$gT-FFwb0KZ2glg3LXk3tO9g9fww;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/-$$Lambda$Dependency$gT-FFwb0KZ2glg3LXk3tO9g9fww;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/-$$Lambda$Dependency$gT-FFwb0KZ2glg3LXk3tO9g9fww;->f$0:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/systemui/Dependency;->lambda$dump$2(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
