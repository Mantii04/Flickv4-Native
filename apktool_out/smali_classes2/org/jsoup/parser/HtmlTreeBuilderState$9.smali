.class final enum Lorg/jsoup/parser/HtmlTreeBuilderState$9;
.super Lorg/jsoup/parser/HtmlTreeBuilderState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/parser/HtmlTreeBuilderState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const-string v0, "InTable"

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final e(Lk6/o;Lorg/jsoup/parser/a;)Z
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    iget-object v3, v1, Lk6/o;->a:Lorg/jsoup/parser/Token$TokenType;

    .line 8
    .line 9
    sget-object v4, Lorg/jsoup/parser/Token$TokenType;->m:Lorg/jsoup/parser/Token$TokenType;

    .line 10
    .line 11
    if-ne v3, v4, :cond_0

    .line 12
    .line 13
    new-instance v3, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v3, v2, Lorg/jsoup/parser/a;->q:Ljava/util/ArrayList;

    .line 19
    .line 20
    iget-object v3, v2, Lorg/jsoup/parser/a;->k:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 21
    .line 22
    iput-object v3, v2, Lorg/jsoup/parser/a;->l:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 23
    .line 24
    sget-object v3, Lorg/jsoup/parser/HtmlTreeBuilderState;->s:Lorg/jsoup/parser/HtmlTreeBuilderState$10;

    .line 25
    .line 26
    iput-object v3, v2, Lorg/jsoup/parser/a;->k:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 27
    .line 28
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/a;->process(Lk6/o;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    return v1

    .line 33
    :cond_0
    invoke-virtual {v1}, Lk6/o;->a()Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    const/4 v4, 0x1

    .line 38
    if-eqz v3, :cond_1

    .line 39
    .line 40
    check-cast v1, Lk6/i;

    .line 41
    .line 42
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/a;->p(Lk6/i;)V

    .line 43
    .line 44
    .line 45
    return v4

    .line 46
    :cond_1
    invoke-virtual {v1}, Lk6/o;->b()Z

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    const/4 v5, 0x0

    .line 51
    if-eqz v3, :cond_2

    .line 52
    .line 53
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/a;->e(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 54
    .line 55
    .line 56
    return v5

    .line 57
    :cond_2
    invoke-virtual {v1}, Lk6/o;->e()Z

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    const-string v6, "table"

    .line 62
    .line 63
    if-eqz v3, :cond_e

    .line 64
    .line 65
    move-object v3, v1

    .line 66
    check-cast v3, Lk6/m;

    .line 67
    .line 68
    iget-object v7, v3, Lk6/n;->c:Ljava/lang/String;

    .line 69
    .line 70
    const-string v8, "caption"

    .line 71
    .line 72
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v8

    .line 76
    if-eqz v8, :cond_3

    .line 77
    .line 78
    filled-new-array {v6}, [Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/a;->d([Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    iget-object v1, v2, Lorg/jsoup/parser/a;->p:Ljava/util/ArrayList;

    .line 86
    .line 87
    const/4 v5, 0x0

    .line 88
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/a;->n(Lk6/m;)Lorg/jsoup/nodes/b;

    .line 92
    .line 93
    .line 94
    sget-object v1, Lorg/jsoup/parser/HtmlTreeBuilderState;->t:Lorg/jsoup/parser/HtmlTreeBuilderState$11;

    .line 95
    .line 96
    iput-object v1, v2, Lorg/jsoup/parser/a;->k:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 97
    .line 98
    return v4

    .line 99
    :cond_3
    const-string v8, "colgroup"

    .line 100
    .line 101
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v9

    .line 105
    if-eqz v9, :cond_4

    .line 106
    .line 107
    filled-new-array {v6}, [Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/a;->d([Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/a;->n(Lk6/m;)Lorg/jsoup/nodes/b;

    .line 115
    .line 116
    .line 117
    sget-object v1, Lorg/jsoup/parser/HtmlTreeBuilderState;->u:Lorg/jsoup/parser/HtmlTreeBuilderState$12;

    .line 118
    .line 119
    iput-object v1, v2, Lorg/jsoup/parser/a;->k:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 120
    .line 121
    return v4

    .line 122
    :cond_4
    const-string v9, "col"

    .line 123
    .line 124
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result v9

    .line 128
    if-eqz v9, :cond_5

    .line 129
    .line 130
    invoke-virtual {v2, v8}, Lorg/jsoup/parser/c;->processStartTag(Ljava/lang/String;)Z

    .line 131
    .line 132
    .line 133
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/a;->process(Lk6/o;)Z

    .line 134
    .line 135
    .line 136
    move-result v1

    .line 137
    return v1

    .line 138
    :cond_5
    const-string v8, "tbody"

    .line 139
    .line 140
    const-string v9, "tfoot"

    .line 141
    .line 142
    const-string v10, "thead"

    .line 143
    .line 144
    filled-new-array {v8, v9, v10}, [Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v9

    .line 148
    invoke-static {v7, v9}, Lh6/j;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 149
    .line 150
    .line 151
    move-result v9

    .line 152
    if-eqz v9, :cond_6

    .line 153
    .line 154
    filled-new-array {v6}, [Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/a;->d([Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/a;->n(Lk6/m;)Lorg/jsoup/nodes/b;

    .line 162
    .line 163
    .line 164
    sget-object v1, Lorg/jsoup/parser/HtmlTreeBuilderState;->v:Lorg/jsoup/parser/HtmlTreeBuilderState$13;

    .line 165
    .line 166
    iput-object v1, v2, Lorg/jsoup/parser/a;->k:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 167
    .line 168
    return v4

    .line 169
    :cond_6
    const-string v9, "tr"

    .line 170
    .line 171
    const-string v10, "td"

    .line 172
    .line 173
    const-string v11, "th"

    .line 174
    .line 175
    filled-new-array {v10, v11, v9}, [Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v9

    .line 179
    invoke-static {v7, v9}, Lh6/j;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 180
    .line 181
    .line 182
    move-result v9

    .line 183
    if-eqz v9, :cond_7

    .line 184
    .line 185
    invoke-virtual {v2, v8}, Lorg/jsoup/parser/c;->processStartTag(Ljava/lang/String;)Z

    .line 186
    .line 187
    .line 188
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/a;->process(Lk6/o;)Z

    .line 189
    .line 190
    .line 191
    move-result v1

    .line 192
    return v1

    .line 193
    :cond_7
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    move-result v8

    .line 197
    if-eqz v8, :cond_8

    .line 198
    .line 199
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/a;->e(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v2, v6}, Lorg/jsoup/parser/c;->processEndTag(Ljava/lang/String;)Z

    .line 203
    .line 204
    .line 205
    move-result v3

    .line 206
    if-eqz v3, :cond_13

    .line 207
    .line 208
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/a;->process(Lk6/o;)Z

    .line 209
    .line 210
    .line 211
    move-result v1

    .line 212
    return v1

    .line 213
    :cond_8
    const-string v6, "style"

    .line 214
    .line 215
    const-string v8, "script"

    .line 216
    .line 217
    filled-new-array {v6, v8}, [Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v6

    .line 221
    invoke-static {v7, v6}, Lh6/j;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 222
    .line 223
    .line 224
    move-result v6

    .line 225
    if-eqz v6, :cond_9

    .line 226
    .line 227
    sget-object v3, Lorg/jsoup/parser/HtmlTreeBuilderState;->j:Lorg/jsoup/parser/HtmlTreeBuilderState$4;

    .line 228
    .line 229
    iput-object v1, v2, Lorg/jsoup/parser/c;->f:Lk6/o;

    .line 230
    .line 231
    invoke-virtual {v3, v1, v2}, Lorg/jsoup/parser/HtmlTreeBuilderState$4;->e(Lk6/o;Lorg/jsoup/parser/a;)Z

    .line 232
    .line 233
    .line 234
    move-result v1

    .line 235
    return v1

    .line 236
    :cond_9
    const-string v6, "input"

    .line 237
    .line 238
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 239
    .line 240
    .line 241
    move-result v6

    .line 242
    if-eqz v6, :cond_b

    .line 243
    .line 244
    iget-object v5, v3, Lk6/n;->j:Lj6/c;

    .line 245
    .line 246
    const-string v6, "type"

    .line 247
    .line 248
    invoke-virtual {v5, v6}, Lj6/c;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v5

    .line 252
    const-string v6, "hidden"

    .line 253
    .line 254
    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 255
    .line 256
    .line 257
    move-result v5

    .line 258
    if-nez v5, :cond_a

    .line 259
    .line 260
    invoke-virtual/range {p0 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$9;->f(Lk6/o;Lorg/jsoup/parser/a;)Z

    .line 261
    .line 262
    .line 263
    move-result v1

    .line 264
    return v1

    .line 265
    :cond_a
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/a;->q(Lk6/m;)Lorg/jsoup/nodes/b;

    .line 266
    .line 267
    .line 268
    return v4

    .line 269
    :cond_b
    const-string v6, "form"

    .line 270
    .line 271
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 272
    .line 273
    .line 274
    move-result v6

    .line 275
    if-eqz v6, :cond_d

    .line 276
    .line 277
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/a;->e(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 278
    .line 279
    .line 280
    iget-object v1, v2, Lorg/jsoup/parser/a;->o:Lj6/l;

    .line 281
    .line 282
    if-eqz v1, :cond_c

    .line 283
    .line 284
    return v5

    .line 285
    :cond_c
    invoke-virtual {v2, v3, v5}, Lorg/jsoup/parser/a;->r(Lk6/m;Z)V

    .line 286
    .line 287
    .line 288
    return v4

    .line 289
    :cond_d
    invoke-virtual/range {p0 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$9;->f(Lk6/o;Lorg/jsoup/parser/a;)Z

    .line 290
    .line 291
    .line 292
    move-result v1

    .line 293
    return v1

    .line 294
    :cond_e
    invoke-virtual {v1}, Lk6/o;->d()Z

    .line 295
    .line 296
    .line 297
    move-result v3

    .line 298
    if-eqz v3, :cond_12

    .line 299
    .line 300
    move-object v3, v1

    .line 301
    check-cast v3, Lk6/l;

    .line 302
    .line 303
    iget-object v3, v3, Lk6/n;->c:Ljava/lang/String;

    .line 304
    .line 305
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 306
    .line 307
    .line 308
    move-result v7

    .line 309
    if-eqz v7, :cond_10

    .line 310
    .line 311
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/a;->m(Ljava/lang/String;)Z

    .line 312
    .line 313
    .line 314
    move-result v1

    .line 315
    if-nez v1, :cond_f

    .line 316
    .line 317
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/a;->e(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 318
    .line 319
    .line 320
    return v5

    .line 321
    :cond_f
    invoke-virtual {v2, v6}, Lorg/jsoup/parser/a;->w(Ljava/lang/String;)V

    .line 322
    .line 323
    .line 324
    invoke-virtual {v2}, Lorg/jsoup/parser/a;->C()V

    .line 325
    .line 326
    .line 327
    return v4

    .line 328
    :cond_10
    const-string v14, "tfoot"

    .line 329
    .line 330
    const-string v15, "th"

    .line 331
    .line 332
    const-string v7, "body"

    .line 333
    .line 334
    const-string v8, "caption"

    .line 335
    .line 336
    const-string v9, "col"

    .line 337
    .line 338
    const-string v10, "colgroup"

    .line 339
    .line 340
    const-string v11, "html"

    .line 341
    .line 342
    const-string v12, "tbody"

    .line 343
    .line 344
    const-string v13, "td"

    .line 345
    .line 346
    const-string v16, "thead"

    .line 347
    .line 348
    const-string v17, "tr"

    .line 349
    .line 350
    filled-new-array/range {v7 .. v17}, [Ljava/lang/String;

    .line 351
    .line 352
    .line 353
    move-result-object v4

    .line 354
    invoke-static {v3, v4}, Lh6/j;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 355
    .line 356
    .line 357
    move-result v3

    .line 358
    if-eqz v3, :cond_11

    .line 359
    .line 360
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/a;->e(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 361
    .line 362
    .line 363
    return v5

    .line 364
    :cond_11
    invoke-virtual/range {p0 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$9;->f(Lk6/o;Lorg/jsoup/parser/a;)Z

    .line 365
    .line 366
    .line 367
    move-result v1

    .line 368
    return v1

    .line 369
    :cond_12
    invoke-virtual {v1}, Lk6/o;->c()Z

    .line 370
    .line 371
    .line 372
    move-result v3

    .line 373
    if-eqz v3, :cond_14

    .line 374
    .line 375
    const-string v1, "html"

    .line 376
    .line 377
    invoke-static {v2, v1}, Lb/c;->v(Lorg/jsoup/parser/a;Ljava/lang/String;)Z

    .line 378
    .line 379
    .line 380
    move-result v1

    .line 381
    if-eqz v1, :cond_13

    .line 382
    .line 383
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/a;->e(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 384
    .line 385
    .line 386
    :cond_13
    return v4

    .line 387
    :cond_14
    invoke-virtual/range {p0 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$9;->f(Lk6/o;Lorg/jsoup/parser/a;)Z

    .line 388
    .line 389
    .line 390
    move-result v1

    .line 391
    return v1
.end method

.method public final f(Lk6/o;Lorg/jsoup/parser/a;)Z
    .locals 6

    .line 1
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/a;->e(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Lorg/jsoup/parser/c;->currentElement()Lorg/jsoup/nodes/b;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lorg/jsoup/nodes/b;->nodeName()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v1, "tbody"

    .line 13
    .line 14
    const-string v2, "tfoot"

    .line 15
    .line 16
    const-string v3, "table"

    .line 17
    .line 18
    const-string v4, "thead"

    .line 19
    .line 20
    const-string v5, "tr"

    .line 21
    .line 22
    filled-new-array {v3, v1, v2, v4, v5}, [Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-static {v0, v1}, Lh6/j;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    sget-object v1, Lorg/jsoup/parser/HtmlTreeBuilderState;->p:Lorg/jsoup/parser/HtmlTreeBuilderState$7;

    .line 31
    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    const/4 v0, 0x1

    .line 35
    iput-boolean v0, p2, Lorg/jsoup/parser/a;->t:Z

    .line 36
    .line 37
    iput-object p1, p2, Lorg/jsoup/parser/c;->f:Lk6/o;

    .line 38
    .line 39
    invoke-virtual {v1, p1, p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->e(Lk6/o;Lorg/jsoup/parser/a;)Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p2, Lorg/jsoup/parser/a;->t:Z

    .line 45
    .line 46
    return p1

    .line 47
    :cond_0
    iput-object p1, p2, Lorg/jsoup/parser/c;->f:Lk6/o;

    .line 48
    .line 49
    invoke-virtual {v1, p1, p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->e(Lk6/o;Lorg/jsoup/parser/a;)Z

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    return p1
.end method
