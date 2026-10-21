.class public final Ln2/N;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln2/j;
.implements Lcom/bumptech/glide/load/data/d;


# instance fields
.field public final b:Lcom/bumptech/glide/load/engine/a;

.field public final e:Ln2/k;

.field public f:I

.field public j:I

.field public m:Ll2/m;

.field public n:Ljava/util/List;

.field public p:I

.field public volatile q:Lr2/U;

.field public r:Ljava/io/File;

.field public s:Ln2/O;


# direct methods
.method public constructor <init>(Ln2/k;Lcom/bumptech/glide/load/engine/a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Ln2/N;->j:I

    .line 6
    .line 7
    iput-object p1, p0, Ln2/N;->e:Ln2/k;

    .line 8
    .line 9
    iput-object p2, p0, Ln2/N;->b:Lcom/bumptech/glide/load/engine/a;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Ln2/N;->q:Lr2/U;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Lr2/U;->c:Lcom/bumptech/glide/load/data/e;

    .line 6
    .line 7
    invoke-interface {v0}, Lcom/bumptech/glide/load/data/e;->cancel()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public onDataReady(Ljava/lang/Object;)V
    .locals 6

    .line 1
    iget-object v0, p0, Ln2/N;->b:Lcom/bumptech/glide/load/engine/a;

    .line 2
    .line 3
    iget-object v1, p0, Ln2/N;->m:Ll2/m;

    .line 4
    .line 5
    iget-object v2, p0, Ln2/N;->q:Lr2/U;

    .line 6
    .line 7
    iget-object v3, v2, Lr2/U;->c:Lcom/bumptech/glide/load/data/e;

    .line 8
    .line 9
    sget-object v4, Lcom/bumptech/glide/load/DataSource;->j:Lcom/bumptech/glide/load/DataSource;

    .line 10
    .line 11
    iget-object v5, p0, Ln2/N;->s:Ln2/O;

    .line 12
    .line 13
    move-object v2, p1

    .line 14
    invoke-interface/range {v0 .. v5}, Ln2/i;->onDataFetcherReady(Ll2/m;Ljava/lang/Object;Lcom/bumptech/glide/load/data/e;Lcom/bumptech/glide/load/DataSource;Ll2/m;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public onLoadFailed(Ljava/lang/Exception;)V
    .locals 4

    .line 1
    iget-object v0, p0, Ln2/N;->b:Lcom/bumptech/glide/load/engine/a;

    .line 2
    .line 3
    iget-object v1, p0, Ln2/N;->s:Ln2/O;

    .line 4
    .line 5
    iget-object v2, p0, Ln2/N;->q:Lr2/U;

    .line 6
    .line 7
    iget-object v2, v2, Lr2/U;->c:Lcom/bumptech/glide/load/data/e;

    .line 8
    .line 9
    sget-object v3, Lcom/bumptech/glide/load/DataSource;->j:Lcom/bumptech/glide/load/DataSource;

    .line 10
    .line 11
    invoke-interface {v0, v1, p1, v2, v3}, Ln2/i;->onDataFetcherFailed(Ll2/m;Ljava/lang/Exception;Lcom/bumptech/glide/load/data/e;Lcom/bumptech/glide/load/DataSource;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public startNext()Z
    .locals 13

    .line 1
    const-string v0, "Failed to find any load path from "

    .line 2
    .line 3
    const-string v1, "ResourceCacheGenerator.startNext"

    .line 4
    .line 5
    invoke-static {v1}, LH2/i;->beginSection(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    iget-object v1, p0, Ln2/N;->e:Ln2/k;

    .line 9
    .line 10
    invoke-virtual {v1}, Ln2/k;->a()Ljava/util/ArrayList;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 15
    .line 16
    .line 17
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    const/4 v3, 0x0

    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    invoke-static {}, LH2/i;->endSection()V

    .line 22
    .line 23
    .line 24
    return v3

    .line 25
    :cond_0
    :try_start_1
    iget-object v2, p0, Ln2/N;->e:Ln2/k;

    .line 26
    .line 27
    iget-object v4, v2, Ln2/k;->c:Lcom/bumptech/glide/h;

    .line 28
    .line 29
    invoke-virtual {v4}, Lcom/bumptech/glide/h;->getRegistry()Lcom/bumptech/glide/j;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    iget-object v5, v2, Ln2/k;->d:Ljava/lang/Object;

    .line 34
    .line 35
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    iget-object v6, v2, Ln2/k;->g:Ljava/lang/Class;

    .line 40
    .line 41
    iget-object v2, v2, Ln2/k;->k:Ljava/lang/Class;

    .line 42
    .line 43
    invoke-virtual {v4, v5, v6, v2}, Lcom/bumptech/glide/j;->getRegisteredResourceClasses(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    if-eqz v4, :cond_2

    .line 52
    .line 53
    const-class v1, Ljava/io/File;

    .line 54
    .line 55
    iget-object v2, p0, Ln2/N;->e:Ln2/k;

    .line 56
    .line 57
    iget-object v2, v2, Ln2/k;->k:Ljava/lang/Class;

    .line 58
    .line 59
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    if-eqz v1, :cond_1

    .line 64
    .line 65
    invoke-static {}, LH2/i;->endSection()V

    .line 66
    .line 67
    .line 68
    return v3

    .line 69
    :cond_1
    :try_start_2
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 70
    .line 71
    new-instance v2, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    iget-object v0, p0, Ln2/N;->e:Ln2/k;

    .line 77
    .line 78
    iget-object v0, v0, Ln2/k;->d:Ljava/lang/Object;

    .line 79
    .line 80
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    const-string v0, " to "

    .line 88
    .line 89
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    iget-object v0, p0, Ln2/N;->e:Ln2/k;

    .line 93
    .line 94
    iget-object v0, v0, Ln2/k;->k:Ljava/lang/Class;

    .line 95
    .line 96
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    throw v1

    .line 107
    :catchall_0
    move-exception v0

    .line 108
    goto/16 :goto_6

    .line 109
    .line 110
    :cond_2
    :goto_0
    iget-object v0, p0, Ln2/N;->n:Ljava/util/List;

    .line 111
    .line 112
    const/4 v4, 0x1

    .line 113
    if-eqz v0, :cond_9

    .line 114
    .line 115
    iget v5, p0, Ln2/N;->p:I

    .line 116
    .line 117
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    if-ge v5, v0, :cond_3

    .line 122
    .line 123
    move v0, v4

    .line 124
    goto :goto_1

    .line 125
    :cond_3
    move v0, v3

    .line 126
    :goto_1
    if-nez v0, :cond_4

    .line 127
    .line 128
    goto/16 :goto_5

    .line 129
    .line 130
    :cond_4
    const/4 v0, 0x0

    .line 131
    iput-object v0, p0, Ln2/N;->q:Lr2/U;

    .line 132
    .line 133
    move v0, v3

    .line 134
    :cond_5
    :goto_2
    if-nez v0, :cond_8

    .line 135
    .line 136
    iget v1, p0, Ln2/N;->p:I

    .line 137
    .line 138
    iget-object v2, p0, Ln2/N;->n:Ljava/util/List;

    .line 139
    .line 140
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 141
    .line 142
    .line 143
    move-result v2

    .line 144
    if-ge v1, v2, :cond_6

    .line 145
    .line 146
    move v1, v4

    .line 147
    goto :goto_3

    .line 148
    :cond_6
    move v1, v3

    .line 149
    :goto_3
    if-eqz v1, :cond_8

    .line 150
    .line 151
    iget-object v1, p0, Ln2/N;->n:Ljava/util/List;

    .line 152
    .line 153
    iget v2, p0, Ln2/N;->p:I

    .line 154
    .line 155
    add-int/lit8 v5, v2, 0x1

    .line 156
    .line 157
    iput v5, p0, Ln2/N;->p:I

    .line 158
    .line 159
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    check-cast v1, Lr2/V;

    .line 164
    .line 165
    iget-object v2, p0, Ln2/N;->r:Ljava/io/File;

    .line 166
    .line 167
    iget-object v5, p0, Ln2/N;->e:Ln2/k;

    .line 168
    .line 169
    iget v6, v5, Ln2/k;->e:I

    .line 170
    .line 171
    iget v7, v5, Ln2/k;->f:I

    .line 172
    .line 173
    iget-object v5, v5, Ln2/k;->i:Ll2/q;

    .line 174
    .line 175
    invoke-interface {v1, v2, v6, v7, v5}, Lr2/V;->buildLoadData(Ljava/lang/Object;IILl2/q;)Lr2/U;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    iput-object v1, p0, Ln2/N;->q:Lr2/U;

    .line 180
    .line 181
    iget-object v1, p0, Ln2/N;->q:Lr2/U;

    .line 182
    .line 183
    if-eqz v1, :cond_5

    .line 184
    .line 185
    iget-object v1, p0, Ln2/N;->e:Ln2/k;

    .line 186
    .line 187
    iget-object v2, p0, Ln2/N;->q:Lr2/U;

    .line 188
    .line 189
    iget-object v2, v2, Lr2/U;->c:Lcom/bumptech/glide/load/data/e;

    .line 190
    .line 191
    invoke-interface {v2}, Lcom/bumptech/glide/load/data/e;->getDataClass()Ljava/lang/Class;

    .line 192
    .line 193
    .line 194
    move-result-object v2

    .line 195
    iget-object v5, v1, Ln2/k;->c:Lcom/bumptech/glide/h;

    .line 196
    .line 197
    invoke-virtual {v5}, Lcom/bumptech/glide/h;->getRegistry()Lcom/bumptech/glide/j;

    .line 198
    .line 199
    .line 200
    move-result-object v5

    .line 201
    iget-object v6, v1, Ln2/k;->g:Ljava/lang/Class;

    .line 202
    .line 203
    iget-object v1, v1, Ln2/k;->k:Ljava/lang/Class;

    .line 204
    .line 205
    invoke-virtual {v5, v2, v6, v1}, Lcom/bumptech/glide/j;->getLoadPath(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Ln2/J;

    .line 206
    .line 207
    .line 208
    move-result-object v1

    .line 209
    if-eqz v1, :cond_7

    .line 210
    .line 211
    move v1, v4

    .line 212
    goto :goto_4

    .line 213
    :cond_7
    move v1, v3

    .line 214
    :goto_4
    if-eqz v1, :cond_5

    .line 215
    .line 216
    iget-object v0, p0, Ln2/N;->q:Lr2/U;

    .line 217
    .line 218
    iget-object v0, v0, Lr2/U;->c:Lcom/bumptech/glide/load/data/e;

    .line 219
    .line 220
    iget-object v1, p0, Ln2/N;->e:Ln2/k;

    .line 221
    .line 222
    iget-object v1, v1, Ln2/k;->o:Lcom/bumptech/glide/Priority;

    .line 223
    .line 224
    invoke-interface {v0, v1, p0}, Lcom/bumptech/glide/load/data/e;->loadData(Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/load/data/d;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 225
    .line 226
    .line 227
    move v0, v4

    .line 228
    goto :goto_2

    .line 229
    :cond_8
    invoke-static {}, LH2/i;->endSection()V

    .line 230
    .line 231
    .line 232
    return v0

    .line 233
    :cond_9
    :goto_5
    :try_start_3
    iget v0, p0, Ln2/N;->j:I

    .line 234
    .line 235
    add-int/2addr v0, v4

    .line 236
    iput v0, p0, Ln2/N;->j:I

    .line 237
    .line 238
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 239
    .line 240
    .line 241
    move-result v5

    .line 242
    if-lt v0, v5, :cond_b

    .line 243
    .line 244
    iget v0, p0, Ln2/N;->f:I

    .line 245
    .line 246
    add-int/2addr v0, v4

    .line 247
    iput v0, p0, Ln2/N;->f:I

    .line 248
    .line 249
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 250
    .line 251
    .line 252
    move-result v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 253
    if-lt v0, v4, :cond_a

    .line 254
    .line 255
    invoke-static {}, LH2/i;->endSection()V

    .line 256
    .line 257
    .line 258
    return v3

    .line 259
    :cond_a
    :try_start_4
    iput v3, p0, Ln2/N;->j:I

    .line 260
    .line 261
    :cond_b
    iget v0, p0, Ln2/N;->f:I

    .line 262
    .line 263
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 264
    .line 265
    .line 266
    move-result-object v0

    .line 267
    move-object v6, v0

    .line 268
    check-cast v6, Ll2/m;

    .line 269
    .line 270
    iget v0, p0, Ln2/N;->j:I

    .line 271
    .line 272
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 273
    .line 274
    .line 275
    move-result-object v0

    .line 276
    move-object v11, v0

    .line 277
    check-cast v11, Ljava/lang/Class;

    .line 278
    .line 279
    iget-object v0, p0, Ln2/N;->e:Ln2/k;

    .line 280
    .line 281
    invoke-virtual {v0, v11}, Ln2/k;->c(Ljava/lang/Class;)Ll2/t;

    .line 282
    .line 283
    .line 284
    move-result-object v10

    .line 285
    new-instance v4, Ln2/O;

    .line 286
    .line 287
    iget-object v0, p0, Ln2/N;->e:Ln2/k;

    .line 288
    .line 289
    iget-object v0, v0, Ln2/k;->c:Lcom/bumptech/glide/h;

    .line 290
    .line 291
    invoke-virtual {v0}, Lcom/bumptech/glide/h;->getArrayPool()Lo2/b;

    .line 292
    .line 293
    .line 294
    move-result-object v5

    .line 295
    iget-object v0, p0, Ln2/N;->e:Ln2/k;

    .line 296
    .line 297
    iget-object v7, v0, Ln2/k;->n:Ll2/m;

    .line 298
    .line 299
    iget v8, v0, Ln2/k;->e:I

    .line 300
    .line 301
    iget v9, v0, Ln2/k;->f:I

    .line 302
    .line 303
    iget-object v12, v0, Ln2/k;->i:Ll2/q;

    .line 304
    .line 305
    invoke-direct/range {v4 .. v12}, Ln2/O;-><init>(Lo2/b;Ll2/m;Ll2/m;IILl2/t;Ljava/lang/Class;Ll2/q;)V

    .line 306
    .line 307
    .line 308
    iput-object v4, p0, Ln2/N;->s:Ln2/O;

    .line 309
    .line 310
    iget-object v0, v0, Ln2/k;->h:Ln2/z;

    .line 311
    .line 312
    invoke-virtual {v0}, Ln2/z;->getDiskCache()Lp2/c;

    .line 313
    .line 314
    .line 315
    move-result-object v0

    .line 316
    iget-object v4, p0, Ln2/N;->s:Ln2/O;

    .line 317
    .line 318
    invoke-interface {v0, v4}, Lp2/c;->get(Ll2/m;)Ljava/io/File;

    .line 319
    .line 320
    .line 321
    move-result-object v0

    .line 322
    iput-object v0, p0, Ln2/N;->r:Ljava/io/File;

    .line 323
    .line 324
    if-eqz v0, :cond_2

    .line 325
    .line 326
    iput-object v6, p0, Ln2/N;->m:Ll2/m;

    .line 327
    .line 328
    iget-object v4, p0, Ln2/N;->e:Ln2/k;

    .line 329
    .line 330
    iget-object v4, v4, Ln2/k;->c:Lcom/bumptech/glide/h;

    .line 331
    .line 332
    invoke-virtual {v4}, Lcom/bumptech/glide/h;->getRegistry()Lcom/bumptech/glide/j;

    .line 333
    .line 334
    .line 335
    move-result-object v4

    .line 336
    invoke-virtual {v4, v0}, Lcom/bumptech/glide/j;->getModelLoaders(Ljava/lang/Object;)Ljava/util/List;

    .line 337
    .line 338
    .line 339
    move-result-object v0

    .line 340
    iput-object v0, p0, Ln2/N;->n:Ljava/util/List;

    .line 341
    .line 342
    iput v3, p0, Ln2/N;->p:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 343
    .line 344
    goto/16 :goto_0

    .line 345
    .line 346
    :goto_6
    invoke-static {}, LH2/i;->endSection()V

    .line 347
    .line 348
    .line 349
    throw v0
.end method
