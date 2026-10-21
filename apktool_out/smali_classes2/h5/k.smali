.class public final Lh5/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lh5/k;->a:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public detect()Z
    .locals 3

    .line 1
    const-string v0, " "

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    iget-object v2, p0, Lh5/k;->a:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "eval\\(function\\(p,a,c,k,e,(?:r|d)"

    .line 12
    .line 13
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    return v0
.end method

.method public unpack()Ljava/lang/String;
    .locals 19

    .line 1
    new-instance v0, Ljava/lang/String;

    .line 2
    .line 3
    move-object/from16 v1, p0

    .line 4
    .line 5
    iget-object v2, v1, Lh5/k;->a:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :try_start_0
    const-string v3, "\\}\\s*\\(\'(.*)\',\\s*(.*?),\\s*(\\d+),\\s*\'(.*?)\'\\.split\\(\'\\|\'\\)"

    .line 11
    .line 12
    const/16 v4, 0x20

    .line 13
    .line 14
    invoke-static {v3, v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-eqz v3, :cond_d

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->groupCount()I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    const/4 v4, 0x4

    .line 33
    if-ne v3, v4, :cond_d

    .line 34
    .line 35
    const/4 v3, 0x1

    .line 36
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    const-string v5, "\\\'"

    .line 41
    .line 42
    const-string v6, "\'"

    .line 43
    .line 44
    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    const/4 v5, 0x2

    .line 49
    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    const/4 v6, 0x3

    .line 54
    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v6

    .line 58
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    const-string v4, "\\|"

    .line 63
    .line 64
    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 68
    const/16 v4, 0x24

    .line 69
    .line 70
    :try_start_1
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    move-result v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 74
    goto :goto_0

    .line 75
    :catch_0
    move v5, v4

    .line 76
    :goto_0
    const/4 v7, 0x0

    .line 77
    :try_start_2
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    move-result v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 81
    goto :goto_1

    .line 82
    :catch_1
    move v6, v7

    .line 83
    :goto_1
    :try_start_3
    array-length v8, v0

    .line 84
    if-ne v8, v6, :cond_c

    .line 85
    .line 86
    if-le v5, v4, :cond_4

    .line 87
    .line 88
    const-string v4, "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

    .line 89
    .line 90
    const/16 v6, 0x5f

    .line 91
    .line 92
    const/16 v8, 0x3e

    .line 93
    .line 94
    if-ge v5, v8, :cond_0

    .line 95
    .line 96
    invoke-virtual {v4, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    goto :goto_2

    .line 101
    :cond_0
    const-string v9, " !\"#$%&\\\'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\\\]^_`abcdefghijklmnopqrstuvwxyz{|}~"

    .line 102
    .line 103
    if-le v5, v8, :cond_1

    .line 104
    .line 105
    if-ge v5, v6, :cond_1

    .line 106
    .line 107
    invoke-virtual {v9, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v4

    .line 111
    goto :goto_2

    .line 112
    :cond_1
    if-ne v5, v8, :cond_2

    .line 113
    .line 114
    goto :goto_2

    .line 115
    :cond_2
    if-ne v5, v6, :cond_3

    .line 116
    .line 117
    move-object v4, v9

    .line 118
    goto :goto_2

    .line 119
    :cond_3
    const/4 v4, 0x0

    .line 120
    :goto_2
    new-instance v8, Ljava/util/HashMap;

    .line 121
    .line 122
    invoke-direct {v8, v6}, Ljava/util/HashMap;-><init>(I)V

    .line 123
    .line 124
    .line 125
    move v6, v7

    .line 126
    :goto_3
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 127
    .line 128
    .line 129
    move-result v9

    .line 130
    if-ge v6, v9, :cond_5

    .line 131
    .line 132
    add-int/lit8 v9, v6, 0x1

    .line 133
    .line 134
    invoke-virtual {v4, v6, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v10

    .line 138
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 139
    .line 140
    .line 141
    move-result-object v6

    .line 142
    invoke-virtual {v8, v10, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move v6, v9

    .line 146
    goto :goto_3

    .line 147
    :goto_4
    const/16 v16, 0x0

    .line 148
    .line 149
    goto/16 :goto_c

    .line 150
    .line 151
    :cond_4
    const/4 v4, 0x0

    .line 152
    const/4 v8, 0x0

    .line 153
    :cond_5
    const-string v6, "\\b\\w+\\b"

    .line 154
    .line 155
    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 156
    .line 157
    .line 158
    move-result-object v6

    .line 159
    invoke-virtual {v6, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 160
    .line 161
    .line 162
    move-result-object v6

    .line 163
    new-instance v9, Ljava/lang/StringBuilder;

    .line 164
    .line 165
    invoke-direct {v9, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    move v3, v7

    .line 169
    :goto_5
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    .line 170
    .line 171
    .line 172
    move-result v10

    .line 173
    if-eqz v10, :cond_b

    .line 174
    .line 175
    invoke-virtual {v6, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v10
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 179
    if-nez v4, :cond_6

    .line 180
    .line 181
    :try_start_4
    invoke-static {v10, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 182
    .line 183
    .line 184
    move-result v11
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 185
    move/from16 v17, v3

    .line 186
    .line 187
    :goto_6
    move-object/from16 v18, v8

    .line 188
    .line 189
    const/16 v16, 0x0

    .line 190
    .line 191
    goto :goto_9

    .line 192
    :catch_2
    move/from16 v17, v3

    .line 193
    .line 194
    move v11, v7

    .line 195
    goto :goto_6

    .line 196
    :cond_6
    :try_start_5
    new-instance v11, Ljava/lang/StringBuilder;

    .line 197
    .line 198
    invoke-direct {v11, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    move-result-object v11

    .line 205
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v11

    .line 209
    move v12, v7

    .line 210
    move v13, v12

    .line 211
    :goto_7
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    .line 212
    .line 213
    .line 214
    move-result v14

    .line 215
    if-ge v13, v14, :cond_8

    .line 216
    .line 217
    add-int/lit8 v14, v13, 0x1

    .line 218
    .line 219
    invoke-virtual {v11, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v15

    .line 223
    invoke-virtual {v8, v15}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 224
    .line 225
    .line 226
    move-result v16

    .line 227
    if-eqz v16, :cond_7

    .line 228
    .line 229
    invoke-virtual {v8, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    move-result-object v15

    .line 233
    check-cast v15, Ljava/lang/Integer;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 234
    .line 235
    if-eqz v15, :cond_7

    .line 236
    .line 237
    move/from16 v17, v3

    .line 238
    .line 239
    const/16 v16, 0x0

    .line 240
    .line 241
    int-to-double v2, v12

    .line 242
    move-object/from16 v18, v8

    .line 243
    .line 244
    int-to-double v7, v5

    .line 245
    int-to-double v12, v13

    .line 246
    :try_start_6
    invoke-static {v7, v8, v12, v13}, Ljava/lang/Math;->pow(DD)D

    .line 247
    .line 248
    .line 249
    move-result-wide v7

    .line 250
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    .line 251
    .line 252
    .line 253
    move-result v12

    .line 254
    int-to-double v12, v12

    .line 255
    mul-double/2addr v7, v12

    .line 256
    add-double/2addr v7, v2

    .line 257
    double-to-int v12, v7

    .line 258
    goto :goto_8

    .line 259
    :cond_7
    move/from16 v17, v3

    .line 260
    .line 261
    move-object/from16 v18, v8

    .line 262
    .line 263
    const/16 v16, 0x0

    .line 264
    .line 265
    :goto_8
    move v13, v14

    .line 266
    move/from16 v3, v17

    .line 267
    .line 268
    move-object/from16 v8, v18

    .line 269
    .line 270
    const/4 v7, 0x0

    .line 271
    goto :goto_7

    .line 272
    :cond_8
    move/from16 v17, v3

    .line 273
    .line 274
    move-object/from16 v18, v8

    .line 275
    .line 276
    const/16 v16, 0x0

    .line 277
    .line 278
    move v11, v12

    .line 279
    :goto_9
    array-length v2, v0

    .line 280
    if-ge v11, v2, :cond_9

    .line 281
    .line 282
    aget-object v2, v0, v11

    .line 283
    .line 284
    goto :goto_a

    .line 285
    :catch_3
    move-exception v0

    .line 286
    goto :goto_c

    .line 287
    :cond_9
    move-object/from16 v2, v16

    .line 288
    .line 289
    :goto_a
    if-eqz v2, :cond_a

    .line 290
    .line 291
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 292
    .line 293
    .line 294
    move-result v3

    .line 295
    if-lez v3, :cond_a

    .line 296
    .line 297
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->start()I

    .line 298
    .line 299
    .line 300
    move-result v3

    .line 301
    add-int v3, v3, v17

    .line 302
    .line 303
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->end()I

    .line 304
    .line 305
    .line 306
    move-result v7

    .line 307
    add-int v7, v7, v17

    .line 308
    .line 309
    invoke-virtual {v9, v3, v7, v2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    .line 311
    .line 312
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 313
    .line 314
    .line 315
    move-result v2

    .line 316
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    .line 317
    .line 318
    .line 319
    move-result v3

    .line 320
    sub-int/2addr v2, v3

    .line 321
    add-int v3, v2, v17

    .line 322
    .line 323
    goto :goto_b

    .line 324
    :cond_a
    move/from16 v3, v17

    .line 325
    .line 326
    :goto_b
    move-object/from16 v8, v18

    .line 327
    .line 328
    const/4 v7, 0x0

    .line 329
    goto/16 :goto_5

    .line 330
    .line 331
    :catch_4
    move-exception v0

    .line 332
    goto/16 :goto_4

    .line 333
    .line 334
    :cond_b
    const/16 v16, 0x0

    .line 335
    .line 336
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object v0

    .line 340
    return-object v0

    .line 341
    :cond_c
    const/16 v16, 0x0

    .line 342
    .line 343
    new-instance v0, Ljava/lang/Exception;

    .line 344
    .line 345
    const-string v2, "Unknown p.a.c.k.e.r. encoding"

    .line 346
    .line 347
    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 348
    .line 349
    .line 350
    throw v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 351
    :cond_d
    const/16 v16, 0x0

    .line 352
    .line 353
    goto :goto_d

    .line 354
    :goto_c
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 355
    .line 356
    .line 357
    :goto_d
    return-object v16
.end method
