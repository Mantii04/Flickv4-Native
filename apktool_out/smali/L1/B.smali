.class public final LL1/B;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:LM1/g;

.field public final synthetic e:Ljava/util/UUID;

.field public final synthetic f:LB1/i;

.field public final synthetic j:Landroid/content/Context;

.field public final synthetic m:LL1/C;


# direct methods
.method public constructor <init>(LL1/C;LM1/g;Ljava/util/UUID;LB1/i;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LL1/B;->m:LL1/C;

    .line 5
    .line 6
    iput-object p2, p0, LL1/B;->b:LM1/g;

    .line 7
    .line 8
    iput-object p3, p0, LL1/B;->e:Ljava/util/UUID;

    .line 9
    .line 10
    iput-object p4, p0, LL1/B;->f:LB1/i;

    .line 11
    .line 12
    iput-object p5, p0, LL1/B;->j:Landroid/content/Context;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    iget-object v0, p0, LL1/B;->j:Landroid/content/Context;

    .line 2
    .line 3
    iget-object v1, p0, LL1/B;->f:LB1/i;

    .line 4
    .line 5
    iget-object v2, p0, LL1/B;->m:LL1/C;

    .line 6
    .line 7
    iget-object v3, p0, LL1/B;->b:LM1/g;

    .line 8
    .line 9
    :try_start_0
    invoke-virtual {v3}, Landroidx/work/impl/utils/futures/b;->isCancelled()Z

    .line 10
    .line 11
    .line 12
    move-result v4

    .line 13
    if-nez v4, :cond_1

    .line 14
    .line 15
    iget-object v4, p0, LL1/B;->e:Ljava/util/UUID;

    .line 16
    .line 17
    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    iget-object v5, v2, LL1/C;->c:LK1/F;

    .line 22
    .line 23
    check-cast v5, LK1/U;

    .line 24
    .line 25
    invoke-virtual {v5, v4}, LK1/U;->getWorkSpec(Ljava/lang/String;)LK1/E;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    if-eqz v5, :cond_0

    .line 30
    .line 31
    iget-object v6, v5, LK1/E;->b:Landroidx/work/WorkInfo$State;

    .line 32
    .line 33
    invoke-virtual {v6}, Landroidx/work/WorkInfo$State;->isFinished()Z

    .line 34
    .line 35
    .line 36
    move-result v6

    .line 37
    if-nez v6, :cond_0

    .line 38
    .line 39
    iget-object v2, v2, LL1/C;->b:LJ1/a;

    .line 40
    .line 41
    check-cast v2, LC1/r;

    .line 42
    .line 43
    invoke-virtual {v2, v4, v1}, LC1/r;->startForeground(Ljava/lang/String;LB1/i;)V

    .line 44
    .line 45
    .line 46
    invoke-static {v5}, LK1/V;->generationalId(LK1/E;)LK1/r;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-static {v0, v2, v1}, LJ1/d;->createNotifyIntent(Landroid/content/Context;LK1/r;LB1/i;)Landroid/content/Intent;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :catchall_0
    move-exception v0

    .line 59
    goto :goto_1

    .line 60
    :cond_0
    const-string v0, "Calls to setForegroundAsync() must complete before a ListenableWorker signals completion of work by returning an instance of Result."

    .line 61
    .line 62
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 63
    .line 64
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    throw v1

    .line 68
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 69
    invoke-virtual {v3, v0}, LM1/g;->set(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :goto_1
    invoke-virtual {v3, v0}, LM1/g;->setException(Ljava/lang/Throwable;)Z

    .line 74
    .line 75
    .line 76
    return-void
.end method
