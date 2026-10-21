.class public final Lcom/google/android/gms/measurement/internal/zzfu;
.super Lcom/google/android/gms/measurement/internal/zzg;
.source "SourceFile"


# instance fields
.field public final c:Lcom/google/android/gms/measurement/internal/zzfx;

.field public d:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzho;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzg;-><init>(Lcom/google/android/gms/measurement/internal/zzho;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzfx;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zza()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-direct {p1, p0, v0}, Lcom/google/android/gms/measurement/internal/zzfx;-><init>(Lcom/google/android/gms/measurement/internal/zzfu;Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfu;->c:Lcom/google/android/gms/measurement/internal/zzfx;

    .line 14
    .line 15
    return-void
.end method

.method public static a(Landroid/database/sqlite/SQLiteDatabase;)J
    .locals 11

    .line 1
    const/4 v1, 0x0

    .line 2
    :try_start_0
    const-string v3, "messages"

    .line 3
    .line 4
    const-string v0, "rowid"

    .line 5
    .line 6
    filled-new-array {v0}, [Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v4

    .line 10
    const-string v5, "type=?"

    .line 11
    .line 12
    const-string v0, "3"

    .line 13
    .line 14
    filled-new-array {v0}, [Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v6

    .line 18
    const-string v9, "rowid desc"

    .line 19
    .line 20
    const-string v10, "1"

    .line 21
    .line 22
    const/4 v7, 0x0

    .line 23
    const/4 v8, 0x0

    .line 24
    move-object v2, p0

    .line 25
    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    if-eqz p0, :cond_0

    .line 34
    .line 35
    const/4 p0, 0x0

    .line 36
    invoke-interface {v1, p0}, Landroid/database/Cursor;->getLong(I)J

    .line 37
    .line 38
    .line 39
    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 41
    .line 42
    .line 43
    return-wide v2

    .line 44
    :catchall_0
    move-exception v0

    .line 45
    move-object p0, v0

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 48
    .line 49
    .line 50
    const-wide/16 v0, -0x1

    .line 51
    .line 52
    return-wide v0

    .line 53
    :goto_0
    if-eqz v1, :cond_1

    .line 54
    .line 55
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 56
    .line 57
    .line 58
    :cond_1
    throw p0
.end method


# virtual methods
.method public final b(I[B)Z
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfu;->zzt()V

    .line 4
    .line 5
    .line 6
    iget-boolean v0, v1, Lcom/google/android/gms/measurement/internal/zzfu;->d:Z

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    new-instance v3, Landroid/content/ContentValues;

    .line 13
    .line 14
    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v4, "type"

    .line 22
    .line 23
    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 24
    .line 25
    .line 26
    const-string v0, "entry"

    .line 27
    .line 28
    move-object/from16 v4, p2

    .line 29
    .line 30
    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 31
    .line 32
    .line 33
    const/4 v4, 0x5

    .line 34
    move v5, v2

    .line 35
    move v6, v4

    .line 36
    :goto_0
    if-ge v5, v4, :cond_d

    .line 37
    .line 38
    const/4 v7, 0x1

    .line 39
    const/4 v8, 0x0

    .line 40
    :try_start_0
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfu;->c()Landroid/database/sqlite/SQLiteDatabase;

    .line 41
    .line 42
    .line 43
    move-result-object v9
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_f
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_0 .. :try_end_0} :catch_e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_d
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 44
    if-nez v9, :cond_2

    .line 45
    .line 46
    :try_start_1
    iput-boolean v7, v1, Lcom/google/android/gms/measurement/internal/zzfu;->d:Z
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    .line 48
    if-eqz v9, :cond_1

    .line 49
    .line 50
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 51
    .line 52
    .line 53
    :cond_1
    :goto_1
    return v2

    .line 54
    :catchall_0
    move-exception v0

    .line 55
    goto/16 :goto_f

    .line 56
    .line 57
    :catch_0
    move-exception v0

    .line 58
    move/from16 v16, v2

    .line 59
    .line 60
    move/from16 p2, v7

    .line 61
    .line 62
    move-object v10, v8

    .line 63
    :goto_2
    move-object v8, v9

    .line 64
    goto/16 :goto_a

    .line 65
    .line 66
    :catch_1
    move/from16 v16, v2

    .line 67
    .line 68
    goto/16 :goto_c

    .line 69
    .line 70
    :catch_2
    move-exception v0

    .line 71
    move/from16 v16, v2

    .line 72
    .line 73
    goto/16 :goto_d

    .line 74
    .line 75
    :cond_2
    :try_start_2
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 76
    .line 77
    .line 78
    const-string v0, "select count(1) from messages"

    .line 79
    .line 80
    invoke-virtual {v9, v0, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 81
    .line 82
    .line 83
    move-result-object v10
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_2 .. :try_end_2} :catch_c
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 84
    if-eqz v10, :cond_3

    .line 85
    .line 86
    :try_start_3
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    if-eqz v0, :cond_3

    .line 91
    .line 92
    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    .line 93
    .line 94
    .line 95
    move-result-wide v11
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 96
    goto :goto_6

    .line 97
    :catchall_1
    move-exception v0

    .line 98
    :goto_3
    move-object v8, v10

    .line 99
    goto/16 :goto_f

    .line 100
    .line 101
    :catch_3
    move-exception v0

    .line 102
    move/from16 v16, v2

    .line 103
    .line 104
    :goto_4
    move/from16 p2, v7

    .line 105
    .line 106
    goto :goto_2

    .line 107
    :catch_4
    move/from16 v16, v2

    .line 108
    .line 109
    goto/16 :goto_9

    .line 110
    .line 111
    :catch_5
    move-exception v0

    .line 112
    move/from16 v16, v2

    .line 113
    .line 114
    :goto_5
    move-object v8, v10

    .line 115
    goto/16 :goto_d

    .line 116
    .line 117
    :cond_3
    const-wide/16 v11, 0x0

    .line 118
    .line 119
    :goto_6
    const-wide/32 v13, 0x186a0

    .line 120
    .line 121
    .line 122
    cmp-long v0, v11, v13

    .line 123
    .line 124
    const-string v13, "messages"

    .line 125
    .line 126
    if-ltz v0, :cond_4

    .line 127
    .line 128
    :try_start_4
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfu;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzg()Lcom/google/android/gms/measurement/internal/zzgd;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    const-string v14, "Data loss, local db full"

    .line 137
    .line 138
    invoke-virtual {v0, v14}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    const-wide/32 v14, 0x186a1

    .line 142
    .line 143
    .line 144
    sub-long/2addr v14, v11

    .line 145
    const-string v0, "rowid in (select rowid from messages order by rowid asc limit ?)"

    .line 146
    .line 147
    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v11

    .line 151
    filled-new-array {v11}, [Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v11

    .line 155
    invoke-virtual {v9, v13, v0, v11}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 156
    .line 157
    .line 158
    move-result v0

    .line 159
    int-to-long v11, v0

    .line 160
    cmp-long v0, v11, v14

    .line 161
    .line 162
    if-eqz v0, :cond_4

    .line 163
    .line 164
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfu;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzg()Lcom/google/android/gms/measurement/internal/zzgd;

    .line 169
    .line 170
    .line 171
    move-result-object v0
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_4 .. :try_end_4} :catch_a
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 172
    move/from16 v16, v2

    .line 173
    .line 174
    :try_start_5
    const-string v2, "Different delete count than expected in local db. expected, received, difference"

    .line 175
    .line 176
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 177
    .line 178
    .line 179
    move-result-object v4
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_5 .. :try_end_5} :catch_9
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_5 .. :try_end_5} :catch_b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_8
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 180
    move/from16 p2, v7

    .line 181
    .line 182
    :try_start_6
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 183
    .line 184
    .line 185
    move-result-object v7

    .line 186
    sub-long/2addr v14, v11

    .line 187
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 188
    .line 189
    .line 190
    move-result-object v11

    .line 191
    invoke-virtual {v0, v2, v4, v7, v11}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 192
    .line 193
    .line 194
    goto :goto_8

    .line 195
    :catch_6
    move-exception v0

    .line 196
    goto/16 :goto_2

    .line 197
    .line 198
    :catch_7
    move-exception v0

    .line 199
    goto :goto_5

    .line 200
    :catch_8
    move-exception v0

    .line 201
    goto :goto_4

    .line 202
    :catch_9
    move-exception v0

    .line 203
    :goto_7
    move/from16 p2, v7

    .line 204
    .line 205
    goto :goto_5

    .line 206
    :catch_a
    move-exception v0

    .line 207
    move/from16 v16, v2

    .line 208
    .line 209
    goto :goto_7

    .line 210
    :cond_4
    move/from16 v16, v2

    .line 211
    .line 212
    move/from16 p2, v7

    .line 213
    .line 214
    :goto_8
    invoke-virtual {v9, v13, v8, v3}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 215
    .line 216
    .line 217
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_6 .. :try_end_6} :catch_b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 221
    .line 222
    .line 223
    if-eqz v10, :cond_5

    .line 224
    .line 225
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 226
    .line 227
    .line 228
    :cond_5
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 229
    .line 230
    .line 231
    return p2

    .line 232
    :catch_b
    :goto_9
    move-object v8, v10

    .line 233
    goto :goto_c

    .line 234
    :catch_c
    move-exception v0

    .line 235
    move/from16 v16, v2

    .line 236
    .line 237
    move/from16 p2, v7

    .line 238
    .line 239
    goto :goto_d

    .line 240
    :catchall_2
    move-exception v0

    .line 241
    move-object v9, v8

    .line 242
    goto/16 :goto_f

    .line 243
    .line 244
    :catch_d
    move-exception v0

    .line 245
    move/from16 v16, v2

    .line 246
    .line 247
    move/from16 p2, v7

    .line 248
    .line 249
    move-object v10, v8

    .line 250
    :goto_a
    if-eqz v8, :cond_6

    .line 251
    .line 252
    :try_start_7
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    .line 253
    .line 254
    .line 255
    move-result v2

    .line 256
    if-eqz v2, :cond_6

    .line 257
    .line 258
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 259
    .line 260
    .line 261
    goto :goto_b

    .line 262
    :catchall_3
    move-exception v0

    .line 263
    move-object v9, v8

    .line 264
    goto/16 :goto_3

    .line 265
    .line 266
    :cond_6
    :goto_b
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfu;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    .line 267
    .line 268
    .line 269
    move-result-object v2

    .line 270
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgb;->zzg()Lcom/google/android/gms/measurement/internal/zzgd;

    .line 271
    .line 272
    .line 273
    move-result-object v2

    .line 274
    const-string v4, "Error writing entry to local database"

    .line 275
    .line 276
    invoke-virtual {v2, v4, v0}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 277
    .line 278
    .line 279
    move/from16 v2, p2

    .line 280
    .line 281
    iput-boolean v2, v1, Lcom/google/android/gms/measurement/internal/zzfu;->d:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 282
    .line 283
    if-eqz v10, :cond_7

    .line 284
    .line 285
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 286
    .line 287
    .line 288
    :cond_7
    if-eqz v8, :cond_a

    .line 289
    .line 290
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 291
    .line 292
    .line 293
    goto :goto_e

    .line 294
    :catch_e
    move/from16 v16, v2

    .line 295
    .line 296
    move-object v9, v8

    .line 297
    :goto_c
    int-to-long v10, v6

    .line 298
    :try_start_8
    invoke-static {v10, v11}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 299
    .line 300
    .line 301
    add-int/lit8 v6, v6, 0x14

    .line 302
    .line 303
    if-eqz v8, :cond_8

    .line 304
    .line 305
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 306
    .line 307
    .line 308
    :cond_8
    if-eqz v9, :cond_a

    .line 309
    .line 310
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 311
    .line 312
    .line 313
    goto :goto_e

    .line 314
    :catch_f
    move-exception v0

    .line 315
    move/from16 v16, v2

    .line 316
    .line 317
    move-object v9, v8

    .line 318
    :goto_d
    :try_start_9
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfu;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    .line 319
    .line 320
    .line 321
    move-result-object v2

    .line 322
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgb;->zzg()Lcom/google/android/gms/measurement/internal/zzgd;

    .line 323
    .line 324
    .line 325
    move-result-object v2

    .line 326
    const-string v4, "Error writing entry; local database full"

    .line 327
    .line 328
    invoke-virtual {v2, v4, v0}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 329
    .line 330
    .line 331
    const/4 v2, 0x1

    .line 332
    iput-boolean v2, v1, Lcom/google/android/gms/measurement/internal/zzfu;->d:Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 333
    .line 334
    if-eqz v8, :cond_9

    .line 335
    .line 336
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 337
    .line 338
    .line 339
    :cond_9
    if-eqz v9, :cond_a

    .line 340
    .line 341
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 342
    .line 343
    .line 344
    :cond_a
    :goto_e
    add-int/lit8 v5, v5, 0x1

    .line 345
    .line 346
    move/from16 v2, v16

    .line 347
    .line 348
    const/4 v4, 0x5

    .line 349
    goto/16 :goto_0

    .line 350
    .line 351
    :goto_f
    if-eqz v8, :cond_b

    .line 352
    .line 353
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 354
    .line 355
    .line 356
    :cond_b
    if-eqz v9, :cond_c

    .line 357
    .line 358
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 359
    .line 360
    .line 361
    :cond_c
    throw v0

    .line 362
    :cond_d
    move/from16 v16, v2

    .line 363
    .line 364
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfu;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    .line 365
    .line 366
    .line 367
    move-result-object v0

    .line 368
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzp()Lcom/google/android/gms/measurement/internal/zzgd;

    .line 369
    .line 370
    .line 371
    move-result-object v0

    .line 372
    const-string v2, "Failed to write entry to local database"

    .line 373
    .line 374
    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;)V

    .line 375
    .line 376
    .line 377
    return v16
