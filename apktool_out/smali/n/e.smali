.class public abstract Ln/e;
.super Ln/f;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public b:Ln/c;

.field public e:Ln/c;


# virtual methods
.method public abstract a(Ln/c;)Ln/c;
.end method

.method public abstract b(Ln/c;)Ln/c;
.end method

.method public hasNext()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ln/e;->e:Ln/c;

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

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ln/e;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Ln/e;->e:Ln/c;

    .line 3
    iget-object v1, p0, Ln/e;->b:Ln/c;

    if-eq v0, v1, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0, v0}, Ln/e;->b(Ln/c;)Ln/c;

    move-result-object v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    .line 5
    :goto_1
    iput-object v1, p0, Ln/e;->e:Ln/c;

    return-object v0
.end method

.method public supportRemove(Ln/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln/c;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln/e;->b:Ln/c;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-ne v0, p1, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Ln/e;->e:Ln/c;

    .line 7
    .line 8
    if-ne p1, v0, :cond_0

    .line 9
    .line 10
    iput-object v1, p0, Ln/e;->e:Ln/c;

    .line 11
    .line 12
    iput-object v1, p0, Ln/e;->b:Ln/c;

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Ln/e;->b:Ln/c;

    .line 15
    .line 16
    if-ne v0, p1, :cond_1

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Ln/e;->a(Ln/c;)Ln/c;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iput-object v0, p0, Ln/e;->b:Ln/c;

    .line 23
    .line 24
    :cond_1
    iget-object v0, p0, Ln/e;->e:Ln/c;

    .line 25
    .line 26
    if-ne v0, p1, :cond_4

    .line 27
    .line 28
    iget-object p1, p0, Ln/e;->b:Ln/c;

    .line 29
    .line 30
    if-eq v0, p1, :cond_3

    .line 31
    .line 32
    if-nez p1, :cond_2

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    invoke-virtual {p0, v0}, Ln/e;->b(Ln/c;)Ln/c;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    :cond_3
    :goto_0
    iput-object v1, p0, Ln/e;->e:Ln/c;

    .line 40
    .line 41
    :cond_4
    return-void
.end method
