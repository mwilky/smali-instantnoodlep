.class final Lcom/bumptech/glide/load/engine/GlideException$IndentedAppendable;
.super Ljava/lang/Object;
.source "GlideException.java"

# interfaces
.implements Ljava/lang/Appendable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/GlideException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "IndentedAppendable"
.end annotation


# instance fields
.field private final appendable:Ljava/lang/Appendable;

.field private printedNewLine:Z


# direct methods
.method constructor <init>(Ljava/lang/Appendable;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/GlideException$IndentedAppendable;->printedNewLine:Z

    iput-object p1, p0, Lcom/bumptech/glide/load/engine/GlideException$IndentedAppendable;->appendable:Ljava/lang/Appendable;

    return-void
.end method


# virtual methods
.method public append(C)Ljava/lang/Appendable;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/GlideException$IndentedAppendable;->printedNewLine:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/bumptech/glide/load/engine/GlideException$IndentedAppendable;->printedNewLine:Z

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/GlideException$IndentedAppendable;->appendable:Ljava/lang/Appendable;

    const-string v2, "  "

    invoke-interface {v0, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    :cond_0
    const/16 v0, 0xa

    if-ne p1, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    iput-boolean v1, p0, Lcom/bumptech/glide/load/engine/GlideException$IndentedAppendable;->printedNewLine:Z

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/GlideException$IndentedAppendable;->appendable:Ljava/lang/Appendable;

    invoke-interface {v0, p1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iget-boolean v1, p0, Lcom/bumptech/glide/load/engine/GlideException$IndentedAppendable;->printedNewLine:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iput-boolean v2, p0, Lcom/bumptech/glide/load/engine/GlideException$IndentedAppendable;->printedNewLine:Z

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/GlideException$IndentedAppendable;->appendable:Ljava/lang/Appendable;

    const-string v3, "  "

    invoke-interface {v1, v3}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_2

    add-int/lit8 v1, v0, -0x1

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v3, 0xa

    if-ne v1, v3, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/bumptech/glide/load/engine/GlideException$IndentedAppendable;->printedNewLine:Z

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/GlideException$IndentedAppendable;->appendable:Ljava/lang/Appendable;

    invoke-interface {v1, p1, v2, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;

    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/GlideException$IndentedAppendable;->printedNewLine:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/bumptech/glide/load/engine/GlideException$IndentedAppendable;->printedNewLine:Z

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/GlideException$IndentedAppendable;->appendable:Ljava/lang/Appendable;

    const-string v2, "  "

    invoke-interface {v0, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_2

    add-int/lit8 v0, p3, -0x1

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v2, 0xa

    if-ne v0, v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    iput-boolean v1, p0, Lcom/bumptech/glide/load/engine/GlideException$IndentedAppendable;->printedNewLine:Z

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/GlideException$IndentedAppendable;->appendable:Ljava/lang/Appendable;

    invoke-interface {v0, p1, p2, p3}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;

    return-object p0
.end method