.end method

.method public final c()Landroid/database/sqlite/SQLiteDatabase;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzfu;->d:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfu;->c:Lcom/google/android/gms/measurement/internal/zzfx;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfx;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzfu;->d:Z

    .line 17
    .line 18
    return-object v1

    .line 19
    :cond_1
    return-object v0
.end method

.method public final bridge synthetic zza()Landroid/content/Context;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzim;->zza()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final zza(I)Ljava/util/List;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    .line 2
    const-string v2, "Error reading entries from local database"

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfu;->zzt()V

    .line 3
    iget-boolean v0, v1, Lcom/google/android/gms/measurement/internal/zzfu;->d:Z

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfu;->zza()Landroid/content/Context;

    move-result-object v0

    .line 6
    const-string v5, "google_app_measurement_local.db"

    .line 7
    invoke-virtual {v0, v5}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_9

    :cond_1
    const/4 v5, 0x5

    const/4 v6, 0x0

    move v8, v5

    move v7, v6

    :goto_0
    if-ge v7, v5, :cond_13

    const/4 v9, 0x1

    .line 8
    :try_start_0
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfu;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v10
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    if-nez v10, :cond_3

    .line 9
    :try_start_1
    iput-boolean v9, v1, Lcom/google/android/gms/measurement/internal/zzfu;->d:Z
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v10, :cond_2

    .line 10
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteClosable;->close()V

    :cond_2
    :goto_1
    return-object v3

    :catchall_0
    move-exception v0

    goto/16 :goto_e

    :catch_0
    move-exception v0

    move-object v11, v3

    goto/16 :goto_a

    :catch_1
    move-exception v0

    move-object v11, v3

    goto/16 :goto_c

    .line 11
    :cond_3
    :try_start_2
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 12
    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/zzfu;->a(Landroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v11

    const-wide/16 v19, -0x1

    cmp-long v0, v11, v19

    if-eqz v0, :cond_4

    .line 13
    const-string v0, "rowid<?"

    .line 14
    new-array v13, v9, [Ljava/lang/String;

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v13, v6

    move-object v14, v13

    move-object v13, v0

    goto :goto_2

    :cond_4
    move-object v13, v3

    move-object v14, v13

    .line 15
    :goto_2
    const-string v11, "messages"

    const-string v0, "rowid"

    const-string v12, "type"

    const-string v15, "entry"

    filled-new-array {v0, v12, v15}, [Ljava/lang/String;

    move-result-object v12

    const-string v17, "rowid asc"

    const/16 v0, 0x64

    .line 16
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 17
    invoke-virtual/range {v10 .. v18}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 18
    :cond_5
    :goto_3
    :try_start_3
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 19
    invoke-interface {v11, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    .line 20
    invoke-interface {v11, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v12, 0x2

    .line 21
    invoke-interface {v11, v12}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v13

    if-nez v0, :cond_6

    .line 22
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v12
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_3 .. :try_end_3} :catch_a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 23
    :try_start_4
    array-length v0, v13

    invoke-virtual {v12, v13, v6, v0}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 24
    invoke-virtual {v12, v6}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 25
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzbf;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzbf;
    :try_end_4
    .catch Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader$ParseException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 26
    :try_start_5
    invoke-virtual {v12}, Landroid/os/Parcel;->recycle()V

    if-eqz v0, :cond_5

    .line 27
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_5 .. :try_end_5} :catch_a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v3, v11

    goto/16 :goto_e

    :catch_2
    move-exception v0

    goto/16 :goto_a

    :catch_3
    move-exception v0

    goto/16 :goto_c

    :catchall_2
    move-exception v0

    goto :goto_4

    .line 28
    :catch_4
    :try_start_6
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfu;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzg()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v0

    const-string v13, "Failed to load event from local database"

    invoke-virtual {v0, v13}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 29
    :try_start_7
    invoke-virtual {v12}, Landroid/os/Parcel;->recycle()V

    goto :goto_3

    .line 30
    :goto_4
    invoke-virtual {v12}, Landroid/os/Parcel;->recycle()V

    .line 31
    throw v0

    :cond_6
    if-ne v0, v9, :cond_7

    .line 32
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v12
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_7 .. :try_end_7} :catch_a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 33
    :try_start_8
    array-length v0, v13

    invoke-virtual {v12, v13, v6, v0}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 34
    invoke-virtual {v12, v6}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 35
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzno;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzno;
    :try_end_8
    .catch Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader$ParseException; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 36
    :try_start_9
    invoke-virtual {v12}, Landroid/os/Parcel;->recycle()V
    :try_end_9
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_9 .. :try_end_9} :catch_a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_5

    :catchall_3
    move-exception v0

    goto :goto_6

    .line 37
    :catch_5
    :try_start_a
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfu;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzg()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v0

    const-string v13, "Failed to load user property from local database"

    invoke-virtual {v0, v13}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 38
    :try_start_b
    invoke-virtual {v12}, Landroid/os/Parcel;->recycle()V

    move-object v0, v3

    :goto_5
    if-eqz v0, :cond_5

    .line 39
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 40
    :goto_6
    invoke-virtual {v12}, Landroid/os/Parcel;->recycle()V

    .line 41
    throw v0

    :cond_7
    if-ne v0, v12, :cond_8

    .line 42
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v12
    :try_end_b
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_b .. :try_end_b} :catch_3
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_b .. :try_end_b} :catch_a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 43
    :try_start_c
    array-length v0, v13

    invoke-virtual {v12, v13, v6, v0}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 44
    invoke-virtual {v12, v6}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 45
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzac;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 46
    invoke-interface {v0, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzac;
    :try_end_c
    .catch Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader$ParseException; {:try_start_c .. :try_end_c} :catch_6
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 47
    :try_start_d
    invoke-virtual {v12}, Landroid/os/Parcel;->recycle()V
    :try_end_d
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_d .. :try_end_d} :catch_3
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_d .. :try_end_d} :catch_a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto :goto_7

    :catchall_4
    move-exception v0

    goto :goto_8

    .line 48
    :catch_6
    :try_start_e
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfu;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v0

    .line 49
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzg()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v0

    const-string v13, "Failed to load conditional user property from local database"

    .line 50
    invoke-virtual {v0, v13}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    .line 51
    :try_start_f
    invoke-virtual {v12}, Landroid/os/Parcel;->recycle()V

    move-object v0, v3

    :goto_7
    if-eqz v0, :cond_5

    .line 52
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 53
    :goto_8
    invoke-virtual {v12}, Landroid/os/Parcel;->recycle()V

    .line 54
    throw v0

    :cond_8
    const/4 v12, 0x3

    if-ne v0, v12, :cond_9

    .line 55
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfu;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzu()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v0

    const-string v12, "Skipping app launch break"

    invoke-virtual {v0, v12}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 56
    :cond_9
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfu;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzg()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v0

    const-string v12, "Unknown record type in local database"

    invoke-virtual {v0, v12}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 57
    :cond_a
    const-string v0, "messages"

    const-string v12, "rowid <= ?"

    .line 58
    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v13

    filled-new-array {v13}, [Ljava/lang/String;

    move-result-object v13

    .line 59
    invoke-virtual {v10, v0, v12, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 60
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v0, v12, :cond_b

    .line 61
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfu;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzg()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v0

    const-string v12, "Fewer entries removed from local database than expected"

    invoke-virtual {v0, v12}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;)V

    .line 62
    :cond_b
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 63
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_f
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_f .. :try_end_f} :catch_3
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_f .. :try_end_f} :catch_a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_f .. :try_end_f} :catch_2
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 64
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 65
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteClosable;->close()V

    :goto_9
    return-object v4

    :catch_7
    move-object v11, v3

    goto :goto_b

    :catchall_5
    move-exception v0

    move-object v10, v3

    goto :goto_e

    :catch_8
    move-exception v0

    move-object v10, v3

    move-object v11, v10

    :goto_a
    if-eqz v10, :cond_c

    .line 66
    :try_start_10
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v12

    if-eqz v12, :cond_c

    .line 67
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 68
    :cond_c
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfu;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzgb;->zzg()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v12

    invoke-virtual {v12, v2, v0}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 69
    iput-boolean v9, v1, Lcom/google/android/gms/measurement/internal/zzfu;->d:Z
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    if-eqz v11, :cond_d

    .line 70
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_d
    if-eqz v10, :cond_10

    .line 71
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteClosable;->close()V

    goto :goto_d

    :catch_9
    move-object v10, v3

    move-object v11, v10

    :catch_a
    :goto_b
    int-to-long v12, v8

    .line 72
    :try_start_11
    invoke-static {v12, v13}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    add-int/lit8 v8, v8, 0x14

    if-eqz v11, :cond_e

    .line 73
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_e
    if-eqz v10, :cond_10

    .line 74
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteClosable;->close()V

    goto :goto_d

    :catch_b
    move-exception v0

    move-object v10, v3

    move-object v11, v10

    .line 75
    :goto_c
    :try_start_12
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfu;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzgb;->zzg()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v12

    invoke-virtual {v12, v2, v0}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 76
    iput-boolean v9, v1, Lcom/google/android/gms/measurement/internal/zzfu;->d:Z
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    if-eqz v11, :cond_f

    .line 77
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_f
    if-eqz v10, :cond_10

    .line 78
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteClosable;->close()V

    :cond_10
    :goto_d
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    :goto_e
    if-eqz v3, :cond_11

    .line 79
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_11
    if-eqz v10, :cond_12

    .line 80
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 81
    :cond_12
    throw v0

    .line 82
    :cond_13
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfu;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzu()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v0

    const-string v2, "Failed to read events from database in reasonable time"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;)V

    return-object v3
