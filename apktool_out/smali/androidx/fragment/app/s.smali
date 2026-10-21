.class public final Landroidx/fragment/app/s;
.super Landroidx/fragment/app/M0;
.source "SourceFile"


# direct methods
.method public static i(Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 4

    .line 1
    instance-of v0, p0, Landroid/view/ViewGroup;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    move-object v0, p0

    .line 6
    check-cast v0, Landroid/view/ViewGroup;

    .line 7
    .line 8
    invoke-static {v0}, LM/v0;->isTransitionGroup(Landroid/view/ViewGroup;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    if-nez p0, :cond_3

    .line 19
    .line 20
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    const/4 v1, 0x0

    .line 29
    :goto_0
    if-ge v1, p0, :cond_3

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-nez v3, :cond_1

    .line 40
    .line 41
    invoke-static {v2, p1}, Landroidx/fragment/app/s;->i(Landroid/view/View;Ljava/util/ArrayList;)V

    .line 42
    .line 43
    .line 44
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-nez v0, :cond_3

    .line 52
    .line 53
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    :cond_3
    return-void
.end method

.method public static j(Lp/g;Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-static {p1}, LM/p0;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    .line 11
    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    check-cast p1, Landroid/view/ViewGroup;

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v1, 0x0

    .line 21
    :goto_0
    if-ge v1, v0, :cond_2

    .line 22
    .line 23
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-nez v3, :cond_1

    .line 32
    .line 33
    invoke-static {p0, v2}, Landroidx/fragment/app/s;->j(Lp/g;Landroid/view/View;)V

    .line 34
    .line 35
    .line 36
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    return-void
.end method

.method public static k(Lp/g;Ljava/util/Collection;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lp/g;->entrySet()Ljava/util/Set;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Ljava/util/Map$Entry;

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Landroid/view/View;

    .line 26
    .line 27
    invoke-static {v0}, LM/p0;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-interface {p1, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-nez v0, :cond_0

    .line 36
    .line 37
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    return-void
.end method


# virtual methods
.method public final b(Ljava/util/ArrayList;Z)V
    .locals 38

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    const/4 v3, 0x1

    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object v4

    .line 10
    const/4 v6, 0x0

    .line 11
    const/4 v7, 0x0

    .line 12
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v8

    .line 16
    sget-object v9, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->e:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 17
    .line 18
    const/4 v10, 0x2

    .line 19
    if-eqz v8, :cond_3

    .line 20
    .line 21
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v8

    .line 25
    check-cast v8, Landroidx/fragment/app/L0;

    .line 26
    .line 27
    invoke-virtual {v8}, Landroidx/fragment/app/L0;->getFragment()Landroidx/fragment/app/C;

    .line 28
    .line 29
    .line 30
    move-result-object v11

    .line 31
    iget-object v11, v11, Landroidx/fragment/app/C;->Q:Landroid/view/View;

    .line 32
    .line 33
    invoke-static {v11}, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->e(Landroid/view/View;)Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 34
    .line 35
    .line 36
    move-result-object v11

    .line 37
    invoke-virtual {v8}, Landroidx/fragment/app/L0;->getFinalState()Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 38
    .line 39
    .line 40
    move-result-object v12

    .line 41
    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    .line 42
    .line 43
    .line 44
    move-result v12

    .line 45
    if-eqz v12, :cond_2

    .line 46
    .line 47
    if-eq v12, v3, :cond_1

    .line 48
    .line 49
    if-eq v12, v10, :cond_2

    .line 50
    .line 51
    const/4 v10, 0x3

    .line 52
    if-eq v12, v10, :cond_2

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    if-eq v11, v9, :cond_0

    .line 56
    .line 57
    move-object v7, v8

    .line 58
    goto :goto_0

    .line 59
    :cond_2
    if-ne v11, v9, :cond_0

    .line 60
    .line 61
    if-nez v6, :cond_0

    .line 62
    .line 63
    move-object v6, v8

    .line 64
    goto :goto_0

    .line 65
    :cond_3
    invoke-static {v10}, Landroidx/fragment/app/i0;->isLoggingEnabled(I)Z

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    const-string v8, " to "

    .line 70
    .line 71
    const-string v11, "FragmentManager"

    .line 72
    .line 73
    if-eqz v4, :cond_4

    .line 74
    .line 75
    new-instance v4, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    const-string v12, "Executing operations from "

    .line 78
    .line 79
    invoke-direct {v4, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    invoke-static {v11, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    .line 97
    .line 98
    :cond_4
    new-instance v4, Ljava/util/ArrayList;

    .line 99
    .line 100
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 101
    .line 102
    .line 103
    new-instance v12, Ljava/util/ArrayList;

    .line 104
    .line 105
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 106
    .line 107
    .line 108
    new-instance v13, Ljava/util/ArrayList;

    .line 109
    .line 110
    invoke-direct {v13, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 111
    .line 112
    .line 113
    invoke-static {v3, v0}, Lb/c;->h(ILjava/util/ArrayList;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v14

    .line 117
    check-cast v14, Landroidx/fragment/app/L0;

    .line 118
    .line 119
    invoke-virtual {v14}, Landroidx/fragment/app/L0;->getFragment()Landroidx/fragment/app/C;

    .line 120
    .line 121
    .line 122
    move-result-object v14

    .line 123
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 124
    .line 125
    .line 126
    move-result-object v15

    .line 127
    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    .line 128
    .line 129
    .line 130
    move-result v16

    .line 131
    if-eqz v16, :cond_5

    .line 132
    .line 133
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v16

    .line 137
    check-cast v16, Landroidx/fragment/app/L0;

    .line 138
    .line 139
    move/from16 v17, v3

    .line 140
    .line 141
    invoke-virtual/range {v16 .. v16}, Landroidx/fragment/app/L0;->getFragment()Landroidx/fragment/app/C;

    .line 142
    .line 143
    .line 144
    move-result-object v3

    .line 145
    iget-object v3, v3, Landroidx/fragment/app/C;->T:Landroidx/fragment/app/B;

    .line 146
    .line 147
    move/from16 v18, v10

    .line 148
    .line 149
    iget-object v10, v14, Landroidx/fragment/app/C;->T:Landroidx/fragment/app/B;

    .line 150
    .line 151
    iget v10, v10, Landroidx/fragment/app/B;->b:I

    .line 152
    .line 153
    iput v10, v3, Landroidx/fragment/app/B;->b:I

    .line 154
    .line 155
    invoke-virtual/range {v16 .. v16}, Landroidx/fragment/app/L0;->getFragment()Landroidx/fragment/app/C;

    .line 156
    .line 157
    .line 158
    move-result-object v3

    .line 159
    iget-object v3, v3, Landroidx/fragment/app/C;->T:Landroidx/fragment/app/B;

    .line 160
    .line 161
    iget-object v10, v14, Landroidx/fragment/app/C;->T:Landroidx/fragment/app/B;

    .line 162
    .line 163
    iget v10, v10, Landroidx/fragment/app/B;->c:I

    .line 164
    .line 165
    iput v10, v3, Landroidx/fragment/app/B;->c:I

    .line 166
    .line 167
    invoke-virtual/range {v16 .. v16}, Landroidx/fragment/app/L0;->getFragment()Landroidx/fragment/app/C;

    .line 168
    .line 169
    .line 170
    move-result-object v3

    .line 171
    iget-object v3, v3, Landroidx/fragment/app/C;->T:Landroidx/fragment/app/B;

    .line 172
    .line 173
    iget-object v10, v14, Landroidx/fragment/app/C;->T:Landroidx/fragment/app/B;

    .line 174
    .line 175
    iget v10, v10, Landroidx/fragment/app/B;->d:I

    .line 176
    .line 177
    iput v10, v3, Landroidx/fragment/app/B;->d:I

    .line 178
    .line 179
    invoke-virtual/range {v16 .. v16}, Landroidx/fragment/app/L0;->getFragment()Landroidx/fragment/app/C;

    .line 180
    .line 181
    .line 182
    move-result-object v3

    .line 183
    iget-object v3, v3, Landroidx/fragment/app/C;->T:Landroidx/fragment/app/B;

    .line 184
    .line 185
    iget-object v10, v14, Landroidx/fragment/app/C;->T:Landroidx/fragment/app/B;

    .line 186
    .line 187
    iget v10, v10, Landroidx/fragment/app/B;->e:I

    .line 188
    .line 189
    iput v10, v3, Landroidx/fragment/app/B;->e:I

    .line 190
    .line 191
    move/from16 v3, v17

    .line 192
    .line 193
    move/from16 v10, v18

    .line 194
    .line 195
    goto :goto_1

    .line 196
    :cond_5
    move/from16 v17, v3

    .line 197
    .line 198
    move/from16 v18, v10

    .line 199
    .line 200
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 205
    .line 206
    .line 207
    move-result v3

    .line 208
    const/4 v10, 0x0

    .line 209
    if-eqz v3, :cond_8

    .line 210
    .line 211
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object v3

    .line 215
    check-cast v3, Landroidx/fragment/app/L0;

    .line 216
    .line 217
    new-instance v14, LI/f;

    .line 218
    .line 219
    invoke-direct {v14}, LI/f;-><init>()V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v3, v14}, Landroidx/fragment/app/L0;->markStartedSpecialEffect(LI/f;)V

    .line 223
    .line 224
    .line 225
    new-instance v15, Landroidx/fragment/app/p;

    .line 226
    .line 227
    invoke-direct {v15, v3, v14}, Landroidx/fragment/app/q;-><init>(Landroidx/fragment/app/L0;LI/f;)V

    .line 228
    .line 229
    .line 230
    iput-boolean v10, v15, Landroidx/fragment/app/p;->d:Z

    .line 231
    .line 232
    iput-boolean v1, v15, Landroidx/fragment/app/p;->c:Z

    .line 233
    .line 234
    invoke-virtual {v4, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    .line 236
    .line 237
    new-instance v14, LI/f;

    .line 238
    .line 239
    invoke-direct {v14}, LI/f;-><init>()V

    .line 240
    .line 241
    .line 242
    invoke-virtual {v3, v14}, Landroidx/fragment/app/L0;->markStartedSpecialEffect(LI/f;)V

    .line 243
    .line 244
    .line 245
    new-instance v15, Landroidx/fragment/app/r;

    .line 246
    .line 247
    if-eqz v1, :cond_6

    .line 248
    .line 249
    if-ne v3, v6, :cond_7

    .line 250
    .line 251
    :goto_3
    move/from16 v10, v17

    .line 252
    .line 253
    goto :goto_4

    .line 254
    :cond_6
    if-ne v3, v7, :cond_7

    .line 255
    .line 256
    goto :goto_3

    .line 257
    :cond_7
    :goto_4
    invoke-direct {v15, v3, v14, v1, v10}, Landroidx/fragment/app/r;-><init>(Landroidx/fragment/app/L0;LI/f;ZZ)V

    .line 258
    .line 259
    .line 260
    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 261
    .line 262
    .line 263
    new-instance v10, Landroidx/fragment/app/f;

    .line 264
    .line 265
    move-object/from16 v14, p0

    .line 266
    .line 267
    invoke-direct {v10, v14, v13, v3}, Landroidx/fragment/app/f;-><init>(Landroidx/fragment/app/s;Ljava/util/ArrayList;Landroidx/fragment/app/L0;)V

    .line 268
    .line 269
    .line 270
    iget-object v3, v3, Landroidx/fragment/app/L0;->d:Ljava/util/ArrayList;

    .line 271
    .line 272
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 273
    .line 274
    .line 275
    goto :goto_2

    .line 276
    :cond_8
    move-object/from16 v14, p0

    .line 277
    .line 278
    new-instance v0, Ljava/util/HashMap;

    .line 279
    .line 280
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 281
    .line 282
    .line 283
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 284
    .line 285
    .line 286
    move-result-object v3

    .line 287
    const/4 v15, 0x0

    .line 288
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 289
    .line 290
    .line 291
    move-result v16

    .line 292
    if-eqz v16, :cond_10

    .line 293
    .line 294
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 295
    .line 296
    .line 297
    move-result-object v16

    .line 298
    move-object/from16 v5, v16

    .line 299
    .line 300
    check-cast v5, Landroidx/fragment/app/r;

    .line 301
    .line 302
    invoke-virtual {v5}, Landroidx/fragment/app/q;->b()Z

    .line 303
    .line 304
    .line 305
    move-result v16

    .line 306
    if-eqz v16, :cond_9

    .line 307
    .line 308
    goto :goto_5

    .line 309
    :cond_9
    iget-object v10, v5, Landroidx/fragment/app/r;->c:Ljava/lang/Object;

    .line 310
    .line 311
    invoke-virtual {v5, v10}, Landroidx/fragment/app/r;->c(Ljava/lang/Object;)Landroidx/fragment/app/E0;

    .line 312
    .line 313
    .line 314
    move-result-object v2

    .line 315
    move-object/from16 v19, v3

    .line 316
    .line 317
    iget-object v3, v5, Landroidx/fragment/app/r;->e:Ljava/lang/Object;

    .line 318
    .line 319
    move-object/from16 v27, v4

    .line 320
    .line 321
    invoke-virtual {v5, v3}, Landroidx/fragment/app/r;->c(Ljava/lang/Object;)Landroidx/fragment/app/E0;

    .line 322
    .line 323
    .line 324
    move-result-object v4

    .line 325
    iget-object v5, v5, Landroidx/fragment/app/q;->a:Landroidx/fragment/app/L0;

    .line 326
    .line 327
    move-object/from16 v20, v5

    .line 328
    .line 329
    const-string v5, " returned Transition "

    .line 330
    .line 331
    move-object/from16 v28, v12

    .line 332
    .line 333
    const-string v12, "Mixing framework transitions and AndroidX transitions is not allowed. Fragment "

    .line 334
    .line 335
    if-eqz v2, :cond_b

    .line 336
    .line 337
    if-eqz v4, :cond_b

    .line 338
    .line 339
    if-ne v2, v4, :cond_a

    .line 340
    .line 341
    goto :goto_6

    .line 342
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 343
    .line 344
    new-instance v1, Ljava/lang/StringBuilder;

    .line 345
    .line 346
    invoke-direct {v1, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 347
    .line 348
    .line 349
    invoke-virtual/range {v20 .. v20}, Landroidx/fragment/app/L0;->getFragment()Landroidx/fragment/app/C;

    .line 350
    .line 351
    .line 352
    move-result-object v2

    .line 353
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 354
    .line 355
    .line 356
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    .line 358
    .line 359
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 360
    .line 361
    .line 362
    const-string v2, " which uses a different Transition  type than its shared element transition "

    .line 363
    .line 364
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    .line 366
    .line 367
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 368
    .line 369
    .line 370
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 371
    .line 372
    .line 373
    move-result-object v1

    .line 374
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 375
    .line 376
    .line 377
    throw v0

    .line 378
    :cond_b
    :goto_6
    if-eqz v2, :cond_c

    .line 379
    .line 380
    goto :goto_7

    .line 381
    :cond_c
    move-object v2, v4

    .line 382
    :goto_7
    if-nez v15, :cond_d

    .line 383
    .line 384
    move-object v15, v2

    .line 385
    goto :goto_8

    .line 386
    :cond_d
    if-eqz v2, :cond_f

    .line 387
    .line 388
    if-ne v15, v2, :cond_e

    .line 389
    .line 390
    goto :goto_8

    .line 391
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 392
    .line 393
    new-instance v1, Ljava/lang/StringBuilder;

    .line 394
    .line 395
    invoke-direct {v1, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 396
    .line 397
    .line 398
    invoke-virtual/range {v20 .. v20}, Landroidx/fragment/app/L0;->getFragment()Landroidx/fragment/app/C;

    .line 399
    .line 400
    .line 401
    move-result-object v2

    .line 402
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 403
    .line 404
    .line 405
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    .line 407
    .line 408
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 409
    .line 410
    .line 411
    const-string v2, " which uses a different Transition  type than other Fragments."

    .line 412
    .line 413
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    .line 415
    .line 416
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 417
    .line 418
    .line 419
    move-result-object v1

    .line 420
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 421
    .line 422
    .line 423
    throw v0

    .line 424
    :cond_f
    :goto_8
    move-object/from16 v3, v19

    .line 425
    .line 426
    move-object/from16 v4, v27

    .line 427
    .line 428
    move-object/from16 v12, v28

    .line 429
    .line 430
    const/4 v10, 0x0

    .line 431
    goto/16 :goto_5

    .line 432
    .line 433
    :cond_10
    move-object/from16 v27, v4

    .line 434
    .line 435
    move-object/from16 v28, v12

    .line 436
    .line 437
    sget-object v2, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->f:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 438
    .line 439
    if-nez v15, :cond_12

    .line 440
    .line 441
    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 442
    .line 443
    .line 444
    move-result-object v1

    .line 445
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 446
    .line 447
    .line 448
    move-result v3

    .line 449
    if-eqz v3, :cond_11

    .line 450
    .line 451
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 452
    .line 453
    .line 454
    move-result-object v3

    .line 455
    check-cast v3, Landroidx/fragment/app/r;

    .line 456
    .line 457
    iget-object v4, v3, Landroidx/fragment/app/q;->a:Landroidx/fragment/app/L0;

    .line 458
    .line 459
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 460
    .line 461
    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    .line 463
    .line 464
    invoke-virtual {v3}, Landroidx/fragment/app/q;->a()V

    .line 465
    .line 466
    .line 467
    goto :goto_9

    .line 468
    :cond_11
    move-object v9, v0

    .line 469
    move-object/from16 v35, v2

    .line 470
    .line 471
    move-object v10, v7

    .line 472
    move-object/from16 v30, v8

    .line 473
    .line 474
    move-object/from16 v34, v13

    .line 475
    .line 476
    goto/16 :goto_25

    .line 477
    .line 478
    :cond_12
    new-instance v3, Landroid/view/View;

    .line 479
    .line 480
    invoke-virtual {v14}, Landroidx/fragment/app/M0;->getContainer()Landroid/view/ViewGroup;

    .line 481
    .line 482
    .line 483
    move-result-object v4

    .line 484
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 485
    .line 486
    .line 487
    move-result-object v4

    .line 488
    invoke-direct {v3, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 489
    .line 490
    .line 491
    new-instance v4, Landroid/graphics/Rect;

    .line 492
    .line 493
    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 494
    .line 495
    .line 496
    new-instance v5, Ljava/util/ArrayList;

    .line 497
    .line 498
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 499
    .line 500
    .line 501
    new-instance v10, Ljava/util/ArrayList;

    .line 502
    .line 503
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 504
    .line 505
    .line 506
    new-instance v12, Lp/g;

    .line 507
    .line 508
    invoke-direct {v12}, Lp/g;-><init>()V

    .line 509
    .line 510
    .line 511
    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 512
    .line 513
    .line 514
    move-result-object v29

    .line 515
    move-object/from16 v30, v8

    .line 516
    .line 517
    const/4 v8, 0x0

    .line 518
    const/4 v14, 0x0

    .line 519
    const/16 v31, 0x0

    .line 520
    .line 521
    :goto_a
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    .line 522
    .line 523
    .line 524
    move-result v19

    .line 525
    if-eqz v19, :cond_28

    .line 526
    .line 527
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 528
    .line 529
    .line 530
    move-result-object v19

    .line 531
    check-cast v19, Landroidx/fragment/app/r;

    .line 532
    .line 533
    invoke-virtual/range {v19 .. v19}, Landroidx/fragment/app/r;->hasSharedElementTransition()Z

    .line 534
    .line 535
    .line 536
    move-result v20

    .line 537
    if-eqz v20, :cond_27

    .line 538
    .line 539
    if-eqz v6, :cond_27

    .line 540
    .line 541
    if-eqz v7, :cond_27

    .line 542
    .line 543
    invoke-virtual/range {v19 .. v19}, Landroidx/fragment/app/r;->getSharedElementTransition()Ljava/lang/Object;

    .line 544
    .line 545
    .line 546
    move-result-object v8

    .line 547
    invoke-virtual {v15, v8}, Landroidx/fragment/app/E0;->cloneTransition(Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    .line 549
    .line 550
    move-result-object v8

    .line 551
    invoke-virtual {v15, v8}, Landroidx/fragment/app/E0;->wrapTransitionInSet(Ljava/lang/Object;)Ljava/lang/Object;

    .line 552
    .line 553
    .line 554
    move-result-object v8

    .line 555
    move-object/from16 v32, v14

    .line 556
    .line 557
    invoke-virtual {v7}, Landroidx/fragment/app/L0;->getFragment()Landroidx/fragment/app/C;

    .line 558
    .line 559
    .line 560
    move-result-object v14

    .line 561
    iget-object v14, v14, Landroidx/fragment/app/C;->T:Landroidx/fragment/app/B;

    .line 562
    .line 563
    if-eqz v14, :cond_14

    .line 564
    .line 565
    iget-object v14, v14, Landroidx/fragment/app/B;->g:Ljava/util/ArrayList;

    .line 566
    .line 567
    if-nez v14, :cond_13

    .line 568
    .line 569
    goto :goto_c

    .line 570
    :cond_13
    :goto_b
    move-object/from16 v33, v9

    .line 571
    .line 572
    goto :goto_d

    .line 573
    :cond_14
    :goto_c
    new-instance v14, Ljava/util/ArrayList;

    .line 574
    .line 575
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 576
    .line 577
    .line 578
    goto :goto_b

    .line 579
    :goto_d
    invoke-virtual {v6}, Landroidx/fragment/app/L0;->getFragment()Landroidx/fragment/app/C;

    .line 580
    .line 581
    .line 582
    move-result-object v9

    .line 583
    iget-object v9, v9, Landroidx/fragment/app/C;->T:Landroidx/fragment/app/B;

    .line 584
    .line 585
    if-eqz v9, :cond_16

    .line 586
    .line 587
    iget-object v9, v9, Landroidx/fragment/app/B;->g:Ljava/util/ArrayList;

    .line 588
    .line 589
    if-nez v9, :cond_15

    .line 590
    .line 591
    goto :goto_f

    .line 592
    :cond_15
    :goto_e
    move-object/from16 v34, v13

    .line 593
    .line 594
    goto :goto_10

    .line 595
    :cond_16
    :goto_f
    new-instance v9, Ljava/util/ArrayList;

    .line 596
    .line 597
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 598
    .line 599
    .line 600
    goto :goto_e

    .line 601
    :goto_10
    invoke-virtual {v6}, Landroidx/fragment/app/L0;->getFragment()Landroidx/fragment/app/C;

    .line 602
    .line 603
    .line 604
    move-result-object v13

    .line 605
    iget-object v13, v13, Landroidx/fragment/app/C;->T:Landroidx/fragment/app/B;

    .line 606
    .line 607
    if-eqz v13, :cond_17

    .line 608
    .line 609
    iget-object v13, v13, Landroidx/fragment/app/B;->h:Ljava/util/ArrayList;

    .line 610
    .line 611
    if-nez v13, :cond_18

    .line 612
    .line 613
    :cond_17
    new-instance v13, Ljava/util/ArrayList;

    .line 614
    .line 615
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 616
    .line 617
    .line 618
    :cond_18
    move-object/from16 v36, v0

    .line 619
    .line 620
    move-object/from16 v35, v2

    .line 621
    .line 622
    const/4 v2, 0x0

    .line 623
    :goto_11
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    .line 624
    .line 625
    .line 626
    move-result v0

    .line 627
    if-ge v2, v0, :cond_1a

    .line 628
    .line 629
    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 630
    .line 631
    .line 632
    move-result-object v0

    .line 633
    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 634
    .line 635
    .line 636
    move-result v0

    .line 637
    move-object/from16 v19, v13

    .line 638
    .line 639
    const/4 v13, -0x1

    .line 640
    if-eq v0, v13, :cond_19

    .line 641
    .line 642
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 643
    .line 644
    .line 645
    move-result-object v13

    .line 646
    check-cast v13, Ljava/lang/String;

    .line 647
    .line 648
    invoke-virtual {v14, v0, v13}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 649
    .line 650
    .line 651
    :cond_19
    add-int/lit8 v2, v2, 0x1

    .line 652
    .line 653
    move-object/from16 v13, v19

    .line 654
    .line 655
    goto :goto_11

    .line 656
    :cond_1a
    invoke-virtual {v7}, Landroidx/fragment/app/L0;->getFragment()Landroidx/fragment/app/C;

    .line 657
    .line 658
    .line 659
    move-result-object v0

    .line 660
    iget-object v0, v0, Landroidx/fragment/app/C;->T:Landroidx/fragment/app/B;

    .line 661
    .line 662
    if-eqz v0, :cond_1b

    .line 663
    .line 664
    iget-object v0, v0, Landroidx/fragment/app/B;->h:Ljava/util/ArrayList;

    .line 665
    .line 666
    if-nez v0, :cond_1c

    .line 667
    .line 668
    :cond_1b
    new-instance v0, Ljava/util/ArrayList;

    .line 669
    .line 670
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 671
    .line 672
    .line 673
    :cond_1c
    if-nez v1, :cond_1d

    .line 674
    .line 675
    invoke-virtual {v6}, Landroidx/fragment/app/L0;->getFragment()Landroidx/fragment/app/C;

    .line 676
    .line 677
    .line 678
    move-result-object v2

    .line 679
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 680
    .line 681
    .line 682
    invoke-virtual {v7}, Landroidx/fragment/app/L0;->getFragment()Landroidx/fragment/app/C;

    .line 683
    .line 684
    .line 685
    move-result-object v2

    .line 686
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 687
    .line 688
    .line 689
    goto :goto_12

    .line 690
    :cond_1d
    invoke-virtual {v6}, Landroidx/fragment/app/L0;->getFragment()Landroidx/fragment/app/C;

    .line 691
    .line 692
    .line 693
    move-result-object v2

    .line 694
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 695
    .line 696
    .line 697
    invoke-virtual {v7}, Landroidx/fragment/app/L0;->getFragment()Landroidx/fragment/app/C;

    .line 698
    .line 699
    .line 700
    move-result-object v2

    .line 701
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 702
    .line 703
    .line 704
    :goto_12
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    .line 705
    .line 706
    .line 707
    move-result v2

    .line 708
    const/4 v9, 0x0

    .line 709
    :goto_13
    if-ge v9, v2, :cond_1e

    .line 710
    .line 711
    invoke-virtual {v14, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 712
    .line 713
    .line 714
    move-result-object v13

    .line 715
    check-cast v13, Ljava/lang/String;

    .line 716
    .line 717
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 718
    .line 719
    .line 720
    move-result-object v19

    .line 721
    move/from16 v20, v2

    .line 722
    .line 723
    move-object/from16 v2, v19

    .line 724
    .line 725
    check-cast v2, Ljava/lang/String;

    .line 726
    .line 727
    invoke-virtual {v12, v13, v2}, Lp/q;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 728
    .line 729
    .line 730
    add-int/lit8 v9, v9, 0x1

    .line 731
    .line 732
    move/from16 v2, v20

    .line 733
    .line 734
    goto :goto_13

    .line 735
    :cond_1e
    invoke-static/range {v18 .. v18}, Landroidx/fragment/app/i0;->isLoggingEnabled(I)Z

    .line 736
    .line 737
    .line 738
    move-result v2

    .line 739
    if-eqz v2, :cond_20

    .line 740
    .line 741
    const-string v2, ">>> entering view names <<<"

    .line 742
    .line 743
    invoke-static {v11, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    .line 745
    .line 746
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 747
    .line 748
    .line 749
    move-result-object v2

    .line 750
    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 751
    .line 752
    .line 753
    move-result v9

    .line 754
    const-string v13, "Name: "

    .line 755
    .line 756
    if-eqz v9, :cond_1f

    .line 757
    .line 758
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 759
    .line 760
    .line 761
    move-result-object v9

    .line 762
    check-cast v9, Ljava/lang/String;

    .line 763
    .line 764
    move-object/from16 v19, v2

    .line 765
    .line 766
    new-instance v2, Ljava/lang/StringBuilder;

    .line 767
    .line 768
    invoke-direct {v2, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 769
    .line 770
    .line 771
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 772
    .line 773
    .line 774
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 775
    .line 776
    .line 777
    move-result-object v2

    .line 778
    invoke-static {v11, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    .line 780
    .line 781
    move-object/from16 v2, v19

    .line 782
    .line 783
    goto :goto_14

    .line 784
    :cond_1f
    const-string v2, ">>> exiting view names <<<"

    .line 785
    .line 786
    invoke-static {v11, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    .line 788
    .line 789
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 790
    .line 791
    .line 792
    move-result-object v2

    .line 793
    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 794
    .line 795
    .line 796
    move-result v9

    .line 797
    if-eqz v9, :cond_20

    .line 798
    .line 799
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 800
    .line 801
    .line 802
    move-result-object v9

    .line 803
    check-cast v9, Ljava/lang/String;

    .line 804
    .line 805
    move-object/from16 v19, v2

    .line 806
    .line 807
    new-instance v2, Ljava/lang/StringBuilder;

    .line 808
    .line 809
    invoke-direct {v2, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 810
    .line 811
    .line 812
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 813
    .line 814
    .line 815
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 816
    .line 817
    .line 818
    move-result-object v2

    .line 819
    invoke-static {v11, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    .line 821
    .line 822
    move-object/from16 v2, v19

    .line 823
    .line 824
    goto :goto_15

    .line 825
    :cond_20
    new-instance v2, Lp/g;

    .line 826
    .line 827
    invoke-direct {v2}, Lp/g;-><init>()V

    .line 828
    .line 829
    .line 830
    invoke-virtual {v6}, Landroidx/fragment/app/L0;->getFragment()Landroidx/fragment/app/C;

    .line 831
    .line 832
    .line 833
    move-result-object v9

    .line 834
    iget-object v9, v9, Landroidx/fragment/app/C;->Q:Landroid/view/View;

    .line 835
    .line 836
    invoke-static {v2, v9}, Landroidx/fragment/app/s;->j(Lp/g;Landroid/view/View;)V

    .line 837
    .line 838
    .line 839
    invoke-virtual {v2, v14}, Lp/g;->retainAll(Ljava/util/Collection;)Z

    .line 840
    .line 841
    .line 842
    invoke-virtual {v2}, Lp/g;->keySet()Ljava/util/Set;

    .line 843
    .line 844
    .line 845
    move-result-object v9

    .line 846
    invoke-virtual {v12, v9}, Lp/g;->retainAll(Ljava/util/Collection;)Z

    .line 847
    .line 848
    .line 849
    new-instance v9, Lp/g;

    .line 850
    .line 851
    invoke-direct {v9}, Lp/g;-><init>()V

    .line 852
    .line 853
    .line 854
    invoke-virtual {v7}, Landroidx/fragment/app/L0;->getFragment()Landroidx/fragment/app/C;

    .line 855
    .line 856
    .line 857
    move-result-object v13

    .line 858
    iget-object v13, v13, Landroidx/fragment/app/C;->Q:Landroid/view/View;

    .line 859
    .line 860
    invoke-static {v9, v13}, Landroidx/fragment/app/s;->j(Lp/g;Landroid/view/View;)V

    .line 861
    .line 862
    .line 863
    invoke-virtual {v9, v0}, Lp/g;->retainAll(Ljava/util/Collection;)Z

    .line 864
    .line 865
    .line 866
    invoke-virtual {v12}, Lp/g;->values()Ljava/util/Collection;

    .line 867
    .line 868
    .line 869
    move-result-object v13

    .line 870
    invoke-virtual {v9, v13}, Lp/g;->retainAll(Ljava/util/Collection;)Z

    .line 871
    .line 872
    .line 873
    sget-object v13, Landroidx/fragment/app/w0;->a:Landroidx/fragment/app/C0;

    .line 874
    .line 875
    invoke-virtual {v12}, Lp/q;->size()I

    .line 876
    .line 877
    .line 878
    move-result v13

    .line 879
    add-int/lit8 v13, v13, -0x1

    .line 880
    .line 881
    :goto_16
    if-ltz v13, :cond_22

    .line 882
    .line 883
    invoke-virtual {v12, v13}, Lp/q;->valueAt(I)Ljava/lang/Object;

    .line 884
    .line 885
    .line 886
    move-result-object v19

    .line 887
    move-object/from16 v37, v11

    .line 888
    .line 889
    move-object/from16 v11, v19

    .line 890
    .line 891
    check-cast v11, Ljava/lang/String;

    .line 892
    .line 893
    invoke-virtual {v9, v11}, Lp/g;->containsKey(Ljava/lang/Object;)Z

    .line 894
    .line 895
    .line 896
    move-result v11

    .line 897
    if-nez v11, :cond_21

    .line 898
    .line 899
    invoke-virtual {v12, v13}, Lp/q;->removeAt(I)Ljava/lang/Object;

    .line 900
    .line 901
    .line 902
    :cond_21
    const/16 v16, -0x1

    .line 903
    .line 904
    add-int/lit8 v13, v13, -0x1

    .line 905
    .line 906
    move-object/from16 v11, v37

    .line 907
    .line 908
    goto :goto_16

    .line 909
    :cond_22
    move-object/from16 v37, v11

    .line 910
    .line 911
    const/16 v16, -0x1

    .line 912
    .line 913
    invoke-virtual {v12}, Lp/g;->keySet()Ljava/util/Set;

    .line 914
    .line 915
    .line 916
    move-result-object v11

    .line 917
    invoke-static {v2, v11}, Landroidx/fragment/app/s;->k(Lp/g;Ljava/util/Collection;)V

    .line 918
    .line 919
    .line 920
    invoke-virtual {v12}, Lp/g;->values()Ljava/util/Collection;

    .line 921
    .line 922
    .line 923
    move-result-object v11

    .line 924
    invoke-static {v9, v11}, Landroidx/fragment/app/s;->k(Lp/g;Ljava/util/Collection;)V

    .line 925
    .line 926
    .line 927
    invoke-virtual {v12}, Lp/q;->isEmpty()Z

    .line 928
    .line 929
    .line 930
    move-result v11

    .line 931
    if-eqz v11, :cond_23

    .line 932
    .line 933
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 934
    .line 935
    .line 936
    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 937
    .line 938
    .line 939
    move-object v0, v10

    .line 940
    move-object/from16 v14, v32

    .line 941
    .line 942
    move-object/from16 v9, v36

    .line 943
    .line 944
    const/4 v8, 0x0

    .line 945
    goto/16 :goto_19

    .line 946
    .line 947
    :cond_23
    invoke-virtual {v7}, Landroidx/fragment/app/L0;->getFragment()Landroidx/fragment/app/C;

    .line 948
    .line 949
    .line 950
    move-result-object v11

    .line 951
    invoke-virtual {v6}, Landroidx/fragment/app/L0;->getFragment()Landroidx/fragment/app/C;

    .line 952
    .line 953
    .line 954
    move-result-object v13

    .line 955
    if-eqz v1, :cond_24

    .line 956
    .line 957
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 958
    .line 959
    .line 960
    goto :goto_17

    .line 961
    :cond_24
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 962
    .line 963
    .line 964
    :goto_17
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/M0;->getContainer()Landroid/view/ViewGroup;

    .line 965
    .line 966
    .line 967
    move-result-object v11

    .line 968
    new-instance v13, Landroidx/fragment/app/l;

    .line 969
    .line 970
    invoke-direct {v13, v7, v6, v1, v9}, Landroidx/fragment/app/l;-><init>(Landroidx/fragment/app/L0;Landroidx/fragment/app/L0;ZLp/g;)V

    .line 971
    .line 972
    .line 973
    invoke-static {v11, v13}, LM/O;->add(Landroid/view/View;Ljava/lang/Runnable;)LM/O;

    .line 974
    .line 975
    .line 976
    invoke-virtual {v2}, Lp/g;->values()Ljava/util/Collection;

    .line 977
    .line 978
    .line 979
    move-result-object v11

    .line 980
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 981
    .line 982
    .line 983
    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    .line 984
    .line 985
    .line 986
    move-result v11

    .line 987
    if-nez v11, :cond_25

    .line 988
    .line 989
    const/4 v11, 0x0

    .line 990
    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 991
    .line 992
    .line 993
    move-result-object v13

    .line 994
    check-cast v13, Ljava/lang/String;

    .line 995
    .line 996
    invoke-virtual {v2, v13}, Lp/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 997
    .line 998
    .line 999
    move-result-object v2

    .line 1000
    move-object v14, v2

    .line 1001
    check-cast v14, Landroid/view/View;

    .line 1002
    .line 1003
    invoke-virtual {v15, v8, v14}, Landroidx/fragment/app/E0;->setEpicenter(Ljava/lang/Object;Landroid/view/View;)V

    .line 1004
    .line 1005
    .line 1006
    goto :goto_18

    .line 1007
    :cond_25
    const/4 v11, 0x0

    .line 1008
    move-object/from16 v14, v32

    .line 1009
    .line 1010
    :goto_18
    invoke-virtual {v9}, Lp/g;->values()Ljava/util/Collection;

    .line 1011
    .line 1012
    .line 1013
    move-result-object v2

    .line 1014
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1015
    .line 1016
    .line 1017
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1018
    .line 1019
    .line 1020
    move-result v2

    .line 1021
    if-nez v2, :cond_26

    .line 1022
    .line 1023
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1024
    .line 1025
    .line 1026
    move-result-object v0

    .line 1027
    check-cast v0, Ljava/lang/String;

    .line 1028
    .line 1029
    invoke-virtual {v9, v0}, Lp/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1030
    .line 1031
    .line 1032
    move-result-object v0

    .line 1033
    check-cast v0, Landroid/view/View;

    .line 1034
    .line 1035
    if-eqz v0, :cond_26

    .line 1036
    .line 1037
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/M0;->getContainer()Landroid/view/ViewGroup;

    .line 1038
    .line 1039
    .line 1040
    move-result-object v2

    .line 1041
    new-instance v9, Landroidx/fragment/app/m;

    .line 1042
    .line 1043
    invoke-direct {v9, v15, v0, v4}, Landroidx/fragment/app/m;-><init>(Landroidx/fragment/app/E0;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1044
    .line 1045
    .line 1046
    invoke-static {v2, v9}, LM/O;->add(Landroid/view/View;Ljava/lang/Runnable;)LM/O;

    .line 1047
    .line 1048
    .line 1049
    move/from16 v31, v17

    .line 1050
    .line 1051
    :cond_26
    invoke-virtual {v15, v8, v3, v5}, Landroidx/fragment/app/E0;->setSharedElementTargets(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    .line 1052
    .line 1053
    .line 1054
    const/16 v23, 0x0

    .line 1055
    .line 1056
    const/16 v24, 0x0

    .line 1057
    .line 1058
    const/16 v21, 0x0

    .line 1059
    .line 1060
    const/16 v22, 0x0

    .line 1061
    .line 1062
    move-object/from16 v25, v8

    .line 1063
    .line 1064
    move-object/from16 v20, v8

    .line 1065
    .line 1066
    move-object/from16 v26, v10

    .line 1067
    .line 1068
    move-object/from16 v19, v15

    .line 1069
    .line 1070
    invoke-virtual/range {v19 .. v26}, Landroidx/fragment/app/E0;->scheduleRemoveTargets(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 1071
    .line 1072
    .line 1073
    move-object/from16 v0, v26

    .line 1074
    .line 1075
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1076
    .line 1077
    move-object/from16 v9, v36

    .line 1078
    .line 1079
    invoke-virtual {v9, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1080
    .line 1081
    .line 1082
    invoke-virtual {v9, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1083
    .line 1084
    .line 1085
    goto :goto_19

    .line 1086
    :cond_27
    move-object/from16 v35, v2

    .line 1087
    .line 1088
    move-object/from16 v33, v9

    .line 1089
    .line 1090
    move-object/from16 v37, v11

    .line 1091
    .line 1092
    move-object/from16 v34, v13

    .line 1093
    .line 1094
    move-object/from16 v32, v14

    .line 1095
    .line 1096
    const/16 v16, -0x1

    .line 1097
    .line 1098
    move-object v9, v0

    .line 1099
    move-object v0, v10

    .line 1100
    move-object/from16 v14, v32

    .line 1101
    .line 1102
    :goto_19
    move-object v10, v0

    .line 1103
    move-object v0, v9

    .line 1104
    move-object/from16 v9, v33

    .line 1105
    .line 1106
    move-object/from16 v13, v34

    .line 1107
    .line 1108
    move-object/from16 v2, v35

    .line 1109
    .line 1110
    move-object/from16 v11, v37

    .line 1111
    .line 1112
    goto/16 :goto_a

    .line 1113
    .line 1114
    :cond_28
    move-object/from16 v35, v2

    .line 1115
    .line 1116
    move-object/from16 v33, v9

    .line 1117
    .line 1118
    move-object/from16 v37, v11

    .line 1119
    .line 1120
    move-object/from16 v34, v13

    .line 1121
    .line 1122
    move-object/from16 v32, v14

    .line 1123
    .line 1124
    move-object v9, v0

    .line 1125
    move-object v0, v10

    .line 1126
    new-instance v1, Ljava/util/ArrayList;

    .line 1127
    .line 1128
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1129
    .line 1130
    .line 1131
    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1132
    .line 1133
    .line 1134
    move-result-object v2

    .line 1135
    const/4 v10, 0x0

    .line 1136
    const/4 v11, 0x0

    .line 1137
    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1138
    .line 1139
    .line 1140
    move-result v13

    .line 1141
    if-eqz v13, :cond_35

    .line 1142
    .line 1143
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1144
    .line 1145
    .line 1146
    move-result-object v13

    .line 1147
    check-cast v13, Landroidx/fragment/app/r;

    .line 1148
    .line 1149
    invoke-virtual {v13}, Landroidx/fragment/app/q;->b()Z

    .line 1150
    .line 1151
    .line 1152
    move-result v14

    .line 1153
    move-object/from16 p2, v2

    .line 1154
    .line 1155
    iget-object v2, v13, Landroidx/fragment/app/q;->a:Landroidx/fragment/app/L0;

    .line 1156
    .line 1157
    if-eqz v14, :cond_29

    .line 1158
    .line 1159
    sget-object v14, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1160
    .line 1161
    invoke-virtual {v9, v2, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1162
    .line 1163
    .line 1164
    invoke-virtual {v13}, Landroidx/fragment/app/q;->a()V

    .line 1165
    .line 1166
    .line 1167
    move-object/from16 v2, p2

    .line 1168
    .line 1169
    goto :goto_1a

    .line 1170
    :cond_29
    iget-object v14, v13, Landroidx/fragment/app/r;->c:Ljava/lang/Object;

    .line 1171
    .line 1172
    invoke-virtual {v15, v14}, Landroidx/fragment/app/E0;->cloneTransition(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1173
    .line 1174
    .line 1175
    move-result-object v14

    .line 1176
    if-eqz v8, :cond_2b

    .line 1177
    .line 1178
    if-eq v2, v6, :cond_2a

    .line 1179
    .line 1180
    if-ne v2, v7, :cond_2b

    .line 1181
    .line 1182
    :cond_2a
    move/from16 v16, v17

    .line 1183
    .line 1184
    goto :goto_1b

    .line 1185
    :cond_2b
    const/16 v16, 0x0

    .line 1186
    .line 1187
    :goto_1b
    if-nez v14, :cond_2d

    .line 1188
    .line 1189
    if-nez v16, :cond_2c

    .line 1190
    .line 1191
    sget-object v14, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1192
    .line 1193
    invoke-virtual {v9, v2, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1194
    .line 1195
    .line 1196
    invoke-virtual {v13}, Landroidx/fragment/app/q;->a()V

    .line 1197
    .line 1198
    .line 1199
    :cond_2c
    move-object/from16 v16, v3

    .line 1200
    .line 1201
    move-object/from16 v36, v7

    .line 1202
    .line 1203
    move-object/from16 v29, v12

    .line 1204
    .line 1205
    move-object/from16 v3, v32

    .line 1206
    .line 1207
    move-object/from16 v14, v33

    .line 1208
    .line 1209
    goto/16 :goto_1f

    .line 1210
    .line 1211
    :cond_2d
    move-object/from16 v29, v12

    .line 1212
    .line 1213
    new-instance v12, Ljava/util/ArrayList;

    .line 1214
    .line 1215
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1216
    .line 1217
    .line 1218
    move-object/from16 v36, v7

    .line 1219
    .line 1220
    invoke-virtual {v2}, Landroidx/fragment/app/L0;->getFragment()Landroidx/fragment/app/C;

    .line 1221
    .line 1222
    .line 1223
    move-result-object v7

    .line 1224
    iget-object v7, v7, Landroidx/fragment/app/C;->Q:Landroid/view/View;

    .line 1225
    .line 1226
    invoke-static {v7, v12}, Landroidx/fragment/app/s;->i(Landroid/view/View;Ljava/util/ArrayList;)V

    .line 1227
    .line 1228
    .line 1229
    if-eqz v16, :cond_2f

    .line 1230
    .line 1231
    if-ne v2, v6, :cond_2e

    .line 1232
    .line 1233
    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 1234
    .line 1235
    .line 1236
    goto :goto_1c

    .line 1237
    :cond_2e
    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 1238
    .line 1239
    .line 1240
    :cond_2f
    :goto_1c
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1241
    .line 1242
    .line 1243
    move-result v7

    .line 1244
    if-eqz v7, :cond_30

    .line 1245
    .line 1246
    invoke-virtual {v15, v14, v3}, Landroidx/fragment/app/E0;->addTarget(Ljava/lang/Object;Landroid/view/View;)V

    .line 1247
    .line 1248
    .line 1249
    move-object/from16 v16, v3

    .line 1250
    .line 1251
    move-object v7, v14

    .line 1252
    goto :goto_1d

    .line 1253
    :cond_30
    invoke-virtual {v15, v14, v12}, Landroidx/fragment/app/E0;->addTargets(Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 1254
    .line 1255
    .line 1256
    const/16 v25, 0x0

    .line 1257
    .line 1258
    const/16 v26, 0x0

    .line 1259
    .line 1260
    const/16 v23, 0x0

    .line 1261
    .line 1262
    const/16 v24, 0x0

    .line 1263
    .line 1264
    move-object/from16 v21, v14

    .line 1265
    .line 1266
    move-object/from16 v22, v12

    .line 1267
    .line 1268
    move-object/from16 v20, v14

    .line 1269
    .line 1270
    move-object/from16 v19, v15

    .line 1271
    .line 1272
    invoke-virtual/range {v19 .. v26}, Landroidx/fragment/app/E0;->scheduleRemoveTargets(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 1273
    .line 1274
    .line 1275
    move-object/from16 v7, v20

    .line 1276
    .line 1277
    invoke-virtual {v2}, Landroidx/fragment/app/L0;->getFinalState()Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 1278
    .line 1279
    .line 1280
    move-result-object v14

    .line 1281
    move-object/from16 v16, v3

    .line 1282
    .line 1283
    move-object/from16 v3, v35

    .line 1284
    .line 1285
    if-ne v14, v3, :cond_31

    .line 1286
    .line 1287
    move-object/from16 v14, v34

    .line 1288
    .line 1289
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1290
    .line 1291
    .line 1292
    new-instance v14, Ljava/util/ArrayList;

    .line 1293
    .line 1294
    invoke-direct {v14, v12}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1295
    .line 1296
    .line 1297
    move-object/from16 v35, v3

    .line 1298
    .line 1299
    invoke-virtual {v2}, Landroidx/fragment/app/L0;->getFragment()Landroidx/fragment/app/C;

    .line 1300
    .line 1301
    .line 1302
    move-result-object v3

    .line 1303
    iget-object v3, v3, Landroidx/fragment/app/C;->Q:Landroid/view/View;

    .line 1304
    .line 1305
    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1306
    .line 1307
    .line 1308
    invoke-virtual {v2}, Landroidx/fragment/app/L0;->getFragment()Landroidx/fragment/app/C;

    .line 1309
    .line 1310
    .line 1311
    move-result-object v3

    .line 1312
    iget-object v3, v3, Landroidx/fragment/app/C;->Q:Landroid/view/View;

    .line 1313
    .line 1314
    invoke-virtual {v15, v7, v3, v14}, Landroidx/fragment/app/E0;->scheduleHideFragmentView(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    .line 1315
    .line 1316
    .line 1317
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/M0;->getContainer()Landroid/view/ViewGroup;

    .line 1318
    .line 1319
    .line 1320
    move-result-object v3

    .line 1321
    new-instance v14, Landroidx/fragment/app/n;

    .line 1322
    .line 1323
    invoke-direct {v14, v12}, Landroidx/fragment/app/n;-><init>(Ljava/util/ArrayList;)V

    .line 1324
    .line 1325
    .line 1326
    invoke-static {v3, v14}, LM/O;->add(Landroid/view/View;Ljava/lang/Runnable;)LM/O;

    .line 1327
    .line 1328
    .line 1329
    goto :goto_1d

    .line 1330
    :cond_31
    move-object/from16 v35, v3

    .line 1331
    .line 1332
    :goto_1d
    invoke-virtual {v2}, Landroidx/fragment/app/L0;->getFinalState()Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 1333
    .line 1334
    .line 1335
    move-result-object v3

    .line 1336
    move-object/from16 v14, v33

    .line 1337
    .line 1338
    if-ne v3, v14, :cond_33

    .line 1339
    .line 1340
    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1341
    .line 1342
    .line 1343
    if-eqz v31, :cond_32

    .line 1344
    .line 1345
    invoke-virtual {v15, v7, v4}, Landroidx/fragment/app/E0;->setEpicenter(Ljava/lang/Object;Landroid/graphics/Rect;)V

    .line 1346
    .line 1347
    .line 1348
    :cond_32
    move-object/from16 v3, v32

    .line 1349
    .line 1350
    goto :goto_1e

    .line 1351
    :cond_33
    move-object/from16 v3, v32

    .line 1352
    .line 1353
    invoke-virtual {v15, v7, v3}, Landroidx/fragment/app/E0;->setEpicenter(Ljava/lang/Object;Landroid/view/View;)V

    .line 1354
    .line 1355
    .line 1356
    :goto_1e
    sget-object v12, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1357
    .line 1358
    invoke-virtual {v9, v2, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1359
    .line 1360
    .line 1361
    iget-boolean v2, v13, Landroidx/fragment/app/r;->d:Z

    .line 1362
    .line 1363
    if-eqz v2, :cond_34

    .line 1364
    .line 1365
    const/4 v2, 0x0

    .line 1366
    invoke-virtual {v15, v10, v7, v2}, Landroidx/fragment/app/E0;->mergeTransitionsTogether(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1367
    .line 1368
    .line 1369
    move-result-object v7

    .line 1370
    move-object v10, v7

    .line 1371
    goto :goto_1f

    .line 1372
    :cond_34
    const/4 v2, 0x0

    .line 1373
    invoke-virtual {v15, v11, v7, v2}, Landroidx/fragment/app/E0;->mergeTransitionsTogether(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1374
    .line 1375
    .line 1376
    move-result-object v7

    .line 1377
    move-object v11, v7

    .line 1378
    :goto_1f
    move-object/from16 v2, p2

    .line 1379
    .line 1380
    move-object/from16 v32, v3

    .line 1381
    .line 1382
    move-object/from16 v33, v14

    .line 1383
    .line 1384
    move-object/from16 v3, v16

    .line 1385
    .line 1386
    move-object/from16 v12, v29

    .line 1387
    .line 1388
    move-object/from16 v7, v36

    .line 1389
    .line 1390
    goto/16 :goto_1a

    .line 1391
    .line 1392
    :cond_35
    move-object/from16 v36, v7

    .line 1393
    .line 1394
    move-object/from16 v29, v12

    .line 1395
    .line 1396
    invoke-virtual {v15, v10, v11, v8}, Landroidx/fragment/app/E0;->mergeTransitionsInSequence(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1397
    .line 1398
    .line 1399
    move-result-object v2

    .line 1400
    if-nez v2, :cond_36

    .line 1401
    .line 1402
    move-object/from16 v10, v36

    .line 1403
    .line 1404
    move-object/from16 v11, v37

    .line 1405
    .line 1406
    goto/16 :goto_25

    .line 1407
    .line 1408
    :cond_36
    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1409
    .line 1410
    .line 1411
    move-result-object v3

    .line 1412
    :goto_20
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 1413
    .line 1414
    .line 1415
    move-result v4

    .line 1416
    if-eqz v4, :cond_3e

    .line 1417
    .line 1418
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1419
    .line 1420
    .line 1421
    move-result-object v4

    .line 1422
    check-cast v4, Landroidx/fragment/app/r;

    .line 1423
    .line 1424
    invoke-virtual {v4}, Landroidx/fragment/app/q;->b()Z

    .line 1425
    .line 1426
    .line 1427
    move-result v7

    .line 1428
    if-eqz v7, :cond_37

    .line 1429
    .line 1430
    goto :goto_20

    .line 1431
    :cond_37
    iget-object v7, v4, Landroidx/fragment/app/q;->a:Landroidx/fragment/app/L0;

    .line 1432
    .line 1433
    move-object/from16 v10, v36

    .line 1434
    .line 1435
    if-eqz v8, :cond_39

    .line 1436
    .line 1437
    if-eq v7, v6, :cond_38

    .line 1438
    .line 1439
    if-ne v7, v10, :cond_39

    .line 1440
    .line 1441
    :cond_38
    move/from16 v11, v17

    .line 1442
    .line 1443
    goto :goto_21

    .line 1444
    :cond_39
    const/4 v11, 0x0

    .line 1445
    :goto_21
    iget-object v12, v4, Landroidx/fragment/app/r;->c:Ljava/lang/Object;

    .line 1446
    .line 1447
    if-nez v12, :cond_3b

    .line 1448
    .line 1449
    if-eqz v11, :cond_3a

    .line 1450
    .line 1451
    goto :goto_22

    .line 1452
    :cond_3a
    move-object/from16 v11, v37

    .line 1453
    .line 1454
    goto :goto_24

    .line 1455
    :cond_3b
    :goto_22
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/M0;->getContainer()Landroid/view/ViewGroup;

    .line 1456
    .line 1457
    .line 1458
    move-result-object v11

    .line 1459
    invoke-static {v11}, LM/p0;->isLaidOut(Landroid/view/View;)Z

    .line 1460
    .line 1461
    .line 1462
    move-result v11

    .line 1463
    if-nez v11, :cond_3d

    .line 1464
    .line 1465
    invoke-static/range {v18 .. v18}, Landroidx/fragment/app/i0;->isLoggingEnabled(I)Z

    .line 1466
    .line 1467
    .line 1468
    move-result v11

    .line 1469
    if-eqz v11, :cond_3c

    .line 1470
    .line 1471
    new-instance v11, Ljava/lang/StringBuilder;

    .line 1472
    .line 1473
    const-string v12, "SpecialEffectsController: Container "

    .line 1474
    .line 1475
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1476
    .line 1477
    .line 1478
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/M0;->getContainer()Landroid/view/ViewGroup;

    .line 1479
    .line 1480
    .line 1481
    move-result-object v12

    .line 1482
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1483
    .line 1484
    .line 1485
    const-string v12, " has not been laid out. Completing operation "

    .line 1486
    .line 1487
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1488
    .line 1489
    .line 1490
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1491
    .line 1492
    .line 1493
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1494
    .line 1495
    .line 1496
    move-result-object v7

    .line 1497
    move-object/from16 v11, v37

    .line 1498
    .line 1499
    invoke-static {v11, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1500
    .line 1501
    .line 1502
    goto :goto_23

    .line 1503
    :cond_3c
    move-object/from16 v11, v37

    .line 1504
    .line 1505
    :goto_23
    invoke-virtual {v4}, Landroidx/fragment/app/q;->a()V

    .line 1506
    .line 1507
    .line 1508
    goto :goto_24

    .line 1509
    :cond_3d
    move-object/from16 v11, v37

    .line 1510
    .line 1511
    invoke-virtual {v7}, Landroidx/fragment/app/L0;->getFragment()Landroidx/fragment/app/C;

    .line 1512
    .line 1513
    .line 1514
    move-result-object v12

    .line 1515
    new-instance v13, Landroidx/fragment/app/o;

    .line 1516
    .line 1517
    invoke-direct {v13, v4, v7}, Landroidx/fragment/app/o;-><init>(Landroidx/fragment/app/r;Landroidx/fragment/app/L0;)V

    .line 1518
    .line 1519
    .line 1520
    iget-object v4, v4, Landroidx/fragment/app/q;->b:LI/f;

    .line 1521
    .line 1522
    invoke-virtual {v15, v12, v2, v4, v13}, Landroidx/fragment/app/E0;->setListenerForTransitionEnd(Landroidx/fragment/app/C;Ljava/lang/Object;LI/f;Ljava/lang/Runnable;)V

    .line 1523
    .line 1524
    .line 1525
    :goto_24
    move-object/from16 v36, v10

    .line 1526
    .line 1527
    move-object/from16 v37, v11

    .line 1528
    .line 1529
    goto :goto_20

    .line 1530
    :cond_3e
    move-object/from16 v10, v36

    .line 1531
    .line 1532
    move-object/from16 v11, v37

    .line 1533
    .line 1534
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/M0;->getContainer()Landroid/view/ViewGroup;

    .line 1535
    .line 1536
    .line 1537
    move-result-object v3

    .line 1538
    invoke-static {v3}, LM/p0;->isLaidOut(Landroid/view/View;)Z

    .line 1539
    .line 1540
    .line 1541
    move-result v3

    .line 1542
    if-nez v3, :cond_3f

    .line 1543
    .line 1544
    :goto_25
    const/4 v2, 0x0

    .line 1545
    goto/16 :goto_2c

    .line 1546
    .line 1547
    :cond_3f
    const/4 v3, 0x4

    .line 1548
    invoke-static {v3, v1}, Landroidx/fragment/app/w0;->a(ILjava/util/ArrayList;)V

    .line 1549
    .line 1550
    .line 1551
    new-instance v3, Ljava/util/ArrayList;

    .line 1552
    .line 1553
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1554
    .line 1555
    .line 1556
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 1557
    .line 1558
    .line 1559
    move-result v4

    .line 1560
    const/4 v7, 0x0

    .line 1561
    :goto_26
    if-ge v7, v4, :cond_40

    .line 1562
    .line 1563
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1564
    .line 1565
    .line 1566
    move-result-object v12

    .line 1567
    check-cast v12, Landroid/view/View;

    .line 1568
    .line 1569
    invoke-static {v12}, LM/p0;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    .line 1570
    .line 1571
    .line 1572
    move-result-object v13

    .line 1573
    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1574
    .line 1575
    .line 1576
    const/4 v13, 0x0

    .line 1577
    invoke-static {v12, v13}, LM/p0;->setTransitionName(Landroid/view/View;Ljava/lang/String;)V

    .line 1578
    .line 1579
    .line 1580
    add-int/lit8 v7, v7, 0x1

    .line 1581
    .line 1582
    goto :goto_26

    .line 1583
    :cond_40
    invoke-static/range {v18 .. v18}, Landroidx/fragment/app/i0;->isLoggingEnabled(I)Z

    .line 1584
    .line 1585
    .line 1586
    move-result v4

    .line 1587
    if-eqz v4, :cond_42

    .line 1588
    .line 1589
    const-string v4, ">>>>> Beginning transition <<<<<"

    .line 1590
    .line 1591
    invoke-static {v11, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1592
    .line 1593
    .line 1594
    const-string v4, ">>>>> SharedElementFirstOutViews <<<<<"

    .line 1595
    .line 1596
    invoke-static {v11, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1597
    .line 1598
    .line 1599
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1600
    .line 1601
    .line 1602
    move-result-object v4

    .line 1603
    :goto_27
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 1604
    .line 1605
    .line 1606
    move-result v7

    .line 1607
    const-string v12, " Name: "

    .line 1608
    .line 1609
    const-string v13, "View: "

    .line 1610
    .line 1611
    if-eqz v7, :cond_41

    .line 1612
    .line 1613
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1614
    .line 1615
    .line 1616
    move-result-object v7

    .line 1617
    check-cast v7, Landroid/view/View;

    .line 1618
    .line 1619
    new-instance v14, Ljava/lang/StringBuilder;

    .line 1620
    .line 1621
    invoke-direct {v14, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1622
    .line 1623
    .line 1624
    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1625
    .line 1626
    .line 1627
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1628
    .line 1629
    .line 1630
    invoke-static {v7}, LM/p0;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    .line 1631
    .line 1632
    .line 1633
    move-result-object v7

    .line 1634
    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1635
    .line 1636
    .line 1637
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1638
    .line 1639
    .line 1640
    move-result-object v7

    .line 1641
    invoke-static {v11, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1642
    .line 1643
    .line 1644
    goto :goto_27

    .line 1645
    :cond_41
    const-string v4, ">>>>> SharedElementLastInViews <<<<<"

    .line 1646
    .line 1647
    invoke-static {v11, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1648
    .line 1649
    .line 1650
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1651
    .line 1652
    .line 1653
    move-result-object v4

    .line 1654
    :goto_28
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 1655
    .line 1656
    .line 1657
    move-result v7

    .line 1658
    if-eqz v7, :cond_42

    .line 1659
    .line 1660
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1661
    .line 1662
    .line 1663
    move-result-object v7

    .line 1664
    check-cast v7, Landroid/view/View;

    .line 1665
    .line 1666
    new-instance v14, Ljava/lang/StringBuilder;

    .line 1667
    .line 1668
    invoke-direct {v14, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1669
    .line 1670
    .line 1671
    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1672
    .line 1673
    .line 1674
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1675
    .line 1676
    .line 1677
    invoke-static {v7}, LM/p0;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    .line 1678
    .line 1679
    .line 1680
    move-result-object v7

    .line 1681
    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1682
    .line 1683
    .line 1684
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1685
    .line 1686
    .line 1687
    move-result-object v7

    .line 1688
    invoke-static {v11, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1689
    .line 1690
    .line 1691
    goto :goto_28

    .line 1692
    :cond_42
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/M0;->getContainer()Landroid/view/ViewGroup;

    .line 1693
    .line 1694
    .line 1695
    move-result-object v4

    .line 1696
    invoke-virtual {v15, v4, v2}, Landroidx/fragment/app/E0;->beginDelayedTransition(Landroid/view/ViewGroup;Ljava/lang/Object;)V

    .line 1697
    .line 1698
    .line 1699
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/M0;->getContainer()Landroid/view/ViewGroup;

    .line 1700
    .line 1701
    .line 1702
    move-result-object v2

    .line 1703
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 1704
    .line 1705
    .line 1706
    move-result v4

    .line 1707
    new-instance v7, Ljava/util/ArrayList;

    .line 1708
    .line 1709
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1710
    .line 1711
    .line 1712
    const/4 v12, 0x0

    .line 1713
    :goto_29
    if-ge v12, v4, :cond_46

    .line 1714
    .line 1715
    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1716
    .line 1717
    .line 1718
    move-result-object v13

    .line 1719
    check-cast v13, Landroid/view/View;

    .line 1720
    .line 1721
    invoke-static {v13}, LM/p0;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    .line 1722
    .line 1723
    .line 1724
    move-result-object v14

    .line 1725
    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1726
    .line 1727
    .line 1728
    if-nez v14, :cond_43

    .line 1729
    .line 1730
    move/from16 v20, v4

    .line 1731
    .line 1732
    move-object/from16 v23, v5

    .line 1733
    .line 1734
    move-object/from16 v24, v7

    .line 1735
    .line 1736
    move-object/from16 v13, v29

    .line 1737
    .line 1738
    goto :goto_2b

    .line 1739
    :cond_43
    move-object/from16 v23, v5

    .line 1740
    .line 1741
    const/4 v5, 0x0

    .line 1742
    invoke-static {v13, v5}, LM/p0;->setTransitionName(Landroid/view/View;Ljava/lang/String;)V

    .line 1743
    .line 1744
    .line 1745
    move-object/from16 v13, v29

    .line 1746
    .line 1747
    invoke-virtual {v13, v14}, Lp/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1748
    .line 1749
    .line 1750
    move-result-object v16

    .line 1751
    move-object/from16 v5, v16

    .line 1752
    .line 1753
    check-cast v5, Ljava/lang/String;

    .line 1754
    .line 1755
    move-object/from16 v24, v7

    .line 1756
    .line 1757
    const/4 v7, 0x0

    .line 1758
    :goto_2a
    move/from16 v20, v4

    .line 1759
    .line 1760
    if-ge v7, v4, :cond_45

    .line 1761
    .line 1762
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1763
    .line 1764
    .line 1765
    move-result-object v4

    .line 1766
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1767
    .line 1768
    .line 1769
    move-result v4

    .line 1770
    if-eqz v4, :cond_44

    .line 1771
    .line 1772
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1773
    .line 1774
    .line 1775
    move-result-object v4

    .line 1776
    check-cast v4, Landroid/view/View;

    .line 1777
    .line 1778
    invoke-static {v4, v14}, LM/p0;->setTransitionName(Landroid/view/View;Ljava/lang/String;)V

    .line 1779
    .line 1780
    .line 1781
    goto :goto_2b

    .line 1782
    :cond_44
    add-int/lit8 v7, v7, 0x1

    .line 1783
    .line 1784
    move/from16 v4, v20

    .line 1785
    .line 1786
    goto :goto_2a

    .line 1787
    :cond_45
    :goto_2b
    add-int/lit8 v12, v12, 0x1

    .line 1788
    .line 1789
    move-object/from16 v29, v13

    .line 1790
    .line 1791
    move/from16 v4, v20

    .line 1792
    .line 1793
    move-object/from16 v5, v23

    .line 1794
    .line 1795
    move-object/from16 v7, v24

    .line 1796
    .line 1797
    goto :goto_29

    .line 1798
    :cond_46
    move/from16 v20, v4

    .line 1799
    .line 1800
    move-object/from16 v23, v5

    .line 1801
    .line 1802
    move-object/from16 v24, v7

    .line 1803
    .line 1804
    new-instance v19, Landroidx/fragment/app/D0;

    .line 1805
    .line 1806
    move-object/from16 v21, v0

    .line 1807
    .line 1808
    move-object/from16 v22, v3

    .line 1809
    .line 1810
    invoke-direct/range {v19 .. v24}, Landroidx/fragment/app/D0;-><init>(ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1811
    .line 1812
    .line 1813
    move-object/from16 v4, v19

    .line 1814
    .line 1815
    move-object/from16 v3, v21

    .line 1816
    .line 1817
    move-object/from16 v0, v23

    .line 1818
    .line 1819
    invoke-static {v2, v4}, LM/O;->add(Landroid/view/View;Ljava/lang/Runnable;)LM/O;

    .line 1820
    .line 1821
    .line 1822
    const/4 v2, 0x0

    .line 1823
    invoke-static {v2, v1}, Landroidx/fragment/app/w0;->a(ILjava/util/ArrayList;)V

    .line 1824
    .line 1825
    .line 1826
    invoke-virtual {v15, v8, v0, v3}, Landroidx/fragment/app/E0;->swapSharedElementTargets(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1827
    .line 1828
    .line 1829
    :goto_2c
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1830
    .line 1831
    invoke-virtual {v9, v0}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    .line 1832
    .line 1833
    .line 1834
    move-result v0

    .line 1835
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/M0;->getContainer()Landroid/view/ViewGroup;

    .line 1836
    .line 1837
    .line 1838
    move-result-object v1

    .line 1839
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 1840
    .line 1841
    .line 1842
    move-result-object v3

    .line 1843
    new-instance v4, Ljava/util/ArrayList;

    .line 1844
    .line 1845
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1846
    .line 1847
    .line 1848
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1849
    .line 1850
    .line 1851
    move-result-object v5

    .line 1852
    move v7, v2

    .line 1853
    :goto_2d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 1854
    .line 1855
    .line 1856
    move-result v8

    .line 1857
    const-string v12, " has started."

    .line 1858
    .line 1859
    if-eqz v8, :cond_4f

    .line 1860
    .line 1861
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1862
    .line 1863
    .line 1864
    move-result-object v8

    .line 1865
    check-cast v8, Landroidx/fragment/app/p;

    .line 1866
    .line 1867
    invoke-virtual {v8}, Landroidx/fragment/app/q;->b()Z

    .line 1868
    .line 1869
    .line 1870
    move-result v13

    .line 1871
    if-eqz v13, :cond_47

    .line 1872
    .line 1873
    invoke-virtual {v8}, Landroidx/fragment/app/q;->a()V

    .line 1874
    .line 1875
    .line 1876
    :goto_2e
    move/from16 p2, v0

    .line 1877
    .line 1878
    goto :goto_2f

    .line 1879
    :cond_47
    invoke-virtual {v8, v3}, Landroidx/fragment/app/p;->c(Landroid/content/Context;)Landroidx/fragment/app/I;

    .line 1880
    .line 1881
    .line 1882
    move-result-object v13

    .line 1883
    if-nez v13, :cond_48

    .line 1884
    .line 1885
    invoke-virtual {v8}, Landroidx/fragment/app/q;->a()V

    .line 1886
    .line 1887
    .line 1888
    goto :goto_2e

    .line 1889
    :cond_48
    iget-object v13, v13, Landroidx/fragment/app/I;->b:Landroid/animation/Animator;

    .line 1890
    .line 1891
    if-nez v13, :cond_49

    .line 1892
    .line 1893
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1894
    .line 1895
    .line 1896
    goto :goto_2e

    .line 1897
    :cond_49
    iget-object v14, v8, Landroidx/fragment/app/q;->a:Landroidx/fragment/app/L0;

    .line 1898
    .line 1899
    invoke-virtual {v14}, Landroidx/fragment/app/L0;->getFragment()Landroidx/fragment/app/C;

    .line 1900
    .line 1901
    .line 1902
    move-result-object v15

    .line 1903
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1904
    .line 1905
    move/from16 p2, v0

    .line 1906
    .line 1907
    invoke-virtual {v9, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1908
    .line 1909
    .line 1910
    move-result-object v0

    .line 1911
    invoke-virtual {v2, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 1912
    .line 1913
    .line 1914
    move-result v0

    .line 1915
    if-eqz v0, :cond_4b

    .line 1916
    .line 1917
    invoke-static/range {v18 .. v18}, Landroidx/fragment/app/i0;->isLoggingEnabled(I)Z

    .line 1918
    .line 1919
    .line 1920
    move-result v0

    .line 1921
    if-eqz v0, :cond_4a

    .line 1922
    .line 1923
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1924
    .line 1925
    const-string v2, "Ignoring Animator set on "

    .line 1926
    .line 1927
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1928
    .line 1929
    .line 1930
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1931
    .line 1932
    .line 1933
    const-string v2, " as this Fragment was involved in a Transition."

    .line 1934
    .line 1935
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1936
    .line 1937
    .line 1938
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1939
    .line 1940
    .line 1941
    move-result-object v0

    .line 1942
    invoke-static {v11, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1943
    .line 1944
    .line 1945
    :cond_4a
    invoke-virtual {v8}, Landroidx/fragment/app/q;->a()V

    .line 1946
    .line 1947
    .line 1948
    :goto_2f
    move/from16 v0, p2

    .line 1949
    .line 1950
    const/4 v2, 0x0

    .line 1951
    goto :goto_2d

    .line 1952
    :cond_4b
    invoke-virtual {v14}, Landroidx/fragment/app/L0;->getFinalState()Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 1953
    .line 1954
    .line 1955
    move-result-object v0

    .line 1956
    move-object/from16 v2, v35

    .line 1957
    .line 1958
    if-ne v0, v2, :cond_4c

    .line 1959
    .line 1960
    move/from16 v22, v17

    .line 1961
    .line 1962
    goto :goto_30

    .line 1963
    :cond_4c
    const/16 v22, 0x0

    .line 1964
    .line 1965
    :goto_30
    move-object/from16 v0, v34

    .line 1966
    .line 1967
    if-eqz v22, :cond_4d

    .line 1968
    .line 1969
    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1970
    .line 1971
    .line 1972
    :cond_4d
    iget-object v7, v15, Landroidx/fragment/app/C;->Q:Landroid/view/View;

    .line 1973
    .line 1974
    invoke-virtual {v1, v7}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    .line 1975
    .line 1976
    .line 1977
    new-instance v19, Landroidx/fragment/app/g;

    .line 1978
    .line 1979
    move-object/from16 v20, v1

    .line 1980
    .line 1981
    move-object/from16 v21, v7

    .line 1982
    .line 1983
    move-object/from16 v24, v8

    .line 1984
    .line 1985
    move-object/from16 v23, v14

    .line 1986
    .line 1987
    invoke-direct/range {v19 .. v24}, Landroidx/fragment/app/g;-><init>(Landroid/view/ViewGroup;Landroid/view/View;ZLandroidx/fragment/app/L0;Landroidx/fragment/app/p;)V

    .line 1988
    .line 1989
    .line 1990
    move-object/from16 v15, v19

    .line 1991
    .line 1992
    move-object/from16 v14, v21

    .line 1993
    .line 1994
    move-object/from16 v7, v23

    .line 1995
    .line 1996
    invoke-virtual {v13, v15}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1997
    .line 1998
    .line 1999
    invoke-virtual {v13, v14}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 2000
    .line 2001
    .line 2002
    invoke-virtual {v13}, Landroid/animation/Animator;->start()V

    .line 2003
    .line 2004
    .line 2005
    invoke-static/range {v18 .. v18}, Landroidx/fragment/app/i0;->isLoggingEnabled(I)Z

    .line 2006
    .line 2007
    .line 2008
    move-result v14

    .line 2009
    if-eqz v14, :cond_4e

    .line 2010
    .line 2011
    new-instance v14, Ljava/lang/StringBuilder;

    .line 2012
    .line 2013
    const-string v15, "Animator from operation "

    .line 2014
    .line 2015
    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2016
    .line 2017
    .line 2018
    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2019
    .line 2020
    .line 2021
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2022
    .line 2023
    .line 2024
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2025
    .line 2026
    .line 2027
    move-result-object v12

    .line 2028
    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2029
    .line 2030
    .line 2031
    :cond_4e
    new-instance v12, Landroidx/fragment/app/h;

    .line 2032
    .line 2033
    invoke-direct {v12, v13, v7}, Landroidx/fragment/app/h;-><init>(Landroid/animation/Animator;Landroidx/fragment/app/L0;)V

    .line 2034
    .line 2035
    .line 2036
    iget-object v7, v8, Landroidx/fragment/app/q;->b:LI/f;

    .line 2037
    .line 2038
    invoke-virtual {v7, v12}, LI/f;->setOnCancelListener(LI/e;)V

    .line 2039
    .line 2040
    .line 2041
    move-object/from16 v34, v0

    .line 2042
    .line 2043
    move-object/from16 v35, v2

    .line 2044
    .line 2045
    move/from16 v7, v17

    .line 2046
    .line 2047
    const/4 v2, 0x0

    .line 2048
    move/from16 v0, p2

    .line 2049
    .line 2050
    goto/16 :goto_2d

    .line 2051
    .line 2052
    :cond_4f
    move/from16 p2, v0

    .line 2053
    .line 2054
    move-object/from16 v0, v34

    .line 2055
    .line 2056
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 2057
    .line 2058
    .line 2059
    move-result-object v2

    .line 2060
    :goto_31
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 2061
    .line 2062
    .line 2063
    move-result v4

    .line 2064
    if-eqz v4, :cond_56

    .line 2065
    .line 2066
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2067
    .line 2068
    .line 2069
    move-result-object v4

    .line 2070
    check-cast v4, Landroidx/fragment/app/p;

    .line 2071
    .line 2072
    iget-object v5, v4, Landroidx/fragment/app/q;->a:Landroidx/fragment/app/L0;

    .line 2073
    .line 2074
    invoke-virtual {v5}, Landroidx/fragment/app/L0;->getFragment()Landroidx/fragment/app/C;

    .line 2075
    .line 2076
    .line 2077
    move-result-object v8

    .line 2078
    const-string v9, "Ignoring Animation set on "

    .line 2079
    .line 2080
    if-eqz p2, :cond_51

    .line 2081
    .line 2082
    invoke-static/range {v18 .. v18}, Landroidx/fragment/app/i0;->isLoggingEnabled(I)Z

    .line 2083
    .line 2084
    .line 2085
    move-result v5

    .line 2086
    if-eqz v5, :cond_50

    .line 2087
    .line 2088
    new-instance v5, Ljava/lang/StringBuilder;

    .line 2089
    .line 2090
    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2091
    .line 2092
    .line 2093
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2094
    .line 2095
    .line 2096
    const-string v8, " as Animations cannot run alongside Transitions."

    .line 2097
    .line 2098
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2099
    .line 2100
    .line 2101
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2102
    .line 2103
    .line 2104
    move-result-object v5

    .line 2105
    invoke-static {v11, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2106
    .line 2107
    .line 2108
    :cond_50
    invoke-virtual {v4}, Landroidx/fragment/app/q;->a()V

    .line 2109
    .line 2110
    .line 2111
    goto :goto_31

    .line 2112
    :cond_51
    if-eqz v7, :cond_53

    .line 2113
    .line 2114
    invoke-static/range {v18 .. v18}, Landroidx/fragment/app/i0;->isLoggingEnabled(I)Z

    .line 2115
    .line 2116
    .line 2117
    move-result v5

    .line 2118
    if-eqz v5, :cond_52

    .line 2119
    .line 2120
    new-instance v5, Ljava/lang/StringBuilder;

    .line 2121
    .line 2122
    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2123
    .line 2124
    .line 2125
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2126
    .line 2127
    .line 2128
    const-string v8, " as Animations cannot run alongside Animators."

    .line 2129
    .line 2130
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2131
    .line 2132
    .line 2133
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2134
    .line 2135
    .line 2136
    move-result-object v5

    .line 2137
    invoke-static {v11, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2138
    .line 2139
    .line 2140
    :cond_52
    invoke-virtual {v4}, Landroidx/fragment/app/q;->a()V

    .line 2141
    .line 2142
    .line 2143
    goto :goto_31

    .line 2144
    :cond_53
    iget-object v8, v8, Landroidx/fragment/app/C;->Q:Landroid/view/View;

    .line 2145
    .line 2146
    invoke-virtual {v4, v3}, Landroidx/fragment/app/p;->c(Landroid/content/Context;)Landroidx/fragment/app/I;

    .line 2147
    .line 2148
    .line 2149
    move-result-object v9

    .line 2150
    invoke-static {v9}, LL/h;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2151
    .line 2152
    .line 2153
    move-result-object v9

    .line 2154
    check-cast v9, Landroidx/fragment/app/I;

    .line 2155
    .line 2156
    iget-object v9, v9, Landroidx/fragment/app/I;->a:Landroid/view/animation/Animation;

    .line 2157
    .line 2158
    invoke-static {v9}, LL/h;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2159
    .line 2160
    .line 2161
    move-result-object v9

    .line 2162
    check-cast v9, Landroid/view/animation/Animation;

    .line 2163
    .line 2164
    invoke-virtual {v5}, Landroidx/fragment/app/L0;->getFinalState()Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 2165
    .line 2166
    .line 2167
    move-result-object v13

    .line 2168
    sget-object v14, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->b:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 2169
    .line 2170
    if-eq v13, v14, :cond_54

    .line 2171
    .line 2172
    invoke-virtual {v8, v9}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2173
    .line 2174
    .line 2175
    invoke-virtual {v4}, Landroidx/fragment/app/q;->a()V

    .line 2176
    .line 2177
    .line 2178
    goto :goto_32

    .line 2179
    :cond_54
    invoke-virtual {v1, v8}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    .line 2180
    .line 2181
    .line 2182
    new-instance v13, Landroidx/fragment/app/J;

    .line 2183
    .line 2184
    invoke-direct {v13, v9, v1, v8}, Landroidx/fragment/app/J;-><init>(Landroid/view/animation/Animation;Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 2185
    .line 2186
    .line 2187
    new-instance v9, Landroidx/fragment/app/j;

    .line 2188
    .line 2189
    invoke-direct {v9, v8, v1, v4, v5}, Landroidx/fragment/app/j;-><init>(Landroid/view/View;Landroid/view/ViewGroup;Landroidx/fragment/app/p;Landroidx/fragment/app/L0;)V

    .line 2190
    .line 2191
    .line 2192
    invoke-virtual {v13, v9}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 2193
    .line 2194
    .line 2195
    invoke-virtual {v8, v13}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2196
    .line 2197
    .line 2198
    invoke-static/range {v18 .. v18}, Landroidx/fragment/app/i0;->isLoggingEnabled(I)Z

    .line 2199
    .line 2200
    .line 2201
    move-result v9

    .line 2202
    if-eqz v9, :cond_55

    .line 2203
    .line 2204
    new-instance v9, Ljava/lang/StringBuilder;

    .line 2205
    .line 2206
    const-string v13, "Animation from operation "

    .line 2207
    .line 2208
    invoke-direct {v9, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2209
    .line 2210
    .line 2211
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2212
    .line 2213
    .line 2214
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2215
    .line 2216
    .line 2217
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2218
    .line 2219
    .line 2220
    move-result-object v9

    .line 2221
    invoke-static {v11, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2222
    .line 2223
    .line 2224
    :cond_55
    :goto_32
    new-instance v9, Landroidx/fragment/app/k;

    .line 2225
    .line 2226
    invoke-direct {v9, v8, v1, v4, v5}, Landroidx/fragment/app/k;-><init>(Landroid/view/View;Landroid/view/ViewGroup;Landroidx/fragment/app/p;Landroidx/fragment/app/L0;)V

    .line 2227
    .line 2228
    .line 2229
    iget-object v4, v4, Landroidx/fragment/app/q;->b:LI/f;

    .line 2230
    .line 2231
    invoke-virtual {v4, v9}, LI/f;->setOnCancelListener(LI/e;)V

    .line 2232
    .line 2233
    .line 2234
    goto/16 :goto_31

    .line 2235
    .line 2236
    :cond_56
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 2237
    .line 2238
    .line 2239
    move-result-object v1

    .line 2240
    :goto_33
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 2241
    .line 2242
    .line 2243
    move-result v2

    .line 2244
    if-eqz v2, :cond_57

    .line 2245
    .line 2246
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2247
    .line 2248
    .line 2249
    move-result-object v2

    .line 2250
    check-cast v2, Landroidx/fragment/app/L0;

    .line 2251
    .line 2252
    invoke-virtual {v2}, Landroidx/fragment/app/L0;->getFragment()Landroidx/fragment/app/C;

    .line 2253
    .line 2254
    .line 2255
    move-result-object v3

    .line 2256
    iget-object v3, v3, Landroidx/fragment/app/C;->Q:Landroid/view/View;

    .line 2257
    .line 2258
    invoke-virtual {v2}, Landroidx/fragment/app/L0;->getFinalState()Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 2259
    .line 2260
    .line 2261
    move-result-object v2

    .line 2262
    invoke-virtual {v2, v3}, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->b(Landroid/view/View;)V

    .line 2263
    .line 2264
    .line 2265
    goto :goto_33

    .line 2266
    :cond_57
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2267
    .line 2268
    .line 2269
    invoke-static/range {v18 .. v18}, Landroidx/fragment/app/i0;->isLoggingEnabled(I)Z

    .line 2270
    .line 2271
    .line 2272
    move-result v0

    .line 2273
    if-eqz v0, :cond_58

    .line 2274
    .line 2275
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2276
    .line 2277
    const-string v1, "Completed executing operations from "

    .line 2278
    .line 2279
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2280
    .line 2281
    .line 2282
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2283
    .line 2284
    .line 2285
    move-object/from16 v1, v30

    .line 2286
    .line 2287
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2288
    .line 2289
    .line 2290
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2291
    .line 2292
    .line 2293
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2294
    .line 2295
    .line 2296
    move-result-object v0

    .line 2297
    invoke-static {v11, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2298
    .line 2299
    .line 2300
    :cond_58
    return-void
.end method
