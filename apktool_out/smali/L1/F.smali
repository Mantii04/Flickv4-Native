.class public final LL1/F;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final b:LL1/G;

.field public final e:LK1/r;


# direct methods
.method public constructor <init>(LL1/G;LK1/r;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LL1/F;->b:LL1/G;

    .line 5
    .line 6
    iput-object p2, p0, LL1/F;->e:LK1/r;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    const-string v0, "Timer with "

    .line 2
    .line 3
    iget-object v1, p0, LL1/F;->b:LL1/G;

    .line 4
    .line 5
    iget-object v1, v1, LL1/G;->d:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    iget-object v2, p0, LL1/F;->b:LL1/G;

    .line 9
    .line 10
    iget-object v2, v2, LL1/G;->b:Ljava/util/HashMap;

    .line 11
    .line 12
    iget-object v3, p0, LL1/F;->e:LK1/r;

    .line 13
    .line 14
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    check-cast v2, LL1/F;

    .line 19
    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    iget-object v0, p0, LL1/F;->b:LL1/G;

    .line 23
    .line 24
    iget-object v0, v0, LL1/G;->c:Ljava/util/HashMap;

    .line 25
    .line 26
    iget-object v2, p0, LL1/F;->e:LK1/r;

    .line 27
    .line 28
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, LL1/E;

    .line 33
    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    iget-object v2, p0, LL1/F;->e:LK1/r;

    .line 37
    .line 38
    check-cast v0, LE1/h;

    .line 39
    .line 40
    invoke-virtual {v0, v2}, LE1/h;->onTimeLimitExceeded(LK1/r;)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catchall_0
    move-exception v0

    .line 45
    goto :goto_1

    .line 46
    :cond_0
    invoke-static {}, LB1/t;->get()LB1/t;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    const-string v3, "WrkTimerRunnable"

    .line 51
    .line 52
    iget-object v4, p0, LL1/F;->e:LK1/r;

    .line 53
    .line 54
    new-instance v5, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string v0, " is already marked as complete."

    .line 63
    .line 64
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {v2, v3, v0}, LB1/t;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    :cond_1
    :goto_0
    monitor-exit v1

    .line 75
    return-void

    .line 76
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    throw v0
.end method
