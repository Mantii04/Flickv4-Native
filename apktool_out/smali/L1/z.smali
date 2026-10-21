.class public final LL1/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:LM1/g;

.field public final synthetic e:LL1/A;


# direct methods
.method public constructor <init>(LL1/A;LM1/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LL1/z;->e:LL1/A;

    .line 5
    .line 6
    iput-object p2, p0, LL1/z;->b:LM1/g;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    const-string v0, "Updating notification for "

    .line 2
    .line 3
    const-string v1, "Worker was marked important ("

    .line 4
    .line 5
    iget-object v2, p0, LL1/z;->e:LL1/A;

    .line 6
    .line 7
    iget-object v3, v2, LL1/A;->b:LM1/g;

    .line 8
    .line 9
    invoke-virtual {v3}, Landroidx/work/impl/utils/futures/b;->isCancelled()Z

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    if-eqz v3, :cond_0

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_0
    :try_start_0
    iget-object v3, p0, LL1/z;->b:LM1/g;

    .line 17
    .line 18
    invoke-virtual {v3}, Landroidx/work/impl/utils/futures/b;->get()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    check-cast v3, LB1/i;

    .line 23
    .line 24
    if-eqz v3, :cond_1

    .line 25
    .line 26
    invoke-static {}, LB1/t;->get()LB1/t;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    sget-object v4, LL1/A;->p:Ljava/lang/String;

    .line 31
    .line 32
    new-instance v5, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget-object v0, v2, LL1/A;->f:LK1/E;

    .line 38
    .line 39
    iget-object v0, v0, LK1/E;->c:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {v1, v4, v0}, LB1/t;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget-object v0, v2, LL1/A;->b:LM1/g;

    .line 52
    .line 53
    iget-object v1, v2, LL1/A;->m:LB1/j;

    .line 54
    .line 55
    iget-object v4, v2, LL1/A;->e:Landroid/content/Context;

    .line 56
    .line 57
    iget-object v5, v2, LL1/A;->j:LB1/r;

    .line 58
    .line 59
    invoke-virtual {v5}, LB1/r;->getId()Ljava/util/UUID;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    check-cast v1, LL1/C;

    .line 64
    .line 65
    invoke-virtual {v1, v4, v5, v3}, LL1/C;->setForegroundAsync(Landroid/content/Context;Ljava/util/UUID;LB1/i;)LV3/F;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {v0, v1}, LM1/g;->setFuture(LV3/F;)Z

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :catchall_0
    move-exception v0

    .line 74
    goto :goto_0

    .line 75
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    iget-object v1, v2, LL1/A;->f:LK1/E;

    .line 81
    .line 82
    iget-object v1, v1, LK1/E;->c:Ljava/lang/String;

    .line 83
    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    const-string v1, ") but did not provide ForegroundInfo"

    .line 88
    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 97
    .line 98
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    :goto_0
    iget-object v1, v2, LL1/A;->b:LM1/g;

    .line 103
    .line 104
    invoke-virtual {v1, v0}, LM1/g;->setException(Ljava/lang/Throwable;)Z

    .line 105
    .line 106
    .line 107
    :goto_1
    return-void
.end method
