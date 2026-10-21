.class final enum Lorg/jsoup/parser/HtmlTreeBuilderState$16;
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
    const-string v0, "InSelect"

    .line 2
    .line 3
    const/16 v1, 0xf

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
    .locals 8

    .line 1
    const-string v0, "select"

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const-string v2, "option"

    .line 5
    .line 6
    const-string v3, "optgroup"

    .line 7
    .line 8
    const/4 v4, 0x1

    .line 9
    const/4 v5, 0x0

    .line 10
    iget-object v6, p1, Lk6/o;->a:Lorg/jsoup/parser/Token$TokenType;

    .line 11
    .line 12
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 13
    .line 14
    .line 15
    move-result v6

    .line 16
    if-eqz v6, :cond_18

    .line 17
    .line 18
    const-string v7, "html"

    .line 19
    .line 20
    if-eq v6, v4, :cond_d

    .line 21
    .line 22
    if-eq v6, v1, :cond_5

    .line 23
    .line 24
    const/4 v0, 0x3

    .line 25
    if-eq v6, v0, :cond_4

    .line 26
    .line 27
    const/4 v0, 0x4

    .line 28
    if-eq v6, v0, :cond_2

    .line 29
    .line 30
    const/4 p1, 0x5

    .line 31
    if-eq v6, p1, :cond_0

    .line 32
    .line 33
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/a;->e(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 34
    .line 35
    .line 36
    return v5

    .line 37
    :cond_0
    invoke-static {p2, v7}, Lb/c;->v(Lorg/jsoup/parser/a;Ljava/lang/String;)Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-nez p1, :cond_1

    .line 42
    .line 43
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/a;->e(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 44
    .line 45
    .line 46
    :cond_1
    return v4

    .line 47
    :cond_2
    check-cast p1, Lk6/h;

    .line 48
    .line 49
    iget-object v0, p1, Lk6/h;->b:Ljava/lang/String;

    .line 50
    .line 51
    sget-object v1, Lorg/jsoup/parser/HtmlTreeBuilderState;->F:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_3

    .line 58
    .line 59
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/a;->e(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 60
    .line 61
    .line 62
    return v5

    .line 63
    :cond_3
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/a;->o(Lk6/h;)V

    .line 64
    .line 65
    .line 66
    return v4

    .line 67
    :cond_4
    check-cast p1, Lk6/i;

    .line 68
    .line 69
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/a;->p(Lk6/i;)V

    .line 70
    .line 71
    .line 72
    return v4

    .line 73
    :cond_5
    check-cast p1, Lk6/l;

    .line 74
    .line 75
    iget-object p1, p1, Lk6/n;->c:Ljava/lang/String;

    .line 76
    .line 77
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    .line 79
    .line 80
    const/4 v6, -0x1

    .line 81
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 82
    .line 83
    .line 84
    move-result v7

    .line 85
    sparse-switch v7, :sswitch_data_0

    .line 86
    .line 87
    .line 88
    :goto_0
    move v1, v6

    .line 89
    goto :goto_1

    .line 90
    :sswitch_0
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    if-nez v0, :cond_8

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :sswitch_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    if-nez v0, :cond_6

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_6
    move v1, v4

    .line 105
    goto :goto_1

    .line 106
    :sswitch_2
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    if-nez v0, :cond_7

    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_7
    move v1, v5

    .line 114
    :cond_8
    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 115
    .line 116
    .line 117
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/a;->e(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 118
    .line 119
    .line 120
    return v5

    .line 121
    :pswitch_0
    invoke-static {p2, v2}, Lb/c;->v(Lorg/jsoup/parser/a;Ljava/lang/String;)Z

    .line 122
    .line 123
    .line 124
    move-result p1

    .line 125
    if-eqz p1, :cond_9

    .line 126
    .line 127
    invoke-virtual {p2}, Lorg/jsoup/parser/c;->currentElement()Lorg/jsoup/nodes/b;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/a;->b(Lorg/jsoup/nodes/b;)Lorg/jsoup/nodes/b;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    if-eqz p1, :cond_9

    .line 136
    .line 137
    invoke-virtual {p2}, Lorg/jsoup/parser/c;->currentElement()Lorg/jsoup/nodes/b;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/a;->b(Lorg/jsoup/nodes/b;)Lorg/jsoup/nodes/b;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    invoke-virtual {p1}, Lorg/jsoup/nodes/b;->nodeName()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    move-result p1

    .line 153
    if-eqz p1, :cond_9

    .line 154
    .line 155
    invoke-virtual {p2, v2}, Lorg/jsoup/parser/c;->processEndTag(Ljava/lang/String;)Z

    .line 156
    .line 157
    .line 158
    :cond_9
    invoke-static {p2, v3}, Lb/c;->v(Lorg/jsoup/parser/a;Ljava/lang/String;)Z

    .line 159
    .line 160
    .line 161
    move-result p1

    .line 162
    if-eqz p1, :cond_a

    .line 163
    .line 164
    invoke-virtual {p2}, Lorg/jsoup/parser/a;->v()V

    .line 165
    .line 166
    .line 167
    return v4

    .line 168
    :cond_a
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/a;->e(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 169
    .line 170
    .line 171
    return v4

    .line 172
    :pswitch_1
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/a;->k(Ljava/lang/String;)Z

    .line 173
    .line 174
    .line 175
    move-result v0

    .line 176
    if-nez v0, :cond_b

    .line 177
    .line 178
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/a;->e(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 179
    .line 180
    .line 181
    return v5

    .line 182
    :cond_b
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/a;->w(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {p2}, Lorg/jsoup/parser/a;->C()V

    .line 186
    .line 187
    .line 188
    return v4

    .line 189
    :pswitch_2
    invoke-static {p2, v2}, Lb/c;->v(Lorg/jsoup/parser/a;Ljava/lang/String;)Z

    .line 190
    .line 191
    .line 192
    move-result p1

    .line 193
    if-eqz p1, :cond_c

    .line 194
    .line 195
    invoke-virtual {p2}, Lorg/jsoup/parser/a;->v()V

    .line 196
    .line 197
    .line 198
    return v4

    .line 199
    :cond_c
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/a;->e(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 200
    .line 201
    .line 202
    return v4

    .line 203
    :cond_d
    move-object v1, p1

    .line 204
    check-cast v1, Lk6/m;

    .line 205
    .line 206
    iget-object v6, v1, Lk6/n;->c:Ljava/lang/String;

    .line 207
    .line 208
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 209
    .line 210
    .line 211
    move-result v7

    .line 212
    if-eqz v7, :cond_e

    .line 213
    .line 214
    sget-object p1, Lorg/jsoup/parser/HtmlTreeBuilderState;->p:Lorg/jsoup/parser/HtmlTreeBuilderState$7;

    .line 215
    .line 216
    iput-object v1, p2, Lorg/jsoup/parser/c;->f:Lk6/o;

    .line 217
    .line 218
    invoke-virtual {p1, v1, p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->e(Lk6/o;Lorg/jsoup/parser/a;)Z

    .line 219
    .line 220
    .line 221
    move-result p1

    .line 222
    return p1

    .line 223
    :cond_e
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 224
    .line 225
    .line 226
    move-result v7

    .line 227
    if-eqz v7, :cond_10

    .line 228
    .line 229
    invoke-static {p2, v2}, Lb/c;->v(Lorg/jsoup/parser/a;Ljava/lang/String;)Z

    .line 230
    .line 231
    .line 232
    move-result p1

    .line 233
    if-eqz p1, :cond_f

    .line 234
    .line 235
    invoke-virtual {p2, v2}, Lorg/jsoup/parser/c;->processEndTag(Ljava/lang/String;)Z

    .line 236
    .line 237
    .line 238
    :cond_f
    invoke-virtual {p2, v1}, Lorg/jsoup/parser/a;->n(Lk6/m;)Lorg/jsoup/nodes/b;

    .line 239
    .line 240
    .line 241
    return v4

    .line 242
    :cond_10
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 243
    .line 244
    .line 245
    move-result v7

    .line 246
    if-eqz v7, :cond_13

    .line 247
    .line 248
    invoke-static {p2, v2}, Lb/c;->v(Lorg/jsoup/parser/a;Ljava/lang/String;)Z

    .line 249
    .line 250
    .line 251
    move-result p1

    .line 252
    if-eqz p1, :cond_11

    .line 253
    .line 254
    invoke-virtual {p2, v2}, Lorg/jsoup/parser/c;->processEndTag(Ljava/lang/String;)Z

    .line 255
    .line 256
    .line 257
    goto :goto_2

    .line 258
    :cond_11
    invoke-static {p2, v3}, Lb/c;->v(Lorg/jsoup/parser/a;Ljava/lang/String;)Z

    .line 259
    .line 260
    .line 261
    move-result p1

    .line 262
    if-eqz p1, :cond_12

    .line 263
    .line 264
    invoke-virtual {p2, v3}, Lorg/jsoup/parser/c;->processEndTag(Ljava/lang/String;)Z

    .line 265
    .line 266
    .line 267
    :cond_12
    :goto_2
    invoke-virtual {p2, v1}, Lorg/jsoup/parser/a;->n(Lk6/m;)Lorg/jsoup/nodes/b;

    .line 268
    .line 269
    .line 270
    return v4

    .line 271
    :cond_13
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 272
    .line 273
    .line 274
    move-result v2

    .line 275
    if-eqz v2, :cond_14

    .line 276
    .line 277
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/a;->e(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {p2, v0}, Lorg/jsoup/parser/c;->processEndTag(Ljava/lang/String;)Z

    .line 281
    .line 282
    .line 283
    move-result p1

    .line 284
    return p1

    .line 285
    :cond_14
    const-string v2, "textarea"

    .line 286
    .line 287
    const-string v3, "input"

    .line 288
    .line 289
    const-string v4, "keygen"

    .line 290
    .line 291
    filled-new-array {v3, v4, v2}, [Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v2

    .line 295
    invoke-static {v6, v2}, Lh6/j;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 296
    .line 297
    .line 298
    move-result v2

    .line 299
    if-eqz v2, :cond_16

    .line 300
    .line 301
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/a;->e(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 302
    .line 303
    .line 304
    invoke-virtual {p2, v0}, Lorg/jsoup/parser/a;->k(Ljava/lang/String;)Z

    .line 305
    .line 306
    .line 307
    move-result p1

    .line 308
    if-nez p1, :cond_15

    .line 309
    .line 310
    return v5

    .line 311
    :cond_15
    invoke-virtual {p2, v0}, Lorg/jsoup/parser/c;->processEndTag(Ljava/lang/String;)Z

    .line 312
    .line 313
    .line 314
    invoke-virtual {p2, v1}, Lorg/jsoup/parser/a;->process(Lk6/o;)Z

    .line 315
    .line 316
    .line 317
    move-result p1

    .line 318
    return p1

    .line 319
    :cond_16
    const-string v0, "script"

    .line 320
    .line 321
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 322
    .line 323
    .line 324
    move-result v0

    .line 325
    if-eqz v0, :cond_17

    .line 326
    .line 327
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->j:Lorg/jsoup/parser/HtmlTreeBuilderState$4;

    .line 328
    .line 329
    iput-object p1, p2, Lorg/jsoup/parser/c;->f:Lk6/o;

    .line 330
    .line 331
    invoke-virtual {v0, p1, p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$4;->e(Lk6/o;Lorg/jsoup/parser/a;)Z

    .line 332
    .line 333
    .line 334
    move-result p1

    .line 335
    return p1

    .line 336
    :cond_17
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/a;->e(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 337
    .line 338
    .line 339
    return v5

    .line 340
    :cond_18
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/a;->e(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 341
    .line 342
    .line 343
    return v5

    .line 344
    nop

    .line 345
    :sswitch_data_0
    .sparse-switch
        -0x3c35778b -> :sswitch_2
        -0x3600cb04 -> :sswitch_1
        -0x4d08054 -> :sswitch_0
    .end sparse-switch

    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
