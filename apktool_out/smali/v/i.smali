.class public abstract Lv/i;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static findDependents(Lu/e;ILjava/util/ArrayList;Lv/m;)Lv/m;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu/e;",
            "I",
            "Ljava/util/ArrayList<",
            "Lv/m;",
            ">;",
            "Lv/m;",
            ")",
            "Lv/m;"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget v0, p0, Lu/e;->o0:I

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget v0, p0, Lu/e;->p0:I

    .line 7
    .line 8
    :goto_0
    const/4 v1, 0x0

    .line 9
    const/4 v2, -0x1

    .line 10
    if-eq v0, v2, :cond_4

    .line 11
    .line 12
    if-eqz p3, :cond_1

    .line 13
    .line 14
    iget v3, p3, Lv/m;->b:I

    .line 15
    .line 16
    if-eq v0, v3, :cond_4

    .line 17
    .line 18
    :cond_1
    move v3, v1

    .line 19
    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    if-ge v3, v4, :cond_5

    .line 24
    .line 25
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    check-cast v4, Lv/m;

    .line 30
    .line 31
    invoke-virtual {v4}, Lv/m;->getId()I

    .line 32
    .line 33
    .line 34
    move-result v5

    .line 35
    if-ne v5, v0, :cond_3

    .line 36
    .line 37
    if-eqz p3, :cond_2

    .line 38
    .line 39
    invoke-virtual {p3, p1, v4}, Lv/m;->moveTo(ILv/m;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    :cond_2
    move-object p3, v4

    .line 46
    goto :goto_2

    .line 47
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_4
    if-eq v0, v2, :cond_5

    .line 51
    .line 52
    return-object p3

    .line 53
    :cond_5
    :goto_2
    if-nez p3, :cond_9

    .line 54
    .line 55
    instance-of v0, p0, Lu/k;

    .line 56
    .line 57
    if-eqz v0, :cond_7

    .line 58
    .line 59
    move-object v0, p0

    .line 60
    check-cast v0, Lu/k;

    .line 61
    .line 62
    invoke-virtual {v0, p1}, Lu/k;->findGroupInDependents(I)I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-eq v0, v2, :cond_7

    .line 67
    .line 68
    move v2, v1

    .line 69
    :goto_3
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 70
    .line 71
    .line 72
    move-result v3

    .line 73
    if-ge v2, v3, :cond_7

    .line 74
    .line 75
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    check-cast v3, Lv/m;

    .line 80
    .line 81
    invoke-virtual {v3}, Lv/m;->getId()I

    .line 82
    .line 83
    .line 84
    move-result v4

    .line 85
    if-ne v4, v0, :cond_6

    .line 86
    .line 87
    move-object p3, v3

    .line 88
    goto :goto_4

    .line 89
    :cond_6
    add-int/lit8 v2, v2, 0x1

    .line 90
    .line 91
    goto :goto_3

    .line 92
    :cond_7
    :goto_4
    if-nez p3, :cond_8

    .line 93
    .line 94
    new-instance p3, Lv/m;

    .line 95
    .line 96
    invoke-direct {p3, p1}, Lv/m;-><init>(I)V

    .line 97
    .line 98
    .line 99
    :cond_8
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    :cond_9
    invoke-virtual {p3, p0}, Lv/m;->add(Lu/e;)Z

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    if-eqz v0, :cond_d

    .line 107
    .line 108
    instance-of v0, p0, Lu/i;

    .line 109
    .line 110
    if-eqz v0, :cond_b

    .line 111
    .line 112
    move-object v0, p0

    .line 113
    check-cast v0, Lu/i;

    .line 114
    .line 115
    invoke-virtual {v0}, Lu/i;->getAnchor()Lu/d;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    invoke-virtual {v0}, Lu/i;->getOrientation()I

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    if-nez v0, :cond_a

    .line 124
    .line 125
    const/4 v1, 0x1

    .line 126
    :cond_a
    invoke-virtual {v2, v1, p2, p3}, Lu/d;->findDependents(ILjava/util/ArrayList;Lv/m;)V

    .line 127
    .line 128
    .line 129
    :cond_b
    if-nez p1, :cond_c

    .line 130
    .line 131
    invoke-virtual {p3}, Lv/m;->getId()I

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    iput v0, p0, Lu/e;->o0:I

    .line 136
    .line 137
    iget-object v0, p0, Lu/e;->I:Lu/d;

    .line 138
    .line 139
    invoke-virtual {v0, p1, p2, p3}, Lu/d;->findDependents(ILjava/util/ArrayList;Lv/m;)V

    .line 140
    .line 141
    .line 142
    iget-object v0, p0, Lu/e;->K:Lu/d;

    .line 143
    .line 144
    invoke-virtual {v0, p1, p2, p3}, Lu/d;->findDependents(ILjava/util/ArrayList;Lv/m;)V

    .line 145
    .line 146
    .line 147
    goto :goto_5

    .line 148
    :cond_c
    invoke-virtual {p3}, Lv/m;->getId()I

    .line 149
    .line 150
    .line 151
    move-result v0

    .line 152
    iput v0, p0, Lu/e;->p0:I

    .line 153
    .line 154
    iget-object v0, p0, Lu/e;->J:Lu/d;

    .line 155
    .line 156
    invoke-virtual {v0, p1, p2, p3}, Lu/d;->findDependents(ILjava/util/ArrayList;Lv/m;)V

    .line 157
    .line 158
    .line 159
    iget-object v0, p0, Lu/e;->M:Lu/d;

    .line 160
    .line 161
    invoke-virtual {v0, p1, p2, p3}, Lu/d;->findDependents(ILjava/util/ArrayList;Lv/m;)V

    .line 162
    .line 163
    .line 164
    iget-object v0, p0, Lu/e;->L:Lu/d;

    .line 165
    .line 166
    invoke-virtual {v0, p1, p2, p3}, Lu/d;->findDependents(ILjava/util/ArrayList;Lv/m;)V

    .line 167
    .line 168
    .line 169
    :goto_5
    iget-object p0, p0, Lu/e;->P:Lu/d;

    .line 170
    .line 171
    invoke-virtual {p0, p1, p2, p3}, Lu/d;->findDependents(ILjava/util/ArrayList;Lv/m;)V

    .line 172
    .line 173
    .line 174
    :cond_d
    return-object p3
.end method

.method public static simpleSolvingPass(Lu/f;Lv/c;)Z
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual {v0}, Lu/n;->getChildren()Ljava/util/ArrayList;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const/4 v3, 0x0

    .line 12
    move v4, v3

    .line 13
    :goto_0
    if-ge v4, v2, :cond_2

    .line 14
    .line 15
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v5

    .line 19
    check-cast v5, Lu/e;

    .line 20
    .line 21
    invoke-virtual {v0}, Lu/e;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 22
    .line 23
    .line 24
    move-result-object v6

    .line 25
    invoke-virtual {v0}, Lu/e;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 26
    .line 27
    .line 28
    move-result-object v7

    .line 29
    invoke-virtual {v5}, Lu/e;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 30
    .line 31
    .line 32
    move-result-object v8

    .line 33
    invoke-virtual {v5}, Lu/e;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 34
    .line 35
    .line 36
    move-result-object v9

    .line 37
    invoke-static {v6, v7, v8, v9}, Lv/i;->validInGroup(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)Z

    .line 38
    .line 39
    .line 40
    move-result v6

    .line 41
    if-nez v6, :cond_0

    .line 42
    .line 43
    :goto_1
    move/from16 v16, v3

    .line 44
    .line 45
    goto/16 :goto_1b

    .line 46
    .line 47
    :cond_0
    instance-of v5, v5, Lu/h;

    .line 48
    .line 49
    if-eqz v5, :cond_1

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    move v5, v3

    .line 56
    const/4 v6, 0x0

    .line 57
    const/4 v7, 0x0

    .line 58
    const/4 v8, 0x0

    .line 59
    const/4 v9, 0x0

    .line 60
    const/4 v10, 0x0

    .line 61
    const/4 v11, 0x0

    .line 62
    :goto_2
    if-ge v5, v2, :cond_13

    .line 63
    .line 64
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v13

    .line 68
    check-cast v13, Lu/e;

    .line 69
    .line 70
    invoke-virtual {v0}, Lu/e;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 71
    .line 72
    .line 73
    move-result-object v14

    .line 74
    invoke-virtual {v0}, Lu/e;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 75
    .line 76
    .line 77
    move-result-object v15

    .line 78
    invoke-virtual {v13}, Lu/e;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    invoke-virtual {v13}, Lu/e;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 83
    .line 84
    .line 85
    move-result-object v12

    .line 86
    invoke-static {v14, v15, v4, v12}, Lv/i;->validInGroup(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)Z

    .line 87
    .line 88
    .line 89
    move-result v4

    .line 90
    if-nez v4, :cond_3

    .line 91
    .line 92
    iget-object v4, v0, Lu/f;->L0:Lv/b;

    .line 93
    .line 94
    move-object/from16 v12, p1

    .line 95
    .line 96
    invoke-static {v3, v13, v12, v4, v3}, Lu/f;->measure(ILu/e;Lv/c;Lv/b;I)Z

    .line 97
    .line 98
    .line 99
    goto :goto_3

    .line 100
    :cond_3
    move-object/from16 v12, p1

    .line 101
    .line 102
    :goto_3
    instance-of v4, v13, Lu/i;

    .line 103
    .line 104
    if-eqz v4, :cond_7

    .line 105
    .line 106
    move-object v14, v13

    .line 107
    check-cast v14, Lu/i;

    .line 108
    .line 109
    invoke-virtual {v14}, Lu/i;->getOrientation()I

    .line 110
    .line 111
    .line 112
    move-result v15

    .line 113
    if-nez v15, :cond_5

    .line 114
    .line 115
    if-nez v8, :cond_4

    .line 116
    .line 117
    new-instance v8, Ljava/util/ArrayList;

    .line 118
    .line 119
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 120
    .line 121
    .line 122
    :cond_4
    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    :cond_5
    invoke-virtual {v14}, Lu/i;->getOrientation()I

    .line 126
    .line 127
    .line 128
    move-result v15

    .line 129
    const/4 v3, 0x1

    .line 130
    if-ne v15, v3, :cond_7

    .line 131
    .line 132
    if-nez v6, :cond_6

    .line 133
    .line 134
    new-instance v6, Ljava/util/ArrayList;

    .line 135
    .line 136
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 137
    .line 138
    .line 139
    :cond_6
    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    :cond_7
    instance-of v3, v13, Lu/k;

    .line 143
    .line 144
    if-eqz v3, :cond_e

    .line 145
    .line 146
    instance-of v3, v13, Lu/a;

    .line 147
    .line 148
    if-eqz v3, :cond_b

    .line 149
    .line 150
    move-object v3, v13

    .line 151
    check-cast v3, Lu/a;

    .line 152
    .line 153
    invoke-virtual {v3}, Lu/a;->getOrientation()I

    .line 154
    .line 155
    .line 156
    move-result v14

    .line 157
    if-nez v14, :cond_9

    .line 158
    .line 159
    if-nez v7, :cond_8

    .line 160
    .line 161
    new-instance v7, Ljava/util/ArrayList;

    .line 162
    .line 163
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 164
    .line 165
    .line 166
    :cond_8
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    :cond_9
    invoke-virtual {v3}, Lu/a;->getOrientation()I

    .line 170
    .line 171
    .line 172
    move-result v14

    .line 173
    const/4 v15, 0x1

    .line 174
    if-ne v14, v15, :cond_e

    .line 175
    .line 176
    if-nez v9, :cond_a

    .line 177
    .line 178
    new-instance v9, Ljava/util/ArrayList;

    .line 179
    .line 180
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 181
    .line 182
    .line 183
    :cond_a
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    goto :goto_4

    .line 187
    :cond_b
    move-object v3, v13

    .line 188
    check-cast v3, Lu/k;

    .line 189
    .line 190
    if-nez v7, :cond_c

    .line 191
    .line 192
    new-instance v7, Ljava/util/ArrayList;

    .line 193
    .line 194
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 195
    .line 196
    .line 197
    :cond_c
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    .line 199
    .line 200
    if-nez v9, :cond_d

    .line 201
    .line 202
    new-instance v9, Ljava/util/ArrayList;

    .line 203
    .line 204
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 205
    .line 206
    .line 207
    :cond_d
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    .line 209
    .line 210
    :cond_e
    :goto_4
    iget-object v3, v13, Lu/e;->I:Lu/d;

    .line 211
    .line 212
    iget-object v3, v3, Lu/d;->f:Lu/d;

    .line 213
    .line 214
    if-nez v3, :cond_10

    .line 215
    .line 216
    iget-object v3, v13, Lu/e;->K:Lu/d;

    .line 217
    .line 218
    iget-object v3, v3, Lu/d;->f:Lu/d;

    .line 219
    .line 220
    if-nez v3, :cond_10

    .line 221
    .line 222
    if-nez v4, :cond_10

    .line 223
    .line 224
    instance-of v3, v13, Lu/a;

    .line 225
    .line 226
    if-nez v3, :cond_10

    .line 227
    .line 228
    if-nez v10, :cond_f

    .line 229
    .line 230
    new-instance v10, Ljava/util/ArrayList;

    .line 231
    .line 232
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 233
    .line 234
    .line 235
    :cond_f
    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    .line 237
    .line 238
    :cond_10
    iget-object v3, v13, Lu/e;->J:Lu/d;

    .line 239
    .line 240
    iget-object v3, v3, Lu/d;->f:Lu/d;

    .line 241
    .line 242
    if-nez v3, :cond_12

    .line 243
    .line 244
    iget-object v3, v13, Lu/e;->L:Lu/d;

    .line 245
    .line 246
    iget-object v3, v3, Lu/d;->f:Lu/d;

    .line 247
    .line 248
    if-nez v3, :cond_12

    .line 249
    .line 250
    iget-object v3, v13, Lu/e;->M:Lu/d;

    .line 251
    .line 252
    iget-object v3, v3, Lu/d;->f:Lu/d;

    .line 253
    .line 254
    if-nez v3, :cond_12

    .line 255
    .line 256
    if-nez v4, :cond_12

    .line 257
    .line 258
    instance-of v3, v13, Lu/a;

    .line 259
    .line 260
    if-nez v3, :cond_12

    .line 261
    .line 262
    if-nez v11, :cond_11

    .line 263
    .line 264
    new-instance v11, Ljava/util/ArrayList;

    .line 265
    .line 266
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 267
    .line 268
    .line 269
    :cond_11
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 270
    .line 271
    .line 272
    :cond_12
    add-int/lit8 v5, v5, 0x1

    .line 273
    .line 274
    const/4 v3, 0x0

    .line 275
    goto/16 :goto_2

    .line 276
    .line 277
    :cond_13
    new-instance v3, Ljava/util/ArrayList;

    .line 278
    .line 279
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 280
    .line 281
    .line 282
    if-eqz v6, :cond_14

    .line 283
    .line 284
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 285
    .line 286
    .line 287
    move-result-object v4

    .line 288
    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 289
    .line 290
    .line 291
    move-result v5

    .line 292
    if-eqz v5, :cond_14

    .line 293
    .line 294
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 295
    .line 296
    .line 297
    move-result-object v5

    .line 298
    check-cast v5, Lu/i;

    .line 299
    .line 300
    const/4 v6, 0x0

    .line 301
    const/4 v12, 0x0

    .line 302
    invoke-static {v5, v6, v3, v12}, Lv/i;->findDependents(Lu/e;ILjava/util/ArrayList;Lv/m;)Lv/m;

    .line 303
    .line 304
    .line 305
    goto :goto_5

    .line 306
    :cond_14
    const/4 v6, 0x0

    .line 307
    const/4 v12, 0x0

    .line 308
    if-eqz v7, :cond_15

    .line 309
    .line 310
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 311
    .line 312
    .line 313
    move-result-object v4

    .line 314
    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 315
    .line 316
    .line 317
    move-result v5

    .line 318
    if-eqz v5, :cond_15

    .line 319
    .line 320
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 321
    .line 322
    .line 323
    move-result-object v5

    .line 324
    check-cast v5, Lu/k;

    .line 325
    .line 326
    invoke-static {v5, v6, v3, v12}, Lv/i;->findDependents(Lu/e;ILjava/util/ArrayList;Lv/m;)Lv/m;

    .line 327
    .line 328
    .line 329
    move-result-object v7

    .line 330
    invoke-virtual {v5, v3, v6, v7}, Lu/k;->addDependents(Ljava/util/ArrayList;ILv/m;)V

    .line 331
    .line 332
    .line 333
    invoke-virtual {v7, v3}, Lv/m;->cleanup(Ljava/util/ArrayList;)V

    .line 334
    .line 335
    .line 336
    const/4 v6, 0x0

    .line 337
    const/4 v12, 0x0

    .line 338
    goto :goto_6

    .line 339
    :cond_15
    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->b:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 340
    .line 341
    invoke-virtual {v0, v4}, Lu/e;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lu/d;

    .line 342
    .line 343
    .line 344
    move-result-object v4

    .line 345
    invoke-virtual {v4}, Lu/d;->getDependents()Ljava/util/HashSet;

    .line 346
    .line 347
    .line 348
    move-result-object v5

    .line 349
    if-eqz v5, :cond_16

    .line 350
    .line 351
    invoke-virtual {v4}, Lu/d;->getDependents()Ljava/util/HashSet;

    .line 352
    .line 353
    .line 354
    move-result-object v4

    .line 355
    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 356
    .line 357
    .line 358
    move-result-object v4

    .line 359
    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 360
    .line 361
    .line 362
    move-result v5

    .line 363
    if-eqz v5, :cond_16

    .line 364
    .line 365
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 366
    .line 367
    .line 368
    move-result-object v5

    .line 369
    check-cast v5, Lu/d;

    .line 370
    .line 371
    iget-object v5, v5, Lu/d;->d:Lu/e;

    .line 372
    .line 373
    const/4 v6, 0x0

    .line 374
    const/4 v12, 0x0

    .line 375
    invoke-static {v5, v6, v3, v12}, Lv/i;->findDependents(Lu/e;ILjava/util/ArrayList;Lv/m;)Lv/m;

    .line 376
    .line 377
    .line 378
    goto :goto_7

    .line 379
    :cond_16
    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 380
    .line 381
    invoke-virtual {v0, v4}, Lu/e;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lu/d;

    .line 382
    .line 383
    .line 384
    move-result-object v4

    .line 385
    invoke-virtual {v4}, Lu/d;->getDependents()Ljava/util/HashSet;

    .line 386
    .line 387
    .line 388
    move-result-object v5

    .line 389
    if-eqz v5, :cond_17

    .line 390
    .line 391
    invoke-virtual {v4}, Lu/d;->getDependents()Ljava/util/HashSet;

    .line 392
    .line 393
    .line 394
    move-result-object v4

    .line 395
    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 396
    .line 397
    .line 398
    move-result-object v4

    .line 399
    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 400
    .line 401
    .line 402
    move-result v5

    .line 403
    if-eqz v5, :cond_17

    .line 404
    .line 405
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 406
    .line 407
    .line 408
    move-result-object v5

    .line 409
    check-cast v5, Lu/d;

    .line 410
    .line 411
    iget-object v5, v5, Lu/d;->d:Lu/e;

    .line 412
    .line 413
    const/4 v6, 0x0

    .line 414
    const/4 v12, 0x0

    .line 415
    invoke-static {v5, v6, v3, v12}, Lv/i;->findDependents(Lu/e;ILjava/util/ArrayList;Lv/m;)Lv/m;

    .line 416
    .line 417
    .line 418
    goto :goto_8

    .line 419
    :cond_17
    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->n:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 420
    .line 421
    invoke-virtual {v0, v4}, Lu/e;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lu/d;

    .line 422
    .line 423
    .line 424
    move-result-object v5

    .line 425
    invoke-virtual {v5}, Lu/d;->getDependents()Ljava/util/HashSet;

    .line 426
    .line 427
    .line 428
    move-result-object v6

    .line 429
    if-eqz v6, :cond_18

    .line 430
    .line 431
    invoke-virtual {v5}, Lu/d;->getDependents()Ljava/util/HashSet;

    .line 432
    .line 433
    .line 434
    move-result-object v5

    .line 435
    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 436
    .line 437
    .line 438
    move-result-object v5

    .line 439
    :goto_9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 440
    .line 441
    .line 442
    move-result v6

    .line 443
    if-eqz v6, :cond_18

    .line 444
    .line 445
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 446
    .line 447
    .line 448
    move-result-object v6

    .line 449
    check-cast v6, Lu/d;

    .line 450
    .line 451
    iget-object v6, v6, Lu/d;->d:Lu/e;

    .line 452
    .line 453
    const/4 v7, 0x0

    .line 454
    const/4 v12, 0x0

    .line 455
    invoke-static {v6, v7, v3, v12}, Lv/i;->findDependents(Lu/e;ILjava/util/ArrayList;Lv/m;)Lv/m;

    .line 456
    .line 457
    .line 458
    goto :goto_9

    .line 459
    :cond_18
    const/4 v7, 0x0

    .line 460
    const/4 v12, 0x0

    .line 461
    if-eqz v10, :cond_19

    .line 462
    .line 463
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 464
    .line 465
    .line 466
    move-result-object v5

    .line 467
    :goto_a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 468
    .line 469
    .line 470
    move-result v6

    .line 471
    if-eqz v6, :cond_19

    .line 472
    .line 473
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 474
    .line 475
    .line 476
    move-result-object v6

    .line 477
    check-cast v6, Lu/e;

    .line 478
    .line 479
    invoke-static {v6, v7, v3, v12}, Lv/i;->findDependents(Lu/e;ILjava/util/ArrayList;Lv/m;)Lv/m;

    .line 480
    .line 481
    .line 482
    goto :goto_a

    .line 483
    :cond_19
    if-eqz v8, :cond_1a

    .line 484
    .line 485
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 486
    .line 487
    .line 488
    move-result-object v5

    .line 489
    :goto_b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 490
    .line 491
    .line 492
    move-result v6

    .line 493
    if-eqz v6, :cond_1a

    .line 494
    .line 495
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 496
    .line 497
    .line 498
    move-result-object v6

    .line 499
    check-cast v6, Lu/i;

    .line 500
    .line 501
    const/4 v15, 0x1

    .line 502
    invoke-static {v6, v15, v3, v12}, Lv/i;->findDependents(Lu/e;ILjava/util/ArrayList;Lv/m;)Lv/m;

    .line 503
    .line 504
    .line 505
    goto :goto_b

    .line 506
    :cond_1a
    const/4 v15, 0x1

    .line 507
    if-eqz v9, :cond_1b

    .line 508
    .line 509
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 510
    .line 511
    .line 512
    move-result-object v5

    .line 513
    :goto_c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 514
    .line 515
    .line 516
    move-result v6

    .line 517
    if-eqz v6, :cond_1b

    .line 518
    .line 519
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 520
    .line 521
    .line 522
    move-result-object v6

    .line 523
    check-cast v6, Lu/k;

    .line 524
    .line 525
    invoke-static {v6, v15, v3, v12}, Lv/i;->findDependents(Lu/e;ILjava/util/ArrayList;Lv/m;)Lv/m;

    .line 526
    .line 527
    .line 528
    move-result-object v7

    .line 529
    invoke-virtual {v6, v3, v15, v7}, Lu/k;->addDependents(Ljava/util/ArrayList;ILv/m;)V

    .line 530
    .line 531
    .line 532
    invoke-virtual {v7, v3}, Lv/m;->cleanup(Ljava/util/ArrayList;)V

    .line 533
    .line 534
    .line 535
    const/4 v12, 0x0

    .line 536
    const/4 v15, 0x1

    .line 537
    goto :goto_c

    .line 538
    :cond_1b
    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->e:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 539
    .line 540
    invoke-virtual {v0, v5}, Lu/e;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lu/d;

    .line 541
    .line 542
    .line 543
    move-result-object v5

    .line 544
    invoke-virtual {v5}, Lu/d;->getDependents()Ljava/util/HashSet;

    .line 545
    .line 546
    .line 547
    move-result-object v6

    .line 548
    if-eqz v6, :cond_1c

    .line 549
    .line 550
    invoke-virtual {v5}, Lu/d;->getDependents()Ljava/util/HashSet;

    .line 551
    .line 552
    .line 553
    move-result-object v5

    .line 554
    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 555
    .line 556
    .line 557
    move-result-object v5

    .line 558
    :goto_d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 559
    .line 560
    .line 561
    move-result v6

    .line 562
    if-eqz v6, :cond_1c

    .line 563
    .line 564
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 565
    .line 566
    .line 567
    move-result-object v6

    .line 568
    check-cast v6, Lu/d;

    .line 569
    .line 570
    iget-object v6, v6, Lu/d;->d:Lu/e;

    .line 571
    .line 572
    const/4 v12, 0x0

    .line 573
    const/4 v15, 0x1

    .line 574
    invoke-static {v6, v15, v3, v12}, Lv/i;->findDependents(Lu/e;ILjava/util/ArrayList;Lv/m;)Lv/m;

    .line 575
    .line 576
    .line 577
    goto :goto_d

    .line 578
    :cond_1c
    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->m:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 579
    .line 580
    invoke-virtual {v0, v5}, Lu/e;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lu/d;

    .line 581
    .line 582
    .line 583
    move-result-object v5

    .line 584
    invoke-virtual {v5}, Lu/d;->getDependents()Ljava/util/HashSet;

    .line 585
    .line 586
    .line 587
    move-result-object v6

    .line 588
    if-eqz v6, :cond_1d

    .line 589
    .line 590
    invoke-virtual {v5}, Lu/d;->getDependents()Ljava/util/HashSet;

    .line 591
    .line 592
    .line 593
    move-result-object v5

    .line 594
    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 595
    .line 596
    .line 597
    move-result-object v5

    .line 598
    :goto_e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 599
    .line 600
    .line 601
    move-result v6

    .line 602
    if-eqz v6, :cond_1d

    .line 603
    .line 604
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 605
    .line 606
    .line 607
    move-result-object v6

    .line 608
    check-cast v6, Lu/d;

    .line 609
    .line 610
    iget-object v6, v6, Lu/d;->d:Lu/e;

    .line 611
    .line 612
    const/4 v12, 0x0

    .line 613
    const/4 v15, 0x1

    .line 614
    invoke-static {v6, v15, v3, v12}, Lv/i;->findDependents(Lu/e;ILjava/util/ArrayList;Lv/m;)Lv/m;

    .line 615
    .line 616
    .line 617
    goto :goto_e

    .line 618
    :cond_1d
    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->j:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 619
    .line 620
    invoke-virtual {v0, v5}, Lu/e;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lu/d;

    .line 621
    .line 622
    .line 623
    move-result-object v5

    .line 624
    invoke-virtual {v5}, Lu/d;->getDependents()Ljava/util/HashSet;

    .line 625
    .line 626
    .line 627
    move-result-object v6

    .line 628
    if-eqz v6, :cond_1e

    .line 629
    .line 630
    invoke-virtual {v5}, Lu/d;->getDependents()Ljava/util/HashSet;

    .line 631
    .line 632
    .line 633
    move-result-object v5

    .line 634
    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 635
    .line 636
    .line 637
    move-result-object v5

    .line 638
    :goto_f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 639
    .line 640
    .line 641
    move-result v6

    .line 642
    if-eqz v6, :cond_1e

    .line 643
    .line 644
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 645
    .line 646
    .line 647
    move-result-object v6

    .line 648
    check-cast v6, Lu/d;

    .line 649
    .line 650
    iget-object v6, v6, Lu/d;->d:Lu/e;

    .line 651
    .line 652
    const/4 v12, 0x0

    .line 653
    const/4 v15, 0x1

    .line 654
    invoke-static {v6, v15, v3, v12}, Lv/i;->findDependents(Lu/e;ILjava/util/ArrayList;Lv/m;)Lv/m;

    .line 655
    .line 656
    .line 657
    goto :goto_f

    .line 658
    :cond_1e
    invoke-virtual {v0, v4}, Lu/e;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lu/d;

    .line 659
    .line 660
    .line 661
    move-result-object v4

    .line 662
    invoke-virtual {v4}, Lu/d;->getDependents()Ljava/util/HashSet;

    .line 663
    .line 664
    .line 665
    move-result-object v5

    .line 666
    if-eqz v5, :cond_1f

    .line 667
    .line 668
    invoke-virtual {v4}, Lu/d;->getDependents()Ljava/util/HashSet;

    .line 669
    .line 670
    .line 671
    move-result-object v4

    .line 672
    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 673
    .line 674
    .line 675
    move-result-object v4

    .line 676
    :goto_10
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 677
    .line 678
    .line 679
    move-result v5

    .line 680
    if-eqz v5, :cond_1f

    .line 681
    .line 682
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 683
    .line 684
    .line 685
    move-result-object v5

    .line 686
    check-cast v5, Lu/d;

    .line 687
    .line 688
    iget-object v5, v5, Lu/d;->d:Lu/e;

    .line 689
    .line 690
    const/4 v12, 0x0

    .line 691
    const/4 v15, 0x1

    .line 692
    invoke-static {v5, v15, v3, v12}, Lv/i;->findDependents(Lu/e;ILjava/util/ArrayList;Lv/m;)Lv/m;

    .line 693
    .line 694
    .line 695
    goto :goto_10

    .line 696
    :cond_1f
    const/4 v12, 0x0

    .line 697
    const/4 v15, 0x1

    .line 698
    if-eqz v11, :cond_20

    .line 699
    .line 700
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 701
    .line 702
    .line 703
    move-result-object v4

    .line 704
    :goto_11
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 705
    .line 706
    .line 707
    move-result v5

    .line 708
    if-eqz v5, :cond_20

    .line 709
    .line 710
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 711
    .line 712
    .line 713
    move-result-object v5

    .line 714
    check-cast v5, Lu/e;

    .line 715
    .line 716
    invoke-static {v5, v15, v3, v12}, Lv/i;->findDependents(Lu/e;ILjava/util/ArrayList;Lv/m;)Lv/m;

    .line 717
    .line 718
    .line 719
    goto :goto_11

    .line 720
    :cond_20
    const/4 v4, 0x0

    .line 721
    :goto_12
    if-ge v4, v2, :cond_26

    .line 722
    .line 723
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 724
    .line 725
    .line 726
    move-result-object v5

    .line 727
    check-cast v5, Lu/e;

    .line 728
    .line 729
    invoke-virtual {v5}, Lu/e;->oppositeDimensionsTied()Z

    .line 730
    .line 731
    .line 732
    move-result v6

    .line 733
    if-eqz v6, :cond_25

    .line 734
    .line 735
    iget v6, v5, Lu/e;->o0:I

    .line 736
    .line 737
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 738
    .line 739
    .line 740
    move-result v7

    .line 741
    const/4 v8, 0x0

    .line 742
    :goto_13
    if-ge v8, v7, :cond_22

    .line 743
    .line 744
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 745
    .line 746
    .line 747
    move-result-object v9

    .line 748
    check-cast v9, Lv/m;

    .line 749
    .line 750
    iget v10, v9, Lv/m;->b:I

    .line 751
    .line 752
    if-ne v6, v10, :cond_21

    .line 753
    .line 754
    goto :goto_14

    .line 755
    :cond_21
    add-int/lit8 v8, v8, 0x1

    .line 756
    .line 757
    goto :goto_13

    .line 758
    :cond_22
    move-object v9, v12

    .line 759
    :goto_14
    iget v5, v5, Lu/e;->p0:I

    .line 760
    .line 761
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 762
    .line 763
    .line 764
    move-result v6

    .line 765
    const/4 v7, 0x0

    .line 766
    :goto_15
    if-ge v7, v6, :cond_24

    .line 767
    .line 768
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 769
    .line 770
    .line 771
    move-result-object v8

    .line 772
    check-cast v8, Lv/m;

    .line 773
    .line 774
    iget v10, v8, Lv/m;->b:I

    .line 775
    .line 776
    if-ne v5, v10, :cond_23

    .line 777
    .line 778
    goto :goto_16

    .line 779
    :cond_23
    add-int/lit8 v7, v7, 0x1

    .line 780
    .line 781
    goto :goto_15

    .line 782
    :cond_24
    move-object v8, v12

    .line 783
    :goto_16
    if-eqz v9, :cond_25

    .line 784
    .line 785
    if-eqz v8, :cond_25

    .line 786
    .line 787
    const/4 v6, 0x0

    .line 788
    invoke-virtual {v9, v6, v8}, Lv/m;->moveTo(ILv/m;)V

    .line 789
    .line 790
    .line 791
    const/4 v5, 0x2

    .line 792
    invoke-virtual {v8, v5}, Lv/m;->setOrientation(I)V

    .line 793
    .line 794
    .line 795
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 796
    .line 797
    .line 798
    :cond_25
    add-int/lit8 v4, v4, 0x1

    .line 799
    .line 800
    goto :goto_12

    .line 801
    :cond_26
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 802
    .line 803
    .line 804
    move-result v1

    .line 805
    const/4 v15, 0x1

    .line 806
    if-gt v1, v15, :cond_28

    .line 807
    .line 808
    :cond_27
    const/16 v16, 0x0

    .line 809
    .line 810
    goto/16 :goto_1b

    .line 811
    .line 812
    :cond_28
    invoke-virtual {v0}, Lu/e;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 813
    .line 814
    .line 815
    move-result-object v1

    .line 816
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->e:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 817
    .line 818
    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 819
    .line 820
    if-ne v1, v2, :cond_2c

    .line 821
    .line 822
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 823
    .line 824
    .line 825
    move-result-object v1

    .line 826
    move-object v5, v12

    .line 827
    const/4 v6, 0x0

    .line 828
    :cond_29
    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 829
    .line 830
    .line 831
    move-result v7

    .line 832
    if-eqz v7, :cond_2b

    .line 833
    .line 834
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 835
    .line 836
    .line 837
    move-result-object v7

    .line 838
    check-cast v7, Lv/m;

    .line 839
    .line 840
    invoke-virtual {v7}, Lv/m;->getOrientation()I

    .line 841
    .line 842
    .line 843
    move-result v8

    .line 844
    const/4 v15, 0x1

    .line 845
    if-ne v8, v15, :cond_2a

    .line 846
    .line 847
    goto :goto_17

    .line 848
    :cond_2a
    const/4 v8, 0x0

    .line 849
    invoke-virtual {v7, v8}, Lv/m;->setAuthoritative(Z)V

    .line 850
    .line 851
    .line 852
    invoke-virtual {v0}, Lu/f;->getSystem()Lr/f;

    .line 853
    .line 854
    .line 855
    move-result-object v9

    .line 856
    invoke-virtual {v7, v9, v8}, Lv/m;->measureWrap(Lr/f;I)I

    .line 857
    .line 858
    .line 859
    move-result v9

    .line 860
    if-le v9, v6, :cond_29

    .line 861
    .line 862
    move-object v5, v7

    .line 863
    move v6, v9

    .line 864
    goto :goto_17

    .line 865
    :cond_2b
    if-eqz v5, :cond_2c

    .line 866
    .line 867
    invoke-virtual {v0, v4}, Lu/e;->setHorizontalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 868
    .line 869
    .line 870
    invoke-virtual {v0, v6}, Lu/e;->setWidth(I)V

    .line 871
    .line 872
    .line 873
    const/4 v15, 0x1

    .line 874
    invoke-virtual {v5, v15}, Lv/m;->setAuthoritative(Z)V

    .line 875
    .line 876
    .line 877
    goto :goto_18

    .line 878
    :cond_2c
    move-object v5, v12

    .line 879
    :goto_18
    invoke-virtual {v0}, Lu/e;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 880
    .line 881
    .line 882
    move-result-object v1

    .line 883
    if-ne v1, v2, :cond_30

    .line 884
    .line 885
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 886
    .line 887
    .line 888
    move-result-object v1

    .line 889
    move-object v2, v12

    .line 890
    const/4 v6, 0x0

    .line 891
    :cond_2d
    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 892
    .line 893
    .line 894
    move-result v3

    .line 895
    if-eqz v3, :cond_2f

    .line 896
    .line 897
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 898
    .line 899
    .line 900
    move-result-object v3

    .line 901
    check-cast v3, Lv/m;

    .line 902
    .line 903
    invoke-virtual {v3}, Lv/m;->getOrientation()I

    .line 904
    .line 905
    .line 906
    move-result v7

    .line 907
    if-nez v7, :cond_2e

    .line 908
    .line 909
    goto :goto_19

    .line 910
    :cond_2e
    const/4 v7, 0x0

    .line 911
    invoke-virtual {v3, v7}, Lv/m;->setAuthoritative(Z)V

    .line 912
    .line 913
    .line 914
    invoke-virtual {v0}, Lu/f;->getSystem()Lr/f;

    .line 915
    .line 916
    .line 917
    move-result-object v7

    .line 918
    const/4 v15, 0x1

    .line 919
    invoke-virtual {v3, v7, v15}, Lv/m;->measureWrap(Lr/f;I)I

    .line 920
    .line 921
    .line 922
    move-result v7

    .line 923
    if-le v7, v6, :cond_2d

    .line 924
    .line 925
    move-object v2, v3

    .line 926
    move v6, v7

    .line 927
    goto :goto_19

    .line 928
    :cond_2f
    const/4 v15, 0x1

    .line 929
    if-eqz v2, :cond_31

    .line 930
    .line 931
    invoke-virtual {v0, v4}, Lu/e;->setVerticalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 932
    .line 933
    .line 934
    invoke-virtual {v0, v6}, Lu/e;->setHeight(I)V

    .line 935
    .line 936
    .line 937
    invoke-virtual {v2, v15}, Lv/m;->setAuthoritative(Z)V

    .line 938
    .line 939
    .line 940
    move-object v4, v2

    .line 941
    goto :goto_1a

    .line 942
    :cond_30
    const/4 v15, 0x1

    .line 943
    :cond_31
    move-object v4, v12

    .line 944
    :goto_1a
    if-nez v5, :cond_32

    .line 945
    .line 946
    if-eqz v4, :cond_27

    .line 947
    .line 948
    goto :goto_1c

    .line 949
    :goto_1b
    return v16

    .line 950
    :cond_32
    :goto_1c
    return v15
.end method

.method public static validInGroup(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)Z
    .locals 5

    .line 1
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 2
    .line 3
    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->j:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 4
    .line 5
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->e:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    const/4 v4, 0x0

    .line 9
    if-eq p2, v0, :cond_1

    .line 10
    .line 11
    if-eq p2, v2, :cond_1

    .line 12
    .line 13
    if-ne p2, v1, :cond_0

    .line 14
    .line 15
    if-eq p0, v2, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move p0, v4

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    move p0, v3

    .line 21
    :goto_1
    if-eq p3, v0, :cond_3

    .line 22
    .line 23
    if-eq p3, v2, :cond_3

    .line 24
    .line 25
    if-ne p3, v1, :cond_2

    .line 26
    .line 27
    if-eq p1, v2, :cond_2

    .line 28
    .line 29
    goto :goto_2

    .line 30
    :cond_2
    move p1, v4

    .line 31
    goto :goto_3

    .line 32
    :cond_3
    :goto_2
    move p1, v3

    .line 33
    :goto_3
    if-nez p0, :cond_5

    .line 34
    .line 35
    if-eqz p1, :cond_4

    .line 36
    .line 37
    goto :goto_4

    .line 38
    :cond_4
    return v4

    .line 39
    :cond_5
    :goto_4
    return v3
.end method
