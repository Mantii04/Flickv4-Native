.class public abstract LW5/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LW5/G;

.field public static final b:LW5/G;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, LW5/G;

    .line 2
    .line 3
    const-string v1, "UNDEFINED"

    .line 4
    .line 5
    invoke-direct {v0, v1}, LW5/G;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, LW5/j;->a:LW5/G;

    .line 9
    .line 10
    new-instance v0, LW5/G;

    .line 11
    .line 12
    const-string v1, "REUSABLE_CLAIMED"

    .line 13
    .line 14
    invoke-direct {v0, v1}, LW5/G;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    sput-object v0, LW5/j;->b:LW5/G;

    .line 18
    .line 19
    return-void
.end method

.method public static final synthetic access$getUNDEFINED$p()LW5/G;
    .locals 1

    .line 1
    sget-object v0, LW5/j;->a:LW5/G;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final resumeCancellableWith(Ly5/c;Ljava/lang/Object;LH5/l;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ly5/c;",
            "Ljava/lang/Object;",
            "LH5/l;",
            ")V"
        }
    .end annotation

    .line 1
    instance-of v0, p0, LW5/i;

    .line 2
    .line 3
    if-eqz v0, :cond_8

    .line 4
    .line 5
    check-cast p0, LW5/i;

    .line 6
    .line 7
    invoke-static {p1, p2}, LR5/D;->toState(Ljava/lang/Object;LH5/l;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    iget-object v0, p0, LW5/i;->j:LR5/E;

    .line 12
    .line 13
    iget-object v1, p0, LW5/i;->m:Ly5/c;

    .line 14
    .line 15
    invoke-virtual {p0}, LW5/i;->getContext()Ly5/k;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v0, v2}, LR5/E;->isDispatchNeeded(Ly5/k;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const/4 v2, 0x1

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    iput-object p2, p0, LW5/i;->n:Ljava/lang/Object;

    .line 27
    .line 28
    iput v2, p0, LR5/S;->f:I

    .line 29
    .line 30
    iget-object p1, p0, LW5/i;->j:LR5/E;

    .line 31
    .line 32
    invoke-virtual {p0}, LW5/i;->getContext()Ly5/k;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    invoke-virtual {p1, p2, p0}, LR5/E;->dispatch(Ly5/k;Ljava/lang/Runnable;)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_0
    sget-object v0, LR5/O0;->a:LR5/O0;

    .line 41
    .line 42
    invoke-virtual {v0}, LR5/O0;->getEventLoop$kotlinx_coroutines_core()LR5/Y;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {v0}, LR5/Y;->isUnconfinedLoopActive()Z

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    if-eqz v3, :cond_1

    .line 51
    .line 52
    iput-object p2, p0, LW5/i;->n:Ljava/lang/Object;

    .line 53
    .line 54
    iput v2, p0, LR5/S;->f:I

    .line 55
    .line 56
    invoke-virtual {v0, p0}, LR5/Y;->dispatchUnconfined(LR5/S;)V

    .line 57
    .line 58
    .line 59
    goto/16 :goto_4

    .line 60
    .line 61
    :cond_1
    invoke-virtual {v0, v2}, LR5/Y;->incrementUseCount(Z)V

    .line 62
    .line 63
    .line 64
    const/4 v3, 0x0

    .line 65
    :try_start_0
    invoke-virtual {p0}, LW5/i;->getContext()Ly5/k;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    sget-object v5, LR5/F;->e:LR5/F;

    .line 70
    .line 71
    invoke-interface {v4, v5}, Ly5/k;->get(Ly5/j;)Ly5/i;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    check-cast v4, LR5/q0;

    .line 76
    .line 77
    if-eqz v4, :cond_2

    .line 78
    .line 79
    invoke-interface {v4}, LR5/q0;->isActive()Z

    .line 80
    .line 81
    .line 82
    move-result v5

    .line 83
    if-nez v5, :cond_2

    .line 84
    .line 85
    check-cast v4, LR5/A0;

    .line 86
    .line 87
    invoke-virtual {v4}, LR5/A0;->getCancellationException()Ljava/util/concurrent/CancellationException;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-virtual {p0, p2, p1}, LW5/i;->cancelCompletedResult$kotlinx_coroutines_core(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 92
    .line 93
    .line 94
    sget p2, Lkotlin/Result;->b:I

    .line 95
    .line 96
    invoke-static {p1}, Lkotlin/b;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    invoke-interface {p0, p1}, Ly5/c;->resumeWith(Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    goto :goto_1

    .line 108
    :catchall_0
    move-exception p1

    .line 109
    goto :goto_3

    .line 110
    :cond_2
    iget-object p2, p0, LW5/i;->p:Ljava/lang/Object;

    .line 111
    .line 112
    invoke-interface {v1}, Ly5/c;->getContext()Ly5/k;

    .line 113
    .line 114
    .line 115
    move-result-object v4

    .line 116
    invoke-static {v4, p2}, Lkotlinx/coroutines/internal/a;->updateThreadContext(Ly5/k;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object p2

    .line 120
    sget-object v5, Lkotlinx/coroutines/internal/a;->a:LW5/G;

    .line 121
    .line 122
    if-eq p2, v5, :cond_3

    .line 123
    .line 124
    invoke-static {v1, v4, p2}, Lkotlinx/coroutines/a;->updateUndispatchedCompletion(Ly5/c;Ly5/k;Ljava/lang/Object;)LR5/Q0;

    .line 125
    .line 126
    .line 127
    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    goto :goto_0

    .line 129
    :cond_3
    move-object v5, v3

    .line 130
    :goto_0
    :try_start_1
    invoke-interface {v1, p1}, Ly5/c;->resumeWith(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 131
    .line 132
    .line 133
    if-eqz v5, :cond_4

    .line 134
    .line 135
    :try_start_2
    invoke-virtual {v5}, LR5/Q0;->clearThreadContext()Z

    .line 136
    .line 137
    .line 138
    move-result p1

    .line 139
    if-eqz p1, :cond_5

    .line 140
    .line 141
    :cond_4
    invoke-static {v4, p2}, Lkotlinx/coroutines/internal/a;->restoreThreadContext(Ly5/k;Ljava/lang/Object;)V

    .line 142
    .line 143
    .line 144
    :cond_5
    :goto_1
    invoke-virtual {v0}, LR5/Y;->processUnconfinedEvent()Z

    .line 145
    .line 146
    .line 147
    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 148
    if-nez p1, :cond_5

    .line 149
    .line 150
    :goto_2
    invoke-virtual {v0, v2}, LR5/Y;->decrementUseCount(Z)V

    .line 151
    .line 152
    .line 153
    goto :goto_4

    .line 154
    :catchall_1
    move-exception p1

    .line 155
    if-eqz v5, :cond_6

    .line 156
    .line 157
    :try_start_3
    invoke-virtual {v5}, LR5/Q0;->clearThreadContext()Z

    .line 158
    .line 159
    .line 160
    move-result v1

    .line 161
    if-eqz v1, :cond_7

    .line 162
    .line 163
    :cond_6
    invoke-static {v4, p2}, Lkotlinx/coroutines/internal/a;->restoreThreadContext(Ly5/k;Ljava/lang/Object;)V

    .line 164
    .line 165
    .line 166
    :cond_7
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 167
    :goto_3
    :try_start_4
    invoke-virtual {p0, p1, v3}, LR5/S;->handleFatalException(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 168
    .line 169
    .line 170
    goto :goto_2

    .line 171
    :goto_4
    return-void

    .line 172
    :catchall_2
    move-exception p0

    .line 173
    invoke-virtual {v0, v2}, LR5/Y;->decrementUseCount(Z)V

    .line 174
    .line 175
    .line 176
    throw p0

    .line 177
    :cond_8
    invoke-interface {p0, p1}, Ly5/c;->resumeWith(Ljava/lang/Object;)V

    .line 178
    .line 179
    .line 180
    return-void
.end method

.method public static synthetic resumeCancellableWith$default(Ly5/c;Ljava/lang/Object;LH5/l;ILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    :cond_0
    invoke-static {p0, p1, p2}, LW5/j;->resumeCancellableWith(Ly5/c;Ljava/lang/Object;LH5/l;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
