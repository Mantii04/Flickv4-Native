.class public final LJ1/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic e:LJ1/d;


# direct methods
.method public constructor <init>(LJ1/d;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LJ1/b;->e:LJ1/d;

    .line 5
    .line 6
    iput-object p2, p0, LJ1/b;->b:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, LJ1/b;->e:LJ1/d;

    .line 2
    .line 3
    iget-object v0, v0, LJ1/d;->b:LC1/G;

    .line 4
    .line 5
    invoke-virtual {v0}, LC1/G;->getProcessor()LC1/r;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, LJ1/b;->b:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, LC1/r;->getRunningWorkSpec(Ljava/lang/String;)LK1/E;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, LK1/E;->hasConstraints()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    iget-object v1, p0, LJ1/b;->e:LJ1/d;

    .line 24
    .line 25
    iget-object v1, v1, LJ1/d;->f:Ljava/lang/Object;

    .line 26
    .line 27
    monitor-enter v1

    .line 28
    :try_start_0
    iget-object v2, p0, LJ1/b;->e:LJ1/d;

    .line 29
    .line 30
    iget-object v2, v2, LJ1/d;->n:Ljava/util/HashMap;

    .line 31
    .line 32
    invoke-static {v0}, LK1/V;->generationalId(LK1/E;)LK1/r;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    iget-object v2, p0, LJ1/b;->e:LJ1/d;

    .line 40
    .line 41
    iget-object v2, v2, LJ1/d;->p:Ljava/util/HashSet;

    .line 42
    .line 43
    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, LJ1/b;->e:LJ1/d;

    .line 47
    .line 48
    iget-object v2, v0, LJ1/d;->q:LG1/e;

    .line 49
    .line 50
    iget-object v0, v0, LJ1/d;->p:Ljava/util/HashSet;

    .line 51
    .line 52
    invoke-interface {v2, v0}, LG1/d;->replace(Ljava/lang/Iterable;)V

    .line 53
    .line 54
    .line 55
    monitor-exit v1

    .line 56
    return-void

    .line 57
    :catchall_0
    move-exception v0

    .line 58
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    throw v0

    .line 60
    :cond_0
    return-void
.end method
