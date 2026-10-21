.class public abstract Lj6/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public b:Lj6/p;

.field public e:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/Appendable;ILorg/jsoup/nodes/a;)V
.end method

.method public absUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p1}, Lh6/k;->notEmpty(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lj6/p;->hasAttr(Ljava/lang/String;)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    const-string p1, ""

    .line 11
    .line 12
    return-object p1

    .line 13
    :cond_0
    invoke-virtual {p0}, Lj6/p;->baseUri()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p0, p1}, Lj6/p;->attr(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-static {v0, p1}, Lh6/j;->resolve(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    return-object p1
.end method

.method public varargs addChildren(I[Lj6/p;)V
    .locals 4

    .line 1
    invoke-static {p2}, Lh6/k;->noNullElements([Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lj6/p;->ensureChildNodes()Ljava/util/List;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    array-length v1, p2

    .line 9
    const/4 v2, 0x0

    .line 10
    :goto_0
    if-ge v2, v1, :cond_0

    .line 11
    .line 12
    aget-object v3, p2, v2

    .line 13
    .line 14
    invoke-virtual {p0, v3}, Lj6/p;->reparentChild(Lj6/p;)V

    .line 15
    .line 16
    .line 17
    add-int/lit8 v2, v2, 0x1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    invoke-interface {v0, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lj6/p;->ensureChildNodes()Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-ge p1, v0, :cond_1

    .line 36
    .line 37
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Lj6/p;

    .line 42
    .line 43
    invoke-virtual {v0, p1}, Lj6/p;->setSiblingIndex(I)V

    .line 44
    .line 45
    .line 46
    add-int/lit8 p1, p1, 0x1

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    return-void
.end method

.method public attr(Ljava/lang/String;Ljava/lang/String;)Lj6/p;
    .locals 3

    .line 7
    invoke-virtual {p0}, Lj6/p;->attributes()Lj6/c;

    move-result-object v0

    .line 8
    invoke-virtual {v0, p1}, Lj6/c;->d(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 9
    iget-object v2, v0, Lj6/c;->f:[Ljava/lang/String;

    aput-object p2, v2, v1

    .line 10
    iget-object p2, v0, Lj6/c;->e:[Ljava/lang/String;

    aget-object p2, p2, v1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 11
    iget-object p2, v0, Lj6/c;->e:[Ljava/lang/String;

    aput-object p1, p2, v1

    :cond_0
    return-object p0

    .line 12
    :cond_1
    iget v1, v0, Lj6/c;->b:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lj6/c;->a(I)V

    .line 13
    iget-object v1, v0, Lj6/c;->e:[Ljava/lang/String;

    iget v2, v0, Lj6/c;->b:I

    aput-object p1, v1, v2

    .line 14
    iget-object p1, v0, Lj6/c;->f:[Ljava/lang/String;

    aput-object p2, p1, v2

    add-int/lit8 v2, v2, 0x1

    .line 15
    iput v2, v0, Lj6/c;->b:I

    return-object p0
.end method

.method public attr(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p1}, Lh6/k;->notNull(Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p0}, Lj6/p;->hasAttributes()Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    .line 3
    :cond_0
    invoke-virtual {p0}, Lj6/p;->attributes()Lj6/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lj6/c;->getIgnoreCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    return-object v0

    .line 5
    :cond_1
    const-string v0, "abs:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    .line 6
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lj6/p;->absUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v1
.end method

.method public abstract attributes()Lj6/c;
.end method

.method public abstract b(Ljava/lang/Appendable;ILorg/jsoup/nodes/a;)V
.end method

.method public abstract baseUri()Ljava/lang/String;
.end method

.method public before(Lj6/p;)Lj6/p;
    .locals 4

    .line 1
    invoke-static {p1}, Lh6/k;->notNull(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lj6/p;->b:Lj6/p;

    .line 5
    .line 6
    invoke-static {v0}, Lh6/k;->notNull(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lj6/p;->b:Lj6/p;

    .line 10
    .line 11
    iget v1, p0, Lj6/p;->e:I

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    new-array v2, v2, [Lj6/p;

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    aput-object p1, v2, v3

    .line 18
    .line 19
    invoke-virtual {v0, v1, v2}, Lj6/p;->addChildren(I[Lj6/p;)V

    .line 20
    .line 21
    .line 22
    return-object p0
.end method

.method public childNode(I)Lj6/p;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lj6/p;->ensureChildNodes()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lj6/p;

    .line 10
    .line 11
    return-object p1
.end method

.method public abstract childNodeSize()I
.end method

.method public childNodes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lj6/p;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lj6/p;->ensureChildNodes()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public clone()Lj6/p;
    .locals 7

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lj6/p;->doClone(Lj6/p;)Lj6/p;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 4
    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 5
    :cond_0
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 6
    invoke-virtual {v1}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lj6/p;

    .line 7
    invoke-virtual {v2}, Lj6/p;->childNodeSize()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    .line 8
    invoke-virtual {v2}, Lj6/p;->ensureChildNodes()Ljava/util/List;

    move-result-object v5

    .line 9
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lj6/p;

    invoke-virtual {v6, v2}, Lj6/p;->doClone(Lj6/p;)Lj6/p;

    move-result-object v6

    .line 10
    invoke-interface {v5, v4, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-virtual {v1, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lj6/p;->clone()Lj6/p;

    move-result-object v0

    return-object v0
.end method

.method public doClone(Lj6/p;)Lj6/p;
    .locals 1

    .line 1
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lj6/p;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    iput-object p1, v0, Lj6/p;->b:Lj6/p;

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget p1, p0, Lj6/p;->e:I

    .line 14
    .line 15
    :goto_0
    iput p1, v0, Lj6/p;->e:I

    .line 16
    .line 17
    return-object v0

    .line 18
    :catch_0
    move-exception p1

    .line 19
    new-instance v0, Ljava/lang/RuntimeException;

    .line 20
    .line 21
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 22
    .line 23
    .line 24
    throw v0
.end method

.method public abstract doSetBaseUri(Ljava/lang/String;)V
.end method

.method public abstract ensureChildNodes()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lj6/p;",
            ">;"
        }
    .end annotation
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    return p1

    .line 5
    :cond_0
    const/4 p1, 0x0

    .line 6
    return p1
.end method

.method public hasAttr(Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-static {p1}, Lh6/k;->notNull(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    const-string v0, "abs:"

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x4

    .line 13
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p0}, Lj6/p;->attributes()Lj6/c;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1, v0}, Lj6/c;->hasKeyIgnoreCase(Ljava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    invoke-virtual {p0, v0}, Lj6/p;->absUrl(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const-string v1, ""

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_0

    .line 38
    .line 39
    const/4 p1, 0x1

    .line 40
    return p1

    .line 41
    :cond_0
    invoke-virtual {p0}, Lj6/p;->attributes()Lj6/c;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v0, p1}, Lj6/c;->hasKeyIgnoreCase(Ljava/lang/String;)Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    return p1
.end method

.method public abstract hasAttributes()Z
.end method

.method public hasParent()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lj6/p;->b:Lj6/p;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    return v0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    return v0
.end method

.method public indent(Ljava/lang/Appendable;ILorg/jsoup/nodes/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/16 v0, 0xa

    .line 2
    .line 3
    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p3}, Lorg/jsoup/nodes/a;->indentAmount()I

    .line 8
    .line 9
    .line 10
    move-result p3

    .line 11
    mul-int/2addr p3, p2

    .line 12
    invoke-static {p3}, Lh6/j;->padding(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public nextSibling()Lj6/p;
    .locals 4

    .line 1
    iget-object v0, p0, Lj6/p;->b:Lj6/p;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    invoke-virtual {v0}, Lj6/p;->ensureChildNodes()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget v2, p0, Lj6/p;->e:I

    .line 12
    .line 13
    add-int/lit8 v2, v2, 0x1

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-le v3, v2, :cond_1

    .line 20
    .line 21
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Lj6/p;

    .line 26
    .line 27
    return-object v0

    .line 28
    :cond_1
    return-object v1
.end method

.method public abstract nodeName()Ljava/lang/String;
.end method

.method public outerHtml()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2
    invoke-virtual {p0, v0}, Lj6/p;->outerHtml(Ljava/lang/Appendable;)V

    .line 3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public outerHtml(Ljava/lang/Appendable;)V
    .locals 3

    .line 4
    new-instance v0, Lj6/o;

    .line 5
    invoke-virtual {p0}, Lj6/p;->ownerDocument()Lj6/h;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 6
    :goto_0
    invoke-virtual {v1}, Lj6/h;->outputSettings()Lorg/jsoup/nodes/a;

    move-result-object v1

    goto :goto_1

    :cond_0
    new-instance v1, Lj6/h;

    const-string v2, ""

    invoke-direct {v1, v2}, Lj6/h;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :goto_1
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, v0, Lj6/o;->a:Ljava/lang/Appendable;

    .line 9
    iput-object v1, v0, Lj6/o;->b:Lorg/jsoup/nodes/a;

    .line 10
    invoke-virtual {v1}, Lorg/jsoup/nodes/a;->a()Ljava/nio/charset/CharsetEncoder;

    .line 11
    invoke-static {v0, p0}, Ll6/U;->traverse(Ll6/V;Lj6/p;)V

    return-void
.end method

.method public ownerDocument()Lj6/h;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lj6/p;->root()Lj6/p;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Lj6/h;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    check-cast v0, Lj6/h;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    return-object v0
.end method

.method public parent()Lj6/p;
    .locals 1

    .line 1
    iget-object v0, p0, Lj6/p;->b:Lj6/p;

    .line 2
    .line 3
    return-object v0
.end method

.method public final parentNode()Lj6/p;
    .locals 1

    .line 1
    iget-object v0, p0, Lj6/p;->b:Lj6/p;

    .line 2
    .line 3
    return-object v0
.end method

.method public remove()V
    .locals 1

    .line 1
    iget-object v0, p0, Lj6/p;->b:Lj6/p;

    .line 2
    .line 3
    invoke-static {v0}, Lh6/k;->notNull(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lj6/p;->b:Lj6/p;

    .line 7
    .line 8
    invoke-virtual {v0, p0}, Lj6/p;->removeChild(Lj6/p;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public removeChild(Lj6/p;)V
    .locals 3

    .line 1
    iget-object v0, p1, Lj6/p;->b:Lj6/p;

    .line 2
    .line 3
    if-ne v0, p0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    invoke-static {v0}, Lh6/k;->isTrue(Z)V

    .line 9
    .line 10
    .line 11
    iget v0, p1, Lj6/p;->e:I

    .line 12
    .line 13
    invoke-virtual {p0}, Lj6/p;->ensureChildNodes()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lj6/p;->ensureChildNodes()Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-ge v0, v2, :cond_1

    .line 29
    .line 30
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    check-cast v2, Lj6/p;

    .line 35
    .line 36
    invoke-virtual {v2, v0}, Lj6/p;->setSiblingIndex(I)V

    .line 37
    .line 38
    .line 39
    add-int/lit8 v0, v0, 0x1

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    const/4 v0, 0x0

    .line 43
    iput-object v0, p1, Lj6/p;->b:Lj6/p;

    .line 44
    .line 45
    return-void
.end method

.method public reparentChild(Lj6/p;)V
    .locals 0

    .line 1
    invoke-virtual {p1, p0}, Lj6/p;->setParentNode(Lj6/p;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public replaceChild(Lj6/p;Lj6/p;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lj6/p;->b:Lj6/p;

    .line 2
    .line 3
    if-ne v0, p0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    invoke-static {v0}, Lh6/k;->isTrue(Z)V

    .line 9
    .line 10
    .line 11
    invoke-static {p2}, Lh6/k;->notNull(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p2, Lj6/p;->b:Lj6/p;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {v0, p2}, Lj6/p;->removeChild(Lj6/p;)V

    .line 19
    .line 20
    .line 21
    :cond_1
    iget v0, p1, Lj6/p;->e:I

    .line 22
    .line 23
    invoke-virtual {p0}, Lj6/p;->ensureChildNodes()Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-interface {v1, v0, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    iput-object p0, p2, Lj6/p;->b:Lj6/p;

    .line 31
    .line 32
    invoke-virtual {p2, v0}, Lj6/p;->setSiblingIndex(I)V

    .line 33
    .line 34
    .line 35
    const/4 p2, 0x0

    .line 36
    iput-object p2, p1, Lj6/p;->b:Lj6/p;

    .line 37
    .line 38
    return-void
.end method

.method public replaceWith(Lj6/p;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lh6/k;->notNull(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lj6/p;->b:Lj6/p;

    .line 5
    .line 6
    invoke-static {v0}, Lh6/k;->notNull(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lj6/p;->b:Lj6/p;

    .line 10
    .line 11
    invoke-virtual {v0, p0, p1}, Lj6/p;->replaceChild(Lj6/p;Lj6/p;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public root()Lj6/p;
    .locals 2

    .line 1
    move-object v0, p0

    .line 2
    :goto_0
    iget-object v1, v0, Lj6/p;->b:Lj6/p;

    .line 3
    .line 4
    if-eqz v1, :cond_0

    .line 5
    .line 6
    move-object v0, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    return-object v0
.end method

.method public setBaseUri(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lh6/k;->notNull(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lj6/n;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Lj6/n;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lj6/p;->traverse(Ll6/V;)Lj6/p;

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public setParentNode(Lj6/p;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lh6/k;->notNull(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lj6/p;->b:Lj6/p;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0, p0}, Lj6/p;->removeChild(Lj6/p;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    iput-object p1, p0, Lj6/p;->b:Lj6/p;

    .line 12
    .line 13
    return-void
.end method

.method public setSiblingIndex(I)V
    .locals 0

    .line 1
    iput p1, p0, Lj6/p;->e:I

    .line 2
    .line 3
    return-void
.end method

.method public siblingIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lj6/p;->e:I

    .line 2
    .line 3
    return v0
.end method

.method public siblingNodes()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lj6/p;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lj6/p;->b:Lj6/p;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    invoke-virtual {v0}, Lj6/p;->ensureChildNodes()Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    new-instance v1, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    add-int/lit8 v2, v2, -0x1

    .line 19
    .line 20
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 21
    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_2

    .line 32
    .line 33
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    check-cast v2, Lj6/p;

    .line 38
    .line 39
    if-eq v2, p0, :cond_1

    .line 40
    .line 41
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lj6/p;->outerHtml()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public traverse(Ll6/V;)Lj6/p;
    .locals 0

    .line 1
    invoke-static {p1}, Lh6/k;->notNull(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    invoke-static {p1, p0}, Ll6/U;->traverse(Ll6/V;Lj6/p;)V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method
