.class Landroidx/constraintlayout/solver/widgets/Snapshot$Connection;
.super Ljava/lang/Object;
.source "Snapshot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/solver/widgets/Snapshot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Connection"
.end annotation


# instance fields
.field private mAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

.field private mCreator:I

.field private mMargin:I

.field private mStrengh:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;

.field private mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/solver/widgets/Snapshot$Connection;->mAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/Snapshot$Connection;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Snapshot$Connection;->mMargin:I

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getStrength()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/Snapshot$Connection;->mStrengh:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getConnectionCreator()I

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/Snapshot$Connection;->mCreator:I

    return-void
.end method


# virtual methods
.method public applyTo(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V
    .locals 8

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/Snapshot$Connection;->mAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mType:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v1

    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/Snapshot$Connection;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget v3, p0, Landroidx/constraintlayout/solver/widgets/Snapshot$Connection;->mMargin:I

    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/Snapshot$Connection;->mStrengh:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;

    iget v6, p0, Landroidx/constraintlayout/solver/widgets/Snapshot$Connection;->mCreator:I

    const/4 v4, -0x1

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;IILandroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;IZ)Z

    return-void
.end method

.method public updateFrom(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/Snapshot$Connection;->mAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mType:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object p1

    iput-object p1, p0, Landroidx/constraintlayout/solver/widgets/Snapshot$Connection;->mAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/Snapshot$Connection;->mAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz p1, :cond_0

    iget-object v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/Snapshot$Connection;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/Snapshot$Connection;->mMargin:I

    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/Snapshot$Connection;->mAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getStrength()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;

    move-result-object p1

    iput-object p1, p0, Landroidx/constraintlayout/solver/widgets/Snapshot$Connection;->mStrengh:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;

    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/Snapshot$Connection;->mAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getConnectionCreator()I

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/Snapshot$Connection;->mCreator:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/constraintlayout/solver/widgets/Snapshot$Connection;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    const/4 p1, 0x0

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/Snapshot$Connection;->mMargin:I

    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;->STRONG:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/Snapshot$Connection;->mStrengh:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/Snapshot$Connection;->mCreator:I

    :goto_0
    return-void
.end method
