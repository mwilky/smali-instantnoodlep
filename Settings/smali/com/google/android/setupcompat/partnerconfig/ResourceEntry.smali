.class public final Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;
.super Ljava/lang/Object;
.source "ResourceEntry.java"


# static fields
.field static final KEY_PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field static final KEY_RESOURCE_ID:Ljava/lang/String; = "resourceId"

.field static final KEY_RESOURCE_NAME:Ljava/lang/String; = "resourceName"


# instance fields
.field private final packageName:Ljava/lang/String;

.field private final resourceId:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;->packageName:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;->resourceId:I

    return-void
.end method


# virtual methods
.method public getPackageName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public getResourceId()I
    .locals 0

    iget p0, p0, Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;->resourceId:I

    return p0
.end method
