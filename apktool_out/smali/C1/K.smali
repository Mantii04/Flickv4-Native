.class public final LC1/K;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:LV3/F;

.field public final synthetic e:LC1/N;


# direct methods
.method public constructor <init>(LC1/N;LV3/F;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LC1/K;->e:LC1/N;

    .line 5
    .line 6
    iput-object p2, p0, LC1/K;->b:LV3/F;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    const-string v0, "Starting work for "

    .line 2
    .line 3
    iget-object v1, p0, LC1/K;->e:LC1/N;

    .line 4
    .line 5
    iget-object v2, v1, LC1/N;->z:LM1/g;

    .line 6
    .line 7
    invoke-virtual {v2}, Landroidx/work/impl/utils/futures/b;->isCancelled()Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    :try_start_0
    iget-object v2, p0, LC1/K;->b:LV3/F;

    .line 15
    .line 16
    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    invoke-static {}, LB1/t;->get()LB1/t;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    sget-object v3, LC1/N;->B:Ljava/lang/String;

    .line 24
    .line 25
    new-instance v4, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-object v0, v1, LC1/N;->m:LK1/E;

    .line 31
    .line 32
    iget-object v0, v0, LK1/E;->c:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v2, v3, v0}, LB1/t;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget-object v0, v1, LC1/N;->z:LM1/g;

    .line 45
    .line 46
    iget-object v2, v1, LC1/N;->n:LB1/r;

    .line 47
    .line 48
    invoke-virtual {v2}, LB1/r;->startWork()LV3/F;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {v0, v2}, LM1/g;->setFuture(LV3/F;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :catchall_0
    move-exception v0

    .line 57
    iget-object v1, v1, LC1/N;->z:LM1/g;

    .line 58
    .line 59
    invoke-virtual {v1, v0}, LM1/g;->setException(Ljava/lang/Throwable;)Z

    .line 60
    .line 61
    .line 62
    :goto_0
    return-void
.end method
