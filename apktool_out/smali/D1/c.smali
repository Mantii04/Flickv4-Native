.class public final LD1/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LC1/t;
.implements LG1/c;
.implements LC1/e;


# static fields
.field public static final s:Ljava/lang/String;


# instance fields
.field public final b:Landroid/content/Context;

.field public final e:LC1/G;

.field public final f:LG1/e;

.field public final j:Ljava/util/HashSet;

.field public final m:LD1/b;

.field public n:Z

.field public final p:Ljava/lang/Object;

.field public final q:LC1/w;

.field public r:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "GreedyScheduler"

    .line 2
    .line 3
    invoke-static {v0}, LB1/t;->tagWithPrefix(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, LD1/c;->s:Ljava/lang/String;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;LB1/c;LI1/p;LC1/G;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashSet;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, LD1/c;->j:Ljava/util/HashSet;

    .line 10
    .line 11
    new-instance v0, LC1/w;

    .line 12
    .line 13
    invoke-direct {v0}, LC1/w;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, LD1/c;->q:LC1/w;

    .line 17
    .line 18
    iput-object p1, p0, LD1/c;->b:Landroid/content/Context;

    .line 19
    .line 20
    iput-object p4, p0, LD1/c;->e:LC1/G;

    .line 21
    .line 22
    new-instance p1, LG1/e;

    .line 23
    .line 24
    invoke-direct {p1, p3, p0}, LG1/e;-><init>(LI1/p;LG1/c;)V

    .line 25
    .line 26
    .line 27
    iput-object p1, p0, LD1/c;->f:LG1/e;

    .line 28
    .line 29
    new-instance p1, LD1/b;

    .line 30
    .line 31
    invoke-virtual {p2}, LB1/c;->getRunnableScheduler()LB1/G;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    invoke-direct {p1, p0, p2}, LD1/b;-><init>(LD1/c;LB1/G;)V

    .line 36
    .line 37
    .line 38
    iput-object p1, p0, LD1/c;->m:LD1/b;

    .line 39
    .line 40
    new-instance p1, Ljava/lang/Object;

    .line 41
    .line 42
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 43
    .line 44
    .line 45
    iput-object p1, p0, LD1/c;->p:Ljava/lang/Object;

    .line 46
    .line 47
    return-void
.end method


# virtual methods
.method public cancel(Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p0, LD1/c;->r:Ljava/lang/Boolean;

    .line 2
    .line 3
    iget-object v1, p0, LD1/c;->e:LC1/G;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v1}, LC1/G;->getConfiguration()LB1/c;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v2, p0, LD1/c;->b:Landroid/content/Context;

    .line 12
    .line 13
    invoke-static {v2, v0}, LL1/r;->isDefaultProcess(Landroid/content/Context;LB1/c;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iput-object v0, p0, LD1/c;->r:Ljava/lang/Boolean;

    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, LD1/c;->r:Ljava/lang/Boolean;

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    sget-object v2, LD1/c;->s:Ljava/lang/String;

    .line 30
    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    invoke-static {}, LB1/t;->get()LB1/t;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    const-string v0, "Ignoring schedule request in non-main process"

    .line 38
    .line 39
    invoke-virtual {p1, v2, v0}, LB1/t;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_1
    iget-boolean v0, p0, LD1/c;->n:Z

    .line 44
    .line 45
    if-nez v0, :cond_2

    .line 46
    .line 47
    invoke-virtual {v1}, LC1/G;->getProcessor()LC1/r;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v0, p0}, LC1/r;->addExecutionListener(LC1/e;)V

    .line 52
    .line 53
    .line 54
    const/4 v0, 0x1

    .line 55
    iput-boolean v0, p0, LD1/c;->n:Z

    .line 56
    .line 57
    :cond_2
    invoke-static {}, LB1/t;->get()LB1/t;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    new-instance v3, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    const-string v4, "Cancelling work ID "

    .line 64
    .line 65
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    invoke-virtual {v0, v2, v3}, LB1/t;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    iget-object v0, p0, LD1/c;->m:LD1/b;

    .line 79
    .line 80
    if-eqz v0, :cond_3

    .line 81
    .line 82
    invoke-virtual {v0, p1}, LD1/b;->unschedule(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    :cond_3
    iget-object v0, p0, LD1/c;->q:LC1/w;

    .line 86
    .line 87
    invoke-virtual {v0, p1}, LC1/w;->remove(Ljava/lang/String;)Ljava/util/List;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    if-eqz v0, :cond_4

    .line 100
    .line 101
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    check-cast v0, LC1/v;

    .line 106
    .line 107
    invoke-virtual {v1, v0}, LC1/G;->stopWork(LC1/v;)V

    .line 108
    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_4
    return-void
.end method

.method public hasLimitedSchedulingSlots()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public onAllConstraintsMet(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LK1/E;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, LK1/E;

    .line 16
    .line 17
    invoke-static {v0}, LK1/V;->generationalId(LK1/E;)LK1/r;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-object v1, p0, LD1/c;->q:LC1/w;

    .line 22
    .line 23
    invoke-virtual {v1, v0}, LC1/w;->contains(LK1/r;)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-nez v2, :cond_0

    .line 28
    .line 29
    invoke-static {}, LB1/t;->get()LB1/t;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    new-instance v3, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string v4, "Constraints met: Scheduling work ID "

    .line 36
    .line 37
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    sget-object v4, LD1/c;->s:Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {v2, v4, v3}, LB1/t;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    iget-object v2, p0, LD1/c;->e:LC1/G;

    .line 53
    .line 54
    invoke-virtual {v1, v0}, LC1/w;->tokenFor(LK1/r;)LC1/v;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {v2, v0}, LC1/G;->startWork(LC1/v;)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    return-void
.end method

.method public onAllConstraintsNotMet(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LK1/E;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, LK1/E;

    .line 16
    .line 17
    invoke-static {v0}, LK1/V;->generationalId(LK1/E;)LK1/r;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {}, LB1/t;->get()LB1/t;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    new-instance v2, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string v3, "Constraints not met: Cancelling work ID "

    .line 28
    .line 29
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    sget-object v3, LD1/c;->s:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {v1, v3, v2}, LB1/t;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget-object v1, p0, LD1/c;->q:LC1/w;

    .line 45
    .line 46
    invoke-virtual {v1, v0}, LC1/w;->remove(LK1/r;)LC1/v;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    if-eqz v0, :cond_0

    .line 51
    .line 52
    iget-object v1, p0, LD1/c;->e:LC1/G;

    .line 53
    .line 54
    invoke-virtual {v1, v0}, LC1/G;->stopWork(LC1/v;)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    return-void
.end method

.method public onExecuted(LK1/r;Z)V
    .locals 5

    .line 1
    iget-object p2, p0, LD1/c;->q:LC1/w;

    .line 2
    .line 3
    invoke-virtual {p2, p1}, LC1/w;->remove(LK1/r;)LC1/v;

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, LD1/c;->p:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter p2

    .line 9
    :try_start_0
    iget-object v0, p0, LD1/c;->j:Ljava/util/HashSet;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, LK1/E;

    .line 26
    .line 27
    invoke-static {v1}, LK1/V;->generationalId(LK1/E;)LK1/r;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v2, p1}, LK1/r;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_0

    .line 36
    .line 37
    invoke-static {}, LB1/t;->get()LB1/t;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    sget-object v2, LD1/c;->s:Ljava/lang/String;

    .line 42
    .line 43
    new-instance v3, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    .line 48
    const-string v4, "Stopping tracking for "

    .line 49
    .line 50
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {v0, v2, p1}, LB1/t;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    iget-object p1, p0, LD1/c;->j:Ljava/util/HashSet;

    .line 64
    .line 65
    invoke-virtual {p1, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    iget-object p1, p0, LD1/c;->f:LG1/e;

    .line 69
    .line 70
    iget-object v0, p0, LD1/c;->j:Ljava/util/HashSet;

    .line 71
    .line 72
    invoke-interface {p1, v0}, LG1/d;->replace(Ljava/lang/Iterable;)V

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :catchall_0
    move-exception p1

    .line 77
    goto :goto_1

    .line 78
    :cond_1
    :goto_0
    monitor-exit p2

    .line 79
    return-void

    .line 80
    :goto_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    throw p1
.end method

.method public varargs schedule([LK1/E;)V
    .locals 11

    .line 1
    iget-object v0, p0, LD1/c;->r:Ljava/lang/Boolean;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, LD1/c;->e:LC1/G;

    .line 6
    .line 7
    invoke-virtual {v0}, LC1/G;->getConfiguration()LB1/c;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, LD1/c;->b:Landroid/content/Context;

    .line 12
    .line 13
    invoke-static {v1, v0}, LL1/r;->isDefaultProcess(Landroid/content/Context;LB1/c;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iput-object v0, p0, LD1/c;->r:Ljava/lang/Boolean;

    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, LD1/c;->r:Ljava/lang/Boolean;

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_1

    .line 30
    .line 31
    invoke-static {}, LB1/t;->get()LB1/t;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    sget-object v0, LD1/c;->s:Ljava/lang/String;

    .line 36
    .line 37
    const-string v1, "Ignoring schedule request in a secondary process"

    .line 38
    .line 39
    invoke-virtual {p1, v0, v1}, LB1/t;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_1
    iget-boolean v0, p0, LD1/c;->n:Z

    .line 44
    .line 45
    if-nez v0, :cond_2

    .line 46
    .line 47
    iget-object v0, p0, LD1/c;->e:LC1/G;

    .line 48
    .line 49
    invoke-virtual {v0}, LC1/G;->getProcessor()LC1/r;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v0, p0}, LC1/r;->addExecutionListener(LC1/e;)V

    .line 54
    .line 55
    .line 56
    const/4 v0, 0x1

    .line 57
    iput-boolean v0, p0, LD1/c;->n:Z

    .line 58
    .line 59
    :cond_2
    new-instance v0, Ljava/util/HashSet;

    .line 60
    .line 61
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 62
    .line 63
    .line 64
    new-instance v1, Ljava/util/HashSet;

    .line 65
    .line 66
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 67
    .line 68
    .line 69
    array-length v2, p1

    .line 70
    const/4 v3, 0x0

    .line 71
    :goto_0
    if-ge v3, v2, :cond_9

    .line 72
    .line 73
    aget-object v4, p1, v3

    .line 74
    .line 75
    invoke-static {v4}, LK1/V;->generationalId(LK1/E;)LK1/r;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    iget-object v6, p0, LD1/c;->q:LC1/w;

    .line 80
    .line 81
    invoke-virtual {v6, v5}, LC1/w;->contains(LK1/r;)Z

    .line 82
    .line 83
    .line 84
    move-result v5

    .line 85
    if-eqz v5, :cond_3

    .line 86
    .line 87
    goto/16 :goto_1

    .line 88
    .line 89
    :cond_3
    invoke-virtual {v4}, LK1/E;->calculateNextRunTime()J

    .line 90
    .line 91
    .line 92
    move-result-wide v5

    .line 93
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 94
    .line 95
    .line 96
    move-result-wide v7

    .line 97
    iget-object v9, v4, LK1/E;->b:Landroidx/work/WorkInfo$State;

    .line 98
    .line 99
    sget-object v10, Landroidx/work/WorkInfo$State;->b:Landroidx/work/WorkInfo$State;

    .line 100
    .line 101
    if-ne v9, v10, :cond_8

    .line 102
    .line 103
    cmp-long v5, v7, v5

    .line 104
    .line 105
    if-gez v5, :cond_4

    .line 106
    .line 107
    iget-object v5, p0, LD1/c;->m:LD1/b;

    .line 108
    .line 109
    if-eqz v5, :cond_8

    .line 110
    .line 111
    invoke-virtual {v5, v4}, LD1/b;->schedule(LK1/E;)V

    .line 112
    .line 113
    .line 114
    goto/16 :goto_1

    .line 115
    .line 116
    :cond_4
    invoke-virtual {v4}, LK1/E;->hasConstraints()Z

    .line 117
    .line 118
    .line 119
    move-result v5

    .line 120
    if-eqz v5, :cond_7

    .line 121
    .line 122
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 123
    .line 124
    iget-object v6, v4, LK1/E;->j:LB1/f;

    .line 125
    .line 126
    invoke-virtual {v6}, LB1/f;->requiresDeviceIdle()Z

    .line 127
    .line 128
    .line 129
    move-result v6

    .line 130
    if-eqz v6, :cond_5

    .line 131
    .line 132
    invoke-static {}, LB1/t;->get()LB1/t;

    .line 133
    .line 134
    .line 135
    move-result-object v5

    .line 136
    sget-object v6, LD1/c;->s:Ljava/lang/String;

    .line 137
    .line 138
    new-instance v7, Ljava/lang/StringBuilder;

    .line 139
    .line 140
    const-string v8, "Ignoring "

    .line 141
    .line 142
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    const-string v4, ". Requires device idle."

    .line 149
    .line 150
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v4

    .line 157
    invoke-virtual {v5, v6, v4}, LB1/t;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    goto :goto_1

    .line 161
    :cond_5
    const/16 v6, 0x18

    .line 162
    .line 163
    if-lt v5, v6, :cond_6

    .line 164
    .line 165
    iget-object v5, v4, LK1/E;->j:LB1/f;

    .line 166
    .line 167
    invoke-virtual {v5}, LB1/f;->hasContentUriTriggers()Z

    .line 168
    .line 169
    .line 170
    move-result v5

    .line 171
    if-eqz v5, :cond_6

    .line 172
    .line 173
    invoke-static {}, LB1/t;->get()LB1/t;

    .line 174
    .line 175
    .line 176
    move-result-object v5

    .line 177
    sget-object v6, LD1/c;->s:Ljava/lang/String;

    .line 178
    .line 179
    new-instance v7, Ljava/lang/StringBuilder;

    .line 180
    .line 181
    const-string v8, "Ignoring "

    .line 182
    .line 183
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    const-string v4, ". Requires ContentUri triggers."

    .line 190
    .line 191
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v4

    .line 198
    invoke-virtual {v5, v6, v4}, LB1/t;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    goto :goto_1

    .line 202
    :cond_6
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 203
    .line 204
    .line 205
    iget-object v4, v4, LK1/E;->a:Ljava/lang/String;

    .line 206
    .line 207
    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 208
    .line 209
    .line 210
    goto :goto_1

    .line 211
    :cond_7
    iget-object v5, p0, LD1/c;->q:LC1/w;

    .line 212
    .line 213
    invoke-static {v4}, LK1/V;->generationalId(LK1/E;)LK1/r;

    .line 214
    .line 215
    .line 216
    move-result-object v6

    .line 217
    invoke-virtual {v5, v6}, LC1/w;->contains(LK1/r;)Z

    .line 218
    .line 219
    .line 220
    move-result v5

    .line 221
    if-nez v5, :cond_8

    .line 222
    .line 223
    invoke-static {}, LB1/t;->get()LB1/t;

    .line 224
    .line 225
    .line 226
    move-result-object v5

    .line 227
    sget-object v6, LD1/c;->s:Ljava/lang/String;

    .line 228
    .line 229
    new-instance v7, Ljava/lang/StringBuilder;

    .line 230
    .line 231
    const-string v8, "Starting work for "

    .line 232
    .line 233
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    iget-object v8, v4, LK1/E;->a:Ljava/lang/String;

    .line 237
    .line 238
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v7

    .line 245
    invoke-virtual {v5, v6, v7}, LB1/t;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    iget-object v5, p0, LD1/c;->e:LC1/G;

    .line 249
    .line 250
    iget-object v6, p0, LD1/c;->q:LC1/w;

    .line 251
    .line 252
    invoke-virtual {v6, v4}, LC1/w;->tokenFor(LK1/E;)LC1/v;

    .line 253
    .line 254
    .line 255
    move-result-object v4

    .line 256
    invoke-virtual {v5, v4}, LC1/G;->startWork(LC1/v;)V

    .line 257
    .line 258
    .line 259
    :cond_8
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 260
    .line 261
    goto/16 :goto_0

    .line 262
    .line 263
    :cond_9
    iget-object p1, p0, LD1/c;->p:Ljava/lang/Object;

    .line 264
    .line 265
    monitor-enter p1

    .line 266
    :try_start_0
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    .line 267
    .line 268
    .line 269
    move-result v2

    .line 270
    if-nez v2, :cond_a

    .line 271
    .line 272
    const-string v2, ","

    .line 273
    .line 274
    invoke-static {v2, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v1

    .line 278
    invoke-static {}, LB1/t;->get()LB1/t;

    .line 279
    .line 280
    .line 281
    move-result-object v2

    .line 282
    sget-object v3, LD1/c;->s:Ljava/lang/String;

    .line 283
    .line 284
    new-instance v4, Ljava/lang/StringBuilder;

    .line 285
    .line 286
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 287
    .line 288
    .line 289
    const-string v5, "Starting tracking for "

    .line 290
    .line 291
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    .line 293
    .line 294
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    .line 296
    .line 297
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v1

    .line 301
    invoke-virtual {v2, v3, v1}, LB1/t;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    .line 303
    .line 304
    iget-object v1, p0, LD1/c;->j:Ljava/util/HashSet;

    .line 305
    .line 306
    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 307
    .line 308
    .line 309
    iget-object v0, p0, LD1/c;->f:LG1/e;

    .line 310
    .line 311
    iget-object v1, p0, LD1/c;->j:Ljava/util/HashSet;

    .line 312
    .line 313
    invoke-interface {v0, v1}, LG1/d;->replace(Ljava/lang/Iterable;)V

    .line 314
    .line 315
    .line 316
    goto :goto_2

    .line 317
    :catchall_0
    move-exception v0

    .line 318
    goto :goto_3

    .line 319
    :cond_a
    :goto_2
    monitor-exit p1

    .line 320
    return-void

    .line 321
    :goto_3
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 322
    throw v0
.end method
