.class public final synthetic Lflix/com/vision/activities/leanback/fragment/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic b:Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;

.field public final synthetic e:I

.field public final synthetic f:I

.field public final synthetic j:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;IILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lflix/com/vision/activities/leanback/fragment/i;->b:Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;

    iput p2, p0, Lflix/com/vision/activities/leanback/fragment/i;->e:I

    iput p3, p0, Lflix/com/vision/activities/leanback/fragment/i;->f:I

    iput-object p4, p0, Lflix/com/vision/activities/leanback/fragment/i;->j:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 7

    .line 1
    check-cast p1, Lcom/google/gson/JsonElement;

    .line 2
    .line 3
    iget-object v0, p0, Lflix/com/vision/activities/leanback/fragment/i;->b:Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lflix/com/vision/activities/leanback/fragment/i;->e:I

    .line 9
    .line 10
    invoke-static {p1, v1}, Lflix/com/vision/utils/JsonUtils;->parseListMovie(Lcom/google/gson/JsonElement;I)Ljava/util/ArrayList;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iget v1, p0, Lflix/com/vision/activities/leanback/fragment/i;->f:I

    .line 15
    .line 16
    const/4 v2, 0x4

    .line 17
    const/4 v3, 0x2

    .line 18
    const/4 v4, 0x1

    .line 19
    const/4 v5, 0x0

    .line 20
    if-eqz v1, :cond_8

    .line 21
    .line 22
    if-eq v1, v4, :cond_6

    .line 23
    .line 24
    if-eq v1, v3, :cond_4

    .line 25
    .line 26
    const/4 v6, 0x3

    .line 27
    if-eq v1, v6, :cond_2

    .line 28
    .line 29
    if-eq v1, v2, :cond_0

    .line 30
    .line 31
    goto/16 :goto_5

    .line 32
    .line 33
    :cond_0
    iget-object v6, v0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->M0:Ljava/util/ArrayList;

    .line 34
    .line 35
    if-nez v6, :cond_1

    .line 36
    .line 37
    new-instance v6, Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 40
    .line 41
    .line 42
    iput-object v6, v0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->M0:Ljava/util/ArrayList;

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    move v5, v4

    .line 46
    :goto_0
    iget-object v6, v0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->M0:Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 49
    .line 50
    .line 51
    if-eqz v5, :cond_a

    .line 52
    .line 53
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 54
    .line 55
    .line 56
    iget-object v6, v0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->M0:Ljava/util/ArrayList;

    .line 57
    .line 58
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 59
    .line 60
    .line 61
    iget-object v6, v0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->M0:Ljava/util/ArrayList;

    .line 62
    .line 63
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 64
    .line 65
    .line 66
    goto/16 :goto_5

    .line 67
    .line 68
    :cond_2
    iget-object v6, v0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->L0:Ljava/util/ArrayList;

    .line 69
    .line 70
    if-nez v6, :cond_3

    .line 71
    .line 72
    new-instance v6, Ljava/util/ArrayList;

    .line 73
    .line 74
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 75
    .line 76
    .line 77
    iput-object v6, v0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->L0:Ljava/util/ArrayList;

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_3
    move v5, v4

    .line 81
    :goto_1
    iget-object v6, v0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->L0:Ljava/util/ArrayList;

    .line 82
    .line 83
    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 84
    .line 85
    .line 86
    if-eqz v5, :cond_a

    .line 87
    .line 88
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 89
    .line 90
    .line 91
    iget-object v6, v0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->L0:Ljava/util/ArrayList;

    .line 92
    .line 93
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 94
    .line 95
    .line 96
    iget-object v6, v0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->L0:Ljava/util/ArrayList;

    .line 97
    .line 98
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 99
    .line 100
    .line 101
    goto :goto_5

    .line 102
    :cond_4
    iget-object v6, v0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->K0:Ljava/util/ArrayList;

    .line 103
    .line 104
    if-nez v6, :cond_5

    .line 105
    .line 106
    new-instance v6, Ljava/util/ArrayList;

    .line 107
    .line 108
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 109
    .line 110
    .line 111
    iput-object v6, v0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->K0:Ljava/util/ArrayList;

    .line 112
    .line 113
    goto :goto_2

    .line 114
    :cond_5
    move v5, v4

    .line 115
    :goto_2
    iget-object v6, v0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->K0:Ljava/util/ArrayList;

    .line 116
    .line 117
    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 118
    .line 119
    .line 120
    if-eqz v5, :cond_a

    .line 121
    .line 122
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 123
    .line 124
    .line 125
    iget-object v6, v0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->K0:Ljava/util/ArrayList;

    .line 126
    .line 127
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 128
    .line 129
    .line 130
    iget-object v6, v0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->K0:Ljava/util/ArrayList;

    .line 131
    .line 132
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 133
    .line 134
    .line 135
    goto :goto_5

    .line 136
    :cond_6
    iget-object v6, v0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->N0:Ljava/util/ArrayList;

    .line 137
    .line 138
    if-nez v6, :cond_7

    .line 139
    .line 140
    new-instance v6, Ljava/util/ArrayList;

    .line 141
    .line 142
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 143
    .line 144
    .line 145
    iput-object v6, v0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->N0:Ljava/util/ArrayList;

    .line 146
    .line 147
    goto :goto_3

    .line 148
    :cond_7
    move v5, v4

    .line 149
    :goto_3
    iget-object v6, v0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->N0:Ljava/util/ArrayList;

    .line 150
    .line 151
    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 152
    .line 153
    .line 154
    if-eqz v5, :cond_a

    .line 155
    .line 156
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 157
    .line 158
    .line 159
    iget-object v6, v0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->N0:Ljava/util/ArrayList;

    .line 160
    .line 161
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 162
    .line 163
    .line 164
    iget-object v6, v0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->N0:Ljava/util/ArrayList;

    .line 165
    .line 166
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 167
    .line 168
    .line 169
    goto :goto_5

    .line 170
    :cond_8
    iget-object v6, v0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->J0:Ljava/util/ArrayList;

    .line 171
    .line 172
    if-nez v6, :cond_9

    .line 173
    .line 174
    new-instance v6, Ljava/util/ArrayList;

    .line 175
    .line 176
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 177
    .line 178
    .line 179
    iput-object v6, v0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->J0:Ljava/util/ArrayList;

    .line 180
    .line 181
    goto :goto_4

    .line 182
    :cond_9
    move v5, v4

    .line 183
    :goto_4
    iget-object v6, v0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->J0:Ljava/util/ArrayList;

    .line 184
    .line 185
    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 186
    .line 187
    .line 188
    if-eqz v5, :cond_a

    .line 189
    .line 190
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 191
    .line 192
    .line 193
    iget-object v6, v0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->J0:Ljava/util/ArrayList;

    .line 194
    .line 195
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 196
    .line 197
    .line 198
    iget-object v6, v0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->J0:Ljava/util/ArrayList;

    .line 199
    .line 200
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 201
    .line 202
    .line 203
    :cond_a
    :goto_5
    if-eqz v5, :cond_f

    .line 204
    .line 205
    if-eq v1, v2, :cond_b

    .line 206
    .line 207
    iget-object v2, v0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->U0:Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain$ContentTypeLB;

    .line 208
    .line 209
    sget-object v5, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain$ContentTypeLB;->b:Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain$ContentTypeLB;

    .line 210
    .line 211
    if-ne v2, v5, :cond_b

    .line 212
    .line 213
    invoke-static {p1}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 214
    .line 215
    .line 216
    :cond_b
    new-instance v2, Landroidx/leanback/widget/a;

    .line 217
    .line 218
    new-instance v5, LW4/f;

    .line 219
    .line 220
    invoke-direct {v5}, LW4/f;-><init>()V

    .line 221
    .line 222
    .line 223
    invoke-direct {v2, v5}, Landroidx/leanback/widget/a;-><init>(Landroidx/leanback/widget/C0;)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 227
    .line 228
    .line 229
    move-result-object p1

    .line 230
    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 231
    .line 232
    .line 233
    move-result v5

    .line 234
    if-eqz v5, :cond_c

    .line 235
    .line 236
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    move-result-object v5

    .line 240
    check-cast v5, Lflix/com/vision/models/Movie;

    .line 241
    .line 242
    invoke-virtual {v2, v5}, Landroidx/leanback/widget/a;->add(Ljava/lang/Object;)V

    .line 243
    .line 244
    .line 245
    goto :goto_6

    .line 246
    :cond_c
    new-instance p1, Landroidx/leanback/widget/P;

    .line 247
    .line 248
    iget-object v5, p0, Lflix/com/vision/activities/leanback/fragment/i;->j:Ljava/lang/String;

    .line 249
    .line 250
    invoke-direct {p1, v5}, Landroidx/leanback/widget/P;-><init>(Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    new-instance v5, Landroidx/leanback/widget/f0;

    .line 254
    .line 255
    invoke-direct {v5, p1, v2}, Landroidx/leanback/widget/f0;-><init>(Landroidx/leanback/widget/P;Landroidx/leanback/widget/r0;)V

    .line 256
    .line 257
    .line 258
    if-nez v1, :cond_d

    .line 259
    .line 260
    iget-object p1, v0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->X0:Landroidx/leanback/widget/a;

    .line 261
    .line 262
    invoke-virtual {p1}, Landroidx/leanback/widget/a;->size()I

    .line 263
    .line 264
    .line 265
    move-result p1

    .line 266
    if-le p1, v4, :cond_d

    .line 267
    .line 268
    iget-boolean p1, v0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->Y0:Z

    .line 269
    .line 270
    if-eqz p1, :cond_d

    .line 271
    .line 272
    iget-object p1, v0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->X0:Landroidx/leanback/widget/a;

    .line 273
    .line 274
    if-eqz p1, :cond_d

    .line 275
    .line 276
    invoke-virtual {p1, v3, v5}, Landroidx/leanback/widget/a;->add(ILjava/lang/Object;)V

    .line 277
    .line 278
    .line 279
    goto :goto_7

    .line 280
    :cond_d
    if-nez v1, :cond_e

    .line 281
    .line 282
    iget-object p1, v0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->X0:Landroidx/leanback/widget/a;

    .line 283
    .line 284
    invoke-virtual {p1}, Landroidx/leanback/widget/a;->size()I

    .line 285
    .line 286
    .line 287
    move-result p1

    .line 288
    if-le p1, v4, :cond_e

    .line 289
    .line 290
    iget-object p1, v0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->X0:Landroidx/leanback/widget/a;

    .line 291
    .line 292
    if-eqz p1, :cond_e

    .line 293
    .line 294
    invoke-virtual {p1, v3, v5}, Landroidx/leanback/widget/a;->add(ILjava/lang/Object;)V

    .line 295
    .line 296
    .line 297
    goto :goto_7

    .line 298
    :cond_e
    iget-object p1, v0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->X0:Landroidx/leanback/widget/a;

    .line 299
    .line 300
    invoke-virtual {p1, v5}, Landroidx/leanback/widget/a;->add(Ljava/lang/Object;)V

    .line 301
    .line 302
    .line 303
    :goto_7
    iget-boolean p1, v0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->a1:Z

    .line 304
    .line 305
    if-nez p1, :cond_f

    .line 306
    .line 307
    iput-boolean v4, v0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->a1:Z

    .line 308
    .line 309
    new-instance p1, Landroid/os/Handler;

    .line 310
    .line 311
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 312
    .line 313
    .line 314
    new-instance v1, Lflix/com/vision/activities/leanback/fragment/e;

    .line 315
    .line 316
    const/4 v2, 0x3

    .line 317
    invoke-direct {v1, v0, v2}, Lflix/com/vision/activities/leanback/fragment/e;-><init>(Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;I)V

    .line 318
    .line 319
    .line 320
    const-wide/16 v2, 0x3e8

    .line 321
    .line 322
    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 323
    .line 324
    .line 325
    :cond_f
    return-void
.end method
