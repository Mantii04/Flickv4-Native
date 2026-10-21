.class public final LK1/U;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LK1/F;


# instance fields
.field public final a:Landroidx/room/RoomDatabase;

.field public final b:LK1/K;

.field public final c:LK1/L;

.field public final d:LK1/M;

.field public final e:LK1/N;

.field public final f:LK1/O;

.field public final g:LK1/P;

.field public final h:LK1/Q;

.field public final i:LK1/S;

.field public final j:LK1/T;

.field public final k:LK1/G;

.field public final l:LK1/H;


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LK1/U;->a:Landroidx/room/RoomDatabase;

    .line 5
    .line 6
    new-instance v0, LK1/K;

    .line 7
    .line 8
    invoke-direct {v0, p1}, Ln1/g;-><init>(Landroidx/room/RoomDatabase;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, LK1/U;->b:LK1/K;

    .line 12
    .line 13
    new-instance v0, LK1/L;

    .line 14
    .line 15
    invoke-direct {v0, p1}, Ln1/f;-><init>(Landroidx/room/RoomDatabase;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, LK1/U;->c:LK1/L;

    .line 19
    .line 20
    new-instance v0, LK1/M;

    .line 21
    .line 22
    invoke-direct {v0, p1}, Landroidx/room/SharedSQLiteStatement;-><init>(Landroidx/room/RoomDatabase;)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, LK1/U;->d:LK1/M;

    .line 26
    .line 27
    new-instance v0, LK1/N;

    .line 28
    .line 29
    invoke-direct {v0, p1}, Landroidx/room/SharedSQLiteStatement;-><init>(Landroidx/room/RoomDatabase;)V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, LK1/U;->e:LK1/N;

    .line 33
    .line 34
    new-instance v0, LK1/O;

    .line 35
    .line 36
    invoke-direct {v0, p1}, Landroidx/room/SharedSQLiteStatement;-><init>(Landroidx/room/RoomDatabase;)V

    .line 37
    .line 38
    .line 39
    iput-object v0, p0, LK1/U;->f:LK1/O;

    .line 40
    .line 41
    new-instance v0, LK1/P;

    .line 42
    .line 43
    invoke-direct {v0, p1}, Landroidx/room/SharedSQLiteStatement;-><init>(Landroidx/room/RoomDatabase;)V

    .line 44
    .line 45
    .line 46
    iput-object v0, p0, LK1/U;->g:LK1/P;

    .line 47
    .line 48
    new-instance v0, LK1/Q;

    .line 49
    .line 50
    invoke-direct {v0, p1}, Landroidx/room/SharedSQLiteStatement;-><init>(Landroidx/room/RoomDatabase;)V

    .line 51
    .line 52
    .line 53
    iput-object v0, p0, LK1/U;->h:LK1/Q;

    .line 54
    .line 55
    new-instance v0, LK1/S;

    .line 56
    .line 57
    invoke-direct {v0, p1}, Landroidx/room/SharedSQLiteStatement;-><init>(Landroidx/room/RoomDatabase;)V

    .line 58
    .line 59
    .line 60
    iput-object v0, p0, LK1/U;->i:LK1/S;

    .line 61
    .line 62
    new-instance v0, LK1/T;

    .line 63
    .line 64
    invoke-direct {v0, p1}, Landroidx/room/SharedSQLiteStatement;-><init>(Landroidx/room/RoomDatabase;)V

    .line 65
    .line 66
    .line 67
    iput-object v0, p0, LK1/U;->j:LK1/T;

    .line 68
    .line 69
    new-instance v0, LK1/G;

    .line 70
    .line 71
    invoke-direct {v0, p1}, Landroidx/room/SharedSQLiteStatement;-><init>(Landroidx/room/RoomDatabase;)V

    .line 72
    .line 73
    .line 74
    iput-object v0, p0, LK1/U;->k:LK1/G;

    .line 75
    .line 76
    new-instance v0, LK1/H;

    .line 77
    .line 78
    invoke-direct {v0, p1}, Landroidx/room/SharedSQLiteStatement;-><init>(Landroidx/room/RoomDatabase;)V

    .line 79
    .line 80
    .line 81
    iput-object v0, p0, LK1/U;->l:LK1/H;

    .line 82
    .line 83
    new-instance v0, LK1/I;

    .line 84
    .line 85
    invoke-direct {v0, p1}, Landroidx/room/SharedSQLiteStatement;-><init>(Landroidx/room/RoomDatabase;)V

    .line 86
    .line 87
    .line 88
    new-instance v0, LK1/J;

    .line 89
    .line 90
    invoke-direct {v0, p1}, Landroidx/room/SharedSQLiteStatement;-><init>(Landroidx/room/RoomDatabase;)V

    .line 91
    .line 92
    .line 93
    return-void
.end method

.method public static getRequiredConverters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public delete(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, LK1/U;->a:Landroidx/room/RoomDatabase;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, LK1/U;->d:LK1/M;

    .line 7
    .line 8
    invoke-virtual {v1}, Landroidx/room/SharedSQLiteStatement;->acquire()Lr1/p;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    const/4 v3, 0x1

    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    invoke-interface {v2, v3}, Lr1/n;->bindNull(I)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-interface {v2, v3, p1}, Lr1/n;->bindString(ILjava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :goto_0
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 23
    .line 24
    .line 25
    :try_start_0
    invoke-interface {v2}, Lr1/p;->executeUpdateDelete()I

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v2}, Landroidx/room/SharedSQLiteStatement;->release(Lr1/p;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :catchall_0
    move-exception p1

    .line 39
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, v2}, Landroidx/room/SharedSQLiteStatement;->release(Lr1/p;)V

    .line 43
    .line 44
    .line 45
    throw p1
.end method

.method public getAllEligibleWorkSpecsForScheduling(I)Ljava/util/List;
    .locals 70
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "LK1/E;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "SELECT * FROM workspec WHERE state=0 ORDER BY last_enqueue_time LIMIT ?"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Ln1/O;->acquire(Ljava/lang/String;I)Ln1/O;

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    move/from16 v0, p1

    .line 9
    .line 10
    int-to-long v3, v0

    .line 11
    invoke-virtual {v2, v1, v3, v4}, Ln1/O;->bindLong(IJ)V

    .line 12
    .line 13
    .line 14
    move-object/from16 v3, p0

    .line 15
    .line 16
    iget-object v0, v3, LK1/U;->a:Landroidx/room/RoomDatabase;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 19
    .line 20
    .line 21
    const/4 v4, 0x0

    .line 22
    const/4 v5, 0x0

    .line 23
    invoke-static {v0, v2, v4, v5}, Lp1/b;->query(Landroidx/room/RoomDatabase;Lr1/o;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    .line 24
    .line 25
    .line 26
    move-result-object v6

    .line 27
    :try_start_0
    const-string v0, "id"

    .line 28
    .line 29
    invoke-static {v6, v0}, Lp1/a;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    const-string v7, "state"

    .line 34
    .line 35
    invoke-static {v6, v7}, Lp1/a;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    move-result v7

    .line 39
    const-string v8, "worker_class_name"

    .line 40
    .line 41
    invoke-static {v6, v8}, Lp1/a;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    move-result v8

    .line 45
    const-string v9, "input_merger_class_name"

    .line 46
    .line 47
    invoke-static {v6, v9}, Lp1/a;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    move-result v9

    .line 51
    const-string v10, "input"

    .line 52
    .line 53
    invoke-static {v6, v10}, Lp1/a;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    move-result v10

    .line 57
    const-string v11, "output"

    .line 58
    .line 59
    invoke-static {v6, v11}, Lp1/a;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    move-result v11

    .line 63
    const-string v12, "initial_delay"

    .line 64
    .line 65
    invoke-static {v6, v12}, Lp1/a;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    move-result v12

    .line 69
    const-string v13, "interval_duration"

    .line 70
    .line 71
    invoke-static {v6, v13}, Lp1/a;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    move-result v13

    .line 75
    const-string v14, "flex_duration"

    .line 76
    .line 77
    invoke-static {v6, v14}, Lp1/a;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    move-result v14

    .line 81
    const-string v15, "run_attempt_count"

    .line 82
    .line 83
    invoke-static {v6, v15}, Lp1/a;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 84
    .line 85
    .line 86
    move-result v15

    .line 87
    const-string v1, "backoff_policy"

    .line 88
    .line 89
    invoke-static {v6, v1}, Lp1/a;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    const-string v4, "backoff_delay_duration"

    .line 94
    .line 95
    invoke-static {v6, v4}, Lp1/a;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 96
    .line 97
    .line 98
    move-result v4

    .line 99
    const-string v5, "last_enqueue_time"

    .line 100
    .line 101
    invoke-static {v6, v5}, Lp1/a;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 102
    .line 103
    .line 104
    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 105
    move-object/from16 v16, v2

    .line 106
    .line 107
    :try_start_1
    const-string v2, "minimum_retention_duration"

    .line 108
    .line 109
    invoke-static {v6, v2}, Lp1/a;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 110
    .line 111
    .line 112
    move-result v2

    .line 113
    const-string v3, "schedule_requested_at"

    .line 114
    .line 115
    invoke-static {v6, v3}, Lp1/a;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 116
    .line 117
    .line 118
    move-result v3

    .line 119
    move/from16 v17, v3

    .line 120
    .line 121
    const-string v3, "run_in_foreground"

    .line 122
    .line 123
    invoke-static {v6, v3}, Lp1/a;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 124
    .line 125
    .line 126
    move-result v3

    .line 127
    move/from16 v18, v3

    .line 128
    .line 129
    const-string v3, "out_of_quota_policy"

    .line 130
    .line 131
    invoke-static {v6, v3}, Lp1/a;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 132
    .line 133
    .line 134
    move-result v3

    .line 135
    move/from16 v19, v3

    .line 136
    .line 137
    const-string v3, "period_count"

    .line 138
    .line 139
    invoke-static {v6, v3}, Lp1/a;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 140
    .line 141
    .line 142
    move-result v3

    .line 143
    move/from16 v20, v3

    .line 144
    .line 145
    const-string v3, "generation"

    .line 146
    .line 147
    invoke-static {v6, v3}, Lp1/a;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 148
    .line 149
    .line 150
    move-result v3

    .line 151
    move/from16 v21, v3

    .line 152
    .line 153
    const-string v3, "required_network_type"

    .line 154
    .line 155
    invoke-static {v6, v3}, Lp1/a;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 156
    .line 157
    .line 158
    move-result v3

    .line 159
    move/from16 v22, v3

    .line 160
    .line 161
    const-string v3, "requires_charging"

    .line 162
    .line 163
    invoke-static {v6, v3}, Lp1/a;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 164
    .line 165
    .line 166
    move-result v3

    .line 167
    move/from16 v23, v3

    .line 168
    .line 169
    const-string v3, "requires_device_idle"

    .line 170
    .line 171
    invoke-static {v6, v3}, Lp1/a;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 172
    .line 173
    .line 174
    move-result v3

    .line 175
    move/from16 v24, v3

    .line 176
    .line 177
    const-string v3, "requires_battery_not_low"

    .line 178
    .line 179
    invoke-static {v6, v3}, Lp1/a;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 180
    .line 181
    .line 182
    move-result v3

    .line 183
    move/from16 v25, v3

    .line 184
    .line 185
    const-string v3, "requires_storage_not_low"

    .line 186
    .line 187
    invoke-static {v6, v3}, Lp1/a;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 188
    .line 189
    .line 190
    move-result v3

    .line 191
    move/from16 v26, v3

    .line 192
    .line 193
    const-string v3, "trigger_content_update_delay"

    .line 194
    .line 195
    invoke-static {v6, v3}, Lp1/a;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 196
    .line 197
    .line 198
    move-result v3

    .line 199
    move/from16 v27, v3

    .line 200
    .line 201
    const-string v3, "trigger_max_content_delay"

    .line 202
    .line 203
    invoke-static {v6, v3}, Lp1/a;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 204
    .line 205
    .line 206
    move-result v3

    .line 207
    move/from16 v28, v3

    .line 208
    .line 209
    const-string v3, "content_uri_triggers"

    .line 210
    .line 211
    invoke-static {v6, v3}, Lp1/a;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 212
    .line 213
    .line 214
    move-result v3

    .line 215
    move/from16 v29, v3

    .line 216
    .line 217
    new-instance v3, Ljava/util/ArrayList;

    .line 218
    .line 219
    move/from16 v30, v2

    .line 220
    .line 221
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    .line 222
    .line 223
    .line 224
    move-result v2

    .line 225
    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 226
    .line 227
    .line 228
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    .line 229
    .line 230
    .line 231
    move-result v2

    .line 232
    if-eqz v2, :cond_b

    .line 233
    .line 234
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    .line 235
    .line 236
    .line 237
    move-result v2

    .line 238
    if-eqz v2, :cond_0

    .line 239
    .line 240
    const/16 v32, 0x0

    .line 241
    .line 242
    goto :goto_1

    .line 243
    :cond_0
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v2

    .line 247
    move-object/from16 v32, v2

    .line 248
    .line 249
    :goto_1
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    .line 250
    .line 251
    .line 252
    move-result v2

    .line 253
    invoke-static {v2}, LK1/c0;->intToState(I)Landroidx/work/WorkInfo$State;

    .line 254
    .line 255
    .line 256
    move-result-object v33

    .line 257
    invoke-interface {v6, v8}, Landroid/database/Cursor;->isNull(I)Z

    .line 258
    .line 259
    .line 260
    move-result v2

    .line 261
    if-eqz v2, :cond_1

    .line 262
    .line 263
    const/16 v34, 0x0

    .line 264
    .line 265
    goto :goto_2

    .line 266
    :cond_1
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v2

    .line 270
    move-object/from16 v34, v2

    .line 271
    .line 272
    :goto_2
    invoke-interface {v6, v9}, Landroid/database/Cursor;->isNull(I)Z

    .line 273
    .line 274
    .line 275
    move-result v2

    .line 276
    if-eqz v2, :cond_2

    .line 277
    .line 278
    const/16 v35, 0x0

    .line 279
    .line 280
    goto :goto_3

    .line 281
    :cond_2
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v2

    .line 285
    move-object/from16 v35, v2

    .line 286
    .line 287
    :goto_3
    invoke-interface {v6, v10}, Landroid/database/Cursor;->isNull(I)Z

    .line 288
    .line 289
    .line 290
    move-result v2

    .line 291
    if-eqz v2, :cond_3

    .line 292
    .line 293
    const/4 v2, 0x0

    .line 294
    goto :goto_4

    .line 295
    :cond_3
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getBlob(I)[B

    .line 296
    .line 297
    .line 298
    move-result-object v2

    .line 299
    :goto_4
    invoke-static {v2}, LB1/h;->fromByteArray([B)LB1/h;

    .line 300
    .line 301
    .line 302
    move-result-object v36

    .line 303
    invoke-interface {v6, v11}, Landroid/database/Cursor;->isNull(I)Z

    .line 304
    .line 305
    .line 306
    move-result v2

    .line 307
    if-eqz v2, :cond_4

    .line 308
    .line 309
    const/4 v2, 0x0

    .line 310
    goto :goto_5

    .line 311
    :cond_4
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getBlob(I)[B

    .line 312
    .line 313
    .line 314
    move-result-object v2

    .line 315
    :goto_5
    invoke-static {v2}, LB1/h;->fromByteArray([B)LB1/h;

    .line 316
    .line 317
    .line 318
    move-result-object v37

    .line 319
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getLong(I)J

    .line 320
    .line 321
    .line 322
    move-result-wide v38

    .line 323
    invoke-interface {v6, v13}, Landroid/database/Cursor;->getLong(I)J

    .line 324
    .line 325
    .line 326
    move-result-wide v40

    .line 327
    invoke-interface {v6, v14}, Landroid/database/Cursor;->getLong(I)J

    .line 328
    .line 329
    .line 330
    move-result-wide v42

    .line 331
    invoke-interface {v6, v15}, Landroid/database/Cursor;->getInt(I)I

    .line 332
    .line 333
    .line 334
    move-result v45

    .line 335
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    .line 336
    .line 337
    .line 338
    move-result v2

    .line 339
    invoke-static {v2}, LK1/c0;->intToBackoffPolicy(I)Landroidx/work/BackoffPolicy;

    .line 340
    .line 341
    .line 342
    move-result-object v46

    .line 343
    invoke-interface {v6, v4}, Landroid/database/Cursor;->getLong(I)J

    .line 344
    .line 345
    .line 346
    move-result-wide v47

    .line 347
    invoke-interface {v6, v5}, Landroid/database/Cursor;->getLong(I)J

    .line 348
    .line 349
    .line 350
    move-result-wide v49

    .line 351
    move/from16 v2, v30

    .line 352
    .line 353
    invoke-interface {v6, v2}, Landroid/database/Cursor;->getLong(I)J

    .line 354
    .line 355
    .line 356
    move-result-wide v51

    .line 357
    move/from16 v30, v0

    .line 358
    .line 359
    move/from16 v0, v17

    .line 360
    .line 361
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    .line 362
    .line 363
    .line 364
    move-result-wide v53

    .line 365
    move/from16 v17, v0

    .line 366
    .line 367
    move/from16 v0, v18

    .line 368
    .line 369
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 370
    .line 371
    .line 372
    move-result v18

    .line 373
    if-eqz v18, :cond_5

    .line 374
    .line 375
    const/16 v55, 0x1

    .line 376
    .line 377
    :goto_6
    move/from16 v18, v0

    .line 378
    .line 379
    move/from16 v0, v19

    .line 380
    .line 381
    goto :goto_7

    .line 382
    :cond_5
    const/16 v55, 0x0

    .line 383
    .line 384
    goto :goto_6

    .line 385
    :goto_7
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 386
    .line 387
    .line 388
    move-result v19

    .line 389
    invoke-static/range {v19 .. v19}, LK1/c0;->intToOutOfQuotaPolicy(I)Landroidx/work/OutOfQuotaPolicy;

    .line 390
    .line 391
    .line 392
    move-result-object v56

    .line 393
    move/from16 v19, v0

    .line 394
    .line 395
    move/from16 v0, v20

    .line 396
    .line 397
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 398
    .line 399
    .line 400
    move-result v57

    .line 401
    move/from16 v20, v0

    .line 402
    .line 403
    move/from16 v0, v21

    .line 404
    .line 405
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 406
    .line 407
    .line 408
    move-result v58

    .line 409
    move/from16 v21, v0

    .line 410
    .line 411
    move/from16 v0, v22

    .line 412
    .line 413
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 414
    .line 415
    .line 416
    move-result v22

    .line 417
    invoke-static/range {v22 .. v22}, LK1/c0;->intToNetworkType(I)Landroidx/work/NetworkType;

    .line 418
    .line 419
    .line 420
    move-result-object v60

    .line 421
    move/from16 v22, v0

    .line 422
    .line 423
    move/from16 v0, v23

    .line 424
    .line 425
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 426
    .line 427
    .line 428
    move-result v23

    .line 429
    if-eqz v23, :cond_6

    .line 430
    .line 431
    const/16 v61, 0x1

    .line 432
    .line 433
    :goto_8
    move/from16 v23, v0

    .line 434
    .line 435
    move/from16 v0, v24

    .line 436
    .line 437
    goto :goto_9

    .line 438
    :cond_6
    const/16 v61, 0x0

    .line 439
    .line 440
    goto :goto_8

    .line 441
    :goto_9
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 442
    .line 443
    .line 444
    move-result v24

    .line 445
    if-eqz v24, :cond_7

    .line 446
    .line 447
    const/16 v62, 0x1

    .line 448
    .line 449
    :goto_a
    move/from16 v24, v0

    .line 450
    .line 451
    move/from16 v0, v25

    .line 452
    .line 453
    goto :goto_b

    .line 454
    :cond_7
    const/16 v62, 0x0

    .line 455
    .line 456
    goto :goto_a

    .line 457
    :goto_b
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 458
    .line 459
    .line 460
    move-result v25

    .line 461
    if-eqz v25, :cond_8

    .line 462
    .line 463
    const/16 v63, 0x1

    .line 464
    .line 465
    :goto_c
    move/from16 v25, v0

    .line 466
    .line 467
    move/from16 v0, v26

    .line 468
    .line 469
    goto :goto_d

    .line 470
    :cond_8
    const/16 v63, 0x0

    .line 471
    .line 472
    goto :goto_c

    .line 473
    :goto_d
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 474
    .line 475
    .line 476
    move-result v26

    .line 477
    if-eqz v26, :cond_9

    .line 478
    .line 479
    const/16 v64, 0x1

    .line 480
    .line 481
    :goto_e
    move/from16 v26, v0

    .line 482
    .line 483
    move/from16 v0, v27

    .line 484
    .line 485
    goto :goto_f

    .line 486
    :cond_9
    const/16 v64, 0x0

    .line 487
    .line 488
    goto :goto_e

    .line 489
    :goto_f
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    .line 490
    .line 491
    .line 492
    move-result-wide v65

    .line 493
    move/from16 v27, v0

    .line 494
    .line 495
    move/from16 v0, v28

    .line 496
    .line 497
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    .line 498
    .line 499
    .line 500
    move-result-wide v67

    .line 501
    move/from16 v28, v0

    .line 502
    .line 503
    move/from16 v0, v29

    .line 504
    .line 505
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    .line 506
    .line 507
    .line 508
    move-result v29

    .line 509
    if-eqz v29, :cond_a

    .line 510
    .line 511
    const/16 v29, 0x0

    .line 512
    .line 513
    goto :goto_10

    .line 514
    :cond_a
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getBlob(I)[B

    .line 515
    .line 516
    .line 517
    move-result-object v29

    .line 518
    :goto_10
    invoke-static/range {v29 .. v29}, LK1/c0;->byteArrayToSetOfTriggers([B)Ljava/util/Set;

    .line 519
    .line 520
    .line 521
    move-result-object v69

    .line 522
    new-instance v44, LB1/f;

    .line 523
    .line 524
    move-object/from16 v59, v44

    .line 525
    .line 526
    invoke-direct/range {v59 .. v69}, LB1/f;-><init>(Landroidx/work/NetworkType;ZZZZJJLjava/util/Set;)V

    .line 527
    .line 528
    .line 529
    move-object/from16 v44, v59

    .line 530
    .line 531
    new-instance v31, LK1/E;

    .line 532
    .line 533
    invoke-direct/range {v31 .. v58}, LK1/E;-><init>(Ljava/lang/String;Landroidx/work/WorkInfo$State;Ljava/lang/String;Ljava/lang/String;LB1/h;LB1/h;JJJLB1/f;ILandroidx/work/BackoffPolicy;JJJJZLandroidx/work/OutOfQuotaPolicy;II)V

    .line 534
    .line 535
    .line 536
    move/from16 v29, v0

    .line 537
    .line 538
    move-object/from16 v0, v31

    .line 539
    .line 540
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 541
    .line 542
    .line 543
    move/from16 v0, v30

    .line 544
    .line 545
    move/from16 v30, v2

    .line 546
    .line 547
    goto/16 :goto_0

    .line 548
    .line 549
    :catchall_0
    move-exception v0

    .line 550
    goto :goto_11

    .line 551
    :cond_b
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 552
    .line 553
    .line 554
    invoke-virtual/range {v16 .. v16}, Ln1/O;->release()V

    .line 555
    .line 556
    .line 557
    return-object v3

    .line 558
    :catchall_1
    move-exception v0

    .line 559
    move-object/from16 v16, v2

    .line 560
    .line 561
    :goto_11
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 562
    .line 563
    .line 564
    invoke-virtual/range {v16 .. v16}, Ln1/O;->release()V

    .line 565
    .line 566
    .line 567
    throw v0
.end method

.method public getEligibleWorkForScheduling(I)Ljava/util/List;
    .locals 70
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "LK1/E;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "SELECT * FROM workspec WHERE state=0 AND schedule_requested_at=-1 ORDER BY last_enqueue_time LIMIT (SELECT MAX(?-COUNT(*), 0) FROM workspec WHERE schedule_requested_at<>-1 AND state NOT IN (2, 3, 5))"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Ln1/O;->acquire(Ljava/lang/String;I)Ln1/O;

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    move/from16 v0, p1

    .line 9
    .line 10
    int-to-long v3, v0

    .line 11
    invoke-virtual {v2, v1, v3, v4}, Ln1/O;->bindLong(IJ)V

    .line 12
    .line 13
    .line 14
    move-object/from16 v3, p0

    .line 15
    .line 16
    iget-object v0, v3, LK1/U;->a:Landroidx/room/RoomDatabase;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 19
    .line 20
    .line 21
    const/4 v4, 0x0

    .line 22
    const/4 v5, 0x0

    .line 23
    invoke-static {v0, v2, v4, v5}, Lp1/b;->query(Landroidx/room/RoomDatabase;Lr1/o;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    .line 24
    .line 25
    .line 26
    move-result-object v6

    .line 27
    :try_start_0
    const-string v0, "id"

    .line 28
    .line 29
    invoke-static {v6, v0}, Lp1/a;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    const-string v7, "state"

    .line 34
    .line 35
    invoke-static {v6, v7}, Lp1/a;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    move-result v7

    .line 39
    const-string v8, "worker_class_name"

    .line 40
    .line 41
    invoke-static {v6, v8}, Lp1/a;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    move-result v8

    .line 45
    const-string v9, "input_merger_class_name"

    .line 46
    .line 47
    invoke-static {v6, v9}, Lp1/a;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    move-result v9

    .line 51
    const-string v10, "input"

    .line 52
    .line 53
    invoke-static {v6, v10}, Lp1/a;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    move-result v10

    .line 57
    const-string v11, "output"

    .line 58
    .line 59
    invoke-static {v6, v11}, Lp1/a;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    move-result v11

    .line 63
    const-string v12, "initial_delay"

    .line 64
    .line 65
    invoke-static {v6, v12}, Lp1/a;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    move-result v12

    .line 69
    const-string v13, "interval_duration"

    .line 70
    .line 71
    invoke-static {v6, v13}, Lp1/a;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    move-result v13

    .line 75
    const-string v14, "flex_duration"

    .line 76
    .line 77
    invoke-static {v6, v14}, Lp1/a;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    move-result v14

    .line 81
    const-string v15, "run_attempt_count"

    .line 82
    .line 83
    invoke-static {v6, v15}, Lp1/a;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 84
    .line 85
    .line 86
    move-result v15

    .line 87
    const-string v1, "backoff_policy"

    .line 88
    .line 89
    invoke-static {v6, v1}, Lp1/a;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    const-string v4, "backoff_delay_duration"

    .line 94
    .line 95
    invoke-static {v6, v4}, Lp1/a;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 96
    .line 97
    .line 98
    move-result v4

    .line 99
    const-string v5, "last_enqueue_time"

    .line 100
    .line 101
    invoke-static {v6, v5}, Lp1/a;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 102
    .line 103
    .line 104
    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 105
    move-object/from16 v16, v2

    .line 106
    .line 107
    :try_start_1
    const-string v2, "minimum_retention_duration"

    .line 108
    .line 109
    invoke-static {v6, v2}, Lp1/a;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 110
    .line 111
    .line 112
    move-result v2

    .line 113
    const-string v3, "schedule_requested_at"

    .line 114
    .line 115
    invoke-static {v6, v3}, Lp1/a;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 116
    .line 117
    .line 118
    move-result v3

    .line 119
    move/from16 v17, v3

    .line 120
    .line 121
    const-string v3, "run_in_foreground"

    .line 122
    .line 123
    invoke-static {v6, v3}, Lp1/a;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 124
    .line 125
    .line 126
    move-result v3

    .line 127
    move/from16 v18, v3

    .line 128
    .line 129
    const-string v3, "out_of_quota_policy"

    .line 130
    .line 131
    invoke-static {v6, v3}, Lp1/a;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 132
    .line 133
    .line 134
    move-result v3

    .line 135
    move/from16 v19, v3

    .line 136
    .line 137
    const-string v3, "period_count"

    .line 138
    .line 139
    invoke-static {v6, v3}, Lp1/a;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 140
    .line 141
    .line 142
    move-result v3

    .line 143
    move/from16 v20, v3

    .line 144
    .line 145
    const-string v3, "generation"

    .line 146
    .line 147
    invoke-static {v6, v3}, Lp1/a;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 148
    .line 149
    .line 150
    move-result v3

    .line 151
    move/from16 v21, v3

    .line 152
    .line 153
    const-string v3, "required_network_type"

    .line 154
    .line 155
    invoke-static {v6, v3}, Lp1/a;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 156
    .line 157
    .line 158
    move-result v3

    .line 159
    move/from16 v22, v3

    .line 160
    .line 161
    const-string v3, "requires_charging"

    .line 162
    .line 163
    invoke-static {v6, v3}, Lp1/a;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 164
    .line 165
    .line 166
    move-result v3

    .line 167
    move/from16 v23, v3

    .line 168
    .line 169
    const-string v3, "requires_device_idle"

    .line 170
    .line 171
    invoke-static {v6, v3}, Lp1/a;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 172
    .line 173
    .line 174
    move-result v3

    .line 175
    move/from16 v24, v3

    .line 176
    .line 177
    const-string v3, "requires_battery_not_low"

    .line 178
    .line 179
    invoke-static {v6, v3}, Lp1/a;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 180
    .line 181
    .line 182
    move-result v3

    .line 183
    move/from16 v25, v3

    .line 184
    .line 185
    const-string v3, "requires_storage_not_low"

    .line 186
    .line 187
    invoke-static {v6, v3}, Lp1/a;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 188
    .line 189
    .line 190
    move-result v3

    .line 191
    move/from16 v26, v3

    .line 192
    .line 193
    const-string v3, "trigger_content_update_delay"

    .line 194
    .line 195
    invoke-static {v6, v3}, Lp1/a;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 196
    .line 197
    .line 198
    move-result v3

    .line 199
    move/from16 v27, v3

    .line 200
    .line 201
    const-string v3, "trigger_max_content_delay"

    .line 202
    .line 203
    invoke-static {v6, v3}, Lp1/a;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 204
    .line 205
    .line 206
    move-result v3

    .line 207
    move/from16 v28, v3

    .line 208
    .line 209
    const-string v3, "content_uri_triggers"

    .line 210
    .line 211
    invoke-static {v6, v3}, Lp1/a;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 212
    .line 213
    .line 214
    move-result v3

    .line 215
    move/from16 v29, v3

    .line 216
    .line 217
    new-instance v3, Ljava/util/ArrayList;

    .line 218
    .line 219
    move/from16 v30, v2

    .line 220
    .line 221
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    .line 222
    .line 223
    .line 224
    move-result v2

    .line 225
    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 226
    .line 227
    .line 228
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    .line 229
    .line 230
    .line 231
    move-result v2

    .line 232
    if-eqz v2, :cond_b

    .line 233
    .line 234
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    .line 235
    .line 236
    .line 237
    move-result v2

    .line 238
    if-eqz v2, :cond_0

    .line 239
    .line 240
    const/16 v32, 0x0

    .line 241
    .line 242
    goto :goto_1

    .line 243
    :cond_0
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v2

    .line 247
    move-object/from16 v32, v2

    .line 248
    .line 249
    :goto_1
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    .line 250
    .line 251
    .line 252
    move-result v2

    .line 253
    invoke-static {v2}, LK1/c0;->intToState(I)Landroidx/work/WorkInfo$State;

    .line 254
    .line 255
    .line 256
    move-result-object v33

    .line 257
    invoke-interface {v6, v8}, Landroid/database/Cursor;->isNull(I)Z

    .line 258
    .line 259
    .line 260
    move-result v2

    .line 261
    if-eqz v2, :cond_1

    .line 262
    .line 263
    const/16 v34, 0x0

    .line 264
    .line 265
    goto :goto_2

    .line 266
    :cond_1
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v2

    .line 270
    move-object/from16 v34, v2

    .line 271
    .line 272
    :goto_2
    invoke-interface {v6, v9}, Landroid/database/Cursor;->isNull(I)Z

    .line 273
    .line 274
    .line 275
    move-result v2

    .line 276
    if-eqz v2, :cond_2

    .line 277
    .line 278
    const/16 v35, 0x0

    .line 279
    .line 280
    goto :goto_3

    .line 281
    :cond_2
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v2

    .line 285
    move-object/from16 v35, v2

    .line 286
    .line 287
    :goto_3
    invoke-interface {v6, v10}, Landroid/database/Cursor;->isNull(I)Z

    .line 288
    .line 289
    .line 290
    move-result v2

    .line 291
    if-eqz v2, :cond_3

    .line 292
    .line 293
    const/4 v2, 0x0

    .line 294
    goto :goto_4

    .line 295
    :cond_3
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getBlob(I)[B

    .line 296
    .line 297
    .line 298
    move-result-object v2

    .line 299
    :goto_4
    invoke-static {v2}, LB1/h;->fromByteArray([B)LB1/h;

    .line 300
    .line 301
    .line 302
    move-result-object v36

    .line 303
    invoke-interface {v6, v11}, Landroid/database/Cursor;->isNull(I)Z

    .line 304
    .line 305
    .line 306
    move-result v2

    .line 307
    if-eqz v2, :cond_4

    .line 308
    .line 309
    const/4 v2, 0x0

    .line 310
    goto :goto_5

    .line 311
    :cond_4
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getBlob(I)[B

    .line 312
    .line 313
    .line 314
    move-result-object v2

    .line 315
    :goto_5
    invoke-static {v2}, LB1/h;->fromByteArray([B)LB1/h;

    .line 316
    .line 317
    .line 318
    move-result-object v37

    .line 319
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getLong(I)J

    .line 320
    .line 321
    .line 322
    move-result-wide v38

    .line 323
    invoke-interface {v6, v13}, Landroid/database/Cursor;->getLong(I)J

    .line 324
    .line 325
    .line 326
    move-result-wide v40

    .line 327
    invoke-interface {v6, v14}, Landroid/database/Cursor;->getLong(I)J

    .line 328
    .line 329
    .line 330
    move-result-wide v42

    .line 331
    invoke-interface {v6, v15}, Landroid/database/Cursor;->getInt(I)I

    .line 332
    .line 333
    .line 334
    move-result v45

    .line 335
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    .line 336
    .line 337
    .line 338
    move-result v2

    .line 339
    invoke-static {v2}, LK1/c0;->intToBackoffPolicy(I)Landroidx/work/BackoffPolicy;

    .line 340
    .line 341
    .line 342
    move-result-object v46

    .line 343
    invoke-interface {v6, v4}, Landroid/database/Cursor;->getLong(I)J

    .line 344
    .line 345
    .line 346
    move-result-wide v47

    .line 347
    invoke-interface {v6, v5}, Landroid/database/Cursor;->getLong(I)J

    .line 348
    .line 349
    .line 350
    move-result-wide v49

    .line 351
    move/from16 v2, v30

    .line 352
    .line 353
    invoke-interface {v6, v2}, Landroid/database/Cursor;->getLong(I)J

    .line 354
    .line 355
    .line 356
    move-result-wide v51

    .line 357
    move/from16 v30, v0

    .line 358
    .line 359
    move/from16 v0, v17

    .line 360
    .line 361
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    .line 362
    .line 363
    .line 364
    move-result-wide v53

    .line 365
    move/from16 v17, v0

    .line 366
    .line 367
    move/from16 v0, v18

    .line 368
    .line 369
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 370
    .line 371
    .line 372
    move-result v18

    .line 373
    if-eqz v18, :cond_5

    .line 374
    .line 375
    const/16 v55, 0x1

    .line 376
    .line 377
    :goto_6
    move/from16 v18, v0

    .line 378
    .line 379
    move/from16 v0, v19

    .line 380
    .line 381
    goto :goto_7

    .line 382
    :cond_5
    const/16 v55, 0x0

    .line 383
    .line 384
    goto :goto_6

    .line 385
    :goto_7
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 386
    .line 387
    .line 388
    move-result v19

    .line 389
    invoke-static/range {v19 .. v19}, LK1/c0;->intToOutOfQuotaPolicy(I)Landroidx/work/OutOfQuotaPolicy;

    .line 390
    .line 391
    .line 392
    move-result-object v56

    .line 393
    move/from16 v19, v0

    .line 394
    .line 395
    move/from16 v0, v20

    .line 396
    .line 397
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 398
    .line 399
    .line 400
    move-result v57

    .line 401
    move/from16 v20, v0

    .line 402
    .line 403
    move/from16 v0, v21

    .line 404
    .line 405
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 406
    .line 407
    .line 408
    move-result v58

    .line 409
    move/from16 v21, v0

    .line 410
    .line 411
    move/from16 v0, v22

    .line 412
    .line 413
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 414
    .line 415
    .line 416
    move-result v22

    .line 417
    invoke-static/range {v22 .. v22}, LK1/c0;->intToNetworkType(I)Landroidx/work/NetworkType;

    .line 418
    .line 419
    .line 420
    move-result-object v60

    .line 421
    move/from16 v22, v0

    .line 422
    .line 423
    move/from16 v0, v23

    .line 424
    .line 425
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 426
    .line 427
    .line 428
    move-result v23

    .line 429
    if-eqz v23, :cond_6

    .line 430
    .line 431
    const/16 v61, 0x1

    .line 432
    .line 433
    :goto_8
    move/from16 v23, v0

    .line 434
    .line 435
    move/from16 v0, v24

    .line 436
    .line 437
    goto :goto_9

    .line 438
    :cond_6
    const/16 v61, 0x0

    .line 439
    .line 440
    goto :goto_8

    .line 441
    :goto_9
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 442
    .line 443
    .line 444
    move-result v24

    .line 445
    if-eqz v24, :cond_7

    .line 446
    .line 447
    const/16 v62, 0x1

    .line 448
    .line 449
    :goto_a
    move/from16 v24, v0

    .line 450
    .line 451
    move/from16 v0, v25

    .line 452
    .line 453
    goto :goto_b

    .line 454
    :cond_7
    const/16 v62, 0x0

    .line 455
    .line 456
    goto :goto_a

    .line 457
    :goto_b
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 458
    .line 459
    .line 460
    move-result v25

    .line 461
    if-eqz v25, :cond_8

    .line 462
    .line 463
    const/16 v63, 0x1

    .line 464
    .line 465
    :goto_c
    move/from16 v25, v0

    .line 466
    .line 467
    move/from16 v0, v26

    .line 468
    .line 469
    goto :goto_d

    .line 470
    :cond_8
    const/16 v63, 0x0

    .line 471
    .line 472
    goto :goto_c

    .line 473
    :goto_d
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 474
    .line 475
    .line 476
    move-result v26

    .line 477
    if-eqz v26, :cond_9

    .line 478
    .line 479
    const/16 v64, 0x1

    .line 480
    .line 481
    :goto_e
    move/from16 v26, v0

    .line 482
    .line 483
    move/from16 v0, v27

    .line 484
    .line 485
    goto :goto_f

    .line 486
    :cond_9
    const/16 v64, 0x0

    .line 487
    .line 488
    goto :goto_e

    .line 489
    :goto_f
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    .line 490
    .line 491
    .line 492
    move-result-wide v65

    .line 493
    move/from16 v27, v0

    .line 494
    .line 495
    move/from16 v0, v28

    .line 496
    .line 497
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    .line 498
    .line 499
    .line 500
    move-result-wide v67

    .line 501
    move/from16 v28, v0

    .line 502
    .line 503
    move/from16 v0, v29

    .line 504
    .line 505
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    .line 506
    .line 507
    .line 508
    move-result v29

    .line 509
    if-eqz v29, :cond_a

    .line 510
    .line 511
    const/16 v29, 0x0

    .line 512
    .line 513
    goto :goto_10

    .line 514
    :cond_a
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getBlob(I)[B

    .line 515
    .line 516
    .line 517
    move-result-object v29

    .line 518
    :goto_10
    invoke-static/range {v29 .. v29}, LK1/c0;->byteArrayToSetOfTriggers([B)Ljava/util/Set;

    .line 519
    .line 520
    .line 521
    move-result-object v69

    .line 522
    new-instance v44, LB1/f;

    .line 523
    .line 524
    move-object/from16 v59, v44

    .line 525
    .line 526
    invoke-direct/range {v59 .. v69}, LB1/f;-><init>(Landroidx/work/NetworkType;ZZZZJJLjava/util/Set;)V

    .line 527
    .line 528
    .line 529
    move-object/from16 v44, v59

    .line 530
    .line 531
    new-instance v31, LK1/E;

    .line 532
    .line 533
    invoke-direct/range {v31 .. v58}, LK1/E;-><init>(Ljava/lang/String;Landroidx/work/WorkInfo$State;Ljava/lang/String;Ljava/lang/String;LB1/h;LB1/h;JJJLB1/f;ILandroidx/work/BackoffPolicy;JJJJZLandroidx/work/OutOfQuotaPolicy;II)V

    .line 534
    .line 535
    .line 536
    move/from16 v29, v0

    .line 537
    .line 538
    move-object/from16 v0, v31

    .line 539
    .line 540
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 541
    .line 542
    .line 543
    move/from16 v0, v30

    .line 544
    .line 545
    move/from16 v30, v2

    .line 546
    .line 547
    goto/16 :goto_0

    .line 548
    .line 549
    :catchall_0
    move-exception v0

    .line 550
    goto :goto_11

    .line 551
    :cond_b
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 552
    .line 553
    .line 554
    invoke-virtual/range {v16 .. v16}, Ln1/O;->release()V

    .line 555
    .line 556
    .line 557
    return-object v3

    .line 558
    :catchall_1
    move-exception v0

    .line 559
    move-object/from16 v16, v2

    .line 560
    .line 561
    :goto_11
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 562
    .line 563
    .line 564
    invoke-virtual/range {v16 .. v16}, Ln1/O;->release()V

    .line 565
    .line 566
    .line 567
    throw v0
.end method

.method public getInputsFromPrerequisites(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "LB1/h;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "SELECT output FROM workspec WHERE id IN\n             (SELECT prerequisite_id FROM dependency WHERE work_spec_id=?)"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Ln1/O;->acquire(Ljava/lang/String;I)Ln1/O;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ln1/O;->bindNull(I)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {v0, v1, p1}, Ln1/O;->bindString(ILjava/lang/String;)V

    .line 15
    .line 16
    .line 17
    :goto_0
    iget-object p1, p0, LK1/U;->a:Landroidx/room/RoomDatabase;

    .line 18
    .line 19
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 20
    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    const/4 v2, 0x0

    .line 24
    invoke-static {p1, v0, v1, v2}, Lp1/b;->query(Landroidx/room/RoomDatabase;Lr1/o;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 35
    .line 36
    .line 37
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    if-eqz v4, :cond_2

    .line 42
    .line 43
    invoke-interface {p1, v1}, Landroid/database/Cursor;->isNull(I)Z

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    if-eqz v4, :cond_1

    .line 48
    .line 49
    move-object v4, v2

    .line 50
    goto :goto_2

    .line 51
    :cond_1
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getBlob(I)[B

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    :goto_2
    invoke-static {v4}, LB1/h;->fromByteArray([B)LB1/h;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :catchall_0
    move-exception v1

    .line 64
    goto :goto_3

    .line 65
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Ln1/O;->release()V

    .line 69
    .line 70
    .line 71
    return-object v3

    .line 72
    :goto_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0}, Ln1/O;->release()V

    .line 76
    .line 77
    .line 78
    throw v1
.end method

.method public getRecentlyCompletedWork(J)Ljava/util/List;
    .locals 70
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "LK1/E;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "SELECT * FROM workspec WHERE last_enqueue_time >= ? AND state IN (2, 3, 5) ORDER BY last_enqueue_time DESC"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Ln1/O;->acquire(Ljava/lang/String;I)Ln1/O;

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    move-wide/from16 v3, p1

    .line 9
    .line 10
    invoke-virtual {v2, v1, v3, v4}, Ln1/O;->bindLong(IJ)V

    .line 11
    .line 12
    .line 13
    move-object/from16 v3, p0

    .line 14
    .line 15
    iget-object v0, v3, LK1/U;->a:Landroidx/room/RoomDatabase;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 18
    .line 19
    .line 20
    const/4 v4, 0x0

    .line 21
    const/4 v5, 0x0

    .line 22
    invoke-static {v0, v2, v4, v5}, Lp1/b;->query(Landroidx/room/RoomDatabase;Lr1/o;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    .line 23
    .line 24
    .line 25
    move-result-object v6

    .line 26
    :try_start_0
    const-string v0, "id"

    .line 27
    .line 28
    invoke-static {v6, v0}, Lp1/a;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    const-string v7, "state"

    .line 33
    .line 34
    invoke-static {v6, v7}, Lp1/a;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    move-result v7

    .line 38
    const-string v8, "worker_class_name"

    .line 39
    .line 40
    invoke-static {v6, v8}, Lp1/a;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    move-result v8

    .line 44
    const-string v9, "input_merger_class_name"

    .line 45
    .line 46
    invoke-static {v6, v9}, Lp1/a;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    move-result v9

    .line 50
    const-string v10, "input"

    .line 51
    .line 52
    invoke-static {v6, v10}, Lp1/a;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    move-result v10

    .line 56
    const-string v11, "output"

    .line 57
    .line 58
    invoke-static {v6, v11}, Lp1/a;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    move-result v11

    .line 62
    const-string v12, "initial_delay"

    .line 63
    .line 64
    invoke-static {v6, v12}, Lp1/a;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    move-result v12

    .line 68
    const-string v13, "interval_duration"

    .line 69
    .line 70
    invoke-static {v6, v13}, Lp1/a;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    move-result v13

    .line 74
    const-string v14, "flex_duration"

    .line 75
    .line 76
    invoke-static {v6, v14}, Lp1/a;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    move-result v14

    .line 80
    const-string v15, "run_attempt_count"

    .line 81
    .line 82
    invoke-static {v6, v15}, Lp1/a;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    move-result v15

    .line 86
    const-string v1, "backoff_policy"

    .line 87
    .line 88
    invoke-static {v6, v1}, Lp1/a;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    const-string v4, "backoff_delay_duration"

    .line 93
    .line 94
    invoke-static {v6, v4}, Lp1/a;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 95
    .line 96
    .line 97
    move-result v4

    .line 98
    const-string v5, "last_enqueue_time"

    .line 99
    .line 100
    invoke-static {v6, v5}, Lp1/a;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 101
    .line 102
    .line 103
    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 104
    move-object/from16 v16, v2

    .line 105
    .line 106
    :try_start_1
    const-string v2, "minimum_retention_duration"

    .line 107
    .line 108
    invoke-static {v6, v2}, Lp1/a;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 109
    .line 110
    .line 111
    move-result v2

    .line 112
    const-string v3, "schedule_requested_at"

    .line 113
    .line 114
    invoke-static {v6, v3}, Lp1/a;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 115
    .line 116
    .line 117
    move-result v3

    .line 118
    move/from16 v17, v3

    .line 119
    .line 120
    const-string v3, "run_in_foreground"

    .line 121
    .line 122
    invoke-static {v6, v3}, Lp1/a;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 123
    .line 124
    .line 125
    move-result v3

    .line 126
    move/from16 v18, v3

    .line 127
    .line 128
    const-string v3, "out_of_quota_policy"

    .line 129
    .line 130
    invoke-static {v6, v3}, Lp1/a;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 131
    .line 132
    .line 133
    move-result v3

    .line 134
    move/from16 v19, v3

    .line 135
    .line 136
    const-string v3, "period_count"

    .line 137
    .line 138
    invoke-static {v6, v3}, Lp1/a;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 139
    .line 140
    .line 141
    move-result v3

    .line 142
    move/from16 v20, v3

    .line 143
    .line 144
    const-string v3, "generation"

    .line 145
    .line 146
    invoke-static {v6, v3}, Lp1/a;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 147
    .line 148
    .line 149
    move-result v3

    .line 150
    move/from16 v21, v3

    .line 151
    .line 152
    const-string v3, "required_network_type"

    .line 153
    .line 154
    invoke-static {v6, v3}, Lp1/a;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 155
    .line 156
    .line 157
    move-result v3

    .line 158
    move/from16 v22, v3

    .line 159
    .line 160
    const-string v3, "requires_charging"

    .line 161
    .line 162
    invoke-static {v6, v3}, Lp1/a;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 163
    .line 164
    .line 165
    move-result v3

    .line 166
    move/from16 v23, v3

    .line 167
    .line 168
    const-string v3, "requires_device_idle"

    .line 169
    .line 170
    invoke-static {v6, v3}, Lp1/a;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 171
    .line 172
    .line 173
    move-result v3

    .line 174
    move/from16 v24, v3

    .line 175
    .line 176
    const-string v3, "requires_battery_not_low"

    .line 177
    .line 178
    invoke-static {v6, v3}, Lp1/a;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 179
    .line 180
    .line 181
    move-result v3

    .line 182
    move/from16 v25, v3

    .line 183
    .line 184
    const-string v3, "requires_storage_not_low"

    .line 185
    .line 186
    invoke-static {v6, v3}, Lp1/a;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 187
    .line 188
    .line 189
    move-result v3

    .line 190
    move/from16 v26, v3

    .line 191
    .line 192
    const-string v3, "trigger_content_update_delay"

    .line 193
    .line 194
    invoke-static {v6, v3}, Lp1/a;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 195
    .line 196
    .line 197
    move-result v3

    .line 198
    move/from16 v27, v3

    .line 199
    .line 200
    const-string v3, "trigger_max_content_delay"

    .line 201
    .line 202
    invoke-static {v6, v3}, Lp1/a;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 203
    .line 204
    .line 205
    move-result v3

    .line 206
    move/from16 v28, v3

    .line 207
    .line 208
    const-string v3, "content_uri_triggers"

    .line 209
    .line 210
    invoke-static {v6, v3}, Lp1/a;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 211
    .line 212
    .line 213
    move-result v3

    .line 214
    move/from16 v29, v3

    .line 215
    .line 216
    new-instance v3, Ljava/util/ArrayList;

    .line 217
    .line 218
    move/from16 v30, v2

    .line 219
    .line 220
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    .line 221
    .line 222
    .line 223
    move-result v2

    .line 224
    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 225
    .line 226
    .line 227
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    .line 228
    .line 229
    .line 230
    move-result v2

    .line 231
    if-eqz v2, :cond_b

    .line 232
    .line 233
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    .line 234
    .line 235
    .line 236
    move-result v2

    .line 237
    if-eqz v2, :cond_0

    .line 238
    .line 239
    const/16 v32, 0x0

    .line 240
    .line 241
    goto :goto_1

    .line 242
    :cond_0
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v2

    .line 246
    move-object/from16 v32, v2

    .line 247
    .line 248
    :goto_1
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    .line 249
    .line 250
    .line 251
    move-result v2

    .line 252
    invoke-static {v2}, LK1/c0;->intToState(I)Landroidx/work/WorkInfo$State;

    .line 253
    .line 254
    .line 255
    move-result-object v33

    .line 256
    invoke-interface {v6, v8}, Landroid/database/Cursor;->isNull(I)Z

    .line 257
    .line 258
    .line 259
    move-result v2

    .line 260
    if-eqz v2, :cond_1

    .line 261
    .line 262
    const/16 v34, 0x0

    .line 263
    .line 264
    goto :goto_2

    .line 265
    :cond_1
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v2

    .line 269
    move-object/from16 v34, v2

    .line 270
    .line 271
    :goto_2
    invoke-interface {v6, v9}, Landroid/database/Cursor;->isNull(I)Z

    .line 272
    .line 273
    .line 274
    move-result v2

    .line 275
    if-eqz v2, :cond_2

    .line 276
    .line 277
    const/16 v35, 0x0

    .line 278
    .line 279
    goto :goto_3

    .line 280
    :cond_2
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v2

    .line 284
    move-object/from16 v35, v2

    .line 285
    .line 286
    :goto_3
    invoke-interface {v6, v10}, Landroid/database/Cursor;->isNull(I)Z

    .line 287
    .line 288
    .line 289
    move-result v2

    .line 290
    if-eqz v2, :cond_3

    .line 291
    .line 292
    const/4 v2, 0x0

    .line 293
    goto :goto_4

    .line 294
    :cond_3
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getBlob(I)[B

    .line 295
    .line 296
    .line 297
    move-result-object v2

    .line 298
    :goto_4
    invoke-static {v2}, LB1/h;->fromByteArray([B)LB1/h;

    .line 299
    .line 300
    .line 301
    move-result-object v36

    .line 302
    invoke-interface {v6, v11}, Landroid/database/Cursor;->isNull(I)Z

    .line 303
    .line 304
    .line 305
    move-result v2

    .line 306
    if-eqz v2, :cond_4

    .line 307
    .line 308
    const/4 v2, 0x0

    .line 309
    goto :goto_5

    .line 310
    :cond_4
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getBlob(I)[B

    .line 311
    .line 312
    .line 313
    move-result-object v2

    .line 314
    :goto_5
    invoke-static {v2}, LB1/h;->fromByteArray([B)LB1/h;

    .line 315
    .line 316
    .line 317
    move-result-object v37

    .line 318
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getLong(I)J

    .line 319
    .line 320
    .line 321
    move-result-wide v38

    .line 322
    invoke-interface {v6, v13}, Landroid/database/Cursor;->getLong(I)J

    .line 323
    .line 324
    .line 325
    move-result-wide v40

    .line 326
    invoke-interface {v6, v14}, Landroid/database/Cursor;->getLong(I)J

    .line 327
    .line 328
    .line 329
    move-result-wide v42

    .line 330
    invoke-interface {v6, v15}, Landroid/database/Cursor;->getInt(I)I

    .line 331
    .line 332
    .line 333
    move-result v45

    .line 334
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    .line 335
    .line 336
    .line 337
    move-result v2

    .line 338
    invoke-static {v2}, LK1/c0;->intToBackoffPolicy(I)Landroidx/work/BackoffPolicy;

    .line 339
    .line 340
    .line 341
    move-result-object v46

    .line 342
    invoke-interface {v6, v4}, Landroid/database/Cursor;->getLong(I)J

    .line 343
    .line 344
    .line 345
    move-result-wide v47

    .line 346
    invoke-interface {v6, v5}, Landroid/database/Cursor;->getLong(I)J

    .line 347
    .line 348
    .line 349
    move-result-wide v49

    .line 350
    move/from16 v2, v30

    .line 351
    .line 352
    invoke-interface {v6, v2}, Landroid/database/Cursor;->getLong(I)J

    .line 353
    .line 354
    .line 355
    move-result-wide v51

    .line 356
    move/from16 v30, v0

    .line 357
    .line 358
    move/from16 v0, v17

    .line 359
    .line 360
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    .line 361
    .line 362
    .line 363
    move-result-wide v53

    .line 364
    move/from16 v17, v0

    .line 365
    .line 366
    move/from16 v0, v18

    .line 367
    .line 368
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 369
    .line 370
    .line 371
    move-result v18

    .line 372
    if-eqz v18, :cond_5

    .line 373
    .line 374
    const/16 v55, 0x1

    .line 375
    .line 376
    :goto_6
    move/from16 v18, v0

    .line 377
    .line 378
    move/from16 v0, v19

    .line 379
    .line 380
    goto :goto_7

    .line 381
    :cond_5
    const/16 v55, 0x0

    .line 382
    .line 383
    goto :goto_6

    .line 384
    :goto_7
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 385
    .line 386
    .line 387
    move-result v19

    .line 388
    invoke-static/range {v19 .. v19}, LK1/c0;->intToOutOfQuotaPolicy(I)Landroidx/work/OutOfQuotaPolicy;

    .line 389
    .line 390
    .line 391
    move-result-object v56

    .line 392
    move/from16 v19, v0

    .line 393
    .line 394
    move/from16 v0, v20

    .line 395
    .line 396
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 397
    .line 398
    .line 399
    move-result v57

    .line 400
    move/from16 v20, v0

    .line 401
    .line 402
    move/from16 v0, v21

    .line 403
    .line 404
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 405
    .line 406
    .line 407
    move-result v58

    .line 408
    move/from16 v21, v0

    .line 409
    .line 410
    move/from16 v0, v22

    .line 411
    .line 412
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 413
    .line 414
    .line 415
    move-result v22

    .line 416
    invoke-static/range {v22 .. v22}, LK1/c0;->intToNetworkType(I)Landroidx/work/NetworkType;

    .line 417
    .line 418
    .line 419
    move-result-object v60

    .line 420
    move/from16 v22, v0

    .line 421
    .line 422
    move/from16 v0, v23

    .line 423
    .line 424
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 425
    .line 426
    .line 427
    move-result v23

    .line 428
    if-eqz v23, :cond_6

    .line 429
    .line 430
    const/16 v61, 0x1

    .line 431
    .line 432
    :goto_8
    move/from16 v23, v0

    .line 433
    .line 434
    move/from16 v0, v24

    .line 435
    .line 436
    goto :goto_9

    .line 437
    :cond_6
    const/16 v61, 0x0

    .line 438
    .line 439
    goto :goto_8

    .line 440
    :goto_9
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 441
    .line 442
    .line 443
    move-result v24

    .line 444
    if-eqz v24, :cond_7

    .line 445
    .line 446
    const/16 v62, 0x1

    .line 447
    .line 448
    :goto_a
    move/from16 v24, v0

    .line 449
    .line 450
    move/from16 v0, v25

    .line 451
    .line 452
    goto :goto_b

    .line 453
    :cond_7
    const/16 v62, 0x0

    .line 454
    .line 455
    goto :goto_a

    .line 456
    :goto_b
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 457
    .line 458
    .line 459
    move-result v25

    .line 460
    if-eqz v25, :cond_8

    .line 461
    .line 462
    const/16 v63, 0x1

    .line 463
    .line 464
    :goto_c
    move/from16 v25, v0

    .line 465
    .line 466
    move/from16 v0, v26

    .line 467
    .line 468
    goto :goto_d

    .line 469
    :cond_8
    const/16 v63, 0x0

    .line 470
    .line 471
    goto :goto_c

    .line 472
    :goto_d
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 473
    .line 474
    .line 475
    move-result v26

    .line 476
    if-eqz v26, :cond_9

    .line 477
    .line 478
    const/16 v64, 0x1

    .line 479
    .line 480
    :goto_e
    move/from16 v26, v0

    .line 481
    .line 482
    move/from16 v0, v27

    .line 483
    .line 484
    goto :goto_f

    .line 485
    :cond_9
    const/16 v64, 0x0

    .line 486
    .line 487
    goto :goto_e

    .line 488
    :goto_f
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    .line 489
    .line 490
    .line 491
    move-result-wide v65

    .line 492
    move/from16 v27, v0

    .line 493
    .line 494
    move/from16 v0, v28

    .line 495
    .line 496
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    .line 497
    .line 498
    .line 499
    move-result-wide v67

    .line 500
    move/from16 v28, v0

    .line 501
    .line 502
    move/from16 v0, v29

    .line 503
    .line 504
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    .line 505
    .line 506
    .line 507
    move-result v29

    .line 508
    if-eqz v29, :cond_a

    .line 509
    .line 510
    const/16 v29, 0x0

    .line 511
    .line 512
    goto :goto_10

    .line 513
    :cond_a
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getBlob(I)[B

    .line 514
    .line 515
    .line 516
    move-result-object v29

    .line 517
    :goto_10
    invoke-static/range {v29 .. v29}, LK1/c0;->byteArrayToSetOfTriggers([B)Ljava/util/Set;

    .line 518
    .line 519
    .line 520
    move-result-object v69

    .line 521
    new-instance v44, LB1/f;

    .line 522
    .line 523
    move-object/from16 v59, v44

    .line 524
    .line 525
    invoke-direct/range {v59 .. v69}, LB1/f;-><init>(Landroidx/work/NetworkType;ZZZZJJLjava/util/Set;)V

    .line 526
    .line 527
    .line 528
    move-object/from16 v44, v59

    .line 529
    .line 530
    new-instance v31, LK1/E;

    .line 531
    .line 532
    invoke-direct/range {v31 .. v58}, LK1/E;-><init>(Ljava/lang/String;Landroidx/work/WorkInfo$State;Ljava/lang/String;Ljava/lang/String;LB1/h;LB1/h;JJJLB1/f;ILandroidx/work/BackoffPolicy;JJJJZLandroidx/work/OutOfQuotaPolicy;II)V

    .line 533
    .line 534
    .line 535
    move/from16 v29, v0

    .line 536
    .line 537
    move-object/from16 v0, v31

    .line 538
    .line 539
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 540
    .line 541
    .line 542
    move/from16 v0, v30

    .line 543
    .line 544
    move/from16 v30, v2

    .line 545
    .line 546
    goto/16 :goto_0

    .line 547
    .line 548
    :catchall_0
    move-exception v0

    .line 549
    goto :goto_11

    .line 550
    :cond_b
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 551
    .line 552
    .line 553
    invoke-virtual/range {v16 .. v16}, Ln1/O;->release()V

    .line 554
    .line 555
    .line 556
    return-object v3

    .line 557
    :catchall_1
    move-exception v0

    .line 558
    move-object/from16 v16, v2

    .line 559
    .line 560
    :goto_11
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 561
    .line 562
    .line 563
    invoke-virtual/range {v16 .. v16}, Ln1/O;->release()V

    .line 564
    .line 565
    .line 566
    throw v0
.end method

.method public getRunningWork()Ljava/util/List;
    .locals 70
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LK1/E;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "SELECT * FROM workspec WHERE state=1"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Ln1/O;->acquire(Ljava/lang/String;I)Ln1/O;

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    move-object/from16 v3, p0

    .line 9
    .line 10
    iget-object v0, v3, LK1/U;->a:Landroidx/room/RoomDatabase;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 13
    .line 14
    .line 15
    const/4 v4, 0x0

    .line 16
    invoke-static {v0, v2, v1, v4}, Lp1/b;->query(Landroidx/room/RoomDatabase;Lr1/o;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    .line 17
    .line 18
    .line 19
    move-result-object v5

    .line 20
    :try_start_0
    const-string v0, "id"

    .line 21
    .line 22
    invoke-static {v5, v0}, Lp1/a;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    const-string v6, "state"

    .line 27
    .line 28
    invoke-static {v5, v6}, Lp1/a;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    move-result v6

    .line 32
    const-string v7, "worker_class_name"

    .line 33
    .line 34
    invoke-static {v5, v7}, Lp1/a;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    move-result v7

    .line 38
    const-string v8, "input_merger_class_name"

    .line 39
    .line 40
    invoke-static {v5, v8}, Lp1/a;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    move-result v8

    .line 44
    const-string v9, "input"

    .line 45
    .line 46
    invoke-static {v5, v9}, Lp1/a;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    move-result v9

    .line 50
    const-string v10, "output"

    .line 51
    .line 52
    invoke-static {v5, v10}, Lp1/a;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    move-result v10

    .line 56
    const-string v11, "initial_delay"

    .line 57
    .line 58
    invoke-static {v5, v11}, Lp1/a;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    move-result v11

    .line 62
    const-string v12, "interval_duration"

    .line 63
    .line 64
    invoke-static {v5, v12}, Lp1/a;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    move-result v12

    .line 68
    const-string v13, "flex_duration"

    .line 69
    .line 70
    invoke-static {v5, v13}, Lp1/a;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    move-result v13

    .line 74
    const-string v14, "run_attempt_count"

    .line 75
    .line 76
    invoke-static {v5, v14}, Lp1/a;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    move-result v14

    .line 80
    const-string v15, "backoff_policy"

    .line 81
    .line 82
    invoke-static {v5, v15}, Lp1/a;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    move-result v15

    .line 86
    const-string v1, "backoff_delay_duration"

    .line 87
    .line 88
    invoke-static {v5, v1}, Lp1/a;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    const-string v4, "last_enqueue_time"

    .line 93
    .line 94
    invoke-static {v5, v4}, Lp1/a;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 95
    .line 96
    .line 97
    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 98
    move-object/from16 v16, v2

    .line 99
    .line 100
    :try_start_1
    const-string v2, "minimum_retention_duration"

    .line 101
    .line 102
    invoke-static {v5, v2}, Lp1/a;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    const-string v3, "schedule_requested_at"

    .line 107
    .line 108
    invoke-static {v5, v3}, Lp1/a;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 109
    .line 110
    .line 111
    move-result v3

    .line 112
    move/from16 v17, v3

    .line 113
    .line 114
    const-string v3, "run_in_foreground"

    .line 115
    .line 116
    invoke-static {v5, v3}, Lp1/a;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 117
    .line 118
    .line 119
    move-result v3

    .line 120
    move/from16 v18, v3

    .line 121
    .line 122
    const-string v3, "out_of_quota_policy"

    .line 123
    .line 124
    invoke-static {v5, v3}, Lp1/a;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 125
    .line 126
    .line 127
    move-result v3

    .line 128
    move/from16 v19, v3

    .line 129
    .line 130
    const-string v3, "period_count"

    .line 131
    .line 132
    invoke-static {v5, v3}, Lp1/a;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 133
    .line 134
    .line 135
    move-result v3

    .line 136
    move/from16 v20, v3

    .line 137
    .line 138
    const-string v3, "generation"

    .line 139
    .line 140
    invoke-static {v5, v3}, Lp1/a;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 141
    .line 142
    .line 143
    move-result v3

    .line 144
    move/from16 v21, v3

    .line 145
    .line 146
    const-string v3, "required_network_type"

    .line 147
    .line 148
    invoke-static {v5, v3}, Lp1/a;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 149
    .line 150
    .line 151
    move-result v3

    .line 152
    move/from16 v22, v3

    .line 153
    .line 154
    const-string v3, "requires_charging"

    .line 155
    .line 156
    invoke-static {v5, v3}, Lp1/a;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 157
    .line 158
    .line 159
    move-result v3

    .line 160
    move/from16 v23, v3

    .line 161
    .line 162
    const-string v3, "requires_device_idle"

    .line 163
    .line 164
    invoke-static {v5, v3}, Lp1/a;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 165
    .line 166
    .line 167
    move-result v3

    .line 168
    move/from16 v24, v3

    .line 169
    .line 170
    const-string v3, "requires_battery_not_low"

    .line 171
    .line 172
    invoke-static {v5, v3}, Lp1/a;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 173
    .line 174
    .line 175
    move-result v3

    .line 176
    move/from16 v25, v3

    .line 177
    .line 178
    const-string v3, "requires_storage_not_low"

    .line 179
    .line 180
    invoke-static {v5, v3}, Lp1/a;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 181
    .line 182
    .line 183
    move-result v3

    .line 184
    move/from16 v26, v3

    .line 185
    .line 186
    const-string v3, "trigger_content_update_delay"

    .line 187
    .line 188
    invoke-static {v5, v3}, Lp1/a;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 189
    .line 190
    .line 191
    move-result v3

    .line 192
    move/from16 v27, v3

    .line 193
    .line 194
    const-string v3, "trigger_max_content_delay"

    .line 195
    .line 196
    invoke-static {v5, v3}, Lp1/a;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 197
    .line 198
    .line 199
    move-result v3

    .line 200
    move/from16 v28, v3

    .line 201
    .line 202
    const-string v3, "content_uri_triggers"

    .line 203
    .line 204
    invoke-static {v5, v3}, Lp1/a;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 205
    .line 206
    .line 207
    move-result v3

    .line 208
    move/from16 v29, v3

    .line 209
    .line 210
    new-instance v3, Ljava/util/ArrayList;

    .line 211
    .line 212
    move/from16 v30, v2

    .line 213
    .line 214
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    .line 215
    .line 216
    .line 217
    move-result v2

    .line 218
    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 219
    .line 220
    .line 221
    :goto_0
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    .line 222
    .line 223
    .line 224
    move-result v2

    .line 225
    if-eqz v2, :cond_b

    .line 226
    .line 227
    invoke-interface {v5, v0}, Landroid/database/Cursor;->isNull(I)Z

    .line 228
    .line 229
    .line 230
    move-result v2

    .line 231
    if-eqz v2, :cond_0

    .line 232
    .line 233
    const/16 v32, 0x0

    .line 234
    .line 235
    goto :goto_1

    .line 236
    :cond_0
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v2

    .line 240
    move-object/from16 v32, v2

    .line 241
    .line 242
    :goto_1
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    .line 243
    .line 244
    .line 245
    move-result v2

    .line 246
    invoke-static {v2}, LK1/c0;->intToState(I)Landroidx/work/WorkInfo$State;

    .line 247
    .line 248
    .line 249
    move-result-object v33

    .line 250
    invoke-interface {v5, v7}, Landroid/database/Cursor;->isNull(I)Z

    .line 251
    .line 252
    .line 253
    move-result v2

    .line 254
    if-eqz v2, :cond_1

    .line 255
    .line 256
    const/16 v34, 0x0

    .line 257
    .line 258
    goto :goto_2

    .line 259
    :cond_1
    invoke-interface {v5, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v2

    .line 263
    move-object/from16 v34, v2

    .line 264
    .line 265
    :goto_2
    invoke-interface {v5, v8}, Landroid/database/Cursor;->isNull(I)Z

    .line 266
    .line 267
    .line 268
    move-result v2

    .line 269
    if-eqz v2, :cond_2

    .line 270
    .line 271
    const/16 v35, 0x0

    .line 272
    .line 273
    goto :goto_3

    .line 274
    :cond_2
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v2

    .line 278
    move-object/from16 v35, v2

    .line 279
    .line 280
    :goto_3
    invoke-interface {v5, v9}, Landroid/database/Cursor;->isNull(I)Z

    .line 281
    .line 282
    .line 283
    move-result v2

    .line 284
    if-eqz v2, :cond_3

    .line 285
    .line 286
    const/4 v2, 0x0

    .line 287
    goto :goto_4

    .line 288
    :cond_3
    invoke-interface {v5, v9}, Landroid/database/Cursor;->getBlob(I)[B

    .line 289
    .line 290
    .line 291
    move-result-object v2

    .line 292
    :goto_4
    invoke-static {v2}, LB1/h;->fromByteArray([B)LB1/h;

    .line 293
    .line 294
    .line 295
    move-result-object v36

    .line 296
    invoke-interface {v5, v10}, Landroid/database/Cursor;->isNull(I)Z

    .line 297
    .line 298
    .line 299
    move-result v2

    .line 300
    if-eqz v2, :cond_4

    .line 301
    .line 302
    const/4 v2, 0x0

    .line 303
    goto :goto_5

    .line 304
    :cond_4
    invoke-interface {v5, v10}, Landroid/database/Cursor;->getBlob(I)[B

    .line 305
    .line 306
    .line 307
    move-result-object v2

    .line 308
    :goto_5
    invoke-static {v2}, LB1/h;->fromByteArray([B)LB1/h;

    .line 309
    .line 310
    .line 311
    move-result-object v37

    .line 312
    invoke-interface {v5, v11}, Landroid/database/Cursor;->getLong(I)J

    .line 313
    .line 314
    .line 315
    move-result-wide v38

    .line 316
    invoke-interface {v5, v12}, Landroid/database/Cursor;->getLong(I)J

    .line 317
    .line 318
    .line 319
    move-result-wide v40

    .line 320
    invoke-interface {v5, v13}, Landroid/database/Cursor;->getLong(I)J

    .line 321
    .line 322
    .line 323
    move-result-wide v42

    .line 324
    invoke-interface {v5, v14}, Landroid/database/Cursor;->getInt(I)I

    .line 325
    .line 326
    .line 327
    move-result v45

    .line 328
    invoke-interface {v5, v15}, Landroid/database/Cursor;->getInt(I)I

    .line 329
    .line 330
    .line 331
    move-result v2

    .line 332
    invoke-static {v2}, LK1/c0;->intToBackoffPolicy(I)Landroidx/work/BackoffPolicy;

    .line 333
    .line 334
    .line 335
    move-result-object v46

    .line 336
    invoke-interface {v5, v1}, Landroid/database/Cursor;->getLong(I)J

    .line 337
    .line 338
    .line 339
    move-result-wide v47

    .line 340
    invoke-interface {v5, v4}, Landroid/database/Cursor;->getLong(I)J

    .line 341
    .line 342
    .line 343
    move-result-wide v49

    .line 344
    move/from16 v2, v30

    .line 345
    .line 346
    invoke-interface {v5, v2}, Landroid/database/Cursor;->getLong(I)J

    .line 347
    .line 348
    .line 349
    move-result-wide v51

    .line 350
    move/from16 v30, v0

    .line 351
    .line 352
    move/from16 v0, v17

    .line 353
    .line 354
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    .line 355
    .line 356
    .line 357
    move-result-wide v53

    .line 358
    move/from16 v17, v0

    .line 359
    .line 360
    move/from16 v0, v18

    .line 361
    .line 362
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 363
    .line 364
    .line 365
    move-result v18

    .line 366
    const/16 v31, 0x1

    .line 367
    .line 368
    if-eqz v18, :cond_5

    .line 369
    .line 370
    move/from16 v55, v31

    .line 371
    .line 372
    :goto_6
    move/from16 v18, v0

    .line 373
    .line 374
    move/from16 v0, v19

    .line 375
    .line 376
    goto :goto_7

    .line 377
    :cond_5
    const/16 v55, 0x0

    .line 378
    .line 379
    goto :goto_6

    .line 380
    :goto_7
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 381
    .line 382
    .line 383
    move-result v19

    .line 384
    invoke-static/range {v19 .. v19}, LK1/c0;->intToOutOfQuotaPolicy(I)Landroidx/work/OutOfQuotaPolicy;

    .line 385
    .line 386
    .line 387
    move-result-object v56

    .line 388
    move/from16 v19, v0

    .line 389
    .line 390
    move/from16 v0, v20

    .line 391
    .line 392
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 393
    .line 394
    .line 395
    move-result v57

    .line 396
    move/from16 v20, v0

    .line 397
    .line 398
    move/from16 v0, v21

    .line 399
    .line 400
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 401
    .line 402
    .line 403
    move-result v58

    .line 404
    move/from16 v21, v0

    .line 405
    .line 406
    move/from16 v0, v22

    .line 407
    .line 408
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 409
    .line 410
    .line 411
    move-result v22

    .line 412
    invoke-static/range {v22 .. v22}, LK1/c0;->intToNetworkType(I)Landroidx/work/NetworkType;

    .line 413
    .line 414
    .line 415
    move-result-object v60

    .line 416
    move/from16 v22, v0

    .line 417
    .line 418
    move/from16 v0, v23

    .line 419
    .line 420
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 421
    .line 422
    .line 423
    move-result v23

    .line 424
    if-eqz v23, :cond_6

    .line 425
    .line 426
    move/from16 v61, v31

    .line 427
    .line 428
    :goto_8
    move/from16 v23, v0

    .line 429
    .line 430
    move/from16 v0, v24

    .line 431
    .line 432
    goto :goto_9

    .line 433
    :cond_6
    const/16 v61, 0x0

    .line 434
    .line 435
    goto :goto_8

    .line 436
    :goto_9
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 437
    .line 438
    .line 439
    move-result v24

    .line 440
    if-eqz v24, :cond_7

    .line 441
    .line 442
    move/from16 v62, v31

    .line 443
    .line 444
    :goto_a
    move/from16 v24, v0

    .line 445
    .line 446
    move/from16 v0, v25

    .line 447
    .line 448
    goto :goto_b

    .line 449
    :cond_7
    const/16 v62, 0x0

    .line 450
    .line 451
    goto :goto_a

    .line 452
    :goto_b
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 453
    .line 454
    .line 455
    move-result v25

    .line 456
    if-eqz v25, :cond_8

    .line 457
    .line 458
    move/from16 v63, v31

    .line 459
    .line 460
    :goto_c
    move/from16 v25, v0

    .line 461
    .line 462
    move/from16 v0, v26

    .line 463
    .line 464
    goto :goto_d

    .line 465
    :cond_8
    const/16 v63, 0x0

    .line 466
    .line 467
    goto :goto_c

    .line 468
    :goto_d
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 469
    .line 470
    .line 471
    move-result v26

    .line 472
    if-eqz v26, :cond_9

    .line 473
    .line 474
    move/from16 v64, v31

    .line 475
    .line 476
    :goto_e
    move/from16 v26, v0

    .line 477
    .line 478
    move/from16 v0, v27

    .line 479
    .line 480
    goto :goto_f

    .line 481
    :cond_9
    const/16 v64, 0x0

    .line 482
    .line 483
    goto :goto_e

    .line 484
    :goto_f
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    .line 485
    .line 486
    .line 487
    move-result-wide v65

    .line 488
    move/from16 v27, v0

    .line 489
    .line 490
    move/from16 v0, v28

    .line 491
    .line 492
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    .line 493
    .line 494
    .line 495
    move-result-wide v67

    .line 496
    move/from16 v28, v0

    .line 497
    .line 498
    move/from16 v0, v29

    .line 499
    .line 500
    invoke-interface {v5, v0}, Landroid/database/Cursor;->isNull(I)Z

    .line 501
    .line 502
    .line 503
    move-result v29

    .line 504
    if-eqz v29, :cond_a

    .line 505
    .line 506
    const/16 v29, 0x0

    .line 507
    .line 508
    goto :goto_10

    .line 509
    :cond_a
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getBlob(I)[B

    .line 510
    .line 511
    .line 512
    move-result-object v29

    .line 513
    :goto_10
    invoke-static/range {v29 .. v29}, LK1/c0;->byteArrayToSetOfTriggers([B)Ljava/util/Set;

    .line 514
    .line 515
    .line 516
    move-result-object v69

    .line 517
    new-instance v59, LB1/f;

    .line 518
    .line 519
    invoke-direct/range {v59 .. v69}, LB1/f;-><init>(Landroidx/work/NetworkType;ZZZZJJLjava/util/Set;)V

    .line 520
    .line 521
    .line 522
    new-instance v31, LK1/E;

    .line 523
    .line 524
    move-object/from16 v44, v59

    .line 525
    .line 526
    invoke-direct/range {v31 .. v58}, LK1/E;-><init>(Ljava/lang/String;Landroidx/work/WorkInfo$State;Ljava/lang/String;Ljava/lang/String;LB1/h;LB1/h;JJJLB1/f;ILandroidx/work/BackoffPolicy;JJJJZLandroidx/work/OutOfQuotaPolicy;II)V

    .line 527
    .line 528
    .line 529
    move/from16 v29, v0

    .line 530
    .line 531
    move-object/from16 v0, v31

    .line 532
    .line 533
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 534
    .line 535
    .line 536
    move/from16 v0, v30

    .line 537
    .line 538
    move/from16 v30, v2

    .line 539
    .line 540
    goto/16 :goto_0

    .line 541
    .line 542
    :catchall_0
    move-exception v0

    .line 543
    goto :goto_11

    .line 544
    :cond_b
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 545
    .line 546
    .line 547
    invoke-virtual/range {v16 .. v16}, Ln1/O;->release()V

    .line 548
    .line 549
    .line 550
    return-object v3

    .line 551
    :catchall_1
    move-exception v0

    .line 552
    move-object/from16 v16, v2

    .line 553
    .line 554
    :goto_11
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 555
    .line 556
    .line 557
    invoke-virtual/range {v16 .. v16}, Ln1/O;->release()V

    .line 558
    .line 559
    .line 560
    throw v0
.end method

.method public getScheduledWork()Ljava/util/List;
    .locals 70
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LK1/E;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "SELECT * FROM workspec WHERE state=0 AND schedule_requested_at<>-1"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Ln1/O;->acquire(Ljava/lang/String;I)Ln1/O;

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    move-object/from16 v3, p0

    .line 9
    .line 10
    iget-object v0, v3, LK1/U;->a:Landroidx/room/RoomDatabase;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 13
    .line 14
    .line 15
    const/4 v4, 0x0

    .line 16
    invoke-static {v0, v2, v1, v4}, Lp1/b;->query(Landroidx/room/RoomDatabase;Lr1/o;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    .line 17
    .line 18
    .line 19
    move-result-object v5

    .line 20
    :try_start_0
    const-string v0, "id"

    .line 21
    .line 22
    invoke-static {v5, v0}, Lp1/a;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    const-string v6, "state"

    .line 27
    .line 28
    invoke-static {v5, v6}, Lp1/a;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    move-result v6

    .line 32
    const-string v7, "worker_class_name"

    .line 33
    .line 34
    invoke-static {v5, v7}, Lp1/a;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    move-result v7

    .line 38
    const-string v8, "input_merger_class_name"

    .line 39
    .line 40
    invoke-static {v5, v8}, Lp1/a;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    move-result v8

    .line 44
    const-string v9, "input"

    .line 45
    .line 46
    invoke-static {v5, v9}, Lp1/a;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    move-result v9

    .line 50
    const-string v10, "output"

    .line 51
    .line 52
    invoke-static {v5, v10}, Lp1/a;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    move-result v10

    .line 56
    const-string v11, "initial_delay"

    .line 57
    .line 58
    invoke-static {v5, v11}, Lp1/a;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    move-result v11

    .line 62
    const-string v12, "interval_duration"

    .line 63
    .line 64
    invoke-static {v5, v12}, Lp1/a;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    move-result v12

    .line 68
    const-string v13, "flex_duration"

    .line 69
    .line 70
    invoke-static {v5, v13}, Lp1/a;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    move-result v13

    .line 74
    const-string v14, "run_attempt_count"

    .line 75
    .line 76
    invoke-static {v5, v14}, Lp1/a;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    move-result v14

    .line 80
    const-string v15, "backoff_policy"

    .line 81
    .line 82
    invoke-static {v5, v15}, Lp1/a;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    move-result v15

    .line 86
    const-string v1, "backoff_delay_duration"

    .line 87
    .line 88
    invoke-static {v5, v1}, Lp1/a;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    const-string v4, "last_enqueue_time"

    .line 93
    .line 94
    invoke-static {v5, v4}, Lp1/a;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 95
    .line 96
    .line 97
    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 98
    move-object/from16 v16, v2

    .line 99
    .line 100
    :try_start_1
    const-string v2, "minimum_retention_duration"

    .line 101
    .line 102
    invoke-static {v5, v2}, Lp1/a;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    const-string v3, "schedule_requested_at"

    .line 107
    .line 108
    invoke-static {v5, v3}, Lp1/a;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 109
    .line 110
    .line 111
    move-result v3

    .line 112
    move/from16 v17, v3

    .line 113
    .line 114
    const-string v3, "run_in_foreground"

    .line 115
    .line 116
    invoke-static {v5, v3}, Lp1/a;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 117
    .line 118
    .line 119
    move-result v3

    .line 120
    move/from16 v18, v3

    .line 121
    .line 122
    const-string v3, "out_of_quota_policy"

    .line 123
    .line 124
    invoke-static {v5, v3}, Lp1/a;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 125
    .line 126
    .line 127
    move-result v3

    .line 128
    move/from16 v19, v3

    .line 129
    .line 130
    const-string v3, "period_count"

    .line 131
    .line 132
    invoke-static {v5, v3}, Lp1/a;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 133
    .line 134
    .line 135
    move-result v3

    .line 136
    move/from16 v20, v3

    .line 137
    .line 138
    const-string v3, "generation"

    .line 139
    .line 140
    invoke-static {v5, v3}, Lp1/a;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 141
    .line 142
    .line 143
    move-result v3

    .line 144
    move/from16 v21, v3

    .line 145
    .line 146
    const-string v3, "required_network_type"

    .line 147
    .line 148
    invoke-static {v5, v3}, Lp1/a;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 149
    .line 150
    .line 151
    move-result v3

    .line 152
    move/from16 v22, v3

    .line 153
    .line 154
    const-string v3, "requires_charging"

    .line 155
    .line 156
    invoke-static {v5, v3}, Lp1/a;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 157
    .line 158
    .line 159
    move-result v3

    .line 160
    move/from16 v23, v3

    .line 161
    .line 162
    const-string v3, "requires_device_idle"

    .line 163
    .line 164
    invoke-static {v5, v3}, Lp1/a;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 165
    .line 166
    .line 167
    move-result v3

    .line 168
    move/from16 v24, v3

    .line 169
    .line 170
    const-string v3, "requires_battery_not_low"

    .line 171
    .line 172
    invoke-static {v5, v3}, Lp1/a;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 173
    .line 174
    .line 175
    move-result v3

    .line 176
    move/from16 v25, v3

    .line 177
    .line 178
    const-string v3, "requires_storage_not_low"

    .line 179
    .line 180
    invoke-static {v5, v3}, Lp1/a;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 181
    .line 182
    .line 183
    move-result v3

    .line 184
    move/from16 v26, v3

    .line 185
    .line 186
    const-string v3, "trigger_content_update_delay"

    .line 187
    .line 188
    invoke-static {v5, v3}, Lp1/a;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 189
    .line 190
    .line 191
    move-result v3

    .line 192
    move/from16 v27, v3

    .line 193
    .line 194
    const-string v3, "trigger_max_content_delay"

    .line 195
    .line 196
    invoke-static {v5, v3}, Lp1/a;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 197
    .line 198
    .line 199
    move-result v3

    .line 200
    move/from16 v28, v3

    .line 201
    .line 202
    const-string v3, "content_uri_triggers"

    .line 203
    .line 204
    invoke-static {v5, v3}, Lp1/a;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 205
    .line 206
    .line 207
    move-result v3

    .line 208
    move/from16 v29, v3

    .line 209
    .line 210
    new-instance v3, Ljava/util/ArrayList;

    .line 211
    .line 212
    move/from16 v30, v2

    .line 213
    .line 214
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    .line 215
    .line 216
    .line 217
    move-result v2

    .line 218
    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 219
    .line 220
    .line 221
    :goto_0
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    .line 222
    .line 223
    .line 224
    move-result v2

    .line 225
    if-eqz v2, :cond_b

    .line 226
    .line 227
    invoke-interface {v5, v0}, Landroid/database/Cursor;->isNull(I)Z

    .line 228
    .line 229
    .line 230
    move-result v2

    .line 231
    if-eqz v2, :cond_0

    .line 232
    .line 233
    const/16 v32, 0x0

    .line 234
    .line 235
    goto :goto_1

    .line 236
    :cond_0
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v2

    .line 240
    move-object/from16 v32, v2

    .line 241
    .line 242
    :goto_1
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    .line 243
    .line 244
    .line 245
    move-result v2

    .line 246
    invoke-static {v2}, LK1/c0;->intToState(I)Landroidx/work/WorkInfo$State;

    .line 247
    .line 248
    .line 249
    move-result-object v33

    .line 250
    invoke-interface {v5, v7}, Landroid/database/Cursor;->isNull(I)Z

    .line 251
    .line 252
    .line 253
    move-result v2

    .line 254
    if-eqz v2, :cond_1

    .line 255
    .line 256
    const/16 v34, 0x0

    .line 257
    .line 258
    goto :goto_2

    .line 259
    :cond_1
    invoke-interface {v5, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v2

    .line 263
    move-object/from16 v34, v2

    .line 264
    .line 265
    :goto_2
    invoke-interface {v5, v8}, Landroid/database/Cursor;->isNull(I)Z

    .line 266
    .line 267
    .line 268
    move-result v2

    .line 269
    if-eqz v2, :cond_2

    .line 270
    .line 271
    const/16 v35, 0x0

    .line 272
    .line 273
    goto :goto_3

    .line 274
    :cond_2
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v2

    .line 278
    move-object/from16 v35, v2

    .line 279
    .line 280
    :goto_3
    invoke-interface {v5, v9}, Landroid/database/Cursor;->isNull(I)Z

    .line 281
    .line 282
    .line 283
    move-result v2

    .line 284
    if-eqz v2, :cond_3

    .line 285
    .line 286
    const/4 v2, 0x0

    .line 287
    goto :goto_4

    .line 288
    :cond_3
    invoke-interface {v5, v9}, Landroid/database/Cursor;->getBlob(I)[B

    .line 289
    .line 290
    .line 291
    move-result-object v2

    .line 292
    :goto_4
    invoke-static {v2}, LB1/h;->fromByteArray([B)LB1/h;

    .line 293
    .line 294
    .line 295
    move-result-object v36

    .line 296
    invoke-interface {v5, v10}, Landroid/database/Cursor;->isNull(I)Z

    .line 297
    .line 298
    .line 299
    move-result v2

    .line 300
    if-eqz v2, :cond_4

    .line 301
    .line 302
    const/4 v2, 0x0

    .line 303
    goto :goto_5

    .line 304
    :cond_4
    invoke-interface {v5, v10}, Landroid/database/Cursor;->getBlob(I)[B

    .line 305
    .line 306
    .line 307
    move-result-object v2

    .line 308
    :goto_5
    invoke-static {v2}, LB1/h;->fromByteArray([B)LB1/h;

    .line 309
    .line 310
    .line 311
    move-result-object v37

    .line 312
    invoke-interface {v5, v11}, Landroid/database/Cursor;->getLong(I)J

    .line 313
    .line 314
    .line 315
    move-result-wide v38

    .line 316
    invoke-interface {v5, v12}, Landroid/database/Cursor;->getLong(I)J

    .line 317
    .line 318
    .line 319
    move-result-wide v40

    .line 320
    invoke-interface {v5, v13}, Landroid/database/Cursor;->getLong(I)J

    .line 321
    .line 322
    .line 323
    move-result-wide v42

    .line 324
    invoke-interface {v5, v14}, Landroid/database/Cursor;->getInt(I)I

    .line 325
    .line 326
    .line 327
    move-result v45

    .line 328
    invoke-interface {v5, v15}, Landroid/database/Cursor;->getInt(I)I

    .line 329
    .line 330
    .line 331
    move-result v2

    .line 332
    invoke-static {v2}, LK1/c0;->intToBackoffPolicy(I)Landroidx/work/BackoffPolicy;

    .line 333
    .line 334
    .line 335
    move-result-object v46

    .line 336
    invoke-interface {v5, v1}, Landroid/database/Cursor;->getLong(I)J

    .line 337
    .line 338
    .line 339
    move-result-wide v47

    .line 340
    invoke-interface {v5, v4}, Landroid/database/Cursor;->getLong(I)J

    .line 341
    .line 342
    .line 343
    move-result-wide v49

    .line 344
    move/from16 v2, v30

    .line 345
    .line 346
    invoke-interface {v5, v2}, Landroid/database/Cursor;->getLong(I)J

    .line 347
    .line 348
    .line 349
    move-result-wide v51

    .line 350
    move/from16 v30, v0

    .line 351
    .line 352
    move/from16 v0, v17

    .line 353
    .line 354
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    .line 355
    .line 356
    .line 357
    move-result-wide v53

    .line 358
    move/from16 v17, v0

    .line 359
    .line 360
    move/from16 v0, v18

    .line 361
    .line 362
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 363
    .line 364
    .line 365
    move-result v18

    .line 366
    const/16 v31, 0x1

    .line 367
    .line 368
    if-eqz v18, :cond_5

    .line 369
    .line 370
    move/from16 v55, v31

    .line 371
    .line 372
    :goto_6
    move/from16 v18, v0

    .line 373
    .line 374
    move/from16 v0, v19

    .line 375
    .line 376
    goto :goto_7

    .line 377
    :cond_5
    const/16 v55, 0x0

    .line 378
    .line 379
    goto :goto_6

    .line 380
    :goto_7
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 381
    .line 382
    .line 383
    move-result v19

    .line 384
    invoke-static/range {v19 .. v19}, LK1/c0;->intToOutOfQuotaPolicy(I)Landroidx/work/OutOfQuotaPolicy;

    .line 385
    .line 386
    .line 387
    move-result-object v56

    .line 388
    move/from16 v19, v0

    .line 389
    .line 390
    move/from16 v0, v20

    .line 391
    .line 392
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 393
    .line 394
    .line 395
    move-result v57

    .line 396
    move/from16 v20, v0

    .line 397
    .line 398
    move/from16 v0, v21

    .line 399
    .line 400
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 401
    .line 402
    .line 403
    move-result v58

    .line 404
    move/from16 v21, v0

    .line 405
    .line 406
    move/from16 v0, v22

    .line 407
    .line 408
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 409
    .line 410
    .line 411
    move-result v22

    .line 412
    invoke-static/range {v22 .. v22}, LK1/c0;->intToNetworkType(I)Landroidx/work/NetworkType;

    .line 413
    .line 414
    .line 415
    move-result-object v60

    .line 416
    move/from16 v22, v0

    .line 417
    .line 418
    move/from16 v0, v23

    .line 419
    .line 420
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 421
    .line 422
    .line 423
    move-result v23

    .line 424
    if-eqz v23, :cond_6

    .line 425
    .line 426
    move/from16 v61, v31

    .line 427
    .line 428
    :goto_8
    move/from16 v23, v0

    .line 429
    .line 430
    move/from16 v0, v24

    .line 431
    .line 432
    goto :goto_9

    .line 433
    :cond_6
    const/16 v61, 0x0

    .line 434
    .line 435
    goto :goto_8

    .line 436
    :goto_9
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 437
    .line 438
    .line 439
    move-result v24

    .line 440
    if-eqz v24, :cond_7

    .line 441
    .line 442
    move/from16 v62, v31

    .line 443
    .line 444
    :goto_a
    move/from16 v24, v0

    .line 445
    .line 446
    move/from16 v0, v25

    .line 447
    .line 448
    goto :goto_b

    .line 449
    :cond_7
    const/16 v62, 0x0

    .line 450
    .line 451
    goto :goto_a

    .line 452
    :goto_b
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 453
    .line 454
    .line 455
    move-result v25

    .line 456
    if-eqz v25, :cond_8

    .line 457
    .line 458
    move/from16 v63, v31

    .line 459
    .line 460
    :goto_c
    move/from16 v25, v0

    .line 461
    .line 462
    move/from16 v0, v26

    .line 463
    .line 464
    goto :goto_d

    .line 465
    :cond_8
    const/16 v63, 0x0

    .line 466
    .line 467
    goto :goto_c

    .line 468
    :goto_d
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 469
    .line 470
    .line 471
    move-result v26

    .line 472
    if-eqz v26, :cond_9

    .line 473
    .line 474
    move/from16 v64, v31

    .line 475
    .line 476
    :goto_e
    move/from16 v26, v0

    .line 477
    .line 478
    move/from16 v0, v27

    .line 479
    .line 480
    goto :goto_f

    .line 481
    :cond_9
    const/16 v64, 0x0

    .line 482
    .line 483
    goto :goto_e

    .line 484
    :goto_f
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    .line 485
    .line 486
    .line 487
    move-result-wide v65

    .line 488
    move/from16 v27, v0

    .line 489
    .line 490
    move/from16 v0, v28

    .line 491
    .line 492
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    .line 493
    .line 494
    .line 495
    move-result-wide v67

    .line 496
    move/from16 v28, v0

    .line 497
    .line 498
    move/from16 v0, v29

    .line 499
    .line 500
    invoke-interface {v5, v0}, Landroid/database/Cursor;->isNull(I)Z

    .line 501
    .line 502
    .line 503
    move-result v29

    .line 504
    if-eqz v29, :cond_a

    .line 505
    .line 506
    const/16 v29, 0x0

    .line 507
    .line 508
    goto :goto_10

    .line 509
    :cond_a
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getBlob(I)[B

    .line 510
    .line 511
    .line 512
    move-result-object v29

    .line 513
    :goto_10
    invoke-static/range {v29 .. v29}, LK1/c0;->byteArrayToSetOfTriggers([B)Ljava/util/Set;

    .line 514
    .line 515
    .line 516
    move-result-object v69

    .line 517
    new-instance v59, LB1/f;

    .line 518
    .line 519
    invoke-direct/range {v59 .. v69}, LB1/f;-><init>(Landroidx/work/NetworkType;ZZZZJJLjava/util/Set;)V

    .line 520
    .line 521
    .line 522
    new-instance v31, LK1/E;

    .line 523
    .line 524
    move-object/from16 v44, v59

    .line 525
    .line 526
    invoke-direct/range {v31 .. v58}, LK1/E;-><init>(Ljava/lang/String;Landroidx/work/WorkInfo$State;Ljava/lang/String;Ljava/lang/String;LB1/h;LB1/h;JJJLB1/f;ILandroidx/work/BackoffPolicy;JJJJZLandroidx/work/OutOfQuotaPolicy;II)V

    .line 527
    .line 528
    .line 529
    move/from16 v29, v0

    .line 530
    .line 531
    move-object/from16 v0, v31

    .line 532
    .line 533
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 534
    .line 535
    .line 536
    move/from16 v0, v30

    .line 537
    .line 538
    move/from16 v30, v2

    .line 539
    .line 540
    goto/16 :goto_0

    .line 541
    .line 542
    :catchall_0
    move-exception v0

    .line 543
    goto :goto_11

    .line 544
    :cond_b
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 545
    .line 546
    .line 547
    invoke-virtual/range {v16 .. v16}, Ln1/O;->release()V

    .line 548
    .line 549
    .line 550
    return-object v3

    .line 551
    :catchall_1
    move-exception v0

    .line 552
    move-object/from16 v16, v2

    .line 553
    .line 554
    :goto_11
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 555
    .line 556
    .line 557
    invoke-virtual/range {v16 .. v16}, Ln1/O;->release()V

    .line 558
    .line 559
    .line 560
    throw v0
.end method

.method public getState(Ljava/lang/String;)Landroidx/work/WorkInfo$State;
    .locals 4

    .line 1
    const-string v0, "SELECT state FROM workspec WHERE id=?"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Ln1/O;->acquire(Ljava/lang/String;I)Ln1/O;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ln1/O;->bindNull(I)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {v0, v1, p1}, Ln1/O;->bindString(ILjava/lang/String;)V

    .line 15
    .line 16
    .line 17
    :goto_0
    iget-object p1, p0, LK1/U;->a:Landroidx/room/RoomDatabase;

    .line 18
    .line 19
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 20
    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    const/4 v2, 0x0

    .line 24
    invoke-static {p1, v0, v1, v2}, Lp1/b;->query(Landroidx/room/RoomDatabase;Lr1/o;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-eqz v3, :cond_3

    .line 33
    .line 34
    invoke-interface {p1, v1}, Landroid/database/Cursor;->isNull(I)Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-eqz v3, :cond_1

    .line 39
    .line 40
    move-object v1, v2

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    :goto_1
    if-nez v1, :cond_2

    .line 51
    .line 52
    goto :goto_2

    .line 53
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    invoke-static {v1}, LK1/c0;->intToState(I)Landroidx/work/WorkInfo$State;

    .line 58
    .line 59
    .line 60
    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    goto :goto_2

    .line 62
    :catchall_0
    move-exception v1

    .line 63
    goto :goto_3

    .line 64
    :cond_3
    :goto_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0}, Ln1/O;->release()V

    .line 68
    .line 69
    .line 70
    return-object v2

    .line 71
    :goto_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0}, Ln1/O;->release()V

    .line 75
    .line 76
    .line 77
    throw v1
.end method

.method public getUnfinishedWorkWithName(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "SELECT id FROM workspec WHERE state NOT IN (2, 3, 5) AND id IN (SELECT work_spec_id FROM workname WHERE name=?)"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Ln1/O;->acquire(Ljava/lang/String;I)Ln1/O;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ln1/O;->bindNull(I)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {v0, v1, p1}, Ln1/O;->bindString(ILjava/lang/String;)V

    .line 15
    .line 16
    .line 17
    :goto_0
    iget-object p1, p0, LK1/U;->a:Landroidx/room/RoomDatabase;

    .line 18
    .line 19
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 20
    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    const/4 v2, 0x0

    .line 24
    invoke-static {p1, v0, v1, v2}, Lp1/b;->query(Landroidx/room/RoomDatabase;Lr1/o;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 35
    .line 36
    .line 37
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    if-eqz v4, :cond_2

    .line 42
    .line 43
    invoke-interface {p1, v1}, Landroid/database/Cursor;->isNull(I)Z

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    if-eqz v4, :cond_1

    .line 48
    .line 49
    move-object v4, v2

    .line 50
    goto :goto_2

    .line 51
    :cond_1
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    :goto_2
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    .line 57
    .line 58
    goto :goto_1

    .line 59
    :catchall_0
    move-exception v1

    .line 60
    goto :goto_3

    .line 61
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0}, Ln1/O;->release()V

    .line 65
    .line 66
    .line 67
    return-object v3

    .line 68
    :goto_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Ln1/O;->release()V

    .line 72
    .line 73
    .line 74
    throw v1
.end method

.method public getWorkSpec(Ljava/lang/String;)LK1/E;
    .locals 68

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    const-string v1, "SELECT * FROM workspec WHERE id=?"

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-static {v1, v2}, Ln1/O;->acquire(Ljava/lang/String;I)Ln1/O;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ln1/O;->bindNull(I)V

    .line 13
    .line 14
    .line 15
    :goto_0
    move-object/from16 v3, p0

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_0
    invoke-virtual {v1, v2, v0}, Ln1/O;->bindString(ILjava/lang/String;)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :goto_1
    iget-object v0, v3, LK1/U;->a:Landroidx/room/RoomDatabase;

    .line 23
    .line 24
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 25
    .line 26
    .line 27
    const/4 v4, 0x0

    .line 28
    const/4 v5, 0x0

    .line 29
    invoke-static {v0, v1, v4, v5}, Lp1/b;->query(Landroidx/room/RoomDatabase;Lr1/o;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    .line 30
    .line 31
    .line 32
    move-result-object v6

    .line 33
    :try_start_0
    const-string v0, "id"

    .line 34
    .line 35
    invoke-static {v6, v0}, Lp1/a;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    const-string v7, "state"

    .line 40
    .line 41
    invoke-static {v6, v7}, Lp1/a;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    move-result v7

    .line 45
    const-string v8, "worker_class_name"

    .line 46
    .line 47
    invoke-static {v6, v8}, Lp1/a;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    move-result v8

    .line 51
    const-string v9, "input_merger_class_name"

    .line 52
    .line 53
    invoke-static {v6, v9}, Lp1/a;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    move-result v9

    .line 57
    const-string v10, "input"

    .line 58
    .line 59
    invoke-static {v6, v10}, Lp1/a;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    move-result v10

    .line 63
    const-string v11, "output"

    .line 64
    .line 65
    invoke-static {v6, v11}, Lp1/a;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    move-result v11

    .line 69
    const-string v12, "initial_delay"

    .line 70
    .line 71
    invoke-static {v6, v12}, Lp1/a;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    move-result v12

    .line 75
    const-string v13, "interval_duration"

    .line 76
    .line 77
    invoke-static {v6, v13}, Lp1/a;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    move-result v13

    .line 81
    const-string v14, "flex_duration"

    .line 82
    .line 83
    invoke-static {v6, v14}, Lp1/a;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 84
    .line 85
    .line 86
    move-result v14

    .line 87
    const-string v15, "run_attempt_count"

    .line 88
    .line 89
    invoke-static {v6, v15}, Lp1/a;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 90
    .line 91
    .line 92
    move-result v15

    .line 93
    const-string v2, "backoff_policy"

    .line 94
    .line 95
    invoke-static {v6, v2}, Lp1/a;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    const-string v4, "backoff_delay_duration"

    .line 100
    .line 101
    invoke-static {v6, v4}, Lp1/a;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 102
    .line 103
    .line 104
    move-result v4

    .line 105
    const-string v5, "last_enqueue_time"

    .line 106
    .line 107
    invoke-static {v6, v5}, Lp1/a;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 108
    .line 109
    .line 110
    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 111
    move-object/from16 v16, v1

    .line 112
    .line 113
    :try_start_1
    const-string v1, "minimum_retention_duration"

    .line 114
    .line 115
    invoke-static {v6, v1}, Lp1/a;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    const-string v3, "schedule_requested_at"

    .line 120
    .line 121
    invoke-static {v6, v3}, Lp1/a;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 122
    .line 123
    .line 124
    move-result v3

    .line 125
    move/from16 v17, v3

    .line 126
    .line 127
    const-string v3, "run_in_foreground"

    .line 128
    .line 129
    invoke-static {v6, v3}, Lp1/a;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 130
    .line 131
    .line 132
    move-result v3

    .line 133
    move/from16 v18, v3

    .line 134
    .line 135
    const-string v3, "out_of_quota_policy"

    .line 136
    .line 137
    invoke-static {v6, v3}, Lp1/a;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 138
    .line 139
    .line 140
    move-result v3

    .line 141
    move/from16 v19, v3

    .line 142
    .line 143
    const-string v3, "period_count"

    .line 144
    .line 145
    invoke-static {v6, v3}, Lp1/a;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 146
    .line 147
    .line 148
    move-result v3

    .line 149
    move/from16 v20, v3

    .line 150
    .line 151
    const-string v3, "generation"

    .line 152
    .line 153
    invoke-static {v6, v3}, Lp1/a;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 154
    .line 155
    .line 156
    move-result v3

    .line 157
    move/from16 v21, v3

    .line 158
    .line 159
    const-string v3, "required_network_type"

    .line 160
    .line 161
    invoke-static {v6, v3}, Lp1/a;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 162
    .line 163
    .line 164
    move-result v3

    .line 165
    move/from16 v22, v3

    .line 166
    .line 167
    const-string v3, "requires_charging"

    .line 168
    .line 169
    invoke-static {v6, v3}, Lp1/a;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 170
    .line 171
    .line 172
    move-result v3

    .line 173
    move/from16 v23, v3

    .line 174
    .line 175
    const-string v3, "requires_device_idle"

    .line 176
    .line 177
    invoke-static {v6, v3}, Lp1/a;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 178
    .line 179
    .line 180
    move-result v3

    .line 181
    move/from16 v24, v3

    .line 182
    .line 183
    const-string v3, "requires_battery_not_low"

    .line 184
    .line 185
    invoke-static {v6, v3}, Lp1/a;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 186
    .line 187
    .line 188
    move-result v3

    .line 189
    move/from16 v25, v3

    .line 190
    .line 191
    const-string v3, "requires_storage_not_low"

    .line 192
    .line 193
    invoke-static {v6, v3}, Lp1/a;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 194
    .line 195
    .line 196
    move-result v3

    .line 197
    move/from16 v26, v3

    .line 198
    .line 199
    const-string v3, "trigger_content_update_delay"

    .line 200
    .line 201
    invoke-static {v6, v3}, Lp1/a;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 202
    .line 203
    .line 204
    move-result v3

    .line 205
    move/from16 v27, v3

    .line 206
    .line 207
    const-string v3, "trigger_max_content_delay"

    .line 208
    .line 209
    invoke-static {v6, v3}, Lp1/a;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 210
    .line 211
    .line 212
    move-result v3

    .line 213
    move/from16 v28, v3

    .line 214
    .line 215
    const-string v3, "content_uri_triggers"

    .line 216
    .line 217
    invoke-static {v6, v3}, Lp1/a;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 218
    .line 219
    .line 220
    move-result v3

    .line 221
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 222
    .line 223
    .line 224
    move-result v29

    .line 225
    if-eqz v29, :cond_c

    .line 226
    .line 227
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    .line 228
    .line 229
    .line 230
    move-result v29

    .line 231
    if-eqz v29, :cond_1

    .line 232
    .line 233
    const/16 v30, 0x0

    .line 234
    .line 235
    goto :goto_2

    .line 236
    :cond_1
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v0

    .line 240
    move-object/from16 v30, v0

    .line 241
    .line 242
    :goto_2
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    .line 243
    .line 244
    .line 245
    move-result v0

    .line 246
    invoke-static {v0}, LK1/c0;->intToState(I)Landroidx/work/WorkInfo$State;

    .line 247
    .line 248
    .line 249
    move-result-object v31

    .line 250
    invoke-interface {v6, v8}, Landroid/database/Cursor;->isNull(I)Z

    .line 251
    .line 252
    .line 253
    move-result v0

    .line 254
    if-eqz v0, :cond_2

    .line 255
    .line 256
    const/16 v32, 0x0

    .line 257
    .line 258
    goto :goto_3

    .line 259
    :cond_2
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v0

    .line 263
    move-object/from16 v32, v0

    .line 264
    .line 265
    :goto_3
    invoke-interface {v6, v9}, Landroid/database/Cursor;->isNull(I)Z

    .line 266
    .line 267
    .line 268
    move-result v0

    .line 269
    if-eqz v0, :cond_3

    .line 270
    .line 271
    const/16 v33, 0x0

    .line 272
    .line 273
    goto :goto_4

    .line 274
    :cond_3
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v0

    .line 278
    move-object/from16 v33, v0

    .line 279
    .line 280
    :goto_4
    invoke-interface {v6, v10}, Landroid/database/Cursor;->isNull(I)Z

    .line 281
    .line 282
    .line 283
    move-result v0

    .line 284
    if-eqz v0, :cond_4

    .line 285
    .line 286
    const/4 v0, 0x0

    .line 287
    goto :goto_5

    .line 288
    :cond_4
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getBlob(I)[B

    .line 289
    .line 290
    .line 291
    move-result-object v0

    .line 292
    :goto_5
    invoke-static {v0}, LB1/h;->fromByteArray([B)LB1/h;

    .line 293
    .line 294
    .line 295
    move-result-object v34

    .line 296
    invoke-interface {v6, v11}, Landroid/database/Cursor;->isNull(I)Z

    .line 297
    .line 298
    .line 299
    move-result v0

    .line 300
    if-eqz v0, :cond_5

    .line 301
    .line 302
    const/4 v0, 0x0

    .line 303
    goto :goto_6

    .line 304
    :cond_5
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getBlob(I)[B

    .line 305
    .line 306
    .line 307
    move-result-object v0

    .line 308
    :goto_6
    invoke-static {v0}, LB1/h;->fromByteArray([B)LB1/h;

    .line 309
    .line 310
    .line 311
    move-result-object v35

    .line 312
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getLong(I)J

    .line 313
    .line 314
    .line 315
    move-result-wide v36

    .line 316
    invoke-interface {v6, v13}, Landroid/database/Cursor;->getLong(I)J

    .line 317
    .line 318
    .line 319
    move-result-wide v38

    .line 320
    invoke-interface {v6, v14}, Landroid/database/Cursor;->getLong(I)J

    .line 321
    .line 322
    .line 323
    move-result-wide v40

    .line 324
    invoke-interface {v6, v15}, Landroid/database/Cursor;->getInt(I)I

    .line 325
    .line 326
    .line 327
    move-result v43

    .line 328
    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    .line 329
    .line 330
    .line 331
    move-result v0

    .line 332
    invoke-static {v0}, LK1/c0;->intToBackoffPolicy(I)Landroidx/work/BackoffPolicy;

    .line 333
    .line 334
    .line 335
    move-result-object v44

    .line 336
    invoke-interface {v6, v4}, Landroid/database/Cursor;->getLong(I)J

    .line 337
    .line 338
    .line 339
    move-result-wide v45

    .line 340
    invoke-interface {v6, v5}, Landroid/database/Cursor;->getLong(I)J

    .line 341
    .line 342
    .line 343
    move-result-wide v47

    .line 344
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    .line 345
    .line 346
    .line 347
    move-result-wide v49

    .line 348
    move/from16 v0, v17

    .line 349
    .line 350
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    .line 351
    .line 352
    .line 353
    move-result-wide v51

    .line 354
    move/from16 v0, v18

    .line 355
    .line 356
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 357
    .line 358
    .line 359
    move-result v0

    .line 360
    if-eqz v0, :cond_6

    .line 361
    .line 362
    const/16 v53, 0x1

    .line 363
    .line 364
    :goto_7
    move/from16 v0, v19

    .line 365
    .line 366
    goto :goto_8

    .line 367
    :cond_6
    const/16 v53, 0x0

    .line 368
    .line 369
    goto :goto_7

    .line 370
    :goto_8
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 371
    .line 372
    .line 373
    move-result v0

    .line 374
    invoke-static {v0}, LK1/c0;->intToOutOfQuotaPolicy(I)Landroidx/work/OutOfQuotaPolicy;

    .line 375
    .line 376
    .line 377
    move-result-object v54

    .line 378
    move/from16 v0, v20

    .line 379
    .line 380
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 381
    .line 382
    .line 383
    move-result v55

    .line 384
    move/from16 v0, v21

    .line 385
    .line 386
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 387
    .line 388
    .line 389
    move-result v56

    .line 390
    move/from16 v0, v22

    .line 391
    .line 392
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 393
    .line 394
    .line 395
    move-result v0

    .line 396
    invoke-static {v0}, LK1/c0;->intToNetworkType(I)Landroidx/work/NetworkType;

    .line 397
    .line 398
    .line 399
    move-result-object v58

    .line 400
    move/from16 v0, v23

    .line 401
    .line 402
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 403
    .line 404
    .line 405
    move-result v0

    .line 406
    if-eqz v0, :cond_7

    .line 407
    .line 408
    const/16 v59, 0x1

    .line 409
    .line 410
    :goto_9
    move/from16 v0, v24

    .line 411
    .line 412
    goto :goto_a

    .line 413
    :cond_7
    const/16 v59, 0x0

    .line 414
    .line 415
    goto :goto_9

    .line 416
    :goto_a
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 417
    .line 418
    .line 419
    move-result v0

    .line 420
    if-eqz v0, :cond_8

    .line 421
    .line 422
    const/16 v60, 0x1

    .line 423
    .line 424
    :goto_b
    move/from16 v0, v25

    .line 425
    .line 426
    goto :goto_c

    .line 427
    :cond_8
    const/16 v60, 0x0

    .line 428
    .line 429
    goto :goto_b

    .line 430
    :goto_c
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 431
    .line 432
    .line 433
    move-result v0

    .line 434
    if-eqz v0, :cond_9

    .line 435
    .line 436
    const/16 v61, 0x1

    .line 437
    .line 438
    :goto_d
    move/from16 v0, v26

    .line 439
    .line 440
    goto :goto_e

    .line 441
    :cond_9
    const/16 v61, 0x0

    .line 442
    .line 443
    goto :goto_d

    .line 444
    :goto_e
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 445
    .line 446
    .line 447
    move-result v0

    .line 448
    if-eqz v0, :cond_a

    .line 449
    .line 450
    const/16 v62, 0x1

    .line 451
    .line 452
    :goto_f
    move/from16 v0, v27

    .line 453
    .line 454
    goto :goto_10

    .line 455
    :cond_a
    const/16 v62, 0x0

    .line 456
    .line 457
    goto :goto_f

    .line 458
    :goto_10
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    .line 459
    .line 460
    .line 461
    move-result-wide v63

    .line 462
    move/from16 v0, v28

    .line 463
    .line 464
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    .line 465
    .line 466
    .line 467
    move-result-wide v65

    .line 468
    invoke-interface {v6, v3}, Landroid/database/Cursor;->isNull(I)Z

    .line 469
    .line 470
    .line 471
    move-result v0

    .line 472
    if-eqz v0, :cond_b

    .line 473
    .line 474
    const/4 v5, 0x0

    .line 475
    goto :goto_11

    .line 476
    :cond_b
    invoke-interface {v6, v3}, Landroid/database/Cursor;->getBlob(I)[B

    .line 477
    .line 478
    .line 479
    move-result-object v5

    .line 480
    :goto_11
    invoke-static {v5}, LK1/c0;->byteArrayToSetOfTriggers([B)Ljava/util/Set;

    .line 481
    .line 482
    .line 483
    move-result-object v67

    .line 484
    new-instance v57, LB1/f;

    .line 485
    .line 486
    invoke-direct/range {v57 .. v67}, LB1/f;-><init>(Landroidx/work/NetworkType;ZZZZJJLjava/util/Set;)V

    .line 487
    .line 488
    .line 489
    new-instance v29, LK1/E;

    .line 490
    .line 491
    move-object/from16 v42, v57

    .line 492
    .line 493
    invoke-direct/range {v29 .. v56}, LK1/E;-><init>(Ljava/lang/String;Landroidx/work/WorkInfo$State;Ljava/lang/String;Ljava/lang/String;LB1/h;LB1/h;JJJLB1/f;ILandroidx/work/BackoffPolicy;JJJJZLandroidx/work/OutOfQuotaPolicy;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 494
    .line 495
    .line 496
    move-object/from16 v5, v29

    .line 497
    .line 498
    goto :goto_12

    .line 499
    :catchall_0
    move-exception v0

    .line 500
    goto :goto_13

    .line 501
    :cond_c
    const/4 v5, 0x0

    .line 502
    :goto_12
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 503
    .line 504
    .line 505
    invoke-virtual/range {v16 .. v16}, Ln1/O;->release()V

    .line 506
    .line 507
    .line 508
    return-object v5

    .line 509
    :catchall_1
    move-exception v0

    .line 510
    move-object/from16 v16, v1

    .line 511
    .line 512
    :goto_13
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 513
    .line 514
    .line 515
    invoke-virtual/range {v16 .. v16}, Ln1/O;->release()V

    .line 516
    .line 517
    .line 518
    throw v0
.end method

.method public getWorkSpecIdAndStatesForName(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "LK1/D;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "SELECT id, state FROM workspec WHERE id IN (SELECT work_spec_id FROM workname WHERE name=?)"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Ln1/O;->acquire(Ljava/lang/String;I)Ln1/O;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ln1/O;->bindNull(I)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {v0, v1, p1}, Ln1/O;->bindString(ILjava/lang/String;)V

    .line 15
    .line 16
    .line 17
    :goto_0
    iget-object p1, p0, LK1/U;->a:Landroidx/room/RoomDatabase;

    .line 18
    .line 19
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 20
    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    const/4 v3, 0x0

    .line 24
    invoke-static {p1, v0, v2, v3}, Lp1/b;->query(Landroidx/room/RoomDatabase;Lr1/o;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 35
    .line 36
    .line 37
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 38
    .line 39
    .line 40
    move-result v5

    .line 41
    if-eqz v5, :cond_2

    .line 42
    .line 43
    invoke-interface {p1, v2}, Landroid/database/Cursor;->isNull(I)Z

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    if-eqz v5, :cond_1

    .line 48
    .line 49
    move-object v5, v3

    .line 50
    goto :goto_2

    .line 51
    :cond_1
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    :goto_2
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    .line 56
    .line 57
    .line 58
    move-result v6

    .line 59
    invoke-static {v6}, LK1/c0;->intToState(I)Landroidx/work/WorkInfo$State;

    .line 60
    .line 61
    .line 62
    move-result-object v6

    .line 63
    new-instance v7, LK1/D;

    .line 64
    .line 65
    invoke-direct {v7, v5, v6}, LK1/D;-><init>(Ljava/lang/String;Landroidx/work/WorkInfo$State;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :catchall_0
    move-exception v1

    .line 73
    goto :goto_3

    .line 74
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0}, Ln1/O;->release()V

    .line 78
    .line 79
    .line 80
    return-object v4

    .line 81
    :goto_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0}, Ln1/O;->release()V

    .line 85
    .line 86
    .line 87
    throw v1
.end method

.method public hasUnfinishedWork()Z
    .locals 4

    .line 1
    const-string v0, "SELECT COUNT(*) > 0 FROM workspec WHERE state NOT IN (2, 3, 5) LIMIT 1"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Ln1/O;->acquire(Ljava/lang/String;I)Ln1/O;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v2, p0, LK1/U;->a:Landroidx/room/RoomDatabase;

    .line 9
    .line 10
    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 11
    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-static {v2, v0, v1, v3}, Lp1/b;->query(Landroidx/room/RoomDatabase;Lr1/o;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-eqz v3, :cond_0

    .line 23
    .line 24
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    .line 25
    .line 26
    .line 27
    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    if-eqz v3, :cond_0

    .line 29
    .line 30
    const/4 v1, 0x1

    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception v1

    .line 33
    goto :goto_1

    .line 34
    :cond_0
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Ln1/O;->release()V

    .line 38
    .line 39
    .line 40
    return v1

    .line 41
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Ln1/O;->release()V

    .line 45
    .line 46
    .line 47
    throw v1
.end method

.method public incrementPeriodCount(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, LK1/U;->a:Landroidx/room/RoomDatabase;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, LK1/U;->f:LK1/O;

    .line 7
    .line 8
    invoke-virtual {v1}, Landroidx/room/SharedSQLiteStatement;->acquire()Lr1/p;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    const/4 v3, 0x1

    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    invoke-interface {v2, v3}, Lr1/n;->bindNull(I)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-interface {v2, v3, p1}, Lr1/n;->bindString(ILjava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :goto_0
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 23
    .line 24
    .line 25
    :try_start_0
    invoke-interface {v2}, Lr1/p;->executeUpdateDelete()I

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v2}, Landroidx/room/SharedSQLiteStatement;->release(Lr1/p;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :catchall_0
    move-exception p1

    .line 39
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, v2}, Landroidx/room/SharedSQLiteStatement;->release(Lr1/p;)V

    .line 43
    .line 44
    .line 45
    throw p1
.end method

.method public incrementWorkSpecRunAttemptCount(Ljava/lang/String;)I
    .locals 4

    .line 1
    iget-object v0, p0, LK1/U;->a:Landroidx/room/RoomDatabase;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, LK1/U;->i:LK1/S;

    .line 7
    .line 8
    invoke-virtual {v1}, Landroidx/room/SharedSQLiteStatement;->acquire()Lr1/p;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    const/4 v3, 0x1

    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    invoke-interface {v2, v3}, Lr1/n;->bindNull(I)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-interface {v2, v3, p1}, Lr1/n;->bindString(ILjava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :goto_0
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 23
    .line 24
    .line 25
    :try_start_0
    invoke-interface {v2}, Lr1/p;->executeUpdateDelete()I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v2}, Landroidx/room/SharedSQLiteStatement;->release(Lr1/p;)V

    .line 36
    .line 37
    .line 38
    return p1

    .line 39
    :catchall_0
    move-exception p1

    .line 40
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v2}, Landroidx/room/SharedSQLiteStatement;->release(Lr1/p;)V

    .line 44
    .line 45
    .line 46
    throw p1
.end method

.method public insertWorkSpec(LK1/E;)V
    .locals 2

    .line 1
    iget-object v0, p0, LK1/U;->a:Landroidx/room/RoomDatabase;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 7
    .line 8
    .line 9
    :try_start_0
    iget-object v1, p0, LK1/U;->b:LK1/K;

    .line 10
    .line 11
    invoke-virtual {v1, p1}, Ln1/g;->insert(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :catchall_0
    move-exception p1

    .line 22
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 23
    .line 24
    .line 25
    throw p1
.end method

.method public markWorkSpecScheduled(Ljava/lang/String;J)I
    .locals 4

    .line 1
    iget-object v0, p0, LK1/U;->a:Landroidx/room/RoomDatabase;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, LK1/U;->k:LK1/G;

    .line 7
    .line 8
    invoke-virtual {v1}, Landroidx/room/SharedSQLiteStatement;->acquire()Lr1/p;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    const/4 v3, 0x1

    .line 13
    invoke-interface {v2, v3, p2, p3}, Lr1/n;->bindLong(IJ)V

    .line 14
    .line 15
    .line 16
    const/4 p2, 0x2

    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    invoke-interface {v2, p2}, Lr1/n;->bindNull(I)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-interface {v2, p2, p1}, Lr1/n;->bindString(ILjava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :goto_0
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 27
    .line 28
    .line 29
    :try_start_0
    invoke-interface {v2}, Lr1/p;->executeUpdateDelete()I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v2}, Landroidx/room/SharedSQLiteStatement;->release(Lr1/p;)V

    .line 40
    .line 41
    .line 42
    return p1

    .line 43
    :catchall_0
    move-exception p1

    .line 44
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v2}, Landroidx/room/SharedSQLiteStatement;->release(Lr1/p;)V

    .line 48
    .line 49
    .line 50
    throw p1
.end method

.method public resetScheduledState()I
    .locals 4

    .line 1
    iget-object v0, p0, LK1/U;->a:Landroidx/room/RoomDatabase;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, LK1/U;->l:LK1/H;

    .line 7
    .line 8
    invoke-virtual {v1}, Landroidx/room/SharedSQLiteStatement;->acquire()Lr1/p;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 13
    .line 14
    .line 15
    :try_start_0
    invoke-interface {v2}, Lr1/p;->executeUpdateDelete()I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v2}, Landroidx/room/SharedSQLiteStatement;->release(Lr1/p;)V

    .line 26
    .line 27
    .line 28
    return v3

    .line 29
    :catchall_0
    move-exception v3

    .line 30
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v2}, Landroidx/room/SharedSQLiteStatement;->release(Lr1/p;)V

    .line 34
    .line 35
    .line 36
    throw v3
.end method

.method public resetWorkSpecRunAttemptCount(Ljava/lang/String;)I
    .locals 4

    .line 1
    iget-object v0, p0, LK1/U;->a:Landroidx/room/RoomDatabase;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, LK1/U;->j:LK1/T;

    .line 7
    .line 8
    invoke-virtual {v1}, Landroidx/room/SharedSQLiteStatement;->acquire()Lr1/p;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    const/4 v3, 0x1

    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    invoke-interface {v2, v3}, Lr1/n;->bindNull(I)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-interface {v2, v3, p1}, Lr1/n;->bindString(ILjava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :goto_0
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 23
    .line 24
    .line 25
    :try_start_0
    invoke-interface {v2}, Lr1/p;->executeUpdateDelete()I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v2}, Landroidx/room/SharedSQLiteStatement;->release(Lr1/p;)V

    .line 36
    .line 37
    .line 38
    return p1

    .line 39
    :catchall_0
    move-exception p1

    .line 40
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v2}, Landroidx/room/SharedSQLiteStatement;->release(Lr1/p;)V

    .line 44
    .line 45
    .line 46
    throw p1
.end method

.method public setLastEnqueuedTime(Ljava/lang/String;J)V
    .locals 4

    .line 1
    iget-object v0, p0, LK1/U;->a:Landroidx/room/RoomDatabase;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, LK1/U;->h:LK1/Q;

    .line 7
    .line 8
    invoke-virtual {v1}, Landroidx/room/SharedSQLiteStatement;->acquire()Lr1/p;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    const/4 v3, 0x1

    .line 13
    invoke-interface {v2, v3, p2, p3}, Lr1/n;->bindLong(IJ)V

    .line 14
    .line 15
    .line 16
    const/4 p2, 0x2

    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    invoke-interface {v2, p2}, Lr1/n;->bindNull(I)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-interface {v2, p2, p1}, Lr1/n;->bindString(ILjava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :goto_0
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 27
    .line 28
    .line 29
    :try_start_0
    invoke-interface {v2}, Lr1/p;->executeUpdateDelete()I

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v2}, Landroidx/room/SharedSQLiteStatement;->release(Lr1/p;)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :catchall_0
    move-exception p1

    .line 43
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, v2}, Landroidx/room/SharedSQLiteStatement;->release(Lr1/p;)V

    .line 47
    .line 48
    .line 49
    throw p1
.end method

.method public setOutput(Ljava/lang/String;LB1/h;)V
    .locals 4

    .line 1
    iget-object v0, p0, LK1/U;->a:Landroidx/room/RoomDatabase;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, LK1/U;->g:LK1/P;

    .line 7
    .line 8
    invoke-virtual {v1}, Landroidx/room/SharedSQLiteStatement;->acquire()Lr1/p;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-static {p2}, LB1/h;->toByteArrayInternal(LB1/h;)[B

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    const/4 v3, 0x1

    .line 17
    if-nez p2, :cond_0

    .line 18
    .line 19
    invoke-interface {v2, v3}, Lr1/n;->bindNull(I)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-interface {v2, v3, p2}, Lr1/n;->bindBlob(I[B)V

    .line 24
    .line 25
    .line 26
    :goto_0
    const/4 p2, 0x2

    .line 27
    if-nez p1, :cond_1

    .line 28
    .line 29
    invoke-interface {v2, p2}, Lr1/n;->bindNull(I)V

    .line 30
    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    invoke-interface {v2, p2, p1}, Lr1/n;->bindString(ILjava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :goto_1
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 37
    .line 38
    .line 39
    :try_start_0
    invoke-interface {v2}, Lr1/p;->executeUpdateDelete()I

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, v2}, Landroidx/room/SharedSQLiteStatement;->release(Lr1/p;)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :catchall_0
    move-exception p1

    .line 53
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, v2}, Landroidx/room/SharedSQLiteStatement;->release(Lr1/p;)V

    .line 57
    .line 58
    .line 59
    throw p1
.end method

.method public setState(Landroidx/work/WorkInfo$State;Ljava/lang/String;)I
    .locals 5

    .line 1
    iget-object v0, p0, LK1/U;->a:Landroidx/room/RoomDatabase;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, LK1/U;->e:LK1/N;

    .line 7
    .line 8
    invoke-virtual {v1}, Landroidx/room/SharedSQLiteStatement;->acquire()Lr1/p;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-static {p1}, LK1/c0;->stateToInt(Landroidx/work/WorkInfo$State;)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    int-to-long v3, p1

    .line 17
    const/4 p1, 0x1

    .line 18
    invoke-interface {v2, p1, v3, v4}, Lr1/n;->bindLong(IJ)V

    .line 19
    .line 20
    .line 21
    const/4 p1, 0x2

    .line 22
    if-nez p2, :cond_0

    .line 23
    .line 24
    invoke-interface {v2, p1}, Lr1/n;->bindNull(I)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-interface {v2, p1, p2}, Lr1/n;->bindString(ILjava/lang/String;)V

    .line 29
    .line 30
    .line 31
    :goto_0
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 32
    .line 33
    .line 34
    :try_start_0
    invoke-interface {v2}, Lr1/p;->executeUpdateDelete()I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v2}, Landroidx/room/SharedSQLiteStatement;->release(Lr1/p;)V

    .line 45
    .line 46
    .line 47
    return p1

    .line 48
    :catchall_0
    move-exception p1

    .line 49
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, v2}, Landroidx/room/SharedSQLiteStatement;->release(Lr1/p;)V

    .line 53
    .line 54
    .line 55
    throw p1
.end method

.method public updateWorkSpec(LK1/E;)V
    .locals 2

    .line 1
    iget-object v0, p0, LK1/U;->a:Landroidx/room/RoomDatabase;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 7
    .line 8
    .line 9
    :try_start_0
    iget-object v1, p0, LK1/U;->c:LK1/L;

    .line 10
    .line 11
    invoke-virtual {v1, p1}, Ln1/f;->handle(Ljava/lang/Object;)I

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :catchall_0
    move-exception p1

    .line 22
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 23
    .line 24
    .line 25
    throw p1
.end method
