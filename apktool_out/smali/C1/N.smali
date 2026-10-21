.class public final LC1/N;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final B:Ljava/lang/String;


# instance fields
.field public volatile A:Z

.field public final b:Landroid/content/Context;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/util/List;

.field public final j:LB1/Q;

.field public final m:LK1/E;

.field public n:LB1/r;

.field public final p:LN1/c;

.field public q:LB1/q;

.field public final r:LB1/c;

.field public final s:LJ1/a;

.field public final t:Landroidx/work/impl/WorkDatabase;

.field public final u:LK1/F;

.field public final v:LK1/b;

.field public final w:Ljava/util/List;

.field public x:Ljava/lang/String;

.field public final y:LM1/g;

.field public final z:LM1/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "WorkerWrapper"

    .line 2
    .line 3
    invoke-static {v0}, LB1/t;->tagWithPrefix(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, LC1/N;->B:Ljava/lang/String;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(LC1/M;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, LB1/q;->failure()LB1/q;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, LC1/N;->q:LB1/q;

    .line 9
    .line 10
    invoke-static {}, LM1/g;->create()LM1/g;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, LC1/N;->y:LM1/g;

    .line 15
    .line 16
    invoke-static {}, LM1/g;->create()LM1/g;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, LC1/N;->z:LM1/g;

    .line 21
    .line 22
    iget-object v0, p1, LC1/M;->a:Landroid/content/Context;

    .line 23
    .line 24
    iput-object v0, p0, LC1/N;->b:Landroid/content/Context;

    .line 25
    .line 26
    iget-object v0, p1, LC1/M;->c:LN1/c;

    .line 27
    .line 28
    iput-object v0, p0, LC1/N;->p:LN1/c;

    .line 29
    .line 30
    iget-object v0, p1, LC1/M;->b:LJ1/a;

    .line 31
    .line 32
    iput-object v0, p0, LC1/N;->s:LJ1/a;

    .line 33
    .line 34
    iget-object v0, p1, LC1/M;->f:LK1/E;

    .line 35
    .line 36
    iput-object v0, p0, LC1/N;->m:LK1/E;

    .line 37
    .line 38
    iget-object v0, v0, LK1/E;->a:Ljava/lang/String;

    .line 39
    .line 40
    iput-object v0, p0, LC1/N;->e:Ljava/lang/String;

    .line 41
    .line 42
    iget-object v0, p1, LC1/M;->g:Ljava/util/List;

    .line 43
    .line 44
    iput-object v0, p0, LC1/N;->f:Ljava/util/List;

    .line 45
    .line 46
    iget-object v0, p1, LC1/M;->i:LB1/Q;

    .line 47
    .line 48
    iput-object v0, p0, LC1/N;->j:LB1/Q;

    .line 49
    .line 50
    const/4 v0, 0x0

    .line 51
    iput-object v0, p0, LC1/N;->n:LB1/r;

    .line 52
    .line 53
    iget-object v0, p1, LC1/M;->d:LB1/c;

    .line 54
    .line 55
    iput-object v0, p0, LC1/N;->r:LB1/c;

    .line 56
    .line 57
    iget-object v0, p1, LC1/M;->e:Landroidx/work/impl/WorkDatabase;

    .line 58
    .line 59
    iput-object v0, p0, LC1/N;->t:Landroidx/work/impl/WorkDatabase;

    .line 60
    .line 61
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->workSpecDao()LK1/F;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    iput-object v1, p0, LC1/N;->u:LK1/F;

    .line 66
    .line 67
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->dependencyDao()LK1/b;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    iput-object v0, p0, LC1/N;->v:LK1/b;

    .line 72
    .line 73
    iget-object p1, p1, LC1/M;->h:Ljava/util/List;

    .line 74
    .line 75
    iput-object p1, p0, LC1/N;->w:Ljava/util/List;

    .line 76
    .line 77
    return-void
.end method


# virtual methods
.method public final a(LB1/q;)V
    .locals 11

    .line 1
    instance-of v0, p1, LB1/p;

    .line 2
    .line 3
    iget-object v1, p0, LC1/N;->m:LK1/E;

    .line 4
    .line 5
    sget-object v2, LC1/N;->B:Ljava/lang/String;

    .line 6
    .line 7
    if-eqz v0, :cond_3

    .line 8
    .line 9
    invoke-static {}, LB1/t;->get()LB1/t;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v3, "Worker result SUCCESS for "

    .line 16
    .line 17
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object v3, p0, LC1/N;->x:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {p1, v2, v0}, LB1/t;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, LK1/E;->isPeriodic()Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-eqz p1, :cond_0

    .line 37
    .line 38
    invoke-virtual {p0}, LC1/N;->e()V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_0
    iget-object p1, p0, LC1/N;->v:LK1/b;

    .line 43
    .line 44
    iget-object v0, p0, LC1/N;->e:Ljava/lang/String;

    .line 45
    .line 46
    iget-object v1, p0, LC1/N;->u:LK1/F;

    .line 47
    .line 48
    iget-object v3, p0, LC1/N;->t:Landroidx/work/impl/WorkDatabase;

    .line 49
    .line 50
    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 51
    .line 52
    .line 53
    const/4 v4, 0x0

    .line 54
    :try_start_0
    sget-object v5, Landroidx/work/WorkInfo$State;->f:Landroidx/work/WorkInfo$State;

    .line 55
    .line 56
    move-object v6, v1

    .line 57
    check-cast v6, LK1/U;

    .line 58
    .line 59
    invoke-virtual {v6, v5, v0}, LK1/U;->setState(Landroidx/work/WorkInfo$State;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    iget-object v5, p0, LC1/N;->q:LB1/q;

    .line 63
    .line 64
    check-cast v5, LB1/p;

    .line 65
    .line 66
    invoke-virtual {v5}, LB1/p;->getOutputData()LB1/h;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    move-object v6, v1

    .line 71
    check-cast v6, LK1/U;

    .line 72
    .line 73
    invoke-virtual {v6, v0, v5}, LK1/U;->setOutput(Ljava/lang/String;LB1/h;)V

    .line 74
    .line 75
    .line 76
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 77
    .line 78
    .line 79
    move-result-wide v5

    .line 80
    move-object v7, p1

    .line 81
    check-cast v7, LK1/d;

    .line 82
    .line 83
    invoke-virtual {v7, v0}, LK1/d;->getDependentWorkIds(Ljava/lang/String;)Ljava/util/List;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 92
    .line 93
    .line 94
    move-result v7

    .line 95
    if-eqz v7, :cond_2

    .line 96
    .line 97
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v7

    .line 101
    check-cast v7, Ljava/lang/String;

    .line 102
    .line 103
    move-object v8, v1

    .line 104
    check-cast v8, LK1/U;

    .line 105
    .line 106
    invoke-virtual {v8, v7}, LK1/U;->getState(Ljava/lang/String;)Landroidx/work/WorkInfo$State;

    .line 107
    .line 108
    .line 109
    move-result-object v8

    .line 110
    sget-object v9, Landroidx/work/WorkInfo$State;->m:Landroidx/work/WorkInfo$State;

    .line 111
    .line 112
    if-ne v8, v9, :cond_1

    .line 113
    .line 114
    move-object v8, p1

    .line 115
    check-cast v8, LK1/d;

    .line 116
    .line 117
    invoke-virtual {v8, v7}, LK1/d;->hasCompletedAllPrerequisites(Ljava/lang/String;)Z

    .line 118
    .line 119
    .line 120
    move-result v8

    .line 121
    if-eqz v8, :cond_1

    .line 122
    .line 123
    invoke-static {}, LB1/t;->get()LB1/t;

    .line 124
    .line 125
    .line 126
    move-result-object v8

    .line 127
    new-instance v9, Ljava/lang/StringBuilder;

    .line 128
    .line 129
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 130
    .line 131
    .line 132
    const-string v10, "Setting status to enqueued for "

    .line 133
    .line 134
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v9

    .line 144
    invoke-virtual {v8, v2, v9}, LB1/t;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    sget-object v8, Landroidx/work/WorkInfo$State;->b:Landroidx/work/WorkInfo$State;

    .line 148
    .line 149
    move-object v9, v1

    .line 150
    check-cast v9, LK1/U;

    .line 151
    .line 152
    invoke-virtual {v9, v8, v7}, LK1/U;->setState(Landroidx/work/WorkInfo$State;Ljava/lang/String;)I

    .line 153
    .line 154
    .line 155
    move-object v8, v1

    .line 156
    check-cast v8, LK1/U;

    .line 157
    .line 158
    invoke-virtual {v8, v7, v5, v6}, LK1/U;->setLastEnqueuedTime(Ljava/lang/String;J)V

    .line 159
    .line 160
    .line 161
    goto :goto_0

    .line 162
    :catchall_0
    move-exception p1

    .line 163
    goto :goto_1

    .line 164
    :cond_2
    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    .line 166
    .line 167
    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 168
    .line 169
    .line 170
    invoke-virtual {p0, v4}, LC1/N;->f(Z)V

    .line 171
    .line 172
    .line 173
    return-void

    .line 174
    :goto_1
    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 175
    .line 176
    .line 177
    invoke-virtual {p0, v4}, LC1/N;->f(Z)V

    .line 178
    .line 179
    .line 180
    throw p1

    .line 181
    :cond_3
    instance-of p1, p1, LB1/o;

    .line 182
    .line 183
    if-eqz p1, :cond_4

    .line 184
    .line 185
    invoke-static {}, LB1/t;->get()LB1/t;

    .line 186
    .line 187
    .line 188
    move-result-object p1

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    .line 190
    .line 191
    const-string v1, "Worker result RETRY for "

    .line 192
    .line 193
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    iget-object v1, p0, LC1/N;->x:Ljava/lang/String;

    .line 197
    .line 198
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    invoke-virtual {p1, v2, v0}, LB1/t;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {p0}, LC1/N;->d()V

    .line 209
    .line 210
    .line 211
    return-void

    .line 212
    :cond_4
    invoke-static {}, LB1/t;->get()LB1/t;

    .line 213
    .line 214
    .line 215
    move-result-object p1

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    .line 217
    .line 218
    const-string v3, "Worker result FAILURE for "

    .line 219
    .line 220
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    iget-object v3, p0, LC1/N;->x:Ljava/lang/String;

    .line 224
    .line 225
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    invoke-virtual {p1, v2, v0}, LB1/t;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {v1}, LK1/E;->isPeriodic()Z

    .line 236
    .line 237
    .line 238
    move-result p1

    .line 239
    if-eqz p1, :cond_5

    .line 240
    .line 241
    invoke-virtual {p0}, LC1/N;->e()V

    .line 242
    .line 243
    .line 244
    return-void

    .line 245
    :cond_5
    invoke-virtual {p0}, LC1/N;->h()V

    .line 246
    .line 247
    .line 248
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/LinkedList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    :goto_0
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-nez p1, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Ljava/lang/String;

    .line 20
    .line 21
    iget-object v1, p0, LC1/N;->u:LK1/F;

    .line 22
    .line 23
    move-object v2, v1

    .line 24
    check-cast v2, LK1/U;

    .line 25
    .line 26
    invoke-virtual {v2, p1}, LK1/U;->getState(Ljava/lang/String;)Landroidx/work/WorkInfo$State;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    sget-object v3, Landroidx/work/WorkInfo$State;->n:Landroidx/work/WorkInfo$State;

    .line 31
    .line 32
    if-eq v2, v3, :cond_0

    .line 33
    .line 34
    sget-object v2, Landroidx/work/WorkInfo$State;->j:Landroidx/work/WorkInfo$State;

    .line 35
    .line 36
    check-cast v1, LK1/U;

    .line 37
    .line 38
    invoke-virtual {v1, v2, p1}, LK1/U;->setState(Landroidx/work/WorkInfo$State;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    :cond_0
    iget-object v1, p0, LC1/N;->v:LK1/b;

    .line 42
    .line 43
    check-cast v1, LK1/d;

    .line 44
    .line 45
    invoke-virtual {v1, p1}, LK1/d;->getDependentWorkIds(Ljava/lang/String;)Ljava/util/List;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    return-void
.end method

.method public final c()V
    .locals 5

    .line 1
    invoke-virtual {p0}, LC1/N;->i()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, LC1/N;->t:Landroidx/work/impl/WorkDatabase;

    .line 6
    .line 7
    iget-object v2, p0, LC1/N;->e:Ljava/lang/String;

    .line 8
    .line 9
    if-nez v0, :cond_3

    .line 10
    .line 11
    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 12
    .line 13
    .line 14
    :try_start_0
    iget-object v0, p0, LC1/N;->u:LK1/F;

    .line 15
    .line 16
    check-cast v0, LK1/U;

    .line 17
    .line 18
    invoke-virtual {v0, v2}, LK1/U;->getState(Ljava/lang/String;)Landroidx/work/WorkInfo$State;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->workProgressDao()LK1/x;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    check-cast v3, LK1/B;

    .line 27
    .line 28
    invoke-virtual {v3, v2}, LK1/B;->delete(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    if-nez v0, :cond_0

    .line 32
    .line 33
    const/4 v0, 0x0

    .line 34
    invoke-virtual {p0, v0}, LC1/N;->f(Z)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catchall_0
    move-exception v0

    .line 39
    goto :goto_1

    .line 40
    :cond_0
    sget-object v3, Landroidx/work/WorkInfo$State;->e:Landroidx/work/WorkInfo$State;

    .line 41
    .line 42
    if-ne v0, v3, :cond_1

    .line 43
    .line 44
    iget-object v0, p0, LC1/N;->q:LB1/q;

    .line 45
    .line 46
    invoke-virtual {p0, v0}, LC1/N;->a(LB1/q;)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    invoke-virtual {v0}, Landroidx/work/WorkInfo$State;->isFinished()Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-nez v0, :cond_2

    .line 55
    .line 56
    invoke-virtual {p0}, LC1/N;->d()V

    .line 57
    .line 58
    .line 59
    :cond_2
    :goto_0
    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 63
    .line 64
    .line 65
    goto :goto_2

    .line 66
    :goto_1
    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 67
    .line 68
    .line 69
    throw v0

    .line 70
    :cond_3
    :goto_2
    iget-object v0, p0, LC1/N;->f:Ljava/util/List;

    .line 71
    .line 72
    if-eqz v0, :cond_5

    .line 73
    .line 74
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 79
    .line 80
    .line 81
    move-result v4

    .line 82
    if-eqz v4, :cond_4

    .line 83
    .line 84
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    check-cast v4, LC1/t;

    .line 89
    .line 90
    invoke-interface {v4, v2}, LC1/t;->cancel(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    goto :goto_3

    .line 94
    :cond_4
    iget-object v2, p0, LC1/N;->r:LB1/c;

    .line 95
    .line 96
    invoke-static {v2, v1, v0}, LC1/u;->schedule(LB1/c;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    .line 97
    .line 98
    .line 99
    :cond_5
    return-void
.end method

.method public final d()V
    .locals 7

    .line 1
    iget-object v0, p0, LC1/N;->e:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, LC1/N;->u:LK1/F;

    .line 4
    .line 5
    iget-object v2, p0, LC1/N;->t:Landroidx/work/impl/WorkDatabase;

    .line 6
    .line 7
    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 8
    .line 9
    .line 10
    const/4 v3, 0x1

    .line 11
    :try_start_0
    sget-object v4, Landroidx/work/WorkInfo$State;->b:Landroidx/work/WorkInfo$State;

    .line 12
    .line 13
    move-object v5, v1

    .line 14
    check-cast v5, LK1/U;

    .line 15
    .line 16
    invoke-virtual {v5, v4, v0}, LK1/U;->setState(Landroidx/work/WorkInfo$State;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 20
    .line 21
    .line 22
    move-result-wide v4

    .line 23
    move-object v6, v1

    .line 24
    check-cast v6, LK1/U;

    .line 25
    .line 26
    invoke-virtual {v6, v0, v4, v5}, LK1/U;->setLastEnqueuedTime(Ljava/lang/String;J)V

    .line 27
    .line 28
    .line 29
    check-cast v1, LK1/U;

    .line 30
    .line 31
    const-wide/16 v4, -0x1

    .line 32
    .line 33
    invoke-virtual {v1, v0, v4, v5}, LK1/U;->markWorkSpecScheduled(Ljava/lang/String;J)I

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, v3}, LC1/N;->f(Z)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :catchall_0
    move-exception v0

    .line 47
    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, v3}, LC1/N;->f(Z)V

    .line 51
    .line 52
    .line 53
    throw v0
.end method

.method public final e()V
    .locals 7

    .line 1
    iget-object v0, p0, LC1/N;->e:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, LC1/N;->u:LK1/F;

    .line 4
    .line 5
    iget-object v2, p0, LC1/N;->t:Landroidx/work/impl/WorkDatabase;

    .line 6
    .line 7
    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 8
    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 12
    .line 13
    .line 14
    move-result-wide v4

    .line 15
    move-object v6, v1

    .line 16
    check-cast v6, LK1/U;

    .line 17
    .line 18
    invoke-virtual {v6, v0, v4, v5}, LK1/U;->setLastEnqueuedTime(Ljava/lang/String;J)V

    .line 19
    .line 20
    .line 21
    sget-object v4, Landroidx/work/WorkInfo$State;->b:Landroidx/work/WorkInfo$State;

    .line 22
    .line 23
    move-object v5, v1

    .line 24
    check-cast v5, LK1/U;

    .line 25
    .line 26
    invoke-virtual {v5, v4, v0}, LK1/U;->setState(Landroidx/work/WorkInfo$State;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    move-object v4, v1

    .line 30
    check-cast v4, LK1/U;

    .line 31
    .line 32
    invoke-virtual {v4, v0}, LK1/U;->resetWorkSpecRunAttemptCount(Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    move-object v4, v1

    .line 36
    check-cast v4, LK1/U;

    .line 37
    .line 38
    invoke-virtual {v4, v0}, LK1/U;->incrementPeriodCount(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    check-cast v1, LK1/U;

    .line 42
    .line 43
    const-wide/16 v4, -0x1

    .line 44
    .line 45
    invoke-virtual {v1, v0, v4, v5}, LK1/U;->markWorkSpecScheduled(Ljava/lang/String;J)I

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, v3}, LC1/N;->f(Z)V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :catchall_0
    move-exception v0

    .line 59
    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, v3}, LC1/N;->f(Z)V

    .line 63
    .line 64
    .line 65
    throw v0
.end method

.method public final f(Z)V
    .locals 6

    .line 1
    iget-object v0, p0, LC1/N;->s:LJ1/a;

    .line 2
    .line 3
    iget-object v1, p0, LC1/N;->u:LK1/F;

    .line 4
    .line 5
    iget-object v2, p0, LC1/N;->t:Landroidx/work/impl/WorkDatabase;

    .line 6
    .line 7
    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 8
    .line 9
    .line 10
    :try_start_0
    invoke-virtual {v2}, Landroidx/work/impl/WorkDatabase;->workSpecDao()LK1/F;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    check-cast v3, LK1/U;

    .line 15
    .line 16
    invoke-virtual {v3}, LK1/U;->hasUnfinishedWork()Z

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-nez v3, :cond_0

    .line 21
    .line 22
    iget-object v3, p0, LC1/N;->b:Landroid/content/Context;

    .line 23
    .line 24
    const-class v4, Landroidx/work/impl/background/systemalarm/RescheduleReceiver;

    .line 25
    .line 26
    const/4 v5, 0x0

    .line 27
    invoke-static {v3, v4, v5}, LL1/p;->setComponentEnabled(Landroid/content/Context;Ljava/lang/Class;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    move-exception p1

    .line 32
    goto :goto_1

    .line 33
    :cond_0
    :goto_0
    iget-object v3, p0, LC1/N;->e:Ljava/lang/String;

    .line 34
    .line 35
    if-eqz p1, :cond_1

    .line 36
    .line 37
    :try_start_1
    sget-object v4, Landroidx/work/WorkInfo$State;->b:Landroidx/work/WorkInfo$State;

    .line 38
    .line 39
    move-object v5, v1

    .line 40
    check-cast v5, LK1/U;

    .line 41
    .line 42
    invoke-virtual {v5, v4, v3}, LK1/U;->setState(Landroidx/work/WorkInfo$State;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    check-cast v1, LK1/U;

    .line 46
    .line 47
    const-wide/16 v4, -0x1

    .line 48
    .line 49
    invoke-virtual {v1, v3, v4, v5}, LK1/U;->markWorkSpecScheduled(Ljava/lang/String;J)I

    .line 50
    .line 51
    .line 52
    :cond_1
    iget-object v1, p0, LC1/N;->m:LK1/E;

    .line 53
    .line 54
    if-eqz v1, :cond_2

    .line 55
    .line 56
    iget-object v1, p0, LC1/N;->n:LB1/r;

    .line 57
    .line 58
    if-eqz v1, :cond_2

    .line 59
    .line 60
    move-object v1, v0

    .line 61
    check-cast v1, LC1/r;

    .line 62
    .line 63
    invoke-virtual {v1, v3}, LC1/r;->isEnqueuedInForeground(Ljava/lang/String;)Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-eqz v1, :cond_2

    .line 68
    .line 69
    check-cast v0, LC1/r;

    .line 70
    .line 71
    invoke-virtual {v0, v3}, LC1/r;->stopForeground(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    :cond_2
    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    .line 76
    .line 77
    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 78
    .line 79
    .line 80
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    iget-object v0, p0, LC1/N;->y:LM1/g;

    .line 85
    .line 86
    invoke-virtual {v0, p1}, LM1/g;->set(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    return-void

    .line 90
    :goto_1
    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 91
    .line 92
    .line 93
    throw p1
.end method

.method public final g()V
    .locals 6

    .line 1
    iget-object v0, p0, LC1/N;->u:LK1/F;

    .line 2
    .line 3
    check-cast v0, LK1/U;

    .line 4
    .line 5
    iget-object v1, p0, LC1/N;->e:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, LK1/U;->getState(Ljava/lang/String;)Landroidx/work/WorkInfo$State;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sget-object v2, Landroidx/work/WorkInfo$State;->e:Landroidx/work/WorkInfo$State;

    .line 12
    .line 13
    const-string v3, "Status for "

    .line 14
    .line 15
    sget-object v4, LC1/N;->B:Ljava/lang/String;

    .line 16
    .line 17
    if-ne v0, v2, :cond_0

    .line 18
    .line 19
    invoke-static {}, LB1/t;->get()LB1/t;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    new-instance v2, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v1, " is RUNNING; not doing any work and rescheduling for later execution"

    .line 32
    .line 33
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v0, v4, v1}, LB1/t;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    const/4 v0, 0x1

    .line 44
    invoke-virtual {p0, v0}, LC1/N;->f(Z)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :cond_0
    invoke-static {}, LB1/t;->get()LB1/t;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    new-instance v5, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v1, " is "

    .line 61
    .line 62
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string v0, " ; not doing any work"

    .line 69
    .line 70
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-virtual {v2, v4, v0}, LB1/t;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    const/4 v0, 0x0

    .line 81
    invoke-virtual {p0, v0}, LC1/N;->f(Z)V

    .line 82
    .line 83
    .line 84
    return-void
.end method

.method public getFuture()LV3/F;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LV3/F;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LC1/N;->y:LM1/g;

    .line 2
    .line 3
    return-object v0
.end method

.method public getWorkGenerationalId()LK1/r;
    .locals 1

    .line 1
    iget-object v0, p0, LC1/N;->m:LK1/E;

    .line 2
    .line 3
    invoke-static {v0}, LK1/V;->generationalId(LK1/E;)LK1/r;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getWorkSpec()LK1/E;
    .locals 1

    .line 1
    iget-object v0, p0, LC1/N;->m:LK1/E;

    .line 2
    .line 3
    return-object v0
.end method

.method public final h()V
    .locals 5

    .line 1
    iget-object v0, p0, LC1/N;->e:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, LC1/N;->t:Landroidx/work/impl/WorkDatabase;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    :try_start_0
    invoke-virtual {p0, v0}, LC1/N;->b(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v3, p0, LC1/N;->q:LB1/q;

    .line 13
    .line 14
    check-cast v3, LB1/n;

    .line 15
    .line 16
    invoke-virtual {v3}, LB1/n;->getOutputData()LB1/h;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    iget-object v4, p0, LC1/N;->u:LK1/F;

    .line 21
    .line 22
    check-cast v4, LK1/U;

    .line 23
    .line 24
    invoke-virtual {v4, v0, v3}, LK1/U;->setOutput(Ljava/lang/String;LB1/h;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, v2}, LC1/N;->f(Z)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :catchall_0
    move-exception v0

    .line 38
    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v2}, LC1/N;->f(Z)V

    .line 42
    .line 43
    .line 44
    throw v0
.end method

.method public final i()Z
    .locals 5

    .line 1
    iget-boolean v0, p0, LC1/N;->A:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    invoke-static {}, LB1/t;->get()LB1/t;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sget-object v2, LC1/N;->B:Ljava/lang/String;

    .line 11
    .line 12
    new-instance v3, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v4, "Work interrupted for "

    .line 15
    .line 16
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object v4, p0, LC1/N;->x:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-virtual {v0, v2, v3}, LB1/t;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, LC1/N;->u:LK1/F;

    .line 32
    .line 33
    iget-object v2, p0, LC1/N;->e:Ljava/lang/String;

    .line 34
    .line 35
    check-cast v0, LK1/U;

    .line 36
    .line 37
    invoke-virtual {v0, v2}, LK1/U;->getState(Ljava/lang/String;)Landroidx/work/WorkInfo$State;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    const/4 v2, 0x1

    .line 42
    if-nez v0, :cond_0

    .line 43
    .line 44
    invoke-virtual {p0, v1}, LC1/N;->f(Z)V

    .line 45
    .line 46
    .line 47
    return v2

    .line 48
    :cond_0
    invoke-virtual {v0}, Landroidx/work/WorkInfo$State;->isFinished()Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    xor-int/2addr v0, v2

    .line 53
    invoke-virtual {p0, v0}, LC1/N;->f(Z)V

    .line 54
    .line 55
    .line 56
    return v2

    .line 57
    :cond_1
    return v1
.end method

.method public interrupt()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, LC1/N;->A:Z

    .line 3
    .line 4
    invoke-virtual {p0}, LC1/N;->i()Z

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, LC1/N;->z:LM1/g;

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Landroidx/work/impl/utils/futures/b;->cancel(Z)Z

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, LC1/N;->n:LB1/r;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, LC1/N;->z:LM1/g;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroidx/work/impl/utils/futures/b;->isCancelled()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    iget-object v0, p0, LC1/N;->n:LB1/r;

    .line 25
    .line 26
    invoke-virtual {v0}, LB1/r;->stop()V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string v1, "WorkSpec "

    .line 33
    .line 34
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget-object v1, p0, LC1/N;->m:LK1/E;

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v1, " is already done. Not interrupting."

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-static {}, LB1/t;->get()LB1/t;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    sget-object v2, LC1/N;->B:Ljava/lang/String;

    .line 56
    .line 57
    invoke-virtual {v1, v2, v0}, LB1/t;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method public run()V
    .locals 24

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "Work [ id="

    .line 6
    .line 7
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v2, v1, LC1/N;->e:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v3, ", tags={ "

    .line 16
    .line 17
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget-object v3, v1, LC1/N;->w:Ljava/util/List;

    .line 21
    .line 22
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    const/4 v4, 0x1

    .line 27
    move v5, v4

    .line 28
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v6

    .line 32
    if-eqz v6, :cond_1

    .line 33
    .line 34
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v6

    .line 38
    check-cast v6, Ljava/lang/String;

    .line 39
    .line 40
    if-eqz v5, :cond_0

    .line 41
    .line 42
    const/4 v5, 0x0

    .line 43
    goto :goto_1

    .line 44
    :cond_0
    const-string v7, ", "

    .line 45
    .line 46
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    :goto_1
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    const-string v3, " } ]"

    .line 54
    .line 55
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    iput-object v0, v1, LC1/N;->x:Ljava/lang/String;

    .line 63
    .line 64
    iget-object v0, v1, LC1/N;->m:LK1/E;

    .line 65
    .line 66
    const-string v3, "Delaying execution for "

    .line 67
    .line 68
    invoke-virtual {v1}, LC1/N;->i()Z

    .line 69
    .line 70
    .line 71
    move-result v5

    .line 72
    if-eqz v5, :cond_2

    .line 73
    .line 74
    goto/16 :goto_5

    .line 75
    .line 76
    :cond_2
    iget-object v5, v1, LC1/N;->t:Landroidx/work/impl/WorkDatabase;

    .line 77
    .line 78
    invoke-virtual {v5}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 79
    .line 80
    .line 81
    :try_start_0
    iget-object v6, v0, LK1/E;->b:Landroidx/work/WorkInfo$State;

    .line 82
    .line 83
    sget-object v8, Landroidx/work/WorkInfo$State;->b:Landroidx/work/WorkInfo$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    .line 85
    iget-object v9, v0, LK1/E;->c:Ljava/lang/String;

    .line 86
    .line 87
    sget-object v10, LC1/N;->B:Ljava/lang/String;

    .line 88
    .line 89
    if-eq v6, v8, :cond_3

    .line 90
    .line 91
    :try_start_1
    invoke-virtual {v1}, LC1/N;->g()V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v5}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V

    .line 95
    .line 96
    .line 97
    invoke-static {}, LB1/t;->get()LB1/t;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    new-instance v2, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    const-string v3, " is not in ENQUEUED state. Nothing more to do"

    .line 110
    .line 111
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    invoke-virtual {v0, v10, v2}, LB1/t;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 119
    .line 120
    .line 121
    invoke-virtual {v5}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 122
    .line 123
    .line 124
    return-void

    .line 125
    :catchall_0
    move-exception v0

    .line 126
    goto/16 :goto_7

    .line 127
    .line 128
    :cond_3
    :try_start_2
    invoke-virtual {v0}, LK1/E;->isPeriodic()Z

    .line 129
    .line 130
    .line 131
    move-result v6

    .line 132
    if-nez v6, :cond_4

    .line 133
    .line 134
    invoke-virtual {v0}, LK1/E;->isBackedOff()Z

    .line 135
    .line 136
    .line 137
    move-result v6

    .line 138
    if-eqz v6, :cond_5

    .line 139
    .line 140
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 141
    .line 142
    .line 143
    move-result-wide v11

    .line 144
    invoke-virtual {v0}, LK1/E;->calculateNextRunTime()J

    .line 145
    .line 146
    .line 147
    move-result-wide v13

    .line 148
    cmp-long v6, v11, v13

    .line 149
    .line 150
    if-gez v6, :cond_5

    .line 151
    .line 152
    invoke-static {}, LB1/t;->get()LB1/t;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    new-instance v2, Ljava/lang/StringBuilder;

    .line 157
    .line 158
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    const-string v3, " because it is being executed before schedule."

    .line 165
    .line 166
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v2

    .line 173
    invoke-virtual {v0, v10, v2}, LB1/t;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v1, v4}, LC1/N;->f(Z)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v5}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 180
    .line 181
    .line 182
    invoke-virtual {v5}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 183
    .line 184
    .line 185
    return-void

    .line 186
    :cond_5
    :try_start_3
    invoke-virtual {v5}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 187
    .line 188
    .line 189
    invoke-virtual {v5}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v0}, LK1/E;->isPeriodic()Z

    .line 193
    .line 194
    .line 195
    move-result v3

    .line 196
    iget-object v6, v1, LC1/N;->u:LK1/F;

    .line 197
    .line 198
    iget-object v11, v1, LC1/N;->r:LB1/c;

    .line 199
    .line 200
    if-eqz v3, :cond_6

    .line 201
    .line 202
    iget-object v3, v0, LK1/E;->e:LB1/h;

    .line 203
    .line 204
    :goto_2
    move-object v14, v3

    .line 205
    goto :goto_3

    .line 206
    :cond_6
    invoke-virtual {v11}, LB1/c;->getInputMergerFactory()LB1/m;

    .line 207
    .line 208
    .line 209
    move-result-object v3

    .line 210
    iget-object v12, v0, LK1/E;->d:Ljava/lang/String;

    .line 211
    .line 212
    invoke-virtual {v3, v12}, LB1/m;->createInputMergerWithDefaultFallback(Ljava/lang/String;)LB1/k;

    .line 213
    .line 214
    .line 215
    move-result-object v3

    .line 216
    if-nez v3, :cond_7

    .line 217
    .line 218
    invoke-static {}, LB1/t;->get()LB1/t;

    .line 219
    .line 220
    .line 221
    move-result-object v2

    .line 222
    new-instance v3, Ljava/lang/StringBuilder;

    .line 223
    .line 224
    const-string v4, "Could not create Input Merger "

    .line 225
    .line 226
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    iget-object v0, v0, LK1/E;->d:Ljava/lang/String;

    .line 230
    .line 231
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v0

    .line 238
    invoke-virtual {v2, v10, v0}, LB1/t;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v1}, LC1/N;->h()V

    .line 242
    .line 243
    .line 244
    return-void

    .line 245
    :cond_7
    new-instance v12, Ljava/util/ArrayList;

    .line 246
    .line 247
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 248
    .line 249
    .line 250
    iget-object v13, v0, LK1/E;->e:LB1/h;

    .line 251
    .line 252
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 253
    .line 254
    .line 255
    move-object v13, v6

    .line 256
    check-cast v13, LK1/U;

    .line 257
    .line 258
    invoke-virtual {v13, v2}, LK1/U;->getInputsFromPrerequisites(Ljava/lang/String;)Ljava/util/List;

    .line 259
    .line 260
    .line 261
    move-result-object v13

    .line 262
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 263
    .line 264
    .line 265
    invoke-virtual {v3, v12}, LB1/k;->merge(Ljava/util/List;)LB1/h;

    .line 266
    .line 267
    .line 268
    move-result-object v3

    .line 269
    goto :goto_2

    .line 270
    :goto_3
    new-instance v12, Landroidx/work/WorkerParameters;

    .line 271
    .line 272
    invoke-static {v2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    .line 273
    .line 274
    .line 275
    move-result-object v13

    .line 276
    invoke-virtual {v0}, LK1/E;->getGeneration()I

    .line 277
    .line 278
    .line 279
    move-result v18

    .line 280
    invoke-virtual {v11}, LB1/c;->getExecutor()Ljava/util/concurrent/Executor;

    .line 281
    .line 282
    .line 283
    move-result-object v19

    .line 284
    invoke-virtual {v11}, LB1/c;->getWorkerFactory()LB1/P;

    .line 285
    .line 286
    .line 287
    move-result-object v21

    .line 288
    new-instance v3, LL1/D;

    .line 289
    .line 290
    iget-object v15, v1, LC1/N;->p:LN1/c;

    .line 291
    .line 292
    invoke-direct {v3, v5, v15}, LL1/D;-><init>(Landroidx/work/impl/WorkDatabase;LN1/c;)V

    .line 293
    .line 294
    .line 295
    new-instance v4, LL1/C;

    .line 296
    .line 297
    iget-object v7, v1, LC1/N;->s:LJ1/a;

    .line 298
    .line 299
    invoke-direct {v4, v5, v7, v15}, LL1/C;-><init>(Landroidx/work/impl/WorkDatabase;LJ1/a;LN1/c;)V

    .line 300
    .line 301
    .line 302
    iget-object v7, v1, LC1/N;->j:LB1/Q;

    .line 303
    .line 304
    move-object/from16 v22, v3

    .line 305
    .line 306
    iget-object v3, v1, LC1/N;->p:LN1/c;

    .line 307
    .line 308
    move-object/from16 v16, v15

    .line 309
    .line 310
    iget-object v15, v1, LC1/N;->w:Ljava/util/List;

    .line 311
    .line 312
    iget v0, v0, LK1/E;->k:I

    .line 313
    .line 314
    move/from16 v17, v0

    .line 315
    .line 316
    move-object/from16 v20, v3

    .line 317
    .line 318
    move-object/from16 v23, v4

    .line 319
    .line 320
    move-object/from16 v0, v16

    .line 321
    .line 322
    move-object/from16 v16, v7

    .line 323
    .line 324
    invoke-direct/range {v12 .. v23}, Landroidx/work/WorkerParameters;-><init>(Ljava/util/UUID;LB1/h;Ljava/util/Collection;LB1/Q;IILjava/util/concurrent/Executor;LN1/c;LB1/P;LB1/F;LB1/j;)V

    .line 325
    .line 326
    .line 327
    iget-object v3, v1, LC1/N;->n:LB1/r;

    .line 328
    .line 329
    if-nez v3, :cond_8

    .line 330
    .line 331
    invoke-virtual {v11}, LB1/c;->getWorkerFactory()LB1/P;

    .line 332
    .line 333
    .line 334
    move-result-object v3

    .line 335
    iget-object v4, v1, LC1/N;->b:Landroid/content/Context;

    .line 336
    .line 337
    invoke-virtual {v3, v4, v9, v12}, LB1/P;->createWorkerWithDefaultFallback(Landroid/content/Context;Ljava/lang/String;Landroidx/work/WorkerParameters;)LB1/r;

    .line 338
    .line 339
    .line 340
    move-result-object v3

    .line 341
    iput-object v3, v1, LC1/N;->n:LB1/r;

    .line 342
    .line 343
    :cond_8
    iget-object v3, v1, LC1/N;->n:LB1/r;

    .line 344
    .line 345
    if-nez v3, :cond_9

    .line 346
    .line 347
    invoke-static {}, LB1/t;->get()LB1/t;

    .line 348
    .line 349
    .line 350
    move-result-object v0

    .line 351
    new-instance v2, Ljava/lang/StringBuilder;

    .line 352
    .line 353
    const-string v3, "Could not create Worker "

    .line 354
    .line 355
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 356
    .line 357
    .line 358
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    .line 360
    .line 361
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 362
    .line 363
    .line 364
    move-result-object v2

    .line 365
    invoke-virtual {v0, v10, v2}, LB1/t;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    .line 367
    .line 368
    invoke-virtual {v1}, LC1/N;->h()V

    .line 369
    .line 370
    .line 371
    return-void

    .line 372
    :cond_9
    invoke-virtual {v3}, LB1/r;->isUsed()Z

    .line 373
    .line 374
    .line 375
    move-result v3

    .line 376
    if-eqz v3, :cond_a

    .line 377
    .line 378
    invoke-static {}, LB1/t;->get()LB1/t;

    .line 379
    .line 380
    .line 381
    move-result-object v0

    .line 382
    new-instance v2, Ljava/lang/StringBuilder;

    .line 383
    .line 384
    const-string v3, "Received an already-used Worker "

    .line 385
    .line 386
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 387
    .line 388
    .line 389
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    .line 391
    .line 392
    const-string v3, "; Worker Factory should return new instances"

    .line 393
    .line 394
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    .line 396
    .line 397
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 398
    .line 399
    .line 400
    move-result-object v2

    .line 401
    invoke-virtual {v0, v10, v2}, LB1/t;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    .line 403
    .line 404
    invoke-virtual {v1}, LC1/N;->h()V

    .line 405
    .line 406
    .line 407
    return-void

    .line 408
    :cond_a
    iget-object v3, v1, LC1/N;->n:LB1/r;

    .line 409
    .line 410
    invoke-virtual {v3}, LB1/r;->setUsed()V

    .line 411
    .line 412
    .line 413
    invoke-virtual {v5}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 414
    .line 415
    .line 416
    :try_start_4
    move-object v3, v6

    .line 417
    check-cast v3, LK1/U;

    .line 418
    .line 419
    invoke-virtual {v3, v2}, LK1/U;->getState(Ljava/lang/String;)Landroidx/work/WorkInfo$State;

    .line 420
    .line 421
    .line 422
    move-result-object v3

    .line 423
    if-ne v3, v8, :cond_b

    .line 424
    .line 425
    sget-object v3, Landroidx/work/WorkInfo$State;->e:Landroidx/work/WorkInfo$State;

    .line 426
    .line 427
    move-object v4, v6

    .line 428
    check-cast v4, LK1/U;

    .line 429
    .line 430
    invoke-virtual {v4, v3, v2}, LK1/U;->setState(Landroidx/work/WorkInfo$State;Ljava/lang/String;)I

    .line 431
    .line 432
    .line 433
    check-cast v6, LK1/U;

    .line 434
    .line 435
    invoke-virtual {v6, v2}, LK1/U;->incrementWorkSpecRunAttemptCount(Ljava/lang/String;)I

    .line 436
    .line 437
    .line 438
    const/4 v4, 0x1

    .line 439
    goto :goto_4

    .line 440
    :catchall_1
    move-exception v0

    .line 441
    goto :goto_6

    .line 442
    :cond_b
    const/4 v4, 0x0

    .line 443
    :goto_4
    invoke-virtual {v5}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 444
    .line 445
    .line 446
    invoke-virtual {v5}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 447
    .line 448
    .line 449
    if-eqz v4, :cond_d

    .line 450
    .line 451
    invoke-virtual {v1}, LC1/N;->i()Z

    .line 452
    .line 453
    .line 454
    move-result v2

    .line 455
    if-eqz v2, :cond_c

    .line 456
    .line 457
    :goto_5
    return-void

    .line 458
    :cond_c
    new-instance v3, LL1/A;

    .line 459
    .line 460
    iget-object v6, v1, LC1/N;->n:LB1/r;

    .line 461
    .line 462
    invoke-virtual {v12}, Landroidx/work/WorkerParameters;->getForegroundUpdater()LB1/j;

    .line 463
    .line 464
    .line 465
    move-result-object v7

    .line 466
    iget-object v4, v1, LC1/N;->b:Landroid/content/Context;

    .line 467
    .line 468
    iget-object v5, v1, LC1/N;->m:LK1/E;

    .line 469
    .line 470
    iget-object v8, v1, LC1/N;->p:LN1/c;

    .line 471
    .line 472
    invoke-direct/range {v3 .. v8}, LL1/A;-><init>(Landroid/content/Context;LK1/E;LB1/r;LB1/j;LN1/c;)V

    .line 473
    .line 474
    .line 475
    move-object v15, v0

    .line 476
    check-cast v15, LN1/e;

    .line 477
    .line 478
    invoke-virtual {v15}, LN1/e;->getMainThreadExecutor()Ljava/util/concurrent/Executor;

    .line 479
    .line 480
    .line 481
    move-result-object v0

    .line 482
    invoke-interface {v0, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 483
    .line 484
    .line 485
    invoke-virtual {v3}, LL1/A;->getFuture()LV3/F;

    .line 486
    .line 487
    .line 488
    move-result-object v0

    .line 489
    new-instance v2, LA4/n;

    .line 490
    .line 491
    const/16 v3, 0x8

    .line 492
    .line 493
    invoke-direct {v2, v3, v1, v0}, LA4/n;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 494
    .line 495
    .line 496
    new-instance v3, LL1/w;

    .line 497
    .line 498
    invoke-direct {v3}, LL1/w;-><init>()V

    .line 499
    .line 500
    .line 501
    iget-object v4, v1, LC1/N;->z:LM1/g;

    .line 502
    .line 503
    invoke-virtual {v4, v2, v3}, Landroidx/work/impl/utils/futures/b;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 504
    .line 505
    .line 506
    new-instance v2, LC1/K;

    .line 507
    .line 508
    invoke-direct {v2, v1, v0}, LC1/K;-><init>(LC1/N;LV3/F;)V

    .line 509
    .line 510
    .line 511
    invoke-virtual {v15}, LN1/e;->getMainThreadExecutor()Ljava/util/concurrent/Executor;

    .line 512
    .line 513
    .line 514
    move-result-object v3

    .line 515
    invoke-interface {v0, v2, v3}, LV3/F;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 516
    .line 517
    .line 518
    iget-object v0, v1, LC1/N;->x:Ljava/lang/String;

    .line 519
    .line 520
    new-instance v2, LC1/L;

    .line 521
    .line 522
    invoke-direct {v2, v1, v0}, LC1/L;-><init>(LC1/N;Ljava/lang/String;)V

    .line 523
    .line 524
    .line 525
    invoke-virtual {v15}, LN1/e;->getSerialTaskExecutor()LN1/a;

    .line 526
    .line 527
    .line 528
    move-result-object v0

    .line 529
    invoke-virtual {v4, v2, v0}, Landroidx/work/impl/utils/futures/b;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 530
    .line 531
    .line 532
    return-void

    .line 533
    :cond_d
    invoke-virtual {v1}, LC1/N;->g()V

    .line 534
    .line 535
    .line 536
    return-void

    .line 537
    :goto_6
    invoke-virtual {v5}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 538
    .line 539
    .line 540
    throw v0

    .line 541
    :goto_7
    invoke-virtual {v5}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 542
    .line 543
    .line 544
    throw v0
.end method
