.class Lcom/android/settings/UserCredentialsSettings$Credential;
.super Ljava/lang/Object;
.source "UserCredentialsSettings.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/UserCredentialsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Credential"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/UserCredentialsSettings$Credential$Type;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/settings/UserCredentialsSettings$Credential;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final alias:Ljava/lang/String;

.field final storedTypes:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/android/settings/UserCredentialsSettings$Credential$Type;",
            ">;"
        }
    .end annotation
.end field

.field final uid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/UserCredentialsSettings$Credential$1;

    invoke-direct {v0}, Lcom/android/settings/UserCredentialsSettings$Credential$1;-><init>()V

    sput-object v0, Lcom/android/settings/UserCredentialsSettings$Credential;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/android/settings/UserCredentialsSettings$Credential$Type;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/UserCredentialsSettings$Credential;->storedTypes:Ljava/util/EnumSet;

    iput-object p1, p0, Lcom/android/settings/UserCredentialsSettings$Credential;->alias:Ljava/lang/String;

    iput p2, p0, Lcom/android/settings/UserCredentialsSettings$Credential;->uid:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getAlias()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/UserCredentialsSettings$Credential;->alias:Ljava/lang/String;

    return-object p0
.end method

.method public getStoredTypes()Ljava/util/EnumSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "Lcom/android/settings/UserCredentialsSettings$Credential$Type;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/settings/UserCredentialsSettings$Credential;->storedTypes:Ljava/util/EnumSet;

    return-object p0
.end method

.method public isSystem()Z
    .locals 1

    iget p0, p0, Lcom/android/settings/UserCredentialsSettings$Credential;->uid:I

    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p0

    const/16 v0, 0x3e8

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    iget-object p2, p0, Lcom/android/settings/UserCredentialsSettings$Credential;->alias:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/android/settings/UserCredentialsSettings$Credential;->uid:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p0, p0, Lcom/android/settings/UserCredentialsSettings$Credential;->storedTypes:Ljava/util/EnumSet;

    invoke-virtual {p0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-wide/16 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/settings/UserCredentialsSettings$Credential$Type;

    const-wide/16 v2, 0x1

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    shl-long/2addr v2, p2

    or-long/2addr v0, v2

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
