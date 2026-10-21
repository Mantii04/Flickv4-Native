.class public final Lcom/bumptech/glide/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# static fields
.field public static volatile q:Lcom/bumptech/glide/c;

.field public static volatile r:Z


# instance fields
.field public final b:Lo2/d;

.field public final e:Lp2/k;

.field public final f:Lcom/bumptech/glide/h;

.field public final j:Lo2/l;

.field public final m:Lcom/bumptech/glide/manager/q;

.field public final n:Lcom/bumptech/glide/manager/e;

.field public final p:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/load/engine/b;Lp2/k;Lo2/d;Lo2/l;Lcom/bumptech/glide/manager/q;Lcom/bumptech/glide/manager/e;ILcom/bumptech/glide/d;Lp/g;Ljava/util/List;Ljava/util/List;LA2/a;Lcom/bumptech/glide/i;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/bumptech/glide/c;->p:Ljava/util/ArrayList;

    .line 10
    .line 11
    iput-object p4, p0, Lcom/bumptech/glide/c;->b:Lo2/d;

    .line 12
    .line 13
    iput-object p5, p0, Lcom/bumptech/glide/c;->j:Lo2/l;

    .line 14
    .line 15
    iput-object p3, p0, Lcom/bumptech/glide/c;->e:Lp2/k;

    .line 16
    .line 17
    iput-object p6, p0, Lcom/bumptech/glide/c;->m:Lcom/bumptech/glide/manager/q;

    .line 18
    .line 19
    iput-object p7, p0, Lcom/bumptech/glide/c;->n:Lcom/bumptech/glide/manager/e;

    .line 20
    .line 21
    new-instance p4, Lcom/bumptech/glide/k;

    .line 22
    .line 23
    invoke-direct {p4, p0, p12, p13}, Lcom/bumptech/glide/k;-><init>(Lcom/bumptech/glide/c;Ljava/util/List;LA2/a;)V

    .line 24
    .line 25
    .line 26
    move-object p3, p5

    .line 27
    new-instance p5, LD2/i;

    .line 28
    .line 29
    invoke-direct {p5}, LD2/i;-><init>()V

    .line 30
    .line 31
    .line 32
    move-object p6, p9

    .line 33
    move-object p9, p2

    .line 34
    move-object p2, p1

    .line 35
    new-instance p1, Lcom/bumptech/glide/h;

    .line 36
    .line 37
    move-object p7, p11

    .line 38
    move p11, p8

    .line 39
    move-object p8, p7

    .line 40
    move-object p7, p10

    .line 41
    move-object p10, p14

    .line 42
    invoke-direct/range {p1 .. p11}, Lcom/bumptech/glide/h;-><init>(Landroid/content/Context;Lo2/b;LG2/k;LD2/i;Lcom/bumptech/glide/b;Ljava/util/Map;Ljava/util/List;Lcom/bumptech/glide/load/engine/b;Lcom/bumptech/glide/i;I)V

    .line 43
    .line 44
    .line 45
    iput-object p1, p0, Lcom/bumptech/glide/c;->f:Lcom/bumptech/glide/h;

    .line 46
    .line 47
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/bumptech/glide/GeneratedAppGlideModule;)V
    .locals 16

    .line 1
    move-object/from16 v13, p1

    .line 2
    .line 3
    new-instance v0, Lcom/bumptech/glide/g;

    .line 4
    .line 5
    invoke-direct {v0}, Lcom/bumptech/glide/g;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 13
    .line 14
    if-eqz v13, :cond_1

    .line 15
    .line 16
    invoke-virtual {v13}, LA2/a;->isManifestParsingEnabled()Z

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-eqz v3, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move-object v12, v2

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    :goto_0
    new-instance v3, LA2/c;

    .line 26
    .line 27
    invoke-direct {v3, v1}, LA2/c;-><init>(Landroid/content/Context;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3}, LA2/c;->parse()Ljava/util/List;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    move-object v12, v3

    .line 35
    :goto_1
    if-eqz v13, :cond_3

    .line 36
    .line 37
    new-instance v3, Ljava/util/HashSet;

    .line 38
    .line 39
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3}, Ljava/util/HashSet;->isEmpty()Z

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-nez v3, :cond_3

    .line 47
    .line 48
    new-instance v3, Ljava/util/HashSet;

    .line 49
    .line 50
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 51
    .line 52
    .line 53
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    if-nez v4, :cond_2

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_2
    invoke-static {v3}, Lb/c;->g(Ljava/util/Iterator;)Ljava/lang/ClassCastException;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    throw v0

    .line 69
    :cond_3
    :goto_2
    const-string v3, "Glide"

    .line 70
    .line 71
    const/4 v4, 0x3

    .line 72
    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    if-eqz v3, :cond_5

    .line 77
    .line 78
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 83
    .line 84
    .line 85
    move-result v4

    .line 86
    if-nez v4, :cond_4

    .line 87
    .line 88
    goto :goto_3

    .line 89
    :cond_4
    invoke-static {v3}, Lb/c;->g(Ljava/util/Iterator;)Ljava/lang/ClassCastException;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    throw v0

    .line 94
    :cond_5
    :goto_3
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 99
    .line 100
    .line 101
    move-result v4

    .line 102
    if-nez v4, :cond_13

    .line 103
    .line 104
    if-eqz v13, :cond_6

    .line 105
    .line 106
    invoke-virtual {v13, v1, v0}, LA2/a;->applyOptions(Landroid/content/Context;Lcom/bumptech/glide/g;)V

    .line 107
    .line 108
    .line 109
    :cond_6
    iget-object v3, v0, Lcom/bumptech/glide/g;->g:Lq2/h;

    .line 110
    .line 111
    if-nez v3, :cond_7

    .line 112
    .line 113
    invoke-static {}, Lq2/h;->newSourceExecutor()Lq2/h;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    iput-object v3, v0, Lcom/bumptech/glide/g;->g:Lq2/h;

    .line 118
    .line 119
    :cond_7
    iget-object v3, v0, Lcom/bumptech/glide/g;->h:Lq2/h;

    .line 120
    .line 121
    if-nez v3, :cond_8

    .line 122
    .line 123
    invoke-static {}, Lq2/h;->newDiskCacheExecutor()Lq2/h;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    iput-object v3, v0, Lcom/bumptech/glide/g;->h:Lq2/h;

    .line 128
    .line 129
    :cond_8
    iget-object v3, v0, Lcom/bumptech/glide/g;->n:Lq2/h;

    .line 130
    .line 131
    if-nez v3, :cond_9

    .line 132
    .line 133
    invoke-static {}, Lq2/h;->newAnimationExecutor()Lq2/h;

    .line 134
    .line 135
    .line 136
    move-result-object v3

    .line 137
    iput-object v3, v0, Lcom/bumptech/glide/g;->n:Lq2/h;

    .line 138
    .line 139
    :cond_9
    iget-object v3, v0, Lcom/bumptech/glide/g;->j:Lp2/q;

    .line 140
    .line 141
    if-nez v3, :cond_a

    .line 142
    .line 143
    new-instance v3, Lp2/n;

    .line 144
    .line 145
    invoke-direct {v3, v1}, Lp2/n;-><init>(Landroid/content/Context;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v3}, Lp2/n;->build()Lp2/q;

    .line 149
    .line 150
    .line 151
    move-result-object v3

    .line 152
    iput-object v3, v0, Lcom/bumptech/glide/g;->j:Lp2/q;

    .line 153
    .line 154
    :cond_a
    iget-object v3, v0, Lcom/bumptech/glide/g;->k:Lcom/bumptech/glide/manager/e;

    .line 155
    .line 156
    if-nez v3, :cond_b

    .line 157
    .line 158
    new-instance v3, Lcom/bumptech/glide/manager/e;

    .line 159
    .line 160
    invoke-direct {v3}, Lcom/bumptech/glide/manager/e;-><init>()V

    .line 161
    .line 162
    .line 163
    iput-object v3, v0, Lcom/bumptech/glide/g;->k:Lcom/bumptech/glide/manager/e;

    .line 164
    .line 165
    :cond_b
    iget-object v3, v0, Lcom/bumptech/glide/g;->d:Lo2/d;

    .line 166
    .line 167
    if-nez v3, :cond_d

    .line 168
    .line 169
    iget-object v3, v0, Lcom/bumptech/glide/g;->j:Lp2/q;

    .line 170
    .line 171
    invoke-virtual {v3}, Lp2/q;->getBitmapPoolSize()I

    .line 172
    .line 173
    .line 174
    move-result v3

    .line 175
    if-lez v3, :cond_c

    .line 176
    .line 177
    new-instance v4, Lo2/o;

    .line 178
    .line 179
    int-to-long v5, v3

    .line 180
    invoke-direct {v4, v5, v6}, Lo2/o;-><init>(J)V

    .line 181
    .line 182
    .line 183
    iput-object v4, v0, Lcom/bumptech/glide/g;->d:Lo2/d;

    .line 184
    .line 185
    goto :goto_4

    .line 186
    :cond_c
    new-instance v3, Lo2/e;

    .line 187
    .line 188
    invoke-direct {v3}, Lo2/e;-><init>()V

    .line 189
    .line 190
    .line 191
    iput-object v3, v0, Lcom/bumptech/glide/g;->d:Lo2/d;

    .line 192
    .line 193
    :cond_d
    :goto_4
    iget-object v3, v0, Lcom/bumptech/glide/g;->e:Lo2/l;

    .line 194
    .line 195
    if-nez v3, :cond_e

    .line 196
    .line 197
    new-instance v3, Lo2/l;

    .line 198
    .line 199
    iget-object v4, v0, Lcom/bumptech/glide/g;->j:Lp2/q;

    .line 200
    .line 201
    invoke-virtual {v4}, Lp2/q;->getArrayPoolSizeInBytes()I

    .line 202
    .line 203
    .line 204
    move-result v4

    .line 205
    invoke-direct {v3, v4}, Lo2/l;-><init>(I)V

    .line 206
    .line 207
    .line 208
    iput-object v3, v0, Lcom/bumptech/glide/g;->e:Lo2/l;

    .line 209
    .line 210
    :cond_e
    iget-object v3, v0, Lcom/bumptech/glide/g;->f:Lp2/k;

    .line 211
    .line 212
    if-nez v3, :cond_f

    .line 213
    .line 214
    new-instance v3, Lp2/k;

    .line 215
    .line 216
    iget-object v4, v0, Lcom/bumptech/glide/g;->j:Lp2/q;

    .line 217
    .line 218
    invoke-virtual {v4}, Lp2/q;->getMemoryCacheSize()I

    .line 219
    .line 220
    .line 221
    move-result v4

    .line 222
    int-to-long v4, v4

    .line 223
    invoke-direct {v3, v4, v5}, Lp2/k;-><init>(J)V

    .line 224
    .line 225
    .line 226
    iput-object v3, v0, Lcom/bumptech/glide/g;->f:Lp2/k;

    .line 227
    .line 228
    :cond_f
    iget-object v3, v0, Lcom/bumptech/glide/g;->i:Lp2/j;

    .line 229
    .line 230
    if-nez v3, :cond_10

    .line 231
    .line 232
    new-instance v3, Lp2/j;

    .line 233
    .line 234
    invoke-direct {v3, v1}, Lp2/j;-><init>(Landroid/content/Context;)V

    .line 235
    .line 236
    .line 237
    iput-object v3, v0, Lcom/bumptech/glide/g;->i:Lp2/j;

    .line 238
    .line 239
    :cond_10
    iget-object v3, v0, Lcom/bumptech/glide/g;->c:Lcom/bumptech/glide/load/engine/b;

    .line 240
    .line 241
    if-nez v3, :cond_11

    .line 242
    .line 243
    new-instance v4, Lcom/bumptech/glide/load/engine/b;

    .line 244
    .line 245
    iget-object v5, v0, Lcom/bumptech/glide/g;->f:Lp2/k;

    .line 246
    .line 247
    iget-object v6, v0, Lcom/bumptech/glide/g;->i:Lp2/j;

    .line 248
    .line 249
    iget-object v7, v0, Lcom/bumptech/glide/g;->h:Lq2/h;

    .line 250
    .line 251
    iget-object v8, v0, Lcom/bumptech/glide/g;->g:Lq2/h;

    .line 252
    .line 253
    invoke-static {}, Lq2/h;->newUnlimitedSourceExecutor()Lq2/h;

    .line 254
    .line 255
    .line 256
    move-result-object v9

    .line 257
    iget-object v10, v0, Lcom/bumptech/glide/g;->n:Lq2/h;

    .line 258
    .line 259
    const/4 v11, 0x0

    .line 260
    invoke-direct/range {v4 .. v11}, Lcom/bumptech/glide/load/engine/b;-><init>(Lp2/m;Lp2/a;Lq2/h;Lq2/h;Lq2/h;Lq2/h;Z)V

    .line 261
    .line 262
    .line 263
    iput-object v4, v0, Lcom/bumptech/glide/g;->c:Lcom/bumptech/glide/load/engine/b;

    .line 264
    .line 265
    :cond_11
    iget-object v3, v0, Lcom/bumptech/glide/g;->o:Ljava/util/List;

    .line 266
    .line 267
    if-nez v3, :cond_12

    .line 268
    .line 269
    iput-object v2, v0, Lcom/bumptech/glide/g;->o:Ljava/util/List;

    .line 270
    .line 271
    goto :goto_5

    .line 272
    :cond_12
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 273
    .line 274
    .line 275
    move-result-object v2

    .line 276
    iput-object v2, v0, Lcom/bumptech/glide/g;->o:Ljava/util/List;

    .line 277
    .line 278
    :goto_5
    iget-object v2, v0, Lcom/bumptech/glide/g;->b:LL0/f;

    .line 279
    .line 280
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 281
    .line 282
    .line 283
    new-instance v14, Lcom/bumptech/glide/i;

    .line 284
    .line 285
    invoke-direct {v14, v2}, Lcom/bumptech/glide/i;-><init>(LL0/f;)V

    .line 286
    .line 287
    .line 288
    new-instance v6, Lcom/bumptech/glide/manager/q;

    .line 289
    .line 290
    const/4 v2, 0x0

    .line 291
    invoke-direct {v6, v2}, Lcom/bumptech/glide/manager/q;-><init>(Lcom/bumptech/glide/manager/p;)V

    .line 292
    .line 293
    .line 294
    new-instance v2, Lcom/bumptech/glide/c;

    .line 295
    .line 296
    move-object v3, v2

    .line 297
    iget-object v2, v0, Lcom/bumptech/glide/g;->c:Lcom/bumptech/glide/load/engine/b;

    .line 298
    .line 299
    move-object v4, v3

    .line 300
    iget-object v3, v0, Lcom/bumptech/glide/g;->f:Lp2/k;

    .line 301
    .line 302
    move-object v5, v4

    .line 303
    iget-object v4, v0, Lcom/bumptech/glide/g;->d:Lo2/d;

    .line 304
    .line 305
    move-object v7, v5

    .line 306
    iget-object v5, v0, Lcom/bumptech/glide/g;->e:Lo2/l;

    .line 307
    .line 308
    move-object v8, v7

    .line 309
    iget-object v7, v0, Lcom/bumptech/glide/g;->k:Lcom/bumptech/glide/manager/e;

    .line 310
    .line 311
    iget-object v9, v0, Lcom/bumptech/glide/g;->m:Lcom/bumptech/glide/d;

    .line 312
    .line 313
    iget-object v10, v0, Lcom/bumptech/glide/g;->a:Lp/g;

    .line 314
    .line 315
    iget-object v11, v0, Lcom/bumptech/glide/g;->o:Ljava/util/List;

    .line 316
    .line 317
    iget v0, v0, Lcom/bumptech/glide/g;->l:I

    .line 318
    .line 319
    move-object v15, v8

    .line 320
    move v8, v0

    .line 321
    move-object v0, v15

    .line 322
    invoke-direct/range {v0 .. v14}, Lcom/bumptech/glide/c;-><init>(Landroid/content/Context;Lcom/bumptech/glide/load/engine/b;Lp2/k;Lo2/d;Lo2/l;Lcom/bumptech/glide/manager/q;Lcom/bumptech/glide/manager/e;ILcom/bumptech/glide/d;Lp/g;Ljava/util/List;Ljava/util/List;LA2/a;Lcom/bumptech/glide/i;)V

    .line 323
    .line 324
    .line 325
    invoke-virtual {v1, v0}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 326
    .line 327
    .line 328
    sput-object v0, Lcom/bumptech/glide/c;->q:Lcom/bumptech/glide/c;

    .line 329
    .line 330
    return-void

    .line 331
    :cond_13
    invoke-static {v3}, Lb/c;->g(Ljava/util/Iterator;)Ljava/lang/ClassCastException;

    .line 332
    .line 333
    .line 334
    move-result-object v0

    .line 335
    throw v0
