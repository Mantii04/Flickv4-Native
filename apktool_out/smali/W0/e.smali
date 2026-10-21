.class public final LW0/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:Ljava/lang/Integer;

.field public final d:Ljava/lang/Integer;

.field public final e:F

.field public final f:Z

.field public final g:Z

.field public final h:Z

.field public final i:Z

.field public final j:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/Integer;FZZZZI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LW0/e;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput p2, p0, LW0/e;->b:I

    .line 7
    .line 8
    iput-object p3, p0, LW0/e;->c:Ljava/lang/Integer;

    .line 9
    .line 10
    iput-object p4, p0, LW0/e;->d:Ljava/lang/Integer;

    .line 11
    .line 12
    iput p5, p0, LW0/e;->e:F

    .line 13
    .line 14
    iput-boolean p6, p0, LW0/e;->f:Z

    .line 15
    .line 16
    iput-boolean p7, p0, LW0/e;->g:Z

    .line 17
    .line 18
    iput-boolean p8, p0, LW0/e;->h:Z

    .line 19
    .line 20
    iput-boolean p9, p0, LW0/e;->i:Z

    .line 21
    .line 22
    iput p10, p0, LW0/e;->j:I

    .line 23
    .line 24
    return-void
.end method

.method public static a(Ljava/lang/String;)I
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    goto :goto_0

    .line 14
    :pswitch_0
    const/4 v1, 0x1

    .line 15
    :goto_0
    if-eqz v1, :cond_0

    .line 16
    .line 17
    return v0

    .line 18
    :catch_0
    :cond_0
    const-string v0, "Ignoring unknown alignment: "

    .line 19
    .line 20
    const-string v1, "SsaStyle"

    .line 21
    .line 22
    invoke-static {v0, p0, v1}, LA/i;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const/4 p0, -0x1

    .line 26
    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 3
    .line 4
    .line 5
    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    const/4 v1, 0x1

    .line 7
    if-eq p0, v1, :cond_1

    .line 8
    .line 9
    const/4 v2, -0x1

    .line 10
    if-ne p0, v2, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    return v0

    .line 14
    :cond_1
    :goto_0
    return v1

    .line 15
    :catch_0
    move-exception v1

    .line 16
    new-instance v2, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string v3, "Failed to parse boolean value: \'"

    .line 19
    .line 20
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string p0, "\'"

    .line 27
    .line 28
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    const-string v2, "SsaStyle"

    .line 36
    .line 37
    invoke-static {v2, p0, v1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 38
    .line 39
    .line 40
    return v0
.end method

.method public static fromStyleLine(Ljava/lang/String;LW0/c;)LW0/e;
    .locals 23

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    const/4 v3, 0x1

    .line 6
    const/4 v4, 0x0

    .line 7
    const/4 v5, 0x3

    .line 8
    const-string v6, "\'"

    .line 9
    .line 10
    const-string v0, "Style:"

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    invoke-static {v0}, LP3/v;->checkArgument(Z)V

    .line 17
    .line 18
    .line 19
    const/4 v0, 0x6

    .line 20
    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v7, ","

    .line 25
    .line 26
    invoke-static {v0, v7}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v7

    .line 30
    array-length v0, v7

    .line 31
    iget v8, v2, LW0/c;->k:I

    .line 32
    .line 33
    const/4 v9, 0x0

    .line 34
    const-string v10, "SsaStyle"

    .line 35
    .line 36
    if-eq v0, v8, :cond_0

    .line 37
    .line 38
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    array-length v2, v7

    .line 43
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    new-array v5, v5, [Ljava/lang/Object;

    .line 48
    .line 49
    aput-object v0, v5, v4

    .line 50
    .line 51
    aput-object v2, v5, v3

    .line 52
    .line 53
    const/4 v0, 0x2

    .line 54
    aput-object v1, v5, v0

    .line 55
    .line 56
    const-string v0, "Skipping malformed \'Style:\' line (expected %s values, found %s): \'%s\'"

    .line 57
    .line 58
    invoke-static {v0, v5}, Landroidx/media3/common/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-static {v10, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    return-object v9

    .line 66
    :cond_0
    :try_start_0
    new-instance v11, LW0/e;

    .line 67
    .line 68
    iget v0, v2, LW0/c;->a:I

    .line 69
    .line 70
    aget-object v0, v7, v0

    .line 71
    .line 72
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v12

    .line 76
    iget v0, v2, LW0/c;->b:I

    .line 77
    .line 78
    const/4 v8, -0x1

    .line 79
    if-eq v0, v8, :cond_1

    .line 80
    .line 81
    aget-object v0, v7, v0

    .line 82
    .line 83
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-static {v0}, LW0/e;->a(Ljava/lang/String;)I

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    move v13, v0

    .line 92
    goto :goto_0

    .line 93
    :catch_0
    move-exception v0

    .line 94
    move-object/from16 v22, v9

    .line 95
    .line 96
    goto/16 :goto_d

    .line 97
    .line 98
    :cond_1
    move v13, v8

    .line 99
    :goto_0
    iget v0, v2, LW0/c;->c:I

    .line 100
    .line 101
    if-eq v0, v8, :cond_2

    .line 102
    .line 103
    aget-object v0, v7, v0

    .line 104
    .line 105
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-static {v0}, LW0/e;->parseColor(Ljava/lang/String;)Ljava/lang/Integer;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    move-object v14, v0

    .line 114
    goto :goto_1

    .line 115
    :cond_2
    move-object v14, v9

    .line 116
    :goto_1
    iget v0, v2, LW0/c;->d:I

    .line 117
    .line 118
    if-eq v0, v8, :cond_3

    .line 119
    .line 120
    aget-object v0, v7, v0

    .line 121
    .line 122
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-static {v0}, LW0/e;->parseColor(Ljava/lang/String;)Ljava/lang/Integer;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    move-object v15, v0

    .line 131
    goto :goto_2

    .line 132
    :cond_3
    move-object v15, v9

    .line 133
    :goto_2
    iget v0, v2, LW0/c;->e:I

    .line 134
    .line 135
    const v16, -0x800001

    .line 136
    .line 137
    .line 138
    if-eq v0, v8, :cond_4

    .line 139
    .line 140
    aget-object v0, v7, v0

    .line 141
    .line 142
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v4
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    :try_start_1
    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 147
    .line 148
    .line 149
    move-result v16
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 150
    goto :goto_3

    .line 151
    :catch_1
    move-exception v0

    .line 152
    move-object/from16 v22, v9

    .line 153
    .line 154
    :try_start_2
    new-instance v9, Ljava/lang/StringBuilder;

    .line 155
    .line 156
    const-string v5, "Failed to parse font size: \'"

    .line 157
    .line 158
    invoke-direct {v9, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v4

    .line 171
    invoke-static {v10, v4, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 172
    .line 173
    .line 174
    goto :goto_4

    .line 175
    :cond_4
    :goto_3
    move-object/from16 v22, v9

    .line 176
    .line 177
    :goto_4
    iget v0, v2, LW0/c;->f:I

    .line 178
    .line 179
    if-eq v0, v8, :cond_5

    .line 180
    .line 181
    aget-object v0, v7, v0

    .line 182
    .line 183
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    invoke-static {v0}, LW0/e;->b(Ljava/lang/String;)Z

    .line 188
    .line 189
    .line 190
    move-result v0

    .line 191
    if-eqz v0, :cond_5

    .line 192
    .line 193
    move/from16 v17, v3

    .line 194
    .line 195
    :goto_5
    const/4 v4, 0x0

    .line 196
    goto :goto_6

    .line 197
    :catch_2
    move-exception v0

    .line 198
    goto/16 :goto_d

    .line 199
    .line 200
    :cond_5
    const/16 v17, 0x0

    .line 201
    .line 202
    goto :goto_5

    .line 203
    :goto_6
    iget v0, v2, LW0/c;->g:I

    .line 204
    .line 205
    if-eq v0, v8, :cond_6

    .line 206
    .line 207
    aget-object v0, v7, v0

    .line 208
    .line 209
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    invoke-static {v0}, LW0/e;->b(Ljava/lang/String;)Z

    .line 214
    .line 215
    .line 216
    move-result v0

    .line 217
    if-eqz v0, :cond_6

    .line 218
    .line 219
    move/from16 v18, v3

    .line 220
    .line 221
    :goto_7
    const/4 v5, 0x3

    .line 222
    goto :goto_8

    .line 223
    :cond_6
    move/from16 v18, v4

    .line 224
    .line 225
    goto :goto_7

    .line 226
    :goto_8
    iget v0, v2, LW0/c;->h:I

    .line 227
    .line 228
    if-eq v0, v8, :cond_7

    .line 229
    .line 230
    aget-object v0, v7, v0

    .line 231
    .line 232
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    invoke-static {v0}, LW0/e;->b(Ljava/lang/String;)Z

    .line 237
    .line 238
    .line 239
    move-result v0

    .line 240
    if-eqz v0, :cond_7

    .line 241
    .line 242
    move/from16 v19, v3

    .line 243
    .line 244
    goto :goto_9

    .line 245
    :cond_7
    move/from16 v19, v4

    .line 246
    .line 247
    :goto_9
    iget v0, v2, LW0/c;->i:I

    .line 248
    .line 249
    if-eq v0, v8, :cond_8

    .line 250
    .line 251
    aget-object v0, v7, v0

    .line 252
    .line 253
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v0

    .line 257
    invoke-static {v0}, LW0/e;->b(Ljava/lang/String;)Z

    .line 258
    .line 259
    .line 260
    move-result v0

    .line 261
    if-eqz v0, :cond_8

    .line 262
    .line 263
    move/from16 v20, v3

    .line 264
    .line 265
    goto :goto_a

    .line 266
    :cond_8
    move/from16 v20, v4

    .line 267
    .line 268
    :goto_a
    iget v0, v2, LW0/c;->j:I

    .line 269
    .line 270
    if-eq v0, v8, :cond_a

    .line 271
    .line 272
    aget-object v0, v7, v0

    .line 273
    .line 274
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v0
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    .line 278
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v2

    .line 282
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 283
    .line 284
    .line 285
    move-result v2
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    .line 286
    if-eq v2, v3, :cond_9

    .line 287
    .line 288
    if-eq v2, v5, :cond_9

    .line 289
    .line 290
    goto :goto_b

    .line 291
    :cond_9
    move v8, v2

    .line 292
    goto :goto_c

    .line 293
    :catch_3
    :goto_b
    :try_start_4
    new-instance v2, Ljava/lang/StringBuilder;

    .line 294
    .line 295
    const-string v3, "Ignoring unknown BorderStyle: "

    .line 296
    .line 297
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 298
    .line 299
    .line 300
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v0

    .line 307
    invoke-static {v10, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    .line 309
    .line 310
    :cond_a
    :goto_c
    move/from16 v21, v8

    .line 311
    .line 312
    invoke-direct/range {v11 .. v21}, LW0/e;-><init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/Integer;FZZZZI)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2

    .line 313
    .line 314
    .line 315
    return-object v11

    .line 316
    :goto_d
    new-instance v2, Ljava/lang/StringBuilder;

    .line 317
    .line 318
    const-string v3, "Skipping malformed \'Style:\' line: \'"

    .line 319
    .line 320
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 321
    .line 322
    .line 323
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    .line 325
    .line 326
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    .line 328
    .line 329
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v1

    .line 333
    invoke-static {v10, v1, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 334
    .line 335
    .line 336
    return-object v22
.end method

.method public static parseColor(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 8

    .line 1
    :try_start_0
    const-string v0, "&H"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x10

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x2

    .line 12
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {v0, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    .line 17
    .line 18
    .line 19
    move-result-wide v2

    .line 20
    goto :goto_0

    .line 21
    :catch_0
    move-exception v0

    .line 22
    goto :goto_2

    .line 23
    :cond_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 24
    .line 25
    .line 26
    move-result-wide v2

    .line 27
    :goto_0
    const-wide v4, 0xffffffffL

    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    cmp-long v0, v2, v4

    .line 33
    .line 34
    if-gtz v0, :cond_1

    .line 35
    .line 36
    const/4 v0, 0x1

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    const/4 v0, 0x0

    .line 39
    :goto_1
    invoke-static {v0}, LP3/v;->checkArgument(Z)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .line 41
    .line 42
    const/16 p0, 0x18

    .line 43
    .line 44
    shr-long v4, v2, p0

    .line 45
    .line 46
    const-wide/16 v6, 0xff

    .line 47
    .line 48
    and-long/2addr v4, v6

    .line 49
    xor-long/2addr v4, v6

    .line 50
    invoke-static {v4, v5}, Lcom/google/common/primitives/a;->checkedCast(J)I

    .line 51
    .line 52
    .line 53
    move-result p0

    .line 54
    shr-long v0, v2, v1

    .line 55
    .line 56
    and-long/2addr v0, v6

    .line 57
    invoke-static {v0, v1}, Lcom/google/common/primitives/a;->checkedCast(J)I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    const/16 v1, 0x8

    .line 62
    .line 63
    shr-long v4, v2, v1

    .line 64
    .line 65
    and-long/2addr v4, v6

    .line 66
    invoke-static {v4, v5}, Lcom/google/common/primitives/a;->checkedCast(J)I

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    and-long/2addr v2, v6

    .line 71
    invoke-static {v2, v3}, Lcom/google/common/primitives/a;->checkedCast(J)I

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    invoke-static {p0, v2, v1, v0}, Landroid/graphics/Color;->argb(IIII)I

    .line 76
    .line 77
    .line 78
    move-result p0

    .line 79
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    return-object p0

    .line 84
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    const-string v2, "Failed to parse color expression: \'"

    .line 87
    .line 88
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    const-string p0, "\'"

    .line 95
    .line 96
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    const-string v1, "SsaStyle"

    .line 104
    .line 105
    invoke-static {v1, p0, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 106
    .line 107
    .line 108
    const/4 p0, 0x0

    .line 109
    return-object p0
.end method
