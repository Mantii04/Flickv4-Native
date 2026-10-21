.class public final Lcom/bumptech/glide/load/engine/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LH2/f;


# static fields
.field public static final I:Ln2/B;


# instance fields
.field public A:Lcom/bumptech/glide/load/DataSource;

.field public B:Z

.field public C:Lcom/bumptech/glide/load/engine/GlideException;

.field public D:Z

.field public E:Ln2/G;

.field public F:Lcom/bumptech/glide/load/engine/a;

.field public volatile G:Z

.field public H:Z

.field public final b:Ln2/D;

.field public final e:LH2/k;

.field public final f:Lcom/bumptech/glide/load/engine/b;

.field public final j:LL/e;

.field public final m:Ln2/B;

.field public final n:Lcom/bumptech/glide/load/engine/b;

.field public final p:Lq2/h;

.field public final q:Lq2/h;

.field public final r:Lq2/h;

.field public final s:Lq2/h;

.field public final t:Ljava/util/concurrent/atomic/AtomicInteger;

.field public u:Ln2/E;

.field public v:Z

.field public w:Z

.field public x:Z

.field public y:Z

.field public z:Ln2/M;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ln2/B;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/bumptech/glide/load/engine/e;->I:Ln2/B;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Lq2/h;Lq2/h;Lq2/h;Lq2/h;Lcom/bumptech/glide/load/engine/b;Lcom/bumptech/glide/load/engine/b;LL/e;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/bumptech/glide/load/engine/e;->I:Ln2/B;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ln2/D;

    .line 7
    .line 8
    new-instance v2, Ljava/util/ArrayList;

    .line 9
    .line 10
    const/4 v3, 0x2

    .line 11
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 12
    .line 13
    .line 14
    invoke-direct {v1, v2}, Ln2/D;-><init>(Ljava/util/ArrayList;)V

    .line 15
    .line 16
    .line 17
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/e;->b:Ln2/D;

    .line 18
    .line 19
    invoke-static {}, LH2/k;->newInstance()LH2/k;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/e;->e:LH2/k;

    .line 24
    .line 25
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 26
    .line 27
    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/e;->t:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 31
    .line 32
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/e;->p:Lq2/h;

    .line 33
    .line 34
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/e;->q:Lq2/h;

    .line 35
    .line 36
    iput-object p3, p0, Lcom/bumptech/glide/load/engine/e;->r:Lq2/h;

    .line 37
    .line 38
    iput-object p4, p0, Lcom/bumptech/glide/load/engine/e;->s:Lq2/h;

    .line 39
    .line 40
    iput-object p5, p0, Lcom/bumptech/glide/load/engine/e;->n:Lcom/bumptech/glide/load/engine/b;

    .line 41
    .line 42
    iput-object p6, p0, Lcom/bumptech/glide/load/engine/e;->f:Lcom/bumptech/glide/load/engine/b;

    .line 43
    .line 44
    iput-object p7, p0, Lcom/bumptech/glide/load/engine/e;->j:LL/e;

    .line 45
    .line 46
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/e;->m:Ln2/B;

    .line 47
    .line 48
    return-void
.end method


