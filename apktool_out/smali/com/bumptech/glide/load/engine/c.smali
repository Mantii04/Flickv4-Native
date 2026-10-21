.class public final Lcom/bumptech/glide/load/engine/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final b:LC2/g;

.field public final synthetic e:Lcom/bumptech/glide/load/engine/e;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/engine/e;LC2/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/c;->e:Lcom/bumptech/glide/load/engine/e;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/c;->b:LC2/g;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/c;->b:LC2/g;

    .line 2
    .line 3
    check-cast v0, Lcom/bumptech/glide/request/a;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bumptech/glide/request/a;->getLock()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    monitor-enter v0

    .line 10
    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/c;->e:Lcom/bumptech/glide/load/engine/e;

    .line 11
    .line 12
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 13
    :try_start_1
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/c;->e:Lcom/bumptech/glide/load/engine/e;

    .line 14
    .line 15
    iget-object v2, v2, Lcom/bumptech/glide/load/engine/e;->b:Ln2/D;

    .line 16
    .line 17
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/c;->b:LC2/g;

    .line 18
    .line 19
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    new-instance v4, Ln2/C;

    .line 23
    .line 24
    invoke-static {}, LG2/i;->directExecutor()Ljava/util/concurrent/Executor;

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    invoke-direct {v4, v3, v5}, Ln2/C;-><init>(LC2/g;Ljava/util/concurrent/Executor;)V

    .line 29
    .line 30
    .line 31
    iget-object v2, v2, Ln2/D;->b:Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_0

    .line 38
    .line 39
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/c;->e:Lcom/bumptech/glide/load/engine/e;

    .line 40
    .line 41
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/c;->b:LC2/g;

    .line 42
    .line 43
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 44
    .line 45
    .line 46
    :try_start_2
    iget-object v2, v2, Lcom/bumptech/glide/load/engine/e;->C:Lcom/bumptech/glide/load/engine/GlideException;

    .line 47
    .line 48
    check-cast v3, Lcom/bumptech/glide/request/a;

    .line 49
    .line 50
    invoke-virtual {v3, v2}, Lcom/bumptech/glide/request/a;->onLoadFailed(Lcom/bumptech/glide/load/engine/GlideException;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :catchall_0
    move-exception v2

    .line 55
    :try_start_3
    new-instance v3, Lcom/bumptech/glide/load/engine/CallbackException;

    .line 56
    .line 57
    invoke-direct {v3, v2}, Lcom/bumptech/glide/load/engine/CallbackException;-><init>(Ljava/lang/Throwable;)V

    .line 58
    .line 59
    .line 60
    throw v3

    .line 61
    :catchall_1
    move-exception v2

    .line 62
    goto :goto_1

    .line 63
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/c;->e:Lcom/bumptech/glide/load/engine/e;

    .line 64
    .line 65
    invoke-virtual {v2}, Lcom/bumptech/glide/load/engine/e;->b()V

    .line 66
    .line 67
    .line 68
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 69
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 70
    return-void

    .line 71
    :catchall_2
    move-exception v1

    .line 72
    goto :goto_2

    .line 73
    :goto_1
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 74
    :try_start_6
    throw v2

    .line 75
    :goto_2
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 76
    throw v1
.end method
