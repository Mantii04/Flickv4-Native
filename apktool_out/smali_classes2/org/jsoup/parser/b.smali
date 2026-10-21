.class public final Lorg/jsoup/parser/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final r:[C

.field public static final s:[I


# instance fields
.field public final a:Lk6/a;

.field public final b:Lorg/jsoup/parser/ParseErrorList;

.field public c:Lorg/jsoup/parser/TokeniserState;

.field public d:Lk6/o;

.field public e:Z

.field public f:Ljava/lang/String;

.field public final g:Ljava/lang/StringBuilder;

.field public final h:Ljava/lang/StringBuilder;

.field public i:Lk6/n;

.field public final j:Lk6/m;

.field public final k:Lk6/l;

.field public final l:Lk6/h;

.field public final m:Lk6/j;

.field public final n:Lk6/i;

.field public o:Ljava/lang/String;

.field public final p:[I

.field public final q:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/16 v0, 0x20

    .line 2
    .line 3
    const/4 v1, 0x7

    .line 4
    new-array v1, v1, [C

    .line 5
    .line 6
    fill-array-data v1, :array_0

    .line 7
    .line 8
    .line 9
    sput-object v1, Lorg/jsoup/parser/b;->r:[C

    .line 10
    .line 11
    new-array v0, v0, [I

    .line 12
    .line 13
    fill-array-data v0, :array_1

    .line 14
    .line 15
    .line 16
    sput-object v0, Lorg/jsoup/parser/b;->s:[I

    .line 17
    .line 18
    invoke-static {v1}, Ljava/util/Arrays;->sort([C)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    nop

    .line 23
    :array_0
    .array-data 2
        0x9s
        0xas
        0xds
        0xcs
        0x20s
        0x3cs
        0x26s
    .end array-data

    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    nop

    .line 35
    :array_1
    .array-data 4
        0x20ac
        0x81
        0x201a
        0x192
        0x201e
        0x2026
        0x2020
        0x2021
        0x2c6
        0x2030
        0x160
        0x2039
        0x152
        0x8d
        0x17d
        0x8f
        0x90
        0x2018
        0x2019
        0x201c
        0x201d
        0x2022
        0x2013
        0x2014
        0x2dc
        0x2122
        0x161
        0x203a
        0x153
        0x9d
        0x17e
        0x178
    .end array-data
.end method

.method public constructor <init>(Lk6/a;Lorg/jsoup/parser/ParseErrorList;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lorg/jsoup/parser/TokeniserState;->b:Lorg/jsoup/parser/TokeniserState$1;

    .line 5
    .line 6
    iput-object v0, p0, Lorg/jsoup/parser/b;->c:Lorg/jsoup/parser/TokeniserState;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lorg/jsoup/parser/b;->e:Z

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lorg/jsoup/parser/b;->f:Ljava/lang/String;

    .line 13
    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const/16 v1, 0x400

    .line 17
    .line 18
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lorg/jsoup/parser/b;->g:Ljava/lang/StringBuilder;

    .line 22
    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lorg/jsoup/parser/b;->h:Ljava/lang/StringBuilder;

    .line 29
    .line 30
    new-instance v0, Lk6/m;

    .line 31
    .line 32
    invoke-direct {v0}, Lk6/m;-><init>()V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Lorg/jsoup/parser/b;->j:Lk6/m;

    .line 36
    .line 37
    new-instance v0, Lk6/l;

    .line 38
    .line 39
    invoke-direct {v0}, Lk6/l;-><init>()V

    .line 40
    .line 41
    .line 42
    iput-object v0, p0, Lorg/jsoup/parser/b;->k:Lk6/l;

    .line 43
    .line 44
    new-instance v0, Lk6/h;

    .line 45
    .line 46
    invoke-direct {v0}, Lk6/h;-><init>()V

    .line 47
    .line 48
    .line 49
    iput-object v0, p0, Lorg/jsoup/parser/b;->l:Lk6/h;

    .line 50
    .line 51
    new-instance v0, Lk6/j;

    .line 52
    .line 53
    invoke-direct {v0}, Lk6/j;-><init>()V

    .line 54
    .line 55
    .line 56
    iput-object v0, p0, Lorg/jsoup/parser/b;->m:Lk6/j;

    .line 57
    .line 58
    new-instance v0, Lk6/i;

    .line 59
    .line 60
    invoke-direct {v0}, Lk6/i;-><init>()V

    .line 61
    .line 62
    .line 63
    iput-object v0, p0, Lorg/jsoup/parser/b;->n:Lk6/i;

    .line 64
    .line 65
    const/4 v0, 0x1

    .line 66
    new-array v0, v0, [I

    .line 67
    .line 68
    iput-object v0, p0, Lorg/jsoup/parser/b;->p:[I

    .line 69
    .line 70
    const/4 v0, 0x2

    .line 71
    new-array v0, v0, [I

    .line 72
    .line 73
    iput-object v0, p0, Lorg/jsoup/parser/b;->q:[I

    .line 74
    .line 75
    iput-object p1, p0, Lorg/jsoup/parser/b;->a:Lk6/a;

    .line 76
    .line 77
    iput-object p2, p0, Lorg/jsoup/parser/b;->b:Lorg/jsoup/parser/ParseErrorList;

    .line 78
    .line 79
    return-void
.end method


# virtual methods
.method public final a(Lorg/jsoup/parser/TokeniserState;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jsoup/parser/b;->a:Lk6/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lk6/a;->advance()V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lorg/jsoup/parser/b;->c:Lorg/jsoup/parser/TokeniserState;

    .line 7
    .line 8
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/jsoup/parser/b;->b:Lorg/jsoup/parser/ParseErrorList;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/jsoup/parser/ParseErrorList;->a()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    new-instance v1, Lk6/c;

    .line 10
    .line 11
    iget-object v2, p0, Lorg/jsoup/parser/b;->a:Lk6/a;

    .line 12
    .line 13
    invoke-virtual {v2}, Lk6/a;->pos()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    const-string v3, "Invalid character reference: %s"

    .line 18
    .line 19
    const/4 v4, 0x1

    .line 20
    new-array v4, v4, [Ljava/lang/Object;

    .line 21
    .line 22
    const/4 v5, 0x0

    .line 23
    aput-object p1, v4, v5

    .line 24
    .line 25
    invoke-direct {v1, v2, v3, v4}, Lk6/c;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void
.end method

.method public final c(Ljava/lang/Character;Z)[I
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/16 v1, 0x80

    .line 4
    .line 5
    iget-object v3, v0, Lorg/jsoup/parser/b;->a:Lk6/a;

    .line 6
    .line 7
    invoke-virtual {v3}, Lk6/a;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v4

    .line 11
    if-eqz v4, :cond_0

    .line 12
    .line 13
    :goto_0
    const/16 v16, 0x0

    .line 14
    .line 15
    goto/16 :goto_a

    .line 16
    .line 17
    :cond_0
    if-eqz p1, :cond_1

    .line 18
    .line 19
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Character;->charValue()C

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    invoke-virtual {v3}, Lk6/a;->current()C

    .line 24
    .line 25
    .line 26
    move-result v6

    .line 27
    if-ne v4, v6, :cond_1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    sget-object v4, Lorg/jsoup/parser/b;->r:[C

    .line 31
    .line 32
    invoke-virtual {v3}, Lk6/a;->a()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3}, Lk6/a;->isEmpty()Z

    .line 36
    .line 37
    .line 38
    move-result v6

    .line 39
    iget-object v7, v3, Lk6/a;->a:[C

    .line 40
    .line 41
    if-nez v6, :cond_2

    .line 42
    .line 43
    iget v6, v3, Lk6/a;->e:I

    .line 44
    .line 45
    aget-char v6, v7, v6

    .line 46
    .line 47
    invoke-static {v4, v6}, Ljava/util/Arrays;->binarySearch([CC)I

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    if-ltz v4, :cond_2

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    iget v4, v3, Lk6/a;->e:I

    .line 55
    .line 56
    iput v4, v3, Lk6/a;->g:I

    .line 57
    .line 58
    const-string v4, "#"

    .line 59
    .line 60
    invoke-virtual {v3, v4}, Lk6/a;->f(Ljava/lang/String;)Z

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    iget-object v6, v3, Lk6/a;->h:[Ljava/lang/String;

    .line 65
    .line 66
    const-string v8, "missing semicolon"

    .line 67
    .line 68
    const-string v9, ";"

    .line 69
    .line 70
    const/16 v10, 0x61

    .line 71
    .line 72
    const/16 v11, 0x41

    .line 73
    .line 74
    const/16 v13, 0x39

    .line 75
    .line 76
    const/16 v14, 0x30

    .line 77
    .line 78
    iget-object v15, v0, Lorg/jsoup/parser/b;->p:[I

    .line 79
    .line 80
    if-eqz v4, :cond_10

    .line 81
    .line 82
    const-string v4, "X"

    .line 83
    .line 84
    invoke-virtual {v3, v4}, Lk6/a;->g(Ljava/lang/String;)Z

    .line 85
    .line 86
    .line 87
    move-result v4

    .line 88
    if-eqz v4, :cond_7

    .line 89
    .line 90
    invoke-virtual {v3}, Lk6/a;->a()V

    .line 91
    .line 92
    .line 93
    const/16 v16, 0x0

    .line 94
    .line 95
    iget v5, v3, Lk6/a;->e:I

    .line 96
    .line 97
    const/16 p1, 0x0

    .line 98
    .line 99
    :goto_1
    iget v12, v3, Lk6/a;->e:I

    .line 100
    .line 101
    const/16 v17, 0x1

    .line 102
    .line 103
    iget v2, v3, Lk6/a;->c:I

    .line 104
    .line 105
    if-ge v12, v2, :cond_6

    .line 106
    .line 107
    aget-char v2, v7, v12

    .line 108
    .line 109
    if-lt v2, v14, :cond_3

    .line 110
    .line 111
    if-le v2, v13, :cond_5

    .line 112
    .line 113
    :cond_3
    if-lt v2, v11, :cond_4

    .line 114
    .line 115
    const/16 v11, 0x46

    .line 116
    .line 117
    if-le v2, v11, :cond_5

    .line 118
    .line 119
    :cond_4
    if-lt v2, v10, :cond_6

    .line 120
    .line 121
    const/16 v11, 0x66

    .line 122
    .line 123
    if-gt v2, v11, :cond_6

    .line 124
    .line 125
    :cond_5
    add-int/lit8 v12, v12, 0x1

    .line 126
    .line 127
    iput v12, v3, Lk6/a;->e:I

    .line 128
    .line 129
    const/16 v11, 0x41

    .line 130
    .line 131
    goto :goto_1

    .line 132
    :cond_6
    sub-int/2addr v12, v5

    .line 133
    invoke-static {v7, v6, v5, v12}, Lk6/a;->b([C[Ljava/lang/String;II)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    goto :goto_3

    .line 138
    :cond_7
    const/16 p1, 0x0

    .line 139
    .line 140
    const/16 v16, 0x0

    .line 141
    .line 142
    const/16 v17, 0x1

    .line 143
    .line 144
    invoke-virtual {v3}, Lk6/a;->a()V

    .line 145
    .line 146
    .line 147
    iget v2, v3, Lk6/a;->e:I

    .line 148
    .line 149
    :goto_2
    iget v5, v3, Lk6/a;->e:I

    .line 150
    .line 151
    iget v10, v3, Lk6/a;->c:I

    .line 152
    .line 153
    if-ge v5, v10, :cond_8

    .line 154
    .line 155
    aget-char v10, v7, v5

    .line 156
    .line 157
    if-lt v10, v14, :cond_8

    .line 158
    .line 159
    if-gt v10, v13, :cond_8

    .line 160
    .line 161
    add-int/lit8 v5, v5, 0x1

    .line 162
    .line 163
    iput v5, v3, Lk6/a;->e:I

    .line 164
    .line 165
    goto :goto_2

    .line 166
    :cond_8
    sub-int/2addr v5, v2

    .line 167
    invoke-static {v7, v6, v2, v5}, Lk6/a;->b([C[Ljava/lang/String;II)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v2

    .line 171
    :goto_3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 172
    .line 173
    .line 174
    move-result v5

    .line 175
    if-nez v5, :cond_9

    .line 176
    .line 177
    const-string v1, "numeric reference with no numerals"

    .line 178
    .line 179
    invoke-virtual {v0, v1}, Lorg/jsoup/parser/b;->b(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    iget v1, v3, Lk6/a;->g:I

    .line 183
    .line 184
    iput v1, v3, Lk6/a;->e:I

    .line 185
    .line 186
    return-object v16

    .line 187
    :cond_9
    invoke-virtual {v3, v9}, Lk6/a;->f(Ljava/lang/String;)Z

    .line 188
    .line 189
    .line 190
    move-result v3

    .line 191
    if-nez v3, :cond_a

    .line 192
    .line 193
    invoke-virtual {v0, v8}, Lorg/jsoup/parser/b;->b(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    :cond_a
    if-eqz v4, :cond_b

    .line 197
    .line 198
    const/16 v3, 0x10

    .line 199
    .line 200
    goto :goto_4

    .line 201
    :cond_b
    const/16 v3, 0xa

    .line 202
    .line 203
    :goto_4
    const/4 v4, -0x1

    .line 204
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    .line 205
    .line 206
    .line 207
    move-result-object v2

    .line 208
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 209
    .line 210
    .line 211
    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    goto :goto_5

    .line 213
    :catch_0
    move v2, v4

    .line 214
    :goto_5
    if-eq v2, v4, :cond_f

    .line 215
    .line 216
    const v3, 0xd800

    .line 217
    .line 218
    .line 219
    if-lt v2, v3, :cond_c

    .line 220
    .line 221
    const v3, 0xdfff

    .line 222
    .line 223
    .line 224
    if-le v2, v3, :cond_f

    .line 225
    .line 226
    :cond_c
    const v3, 0x10ffff

    .line 227
    .line 228
    .line 229
    if-le v2, v3, :cond_d

    .line 230
    .line 231
    goto :goto_6

    .line 232
    :cond_d
    if-lt v2, v1, :cond_e

    .line 233
    .line 234
    const/16 v3, 0xa0

    .line 235
    .line 236
    if-ge v2, v3, :cond_e

    .line 237
    .line 238
    const-string v3, "character is not a valid unicode code point"

    .line 239
    .line 240
    invoke-virtual {v0, v3}, Lorg/jsoup/parser/b;->b(Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    sget-object v3, Lorg/jsoup/parser/b;->s:[I

    .line 244
    .line 245
    sub-int/2addr v2, v1

    .line 246
    aget v2, v3, v2

    .line 247
    .line 248
    :cond_e
    aput v2, v15, p1

    .line 249
    .line 250
    return-object v15

    .line 251
    :cond_f
    :goto_6
    const-string v1, "character outside of valid range"

    .line 252
    .line 253
    invoke-virtual {v0, v1}, Lorg/jsoup/parser/b;->b(Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    const v1, 0xfffd

    .line 257
    .line 258
    .line 259
    aput v1, v15, p1

    .line 260
    .line 261
    return-object v15

    .line 262
    :cond_10
    const/16 p1, 0x0

    .line 263
    .line 264
    const/16 v16, 0x0

    .line 265
    .line 266
    const/16 v17, 0x1

    .line 267
    .line 268
    invoke-virtual {v3}, Lk6/a;->a()V

    .line 269
    .line 270
    .line 271
    iget v1, v3, Lk6/a;->e:I

    .line 272
    .line 273
    :goto_7
    iget v2, v3, Lk6/a;->e:I

    .line 274
    .line 275
    iget v4, v3, Lk6/a;->c:I

    .line 276
    .line 277
    if-ge v2, v4, :cond_14

    .line 278
    .line 279
    aget-char v2, v7, v2

    .line 280
    .line 281
    const/16 v4, 0x41

    .line 282
    .line 283
    if-lt v2, v4, :cond_11

    .line 284
    .line 285
    const/16 v5, 0x5a

    .line 286
    .line 287
    if-le v2, v5, :cond_13

    .line 288
    .line 289
    :cond_11
    if-lt v2, v10, :cond_12

    .line 290
    .line 291
    const/16 v5, 0x7a

    .line 292
    .line 293
    if-le v2, v5, :cond_13

    .line 294
    .line 295
    :cond_12
    invoke-static {v2}, Ljava/lang/Character;->isLetter(C)Z

    .line 296
    .line 297
    .line 298
    move-result v2

    .line 299
    if-eqz v2, :cond_14

    .line 300
    .line 301
    :cond_13
    iget v2, v3, Lk6/a;->e:I

    .line 302
    .line 303
    add-int/lit8 v2, v2, 0x1

    .line 304
    .line 305
    iput v2, v3, Lk6/a;->e:I

    .line 306
    .line 307
    goto :goto_7

    .line 308
    :cond_14
    :goto_8
    iget v2, v3, Lk6/a;->e:I

    .line 309
    .line 310
    iget v4, v3, Lk6/a;->c:I

    .line 311
    .line 312
    if-lt v2, v4, :cond_15

    .line 313
    .line 314
    goto :goto_9

    .line 315
    :cond_15
    aget-char v4, v7, v2

    .line 316
    .line 317
    if-lt v4, v14, :cond_16

    .line 318
    .line 319
    if-gt v4, v13, :cond_16

    .line 320
    .line 321
    add-int/lit8 v2, v2, 0x1

    .line 322
    .line 323
    iput v2, v3, Lk6/a;->e:I

    .line 324
    .line 325
    goto :goto_8

    .line 326
    :cond_16
    :goto_9
    sub-int/2addr v2, v1

    .line 327
    invoke-static {v7, v6, v1, v2}, Lk6/a;->b([C[Ljava/lang/String;II)Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object v1

    .line 331
    const/16 v2, 0x3b

    .line 332
    .line 333
    invoke-virtual {v3, v2}, Lk6/a;->h(C)Z

    .line 334
    .line 335
    .line 336
    move-result v2

    .line 337
    invoke-static {v1}, Lj6/k;->isBaseNamedEntity(Ljava/lang/String;)Z

    .line 338
    .line 339
    .line 340
    move-result v4

    .line 341
    if-nez v4, :cond_19

    .line 342
    .line 343
    invoke-static {v1}, Lj6/k;->isNamedEntity(Ljava/lang/String;)Z

    .line 344
    .line 345
    .line 346
    move-result v4

    .line 347
    if-eqz v4, :cond_17

    .line 348
    .line 349
    if-eqz v2, :cond_17

    .line 350
    .line 351
    goto :goto_b

    .line 352
    :cond_17
    iget v4, v3, Lk6/a;->g:I

    .line 353
    .line 354
    iput v4, v3, Lk6/a;->e:I

    .line 355
    .line 356
    if-eqz v2, :cond_18

    .line 357
    .line 358
    new-instance v2, Ljava/lang/StringBuilder;

    .line 359
    .line 360
    const-string v3, "invalid named referenece \'"

    .line 361
    .line 362
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 363
    .line 364
    .line 365
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    .line 367
    .line 368
    const-string v1, "\'"

    .line 369
    .line 370
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    .line 372
    .line 373
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 374
    .line 375
    .line 376
    move-result-object v1

    .line 377
    invoke-virtual {v0, v1}, Lorg/jsoup/parser/b;->b(Ljava/lang/String;)V

    .line 378
    .line 379
    .line 380
    :cond_18
    :goto_a
    return-object v16

    .line 381
    :cond_19
    :goto_b
    if-eqz p2, :cond_1d

    .line 382
    .line 383
    invoke-virtual {v3}, Lk6/a;->j()Z

    .line 384
    .line 385
    .line 386
    move-result v2

    .line 387
    if-nez v2, :cond_1c

    .line 388
    .line 389
    invoke-virtual {v3}, Lk6/a;->isEmpty()Z

    .line 390
    .line 391
    .line 392
    move-result v2

    .line 393
    if-eqz v2, :cond_1a

    .line 394
    .line 395
    goto :goto_c

    .line 396
    :cond_1a
    iget v2, v3, Lk6/a;->e:I

    .line 397
    .line 398
    aget-char v2, v7, v2

    .line 399
    .line 400
    if-lt v2, v14, :cond_1b

    .line 401
    .line 402
    if-gt v2, v13, :cond_1b

    .line 403
    .line 404
    goto :goto_d

    .line 405
    :cond_1b
    :goto_c
    const/4 v2, 0x3

    .line 406
    new-array v2, v2, [C

    .line 407
    .line 408
    fill-array-data v2, :array_0

    .line 409
    .line 410
    .line 411
    invoke-virtual {v3, v2}, Lk6/a;->i([C)Z

    .line 412
    .line 413
    .line 414
    move-result v2

    .line 415
    if-eqz v2, :cond_1d

    .line 416
    .line 417
    :cond_1c
    :goto_d
    iget v1, v3, Lk6/a;->g:I

    .line 418
    .line 419
    iput v1, v3, Lk6/a;->e:I

    .line 420
    .line 421
    return-object v16

    .line 422
    :cond_1d
    invoke-virtual {v3, v9}, Lk6/a;->f(Ljava/lang/String;)Z

    .line 423
    .line 424
    .line 425
    move-result v2

    .line 426
    if-nez v2, :cond_1e

    .line 427
    .line 428
    invoke-virtual {v0, v8}, Lorg/jsoup/parser/b;->b(Ljava/lang/String;)V

    .line 429
    .line 430
    .line 431
    :cond_1e
    iget-object v2, v0, Lorg/jsoup/parser/b;->q:[I

    .line 432
    .line 433
    invoke-static {v1, v2}, Lj6/k;->codepointsForName(Ljava/lang/String;[I)I

    .line 434
    .line 435
    .line 436
    move-result v3

    .line 437
    move/from16 v4, v17

    .line 438
    .line 439
    if-ne v3, v4, :cond_1f

    .line 440
    .line 441
    aget v1, v2, p1

    .line 442
    .line 443
    aput v1, v15, p1

    .line 444
    .line 445
    return-object v15

    .line 446
    :cond_1f
    const/4 v4, 0x2

    .line 447
    if-ne v3, v4, :cond_20

    .line 448
    .line 449
    return-object v2

    .line 450
    :cond_20
    const-string v3, "Unexpected characters returned for "

    .line 451
    .line 452
    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 453
    .line 454
    .line 455
    move-result-object v1

    .line 456
    invoke-static {v1}, Lh6/k;->fail(Ljava/lang/String;)V

    .line 457
    .line 458
    .line 459
    return-object v2

    .line 460
    nop

    .line 461
    :array_0
    .array-data 2
        0x3ds
        0x2ds
        0x5fs
    .end array-data
.end method

.method public final d(Z)Lk6/n;
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lorg/jsoup/parser/b;->j:Lk6/m;

    .line 4
    .line 5
    invoke-virtual {p1}, Lk6/m;->p()Lk6/n;

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object p1, p0, Lorg/jsoup/parser/b;->k:Lk6/l;

    .line 10
    .line 11
    invoke-virtual {p1}, Lk6/n;->p()Lk6/n;

    .line 12
    .line 13
    .line 14
    :goto_0
    iput-object p1, p0, Lorg/jsoup/parser/b;->i:Lk6/n;

    .line 15
    .line 16
    return-object p1
.end method

.method public final e()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jsoup/parser/b;->h:Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-static {v0}, Lk6/o;->g(Ljava/lang/StringBuilder;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final f(C)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/b;->g(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final g(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/jsoup/parser/b;->f:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iput-object p1, p0, Lorg/jsoup/parser/b;->f:Ljava/lang/String;

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lorg/jsoup/parser/b;->g:Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    iget-object v1, p0, Lorg/jsoup/parser/b;->f:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    :cond_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final h(Lk6/o;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lorg/jsoup/parser/b;->e:Z

    .line 2
    .line 3
    const-string v1, "There is an unread token pending!"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lh6/k;->isFalse(ZLjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iput-object p1, p0, Lorg/jsoup/parser/b;->d:Lk6/o;

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lorg/jsoup/parser/b;->e:Z

    .line 12
    .line 13
    iget-object v0, p1, Lk6/o;->a:Lorg/jsoup/parser/Token$TokenType;

    .line 14
    .line 15
    sget-object v1, Lorg/jsoup/parser/Token$TokenType;->e:Lorg/jsoup/parser/Token$TokenType;

    .line 16
    .line 17
    if-ne v0, v1, :cond_0

    .line 18
    .line 19
    check-cast p1, Lk6/m;

    .line 20
    .line 21
    iget-object p1, p1, Lk6/n;->b:Ljava/lang/String;

    .line 22
    .line 23
    iput-object p1, p0, Lorg/jsoup/parser/b;->o:Ljava/lang/String;

    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    sget-object v1, Lorg/jsoup/parser/Token$TokenType;->f:Lorg/jsoup/parser/Token$TokenType;

    .line 27
    .line 28
    if-ne v0, v1, :cond_1

    .line 29
    .line 30
    check-cast p1, Lk6/l;

    .line 31
    .line 32
    iget-object p1, p1, Lk6/n;->j:Lj6/c;

    .line 33
    .line 34
    if-eqz p1, :cond_1

    .line 35
    .line 36
    iget-object p1, p0, Lorg/jsoup/parser/b;->b:Lorg/jsoup/parser/ParseErrorList;

    .line 37
    .line 38
    invoke-virtual {p1}, Lorg/jsoup/parser/ParseErrorList;->a()Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    new-instance v0, Lk6/c;

    .line 45
    .line 46
    iget-object v1, p0, Lorg/jsoup/parser/b;->a:Lk6/a;

    .line 47
    .line 48
    invoke-virtual {v1}, Lk6/a;->pos()I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 53
    .line 54
    .line 55
    iput v1, v0, Lk6/c;->a:I

    .line 56
    .line 57
    const-string v1, "Attributes incorrectly present on end tag"

    .line 58
    .line 59
    iput-object v1, v0, Lk6/c;->b:Ljava/lang/String;

    .line 60
    .line 61
    invoke-virtual {p1, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    :cond_1
    return-void
.end method

.method public final i()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jsoup/parser/b;->n:Lk6/i;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lorg/jsoup/parser/b;->h(Lk6/o;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final j()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jsoup/parser/b;->m:Lk6/j;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lorg/jsoup/parser/b;->h(Lk6/o;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final k()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/jsoup/parser/b;->i:Lk6/n;

    .line 2
    .line 3
    iget-object v1, v0, Lk6/n;->d:Ljava/lang/String;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lk6/n;->o()V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Lorg/jsoup/parser/b;->i:Lk6/n;

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lorg/jsoup/parser/b;->h(Lk6/o;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final l(Lorg/jsoup/parser/TokeniserState;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/jsoup/parser/b;->b:Lorg/jsoup/parser/ParseErrorList;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/jsoup/parser/ParseErrorList;->a()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    new-instance v1, Lk6/c;

    .line 10
    .line 11
    iget-object v2, p0, Lorg/jsoup/parser/b;->a:Lk6/a;

    .line 12
    .line 13
    invoke-virtual {v2}, Lk6/a;->pos()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    const-string v3, "Unexpectedly reached end of file (EOF) in input state [%s]"

    .line 18
    .line 19
    const/4 v4, 0x1

    .line 20
    new-array v4, v4, [Ljava/lang/Object;

    .line 21
    .line 22
    const/4 v5, 0x0

    .line 23
    aput-object p1, v4, v5

    .line 24
    .line 25
    invoke-direct {v1, v2, v3, v4}, Lk6/c;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void
.end method

.method public final m(Lorg/jsoup/parser/TokeniserState;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/jsoup/parser/b;->b:Lorg/jsoup/parser/ParseErrorList;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/jsoup/parser/ParseErrorList;->a()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    new-instance v1, Lk6/c;

    .line 10
    .line 11
    iget-object v2, p0, Lorg/jsoup/parser/b;->a:Lk6/a;

    .line 12
    .line 13
    invoke-virtual {v2}, Lk6/a;->pos()I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    invoke-virtual {v2}, Lk6/a;->current()C

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    const/4 v4, 0x2

    .line 26
    new-array v4, v4, [Ljava/lang/Object;

    .line 27
    .line 28
    const/4 v5, 0x0

    .line 29
    aput-object v2, v4, v5

    .line 30
    .line 31
    const/4 v2, 0x1

    .line 32
    aput-object p1, v4, v2

    .line 33
    .line 34
    const-string p1, "Unexpected character \'%s\' in input state [%s]"

    .line 35
    .line 36
    invoke-direct {v1, v3, p1, v4}, Lk6/c;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    :cond_0
    return-void
.end method

.method public final n()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/jsoup/parser/b;->o:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lorg/jsoup/parser/b;->i:Lk6/n;

    .line 6
    .line 7
    invoke-virtual {v0}, Lk6/n;->m()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lorg/jsoup/parser/b;->o:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    return v0

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    return v0
.end method