.end method

.method public static get(Landroid/content/Context;)Lcom/bumptech/glide/c;
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    sget-object v2, Lcom/bumptech/glide/c;->q:Lcom/bumptech/glide/c;

    .line 4
    .line 5
    if-nez v2, :cond_3

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    :try_start_0
    const-string v3, "com.bumptech.glide.GeneratedAppGlideModuleImpl"

    .line 12
    .line 13
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    new-array v4, v1, [Ljava/lang/Class;

    .line 18
    .line 19
    const-class v5, Landroid/content/Context;

    .line 20
    .line 21
    aput-object v5, v4, v0

    .line 22
    .line 23
    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    new-array v4, v1, [Ljava/lang/Object;

    .line 32
    .line 33
    aput-object v2, v4, v0

    .line 34
    .line 35
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    check-cast v2, Lcom/bumptech/glide/GeneratedAppGlideModule;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catch_0
    move-exception p0

    .line 43
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 44
    .line 45
    const-string v1, "GeneratedAppGlideModuleImpl is implemented incorrectly. If you\'ve manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation."

    .line 46
    .line 47
    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 48
    .line 49
    .line 50
    throw v0

    .line 51
    :catch_1
    move-exception p0

    .line 52
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 53
    .line 54
    const-string v1, "GeneratedAppGlideModuleImpl is implemented incorrectly. If you\'ve manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation."

    .line 55
    .line 56
    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 57
    .line 58
    .line 59
    throw v0

    .line 60
    :catch_2
    move-exception p0

    .line 61
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 62
    .line 63
    const-string v1, "GeneratedAppGlideModuleImpl is implemented incorrectly. If you\'ve manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation."

    .line 64
    .line 65
    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 66
    .line 67
    .line 68
    throw v0

    .line 69
    :catch_3
    move-exception p0

    .line 70
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 71
    .line 72
    const-string v1, "GeneratedAppGlideModuleImpl is implemented incorrectly. If you\'ve manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation."

    .line 73
    .line 74
    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 75
    .line 76
    .line 77
    throw v0

    .line 78
    :catch_4
    const-string v2, "Glide"

    .line 79
    .line 80
    const/4 v3, 0x5

    .line 81
    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    if-eqz v3, :cond_0

    .line 86
    .line 87
    const-string v3, "Failed to find GeneratedAppGlideModule. You should include an annotationProcessor compile dependency on com.github.bumptech.glide:compiler in your application and a @GlideModule annotated AppGlideModule implementation or LibraryGlideModules will be silently ignored"

    .line 88
    .line 89
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    .line 91
    .line 92
    :cond_0
    const/4 v2, 0x0

    .line 93
    :goto_0
    const-class v3, Lcom/bumptech/glide/c;

    .line 94
    .line 95
    monitor-enter v3

    .line 96
    :try_start_1
    sget-object v4, Lcom/bumptech/glide/c;->q:Lcom/bumptech/glide/c;

    .line 97
    .line 98
    if-nez v4, :cond_2

    .line 99
    .line 100
    sget-boolean v4, Lcom/bumptech/glide/c;->r:Z

    .line 101
    .line 102
    if-nez v4, :cond_1

    .line 103
    .line 104
    sput-boolean v1, Lcom/bumptech/glide/c;->r:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 105
    .line 106
    :try_start_2
    invoke-static {p0, v2}, Lcom/bumptech/glide/c;->a(Landroid/content/Context;Lcom/bumptech/glide/GeneratedAppGlideModule;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 107
    .line 108
    .line 109
    :try_start_3
    sput-boolean v0, Lcom/bumptech/glide/c;->r:Z

    .line 110
    .line 111
    goto :goto_1

    .line 112
    :catchall_0
    move-exception p0

    .line 113
    sput-boolean v0, Lcom/bumptech/glide/c;->r:Z

    .line 114
    .line 115
    throw p0

    .line 116
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 117
    .line 118
    const-string v0, "Glide has been called recursively, this is probably an internal library error!"

    .line 119
    .line 120
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    throw p0

    .line 124
    :cond_2
    :goto_1
    monitor-exit v3

    .line 125
    goto :goto_2

    .line 126
    :catchall_1
    move-exception p0

    .line 127
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 128
    throw p0

    .line 129
    :cond_3
    :goto_2
    sget-object p0, Lcom/bumptech/glide/c;->q:Lcom/bumptech/glide/c;

    .line 130
    .line 131
    return-object p0
.end method

.method public static with(Landroid/content/Context;)Lcom/bumptech/glide/q;
    .locals 1

    .line 1
    const-string v0, "You cannot start a load on a not yet attached View or a Fragment where getActivity() returns null (which usually occurs when getActivity() is called before the Fragment is attached or after the Fragment is destroyed)."

    .line 2
    .line 3
    invoke-static {p0, v0}, LG2/r;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Lcom/bumptech/glide/c;->get(Landroid/content/Context;)Lcom/bumptech/glide/c;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lcom/bumptech/glide/c;->getRequestManagerRetriever()Lcom/bumptech/glide/manager/q;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0, p0}, Lcom/bumptech/glide/manager/q;->get(Landroid/content/Context;)Lcom/bumptech/glide/q;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method


# virtual methods
.method public final b(Lcom/bumptech/glide/q;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/c;->p:Ljava/util/ArrayList;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/c;->p:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    iget-object v1, p0, Lcom/bumptech/glide/c;->p:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    monitor-exit v0

    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 22
    .line 23
    const-string v1, "Cannot unregister not yet registered manager"

    .line 24
    .line 25
    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw p1

    .line 29
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    throw p1
.end method

.method public clearMemory()V
    .locals 1

    .line 1
    invoke-static {}, LG2/t;->assertMainThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/bumptech/glide/c;->e:Lp2/k;

    .line 5
    .line 6
    invoke-virtual {v0}, LG2/o;->clearMemory()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/bumptech/glide/c;->b:Lo2/d;

    .line 10
    .line 11
    invoke-interface {v0}, Lo2/d;->clearMemory()V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/bumptech/glide/c;->j:Lo2/l;

    .line 15
    .line 16
    invoke-virtual {v0}, Lo2/l;->clearMemory()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public getArrayPool()Lo2/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/c;->j:Lo2/l;

    .line 2
    .line 3
    return-object v0
.end method

.method public getBitmapPool()Lo2/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/c;->b:Lo2/d;

    .line 2
    .line 3
    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/c;->f:Lcom/bumptech/glide/h;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getRegistry()Lcom/bumptech/glide/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/c;->f:Lcom/bumptech/glide/h;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bumptech/glide/h;->getRegistry()Lcom/bumptech/glide/j;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getRequestManagerRetriever()Lcom/bumptech/glide/manager/q;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/c;->m:Lcom/bumptech/glide/manager/q;

    .line 2
    .line 3
    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public onLowMemory()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/bumptech/glide/c;->clearMemory()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/c;->trimMemory(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public trimMemory(I)V
    .locals 3

    .line 1
    invoke-static {}, LG2/t;->assertMainThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/bumptech/glide/c;->p:Ljava/util/ArrayList;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/c;->p:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Lcom/bumptech/glide/q;

    .line 24
    .line 25
    invoke-virtual {v2, p1}, Lcom/bumptech/glide/q;->onTrimMemory(I)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception p1

    .line 30
    goto :goto_1

    .line 31
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    iget-object v0, p0, Lcom/bumptech/glide/c;->e:Lp2/k;

    .line 33
    .line 34
    invoke-virtual {v0, p1}, Lp2/k;->trimMemory(I)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/bumptech/glide/c;->b:Lo2/d;

    .line 38
    .line 39
    invoke-interface {v0, p1}, Lo2/d;->trimMemory(I)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/bumptech/glide/c;->j:Lo2/l;

    .line 43
    .line 44
    invoke-virtual {v0, p1}, Lo2/l;->trimMemory(I)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    throw p1
.end method
