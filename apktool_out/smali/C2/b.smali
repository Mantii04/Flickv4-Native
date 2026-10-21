.class public final LC2/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LC2/d;
.implements LC2/c;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:LC2/d;

.field public volatile c:LC2/c;

.field public volatile d:LC2/c;

.field public e:Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

.field public f:Lcom/bumptech/glide/request/RequestCoordinator$RequestState;


# direct methods
.method public constructor <init>(Ljava/lang/Object;LC2/d;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/bumptech/glide/request/RequestCoordinator$RequestState;->j:Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

    .line 5
    .line 6
    iput-object v0, p0, LC2/b;->e:Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

    .line 7
    .line 8
    iput-object v0, p0, LC2/b;->f:Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

    .line 9
    .line 10
    iput-object p1, p0, LC2/b;->a:Ljava/lang/Object;

    .line 11
    .line 12
    iput-object p2, p0, LC2/b;->b:LC2/d;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public begin()V
    .locals 3

    .line 1
    iget-object v0, p0, LC2/b;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, LC2/b;->e:Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

    .line 5
    .line 6
    sget-object v2, Lcom/bumptech/glide/request/RequestCoordinator$RequestState;->e:Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

    .line 7
    .line 8
    if-eq v1, v2, :cond_0

    .line 9
    .line 10
    iput-object v2, p0, LC2/b;->e:Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

    .line 11
    .line 12
    iget-object v1, p0, LC2/b;->c:LC2/c;

    .line 13
    .line 14
    invoke-interface {v1}, LC2/c;->begin()V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception v1

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    :goto_0
    monitor-exit v0

    .line 21
    return-void

    .line 22
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw v1
.end method

.method public canNotifyCleared(LC2/c;)Z
    .locals 4

    .line 1
    iget-object v0, p0, LC2/b;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, LC2/b;->b:LC2/d;

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    const/4 v3, 0x0

    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    invoke-interface {v1, p0}, LC2/d;->canNotifyCleared(LC2/c;)Z

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
    move v1, v3

    .line 18
    goto :goto_1

    .line 19
    :cond_1
    :goto_0
    move v1, v2

    .line 20
    :goto_1
    if-eqz v1, :cond_2

    .line 21
    .line 22
    iget-object v1, p0, LC2/b;->c:LC2/c;

    .line 23
    .line 24
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-eqz p1, :cond_2

    .line 29
    .line 30
    goto :goto_2

    .line 31
    :catchall_0
    move-exception p1

    .line 32
    goto :goto_3

    .line 33
    :cond_2
    move v2, v3

    .line 34
    :goto_2
    monitor-exit v0

    .line 35
    return v2

    .line 36
    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    throw p1
.end method

.method public canNotifyStatusChanged(LC2/c;)Z
    .locals 5

    .line 1
    iget-object v0, p0, LC2/b;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, LC2/b;->b:LC2/d;

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    const/4 v3, 0x0

    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    invoke-interface {v1, p0}, LC2/d;->canNotifyStatusChanged(LC2/c;)Z

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
    move v1, v3

    .line 18
    goto :goto_1

    .line 19
    :cond_1
    :goto_0
    move v1, v2

    .line 20
    :goto_1
    if-eqz v1, :cond_5

    .line 21
    .line 22
    iget-object v1, p0, LC2/b;->e:Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

    .line 23
    .line 24
    sget-object v4, Lcom/bumptech/glide/request/RequestCoordinator$RequestState;->n:Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

    .line 25
    .line 26
    if-eq v1, v4, :cond_2

    .line 27
    .line 28
    iget-object v1, p0, LC2/b;->c:LC2/c;

    .line 29
    .line 30
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    goto :goto_2

    .line 35
    :cond_2
    iget-object v1, p0, LC2/b;->d:LC2/c;

    .line 36
    .line 37
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-eqz p1, :cond_4

    .line 42
    .line 43
    iget-object p1, p0, LC2/b;->f:Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

    .line 44
    .line 45
    sget-object v1, Lcom/bumptech/glide/request/RequestCoordinator$RequestState;->m:Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

    .line 46
    .line 47
    if-eq p1, v1, :cond_3

    .line 48
    .line 49
    if-ne p1, v4, :cond_4

    .line 50
    .line 51
    :cond_3
    move p1, v2

    .line 52
    goto :goto_2

    .line 53
    :cond_4
    move p1, v3

    .line 54
    :goto_2
    if-eqz p1, :cond_5

    .line 55
    .line 56
    goto :goto_3

    .line 57
    :cond_5
    move v2, v3

    .line 58
    :goto_3
    monitor-exit v0

    .line 59
    return v2

    .line 60
    :catchall_0
    move-exception p1

    .line 61
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    throw p1
.end method

.method public canSetImage(LC2/c;)Z
    .locals 1

    .line 1
    iget-object p1, p0, LC2/b;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter p1

    .line 4
    :try_start_0
    iget-object v0, p0, LC2/b;->b:LC2/d;

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    invoke-interface {v0, p0}, LC2/d;->canSetImage(LC2/c;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    goto :goto_1

    .line 17
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 18
    :goto_1
    monitor-exit p1

    .line 19
    return v0

    .line 20
    :catchall_0
    move-exception v0

    .line 21
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    throw v0
.end method

.method public clear()V
    .locals 3

    .line 1
    iget-object v0, p0, LC2/b;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/bumptech/glide/request/RequestCoordinator$RequestState;->j:Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

    .line 5
    .line 6
    iput-object v1, p0, LC2/b;->e:Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

    .line 7
    .line 8
    iget-object v2, p0, LC2/b;->c:LC2/c;

    .line 9
    .line 10
    invoke-interface {v2}, LC2/c;->clear()V

    .line 11
    .line 12
    .line 13
    iget-object v2, p0, LC2/b;->f:Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

    .line 14
    .line 15
    if-eq v2, v1, :cond_0

    .line 16
    .line 17
    iput-object v1, p0, LC2/b;->f:Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

    .line 18
    .line 19
    iget-object v1, p0, LC2/b;->d:LC2/c;

    .line 20
    .line 21
    invoke-interface {v1}, LC2/c;->clear()V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception v1

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    :goto_0
    monitor-exit v0

    .line 28
    return-void

    .line 29
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    throw v1
.end method

.method public getRoot()LC2/d;
    .locals 2

    .line 1
    iget-object v0, p0, LC2/b;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, LC2/b;->b:LC2/d;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-interface {v1}, LC2/d;->getRoot()LC2/d;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception v1

    .line 14
    goto :goto_1

    .line 15
    :cond_0
    move-object v1, p0

    .line 16
    :goto_0
    monitor-exit v0

    .line 17
    return-object v1

    .line 18
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    throw v1
.end method

.method public isAnyResourceSet()Z
    .locals 2

    .line 1
    iget-object v0, p0, LC2/b;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, LC2/b;->c:LC2/c;

    .line 5
    .line 6
    invoke-interface {v1}, LC2/c;->isAnyResourceSet()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_1

    .line 11
    .line 12
    iget-object v1, p0, LC2/b;->d:LC2/c;

    .line 13
    .line 14
    invoke-interface {v1}, LC2/c;->isAnyResourceSet()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v1, 0x0

    .line 22
    goto :goto_1

    .line 23
    :catchall_0
    move-exception v1

    .line 24
    goto :goto_2

    .line 25
    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 26
    :goto_1
    monitor-exit v0

    .line 27
    return v1

    .line 28
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    throw v1
.end method

.method public isCleared()Z
    .locals 3

    .line 1
    iget-object v0, p0, LC2/b;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, LC2/b;->e:Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

    .line 5
    .line 6
    sget-object v2, Lcom/bumptech/glide/request/RequestCoordinator$RequestState;->j:Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

    .line 7
    .line 8
    if-ne v1, v2, :cond_0

    .line 9
    .line 10
    iget-object v1, p0, LC2/b;->f:Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

    .line 11
    .line 12
    if-ne v1, v2, :cond_0

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception v1

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    const/4 v1, 0x0

    .line 19
    :goto_0
    monitor-exit v0

    .line 20
    return v1

    .line 21
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    throw v1
.end method

.method public isComplete()Z
    .locals 3

    .line 1
    iget-object v0, p0, LC2/b;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, LC2/b;->e:Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

    .line 5
    .line 6
    sget-object v2, Lcom/bumptech/glide/request/RequestCoordinator$RequestState;->m:Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

    .line 7
    .line 8
    if-eq v1, v2, :cond_1

    .line 9
    .line 10
    iget-object v1, p0, LC2/b;->f:Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

    .line 11
    .line 12
    if-ne v1, v2, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v1, 0x0

    .line 16
    goto :goto_1

    .line 17
    :catchall_0
    move-exception v1

    .line 18
    goto :goto_2

    .line 19
    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 20
    :goto_1
    monitor-exit v0

    .line 21
    return v1

    .line 22
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw v1
.end method

.method public isEquivalentTo(LC2/c;)Z
    .locals 3

    .line 1
    instance-of v0, p1, LC2/b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p1, LC2/b;

    .line 7
    .line 8
    iget-object v0, p0, LC2/b;->c:LC2/c;

    .line 9
    .line 10
    iget-object v2, p1, LC2/b;->c:LC2/c;

    .line 11
    .line 12
    invoke-interface {v0, v2}, LC2/c;->isEquivalentTo(LC2/c;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, LC2/b;->d:LC2/c;

    .line 19
    .line 20
    iget-object p1, p1, LC2/b;->d:LC2/c;

    .line 21
    .line 22
    invoke-interface {v0, p1}, LC2/c;->isEquivalentTo(LC2/c;)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    const/4 p1, 0x1

    .line 29
    return p1

    .line 30
    :cond_0
    return v1
.end method

.method public isRunning()Z
    .locals 3

    .line 1
    iget-object v0, p0, LC2/b;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, LC2/b;->e:Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

    .line 5
    .line 6
    sget-object v2, Lcom/bumptech/glide/request/RequestCoordinator$RequestState;->e:Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

    .line 7
    .line 8
    if-eq v1, v2, :cond_1

    .line 9
    .line 10
    iget-object v1, p0, LC2/b;->f:Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

    .line 11
    .line 12
    if-ne v1, v2, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v1, 0x0

    .line 16
    goto :goto_1

    .line 17
    :catchall_0
    move-exception v1

    .line 18
    goto :goto_2

    .line 19
    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 20
    :goto_1
    monitor-exit v0

    .line 21
    return v1

    .line 22
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw v1
.end method

.method public onRequestFailed(LC2/c;)V
    .locals 2

    .line 1
    iget-object v0, p0, LC2/b;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, LC2/b;->d:LC2/c;

    .line 5
    .line 6
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-nez p1, :cond_1

    .line 11
    .line 12
    sget-object p1, Lcom/bumptech/glide/request/RequestCoordinator$RequestState;->n:Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

    .line 13
    .line 14
    iput-object p1, p0, LC2/b;->e:Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

    .line 15
    .line 16
    iget-object p1, p0, LC2/b;->f:Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

    .line 17
    .line 18
    sget-object v1, Lcom/bumptech/glide/request/RequestCoordinator$RequestState;->e:Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

    .line 19
    .line 20
    if-eq p1, v1, :cond_0

    .line 21
    .line 22
    iput-object v1, p0, LC2/b;->f:Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

    .line 23
    .line 24
    iget-object p1, p0, LC2/b;->d:LC2/c;

    .line 25
    .line 26
    invoke-interface {p1}, LC2/c;->begin()V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception p1

    .line 31
    goto :goto_1

    .line 32
    :cond_0
    :goto_0
    monitor-exit v0

    .line 33
    return-void

    .line 34
    :cond_1
    sget-object p1, Lcom/bumptech/glide/request/RequestCoordinator$RequestState;->n:Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

    .line 35
    .line 36
    iput-object p1, p0, LC2/b;->f:Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

    .line 37
    .line 38
    iget-object p1, p0, LC2/b;->b:LC2/d;

    .line 39
    .line 40
    if-eqz p1, :cond_2

    .line 41
    .line 42
    invoke-interface {p1, p0}, LC2/d;->onRequestFailed(LC2/c;)V

    .line 43
    .line 44
    .line 45
    :cond_2
    monitor-exit v0

    .line 46
    return-void

    .line 47
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    throw p1
.end method

.method public onRequestSuccess(LC2/c;)V
    .locals 2

    .line 1
    iget-object v0, p0, LC2/b;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, LC2/b;->c:LC2/c;

    .line 5
    .line 6
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    sget-object p1, Lcom/bumptech/glide/request/RequestCoordinator$RequestState;->m:Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

    .line 13
    .line 14
    iput-object p1, p0, LC2/b;->e:Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    goto :goto_1

    .line 19
    :cond_0
    iget-object v1, p0, LC2/b;->d:LC2/c;

    .line 20
    .line 21
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-eqz p1, :cond_1

    .line 26
    .line 27
    sget-object p1, Lcom/bumptech/glide/request/RequestCoordinator$RequestState;->m:Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

    .line 28
    .line 29
    iput-object p1, p0, LC2/b;->f:Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

    .line 30
    .line 31
    :cond_1
    :goto_0
    iget-object p1, p0, LC2/b;->b:LC2/d;

    .line 32
    .line 33
    if-eqz p1, :cond_2

    .line 34
    .line 35
    invoke-interface {p1, p0}, LC2/d;->onRequestSuccess(LC2/c;)V

    .line 36
    .line 37
    .line 38
    :cond_2
    monitor-exit v0

    .line 39
    return-void

    .line 40
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    throw p1
.end method

.method public pause()V
    .locals 3

    .line 1
    iget-object v0, p0, LC2/b;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, LC2/b;->e:Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

    .line 5
    .line 6
    sget-object v2, Lcom/bumptech/glide/request/RequestCoordinator$RequestState;->e:Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

    .line 7
    .line 8
    if-ne v1, v2, :cond_0

    .line 9
    .line 10
    sget-object v1, Lcom/bumptech/glide/request/RequestCoordinator$RequestState;->f:Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

    .line 11
    .line 12
    iput-object v1, p0, LC2/b;->e:Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

    .line 13
    .line 14
    iget-object v1, p0, LC2/b;->c:LC2/c;

    .line 15
    .line 16
    invoke-interface {v1}, LC2/c;->pause()V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception v1

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    iget-object v1, p0, LC2/b;->f:Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

    .line 23
    .line 24
    if-ne v1, v2, :cond_1

    .line 25
    .line 26
    sget-object v1, Lcom/bumptech/glide/request/RequestCoordinator$RequestState;->f:Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

    .line 27
    .line 28
    iput-object v1, p0, LC2/b;->f:Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

    .line 29
    .line 30
    iget-object v1, p0, LC2/b;->d:LC2/c;

    .line 31
    .line 32
    invoke-interface {v1}, LC2/c;->pause()V

    .line 33
    .line 34
    .line 35
    :cond_1
    monitor-exit v0

    .line 36
    return-void

    .line 37
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    throw v1
.end method

.method public setRequests(LC2/c;LC2/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, LC2/b;->c:LC2/c;

    .line 2
    .line 3
    iput-object p2, p0, LC2/b;->d:LC2/c;

    .line 4
    .line 5
    return-void
.end method
