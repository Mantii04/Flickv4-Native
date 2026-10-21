.class public abstract LQ3/b0;
.super Ljava/util/AbstractCollection;
.source "SourceFile"


# virtual methods
.method public clear()V
    .locals 1

    .line 1
    move-object v0, p0

    .line 2
    check-cast v0, LQ3/e;

    .line 3
    .line 4
    iget-object v0, v0, LQ3/e;->b:LQ3/g;

    .line 5
    .line 6
    invoke-interface {v0}, LQ3/W;->clear()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Ljava/util/Map$Entry;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Ljava/util/Map$Entry;

    .line 6
    .line 7
    move-object v0, p0

    .line 8
    check-cast v0, LQ3/e;

    .line 9
    .line 10
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iget-object v0, v0, LQ3/e;->b:LQ3/g;

    .line 19
    .line 20
    invoke-interface {v0, v1, p1}, LQ3/W;->containsEntry(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    return p1

    .line 25
    :cond_0
    const/4 p1, 0x0

    .line 26
    return p1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Ljava/util/Map$Entry;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Ljava/util/Map$Entry;

    .line 6
    .line 7
    move-object v0, p0

    .line 8
    check-cast v0, LQ3/e;

    .line 9
    .line 10
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iget-object v0, v0, LQ3/e;->b:LQ3/g;

    .line 19
    .line 20
    invoke-interface {v0, v1, p1}, LQ3/W;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    return p1

    .line 25
    :cond_0
    const/4 p1, 0x0

    .line 26
    return p1
.end method

.method public size()I
    .locals 1

    .line 1
    move-object v0, p0

    .line 2
    check-cast v0, LQ3/e;

    .line 3
    .line 4
    iget-object v0, v0, LQ3/e;->b:LQ3/g;

    .line 5
    .line 6
    invoke-interface {v0}, LQ3/W;->size()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    return v0
.end method
