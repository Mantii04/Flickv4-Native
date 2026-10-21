.class public final Landroidx/concurrent/futures/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Landroidx/concurrent/futures/m;

.field public c:Landroidx/concurrent/futures/o;

.field public d:Z


# virtual methods
.method public finalize()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/concurrent/futures/j;->b:Landroidx/concurrent/futures/m;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/concurrent/futures/m;->isDone()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    new-instance v1, Landroidx/concurrent/futures/CallbackToFutureAdapter$FutureGarbageCollectedException;

    .line 12
    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v3, "The completer object was garbage collected - this future would otherwise never complete. The tag was: "

    .line 16
    .line 17
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object v3, p0, Landroidx/concurrent/futures/j;->a:Ljava/lang/Object;

    .line 21
    .line 22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, v0, Landroidx/concurrent/futures/m;->e:Landroidx/concurrent/futures/l;

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroidx/concurrent/futures/i;->setException(Ljava/lang/Throwable;)Z

    .line 35
    .line 36
    .line 37
    :cond_0
    iget-boolean v0, p0, Landroidx/concurrent/futures/j;->d:Z

    .line 38
    .line 39
    if-nez v0, :cond_1

    .line 40
    .line 41
    iget-object v0, p0, Landroidx/concurrent/futures/j;->c:Landroidx/concurrent/futures/o;

    .line 42
    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    const/4 v1, 0x0

    .line 46
    invoke-virtual {v0, v1}, Landroidx/concurrent/futures/o;->set(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    :cond_1
    return-void
.end method

.method public set(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/concurrent/futures/j;->d:Z

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/concurrent/futures/j;->b:Landroidx/concurrent/futures/m;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    iget-object v1, v1, Landroidx/concurrent/futures/m;->e:Landroidx/concurrent/futures/l;

    .line 9
    .line 10
    invoke-virtual {v1, p1}, Landroidx/concurrent/futures/i;->set(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    if-eqz v0, :cond_1

    .line 19
    .line 20
    const/4 p1, 0x0

    .line 21
    iput-object p1, p0, Landroidx/concurrent/futures/j;->a:Ljava/lang/Object;

    .line 22
    .line 23
    iput-object p1, p0, Landroidx/concurrent/futures/j;->b:Landroidx/concurrent/futures/m;

    .line 24
    .line 25
    iput-object p1, p0, Landroidx/concurrent/futures/j;->c:Landroidx/concurrent/futures/o;

    .line 26
    .line 27
    :cond_1
    return v0
.end method

.method public setCancelled()Z
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/concurrent/futures/j;->d:Z

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/concurrent/futures/j;->b:Landroidx/concurrent/futures/m;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    iget-object v1, v1, Landroidx/concurrent/futures/m;->e:Landroidx/concurrent/futures/l;

    .line 9
    .line 10
    invoke-virtual {v1, v0}, Landroidx/concurrent/futures/i;->cancel(Z)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    if-eqz v0, :cond_1

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    iput-object v1, p0, Landroidx/concurrent/futures/j;->a:Ljava/lang/Object;

    .line 22
    .line 23
    iput-object v1, p0, Landroidx/concurrent/futures/j;->b:Landroidx/concurrent/futures/m;

    .line 24
    .line 25
    iput-object v1, p0, Landroidx/concurrent/futures/j;->c:Landroidx/concurrent/futures/o;

    .line 26
    .line 27
    :cond_1
    return v0
.end method

.method public setException(Ljava/lang/Throwable;)Z
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/concurrent/futures/j;->d:Z

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/concurrent/futures/j;->b:Landroidx/concurrent/futures/m;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    iget-object v1, v1, Landroidx/concurrent/futures/m;->e:Landroidx/concurrent/futures/l;

    .line 9
    .line 10
    invoke-virtual {v1, p1}, Landroidx/concurrent/futures/i;->setException(Ljava/lang/Throwable;)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    if-eqz v0, :cond_1

    .line 19
    .line 20
    const/4 p1, 0x0

    .line 21
    iput-object p1, p0, Landroidx/concurrent/futures/j;->a:Ljava/lang/Object;

    .line 22
    .line 23
    iput-object p1, p0, Landroidx/concurrent/futures/j;->b:Landroidx/concurrent/futures/m;

    .line 24
    .line 25
    iput-object p1, p0, Landroidx/concurrent/futures/j;->c:Landroidx/concurrent/futures/o;

    .line 26
    .line 27
    :cond_1
    return v0
.end method
