.class public final Lh4/u;
.super Landroid/os/Handler;
.source "SourceFile"


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 18

    .line 1
    sget-object v0, Lh4/w;->C:Lh4/p;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    sget-object v1, Lh4/w;->E:Lh4/r;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Ljava/util/ArrayList;

    .line 16
    .line 17
    move-object/from16 v2, p1

    .line 18
    .line 19
    iget v2, v2, Landroid/os/Message;->what:I

    .line 20
    .line 21
    const/4 v3, 0x1

    .line 22
    const-wide/16 v4, 0x0

    .line 23
    .line 24
    if-eqz v2, :cond_2

    .line 25
    .line 26
    if-eq v2, v3, :cond_1

    .line 27
    .line 28
    :cond_0
    move-object/from16 v2, p0

    .line 29
    .line 30
    goto/16 :goto_a

    .line 31
    .line 32
    :cond_1
    move v7, v3

    .line 33
    goto :goto_4

    .line 34
    :cond_2
    sget-object v2, Lh4/w;->D:Lh4/q;

    .line 35
    .line 36
    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    check-cast v2, Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 43
    .line 44
    .line 45
    move-result v7

    .line 46
    if-gtz v7, :cond_4

    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 49
    .line 50
    .line 51
    move-result v7

    .line 52
    if-lez v7, :cond_3

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_3
    move v7, v3

    .line 56
    goto :goto_1

    .line 57
    :cond_4
    :goto_0
    const/4 v7, 0x0

    .line 58
    :cond_5
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 59
    .line 60
    .line 61
    move-result v8

    .line 62
    if-lez v8, :cond_7

    .line 63
    .line 64
    invoke-virtual {v2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v8

    .line 68
    check-cast v8, Ljava/util/ArrayList;

    .line 69
    .line 70
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 74
    .line 75
    .line 76
    move-result v9

    .line 77
    const/4 v10, 0x0

    .line 78
    :goto_2
    if-ge v10, v9, :cond_5

    .line 79
    .line 80
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v11

    .line 84
    check-cast v11, Lh4/w;

    .line 85
    .line 86
    iget-wide v12, v11, Lh4/w;->v:J

    .line 87
    .line 88
    cmp-long v12, v12, v4

    .line 89
    .line 90
    if-nez v12, :cond_6

    .line 91
    .line 92
    invoke-static {v11}, Lh4/w;->a(Lh4/w;)V

    .line 93
    .line 94
    .line 95
    goto :goto_3

    .line 96
    :cond_6
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    :goto_3
    add-int/lit8 v10, v10, 0x1

    .line 100
    .line 101
    goto :goto_2

    .line 102
    :cond_7
    :goto_4
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    .line 103
    .line 104
    .line 105
    move-result-wide v8

    .line 106
    sget-object v2, Lh4/w;->G:Lh4/t;

    .line 107
    .line 108
    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    check-cast v2, Ljava/util/ArrayList;

    .line 113
    .line 114
    sget-object v10, Lh4/w;->F:Lh4/s;

    .line 115
    .line 116
    invoke-virtual {v10}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v10

    .line 120
    check-cast v10, Ljava/util/ArrayList;

    .line 121
    .line 122
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 123
    .line 124
    .line 125
    move-result v11

    .line 126
    const/4 v12, 0x0

    .line 127
    :goto_5
    if-ge v12, v11, :cond_a

    .line 128
    .line 129
    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v13

    .line 133
    check-cast v13, Lh4/w;

    .line 134
    .line 135
    iget-boolean v14, v13, Lh4/w;->p:Z

    .line 136
    .line 137
    if-nez v14, :cond_8

    .line 138
    .line 139
    iput-boolean v3, v13, Lh4/w;->p:Z

    .line 140
    .line 141
    iput-wide v8, v13, Lh4/w;->q:J

    .line 142
    .line 143
    move/from16 v16, v7

    .line 144
    .line 145
    goto :goto_6

    .line 146
    :cond_8
    iget-wide v14, v13, Lh4/w;->q:J

    .line 147
    .line 148
    sub-long v14, v8, v14

    .line 149
    .line 150
    move/from16 v16, v7

    .line 151
    .line 152
    iget-wide v6, v13, Lh4/w;->v:J

    .line 153
    .line 154
    cmp-long v17, v14, v6

    .line 155
    .line 156
    if-lez v17, :cond_9

    .line 157
    .line 158
    sub-long/2addr v14, v6

    .line 159
    sub-long v6, v8, v14

    .line 160
    .line 161
    iput-wide v6, v13, Lh4/w;->e:J

    .line 162
    .line 163
    iput v3, v13, Lh4/w;->r:I

    .line 164
    .line 165
    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    :cond_9
    :goto_6
    add-int/lit8 v12, v12, 0x1

    .line 169
    .line 170
    move/from16 v7, v16

    .line 171
    .line 172
    goto :goto_5

    .line 173
    :cond_a
    move/from16 v16, v7

    .line 174
    .line 175
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 176
    .line 177
    .line 178
    move-result v6

    .line 179
    if-lez v6, :cond_c

    .line 180
    .line 181
    const/4 v7, 0x0

    .line 182
    :goto_7
    if-ge v7, v6, :cond_b

    .line 183
    .line 184
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v11

    .line 188
    check-cast v11, Lh4/w;

    .line 189
    .line 190
    invoke-static {v11}, Lh4/w;->a(Lh4/w;)V

    .line 191
    .line 192
    .line 193
    iput-boolean v3, v11, Lh4/w;->s:Z

    .line 194
    .line 195
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 196
    .line 197
    .line 198
    add-int/lit8 v7, v7, 0x1

    .line 199
    .line 200
    goto :goto_7

    .line 201
    :cond_b
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 202
    .line 203
    .line 204
    :cond_c
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 205
    .line 206
    .line 207
    move-result v2

    .line 208
    const/4 v6, 0x0

    .line 209
    :goto_8
    if-ge v6, v2, :cond_f

    .line 210
    .line 211
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object v7

    .line 215
    check-cast v7, Lh4/w;

    .line 216
    .line 217
    invoke-virtual {v7, v8, v9}, Lh4/w;->b(J)Z

    .line 218
    .line 219
    .line 220
    move-result v11

    .line 221
    if-eqz v11, :cond_d

    .line 222
    .line 223
    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    .line 225
    .line 226
    :cond_d
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 227
    .line 228
    .line 229
    move-result v11

    .line 230
    if-ne v11, v2, :cond_e

    .line 231
    .line 232
    add-int/lit8 v6, v6, 0x1

    .line 233
    .line 234
    goto :goto_8

    .line 235
    :cond_e
    add-int/lit8 v2, v2, -0x1

    .line 236
    .line 237
    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 238
    .line 239
    .line 240
    goto :goto_8

    .line 241
    :cond_f
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 242
    .line 243
    .line 244
    move-result v2

    .line 245
    if-lez v2, :cond_11

    .line 246
    .line 247
    const/4 v6, 0x0

    .line 248
    :goto_9
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 249
    .line 250
    .line 251
    move-result v2

    .line 252
    if-ge v6, v2, :cond_10

    .line 253
    .line 254
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 255
    .line 256
    .line 257
    move-result-object v2

    .line 258
    check-cast v2, Lh4/w;

    .line 259
    .line 260
    invoke-virtual {v2}, Lh4/w;->c()V

    .line 261
    .line 262
    .line 263
    add-int/lit8 v6, v6, 0x1

    .line 264
    .line 265
    goto :goto_9

    .line 266
    :cond_10
    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 267
    .line 268
    .line 269
    :cond_11
    if-eqz v16, :cond_0

    .line 270
    .line 271
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 272
    .line 273
    .line 274
    move-result v0

    .line 275
    if-eqz v0, :cond_12

    .line 276
    .line 277
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 278
    .line 279
    .line 280
    move-result v0

    .line 281
    if-nez v0, :cond_0

    .line 282
    .line 283
    :cond_12
    sget-wide v0, Lh4/w;->I:J

    .line 284
    .line 285
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    .line 286
    .line 287
    .line 288
    move-result-wide v6

    .line 289
    sub-long/2addr v6, v8

    .line 290
    sub-long/2addr v0, v6

    .line 291
    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    .line 292
    .line 293
    .line 294
    move-result-wide v0

    .line 295
    move-object/from16 v2, p0

    .line 296
    .line 297
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 298
    .line 299
    .line 300
    :goto_a
    return-void
.end method