# virtual methods
.method public final declared-synchronized a(LC2/g;Ljava/util/concurrent/Executor;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/e;->e:LH2/k;

    .line 3
    .line 4
    invoke-virtual {v0}, LH2/k;->throwIfRecycled()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/e;->b:Ln2/D;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    new-instance v1, Ln2/C;

    .line 13
    .line 14
    invoke-direct {v1, p1, p2}, Ln2/C;-><init>(LC2/g;Ljava/util/concurrent/Executor;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, v0, Ln2/D;->b:Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/e;->B:Z

    .line 23
    .line 24
    const/4 v1, 0x1

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    invoke-virtual {p0, v1}, Lcom/bumptech/glide/load/engine/e;->c(I)V

    .line 28
    .line 29
    .line 30
    new-instance v0, Lcom/bumptech/glide/load/engine/d;

    .line 31
    .line 32
    invoke-direct {v0, p0, p1}, Lcom/bumptech/glide/load/engine/d;-><init>(Lcom/bumptech/glide/load/engine/e;LC2/g;)V

    .line 33
    .line 34
    .line 35
    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catchall_0
    move-exception p1

    .line 40
    goto :goto_1

    .line 41
    :cond_0
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/e;->D:Z

    .line 42
    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    invoke-virtual {p0, v1}, Lcom/bumptech/glide/load/engine/e;->c(I)V

    .line 46
    .line 47
    .line 48
    new-instance v0, Lcom/bumptech/glide/load/engine/c;

    .line 49
    .line 50
    invoke-direct {v0, p0, p1}, Lcom/bumptech/glide/load/engine/c;-><init>(Lcom/bumptech/glide/load/engine/e;LC2/g;)V

    .line 51
    .line 52
    .line 53
    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    iget-boolean p1, p0, Lcom/bumptech/glide/load/engine/e;->G:Z

    .line 58
    .line 59
    xor-int/2addr p1, v1

    .line 60
    const-string p2, "Cannot add callbacks to a cancelled EngineJob"

    .line 61
    .line 62
    invoke-static {p1, p2}, LG2/r;->checkArgument(ZLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    .line 64
    .line 65
    :goto_0
    monitor-exit p0

    .line 66
    return-void

    .line 67
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    throw p1
.end method

.method public final b()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/e;->e:LH2/k;

    .line 3
    .line 4
    invoke-virtual {v0}, LH2/k;->throwIfRecycled()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/e;->d()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const-string v1, "Not yet complete!"

    .line 12
    .line 13
    invoke-static {v0, v1}, LG2/r;->checkArgument(ZLjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/e;->t:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-ltz v0, :cond_0

    .line 23
    .line 24
    const/4 v1, 0x1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v1, 0x0

    .line 27
    :goto_0
    const-string v2, "Can\'t decrement below 0"

    .line 28
    .line 29
    invoke-static {v1, v2}, LG2/r;->checkArgument(ZLjava/lang/String;)V

    .line 30
    .line 31
    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/e;->E:Ln2/G;

    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/e;->g()V

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :catchall_0
    move-exception v0

    .line 41
    goto :goto_2

    .line 42
    :cond_1
    const/4 v0, 0x0

    .line 43
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    if-eqz v0, :cond_2

    .line 45
    .line 46
    invoke-virtual {v0}, Ln2/G;->b()V

    .line 47
    .line 48
    .line 49
    :cond_2
    return-void

    .line 50
    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    throw v0
.end method

.method public final declared-synchronized c(I)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/e;->d()Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    const-string v1, "Not yet complete!"

    .line 7
    .line 8
    invoke-static {v0, v1}, LG2/r;->checkArgument(ZLjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/e;->t:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndAdd(I)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    iget-object p1, p0, Lcom/bumptech/glide/load/engine/e;->E:Ln2/G;

    .line 20
    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    invoke-virtual {p1}, Ln2/G;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception p1

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    :goto_0
    monitor-exit p0

    .line 30
    return-void

    .line 31
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    throw p1
.end method

.method public final d()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/e;->D:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/e;->B:Z

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/e;->G:Z

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    return v0

    .line 16
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 17
    return v0
.end method

.method public final e()V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/e;->e:LH2/k;

    .line 3
    .line 4
    invoke-virtual {v0}, LH2/k;->throwIfRecycled()V

    .line 5
    .line 6
    .line 7
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/e;->G:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/e;->g()V

    .line 12
    .line 13
    .line 14
    monitor-exit p0

    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception v0

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/e;->b:Ln2/D;

    .line 19
    .line 20
    iget-object v0, v0, Ln2/D;->b:Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_3

    .line 27
    .line 28
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/e;->D:Z

    .line 29
    .line 30
    if-nez v0, :cond_2

    .line 31
    .line 32
    const/4 v0, 0x1

    .line 33
    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/e;->D:Z

    .line 34
    .line 35
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/e;->u:Ln2/E;

    .line 36
    .line 37
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/e;->b:Ln2/D;

    .line 38
    .line 39
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    new-instance v3, Ln2/D;

    .line 43
    .line 44
    new-instance v4, Ljava/util/ArrayList;

    .line 45
    .line 46
    iget-object v2, v2, Ln2/D;->b:Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 49
    .line 50
    .line 51
    invoke-direct {v3, v4}, Ln2/D;-><init>(Ljava/util/ArrayList;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    add-int/2addr v2, v0

    .line 59
    invoke-virtual {p0, v2}, Lcom/bumptech/glide/load/engine/e;->c(I)V

    .line 60
    .line 61
    .line 62
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/e;->n:Lcom/bumptech/glide/load/engine/b;

    .line 64
    .line 65
    const/4 v2, 0x0

    .line 66
    invoke-virtual {v0, p0, v1, v2}, Lcom/bumptech/glide/load/engine/b;->onEngineJobComplete(Lcom/bumptech/glide/load/engine/e;Ll2/m;Ln2/G;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v3}, Ln2/D;->iterator()Ljava/util/Iterator;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    if-eqz v1, :cond_1

    .line 78
    .line 79
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    check-cast v1, Ln2/C;

    .line 84
    .line 85
    iget-object v2, v1, Ln2/C;->b:Ljava/util/concurrent/Executor;

    .line 86
    .line 87
    new-instance v3, Lcom/bumptech/glide/load/engine/c;

    .line 88
    .line 89
    iget-object v1, v1, Ln2/C;->a:LC2/g;

    .line 90
    .line 91
    invoke-direct {v3, p0, v1}, Lcom/bumptech/glide/load/engine/c;-><init>(Lcom/bumptech/glide/load/engine/e;LC2/g;)V

    .line 92
    .line 93
    .line 94
    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 95
    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_1
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/e;->b()V

    .line 99
    .line 100
    .line 101
    return-void

    .line 102
    :cond_2
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 103
    .line 104
    const-string v1, "Already failed once"

    .line 105
    .line 106
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    throw v0

    .line 110
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 111
    .line 112
    const-string v1, "Received an exception without any callbacks to notify"

    .line 113
    .line 114
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    throw v0

    .line 118
    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 119
    throw v0
.end method

.method public final f()V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/e;->e:LH2/k;

    .line 3
    .line 4
    invoke-virtual {v0}, LH2/k;->throwIfRecycled()V

    .line 5
    .line 6
    .line 7
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/e;->G:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/e;->z:Ln2/M;

    .line 12
    .line 13
    invoke-interface {v0}, Ln2/M;->recycle()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/e;->g()V

    .line 17
    .line 18
    .line 19
    monitor-exit p0

    .line 20
    return-void

    .line 21
    :catchall_0
    move-exception v0

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/e;->b:Ln2/D;

    .line 24
    .line 25
    iget-object v0, v0, Ln2/D;->b:Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_3

    .line 32
    .line 33
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/e;->B:Z

    .line 34
    .line 35
    if-nez v0, :cond_2

    .line 36
    .line 37
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/e;->m:Ln2/B;

    .line 38
    .line 39
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/e;->z:Ln2/M;

    .line 40
    .line 41
    iget-boolean v2, p0, Lcom/bumptech/glide/load/engine/e;->v:Z

    .line 42
    .line 43
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/e;->u:Ln2/E;

    .line 44
    .line 45
    iget-object v4, p0, Lcom/bumptech/glide/load/engine/e;->f:Lcom/bumptech/glide/load/engine/b;

    .line 46
    .line 47
    invoke-virtual {v0, v1, v2, v3, v4}, Ln2/B;->build(Ln2/M;ZLl2/m;Ln2/F;)Ln2/G;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/e;->E:Ln2/G;

    .line 52
    .line 53
    const/4 v0, 0x1

    .line 54
    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/e;->B:Z

    .line 55
    .line 56
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/e;->b:Ln2/D;

    .line 57
    .line 58
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    new-instance v2, Ln2/D;

    .line 62
    .line 63
    new-instance v3, Ljava/util/ArrayList;

    .line 64
    .line 65
    iget-object v1, v1, Ln2/D;->b:Ljava/util/ArrayList;

    .line 66
    .line 67
    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 68
    .line 69
    .line 70
    invoke-direct {v2, v3}, Ln2/D;-><init>(Ljava/util/ArrayList;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    add-int/2addr v1, v0

    .line 78
    invoke-virtual {p0, v1}, Lcom/bumptech/glide/load/engine/e;->c(I)V

    .line 79
    .line 80
    .line 81
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/e;->u:Ln2/E;

    .line 82
    .line 83
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/e;->E:Ln2/G;

    .line 84
    .line 85
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/e;->n:Lcom/bumptech/glide/load/engine/b;

    .line 87
    .line 88
    invoke-virtual {v3, p0, v0, v1}, Lcom/bumptech/glide/load/engine/b;->onEngineJobComplete(Lcom/bumptech/glide/load/engine/e;Ll2/m;Ln2/G;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v2}, Ln2/D;->iterator()Ljava/util/Iterator;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    if-eqz v1, :cond_1

    .line 100
    .line 101
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    check-cast v1, Ln2/C;

    .line 106
    .line 107
    iget-object v2, v1, Ln2/C;->b:Ljava/util/concurrent/Executor;

    .line 108
    .line 109
    new-instance v3, Lcom/bumptech/glide/load/engine/d;

    .line 110
    .line 111
    iget-object v1, v1, Ln2/C;->a:LC2/g;

    .line 112
    .line 113
    invoke-direct {v3, p0, v1}, Lcom/bumptech/glide/load/engine/d;-><init>(Lcom/bumptech/glide/load/engine/e;LC2/g;)V

    .line 114
    .line 115
    .line 116
    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 117
    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_1
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/e;->b()V

    .line 121
    .line 122
    .line 123
    return-void

    .line 124
    :cond_2
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 125
    .line 126
    const-string v1, "Already have resource"

    .line 127
    .line 128
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    throw v0

    .line 132
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 133
    .line 134
    const-string v1, "Received a resource without any callbacks to notify"

    .line 135
    .line 136
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    throw v0

    .line 140
    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 141
    throw v0
.end method

.method public final declared-synchronized g()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/e;->u:Ln2/E;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/e;->b:Ln2/D;

    .line 7
    .line 8
    iget-object v0, v0, Ln2/D;->b:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/e;->u:Ln2/E;

    .line 15
    .line 16
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/e;->E:Ln2/G;

    .line 17
    .line 18
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/e;->z:Ln2/M;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    iput-boolean v1, p0, Lcom/bumptech/glide/load/engine/e;->D:Z

    .line 22
    .line 23
    iput-boolean v1, p0, Lcom/bumptech/glide/load/engine/e;->G:Z

    .line 24
    .line 25
    iput-boolean v1, p0, Lcom/bumptech/glide/load/engine/e;->B:Z

    .line 26
    .line 27
    iput-boolean v1, p0, Lcom/bumptech/glide/load/engine/e;->H:Z

    .line 28
    .line 29
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/e;->F:Lcom/bumptech/glide/load/engine/a;

    .line 30
    .line 31
    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/a;->i()V

    .line 32
    .line 33
    .line 34
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/e;->F:Lcom/bumptech/glide/load/engine/a;

    .line 35
    .line 36
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/e;->C:Lcom/bumptech/glide/load/engine/GlideException;

    .line 37
    .line 38
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/e;->A:Lcom/bumptech/glide/load/DataSource;

    .line 39
    .line 40
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/e;->j:LL/e;

    .line 41
    .line 42
    invoke-interface {v0, p0}, LL/e;->release(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    .line 44
    .line 45
    monitor-exit p0

    .line 46
    return-void

    .line 47
    :catchall_0
    move-exception v0

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 50
    .line 51
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 52
    .line 53
    .line 54
    throw v0

    .line 55
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    throw v0
.end method

.method public getVerifier()LH2/k;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/e;->e:LH2/k;

    .line 2
    .line 3
    return-object v0
.end method

.method public final declared-synchronized h(LC2/g;)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/e;->e:LH2/k;

    .line 3
    .line 4
    invoke-virtual {v0}, LH2/k;->throwIfRecycled()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/e;->b:Ln2/D;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    new-instance v1, Ln2/C;

    .line 13
    .line 14
    invoke-static {}, LG2/i;->directExecutor()Ljava/util/concurrent/Executor;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-direct {v1, p1, v2}, Ln2/C;-><init>(LC2/g;Ljava/util/concurrent/Executor;)V

    .line 19
    .line 20
    .line 21
    iget-object p1, v0, Ln2/D;->b:Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Lcom/bumptech/glide/load/engine/e;->b:Ln2/D;

    .line 27
    .line 28
    iget-object p1, p1, Ln2/D;->b:Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-eqz p1, :cond_2

    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/e;->d()Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-eqz p1, :cond_0

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const/4 p1, 0x1

    .line 44
    iput-boolean p1, p0, Lcom/bumptech/glide/load/engine/e;->G:Z

    .line 45
    .line 46
    iget-object p1, p0, Lcom/bumptech/glide/load/engine/e;->F:Lcom/bumptech/glide/load/engine/a;

    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/bumptech/glide/load/engine/a;->cancel()V

    .line 49
    .line 50
    .line 51
    iget-object p1, p0, Lcom/bumptech/glide/load/engine/e;->n:Lcom/bumptech/glide/load/engine/b;

    .line 52
    .line 53
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/e;->u:Ln2/E;

    .line 54
    .line 55
    invoke-virtual {p1, p0, v0}, Lcom/bumptech/glide/load/engine/b;->onEngineJobCancelled(Lcom/bumptech/glide/load/engine/e;Ll2/m;)V

    .line 56
    .line 57
    .line 58
    :goto_0
    iget-boolean p1, p0, Lcom/bumptech/glide/load/engine/e;->B:Z

    .line 59
    .line 60
    if-nez p1, :cond_1

    .line 61
    .line 62
    iget-boolean p1, p0, Lcom/bumptech/glide/load/engine/e;->D:Z

    .line 63
    .line 64
    if-eqz p1, :cond_2

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :catchall_0
    move-exception p1

    .line 68
    goto :goto_2

    .line 69
    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/bumptech/glide/load/engine/e;->t:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 70
    .line 71
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    if-nez p1, :cond_2

    .line 76
    .line 77
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/e;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    .line 79
    .line 80
    :cond_2
    monitor-exit p0

    .line 81
    return-void

    .line 82
    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    throw p1
.end method

.method public onLoadFailed(Lcom/bumptech/glide/load/engine/GlideException;)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/e;->C:Lcom/bumptech/glide/load/engine/GlideException;

    .line 3
    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/e;->e()V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception p1

    .line 10
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    throw p1
.end method

.method public onResourceReady(Ln2/M;Lcom/bumptech/glide/load/DataSource;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln2/M;",
            "Lcom/bumptech/glide/load/DataSource;",
            "Z)V"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/e;->z:Ln2/M;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/e;->A:Lcom/bumptech/glide/load/DataSource;

    .line 5
    .line 6
    iput-boolean p3, p0, Lcom/bumptech/glide/load/engine/e;->H:Z

    .line 7
    .line 8
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/e;->f()V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    throw p1
.end method

.method public reschedule(Lcom/bumptech/glide/load/engine/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/a;",
            ")V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/e;->w:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/e;->r:Lq2/h;

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/e;->x:Z

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/e;->s:Lq2/h;

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/e;->q:Lq2/h;

    .line 16
    .line 17
    :goto_0
    invoke-virtual {v0, p1}, Lq2/h;->execute(Ljava/lang/Runnable;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public declared-synchronized start(Lcom/bumptech/glide/load/engine/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/a;",
            ")V"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/e;->F:Lcom/bumptech/glide/load/engine/a;

    .line 3
    .line 4
    sget-object v0, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->b:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/load/engine/a;->f(Lcom/bumptech/glide/load/engine/DecodeJob$Stage;)Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sget-object v1, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->e:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    .line 11
    .line 12
    if-eq v0, v1, :cond_3

    .line 13
    .line 14
    sget-object v1, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->f:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    .line 15
    .line 16
    if-ne v0, v1, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/e;->w:Z

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/e;->r:Lq2/h;

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_1
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/e;->x:Z

    .line 27
    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/e;->s:Lq2/h;

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_2
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/e;->q:Lq2/h;

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/e;->p:Lq2/h;

    .line 37
    .line 38
    :goto_1
    invoke-virtual {v0, p1}, Lq2/h;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    .line 40
    .line 41
    monitor-exit p0

    .line 42
    return-void

    .line 43
    :catchall_0
    move-exception p1

    .line 44
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    throw p1
.end method
