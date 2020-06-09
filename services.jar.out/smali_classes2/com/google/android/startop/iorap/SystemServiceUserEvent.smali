.class public Lcom/google/android/startop/iorap/SystemServiceUserEvent;
.super Ljava/lang/Object;
.source "SystemServiceUserEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/startop/iorap/SystemServiceUserEvent$Type;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/startop/iorap/SystemServiceUserEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE_CLEANUP_USER:I = 0x4

.field private static final TYPE_MAX:I = 0x4

.field public static final TYPE_START_USER:I = 0x0

.field public static final TYPE_STOP_USER:I = 0x3

.field public static final TYPE_SWITCH_USER:I = 0x2

.field public static final TYPE_UNLOCK_USER:I = 0x1


# instance fields
.field public final type:I

.field public final userHandle:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/startop/iorap/SystemServiceUserEvent$1;

    invoke-direct {v0}, Lcom/google/android/startop/iorap/SystemServiceUserEvent$1;-><init>()V

    sput-object v0, Lcom/google/android/startop/iorap/SystemServiceUserEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/startop/iorap/SystemServiceUserEvent;->type:I

    iput p2, p0, Lcom/google/android/startop/iorap/SystemServiceUserEvent;->userHandle:I

    invoke-direct {p0}, Lcom/google/android/startop/iorap/SystemServiceUserEvent;->checkConstructorArguments()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/startop/iorap/SystemServiceUserEvent;->type:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/startop/iorap/SystemServiceUserEvent;->userHandle:I

    invoke-direct {p0}, Lcom/google/android/startop/iorap/SystemServiceUserEvent;->checkConstructorArguments()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/android/startop/iorap/SystemServiceUserEvent$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/startop/iorap/SystemServiceUserEvent;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private checkConstructorArguments()V
    .locals 2

    iget v0, p0, Lcom/google/android/startop/iorap/SystemServiceUserEvent;->type:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/google/android/startop/iorap/CheckHelpers;->checkTypeInRange(II)V

    iget v0, p0, Lcom/google/android/startop/iorap/SystemServiceUserEvent;->userHandle:I

    if-ltz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "userHandle must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private equals(Lcom/google/android/startop/iorap/SystemServiceUserEvent;)Z
    .locals 2

    iget v0, p0, Lcom/google/android/startop/iorap/SystemServiceUserEvent;->type:I

    iget v1, p1, Lcom/google/android/startop/iorap/SystemServiceUserEvent;->type:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/startop/iorap/SystemServiceUserEvent;->userHandle:I

    iget v1, p1, Lcom/google/android/startop/iorap/SystemServiceUserEvent;->userHandle:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    instance-of v0, p1, Lcom/google/android/startop/iorap/SystemServiceUserEvent;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/google/android/startop/iorap/SystemServiceUserEvent;

    invoke-direct {p0, v0}, Lcom/google/android/startop/iorap/SystemServiceUserEvent;->equals(Lcom/google/android/startop/iorap/SystemServiceUserEvent;)Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/startop/iorap/SystemServiceUserEvent;->type:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/startop/iorap/SystemServiceUserEvent;->userHandle:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "{type: %d, userHandle: %d}"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lcom/google/android/startop/iorap/SystemServiceUserEvent;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/google/android/startop/iorap/SystemServiceUserEvent;->userHandle:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
