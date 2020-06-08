.class public Lcom/caverock/androidsvg/CSSParser;
.super Ljava/lang/Object;
.source "CSSParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/caverock/androidsvg/CSSParser$Attrib;,
        Lcom/caverock/androidsvg/CSSParser$AttribOp;,
        Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;,
        Lcom/caverock/androidsvg/CSSParser$Combinator;,
        Lcom/caverock/androidsvg/CSSParser$MediaType;,
        Lcom/caverock/androidsvg/CSSParser$Rule;,
        Lcom/caverock/androidsvg/CSSParser$Ruleset;,
        Lcom/caverock/androidsvg/CSSParser$Selector;,
        Lcom/caverock/androidsvg/CSSParser$SimpleSelector;
    }
.end annotation


# instance fields
.field private inMediaRule:Z

.field private rendererMediaType:Lcom/caverock/androidsvg/CSSParser$MediaType;


# direct methods
.method public constructor <init>(Lcom/caverock/androidsvg/CSSParser$MediaType;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/caverock/androidsvg/CSSParser;->rendererMediaType:Lcom/caverock/androidsvg/CSSParser$MediaType;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/caverock/androidsvg/CSSParser;->inMediaRule:Z

    iput-object p1, p0, Lcom/caverock/androidsvg/CSSParser;->rendererMediaType:Lcom/caverock/androidsvg/CSSParser$MediaType;

    return-void
.end method

.method private static getChildPosition(Ljava/util/List;ILcom/caverock/androidsvg/SVG$SvgElementBase;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/caverock/androidsvg/SVG$SvgContainer;",
            ">;I",
            "Lcom/caverock/androidsvg/SVG$SvgElementBase;",
            ")I"
        }
    .end annotation

    const/4 v0, -0x1

    if-gez p1, :cond_0

    return v0

    :cond_0
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    iget-object p1, p2, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eq p0, p1, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x0

    invoke-interface {p1}, Lcom/caverock/androidsvg/SVG$SvgContainer;->getChildren()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/caverock/androidsvg/SVG$SvgObject;

    if-ne v1, p2, :cond_3

    return p0

    :cond_3
    add-int/lit8 p0, p0, 0x1

    goto :goto_0
.end method

.method public static mediaMatches(Ljava/lang/String;Lcom/caverock/androidsvg/CSSParser$MediaType;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    new-instance v0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;

    invoke-direct {v0, p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    invoke-static {v0}, Lcom/caverock/androidsvg/CSSParser;->parseMediaList(Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcom/caverock/androidsvg/CSSParser;->mediaMatches(Ljava/util/List;Lcom/caverock/androidsvg/CSSParser$MediaType;)Z

    move-result p0

    return p0

    :cond_0
    new-instance p0, Lorg/xml/sax/SAXException;

    const-string p1, "Invalid @media type list"

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static mediaMatches(Ljava/util/List;Lcom/caverock/androidsvg/CSSParser$MediaType;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/caverock/androidsvg/CSSParser$MediaType;",
            ">;",
            "Lcom/caverock/androidsvg/CSSParser$MediaType;",
            ")Z"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/CSSParser$MediaType;

    sget-object v1, Lcom/caverock/androidsvg/CSSParser$MediaType;->all:Lcom/caverock/androidsvg/CSSParser$MediaType;

    if-eq v0, v1, :cond_2

    if-ne v0, p1, :cond_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private static parseMediaList(Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;",
            ")",
            "Ljava/util/List<",
            "Lcom/caverock/androidsvg/CSSParser$MediaType;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/16 v1, 0x2c

    invoke-virtual {p0, v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextToken(C)Ljava/lang/String;

    move-result-object v1

    :try_start_0
    invoke-static {v1}, Lcom/caverock/androidsvg/CSSParser$MediaType;->valueOf(Ljava/lang/String;)Lcom/caverock/androidsvg/CSSParser$MediaType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :catch_0
    new-instance p0, Lorg/xml/sax/SAXException;

    const-string v0, "Invalid @media type list"

    invoke-direct {p0, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private parseRuleset(Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;)Lcom/caverock/androidsvg/CSSParser$Ruleset;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Lcom/caverock/androidsvg/CSSParser$Ruleset;

    invoke-direct {v2}, Lcom/caverock/androidsvg/CSSParser$Ruleset;-><init>()V

    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_1b

    :cond_0
    const-string v3, "<!--"

    invoke-virtual {v1, v3}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const-string v3, "-->"

    invoke-virtual {v1, v3}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    const/16 v3, 0x40

    invoke-virtual {v1, v3}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(C)Z

    move-result v3

    const/16 v4, 0x3b

    const/16 v5, 0x7d

    const/16 v6, 0x7b

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v3, :cond_c

    invoke-virtual/range {p1 .. p1}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextIdentifier()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    if-eqz v3, :cond_b

    iget-boolean v9, v0, Lcom/caverock/androidsvg/CSSParser;->inMediaRule:Z

    if-nez v9, :cond_6

    const-string v9, "media"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-static/range {p1 .. p1}, Lcom/caverock/androidsvg/CSSParser;->parseMediaList(Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v6}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(C)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual/range {p1 .. p1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    iget-object v4, v0, Lcom/caverock/androidsvg/CSSParser;->rendererMediaType:Lcom/caverock/androidsvg/CSSParser$MediaType;

    invoke-static {v3, v4}, Lcom/caverock/androidsvg/CSSParser;->mediaMatches(Ljava/util/List;Lcom/caverock/androidsvg/CSSParser$MediaType;)Z

    move-result v3

    if-eqz v3, :cond_3

    iput-boolean v8, v0, Lcom/caverock/androidsvg/CSSParser;->inMediaRule:Z

    invoke-direct/range {p0 .. p1}, Lcom/caverock/androidsvg/CSSParser;->parseRuleset(Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;)Lcom/caverock/androidsvg/CSSParser$Ruleset;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/caverock/androidsvg/CSSParser$Ruleset;->addAll(Lcom/caverock/androidsvg/CSSParser$Ruleset;)V

    iput-boolean v7, v0, Lcom/caverock/androidsvg/CSSParser;->inMediaRule:Z

    goto :goto_1

    :cond_3
    invoke-direct/range {p0 .. p1}, Lcom/caverock/androidsvg/CSSParser;->parseRuleset(Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;)Lcom/caverock/androidsvg/CSSParser$Ruleset;

    :goto_1
    invoke-virtual {v1, v5}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(C)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_3

    :cond_4
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "Invalid @media rule: expected \'}\' at end of rule set"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "Invalid @media rule: missing rule set"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-array v8, v8, [Ljava/lang/Object;

    aput-object v3, v8, v7

    const-string v3, "Ignoring @%s rule"

    invoke-static {v3, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v8, "AndroidSVG CSSParser"

    invoke-static {v8, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v3

    if-eqz v3, :cond_8

    goto :goto_3

    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextChar()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v4, :cond_9

    if-nez v7, :cond_9

    goto :goto_3

    :cond_9
    if-ne v3, v6, :cond_a

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_a
    if-ne v3, v5, :cond_7

    if-lez v7, :cond_7

    add-int/lit8 v7, v7, -0x1

    if-nez v7, :cond_7

    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    goto/16 :goto_0

    :cond_b
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "Invalid \'@\' rule in <style> element"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    invoke-virtual/range {p1 .. p1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v3

    const/16 v9, 0x3a

    const/4 v10, 0x0

    if-eqz v3, :cond_d

    move-object v3, v10

    goto/16 :goto_10

    :cond_d
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v8}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v11, Lcom/caverock/androidsvg/CSSParser$Selector;

    invoke-direct {v11}, Lcom/caverock/androidsvg/CSSParser$Selector;-><init>()V

    :goto_4
    invoke-virtual/range {p1 .. p1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v12

    if-eqz v12, :cond_e

    goto/16 :goto_f

    :cond_e
    invoke-virtual/range {p1 .. p1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v12

    if-eqz v12, :cond_f

    goto/16 :goto_c

    :cond_f
    iget v12, v1, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    invoke-virtual {v11}, Lcom/caverock/androidsvg/CSSParser$Selector;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_11

    const/16 v13, 0x3e

    invoke-virtual {v1, v13}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(C)Z

    move-result v13

    if-eqz v13, :cond_10

    sget-object v13, Lcom/caverock/androidsvg/CSSParser$Combinator;->CHILD:Lcom/caverock/androidsvg/CSSParser$Combinator;

    invoke-virtual/range {p1 .. p1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    goto :goto_5

    :cond_10
    const/16 v13, 0x2b

    invoke-virtual {v1, v13}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(C)Z

    move-result v13

    if-eqz v13, :cond_11

    sget-object v13, Lcom/caverock/androidsvg/CSSParser$Combinator;->FOLLOWS:Lcom/caverock/androidsvg/CSSParser$Combinator;

    invoke-virtual/range {p1 .. p1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    goto :goto_5

    :cond_11
    move-object v13, v10

    :goto_5
    const/16 v14, 0x2a

    invoke-virtual {v1, v14}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(C)Z

    move-result v14

    if-eqz v14, :cond_12

    new-instance v14, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;

    invoke-direct {v14, v13, v10}, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;-><init>(Lcom/caverock/androidsvg/CSSParser$Combinator;Ljava/lang/String;)V

    goto :goto_6

    :cond_12
    invoke-virtual/range {p1 .. p1}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextIdentifier()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_13

    new-instance v15, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;

    invoke-direct {v15, v13, v14}, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;-><init>(Lcom/caverock/androidsvg/CSSParser$Combinator;Ljava/lang/String;)V

    iget v14, v11, Lcom/caverock/androidsvg/CSSParser$Selector;->specificity:I

    add-int/2addr v14, v8

    iput v14, v11, Lcom/caverock/androidsvg/CSSParser$Selector;->specificity:I

    move-object v14, v15

    goto :goto_6

    :cond_13
    move-object v14, v10

    :goto_6
    invoke-virtual/range {p1 .. p1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v15

    if-eqz v15, :cond_14

    goto/16 :goto_b

    :cond_14
    const/16 v15, 0x2e

    invoke-virtual {v1, v15}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(C)Z

    move-result v15

    if-eqz v15, :cond_17

    if-nez v14, :cond_15

    new-instance v14, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;

    invoke-direct {v14, v13, v10}, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;-><init>(Lcom/caverock/androidsvg/CSSParser$Combinator;Ljava/lang/String;)V

    :cond_15
    invoke-virtual/range {p1 .. p1}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextIdentifier()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_16

    sget-object v7, Lcom/caverock/androidsvg/CSSParser$AttribOp;->EQUALS:Lcom/caverock/androidsvg/CSSParser$AttribOp;

    const-string v8, "class"

    invoke-virtual {v14, v8, v7, v15}, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->addAttrib(Ljava/lang/String;Lcom/caverock/androidsvg/CSSParser$AttribOp;Ljava/lang/String;)V

    invoke-virtual {v11}, Lcom/caverock/androidsvg/CSSParser$Selector;->addedAttributeOrPseudo()V

    const/4 v7, 0x0

    const/4 v8, 0x1

    goto :goto_6

    :cond_16
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "Invalid \".class\" selector in <style> element"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    const/16 v7, 0x23

    invoke-virtual {v1, v7}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(C)Z

    move-result v7

    if-eqz v7, :cond_1a

    if-nez v14, :cond_18

    new-instance v14, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;

    invoke-direct {v14, v13, v10}, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;-><init>(Lcom/caverock/androidsvg/CSSParser$Combinator;Ljava/lang/String;)V

    :cond_18
    invoke-virtual/range {p1 .. p1}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextIdentifier()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_19

    sget-object v8, Lcom/caverock/androidsvg/CSSParser$AttribOp;->EQUALS:Lcom/caverock/androidsvg/CSSParser$AttribOp;

    const-string v15, "id"

    invoke-virtual {v14, v15, v8, v7}, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->addAttrib(Ljava/lang/String;Lcom/caverock/androidsvg/CSSParser$AttribOp;Ljava/lang/String;)V

    iget v7, v11, Lcom/caverock/androidsvg/CSSParser$Selector;->specificity:I

    add-int/lit16 v7, v7, 0x2710

    iput v7, v11, Lcom/caverock/androidsvg/CSSParser$Selector;->specificity:I

    goto :goto_7

    :cond_19
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "Invalid \"#id\" selector in <style> element"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    :goto_7
    if-nez v14, :cond_1b

    goto/16 :goto_b

    :cond_1b
    const/16 v7, 0x5b

    invoke-virtual {v1, v7}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(C)Z

    move-result v7

    if-eqz v7, :cond_26

    invoke-virtual/range {p1 .. p1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    invoke-virtual/range {p1 .. p1}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextIdentifier()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Invalid attribute selector in <style> element"

    if-eqz v7, :cond_25

    invoke-virtual/range {p1 .. p1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    const/16 v15, 0x3d

    invoke-virtual {v1, v15}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(C)Z

    move-result v15

    if-eqz v15, :cond_1c

    sget-object v15, Lcom/caverock/androidsvg/CSSParser$AttribOp;->EQUALS:Lcom/caverock/androidsvg/CSSParser$AttribOp;

    goto :goto_8

    :cond_1c
    const-string v15, "~="

    invoke-virtual {v1, v15}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_1d

    sget-object v15, Lcom/caverock/androidsvg/CSSParser$AttribOp;->INCLUDES:Lcom/caverock/androidsvg/CSSParser$AttribOp;

    goto :goto_8

    :cond_1d
    const-string v15, "|="

    invoke-virtual {v1, v15}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_1e

    sget-object v15, Lcom/caverock/androidsvg/CSSParser$AttribOp;->DASHMATCH:Lcom/caverock/androidsvg/CSSParser$AttribOp;

    goto :goto_8

    :cond_1e
    move-object v15, v10

    :goto_8
    if-eqz v15, :cond_22

    invoke-virtual/range {p1 .. p1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    invoke-virtual/range {p1 .. p1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v17

    if-eqz v17, :cond_1f

    move-object/from16 v17, v10

    goto :goto_9

    :cond_1f
    invoke-virtual/range {p1 .. p1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextQuotedString()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_20

    goto :goto_9

    :cond_20
    invoke-virtual/range {p1 .. p1}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextIdentifier()Ljava/lang/String;

    move-result-object v17

    :goto_9
    if-eqz v17, :cond_21

    invoke-virtual/range {p1 .. p1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    move-object/from16 v10, v17

    goto :goto_a

    :cond_21
    new-instance v0, Lorg/xml/sax/SAXException;

    invoke-direct {v0, v8}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_22
    :goto_a
    const/16 v5, 0x5d

    invoke-virtual {v1, v5}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(C)Z

    move-result v5

    if-eqz v5, :cond_24

    if-nez v15, :cond_23

    sget-object v15, Lcom/caverock/androidsvg/CSSParser$AttribOp;->EXISTS:Lcom/caverock/androidsvg/CSSParser$AttribOp;

    :cond_23
    invoke-virtual {v14, v7, v15, v10}, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->addAttrib(Ljava/lang/String;Lcom/caverock/androidsvg/CSSParser$AttribOp;Ljava/lang/String;)V

    invoke-virtual {v11}, Lcom/caverock/androidsvg/CSSParser$Selector;->addedAttributeOrPseudo()V

    const/16 v5, 0x7d

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v10, 0x0

    goto/16 :goto_6

    :cond_24
    new-instance v0, Lorg/xml/sax/SAXException;

    invoke-direct {v0, v8}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_25
    new-instance v0, Lorg/xml/sax/SAXException;

    invoke-direct {v0, v8}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_26
    invoke-virtual {v1, v9}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(C)Z

    move-result v5

    if-eqz v5, :cond_29

    iget v5, v1, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    invoke-virtual/range {p1 .. p1}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextIdentifier()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_29

    const/16 v7, 0x28

    invoke-virtual {v1, v7}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(C)Z

    move-result v7

    if-eqz v7, :cond_27

    invoke-virtual/range {p1 .. p1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    invoke-virtual/range {p1 .. p1}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextIdentifier()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_27

    invoke-virtual/range {p1 .. p1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    const/16 v7, 0x29

    invoke-virtual {v1, v7}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(C)Z

    move-result v7

    if-nez v7, :cond_27

    add-int/lit8 v5, v5, -0x1

    iput v5, v1, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    goto :goto_b

    :cond_27
    iget-object v7, v1, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    iget v8, v1, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    invoke-virtual {v7, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    iget-object v7, v14, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->pseudos:Ljava/util/List;

    if-nez v7, :cond_28

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v14, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->pseudos:Ljava/util/List;

    :cond_28
    iget-object v7, v14, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->pseudos:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v11}, Lcom/caverock/androidsvg/CSSParser$Selector;->addedAttributeOrPseudo()V

    :cond_29
    :goto_b
    if-eqz v14, :cond_2b

    iget-object v5, v11, Lcom/caverock/androidsvg/CSSParser$Selector;->selector:Ljava/util/List;

    if-nez v5, :cond_2a

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v11, Lcom/caverock/androidsvg/CSSParser$Selector;->selector:Ljava/util/List;

    :cond_2a
    iget-object v5, v11, Lcom/caverock/androidsvg/CSSParser$Selector;->selector:Ljava/util/List;

    invoke-interface {v5, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x1

    goto :goto_d

    :cond_2b
    iput v12, v1, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    :goto_c
    const/4 v5, 0x0

    :goto_d
    if-eqz v5, :cond_2d

    invoke-virtual/range {p1 .. p1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    move-result v5

    if-nez v5, :cond_2c

    goto :goto_e

    :cond_2c
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, Lcom/caverock/androidsvg/CSSParser$Selector;

    invoke-direct {v11}, Lcom/caverock/androidsvg/CSSParser$Selector;-><init>()V

    :goto_e
    const/16 v5, 0x7d

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v10, 0x0

    goto/16 :goto_4

    :cond_2d
    :goto_f
    invoke-virtual {v11}, Lcom/caverock/androidsvg/CSSParser$Selector;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2e

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2e
    :goto_10
    if-eqz v3, :cond_3b

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3b

    invoke-virtual {v1, v6}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(C)Z

    move-result v5

    if-eqz v5, :cond_3a

    invoke-virtual/range {p1 .. p1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    new-instance v5, Lcom/caverock/androidsvg/SVG$Style;

    invoke-direct {v5}, Lcom/caverock/androidsvg/SVG$Style;-><init>()V

    :goto_11
    invoke-virtual/range {p1 .. p1}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextIdentifier()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    invoke-virtual {v1, v9}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(C)Z

    move-result v7

    if-eqz v7, :cond_39

    invoke-virtual/range {p1 .. p1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    invoke-virtual/range {p1 .. p1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v7

    const/16 v8, 0x21

    if-eqz v7, :cond_2f

    const/4 v12, 0x1

    goto :goto_16

    :cond_2f
    iget v7, v1, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    iget-object v10, v1, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    invoke-virtual {v10, v7}, Ljava/lang/String;->charAt(I)C

    move-result v10

    move v11, v7

    :goto_12
    const/4 v12, -0x1

    if-eq v10, v12, :cond_33

    if-eq v10, v4, :cond_33

    const/16 v12, 0x7d

    if-eq v10, v12, :cond_33

    if-eq v10, v8, :cond_33

    const/16 v12, 0xa

    if-eq v10, v12, :cond_30

    const/16 v12, 0xd

    if-eq v10, v12, :cond_30

    const/4 v12, 0x0

    goto :goto_13

    :cond_30
    const/4 v12, 0x1

    :goto_13
    if-eqz v12, :cond_31

    goto :goto_15

    :cond_31
    invoke-virtual {v1, v10}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->isWhitespace(I)Z

    move-result v10

    if-nez v10, :cond_32

    iget v10, v1, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    const/4 v12, 0x1

    add-int/2addr v10, v12

    move v11, v10

    goto :goto_14

    :cond_32
    const/4 v12, 0x1

    :goto_14
    invoke-virtual/range {p1 .. p1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->advanceChar()I

    move-result v10

    goto :goto_12

    :cond_33
    :goto_15
    const/4 v12, 0x1

    iget v10, v1, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    if-le v10, v7, :cond_34

    iget-object v10, v1, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    invoke-virtual {v10, v7, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    goto :goto_17

    :cond_34
    iput v7, v1, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    :goto_16
    const/4 v10, 0x0

    :goto_17
    if-eqz v10, :cond_39

    invoke-virtual/range {p1 .. p1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    invoke-virtual {v1, v8}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(C)Z

    move-result v7

    if-eqz v7, :cond_36

    invoke-virtual/range {p1 .. p1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    const-string v7, "important"

    invoke-virtual {v1, v7}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_35

    invoke-virtual/range {p1 .. p1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    goto :goto_18

    :cond_35
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "Malformed rule set in <style> element: found unexpected \'!\'"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_36
    :goto_18
    invoke-virtual {v1, v4}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(C)Z

    invoke-static {v5, v6, v10}, Lcom/caverock/androidsvg/SVGParser;->processStyleProperty(Lcom/caverock/androidsvg/SVG$Style;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    const/16 v6, 0x7d

    invoke-virtual {v1, v6}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(C)Z

    move-result v7

    if-eqz v7, :cond_38

    invoke-virtual/range {p1 .. p1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_19
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_37

    move/from16 v16, v12

    goto :goto_1a

    :cond_37
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/caverock/androidsvg/CSSParser$Selector;

    new-instance v4, Lcom/caverock/androidsvg/CSSParser$Rule;

    invoke-direct {v4, v3, v5}, Lcom/caverock/androidsvg/CSSParser$Rule;-><init>(Lcom/caverock/androidsvg/CSSParser$Selector;Lcom/caverock/androidsvg/SVG$Style;)V

    invoke-virtual {v2, v4}, Lcom/caverock/androidsvg/CSSParser$Ruleset;->add(Lcom/caverock/androidsvg/CSSParser$Rule;)V

    goto :goto_19

    :cond_38
    invoke-virtual/range {p1 .. p1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v7

    if-nez v7, :cond_39

    goto/16 :goto_11

    :cond_39
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "Malformed rule set in <style> element"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3a
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "Malformed rule block in <style> element: missing \'{\'"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3b
    const/16 v16, 0x0

    :goto_1a
    if-eqz v16, :cond_3c

    goto/16 :goto_0

    :cond_3c
    :goto_1b
    return-object v2
.end method

.method private static ruleMatch(Lcom/caverock/androidsvg/CSSParser$Selector;ILjava/util/List;ILcom/caverock/androidsvg/SVG$SvgElementBase;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/caverock/androidsvg/CSSParser$Selector;",
            "I",
            "Ljava/util/List<",
            "Lcom/caverock/androidsvg/SVG$SvgContainer;",
            ">;I",
            "Lcom/caverock/androidsvg/SVG$SvgElementBase;",
            ")Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/caverock/androidsvg/CSSParser$Selector;->selector:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;

    invoke-static {v0, p2, p3, p4}, Lcom/caverock/androidsvg/CSSParser;->selectorMatch(Lcom/caverock/androidsvg/CSSParser$SimpleSelector;Ljava/util/List;ILcom/caverock/androidsvg/SVG$SvgElementBase;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    iget-object v0, v0, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->combinator:Lcom/caverock/androidsvg/CSSParser$Combinator;

    sget-object v1, Lcom/caverock/androidsvg/CSSParser$Combinator;->DESCENDANT:Lcom/caverock/androidsvg/CSSParser$Combinator;

    const/4 v3, 0x1

    if-ne v0, v1, :cond_4

    if-nez p1, :cond_1

    return v3

    :cond_1
    :goto_0
    if-gez p3, :cond_2

    return v2

    :cond_2
    add-int/lit8 p4, p1, -0x1

    invoke-static {p0, p4, p2, p3}, Lcom/caverock/androidsvg/CSSParser;->ruleMatchOnAncestors(Lcom/caverock/androidsvg/CSSParser$Selector;ILjava/util/List;I)Z

    move-result p4

    if-eqz p4, :cond_3

    return v3

    :cond_3
    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_4
    sget-object v1, Lcom/caverock/androidsvg/CSSParser$Combinator;->CHILD:Lcom/caverock/androidsvg/CSSParser$Combinator;

    if-ne v0, v1, :cond_5

    sub-int/2addr p1, v3

    invoke-static {p0, p1, p2, p3}, Lcom/caverock/androidsvg/CSSParser;->ruleMatchOnAncestors(Lcom/caverock/androidsvg/CSSParser$Selector;ILjava/util/List;I)Z

    move-result p0

    return p0

    :cond_5
    invoke-static {p2, p3, p4}, Lcom/caverock/androidsvg/CSSParser;->getChildPosition(Ljava/util/List;ILcom/caverock/androidsvg/SVG$SvgElementBase;)I

    move-result v0

    if-gtz v0, :cond_6

    return v2

    :cond_6
    iget-object p4, p4, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {p4}, Lcom/caverock/androidsvg/SVG$SvgContainer;->getChildren()Ljava/util/List;

    move-result-object p4

    sub-int/2addr v0, v3

    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/caverock/androidsvg/SVG$SvgElementBase;

    sub-int/2addr p1, v3

    invoke-static {p0, p1, p2, p3, p4}, Lcom/caverock/androidsvg/CSSParser;->ruleMatch(Lcom/caverock/androidsvg/CSSParser$Selector;ILjava/util/List;ILcom/caverock/androidsvg/SVG$SvgElementBase;)Z

    move-result p0

    return p0
.end method

.method protected static ruleMatch(Lcom/caverock/androidsvg/CSSParser$Selector;Lcom/caverock/androidsvg/SVG$SvgElementBase;)Z
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    :goto_0
    const/4 v2, 0x0

    if-nez v1, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    iget-object v4, p0, Lcom/caverock/androidsvg/CSSParser$Selector;->selector:Ljava/util/List;

    if-nez v4, :cond_0

    move v4, v2

    goto :goto_1

    :cond_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    :goto_1
    if-ne v4, v3, :cond_1

    invoke-virtual {p0, v2}, Lcom/caverock/androidsvg/CSSParser$Selector;->get(I)Lcom/caverock/androidsvg/CSSParser$SimpleSelector;

    move-result-object p0

    invoke-static {p0, v0, v1, p1}, Lcom/caverock/androidsvg/CSSParser;->selectorMatch(Lcom/caverock/androidsvg/CSSParser$SimpleSelector;Ljava/util/List;ILcom/caverock/androidsvg/SVG$SvgElementBase;)Z

    move-result p0

    return p0

    :cond_1
    iget-object v4, p0, Lcom/caverock/androidsvg/CSSParser$Selector;->selector:Ljava/util/List;

    if-nez v4, :cond_2

    goto :goto_2

    :cond_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    :goto_2
    sub-int/2addr v2, v3

    invoke-static {p0, v2, v0, v1, p1}, Lcom/caverock/androidsvg/CSSParser;->ruleMatch(Lcom/caverock/androidsvg/CSSParser$Selector;ILjava/util/List;ILcom/caverock/androidsvg/SVG$SvgElementBase;)Z

    move-result p0

    return p0

    :cond_3
    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    check-cast v1, Lcom/caverock/androidsvg/SVG$SvgObject;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    goto :goto_0
.end method

.method private static ruleMatchOnAncestors(Lcom/caverock/androidsvg/CSSParser$Selector;ILjava/util/List;I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/caverock/androidsvg/CSSParser$Selector;",
            "I",
            "Ljava/util/List<",
            "Lcom/caverock/androidsvg/SVG$SvgContainer;",
            ">;I)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/caverock/androidsvg/CSSParser$Selector;->selector:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/caverock/androidsvg/SVG$SvgElementBase;

    invoke-static {v0, p2, p3, v1}, Lcom/caverock/androidsvg/CSSParser;->selectorMatch(Lcom/caverock/androidsvg/CSSParser$SimpleSelector;Ljava/util/List;ILcom/caverock/androidsvg/SVG$SvgElementBase;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    :cond_0
    iget-object v0, v0, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->combinator:Lcom/caverock/androidsvg/CSSParser$Combinator;

    sget-object v2, Lcom/caverock/androidsvg/CSSParser$Combinator;->DESCENDANT:Lcom/caverock/androidsvg/CSSParser$Combinator;

    const/4 v4, 0x1

    if-ne v0, v2, :cond_3

    if-nez p1, :cond_1

    return v4

    :cond_1
    if-gtz p3, :cond_2

    return v3

    :cond_2
    add-int/lit8 v0, p1, -0x1

    add-int/lit8 p3, p3, -0x1

    invoke-static {p0, v0, p2, p3}, Lcom/caverock/androidsvg/CSSParser;->ruleMatchOnAncestors(Lcom/caverock/androidsvg/CSSParser$Selector;ILjava/util/List;I)Z

    move-result v0

    if-eqz v0, :cond_1

    return v4

    :cond_3
    sget-object v2, Lcom/caverock/androidsvg/CSSParser$Combinator;->CHILD:Lcom/caverock/androidsvg/CSSParser$Combinator;

    if-ne v0, v2, :cond_4

    sub-int/2addr p1, v4

    sub-int/2addr p3, v4

    invoke-static {p0, p1, p2, p3}, Lcom/caverock/androidsvg/CSSParser;->ruleMatchOnAncestors(Lcom/caverock/androidsvg/CSSParser$Selector;ILjava/util/List;I)Z

    move-result p0

    return p0

    :cond_4
    invoke-static {p2, p3, v1}, Lcom/caverock/androidsvg/CSSParser;->getChildPosition(Ljava/util/List;ILcom/caverock/androidsvg/SVG$SvgElementBase;)I

    move-result v0

    if-gtz v0, :cond_5

    return v3

    :cond_5
    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v1}, Lcom/caverock/androidsvg/SVG$SvgContainer;->getChildren()Ljava/util/List;

    move-result-object v1

    sub-int/2addr v0, v4

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/SVG$SvgElementBase;

    sub-int/2addr p1, v4

    invoke-static {p0, p1, p2, p3, v0}, Lcom/caverock/androidsvg/CSSParser;->ruleMatch(Lcom/caverock/androidsvg/CSSParser$Selector;ILjava/util/List;ILcom/caverock/androidsvg/SVG$SvgElementBase;)Z

    move-result p0

    return p0
.end method

.method private static selectorMatch(Lcom/caverock/androidsvg/CSSParser$SimpleSelector;Ljava/util/List;ILcom/caverock/androidsvg/SVG$SvgElementBase;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/caverock/androidsvg/CSSParser$SimpleSelector;",
            "Ljava/util/List<",
            "Lcom/caverock/androidsvg/SVG$SvgContainer;",
            ">;I",
            "Lcom/caverock/androidsvg/SVG$SvgElementBase;",
            ")Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->tag:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-string v2, "G"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p3, Lcom/caverock/androidsvg/SVG$Group;

    if-nez v0, :cond_1

    return v1

    :cond_0
    iget-object v0, p0, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->tag:Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->attribs:Ljava/util/List;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/caverock/androidsvg/CSSParser$Attrib;

    iget-object v3, v2, Lcom/caverock/androidsvg/CSSParser$Attrib;->name:Ljava/lang/String;

    const-string v4, "id"

    if-ne v3, v4, :cond_4

    iget-object v2, v2, Lcom/caverock/androidsvg/CSSParser$Attrib;->value:Ljava/lang/String;

    iget-object v3, p3, Lcom/caverock/androidsvg/SVG$SvgElementBase;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    :cond_4
    const-string v4, "class"

    if-ne v3, v4, :cond_6

    iget-object v3, p3, Lcom/caverock/androidsvg/SVG$SvgElementBase;->classNames:Ljava/util/List;

    if-nez v3, :cond_5

    return v1

    :cond_5
    iget-object v2, v2, Lcom/caverock/androidsvg/CSSParser$Attrib;->value:Ljava/lang/String;

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_6
    return v1

    :cond_7
    :goto_0
    iget-object p0, p0, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->pseudos:Ljava/util/List;

    if-eqz p0, :cond_b

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_1

    :cond_9
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "first-child"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {p1, p2, p3}, Lcom/caverock/androidsvg/CSSParser;->getChildPosition(Ljava/util/List;ILcom/caverock/androidsvg/SVG$SvgElementBase;)I

    move-result v0

    if-eqz v0, :cond_8

    :cond_a
    return v1

    :cond_b
    :goto_1
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public parse(Ljava/lang/String;)Lcom/caverock/androidsvg/CSSParser$Ruleset;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    new-instance v0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;

    invoke-direct {v0, p1}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/CSSParser;->parseRuleset(Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;)Lcom/caverock/androidsvg/CSSParser$Ruleset;

    move-result-object p0

    return-object p0
.end method