.end method

.method public final zza(Lcom/google/android/gms/measurement/internal/zzac;)Z
    .locals 2

    .line 83
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzq()Lcom/google/android/gms/measurement/internal/zznt;

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zznt;->z(Landroid/os/Parcelable;)[B

    move-result-object p1

    .line 84
    array-length v0, p1

    const/high16 v1, 0x20000

    if-le v0, v1, :cond_0

    .line 85
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object p1

    .line 86
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgb;->zzm()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object p1

    const-string v0, "Conditional user property too long for local database. Sending directly to service"

    .line 87
    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v0, 0x2

    .line 88
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/measurement/internal/zzfu;->b(I[B)Z

    move-result p1

    return p1
.end method

.method public final zza(Lcom/google/android/gms/measurement/internal/zzbf;)Z
    .locals 3

    .line 89
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x0

    .line 90
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/measurement/internal/zzbf;->writeToParcel(Landroid/os/Parcel;I)V

    .line 91
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object p1

    .line 92
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 93
    array-length v0, p1

    const/high16 v2, 0x20000

    if-le v0, v2, :cond_0

    .line 94
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object p1

    .line 95
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgb;->zzm()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object p1

    const-string v0, "Event is too long for local database. Sending event directly to service"

    .line 96
    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;)V

    return v1

    .line 97
    :cond_0
    invoke-virtual {p0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzfu;->b(I[B)Z

    move-result p1

    return p1
.end method

.method public final zza(Lcom/google/android/gms/measurement/internal/zzno;)Z
    .locals 3

    .line 98
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x0

    .line 99
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/measurement/internal/zzno;->writeToParcel(Landroid/os/Parcel;I)V

    .line 100
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object p1

    .line 101
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 102
    array-length v0, p1

    const/high16 v2, 0x20000

    if-le v0, v2, :cond_0

    .line 103
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object p1

    .line 104
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgb;->zzm()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object p1

    const-string v0, "User property too long for local database. Sending directly to service"

    .line 105
    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;)V

    return v1

    :cond_0
    const/4 v0, 0x1

    .line 106
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/measurement/internal/zzfu;->b(I[B)Z

    move-result p1

    return p1
.end method

.method public final zzaa()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzt()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->c()Landroid/database/sqlite/SQLiteDatabase;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const-string v1, "messages"

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-lez v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgb;->zzp()Lcom/google/android/gms/measurement/internal/zzgd;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    const-string v2, "Reset local analytics data. records"

    .line 28
    .line 29
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :catch_0
    move-exception v0

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    return-void

    .line 40
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgb;->zzg()Lcom/google/android/gms/measurement/internal/zzgd;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    const-string v2, "Error resetting local analytics data. error"

    .line 49
    .line 50
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public final zzab()Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [B

    .line 3
    .line 4
    const/4 v1, 0x3

    .line 5
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/measurement/internal/zzfu;->b(I[B)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public final zzac()Z
    .locals 10

    .line 1
    const-string v0, "Error deleting app launch break from local database"

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzt()V

    .line 4
    .line 5
    .line 6
    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zzfu;->d:Z

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zza()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const-string v3, "google_app_measurement_local.db"

    .line 17
    .line 18
    invoke-virtual {v1, v3}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-nez v1, :cond_1

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    const/4 v1, 0x5

    .line 30
    move v4, v1

    .line 31
    move v3, v2

    .line 32
    :goto_0
    if-ge v3, v1, :cond_7

    .line 33
    .line 34
    const/4 v5, 0x1

    .line 35
    const/4 v6, 0x0

    .line 36
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->c()Landroid/database/sqlite/SQLiteDatabase;

    .line 37
    .line 38
    .line 39
    move-result-object v6

    .line 40
    if-nez v6, :cond_3

    .line 41
    .line 42
    iput-boolean v5, p0, Lcom/google/android/gms/measurement/internal/zzfu;->d:Z
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    .line 44
    if-eqz v6, :cond_2

    .line 45
    .line 46
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 47
    .line 48
    .line 49
    :cond_2
    :goto_1
    return v2

    .line 50
    :catchall_0
    move-exception v0

    .line 51
    goto :goto_5

    .line 52
    :catch_0
    move-exception v7

    .line 53
    goto :goto_2

    .line 54
    :catch_1
    move-exception v7

    .line 55
    goto :goto_3

    .line 56
    :cond_3
    :try_start_1
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 57
    .line 58
    .line 59
    const-string v7, "messages"

    .line 60
    .line 61
    const-string v8, "type == ?"

    .line 62
    .line 63
    const/4 v9, 0x3

    .line 64
    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v9

    .line 68
    filled-new-array {v9}, [Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v9

    .line 72
    invoke-virtual {v6, v7, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    .line 80
    .line 81
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 82
    .line 83
    .line 84
    return v5

    .line 85
    :goto_2
    if-eqz v6, :cond_4

    .line 86
    .line 87
    :try_start_2
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    .line 88
    .line 89
    .line 90
    move-result v8

    .line 91
    if-eqz v8, :cond_4

    .line 92
    .line 93
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 94
    .line 95
    .line 96
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    .line 97
    .line 98
    .line 99
    move-result-object v8

    .line 100
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzgb;->zzg()Lcom/google/android/gms/measurement/internal/zzgd;

    .line 101
    .line 102
    .line 103
    move-result-object v8

    .line 104
    invoke-virtual {v8, v0, v7}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    iput-boolean v5, p0, Lcom/google/android/gms/measurement/internal/zzfu;->d:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 108
    .line 109
    if-eqz v6, :cond_5

    .line 110
    .line 111
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 112
    .line 113
    .line 114
    goto :goto_4

    .line 115
    :catch_2
    int-to-long v7, v4

    .line 116
    :try_start_3
    invoke-static {v7, v8}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 117
    .line 118
    .line 119
    add-int/lit8 v4, v4, 0x14

    .line 120
    .line 121
    if-eqz v6, :cond_5

    .line 122
    .line 123
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 124
    .line 125
    .line 126
    goto :goto_4

    .line 127
    :goto_3
    :try_start_4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    .line 128
    .line 129
    .line 130
    move-result-object v8

    .line 131
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzgb;->zzg()Lcom/google/android/gms/measurement/internal/zzgd;

    .line 132
    .line 133
    .line 134
    move-result-object v8

    .line 135
    invoke-virtual {v8, v0, v7}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 136
    .line 137
    .line 138
    iput-boolean v5, p0, Lcom/google/android/gms/measurement/internal/zzfu;->d:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 139
    .line 140
    if-eqz v6, :cond_5

    .line 141
    .line 142
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 143
    .line 144
    .line 145
    :cond_5
    :goto_4
    add-int/lit8 v3, v3, 0x1

    .line 146
    .line 147
    goto :goto_0

    .line 148
    :goto_5
    if-eqz v6, :cond_6

    .line 149
    .line 150
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 151
    .line 152
    .line 153
    :cond_6
    throw v0

    .line 154
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzu()Lcom/google/android/gms/measurement/internal/zzgd;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    const-string v1, "Error deleting app launch break from local database in reasonable time"

    .line 163
    .line 164
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    return v2
.end method

.method public final bridge synthetic zzb()Lcom/google/android/gms/common/util/Clock;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzim;->zzb()Lcom/google/android/gms/common/util/Clock;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final bridge synthetic zzd()Lcom/google/android/gms/measurement/internal/zzad;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzim;->zzd()Lcom/google/android/gms/measurement/internal/zzad;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final bridge synthetic zze()Lcom/google/android/gms/measurement/internal/zzae;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzim;->zze()Lcom/google/android/gms/measurement/internal/zzae;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final bridge synthetic zzf()Lcom/google/android/gms/measurement/internal/zzaz;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzim;->zzf()Lcom/google/android/gms/measurement/internal/zzaz;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final bridge synthetic zzi()Lcom/google/android/gms/measurement/internal/zzfw;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzim;->zzi()Lcom/google/android/gms/measurement/internal/zzfw;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final bridge synthetic zzj()Lcom/google/android/gms/measurement/internal/zzgb;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzim;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final bridge synthetic zzk()Lcom/google/android/gms/measurement/internal/zzgm;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzim;->zzk()Lcom/google/android/gms/measurement/internal/zzgm;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final bridge synthetic zzl()Lcom/google/android/gms/measurement/internal/zzhh;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzim;->zzl()Lcom/google/android/gms/measurement/internal/zzhh;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final bridge synthetic zzq()Lcom/google/android/gms/measurement/internal/zznt;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzim;->zzq()Lcom/google/android/gms/measurement/internal/zznt;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final bridge synthetic zzt()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzd;->zzt()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final zzz()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
