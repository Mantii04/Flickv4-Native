.class public final Landroidx/datastore/core/SingleProcessDataStore;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LY/d;


# static fields
.field public static final j:LY/j;

.field public static final k:Ljava/util/LinkedHashSet;

.field public static final l:Ljava/lang/Object;


# instance fields
.field public final a:LH5/a;

.field public final b:LY/i;

.field public final c:LY/a;

.field public final d:LU5/b;

.field public final e:Ljava/lang/String;

.field public final f:Lu5/f;

.field public final g:LU5/k;

.field public h:Ljava/util/List;

.field public final i:Landroidx/datastore/core/SimpleActor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, LY/j;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, LY/j;-><init>(Lkotlin/jvm/internal/g;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroidx/datastore/core/SingleProcessDataStore;->j:LY/j;

    .line 8
    .line 9
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 12
    .line 13
    .line 14
    sput-object v0, Landroidx/datastore/core/SingleProcessDataStore;->k:Ljava/util/LinkedHashSet;

    .line 15
    .line 16
    new-instance v0, Ljava/lang/Object;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 19
    .line 20
    .line 21
    sput-object v0, Landroidx/datastore/core/SingleProcessDataStore;->l:Ljava/lang/Object;

    .line 22
    .line 23
    return-void
.end method

.method public constructor <init>(LH5/a;LY/i;Ljava/util/List;LY/a;LR5/I;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LH5/a;",
            "LY/i;",
            "Ljava/util/List<",
            "+",
            "LH5/p;",
            ">;",
            "LY/a;",
            "LR5/I;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "produceFile"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "serializer"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "initTasksList"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "corruptionHandler"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v0, "scope"

    .line 22
    .line 23
    invoke-static {p5, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, Landroidx/datastore/core/SingleProcessDataStore;->a:LH5/a;

    .line 30
    .line 31
    iput-object p2, p0, Landroidx/datastore/core/SingleProcessDataStore;->b:LY/i;

    .line 32
    .line 33
    iput-object p4, p0, Landroidx/datastore/core/SingleProcessDataStore;->c:LY/a;

    .line 34
    .line 35
    new-instance p1, Landroidx/datastore/core/SingleProcessDataStore$data$1;

    .line 36
    .line 37
    const/4 p2, 0x0

    .line 38
    invoke-direct {p1, p0, p2}, Landroidx/datastore/core/SingleProcessDataStore$data$1;-><init>(Landroidx/datastore/core/SingleProcessDataStore;Ly5/c;)V

    .line 39
    .line 40
    .line 41
    invoke-static {p1}, LU5/d;->flow(LH5/p;)LU5/b;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    iput-object p1, p0, Landroidx/datastore/core/SingleProcessDataStore;->d:LU5/b;

    .line 46
    .line 47
    const-string p1, ".tmp"

    .line 48
    .line 49
    iput-object p1, p0, Landroidx/datastore/core/SingleProcessDataStore;->e:Ljava/lang/String;

    .line 50
    .line 51
    new-instance p1, Landroidx/datastore/core/SingleProcessDataStore$file$2;

    .line 52
    .line 53
    invoke-direct {p1, p0}, Landroidx/datastore/core/SingleProcessDataStore$file$2;-><init>(Landroidx/datastore/core/SingleProcessDataStore;)V

    .line 54
    .line 55
    .line 56
    invoke-static {p1}, Lkotlin/a;->lazy(LH5/a;)Lu5/f;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    iput-object p1, p0, Landroidx/datastore/core/SingleProcessDataStore;->f:Lu5/f;

    .line 61
    .line 62
    sget-object p1, LY/q;->a:LY/q;

    .line 63
    .line 64
    invoke-static {p1}, LU5/m;->MutableStateFlow(Ljava/lang/Object;)LU5/k;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    iput-object p1, p0, Landroidx/datastore/core/SingleProcessDataStore;->g:LU5/k;

    .line 69
    .line 70
    check-cast p3, Ljava/lang/Iterable;

    .line 71
    .line 72
    invoke-static {p3}, Lv5/u;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    iput-object p1, p0, Landroidx/datastore/core/SingleProcessDataStore;->h:Ljava/util/List;

    .line 77
    .line 78
    new-instance p1, Landroidx/datastore/core/SimpleActor;

    .line 79
    .line 80
    new-instance p3, Landroidx/datastore/core/SingleProcessDataStore$actor$1;

    .line 81
    .line 82
    invoke-direct {p3, p0}, Landroidx/datastore/core/SingleProcessDataStore$actor$1;-><init>(Landroidx/datastore/core/SingleProcessDataStore;)V

    .line 83
    .line 84
    .line 85
    new-instance p4, Landroidx/datastore/core/SingleProcessDataStore$actor$3;

    .line 86
    .line 87
    invoke-direct {p4, p0, p2}, Landroidx/datastore/core/SingleProcessDataStore$actor$3;-><init>(Landroidx/datastore/core/SingleProcessDataStore;Ly5/c;)V

    .line 88
    .line 89
    .line 90
    sget-object p2, Landroidx/datastore/core/SingleProcessDataStore$actor$2;->b:Landroidx/datastore/core/SingleProcessDataStore$actor$2;

    .line 91
    .line 92
    invoke-direct {p1, p5, p3, p2, p4}, Landroidx/datastore/core/SimpleActor;-><init>(LR5/I;LH5/l;LH5/p;LH5/p;)V

    .line 93
    .line 94
    .line 95
    iput-object p1, p0, Landroidx/datastore/core/SingleProcessDataStore;->i:Landroidx/datastore/core/SimpleActor;

    .line 96
    .line 97
    return-void
.end method

.method public static final synthetic access$getActiveFiles$cp()Ljava/util/Set;
    .locals 1

    .line 1
    sget-object v0, Landroidx/datastore/core/SingleProcessDataStore;->k:Ljava/util/LinkedHashSet;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getActiveFilesLock$cp()Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Landroidx/datastore/core/SingleProcessDataStore;->l:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getActor$p(Landroidx/datastore/core/SingleProcessDataStore;)Landroidx/datastore/core/SimpleActor;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/datastore/core/SingleProcessDataStore;->i:Landroidx/datastore/core/SimpleActor;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getDownstreamFlow$p(Landroidx/datastore/core/SingleProcessDataStore;)LU5/k;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/datastore/core/SingleProcessDataStore;->g:LU5/k;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getFile(Landroidx/datastore/core/SingleProcessDataStore;)Ljava/io/File;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/datastore/core/SingleProcessDataStore;->a()Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$getProduceFile$p(Landroidx/datastore/core/SingleProcessDataStore;)LH5/a;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/datastore/core/SingleProcessDataStore;->a:LH5/a;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final access$handleRead(Landroidx/datastore/core/SingleProcessDataStore;LY/k;Ly5/c;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/datastore/core/SingleProcessDataStore;->g:LU5/k;

    .line 2
    .line 3
    check-cast v0, Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 4
    .line 5
    invoke-virtual {v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, LY/p;

    .line 10
    .line 11
    instance-of v1, v0, LY/b;

    .line 12
    .line 13
    sget-object v2, Lu5/j;->a:Lu5/j;

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    instance-of v1, v0, LY/h;

    .line 19
    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    invoke-virtual {p1}, LY/k;->getLastState()LY/p;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    if-ne v0, p1, :cond_3

    .line 27
    .line 28
    invoke-virtual {p0, p2}, Landroidx/datastore/core/SingleProcessDataStore;->d(Ly5/c;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-static {}, Lz5/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    if-ne p0, p1, :cond_3

    .line 37
    .line 38
    return-object p0

    .line 39
    :cond_1
    sget-object p1, LY/q;->a:LY/q;

    .line 40
    .line 41
    invoke-static {v0, p1}, Lkotlin/jvm/internal/j;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    if-eqz p1, :cond_2

    .line 46
    .line 47
    invoke-virtual {p0, p2}, Landroidx/datastore/core/SingleProcessDataStore;->d(Ly5/c;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    invoke-static {}, Lz5/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    if-ne p0, p1, :cond_3

    .line 56
    .line 57
    return-object p0

    .line 58
    :cond_2
    instance-of p0, v0, LY/f;

    .line 59
    .line 60
    if-nez p0, :cond_4

    .line 61
    .line 62
    :cond_3
    :goto_0
    return-object v2

    .line 63
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 64
    .line 65
    const-string p1, "Can\'t read in final state."

    .line 66
    .line 67
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    throw p0
.end method

.method public static final access$handleUpdate(Landroidx/datastore/core/SingleProcessDataStore;LY/l;Ly5/c;)Ljava/lang/Object;
    .locals 8

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    instance-of v0, p2, Landroidx/datastore/core/SingleProcessDataStore$handleUpdate$1;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    move-object v0, p2

    .line 9
    check-cast v0, Landroidx/datastore/core/SingleProcessDataStore$handleUpdate$1;

    .line 10
    .line 11
    iget v1, v0, Landroidx/datastore/core/SingleProcessDataStore$handleUpdate$1;->n:I

    .line 12
    .line 13
    const/high16 v2, -0x80000000

    .line 14
    .line 15
    and-int v3, v1, v2

    .line 16
    .line 17
    if-eqz v3, :cond_0

    .line 18
    .line 19
    sub-int/2addr v1, v2

    .line 20
    iput v1, v0, Landroidx/datastore/core/SingleProcessDataStore$handleUpdate$1;->n:I

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    new-instance v0, Landroidx/datastore/core/SingleProcessDataStore$handleUpdate$1;

    .line 24
    .line 25
    invoke-direct {v0, p0, p2}, Landroidx/datastore/core/SingleProcessDataStore$handleUpdate$1;-><init>(Landroidx/datastore/core/SingleProcessDataStore;Ly5/c;)V

    .line 26
    .line 27
    .line 28
    :goto_0
    iget-object p2, v0, Landroidx/datastore/core/SingleProcessDataStore$handleUpdate$1;->j:Ljava/lang/Object;

    .line 29
    .line 30
    invoke-static {}, Lz5/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    iget v2, v0, Landroidx/datastore/core/SingleProcessDataStore$handleUpdate$1;->n:I

    .line 35
    .line 36
    const/4 v3, 0x3

    .line 37
    const/4 v4, 0x2

    .line 38
    const/4 v5, 0x1

    .line 39
    if-eqz v2, :cond_4

    .line 40
    .line 41
    if-eq v2, v5, :cond_3

    .line 42
    .line 43
    if-eq v2, v4, :cond_2

    .line 44
    .line 45
    if-ne v2, v3, :cond_1

    .line 46
    .line 47
    iget-object p0, v0, Landroidx/datastore/core/SingleProcessDataStore$handleUpdate$1;->b:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast p0, LR5/v;

    .line 50
    .line 51
    :goto_1
    :try_start_0
    invoke-static {p2}, Lkotlin/b;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    .line 53
    .line 54
    goto/16 :goto_6

    .line 55
    .line 56
    :catchall_0
    move-exception p1

    .line 57
    goto/16 :goto_7

    .line 58
    .line 59
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 60
    .line 61
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 62
    .line 63
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    throw p0

    .line 67
    :cond_2
    iget-object p0, v0, Landroidx/datastore/core/SingleProcessDataStore$handleUpdate$1;->f:LR5/v;

    .line 68
    .line 69
    iget-object p1, v0, Landroidx/datastore/core/SingleProcessDataStore$handleUpdate$1;->e:Landroidx/datastore/core/SingleProcessDataStore;

    .line 70
    .line 71
    iget-object v2, v0, Landroidx/datastore/core/SingleProcessDataStore$handleUpdate$1;->b:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast v2, LY/l;

    .line 74
    .line 75
    :try_start_1
    invoke-static {p2}, Lkotlin/b;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    .line 77
    .line 78
    move-object p2, p0

    .line 79
    move-object p0, p1

    .line 80
    move-object p1, v2

    .line 81
    goto :goto_4

    .line 82
    :cond_3
    iget-object p0, v0, Landroidx/datastore/core/SingleProcessDataStore$handleUpdate$1;->b:Ljava/lang/Object;

    .line 83
    .line 84
    check-cast p0, LR5/v;

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_4
    invoke-static {p2}, Lkotlin/b;->throwOnFailure(Ljava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1}, LY/l;->getAck()LR5/v;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    :try_start_2
    sget v2, Lkotlin/Result;->b:I

    .line 95
    .line 96
    iget-object v2, p0, Landroidx/datastore/core/SingleProcessDataStore;->g:LU5/k;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 97
    .line 98
    :try_start_3
    check-cast v2, Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 99
    .line 100
    invoke-virtual {v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 104
    :try_start_4
    check-cast v2, LY/p;

    .line 105
    .line 106
    instance-of v6, v2, LY/b;

    .line 107
    .line 108
    if-eqz v6, :cond_6

    .line 109
    .line 110
    invoke-virtual {p1}, LY/l;->getTransform()LH5/p;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    invoke-virtual {p1}, LY/l;->getCallerContext()Ly5/k;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    iput-object p2, v0, Landroidx/datastore/core/SingleProcessDataStore$handleUpdate$1;->b:Ljava/lang/Object;

    .line 119
    .line 120
    iput v5, v0, Landroidx/datastore/core/SingleProcessDataStore$handleUpdate$1;->n:I

    .line 121
    .line 122
    invoke-virtual {p0, p1, v2, v0}, Landroidx/datastore/core/SingleProcessDataStore;->g(Ly5/k;LH5/p;Ly5/c;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object p0

    .line 126
    if-ne p0, v1, :cond_5

    .line 127
    .line 128
    goto :goto_5

    .line 129
    :cond_5
    move-object v7, p2

    .line 130
    move-object p2, p0

    .line 131
    move-object p0, v7

    .line 132
    goto :goto_6

    .line 133
    :catchall_1
    move-exception p1

    .line 134
    :goto_2
    move-object p0, p2

    .line 135
    goto :goto_7

    .line 136
    :cond_6
    instance-of v6, v2, LY/h;

    .line 137
    .line 138
    if-eqz v6, :cond_7

    .line 139
    .line 140
    goto :goto_3

    .line 141
    :cond_7
    instance-of v5, v2, LY/q;

    .line 142
    .line 143
    :goto_3
    if-eqz v5, :cond_a

    .line 144
    .line 145
    invoke-virtual {p1}, LY/l;->getLastState()LY/p;

    .line 146
    .line 147
    .line 148
    move-result-object v5

    .line 149
    if-ne v2, v5, :cond_9

    .line 150
    .line 151
    iput-object p1, v0, Landroidx/datastore/core/SingleProcessDataStore$handleUpdate$1;->b:Ljava/lang/Object;

    .line 152
    .line 153
    iput-object p0, v0, Landroidx/datastore/core/SingleProcessDataStore$handleUpdate$1;->e:Landroidx/datastore/core/SingleProcessDataStore;

    .line 154
    .line 155
    iput-object p2, v0, Landroidx/datastore/core/SingleProcessDataStore$handleUpdate$1;->f:LR5/v;

    .line 156
    .line 157
    iput v4, v0, Landroidx/datastore/core/SingleProcessDataStore$handleUpdate$1;->n:I

    .line 158
    .line 159
    invoke-virtual {p0, v0}, Landroidx/datastore/core/SingleProcessDataStore;->c(Ly5/c;)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v2

    .line 163
    if-ne v2, v1, :cond_8

    .line 164
    .line 165
    goto :goto_5

    .line 166
    :cond_8
    :goto_4
    invoke-virtual {p1}, LY/l;->getTransform()LH5/p;

    .line 167
    .line 168
    .line 169
    move-result-object v2

    .line 170
    invoke-virtual {p1}, LY/l;->getCallerContext()Ly5/k;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    iput-object p2, v0, Landroidx/datastore/core/SingleProcessDataStore$handleUpdate$1;->b:Ljava/lang/Object;

    .line 175
    .line 176
    const/4 v4, 0x0

    .line 177
    iput-object v4, v0, Landroidx/datastore/core/SingleProcessDataStore$handleUpdate$1;->e:Landroidx/datastore/core/SingleProcessDataStore;

    .line 178
    .line 179
    iput-object v4, v0, Landroidx/datastore/core/SingleProcessDataStore$handleUpdate$1;->f:LR5/v;

    .line 180
    .line 181
    iput v3, v0, Landroidx/datastore/core/SingleProcessDataStore$handleUpdate$1;->n:I

    .line 182
    .line 183
    invoke-virtual {p0, p1, v2, v0}, Landroidx/datastore/core/SingleProcessDataStore;->g(Ly5/k;LH5/p;Ly5/c;)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 187
    if-ne p0, v1, :cond_5

    .line 188
    .line 189
    :goto_5
    return-object v1

    .line 190
    :goto_6
    :try_start_5
    invoke-static {p2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 194
    goto :goto_8

    .line 195
    :cond_9
    :try_start_6
    check-cast v2, LY/h;

    .line 196
    .line 197
    invoke-virtual {v2}, LY/h;->getReadException()Ljava/lang/Throwable;

    .line 198
    .line 199
    .line 200
    move-result-object p0

    .line 201
    throw p0

    .line 202
    :cond_a
    instance-of p0, v2, LY/f;

    .line 203
    .line 204
    if-eqz p0, :cond_b

    .line 205
    .line 206
    check-cast v2, LY/f;

    .line 207
    .line 208
    invoke-virtual {v2}, LY/f;->getFinalException()Ljava/lang/Throwable;

    .line 209
    .line 210
    .line 211
    move-result-object p0

    .line 212
    throw p0

    .line 213
    :cond_b
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    .line 214
    .line 215
    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 216
    .line 217
    .line 218
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 219
    :catchall_2
    move-exception p0

    .line 220
    move-object p1, p0

    .line 221
    goto :goto_2

    .line 222
    :goto_7
    sget p2, Lkotlin/Result;->b:I

    .line 223
    .line 224
    invoke-static {p1}, Lkotlin/b;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    move-result-object p1

    .line 228
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    move-result-object p1

    .line 232
    :goto_8
    invoke-static {p0, p1}, LR5/x;->completeWith(LR5/v;Ljava/lang/Object;)Z

    .line 233
    .line 234
    .line 235
    sget-object p0, Lu5/j;->a:Lu5/j;

    .line 236
    .line 237
    return-object p0
.end method

.method public static final synthetic access$readAndInit(Landroidx/datastore/core/SingleProcessDataStore;Ly5/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/datastore/core/SingleProcessDataStore;->b(Ly5/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$readAndInitOrPropagateAndThrowFailure(Landroidx/datastore/core/SingleProcessDataStore;Ly5/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/datastore/core/SingleProcessDataStore;->c(Ly5/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$readAndInitOrPropagateFailure(Landroidx/datastore/core/SingleProcessDataStore;Ly5/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/datastore/core/SingleProcessDataStore;->d(Ly5/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$readData(Landroidx/datastore/core/SingleProcessDataStore;Ly5/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/datastore/core/SingleProcessDataStore;->e(Ly5/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$readDataOrHandleCorruption(Landroidx/datastore/core/SingleProcessDataStore;Ly5/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/datastore/core/SingleProcessDataStore;->f(Ly5/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$transformAndWrite(Landroidx/datastore/core/SingleProcessDataStore;LH5/p;Ly5/k;Ly5/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p2, p1, p3}, Landroidx/datastore/core/SingleProcessDataStore;->g(Ly5/k;LH5/p;Ly5/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method


# virtual methods
.method public final a()Ljava/io/File;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/datastore/core/SingleProcessDataStore;->f:Lu5/f;

    .line 2
    .line 3
    invoke-interface {v0}, Lu5/f;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/io/File;

    .line 8
    .line 9
    return-object v0
.end method

.method public final b(Ly5/c;)Ljava/lang/Object;
    .locals 13

    .line 1
    instance-of v0, p1, Landroidx/datastore/core/SingleProcessDataStore$readAndInit$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Landroidx/datastore/core/SingleProcessDataStore$readAndInit$1;

    .line 7
    .line 8
    iget v1, v0, Landroidx/datastore/core/SingleProcessDataStore$readAndInit$1;->r:I

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
    iput v1, v0, Landroidx/datastore/core/SingleProcessDataStore$readAndInit$1;->r:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Landroidx/datastore/core/SingleProcessDataStore$readAndInit$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Landroidx/datastore/core/SingleProcessDataStore$readAndInit$1;-><init>(Landroidx/datastore/core/SingleProcessDataStore;Ly5/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Landroidx/datastore/core/SingleProcessDataStore$readAndInit$1;->p:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lz5/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Landroidx/datastore/core/SingleProcessDataStore$readAndInit$1;->r:I

    .line 32
    .line 33
    const/4 v3, 0x3

    .line 34
    const/4 v4, 0x2

    .line 35
    const/4 v5, 0x0

    .line 36
    const/4 v6, 0x1

    .line 37
    const/4 v7, 0x0

    .line 38
    if-eqz v2, :cond_4

    .line 39
    .line 40
    if-eq v2, v6, :cond_3

    .line 41
    .line 42
    if-eq v2, v4, :cond_2

    .line 43
    .line 44
    if-ne v2, v3, :cond_1

    .line 45
    .line 46
    iget-object v1, v0, Landroidx/datastore/core/SingleProcessDataStore$readAndInit$1;->j:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v1, La6/b;

    .line 49
    .line 50
    iget-object v2, v0, Landroidx/datastore/core/SingleProcessDataStore$readAndInit$1;->f:Ljava/io/Serializable;

    .line 51
    .line 52
    check-cast v2, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 53
    .line 54
    iget-object v3, v0, Landroidx/datastore/core/SingleProcessDataStore$readAndInit$1;->e:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v3, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 57
    .line 58
    iget-object v0, v0, Landroidx/datastore/core/SingleProcessDataStore$readAndInit$1;->b:Landroidx/datastore/core/SingleProcessDataStore;

    .line 59
    .line 60
    invoke-static {p1}, Lkotlin/b;->throwOnFailure(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    goto/16 :goto_6

    .line 64
    .line 65
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 66
    .line 67
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 68
    .line 69
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    throw p1

    .line 73
    :cond_2
    iget-object v2, v0, Landroidx/datastore/core/SingleProcessDataStore$readAndInit$1;->n:Ljava/util/Iterator;

    .line 74
    .line 75
    iget-object v8, v0, Landroidx/datastore/core/SingleProcessDataStore$readAndInit$1;->m:Landroidx/datastore/core/SingleProcessDataStore$readAndInit$api$1;

    .line 76
    .line 77
    iget-object v9, v0, Landroidx/datastore/core/SingleProcessDataStore$readAndInit$1;->j:Ljava/lang/Object;

    .line 78
    .line 79
    check-cast v9, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 80
    .line 81
    iget-object v10, v0, Landroidx/datastore/core/SingleProcessDataStore$readAndInit$1;->f:Ljava/io/Serializable;

    .line 82
    .line 83
    check-cast v10, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 84
    .line 85
    iget-object v11, v0, Landroidx/datastore/core/SingleProcessDataStore$readAndInit$1;->e:Ljava/lang/Object;

    .line 86
    .line 87
    check-cast v11, La6/b;

    .line 88
    .line 89
    iget-object v12, v0, Landroidx/datastore/core/SingleProcessDataStore$readAndInit$1;->b:Landroidx/datastore/core/SingleProcessDataStore;

    .line 90
    .line 91
    invoke-static {p1}, Lkotlin/b;->throwOnFailure(Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    goto/16 :goto_3

    .line 95
    .line 96
    :cond_3
    iget-object v2, v0, Landroidx/datastore/core/SingleProcessDataStore$readAndInit$1;->j:Ljava/lang/Object;

    .line 97
    .line 98
    check-cast v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 99
    .line 100
    iget-object v8, v0, Landroidx/datastore/core/SingleProcessDataStore$readAndInit$1;->f:Ljava/io/Serializable;

    .line 101
    .line 102
    check-cast v8, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 103
    .line 104
    iget-object v9, v0, Landroidx/datastore/core/SingleProcessDataStore$readAndInit$1;->e:Ljava/lang/Object;

    .line 105
    .line 106
    check-cast v9, La6/b;

    .line 107
    .line 108
    iget-object v10, v0, Landroidx/datastore/core/SingleProcessDataStore$readAndInit$1;->b:Landroidx/datastore/core/SingleProcessDataStore;

    .line 109
    .line 110
    invoke-static {p1}, Lkotlin/b;->throwOnFailure(Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    goto :goto_2

    .line 114
    :cond_4
    invoke-static {p1}, Lkotlin/b;->throwOnFailure(Ljava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    iget-object p1, p0, Landroidx/datastore/core/SingleProcessDataStore;->g:LU5/k;

    .line 118
    .line 119
    check-cast p1, Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 120
    .line 121
    invoke-virtual {p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    sget-object v8, LY/q;->a:LY/q;

    .line 126
    .line 127
    invoke-static {v2, v8}, Lkotlin/jvm/internal/j;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result v2

    .line 131
    if-nez v2, :cond_6

    .line 132
    .line 133
    invoke-virtual {p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    instance-of p1, p1, LY/h;

    .line 138
    .line 139
    if-eqz p1, :cond_5

    .line 140
    .line 141
    goto :goto_1

    .line 142
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 143
    .line 144
    const-string v0, "Check failed."

    .line 145
    .line 146
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    throw p1

    .line 150
    :cond_6
    :goto_1
    invoke-static {v5, v6, v7}, La6/c;->Mutex$default(ZILjava/lang/Object;)La6/b;

    .line 151
    .line 152
    .line 153
    move-result-object v9

    .line 154
    new-instance v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 155
    .line 156
    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 157
    .line 158
    .line 159
    iput-object p0, v0, Landroidx/datastore/core/SingleProcessDataStore$readAndInit$1;->b:Landroidx/datastore/core/SingleProcessDataStore;

    .line 160
    .line 161
    iput-object v9, v0, Landroidx/datastore/core/SingleProcessDataStore$readAndInit$1;->e:Ljava/lang/Object;

    .line 162
    .line 163
    iput-object v2, v0, Landroidx/datastore/core/SingleProcessDataStore$readAndInit$1;->f:Ljava/io/Serializable;

    .line 164
    .line 165
    iput-object v2, v0, Landroidx/datastore/core/SingleProcessDataStore$readAndInit$1;->j:Ljava/lang/Object;

    .line 166
    .line 167
    iput v6, v0, Landroidx/datastore/core/SingleProcessDataStore$readAndInit$1;->r:I

    .line 168
    .line 169
    invoke-virtual {p0, v0}, Landroidx/datastore/core/SingleProcessDataStore;->f(Ly5/c;)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    if-ne p1, v1, :cond_7

    .line 174
    .line 175
    goto/16 :goto_5

    .line 176
    .line 177
    :cond_7
    move-object v10, p0

    .line 178
    move-object v8, v2

    .line 179
    :goto_2
    iput-object p1, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    .line 180
    .line 181
    new-instance p1, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 182
    .line 183
    invoke-direct {p1}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 184
    .line 185
    .line 186
    new-instance v2, Landroidx/datastore/core/SingleProcessDataStore$readAndInit$api$1;

    .line 187
    .line 188
    invoke-direct {v2, v9, p1, v8, v10}, Landroidx/datastore/core/SingleProcessDataStore$readAndInit$api$1;-><init>(La6/b;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$ObjectRef;Landroidx/datastore/core/SingleProcessDataStore;)V

    .line 189
    .line 190
    .line 191
    iget-object v11, v10, Landroidx/datastore/core/SingleProcessDataStore;->h:Ljava/util/List;

    .line 192
    .line 193
    if-nez v11, :cond_8

    .line 194
    .line 195
    move-object v2, p1

    .line 196
    move-object p1, v0

    .line 197
    move-object v0, v10

    .line 198
    goto :goto_4

    .line 199
    :cond_8
    check-cast v11, Ljava/lang/Iterable;

    .line 200
    .line 201
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 202
    .line 203
    .line 204
    move-result-object v11

    .line 205
    move-object v12, v10

    .line 206
    move-object v10, v8

    .line 207
    move-object v8, v2

    .line 208
    move-object v2, v11

    .line 209
    move-object v11, v9

    .line 210
    move-object v9, p1

    .line 211
    :cond_9
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 212
    .line 213
    .line 214
    move-result p1

    .line 215
    if-eqz p1, :cond_a

    .line 216
    .line 217
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object p1

    .line 221
    check-cast p1, LH5/p;

    .line 222
    .line 223
    iput-object v12, v0, Landroidx/datastore/core/SingleProcessDataStore$readAndInit$1;->b:Landroidx/datastore/core/SingleProcessDataStore;

    .line 224
    .line 225
    iput-object v11, v0, Landroidx/datastore/core/SingleProcessDataStore$readAndInit$1;->e:Ljava/lang/Object;

    .line 226
    .line 227
    iput-object v10, v0, Landroidx/datastore/core/SingleProcessDataStore$readAndInit$1;->f:Ljava/io/Serializable;

    .line 228
    .line 229
    iput-object v9, v0, Landroidx/datastore/core/SingleProcessDataStore$readAndInit$1;->j:Ljava/lang/Object;

    .line 230
    .line 231
    iput-object v8, v0, Landroidx/datastore/core/SingleProcessDataStore$readAndInit$1;->m:Landroidx/datastore/core/SingleProcessDataStore$readAndInit$api$1;

    .line 232
    .line 233
    iput-object v2, v0, Landroidx/datastore/core/SingleProcessDataStore$readAndInit$1;->n:Ljava/util/Iterator;

    .line 234
    .line 235
    iput v4, v0, Landroidx/datastore/core/SingleProcessDataStore$readAndInit$1;->r:I

    .line 236
    .line 237
    invoke-interface {p1, v8, v0}, LH5/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    move-result-object p1

    .line 241
    if-ne p1, v1, :cond_9

    .line 242
    .line 243
    goto :goto_5

    .line 244
    :cond_a
    move-object p1, v0

    .line 245
    move-object v2, v9

    .line 246
    move-object v8, v10

    .line 247
    move-object v9, v11

    .line 248
    move-object v0, v12

    .line 249
    :goto_4
    iput-object v7, v0, Landroidx/datastore/core/SingleProcessDataStore;->h:Ljava/util/List;

    .line 250
    .line 251
    iput-object v0, p1, Landroidx/datastore/core/SingleProcessDataStore$readAndInit$1;->b:Landroidx/datastore/core/SingleProcessDataStore;

    .line 252
    .line 253
    iput-object v8, p1, Landroidx/datastore/core/SingleProcessDataStore$readAndInit$1;->e:Ljava/lang/Object;

    .line 254
    .line 255
    iput-object v2, p1, Landroidx/datastore/core/SingleProcessDataStore$readAndInit$1;->f:Ljava/io/Serializable;

    .line 256
    .line 257
    iput-object v9, p1, Landroidx/datastore/core/SingleProcessDataStore$readAndInit$1;->j:Ljava/lang/Object;

    .line 258
    .line 259
    iput-object v7, p1, Landroidx/datastore/core/SingleProcessDataStore$readAndInit$1;->m:Landroidx/datastore/core/SingleProcessDataStore$readAndInit$api$1;

    .line 260
    .line 261
    iput-object v7, p1, Landroidx/datastore/core/SingleProcessDataStore$readAndInit$1;->n:Ljava/util/Iterator;

    .line 262
    .line 263
    iput v3, p1, Landroidx/datastore/core/SingleProcessDataStore$readAndInit$1;->r:I

    .line 264
    .line 265
    move-object v3, v9

    .line 266
    check-cast v3, Lkotlinx/coroutines/sync/MutexImpl;

    .line 267
    .line 268
    invoke-virtual {v3, v7, p1}, Lkotlinx/coroutines/sync/MutexImpl;->lock(Ljava/lang/Object;Ly5/c;)Ljava/lang/Object;

    .line 269
    .line 270
    .line 271
    move-result-object p1

    .line 272
    if-ne p1, v1, :cond_b

    .line 273
    .line 274
    :goto_5
    return-object v1

    .line 275
    :cond_b
    move-object v1, v3

    .line 276
    move-object v3, v8

    .line 277
    :goto_6
    :try_start_0
    iput-boolean v6, v2, Lkotlin/jvm/internal/Ref$BooleanRef;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 278
    .line 279
    check-cast v1, Lkotlinx/coroutines/sync/MutexImpl;

    .line 280
    .line 281
    invoke-virtual {v1, v7}, Lkotlinx/coroutines/sync/MutexImpl;->unlock(Ljava/lang/Object;)V

    .line 282
    .line 283
    .line 284
    iget-object p1, v0, Landroidx/datastore/core/SingleProcessDataStore;->g:LU5/k;

    .line 285
    .line 286
    new-instance v0, LY/b;

    .line 287
    .line 288
    iget-object v1, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    .line 289
    .line 290
    if-eqz v1, :cond_c

    .line 291
    .line 292
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 293
    .line 294
    .line 295
    move-result v5

    .line 296
    :cond_c
    invoke-direct {v0, v1, v5}, LY/b;-><init>(Ljava/lang/Object;I)V

    .line 297
    .line 298
    .line 299
    check-cast p1, Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 300
    .line 301
    invoke-virtual {p1, v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    .line 302
    .line 303
    .line 304
    sget-object p1, Lu5/j;->a:Lu5/j;

    .line 305
    .line 306
    return-object p1

    .line 307
    :catchall_0
    move-exception p1

    .line 308
    check-cast v1, Lkotlinx/coroutines/sync/MutexImpl;

    .line 309
    .line 310
    invoke-virtual {v1, v7}, Lkotlinx/coroutines/sync/MutexImpl;->unlock(Ljava/lang/Object;)V

    .line 311
    .line 312
    .line 313
    throw p1
.end method

.method public final c(Ly5/c;)Ljava/lang/Object;
    .locals 4

    .line 1
    instance-of v0, p1, Landroidx/datastore/core/SingleProcessDataStore$readAndInitOrPropagateAndThrowFailure$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Landroidx/datastore/core/SingleProcessDataStore$readAndInitOrPropagateAndThrowFailure$1;

    .line 7
    .line 8
    iget v1, v0, Landroidx/datastore/core/SingleProcessDataStore$readAndInitOrPropagateAndThrowFailure$1;->j:I

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
    iput v1, v0, Landroidx/datastore/core/SingleProcessDataStore$readAndInitOrPropagateAndThrowFailure$1;->j:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Landroidx/datastore/core/SingleProcessDataStore$readAndInitOrPropagateAndThrowFailure$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Landroidx/datastore/core/SingleProcessDataStore$readAndInitOrPropagateAndThrowFailure$1;-><init>(Landroidx/datastore/core/SingleProcessDataStore;Ly5/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Landroidx/datastore/core/SingleProcessDataStore$readAndInitOrPropagateAndThrowFailure$1;->e:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lz5/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Landroidx/datastore/core/SingleProcessDataStore$readAndInitOrPropagateAndThrowFailure$1;->j:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    if-ne v2, v3, :cond_1

    .line 37
    .line 38
    iget-object v0, v0, Landroidx/datastore/core/SingleProcessDataStore$readAndInitOrPropagateAndThrowFailure$1;->b:Landroidx/datastore/core/SingleProcessDataStore;

    .line 39
    .line 40
    :try_start_0
    invoke-static {p1}, Lkotlin/b;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :catchall_0
    move-exception p1

    .line 45
    goto :goto_2

    .line 46
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 47
    .line 48
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 49
    .line 50
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw p1

    .line 54
    :cond_2
    invoke-static {p1}, Lkotlin/b;->throwOnFailure(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    :try_start_1
    iput-object p0, v0, Landroidx/datastore/core/SingleProcessDataStore$readAndInitOrPropagateAndThrowFailure$1;->b:Landroidx/datastore/core/SingleProcessDataStore;

    .line 58
    .line 59
    iput v3, v0, Landroidx/datastore/core/SingleProcessDataStore$readAndInitOrPropagateAndThrowFailure$1;->j:I

    .line 60
    .line 61
    invoke-virtual {p0, v0}, Landroidx/datastore/core/SingleProcessDataStore;->b(Ly5/c;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 65
    if-ne p1, v1, :cond_3

    .line 66
    .line 67
    return-object v1

    .line 68
    :cond_3
    :goto_1
    sget-object p1, Lu5/j;->a:Lu5/j;

    .line 69
    .line 70
    return-object p1

    .line 71
    :catchall_1
    move-exception p1

    .line 72
    move-object v0, p0

    .line 73
    :goto_2
    iget-object v0, v0, Landroidx/datastore/core/SingleProcessDataStore;->g:LU5/k;

    .line 74
    .line 75
    new-instance v1, LY/h;

    .line 76
    .line 77
    invoke-direct {v1, p1}, LY/h;-><init>(Ljava/lang/Throwable;)V

    .line 78
    .line 79
    .line 80
    check-cast v0, Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 81
    .line 82
    invoke-virtual {v0, v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    throw p1
.end method

.method public final d(Ly5/c;)Ljava/lang/Object;
    .locals 4

    .line 1
    instance-of v0, p1, Landroidx/datastore/core/SingleProcessDataStore$readAndInitOrPropagateFailure$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Landroidx/datastore/core/SingleProcessDataStore$readAndInitOrPropagateFailure$1;

    .line 7
    .line 8
    iget v1, v0, Landroidx/datastore/core/SingleProcessDataStore$readAndInitOrPropagateFailure$1;->j:I

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
    iput v1, v0, Landroidx/datastore/core/SingleProcessDataStore$readAndInitOrPropagateFailure$1;->j:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Landroidx/datastore/core/SingleProcessDataStore$readAndInitOrPropagateFailure$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Landroidx/datastore/core/SingleProcessDataStore$readAndInitOrPropagateFailure$1;-><init>(Landroidx/datastore/core/SingleProcessDataStore;Ly5/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Landroidx/datastore/core/SingleProcessDataStore$readAndInitOrPropagateFailure$1;->e:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lz5/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Landroidx/datastore/core/SingleProcessDataStore$readAndInitOrPropagateFailure$1;->j:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    if-ne v2, v3, :cond_1

    .line 37
    .line 38
    iget-object v0, v0, Landroidx/datastore/core/SingleProcessDataStore$readAndInitOrPropagateFailure$1;->b:Landroidx/datastore/core/SingleProcessDataStore;

    .line 39
    .line 40
    :try_start_0
    invoke-static {p1}, Lkotlin/b;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    .line 42
    .line 43
    goto :goto_2

    .line 44
    :catchall_0
    move-exception p1

    .line 45
    goto :goto_1

    .line 46
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 47
    .line 48
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 49
    .line 50
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw p1

    .line 54
    :cond_2
    invoke-static {p1}, Lkotlin/b;->throwOnFailure(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    :try_start_1
    iput-object p0, v0, Landroidx/datastore/core/SingleProcessDataStore$readAndInitOrPropagateFailure$1;->b:Landroidx/datastore/core/SingleProcessDataStore;

    .line 58
    .line 59
    iput v3, v0, Landroidx/datastore/core/SingleProcessDataStore$readAndInitOrPropagateFailure$1;->j:I

    .line 60
    .line 61
    invoke-virtual {p0, v0}, Landroidx/datastore/core/SingleProcessDataStore;->b(Ly5/c;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 65
    if-ne p1, v1, :cond_3

    .line 66
    .line 67
    return-object v1

    .line 68
    :catchall_1
    move-exception p1

    .line 69
    move-object v0, p0

    .line 70
    :goto_1
    iget-object v0, v0, Landroidx/datastore/core/SingleProcessDataStore;->g:LU5/k;

    .line 71
    .line 72
    new-instance v1, LY/h;

    .line 73
    .line 74
    invoke-direct {v1, p1}, LY/h;-><init>(Ljava/lang/Throwable;)V

    .line 75
    .line 76
    .line 77
    check-cast v0, Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 78
    .line 79
    invoke-virtual {v0, v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    :cond_3
    :goto_2
    sget-object p1, Lu5/j;->a:Lu5/j;

    .line 83
    .line 84
    return-object p1
.end method

.method public final e(Ly5/c;)Ljava/lang/Object;
    .locals 4

    .line 1
    instance-of v0, p1, Landroidx/datastore/core/SingleProcessDataStore$readData$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Landroidx/datastore/core/SingleProcessDataStore$readData$1;

    .line 7
    .line 8
    iget v1, v0, Landroidx/datastore/core/SingleProcessDataStore$readData$1;->m:I

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
    iput v1, v0, Landroidx/datastore/core/SingleProcessDataStore$readData$1;->m:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Landroidx/datastore/core/SingleProcessDataStore$readData$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Landroidx/datastore/core/SingleProcessDataStore$readData$1;-><init>(Landroidx/datastore/core/SingleProcessDataStore;Ly5/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Landroidx/datastore/core/SingleProcessDataStore$readData$1;->f:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lz5/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Landroidx/datastore/core/SingleProcessDataStore$readData$1;->m:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    if-ne v2, v3, :cond_1

    .line 37
    .line 38
    iget-object v1, v0, Landroidx/datastore/core/SingleProcessDataStore$readData$1;->e:Ljava/io/FileInputStream;

    .line 39
    .line 40
    iget-object v0, v0, Landroidx/datastore/core/SingleProcessDataStore$readData$1;->b:Landroidx/datastore/core/SingleProcessDataStore;

    .line 41
    .line 42
    :try_start_0
    invoke-static {p1}, Lkotlin/b;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :catchall_0
    move-exception p1

    .line 47
    goto :goto_3

    .line 48
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 49
    .line 50
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 51
    .line 52
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw p1

    .line 56
    :cond_2
    invoke-static {p1}, Lkotlin/b;->throwOnFailure(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    :try_start_1
    new-instance p1, Ljava/io/FileInputStream;

    .line 60
    .line 61
    invoke-virtual {p0}, Landroidx/datastore/core/SingleProcessDataStore;->a()Ljava/io/File;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-direct {p1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 66
    .line 67
    .line 68
    :try_start_2
    iget-object v2, p0, Landroidx/datastore/core/SingleProcessDataStore;->b:LY/i;

    .line 69
    .line 70
    iput-object p0, v0, Landroidx/datastore/core/SingleProcessDataStore$readData$1;->b:Landroidx/datastore/core/SingleProcessDataStore;

    .line 71
    .line 72
    iput-object p1, v0, Landroidx/datastore/core/SingleProcessDataStore$readData$1;->e:Ljava/io/FileInputStream;

    .line 73
    .line 74
    iput v3, v0, Landroidx/datastore/core/SingleProcessDataStore$readData$1;->m:I

    .line 75
    .line 76
    check-cast v2, Lb0/g;

    .line 77
    .line 78
    invoke-virtual {v2, p1, v0}, Lb0/g;->readFrom(Ljava/io/InputStream;Ly5/c;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 82
    if-ne v0, v1, :cond_3

    .line 83
    .line 84
    return-object v1

    .line 85
    :cond_3
    move-object v1, p1

    .line 86
    move-object p1, v0

    .line 87
    move-object v0, p0

    .line 88
    :goto_1
    const/4 v2, 0x0

    .line 89
    :try_start_3
    invoke-static {v1, v2}, LF5/a;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    .line 90
    .line 91
    .line 92
    return-object p1

    .line 93
    :catch_0
    move-exception p1

    .line 94
    goto :goto_4

    .line 95
    :goto_2
    move-object v1, p1

    .line 96
    move-object p1, v0

    .line 97
    move-object v0, p0

    .line 98
    goto :goto_3

    .line 99
    :catchall_1
    move-exception v0

    .line 100
    goto :goto_2

    .line 101
    :goto_3
    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 102
    :catchall_2
    move-exception v2

    .line 103
    :try_start_5
    invoke-static {v1, p1}, LF5/a;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 104
    .line 105
    .line 106
    throw v2
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0

    .line 107
    :catch_1
    move-exception p1

    .line 108
    move-object v0, p0

    .line 109
    :goto_4
    invoke-virtual {v0}, Landroidx/datastore/core/SingleProcessDataStore;->a()Ljava/io/File;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 114
    .line 115
    .line 116
    move-result v1

    .line 117
    if-nez v1, :cond_4

    .line 118
    .line 119
    iget-object p1, v0, Landroidx/datastore/core/SingleProcessDataStore;->b:LY/i;

    .line 120
    .line 121
    check-cast p1, Lb0/g;

    .line 122
    .line 123
    invoke-virtual {p1}, Lb0/g;->getDefaultValue()Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    return-object p1

    .line 128
    :cond_4
    throw p1
.end method

.method public final f(Ly5/c;)Ljava/lang/Object;
    .locals 7

    .line 1
    instance-of v0, p1, Landroidx/datastore/core/SingleProcessDataStore$readDataOrHandleCorruption$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Landroidx/datastore/core/SingleProcessDataStore$readDataOrHandleCorruption$1;

    .line 7
    .line 8
    iget v1, v0, Landroidx/datastore/core/SingleProcessDataStore$readDataOrHandleCorruption$1;->m:I

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
    iput v1, v0, Landroidx/datastore/core/SingleProcessDataStore$readDataOrHandleCorruption$1;->m:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Landroidx/datastore/core/SingleProcessDataStore$readDataOrHandleCorruption$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Landroidx/datastore/core/SingleProcessDataStore$readDataOrHandleCorruption$1;-><init>(Landroidx/datastore/core/SingleProcessDataStore;Ly5/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Landroidx/datastore/core/SingleProcessDataStore$readDataOrHandleCorruption$1;->f:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lz5/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Landroidx/datastore/core/SingleProcessDataStore$readDataOrHandleCorruption$1;->m:I

    .line 32
    .line 33
    const/4 v3, 0x3

    .line 34
    const/4 v4, 0x2

    .line 35
    const/4 v5, 0x1

    .line 36
    if-eqz v2, :cond_4

    .line 37
    .line 38
    if-eq v2, v5, :cond_3

    .line 39
    .line 40
    if-eq v2, v4, :cond_2

    .line 41
    .line 42
    if-ne v2, v3, :cond_1

    .line 43
    .line 44
    iget-object v1, v0, Landroidx/datastore/core/SingleProcessDataStore$readDataOrHandleCorruption$1;->e:Ljava/lang/Object;

    .line 45
    .line 46
    iget-object v0, v0, Landroidx/datastore/core/SingleProcessDataStore$readDataOrHandleCorruption$1;->b:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v0, Landroidx/datastore/core/CorruptionException;

    .line 49
    .line 50
    :try_start_0
    invoke-static {p1}, Lkotlin/b;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .line 52
    .line 53
    return-object v1

    .line 54
    :catch_0
    move-exception p1

    .line 55
    goto :goto_4

    .line 56
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 57
    .line 58
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 59
    .line 60
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    throw p1

    .line 64
    :cond_2
    iget-object v2, v0, Landroidx/datastore/core/SingleProcessDataStore$readDataOrHandleCorruption$1;->e:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast v2, Landroidx/datastore/core/CorruptionException;

    .line 67
    .line 68
    iget-object v4, v0, Landroidx/datastore/core/SingleProcessDataStore$readDataOrHandleCorruption$1;->b:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast v4, Landroidx/datastore/core/SingleProcessDataStore;

    .line 71
    .line 72
    invoke-static {p1}, Lkotlin/b;->throwOnFailure(Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_3
    iget-object v2, v0, Landroidx/datastore/core/SingleProcessDataStore$readDataOrHandleCorruption$1;->b:Ljava/lang/Object;

    .line 77
    .line 78
    check-cast v2, Landroidx/datastore/core/SingleProcessDataStore;

    .line 79
    .line 80
    :try_start_1
    invoke-static {p1}, Lkotlin/b;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Landroidx/datastore/core/CorruptionException; {:try_start_1 .. :try_end_1} :catch_1

    .line 81
    .line 82
    .line 83
    return-object p1

    .line 84
    :catch_1
    move-exception p1

    .line 85
    goto :goto_1

    .line 86
    :cond_4
    invoke-static {p1}, Lkotlin/b;->throwOnFailure(Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    :try_start_2
    iput-object p0, v0, Landroidx/datastore/core/SingleProcessDataStore$readDataOrHandleCorruption$1;->b:Ljava/lang/Object;

    .line 90
    .line 91
    iput v5, v0, Landroidx/datastore/core/SingleProcessDataStore$readDataOrHandleCorruption$1;->m:I

    .line 92
    .line 93
    invoke-virtual {p0, v0}, Landroidx/datastore/core/SingleProcessDataStore;->e(Ly5/c;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object p1
    :try_end_2
    .catch Landroidx/datastore/core/CorruptionException; {:try_start_2 .. :try_end_2} :catch_2

    .line 97
    if-ne p1, v1, :cond_5

    .line 98
    .line 99
    goto :goto_3

    .line 100
    :cond_5
    return-object p1

    .line 101
    :catch_2
    move-exception p1

    .line 102
    move-object v2, p0

    .line 103
    :goto_1
    iget-object v5, v2, Landroidx/datastore/core/SingleProcessDataStore;->c:LY/a;

    .line 104
    .line 105
    iput-object v2, v0, Landroidx/datastore/core/SingleProcessDataStore$readDataOrHandleCorruption$1;->b:Ljava/lang/Object;

    .line 106
    .line 107
    iput-object p1, v0, Landroidx/datastore/core/SingleProcessDataStore$readDataOrHandleCorruption$1;->e:Ljava/lang/Object;

    .line 108
    .line 109
    iput v4, v0, Landroidx/datastore/core/SingleProcessDataStore$readDataOrHandleCorruption$1;->m:I

    .line 110
    .line 111
    invoke-interface {v5, p1, v0}, LY/a;->handleCorruption(Landroidx/datastore/core/CorruptionException;Ly5/c;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v4

    .line 115
    if-ne v4, v1, :cond_6

    .line 116
    .line 117
    goto :goto_3

    .line 118
    :cond_6
    move-object v6, v2

    .line 119
    move-object v2, p1

    .line 120
    move-object p1, v4

    .line 121
    move-object v4, v6

    .line 122
    :goto_2
    :try_start_3
    iput-object v2, v0, Landroidx/datastore/core/SingleProcessDataStore$readDataOrHandleCorruption$1;->b:Ljava/lang/Object;

    .line 123
    .line 124
    iput-object p1, v0, Landroidx/datastore/core/SingleProcessDataStore$readDataOrHandleCorruption$1;->e:Ljava/lang/Object;

    .line 125
    .line 126
    iput v3, v0, Landroidx/datastore/core/SingleProcessDataStore$readDataOrHandleCorruption$1;->m:I

    .line 127
    .line 128
    invoke-virtual {v4, p1, v0}, Landroidx/datastore/core/SingleProcessDataStore;->writeData$datastore_core(Ljava/lang/Object;Ly5/c;)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 132
    if-ne v0, v1, :cond_7

    .line 133
    .line 134
    :goto_3
    return-object v1

    .line 135
    :cond_7
    return-object p1

    .line 136
    :catch_3
    move-exception p1

    .line 137
    move-object v0, v2

    .line 138
    :goto_4
    invoke-static {v0, p1}, Lu5/a;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 139
    .line 140
    .line 141
    throw v0
.end method

.method public final g(Ly5/k;LH5/p;Ly5/c;)Ljava/lang/Object;
    .locals 7

    .line 1
    instance-of v0, p3, Landroidx/datastore/core/SingleProcessDataStore$transformAndWrite$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p3

    .line 6
    check-cast v0, Landroidx/datastore/core/SingleProcessDataStore$transformAndWrite$1;

    .line 7
    .line 8
    iget v1, v0, Landroidx/datastore/core/SingleProcessDataStore$transformAndWrite$1;->n:I

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
    iput v1, v0, Landroidx/datastore/core/SingleProcessDataStore$transformAndWrite$1;->n:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Landroidx/datastore/core/SingleProcessDataStore$transformAndWrite$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p3}, Landroidx/datastore/core/SingleProcessDataStore$transformAndWrite$1;-><init>(Landroidx/datastore/core/SingleProcessDataStore;Ly5/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p3, v0, Landroidx/datastore/core/SingleProcessDataStore$transformAndWrite$1;->j:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lz5/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Landroidx/datastore/core/SingleProcessDataStore$transformAndWrite$1;->n:I

    .line 32
    .line 33
    const/4 v3, 0x0

    .line 34
    const/4 v4, 0x2

    .line 35
    const/4 v5, 0x1

    .line 36
    if-eqz v2, :cond_3

    .line 37
    .line 38
    if-eq v2, v5, :cond_2

    .line 39
    .line 40
    if-ne v2, v4, :cond_1

    .line 41
    .line 42
    iget-object p1, v0, Landroidx/datastore/core/SingleProcessDataStore$transformAndWrite$1;->e:Ljava/lang/Object;

    .line 43
    .line 44
    iget-object p2, v0, Landroidx/datastore/core/SingleProcessDataStore$transformAndWrite$1;->b:Landroidx/datastore/core/SingleProcessDataStore;

    .line 45
    .line 46
    invoke-static {p3}, Lkotlin/b;->throwOnFailure(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    goto :goto_3

    .line 50
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 51
    .line 52
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 53
    .line 54
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw p1

    .line 58
    :cond_2
    iget-object p1, v0, Landroidx/datastore/core/SingleProcessDataStore$transformAndWrite$1;->f:Ljava/lang/Object;

    .line 59
    .line 60
    iget-object p2, v0, Landroidx/datastore/core/SingleProcessDataStore$transformAndWrite$1;->e:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast p2, LY/b;

    .line 63
    .line 64
    iget-object v2, v0, Landroidx/datastore/core/SingleProcessDataStore$transformAndWrite$1;->b:Landroidx/datastore/core/SingleProcessDataStore;

    .line 65
    .line 66
    invoke-static {p3}, Lkotlin/b;->throwOnFailure(Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_3
    invoke-static {p3}, Lkotlin/b;->throwOnFailure(Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    iget-object p3, p0, Landroidx/datastore/core/SingleProcessDataStore;->g:LU5/k;

    .line 74
    .line 75
    check-cast p3, Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 76
    .line 77
    invoke-virtual {p3}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object p3

    .line 81
    check-cast p3, LY/b;

    .line 82
    .line 83
    invoke-virtual {p3}, LY/b;->checkHashCode()V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p3}, LY/b;->getValue()Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    new-instance v6, Landroidx/datastore/core/SingleProcessDataStore$transformAndWrite$newData$1;

    .line 91
    .line 92
    invoke-direct {v6, p2, v2, v3}, Landroidx/datastore/core/SingleProcessDataStore$transformAndWrite$newData$1;-><init>(LH5/p;Ljava/lang/Object;Ly5/c;)V

    .line 93
    .line 94
    .line 95
    iput-object p0, v0, Landroidx/datastore/core/SingleProcessDataStore$transformAndWrite$1;->b:Landroidx/datastore/core/SingleProcessDataStore;

    .line 96
    .line 97
    iput-object p3, v0, Landroidx/datastore/core/SingleProcessDataStore$transformAndWrite$1;->e:Ljava/lang/Object;

    .line 98
    .line 99
    iput-object v2, v0, Landroidx/datastore/core/SingleProcessDataStore$transformAndWrite$1;->f:Ljava/lang/Object;

    .line 100
    .line 101
    iput v5, v0, Landroidx/datastore/core/SingleProcessDataStore$transformAndWrite$1;->n:I

    .line 102
    .line 103
    invoke-static {p1, v6, v0}, LR5/g;->withContext(Ly5/k;LH5/p;Ly5/c;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    if-ne p1, v1, :cond_4

    .line 108
    .line 109
    goto :goto_2

    .line 110
    :cond_4
    move-object p2, p3

    .line 111
    move-object p3, p1

    .line 112
    move-object p1, v2

    .line 113
    move-object v2, p0

    .line 114
    :goto_1
    invoke-virtual {p2}, LY/b;->checkHashCode()V

    .line 115
    .line 116
    .line 117
    invoke-static {p1, p3}, Lkotlin/jvm/internal/j;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result p2

    .line 121
    if-eqz p2, :cond_5

    .line 122
    .line 123
    return-object p1

    .line 124
    :cond_5
    iput-object v2, v0, Landroidx/datastore/core/SingleProcessDataStore$transformAndWrite$1;->b:Landroidx/datastore/core/SingleProcessDataStore;

    .line 125
    .line 126
    iput-object p3, v0, Landroidx/datastore/core/SingleProcessDataStore$transformAndWrite$1;->e:Ljava/lang/Object;

    .line 127
    .line 128
    iput-object v3, v0, Landroidx/datastore/core/SingleProcessDataStore$transformAndWrite$1;->f:Ljava/lang/Object;

    .line 129
    .line 130
    iput v4, v0, Landroidx/datastore/core/SingleProcessDataStore$transformAndWrite$1;->n:I

    .line 131
    .line 132
    invoke-virtual {v2, p3, v0}, Landroidx/datastore/core/SingleProcessDataStore;->writeData$datastore_core(Ljava/lang/Object;Ly5/c;)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    if-ne p1, v1, :cond_6

    .line 137
    .line 138
    :goto_2
    return-object v1

    .line 139
    :cond_6
    move-object p1, p3

    .line 140
    move-object p2, v2

    .line 141
    :goto_3
    iget-object p2, p2, Landroidx/datastore/core/SingleProcessDataStore;->g:LU5/k;

    .line 142
    .line 143
    new-instance p3, LY/b;

    .line 144
    .line 145
    if-eqz p1, :cond_7

    .line 146
    .line 147
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 148
    .line 149
    .line 150
    move-result v0

    .line 151
    goto :goto_4

    .line 152
    :cond_7
    const/4 v0, 0x0

    .line 153
    :goto_4
    invoke-direct {p3, p1, v0}, LY/b;-><init>(Ljava/lang/Object;I)V

    .line 154
    .line 155
    .line 156
    check-cast p2, Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 157
    .line 158
    invoke-virtual {p2, p3}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    .line 159
    .line 160
    .line 161
    return-object p1
.end method

.method public getData()LU5/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LU5/b;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/datastore/core/SingleProcessDataStore;->d:LU5/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public updateData(LH5/p;Ly5/c;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LH5/p;",
            "Ly5/c;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-static {v0, v1, v0}, LR5/x;->CompletableDeferred$default(LR5/q0;ILjava/lang/Object;)LR5/v;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Landroidx/datastore/core/SingleProcessDataStore;->g:LU5/k;

    .line 8
    .line 9
    check-cast v1, Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 10
    .line 11
    invoke-virtual {v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, LY/p;

    .line 16
    .line 17
    new-instance v2, LY/l;

    .line 18
    .line 19
    invoke-interface {p2}, Ly5/c;->getContext()Ly5/k;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-direct {v2, p1, v0, v1, v3}, LY/l;-><init>(LH5/p;LR5/v;LY/p;Ly5/k;)V

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Landroidx/datastore/core/SingleProcessDataStore;->i:Landroidx/datastore/core/SimpleActor;

    .line 27
    .line 28
    invoke-virtual {p1, v2}, Landroidx/datastore/core/SimpleActor;->offer(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    check-cast v0, LR5/w;

    .line 32
    .line 33
    invoke-virtual {v0, p2}, LR5/w;->await(Ly5/c;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    return-object p1
.end method

.method public final writeData$datastore_core(Ljava/lang/Object;Ly5/c;)Ljava/lang/Object;
    .locals 7
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
    const-string v0, "Unable to rename "

    .line 2
    .line 3
    instance-of v1, p2, Landroidx/datastore/core/SingleProcessDataStore$writeData$1;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    move-object v1, p2

    .line 8
    check-cast v1, Landroidx/datastore/core/SingleProcessDataStore$writeData$1;

    .line 9
    .line 10
    iget v2, v1, Landroidx/datastore/core/SingleProcessDataStore$writeData$1;->p:I

    .line 11
    .line 12
    const/high16 v3, -0x80000000

    .line 13
    .line 14
    and-int v4, v2, v3

    .line 15
    .line 16
    if-eqz v4, :cond_0

    .line 17
    .line 18
    sub-int/2addr v2, v3

    .line 19
    iput v2, v1, Landroidx/datastore/core/SingleProcessDataStore$writeData$1;->p:I

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance v1, Landroidx/datastore/core/SingleProcessDataStore$writeData$1;

    .line 23
    .line 24
    invoke-direct {v1, p0, p2}, Landroidx/datastore/core/SingleProcessDataStore$writeData$1;-><init>(Landroidx/datastore/core/SingleProcessDataStore;Ly5/c;)V

    .line 25
    .line 26
    .line 27
    :goto_0
    iget-object p2, v1, Landroidx/datastore/core/SingleProcessDataStore$writeData$1;->m:Ljava/lang/Object;

    .line 28
    .line 29
    invoke-static {}, Lz5/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    iget v3, v1, Landroidx/datastore/core/SingleProcessDataStore$writeData$1;->p:I

    .line 34
    .line 35
    const/4 v4, 0x1

    .line 36
    if-eqz v3, :cond_2

    .line 37
    .line 38
    if-ne v3, v4, :cond_1

    .line 39
    .line 40
    iget-object p1, v1, Landroidx/datastore/core/SingleProcessDataStore$writeData$1;->j:Ljava/io/FileOutputStream;

    .line 41
    .line 42
    iget-object v2, v1, Landroidx/datastore/core/SingleProcessDataStore$writeData$1;->f:Ljava/io/FileOutputStream;

    .line 43
    .line 44
    iget-object v3, v1, Landroidx/datastore/core/SingleProcessDataStore$writeData$1;->e:Ljava/io/File;

    .line 45
    .line 46
    iget-object v1, v1, Landroidx/datastore/core/SingleProcessDataStore$writeData$1;->b:Landroidx/datastore/core/SingleProcessDataStore;

    .line 47
    .line 48
    :try_start_0
    invoke-static {p2}, Lkotlin/b;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    .line 50
    .line 51
    goto :goto_2

    .line 52
    :catchall_0
    move-exception p1

    .line 53
    goto/16 :goto_4

    .line 54
    .line 55
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 56
    .line 57
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 58
    .line 59
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    throw p1

    .line 63
    :cond_2
    invoke-static {p2}, Lkotlin/b;->throwOnFailure(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0}, Landroidx/datastore/core/SingleProcessDataStore;->a()Ljava/io/File;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    invoke-virtual {p2}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    if-nez v3, :cond_3

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_3
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 82
    .line 83
    .line 84
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    if-eqz v3, :cond_7

    .line 89
    .line 90
    :goto_1
    new-instance v3, Ljava/io/File;

    .line 91
    .line 92
    invoke-virtual {p0}, Landroidx/datastore/core/SingleProcessDataStore;->a()Ljava/io/File;

    .line 93
    .line 94
    .line 95
    move-result-object p2

    .line 96
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p2

    .line 100
    iget-object v5, p0, Landroidx/datastore/core/SingleProcessDataStore;->e:Ljava/lang/String;

    .line 101
    .line 102
    invoke-static {p2, v5}, Lkotlin/jvm/internal/j;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p2

    .line 106
    invoke-direct {v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    :try_start_1
    new-instance p2, Ljava/io/FileOutputStream;

    .line 110
    .line 111
    invoke-direct {p2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 112
    .line 113
    .line 114
    :try_start_2
    iget-object v5, p0, Landroidx/datastore/core/SingleProcessDataStore;->b:LY/i;

    .line 115
    .line 116
    new-instance v6, LY/n;

    .line 117
    .line 118
    invoke-direct {v6, p2}, LY/n;-><init>(Ljava/io/FileOutputStream;)V

    .line 119
    .line 120
    .line 121
    iput-object p0, v1, Landroidx/datastore/core/SingleProcessDataStore$writeData$1;->b:Landroidx/datastore/core/SingleProcessDataStore;

    .line 122
    .line 123
    iput-object v3, v1, Landroidx/datastore/core/SingleProcessDataStore$writeData$1;->e:Ljava/io/File;

    .line 124
    .line 125
    iput-object p2, v1, Landroidx/datastore/core/SingleProcessDataStore$writeData$1;->f:Ljava/io/FileOutputStream;

    .line 126
    .line 127
    iput-object p2, v1, Landroidx/datastore/core/SingleProcessDataStore$writeData$1;->j:Ljava/io/FileOutputStream;

    .line 128
    .line 129
    iput v4, v1, Landroidx/datastore/core/SingleProcessDataStore$writeData$1;->p:I

    .line 130
    .line 131
    check-cast v5, Lb0/g;

    .line 132
    .line 133
    invoke-virtual {v5, p1, v6, v1}, Lb0/g;->writeTo(Ljava/lang/Object;Ljava/io/OutputStream;Ly5/c;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 137
    if-ne p1, v2, :cond_4

    .line 138
    .line 139
    return-object v2

    .line 140
    :cond_4
    move-object v1, p0

    .line 141
    move-object p1, p2

    .line 142
    move-object v2, p1

    .line 143
    :goto_2
    :try_start_3
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    invoke-virtual {p1}, Ljava/io/FileDescriptor;->sync()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 148
    .line 149
    .line 150
    const/4 p1, 0x0

    .line 151
    :try_start_4
    invoke-static {v2, p1}, LF5/a;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v1}, Landroidx/datastore/core/SingleProcessDataStore;->a()Ljava/io/File;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    invoke-virtual {v3, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 159
    .line 160
    .line 161
    move-result p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 162
    if-eqz p1, :cond_5

    .line 163
    .line 164
    sget-object p1, Lu5/j;->a:Lu5/j;

    .line 165
    .line 166
    return-object p1

    .line 167
    :cond_5
    :try_start_5
    new-instance p1, Ljava/io/IOException;

    .line 168
    .line 169
    new-instance p2, Ljava/lang/StringBuilder;

    .line 170
    .line 171
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    const-string v0, ".This likely means that there are multiple instances of DataStore for this file. Ensure that you are only creating a single instance of datastore for this file."

    .line 178
    .line 179
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object p2

    .line 186
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    throw p1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 190
    :catch_0
    move-exception p1

    .line 191
    goto :goto_5

    .line 192
    :goto_3
    move-object v2, p2

    .line 193
    goto :goto_4

    .line 194
    :catchall_1
    move-exception p1

    .line 195
    goto :goto_3

    .line 196
    :goto_4
    :try_start_6
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 197
    :catchall_2
    move-exception p2

    .line 198
    :try_start_7
    invoke-static {v2, p1}, LF5/a;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 199
    .line 200
    .line 201
    throw p2
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    .line 202
    :goto_5
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 203
    .line 204
    .line 205
    move-result p2

    .line 206
    if-eqz p2, :cond_6

    .line 207
    .line 208
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 209
    .line 210
    .line 211
    :cond_6
    throw p1

    .line 212
    :cond_7
    new-instance p1, Ljava/io/IOException;

    .line 213
    .line 214
    const-string v0, "Unable to create parent directories of "

    .line 215
    .line 216
    invoke-static {v0, p2}, Lkotlin/jvm/internal/j;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object p2

    .line 220
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    throw p1
.end method
