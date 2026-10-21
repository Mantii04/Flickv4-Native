.class public final Lkotlinx/coroutines/flow/StateFlowImpl;
.super LV5/a;
.source "SourceFile"

# interfaces
.implements LU5/k;
.implements LU5/b;


# static fields
.field public static final m:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile _state:Ljava/lang/Object;

.field public j:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Ljava/lang/Object;

    const-string v1, "_state"

    const-class v2, Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/flow/StateFlowImpl;->m:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, LV5/a;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lkotlinx/coroutines/flow/StateFlowImpl;->_state:Ljava/lang/Object;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public collect(LU5/c;Ly5/c;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LU5/c;",
            "Ly5/c;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    instance-of v0, p2, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;

    .line 7
    .line 8
    iget v1, v0, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;->q:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;->q:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;-><init>(Lkotlinx/coroutines/flow/StateFlowImpl;Ly5/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;->n:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lz5/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;->q:I

    .line 32
    .line 33
    const/4 v3, 0x0

    .line 34
    const/4 v4, 0x3

    .line 35
    const/4 v5, 0x2

    .line 36
    if-eqz v2, :cond_4

    .line 37
    .line 38
    const/4 p1, 0x1

    .line 39
    if-eq v2, p1, :cond_3

    .line 40
    .line 41
    if-eq v2, v5, :cond_2

    .line 42
    .line 43
    if-ne v2, v4, :cond_1

    .line 44
    .line 45
    iget-object p1, v0, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;->m:Ljava/lang/Object;

    .line 46
    .line 47
    iget-object v2, v0, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;->j:LR5/q0;

    .line 48
    .line 49
    iget-object v6, v0, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;->f:LU5/n;

    .line 50
    .line 51
    iget-object v7, v0, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;->e:LU5/c;

    .line 52
    .line 53
    iget-object v8, v0, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;->b:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 54
    .line 55
    :try_start_0
    invoke-static {p2}, Lkotlin/b;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    .line 57
    .line 58
    goto :goto_2

    .line 59
    :catchall_0
    move-exception p1

    .line 60
    goto/16 :goto_6

    .line 61
    .line 62
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 63
    .line 64
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 65
    .line 66
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    throw p1

    .line 70
    :cond_2
    iget-object p1, v0, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;->m:Ljava/lang/Object;

    .line 71
    .line 72
    iget-object v2, v0, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;->j:LR5/q0;

    .line 73
    .line 74
    iget-object v6, v0, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;->f:LU5/n;

    .line 75
    .line 76
    iget-object v7, v0, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;->e:LU5/c;

    .line 77
    .line 78
    iget-object v8, v0, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;->b:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 79
    .line 80
    :try_start_1
    invoke-static {p2}, Lkotlin/b;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    .line 82
    .line 83
    goto :goto_4

    .line 84
    :cond_3
    iget-object v6, v0, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;->f:LU5/n;

    .line 85
    .line 86
    iget-object p1, v0, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;->e:LU5/c;

    .line 87
    .line 88
    iget-object v8, v0, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;->b:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 89
    .line 90
    :try_start_2
    invoke-static {p2}, Lkotlin/b;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 91
    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_4
    invoke-static {p2}, Lkotlin/b;->throwOnFailure(Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0}, LV5/a;->allocateSlot()LV5/c;

    .line 98
    .line 99
    .line 100
    move-result-object p2

    .line 101
    check-cast p2, LU5/n;

    .line 102
    .line 103
    move-object v8, p0

    .line 104
    move-object v6, p2

    .line 105
    :goto_1
    :try_start_3
    invoke-interface {v0}, Ly5/c;->getContext()Ly5/k;

    .line 106
    .line 107
    .line 108
    move-result-object p2

    .line 109
    sget-object v2, LR5/F;->e:LR5/F;

    .line 110
    .line 111
    invoke-interface {p2, v2}, Ly5/k;->get(Ly5/j;)Ly5/i;

    .line 112
    .line 113
    .line 114
    move-result-object p2

    .line 115
    check-cast p2, LR5/q0;

    .line 116
    .line 117
    move-object v7, p1

    .line 118
    move-object v2, p2

    .line 119
    move-object p1, v3

    .line 120
    :cond_5
    :goto_2
    sget-object p2, Lkotlinx/coroutines/flow/StateFlowImpl;->m:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 121
    .line 122
    invoke-virtual {p2, v8}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object p2

    .line 126
    if-eqz v2, :cond_6

    .line 127
    .line 128
    invoke-static {v2}, LR5/t0;->ensureActive(LR5/q0;)V

    .line 129
    .line 130
    .line 131
    :cond_6
    if-eqz p1, :cond_7

    .line 132
    .line 133
    invoke-static {p1, p2}, Lkotlin/jvm/internal/j;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result v9

    .line 137
    if-nez v9, :cond_a

    .line 138
    .line 139
    :cond_7
    sget-object p1, LV5/g;->a:LW5/G;

    .line 140
    .line 141
    if-ne p2, p1, :cond_8

    .line 142
    .line 143
    move-object p1, v3

    .line 144
    goto :goto_3

    .line 145
    :cond_8
    move-object p1, p2

    .line 146
    :goto_3
    iput-object v8, v0, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;->b:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 147
    .line 148
    iput-object v7, v0, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;->e:LU5/c;

    .line 149
    .line 150
    iput-object v6, v0, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;->f:LU5/n;

    .line 151
    .line 152
    iput-object v2, v0, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;->j:LR5/q0;

    .line 153
    .line 154
    iput-object p2, v0, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;->m:Ljava/lang/Object;

    .line 155
    .line 156
    iput v5, v0, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;->q:I

    .line 157
    .line 158
    invoke-interface {v7, p1, v0}, LU5/c;->emit(Ljava/lang/Object;Ly5/c;)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    if-ne p1, v1, :cond_9

    .line 163
    .line 164
    goto :goto_5

    .line 165
    :cond_9
    move-object p1, p2

    .line 166
    :cond_a
    :goto_4
    invoke-virtual {v6}, LU5/n;->takePending()Z

    .line 167
    .line 168
    .line 169
    move-result p2

    .line 170
    if-nez p2, :cond_5

    .line 171
    .line 172
    iput-object v8, v0, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;->b:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 173
    .line 174
    iput-object v7, v0, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;->e:LU5/c;

    .line 175
    .line 176
    iput-object v6, v0, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;->f:LU5/n;

    .line 177
    .line 178
    iput-object v2, v0, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;->j:LR5/q0;

    .line 179
    .line 180
    iput-object p1, v0, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;->m:Ljava/lang/Object;

    .line 181
    .line 182
    iput v4, v0, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;->q:I

    .line 183
    .line 184
    invoke-virtual {v6, v0}, LU5/n;->awaitPending(Ly5/c;)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 188
    if-ne p2, v1, :cond_5

    .line 189
    .line 190
    :goto_5
    return-object v1

    .line 191
    :goto_6
    invoke-virtual {v8, v6}, LV5/a;->freeSlot(LV5/c;)V

    .line 192
    .line 193
    .line 194
    throw p1
.end method

.method public createSlot()LU5/n;
    .locals 1

    .line 2
    new-instance v0, LU5/n;

    invoke-direct {v0}, LU5/n;-><init>()V

    return-object v0
.end method

.method public bridge synthetic createSlot()LV5/c;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/StateFlowImpl;->createSlot()LU5/n;

    move-result-object v0

    return-object v0
.end method

.method public createSlotArray(I)[LU5/n;
    .locals 0

    .line 2
    new-array p1, p1, [LU5/n;

    return-object p1
.end method

.method public bridge synthetic createSlotArray(I)[LV5/c;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->createSlotArray(I)[LU5/n;

    move-result-object p1

    return-object p1
.end method

.method public emit(Ljava/lang/Object;Ly5/c;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ly5/c;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    sget-object p1, Lu5/j;->a:Lu5/j;

    .line 5
    .line 6
    return-object p1
.end method

.method public getValue()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    sget-object v0, LV5/g;->a:LW5/G;

    .line 2
    .line 3
    sget-object v1, Lkotlinx/coroutines/flow/StateFlowImpl;->m:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 4
    .line 5
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-ne v1, v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0

    .line 13
    :cond_0
    return-object v1
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    sget-object p1, LV5/g;->a:LW5/G;

    .line 4
    .line 5
    :cond_0
    monitor-enter p0

    .line 6
    :try_start_0
    sget-object v0, Lkotlinx/coroutines/flow/StateFlowImpl;->m:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 7
    .line 8
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-static {v1, p1}, Lkotlin/jvm/internal/j;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    monitor-exit p0

    .line 19
    return-void

    .line 20
    :cond_1
    :try_start_1
    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    iget p1, p0, Lkotlinx/coroutines/flow/StateFlowImpl;->j:I

    .line 24
    .line 25
    and-int/lit8 v0, p1, 0x1

    .line 26
    .line 27
    if-nez v0, :cond_5

    .line 28
    .line 29
    add-int/lit8 p1, p1, 0x1

    .line 30
    .line 31
    iput p1, p0, Lkotlinx/coroutines/flow/StateFlowImpl;->j:I

    .line 32
    .line 33
    invoke-virtual {p0}, LV5/a;->getSlots()[LV5/c;

    .line 34
    .line 35
    .line 36
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 37
    monitor-exit p0

    .line 38
    :goto_0
    check-cast v0, [LU5/n;

    .line 39
    .line 40
    if-eqz v0, :cond_3

    .line 41
    .line 42
    array-length v1, v0

    .line 43
    const/4 v2, 0x0

    .line 44
    :goto_1
    if-ge v2, v1, :cond_3

    .line 45
    .line 46
    aget-object v3, v0, v2

    .line 47
    .line 48
    if-eqz v3, :cond_2

    .line 49
    .line 50
    invoke-virtual {v3}, LU5/n;->makePending()V

    .line 51
    .line 52
    .line 53
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_3
    monitor-enter p0

    .line 57
    :try_start_2
    iget v0, p0, Lkotlinx/coroutines/flow/StateFlowImpl;->j:I

    .line 58
    .line 59
    if-ne v0, p1, :cond_4

    .line 60
    .line 61
    add-int/lit8 p1, p1, 0x1

    .line 62
    .line 63
    iput p1, p0, Lkotlinx/coroutines/flow/StateFlowImpl;->j:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 64
    .line 65
    monitor-exit p0

    .line 66
    return-void

    .line 67
    :catchall_0
    move-exception p1

    .line 68
    goto :goto_2

    .line 69
    :cond_4
    :try_start_3
    invoke-virtual {p0}, LV5/a;->getSlots()[LV5/c;

    .line 70
    .line 71
    .line 72
    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 73
    monitor-exit p0

    .line 74
    move v4, v0

    .line 75
    move-object v0, p1

    .line 76
    move p1, v4

    .line 77
    goto :goto_0

    .line 78
    :goto_2
    monitor-exit p0

    .line 79
    throw p1

    .line 80
    :catchall_1
    move-exception p1

    .line 81
    goto :goto_3

    .line 82
    :cond_5
    add-int/lit8 p1, p1, 0x2

    .line 83
    .line 84
    :try_start_4
    iput p1, p0, Lkotlinx/coroutines/flow/StateFlowImpl;->j:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 85
    .line 86
    monitor-exit p0

    .line 87
    return-void

    .line 88
    :goto_3
    monitor-exit p0

    .line 89
    throw p1
.end method
