.class public final synthetic La3/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La3/p;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:La3/r;

.field public final synthetic f:LS2/E;


# direct methods
.method public synthetic constructor <init>(La3/r;LS2/E;I)V
    .locals 0

    .line 1
    iput p3, p0, La3/n;->b:I

    iput-object p1, p0, La3/n;->e:La3/r;

    iput-object p2, p0, La3/n;->f:LS2/E;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    iget v0, p0, La3/n;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    .line 7
    .line 8
    iget-object v0, p0, La3/n;->e:La3/r;

    .line 9
    .line 10
    iget-object v1, p0, La3/n;->f:LS2/E;

    .line 11
    .line 12
    invoke-static {p1, v1}, La3/r;->b(Landroid/database/sqlite/SQLiteDatabase;LS2/E;)Ljava/lang/Long;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    if-nez p1, :cond_0

    .line 17
    .line 18
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {v0}, La3/r;->a()Landroid/database/sqlite/SQLiteDatabase;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {p1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    filled-new-array {p1}, [Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    const-string v1, "SELECT 1 FROM events WHERE context_id = ? LIMIT 1"

    .line 34
    .line 35
    invoke-virtual {v0, v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 44
    .line 45
    .line 46
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 48
    .line 49
    .line 50
    move-object p1, v0

    .line 51
    :goto_0
    return-object p1

    .line 52
    :catchall_0
    move-exception v0

    .line 53
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 54
    .line 55
    .line 56
    throw v0

    .line 57
    :pswitch_0
    move-object v1, p1

    .line 58
    check-cast v1, Landroid/database/sqlite/SQLiteDatabase;

    .line 59
    .line 60
    iget-object p1, p0, La3/n;->e:La3/r;

    .line 61
    .line 62
    iget-object v0, p1, La3/r;->j:La3/e;

    .line 63
    .line 64
    check-cast v0, La3/a;

    .line 65
    .line 66
    iget v2, v0, La3/a;->c:I

    .line 67
    .line 68
    iget-object v3, p0, La3/n;->f:LS2/E;

    .line 69
    .line 70
    invoke-virtual {p1, v1, v3, v2}, La3/r;->d(Landroid/database/sqlite/SQLiteDatabase;LS2/E;I)Ljava/util/ArrayList;

    .line 71
    .line 72
    .line 73
    move-result-object v9

    .line 74
    invoke-static {}, Lcom/google/android/datatransport/Priority;->values()[Lcom/google/android/datatransport/Priority;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    array-length v4, v2

    .line 79
    const/4 v10, 0x0

    .line 80
    move v5, v10

    .line 81
    :goto_1
    if-ge v5, v4, :cond_3

    .line 82
    .line 83
    aget-object v6, v2, v5

    .line 84
    .line 85
    invoke-virtual {v3}, LS2/E;->getPriority()Lcom/google/android/datatransport/Priority;

    .line 86
    .line 87
    .line 88
    move-result-object v7

    .line 89
    if-ne v6, v7, :cond_1

    .line 90
    .line 91
    goto :goto_2

    .line 92
    :cond_1
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 93
    .line 94
    .line 95
    move-result v7

    .line 96
    iget v8, v0, La3/a;->c:I

    .line 97
    .line 98
    sub-int/2addr v8, v7

    .line 99
    if-gtz v8, :cond_2

    .line 100
    .line 101
    goto :goto_3

    .line 102
    :cond_2
    invoke-virtual {v3, v6}, LS2/E;->withPriority(Lcom/google/android/datatransport/Priority;)LS2/E;

    .line 103
    .line 104
    .line 105
    move-result-object v6

    .line 106
    invoke-virtual {p1, v1, v6, v8}, La3/r;->d(Landroid/database/sqlite/SQLiteDatabase;LS2/E;I)Ljava/util/ArrayList;

    .line 107
    .line 108
    .line 109
    move-result-object v6

    .line 110
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 111
    .line 112
    .line 113
    :goto_2
    add-int/lit8 v5, v5, 0x1

    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_3
    :goto_3
    new-instance p1, Ljava/util/HashMap;

    .line 117
    .line 118
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 119
    .line 120
    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    .line 122
    .line 123
    const-string v2, "event_id IN ("

    .line 124
    .line 125
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    move v2, v10

    .line 129
    :goto_4
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 130
    .line 131
    .line 132
    move-result v3

    .line 133
    const/4 v11, 0x1

    .line 134
    if-ge v2, v3, :cond_5

    .line 135
    .line 136
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v3

    .line 140
    check-cast v3, La3/m;

    .line 141
    .line 142
    invoke-virtual {v3}, La3/m;->getId()J

    .line 143
    .line 144
    .line 145
    move-result-wide v3

    .line 146
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 150
    .line 151
    .line 152
    move-result v3

    .line 153
    sub-int/2addr v3, v11

    .line 154
    if-ge v2, v3, :cond_4

    .line 155
    .line 156
    const/16 v3, 0x2c

    .line 157
    .line 158
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 162
    .line 163
    goto :goto_4

    .line 164
    :cond_5
    const/16 v2, 0x29

    .line 165
    .line 166
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    const-string v2, "value"

    .line 170
    .line 171
    const-string v3, "event_id"

    .line 172
    .line 173
    const-string v4, "name"

    .line 174
    .line 175
    filled-new-array {v3, v4, v2}, [Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v3

    .line 179
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v4

    .line 183
    const/4 v7, 0x0

    .line 184
    const/4 v8, 0x0

    .line 185
    const-string v2, "event_metadata"

    .line 186
    .line 187
    const/4 v5, 0x0

    .line 188
    const/4 v6, 0x0

    .line 189
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 190
    .line 191
    .line 192
    move-result-object v1

    .line 193
    :goto_5
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 194
    .line 195
    .line 196
    move-result v0

    .line 197
    if-eqz v0, :cond_7

    .line 198
    .line 199
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getLong(I)J

    .line 200
    .line 201
    .line 202
    move-result-wide v2

    .line 203
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    check-cast v0, Ljava/util/Set;

    .line 212
    .line 213
    if-nez v0, :cond_6

    .line 214
    .line 215
    new-instance v0, Ljava/util/HashSet;

    .line 216
    .line 217
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 218
    .line 219
    .line 220
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 221
    .line 222
    .line 223
    move-result-object v2

    .line 224
    invoke-virtual {p1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    :cond_6
    new-instance v2, La3/q;

    .line 228
    .line 229
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v3

    .line 233
    const/4 v4, 0x2

    .line 234
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v4

    .line 238
    invoke-direct {v2, v3, v4}, La3/q;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 242
    .line 243
    .line 244
    goto :goto_5

    .line 245
    :cond_7
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 246
    .line 247
    .line 248
    invoke-virtual {v9}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    .line 249
    .line 250
    .line 251
    move-result-object v0

    .line 252
    :goto_6
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    .line 253
    .line 254
    .line 255
    move-result v1

    .line 256
    if-eqz v1, :cond_a

    .line 257
    .line 258
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 259
    .line 260
    .line 261
    move-result-object v1

    .line 262
    check-cast v1, La3/m;

    .line 263
    .line 264
    invoke-virtual {v1}, La3/m;->getId()J

    .line 265
    .line 266
    .line 267
    move-result-wide v2

    .line 268
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 269
    .line 270
    .line 271
    move-result-object v2

    .line 272
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 273
    .line 274
    .line 275
    move-result v2

    .line 276
    if-nez v2, :cond_8

    .line 277
    .line 278
    goto :goto_6

    .line 279
    :cond_8
    invoke-virtual {v1}, La3/m;->getEvent()LS2/u;

    .line 280
    .line 281
    .line 282
    move-result-object v2

    .line 283
    invoke-virtual {v2}, LS2/u;->toBuilder()LS2/t;

    .line 284
    .line 285
    .line 286
    move-result-object v2

    .line 287
    invoke-virtual {v1}, La3/m;->getId()J

    .line 288
    .line 289
    .line 290
    move-result-wide v3

    .line 291
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 292
    .line 293
    .line 294
    move-result-object v3

    .line 295
    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    .line 297
    .line 298
    move-result-object v3

    .line 299
    check-cast v3, Ljava/util/Set;

    .line 300
    .line 301
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 302
    .line 303
    .line 304
    move-result-object v3

    .line 305
    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 306
    .line 307
    .line 308
    move-result v4

    .line 309
    if-eqz v4, :cond_9

    .line 310
    .line 311
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 312
    .line 313
    .line 314
    move-result-object v4

    .line 315
    check-cast v4, La3/q;

    .line 316
    .line 317
    iget-object v5, v4, La3/q;->a:Ljava/lang/String;

    .line 318
    .line 319
    iget-object v4, v4, La3/q;->b:Ljava/lang/String;

    .line 320
    .line 321
    invoke-virtual {v2, v5, v4}, LS2/t;->addMetadata(Ljava/lang/String;Ljava/lang/String;)LS2/t;

    .line 322
    .line 323
    .line 324
    goto :goto_7

    .line 325
    :cond_9
    invoke-virtual {v1}, La3/m;->getId()J

    .line 326
    .line 327
    .line 328
    move-result-wide v3

    .line 329
    invoke-virtual {v1}, La3/m;->getTransportContext()LS2/E;

    .line 330
    .line 331
    .line 332
    move-result-object v1

    .line 333
    invoke-virtual {v2}, LS2/t;->build()LS2/u;

    .line 334
    .line 335
    .line 336
    move-result-object v2

    .line 337
    invoke-static {v3, v4, v1, v2}, La3/m;->create(JLS2/E;LS2/u;)La3/m;

    .line 338
    .line 339
    .line 340
    move-result-object v1

    .line 341
    invoke-interface {v0, v1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    .line 342
    .line 343
    .line 344
    goto :goto_6

    .line 345
    :cond_a
    return-object v9

    .line 346
    :catchall_1
    move-exception v0

    .line 347
    move-object p1, v0

    .line 348
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 349
    .line 350
    .line 351
    throw p1

    .line 352
    nop

    .line 353
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
