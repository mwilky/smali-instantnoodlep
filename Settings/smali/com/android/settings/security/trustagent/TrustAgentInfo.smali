.class public Lcom/android/settings/security/trustagent/TrustAgentInfo;
.super Ljava/lang/Object;
.source "TrustAgentInfo.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/settings/security/trustagent/TrustAgentInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final mComponentName:Landroid/content/ComponentName;

.field private final mIcon:Landroid/graphics/drawable/Drawable;

.field private final mLabel:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Landroid/content/ComponentName;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/security/trustagent/TrustAgentInfo;->mLabel:Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/android/settings/security/trustagent/TrustAgentInfo;->mComponentName:Landroid/content/ComponentName;

    iput-object p3, p0, Lcom/android/settings/security/trustagent/TrustAgentInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/settings/security/trustagent/TrustAgentInfo;

    iget-object p0, p0, Lcom/android/settings/security/trustagent/TrustAgentInfo;->mComponentName:Landroid/content/ComponentName;

    iget-object p1, p1, Lcom/android/settings/security/trustagent/TrustAgentInfo;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p0, p1}, Landroid/content/ComponentName;->compareTo(Landroid/content/ComponentName;)I

    move-result p0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/android/settings/security/trustagent/TrustAgentInfo;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/security/trustagent/TrustAgentInfo;->mComponentName:Landroid/content/ComponentName;

    check-cast p1, Lcom/android/settings/security/trustagent/TrustAgentInfo;

    iget-object p1, p1, Lcom/android/settings/security/trustagent/TrustAgentInfo;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p0, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/security/trustagent/TrustAgentInfo;->mComponentName:Landroid/content/ComponentName;

    return-object p0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/security/trustagent/TrustAgentInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getLabel()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/security/trustagent/TrustAgentInfo;->mLabel:Ljava/lang/CharSequence;

    return-object p0
.end method
