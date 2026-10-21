.class public final Lk6/q;
.super Lorg/jsoup/parser/c;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/jsoup/parser/c;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final a()Lk6/d;
    .locals 1

    .line 1
    sget-object v0, Lk6/d;->d:Lk6/d;

    .line 2
    .line 3
    return-object v0
.end method

.method public initialiseParse(Ljava/io/Reader;Ljava/lang/String;Lorg/jsoup/parser/ParseErrorList;Lk6/d;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lorg/jsoup/parser/c;->initialiseParse(Ljava/io/Reader;Ljava/lang/String;Lorg/jsoup/parser/ParseErrorList;Lk6/d;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lorg/jsoup/parser/c;->d:Ljava/util/ArrayList;

    .line 5
    .line 6
    iget-object p2, p0, Lorg/jsoup/parser/c;->c:Lj6/h;

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lorg/jsoup/parser/c;->c:Lj6/h;

    .line 12
    .line 13
    invoke-virtual {p1}, Lj6/h;->outputSettings()Lorg/jsoup/nodes/a;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    sget-object p2, Lorg/jsoup/nodes/Document$OutputSettings$Syntax;->e:Lorg/jsoup/nodes/Document$OutputSettings$Syntax;

    .line 18
    .line 19
    invoke-virtual {p1, p2}, Lorg/jsoup/nodes/a;->syntax(Lorg/jsoup/nodes/Document$OutputSettings$Syntax;)Lorg/jsoup/nodes/a;

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public process(Lk6/o;)Z
    .locals 6

    .line 1
    iget-object v0, p1, Lk6/o;->a:Lorg/jsoup/parser/Token$TokenType;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-eqz v0, :cond_e

    .line 9
    .line 10
    if-eq v0, v1, :cond_a

    .line 11
    .line 12
    const/4 v2, 0x2

    .line 13
    if-eq v0, v2, :cond_5

    .line 14
    .line 15
    const/4 v2, 0x3

    .line 16
    if-eq v0, v2, :cond_2

    .line 17
    .line 18
    const/4 v2, 0x4

    .line 19
    if-eq v0, v2, :cond_0

    .line 20
    .line 21
    const/4 v2, 0x5

    .line 22
    if-eq v0, v2, :cond_c

    .line 23
    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    const-string v2, "Unexpected token type: "

    .line 27
    .line 28
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p1, Lk6/o;->a:Lorg/jsoup/parser/Token$TokenType;

    .line 32
    .line 33
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-static {p1}, Lh6/k;->fail(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    return v1

    .line 44
    :cond_0
    check-cast p1, Lk6/h;

    .line 45
    .line 46
    iget-object v0, p1, Lk6/h;->b:Ljava/lang/String;

    .line 47
    .line 48
    instance-of p1, p1, Lk6/g;

    .line 49
    .line 50
    if-eqz p1, :cond_1

    .line 51
    .line 52
    new-instance p1, Lj6/e;

    .line 53
    .line 54
    invoke-direct {p1, v0}, Lj6/e;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    new-instance p1, Lj6/r;

    .line 59
    .line 60
    invoke-direct {p1, v0}, Lj6/r;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    :goto_0
    invoke-virtual {p0}, Lorg/jsoup/parser/c;->currentElement()Lorg/jsoup/nodes/b;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-virtual {v0, p1}, Lorg/jsoup/nodes/b;->appendChild(Lj6/p;)Lorg/jsoup/nodes/b;

    .line 68
    .line 69
    .line 70
    return v1

    .line 71
    :cond_2
    check-cast p1, Lk6/i;

    .line 72
    .line 73
    new-instance v0, Lj6/f;

    .line 74
    .line 75
    iget-object v2, p1, Lk6/i;->b:Ljava/lang/StringBuilder;

    .line 76
    .line 77
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    invoke-direct {v0, v2}, Lj6/f;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    iget-boolean p1, p1, Lk6/i;->c:Z

    .line 85
    .line 86
    if-eqz p1, :cond_4

    .line 87
    .line 88
    invoke-virtual {v0}, Lj6/f;->getData()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 93
    .line 94
    .line 95
    move-result v2

    .line 96
    if-le v2, v1, :cond_4

    .line 97
    .line 98
    const-string v2, "!"

    .line 99
    .line 100
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 101
    .line 102
    .line 103
    move-result v3

    .line 104
    if-nez v3, :cond_3

    .line 105
    .line 106
    const-string v3, "?"

    .line 107
    .line 108
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 109
    .line 110
    .line 111
    move-result v3

    .line 112
    if-eqz v3, :cond_4

    .line 113
    .line 114
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    .line 115
    .line 116
    const-string v4, "<"

    .line 117
    .line 118
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 122
    .line 123
    .line 124
    move-result v4

    .line 125
    sub-int/2addr v4, v1

    .line 126
    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v4

    .line 130
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    const-string v4, ">"

    .line 134
    .line 135
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v3

    .line 142
    iget-object v4, p0, Lorg/jsoup/parser/c;->e:Ljava/lang/String;

    .line 143
    .line 144
    invoke-static {}, Lk6/e;->xmlParser()Lk6/e;

    .line 145
    .line 146
    .line 147
    move-result-object v5

    .line 148
    invoke-static {v3, v4, v5}, Lg6/e;->parse(Ljava/lang/String;Ljava/lang/String;Lk6/e;)Lj6/h;

    .line 149
    .line 150
    .line 151
    move-result-object v3

    .line 152
    invoke-virtual {v3}, Lorg/jsoup/nodes/b;->childNodeSize()I

    .line 153
    .line 154
    .line 155
    move-result v4

    .line 156
    if-lez v4, :cond_4

    .line 157
    .line 158
    const/4 v0, 0x0

    .line 159
    invoke-virtual {v3, v0}, Lorg/jsoup/nodes/b;->child(I)Lorg/jsoup/nodes/b;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    new-instance v3, Lj6/s;

    .line 164
    .line 165
    iget-object v4, p0, Lorg/jsoup/parser/c;->h:Lk6/d;

    .line 166
    .line 167
    invoke-virtual {v0}, Lorg/jsoup/nodes/b;->tagName()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v5

    .line 171
    invoke-virtual {v4, v5}, Lk6/d;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v4

    .line 175
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 176
    .line 177
    .line 178
    move-result p1

    .line 179
    invoke-direct {v3, v4, p1}, Lj6/s;-><init>(Ljava/lang/String;Z)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v3}, Lj6/m;->attributes()Lj6/c;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    invoke-virtual {v0}, Lorg/jsoup/nodes/b;->attributes()Lj6/c;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    invoke-virtual {p1, v0}, Lj6/c;->addAll(Lj6/c;)V

    .line 191
    .line 192
    .line 193
    move-object v0, v3

    .line 194
    :cond_4
    invoke-virtual {p0}, Lorg/jsoup/parser/c;->currentElement()Lorg/jsoup/nodes/b;

    .line 195
    .line 196
    .line 197
    move-result-object p1

    .line 198
    invoke-virtual {p1, v0}, Lorg/jsoup/nodes/b;->appendChild(Lj6/p;)Lorg/jsoup/nodes/b;

    .line 199
    .line 200
    .line 201
    return v1

    .line 202
    :cond_5
    check-cast p1, Lk6/l;

    .line 203
    .line 204
    iget-object v0, p0, Lorg/jsoup/parser/c;->h:Lk6/d;

    .line 205
    .line 206
    iget-object p1, p1, Lk6/n;->b:Ljava/lang/String;

    .line 207
    .line 208
    invoke-virtual {v0, p1}, Lk6/d;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object p1

    .line 212
    iget-object v0, p0, Lorg/jsoup/parser/c;->d:Ljava/util/ArrayList;

    .line 213
    .line 214
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 215
    .line 216
    .line 217
    move-result v0

    .line 218
    sub-int/2addr v0, v1

    .line 219
    :goto_1
    if-ltz v0, :cond_7

    .line 220
    .line 221
    iget-object v2, p0, Lorg/jsoup/parser/c;->d:Ljava/util/ArrayList;

    .line 222
    .line 223
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object v2

    .line 227
    check-cast v2, Lorg/jsoup/nodes/b;

    .line 228
    .line 229
    invoke-virtual {v2}, Lorg/jsoup/nodes/b;->nodeName()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v3

    .line 233
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 234
    .line 235
    .line 236
    move-result v3

    .line 237
    if-eqz v3, :cond_6

    .line 238
    .line 239
    goto :goto_2

    .line 240
    :cond_6
    add-int/lit8 v0, v0, -0x1

    .line 241
    .line 242
    goto :goto_1

    .line 243
    :cond_7
    const/4 v2, 0x0

    .line 244
    :goto_2
    if-nez v2, :cond_8

    .line 245
    .line 246
    goto :goto_4

    .line 247
    :cond_8
    iget-object p1, p0, Lorg/jsoup/parser/c;->d:Ljava/util/ArrayList;

    .line 248
    .line 249
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 250
    .line 251
    .line 252
    move-result p1

    .line 253
    sub-int/2addr p1, v1

    .line 254
    :goto_3
    if-ltz p1, :cond_c

    .line 255
    .line 256
    iget-object v0, p0, Lorg/jsoup/parser/c;->d:Ljava/util/ArrayList;

    .line 257
    .line 258
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 259
    .line 260
    .line 261
    move-result-object v0

    .line 262
    check-cast v0, Lorg/jsoup/nodes/b;

    .line 263
    .line 264
    iget-object v3, p0, Lorg/jsoup/parser/c;->d:Ljava/util/ArrayList;

    .line 265
    .line 266
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 267
    .line 268
    .line 269
    if-ne v0, v2, :cond_9

    .line 270
    .line 271
    goto :goto_4

    .line 272
    :cond_9
    add-int/lit8 p1, p1, -0x1

    .line 273
    .line 274
    goto :goto_3

    .line 275
    :cond_a
    check-cast p1, Lk6/m;

    .line 276
    .line 277
    invoke-virtual {p1}, Lk6/n;->m()Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v0

    .line 281
    iget-object v2, p0, Lorg/jsoup/parser/c;->h:Lk6/d;

    .line 282
    .line 283
    invoke-static {v0, v2}, Lk6/f;->valueOf(Ljava/lang/String;Lk6/d;)Lk6/f;

    .line 284
    .line 285
    .line 286
    move-result-object v0

    .line 287
    new-instance v2, Lorg/jsoup/nodes/b;

    .line 288
    .line 289
    iget-object v3, p0, Lorg/jsoup/parser/c;->e:Ljava/lang/String;

    .line 290
    .line 291
    iget-object v4, p0, Lorg/jsoup/parser/c;->h:Lk6/d;

    .line 292
    .line 293
    iget-object v5, p1, Lk6/n;->j:Lj6/c;

    .line 294
    .line 295
    iget-boolean v4, v4, Lk6/d;->b:Z

    .line 296
    .line 297
    if-nez v4, :cond_b

    .line 298
    .line 299
    invoke-virtual {v5}, Lj6/c;->normalize()V

    .line 300
    .line 301
    .line 302
    :cond_b
    invoke-direct {v2, v0, v3, v5}, Lorg/jsoup/nodes/b;-><init>(Lk6/f;Ljava/lang/String;Lj6/c;)V

    .line 303
    .line 304
    .line 305
    invoke-virtual {p0}, Lorg/jsoup/parser/c;->currentElement()Lorg/jsoup/nodes/b;

    .line 306
    .line 307
    .line 308
    move-result-object v3

    .line 309
    invoke-virtual {v3, v2}, Lorg/jsoup/nodes/b;->appendChild(Lj6/p;)Lorg/jsoup/nodes/b;

    .line 310
    .line 311
    .line 312
    iget-boolean p1, p1, Lk6/n;->i:Z

    .line 313
    .line 314
    if-eqz p1, :cond_d

    .line 315
    .line 316
    invoke-virtual {v0}, Lk6/f;->isKnownTag()Z

    .line 317
    .line 318
    .line 319
    move-result p1

    .line 320
    if-nez p1, :cond_c

    .line 321
    .line 322
    iput-boolean v1, v0, Lk6/f;->f:Z

    .line 323
    .line 324
    :cond_c
    :goto_4
    return v1

    .line 325
    :cond_d
    iget-object p1, p0, Lorg/jsoup/parser/c;->d:Ljava/util/ArrayList;

    .line 326
    .line 327
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 328
    .line 329
    .line 330
    return v1

    .line 331
    :cond_e
    check-cast p1, Lk6/j;

    .line 332
    .line 333
    new-instance v0, Lj6/i;

    .line 334
    .line 335
    iget-object v2, p0, Lorg/jsoup/parser/c;->h:Lk6/d;

    .line 336
    .line 337
    iget-object v3, p1, Lk6/j;->b:Ljava/lang/StringBuilder;

    .line 338
    .line 339
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 340
    .line 341
    .line 342
    move-result-object v3

    .line 343
    invoke-virtual {v2, v3}, Lk6/d;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object v2

    .line 347
    iget-object v3, p1, Lk6/j;->d:Ljava/lang/StringBuilder;

    .line 348
    .line 349
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object v3

    .line 353
    invoke-virtual {p1}, Lk6/j;->getSystemIdentifier()Ljava/lang/String;

    .line 354
    .line 355
    .line 356
    move-result-object v4

    .line 357
    invoke-direct {v0, v2, v3, v4}, Lj6/i;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    .line 359
    .line 360
    iget-object p1, p1, Lk6/j;->c:Ljava/lang/String;

    .line 361
    .line 362
    invoke-virtual {v0, p1}, Lj6/i;->setPubSysKey(Ljava/lang/String;)V

    .line 363
    .line 364
    .line 365
    invoke-virtual {p0}, Lorg/jsoup/parser/c;->currentElement()Lorg/jsoup/nodes/b;

    .line 366
    .line 367
    .line 368
    move-result-object p1

    .line 369
    invoke-virtual {p1, v0}, Lorg/jsoup/nodes/b;->appendChild(Lj6/p;)Lorg/jsoup/nodes/b;

    .line 370
    .line 371
    .line 372
    return v1
.end method
