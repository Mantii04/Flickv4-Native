.class public final synthetic LC1/I;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:LC1/G;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:LC1/o;

.field public final synthetic j:LH5/a;

.field public final synthetic m:LB1/L;


# direct methods
.method public synthetic constructor <init>(LC1/G;Ljava/lang/String;LC1/o;LH5/a;LB1/L;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LC1/I;->b:LC1/G;

    iput-object p2, p0, LC1/I;->e:Ljava/lang/String;

    iput-object p3, p0, LC1/I;->f:LC1/o;

    iput-object p4, p0, LC1/I;->j:LH5/a;

    iput-object p5, p0, LC1/I;->m:LB1/L;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 46

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v0, v1, LC1/I;->b:LC1/G;

    .line 4
    .line 5
    const-string v2, "$this_enqueueUniquelyNamedPeriodic"

    .line 6
    .line 7
    invoke-static {v0, v2}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v2, v1, LC1/I;->e:Ljava/lang/String;

    .line 11
    .line 12
    const-string v3, "$name"

    .line 13
    .line 14
    invoke-static {v2, v3}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object v3, v1, LC1/I;->f:LC1/o;

    .line 18
    .line 19
    const-string v4, "$operation"

    .line 20
    .line 21
    invoke-static {v3, v4}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object v4, v1, LC1/I;->j:LH5/a;

    .line 25
    .line 26
    const-string v5, "$enqueueNew"

    .line 27
    .line 28
    invoke-static {v4, v5}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object v5, v1, LC1/I;->m:LB1/L;

    .line 32
    .line 33
    const-string v6, "$workRequest"

    .line 34
    .line 35
    invoke-static {v5, v6}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, LC1/G;->getWorkDatabase()Landroidx/work/impl/WorkDatabase;

    .line 39
    .line 40
    .line 41
    move-result-object v6

    .line 42
    invoke-virtual {v6}, Landroidx/work/impl/WorkDatabase;->workSpecDao()LK1/F;

    .line 43
    .line 44
    .line 45
    move-result-object v6

    .line 46
    check-cast v6, LK1/U;

    .line 47
    .line 48
    invoke-virtual {v6, v2}, LK1/U;->getWorkSpecIdAndStatesForName(Ljava/lang/String;)Ljava/util/List;

    .line 49
    .line 50
    .line 51
    move-result-object v7

    .line 52
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 53
    .line 54
    .line 55
    move-result v8

    .line 56
    const/4 v9, 0x1

    .line 57
    if-le v8, v9, :cond_0

    .line 58
    .line 59
    new-instance v0, LB1/x;

    .line 60
    .line 61
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    .line 62
    .line 63
    const-string v4, "Can\'t apply UPDATE policy to the chains of work."

    .line 64
    .line 65
    invoke-direct {v2, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-direct {v0, v2}, LB1/x;-><init>(Ljava/lang/Throwable;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v3, v0}, LC1/o;->markState(LB1/A;)V

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :cond_0
    invoke-static {v7}, Lv5/u;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v7

    .line 79
    check-cast v7, LK1/D;

    .line 80
    .line 81
    if-nez v7, :cond_1

    .line 82
    .line 83
    invoke-interface {v4}, LH5/a;->invoke()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    return-void

    .line 87
    :cond_1
    iget-object v8, v7, LK1/D;->a:Ljava/lang/String;

    .line 88
    .line 89
    invoke-virtual {v6, v8}, LK1/U;->getWorkSpec(Ljava/lang/String;)LK1/E;

    .line 90
    .line 91
    .line 92
    move-result-object v9

    .line 93
    if-nez v9, :cond_2

    .line 94
    .line 95
    new-instance v0, LB1/x;

    .line 96
    .line 97
    new-instance v4, Ljava/lang/IllegalStateException;

    .line 98
    .line 99
    const-string v5, "WorkSpec with "

    .line 100
    .line 101
    const-string v6, ", that matches a name \""

    .line 102
    .line 103
    const-string v7, "\", wasn\'t found"

    .line 104
    .line 105
    invoke-static {v5, v8, v6, v2, v7}, Lb/c;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    invoke-direct {v4, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    invoke-direct {v0, v4}, LB1/x;-><init>(Ljava/lang/Throwable;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v3, v0}, LC1/o;->markState(LB1/A;)V

    .line 116
    .line 117
    .line 118
    return-void

    .line 119
    :cond_2
    invoke-virtual {v9}, LK1/E;->isPeriodic()Z

    .line 120
    .line 121
    .line 122
    move-result v2

    .line 123
    if-nez v2, :cond_3

    .line 124
    .line 125
    new-instance v0, LB1/x;

    .line 126
    .line 127
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    .line 128
    .line 129
    const-string v4, "Can\'t update OneTimeWorker to Periodic Worker. Update operation must preserve worker\'s type."

    .line 130
    .line 131
    invoke-direct {v2, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    invoke-direct {v0, v2}, LB1/x;-><init>(Ljava/lang/Throwable;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v3, v0}, LC1/o;->markState(LB1/A;)V

    .line 138
    .line 139
    .line 140
    return-void

    .line 141
    :cond_3
    sget-object v2, Landroidx/work/WorkInfo$State;->n:Landroidx/work/WorkInfo$State;

    .line 142
    .line 143
    iget-object v9, v7, LK1/D;->b:Landroidx/work/WorkInfo$State;

    .line 144
    .line 145
    if-ne v9, v2, :cond_4

    .line 146
    .line 147
    invoke-virtual {v6, v8}, LK1/U;->delete(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    invoke-interface {v4}, LH5/a;->invoke()Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    return-void

    .line 154
    :cond_4
    invoke-virtual {v5}, LB1/L;->getWorkSpec()LK1/E;

    .line 155
    .line 156
    .line 157
    move-result-object v10

    .line 158
    iget-object v11, v7, LK1/D;->a:Ljava/lang/String;

    .line 159
    .line 160
    const/16 v36, 0x0

    .line 161
    .line 162
    const/16 v37, 0x0

    .line 163
    .line 164
    const/4 v12, 0x0

    .line 165
    const/4 v13, 0x0

    .line 166
    const/4 v14, 0x0

    .line 167
    const/4 v15, 0x0

    .line 168
    const/16 v16, 0x0

    .line 169
    .line 170
    const-wide/16 v17, 0x0

    .line 171
    .line 172
    const-wide/16 v19, 0x0

    .line 173
    .line 174
    const-wide/16 v21, 0x0

    .line 175
    .line 176
    const/16 v23, 0x0

    .line 177
    .line 178
    const/16 v24, 0x0

    .line 179
    .line 180
    const/16 v25, 0x0

    .line 181
    .line 182
    const-wide/16 v26, 0x0

    .line 183
    .line 184
    const-wide/16 v28, 0x0

    .line 185
    .line 186
    const-wide/16 v30, 0x0

    .line 187
    .line 188
    const-wide/16 v32, 0x0

    .line 189
    .line 190
    const/16 v34, 0x0

    .line 191
    .line 192
    const/16 v35, 0x0

    .line 193
    .line 194
    const v38, 0xffffe

    .line 195
    .line 196
    .line 197
    const/16 v39, 0x0

    .line 198
    .line 199
    invoke-static/range {v10 .. v39}, LK1/E;->copy$default(LK1/E;Ljava/lang/String;Landroidx/work/WorkInfo$State;Ljava/lang/String;Ljava/lang/String;LB1/h;LB1/h;JJJLB1/f;ILandroidx/work/BackoffPolicy;JJJJZLandroidx/work/OutOfQuotaPolicy;IIILjava/lang/Object;)LK1/E;

    .line 200
    .line 201
    .line 202
    move-result-object v44

    .line 203
    :try_start_0
    invoke-virtual {v0}, LC1/G;->getProcessor()LC1/r;

    .line 204
    .line 205
    .line 206
    move-result-object v2

    .line 207
    const-string v4, "processor"

    .line 208
    .line 209
    invoke-static {v2, v4}, Lkotlin/jvm/internal/j;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v0}, LC1/G;->getWorkDatabase()Landroidx/work/impl/WorkDatabase;

    .line 213
    .line 214
    .line 215
    move-result-object v4

    .line 216
    const-string v6, "workDatabase"

    .line 217
    .line 218
    invoke-static {v4, v6}, Lkotlin/jvm/internal/j;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {v0}, LC1/G;->getConfiguration()LB1/c;

    .line 222
    .line 223
    .line 224
    move-result-object v6

    .line 225
    const-string v7, "configuration"

    .line 226
    .line 227
    invoke-static {v6, v7}, Lkotlin/jvm/internal/j;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v0}, LC1/G;->getSchedulers()Ljava/util/List;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    const-string v7, "schedulers"

    .line 235
    .line 236
    invoke-static {v0, v7}, Lkotlin/jvm/internal/j;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {v5}, LB1/L;->getTags()Ljava/util/Set;

    .line 240
    .line 241
    .line 242
    move-result-object v45

    .line 243
    move-object/from16 v43, v0

    .line 244
    .line 245
    move-object/from16 v40, v2

    .line 246
    .line 247
    move-object/from16 v41, v4

    .line 248
    .line 249
    move-object/from16 v42, v6

    .line 250
    .line 251
    invoke-static/range {v40 .. v45}, Landroidx/work/impl/WorkerUpdater;->a(LC1/r;Landroidx/work/impl/WorkDatabase;LB1/c;Ljava/util/List;LK1/E;Ljava/util/Set;)V

    .line 252
    .line 253
    .line 254
    sget-object v0, LB1/B;->a:LB1/z;

    .line 255
    .line 256
    invoke-virtual {v3, v0}, LC1/o;->markState(LB1/A;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 257
    .line 258
    .line 259
    return-void

    .line 260
    :catchall_0
    move-exception v0

    .line 261
    new-instance v2, LB1/x;

    .line 262
    .line 263
    invoke-direct {v2, v0}, LB1/x;-><init>(Ljava/lang/Throwable;)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {v3, v2}, LC1/o;->markState(LB1/A;)V

    .line 267
    .line 268
    .line 269
    return-void
.end method
