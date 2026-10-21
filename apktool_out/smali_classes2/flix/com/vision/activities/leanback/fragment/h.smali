.class public final synthetic Lflix/com/vision/activities/leanback/fragment/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic b:Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;

.field public final synthetic e:Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain$GenresType;

.field public final synthetic f:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain$GenresType;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lflix/com/vision/activities/leanback/fragment/h;->b:Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;

    iput-object p2, p0, Lflix/com/vision/activities/leanback/fragment/h;->e:Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain$GenresType;

    iput-object p3, p0, Lflix/com/vision/activities/leanback/fragment/h;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 5

    .line 1
    check-cast p1, Lcom/google/gson/JsonElement;

    .line 2
    .line 3
    iget-object v0, p0, Lflix/com/vision/activities/leanback/fragment/h;->b:Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-static {p1, v1}, Lflix/com/vision/utils/JsonUtils;->parseListMovie(Lcom/google/gson/JsonElement;I)Ljava/util/ArrayList;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iget-object v2, p0, Lflix/com/vision/activities/leanback/fragment/h;->e:Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain$GenresType;

    .line 14
    .line 15
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    const/4 v3, 0x1

    .line 20
    if-eqz v2, :cond_a

    .line 21
    .line 22
    if-eq v2, v3, :cond_8

    .line 23
    .line 24
    const/4 v4, 0x2

    .line 25
    if-eq v2, v4, :cond_6

    .line 26
    .line 27
    const/4 v4, 0x3

    .line 28
    if-eq v2, v4, :cond_4

    .line 29
    .line 30
    const/4 v4, 0x4

    .line 31
    if-eq v2, v4, :cond_2

    .line 32
    .line 33
    const/4 v4, 0x5

    .line 34
    if-eq v2, v4, :cond_0

    .line 35
    .line 36
    goto/16 :goto_6

    .line 37
    .line 38
    :cond_0
    iget-object v2, v0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->P0:Ljava/util/ArrayList;

    .line 39
    .line 40
    if-nez v2, :cond_1

    .line 41
    .line 42
    new-instance v2, Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .line 46
    .line 47
    iput-object v2, v0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->P0:Ljava/util/ArrayList;

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    move v1, v3

    .line 51
    :goto_0
    iget-object v2, v0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->P0:Ljava/util/ArrayList;

    .line 52
    .line 53
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 54
    .line 55
    .line 56
    if-eqz v1, :cond_c

    .line 57
    .line 58
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 59
    .line 60
    .line 61
    iget-object v2, v0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->P0:Ljava/util/ArrayList;

    .line 62
    .line 63
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 64
    .line 65
    .line 66
    iget-object v2, v0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->P0:Ljava/util/ArrayList;

    .line 67
    .line 68
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 69
    .line 70
    .line 71
    goto/16 :goto_6

    .line 72
    .line 73
    :cond_2
    iget-object v2, v0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->Q0:Ljava/util/ArrayList;

    .line 74
    .line 75
    if-nez v2, :cond_3

    .line 76
    .line 77
    new-instance v2, Ljava/util/ArrayList;

    .line 78
    .line 79
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 80
    .line 81
    .line 82
    iput-object v2, v0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->Q0:Ljava/util/ArrayList;

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_3
    move v1, v3

    .line 86
    :goto_1
    iget-object v2, v0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->Q0:Ljava/util/ArrayList;

    .line 87
    .line 88
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 89
    .line 90
    .line 91
    if-eqz v1, :cond_c

    .line 92
    .line 93
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 94
    .line 95
    .line 96
    iget-object v2, v0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->Q0:Ljava/util/ArrayList;

    .line 97
    .line 98
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 99
    .line 100
    .line 101
    iget-object v2, v0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->Q0:Ljava/util/ArrayList;

    .line 102
    .line 103
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 104
    .line 105
    .line 106
    goto/16 :goto_6

    .line 107
    .line 108
    :cond_4
    iget-object v2, v0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->R0:Ljava/util/ArrayList;

    .line 109
    .line 110
    if-nez v2, :cond_5

    .line 111
    .line 112
    new-instance v2, Ljava/util/ArrayList;

    .line 113
    .line 114
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 115
    .line 116
    .line 117
    iput-object v2, v0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->R0:Ljava/util/ArrayList;

    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_5
    move v1, v3

    .line 121
    :goto_2
    iget-object v2, v0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->R0:Ljava/util/ArrayList;

    .line 122
    .line 123
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 124
    .line 125
    .line 126
    if-eqz v1, :cond_c

    .line 127
    .line 128
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 129
    .line 130
    .line 131
    iget-object v2, v0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->R0:Ljava/util/ArrayList;

    .line 132
    .line 133
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 134
    .line 135
    .line 136
    iget-object v2, v0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->R0:Ljava/util/ArrayList;

    .line 137
    .line 138
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 139
    .line 140
    .line 141
    goto :goto_6

    .line 142
    :cond_6
    iget-object v2, v0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->T0:Ljava/util/ArrayList;

    .line 143
    .line 144
    if-nez v2, :cond_7

    .line 145
    .line 146
    new-instance v2, Ljava/util/ArrayList;

    .line 147
    .line 148
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 149
    .line 150
    .line 151
    iput-object v2, v0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->T0:Ljava/util/ArrayList;

    .line 152
    .line 153
    goto :goto_3

    .line 154
    :cond_7
    move v1, v3

    .line 155
    :goto_3
    iget-object v2, v0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->T0:Ljava/util/ArrayList;

    .line 156
    .line 157
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 158
    .line 159
    .line 160
    if-eqz v1, :cond_c

    .line 161
    .line 162
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 163
    .line 164
    .line 165
    iget-object v2, v0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->T0:Ljava/util/ArrayList;

    .line 166
    .line 167
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 168
    .line 169
    .line 170
    iget-object v2, v0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->T0:Ljava/util/ArrayList;

    .line 171
    .line 172
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 173
    .line 174
    .line 175
    goto :goto_6

    .line 176
    :cond_8
    iget-object v2, v0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->S0:Ljava/util/ArrayList;

    .line 177
    .line 178
    if-nez v2, :cond_9

    .line 179
    .line 180
    new-instance v2, Ljava/util/ArrayList;

    .line 181
    .line 182
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 183
    .line 184
    .line 185
    iput-object v2, v0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->S0:Ljava/util/ArrayList;

    .line 186
    .line 187
    goto :goto_4

    .line 188
    :cond_9
    move v1, v3

    .line 189
    :goto_4
    iget-object v2, v0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->S0:Ljava/util/ArrayList;

    .line 190
    .line 191
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 192
    .line 193
    .line 194
    if-eqz v1, :cond_c

    .line 195
    .line 196
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 197
    .line 198
    .line 199
    iget-object v2, v0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->S0:Ljava/util/ArrayList;

    .line 200
    .line 201
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 202
    .line 203
    .line 204
    iget-object v2, v0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->S0:Ljava/util/ArrayList;

    .line 205
    .line 206
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 207
    .line 208
    .line 209
    goto :goto_6

    .line 210
    :cond_a
    iget-object v2, v0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->O0:Ljava/util/ArrayList;

    .line 211
    .line 212
    if-nez v2, :cond_b

    .line 213
    .line 214
    new-instance v2, Ljava/util/ArrayList;

    .line 215
    .line 216
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 217
    .line 218
    .line 219
    iput-object v2, v0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->O0:Ljava/util/ArrayList;

    .line 220
    .line 221
    goto :goto_5

    .line 222
    :cond_b
    move v1, v3

    .line 223
    :goto_5
    iget-object v2, v0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->O0:Ljava/util/ArrayList;

    .line 224
    .line 225
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 226
    .line 227
    .line 228
    if-eqz v1, :cond_c

    .line 229
    .line 230
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 231
    .line 232
    .line 233
    iget-object v2, v0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->O0:Ljava/util/ArrayList;

    .line 234
    .line 235
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 236
    .line 237
    .line 238
    iget-object v2, v0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->O0:Ljava/util/ArrayList;

    .line 239
    .line 240
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 241
    .line 242
    .line 243
    :cond_c
    :goto_6
    if-eqz v1, :cond_f

    .line 244
    .line 245
    new-instance v1, Landroidx/leanback/widget/a;

    .line 246
    .line 247
    new-instance v2, LW4/f;

    .line 248
    .line 249
    invoke-direct {v2}, LW4/f;-><init>()V

    .line 250
    .line 251
    .line 252
    invoke-direct {v1, v2}, Landroidx/leanback/widget/a;-><init>(Landroidx/leanback/widget/C0;)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 256
    .line 257
    .line 258
    move-result-object p1

    .line 259
    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 260
    .line 261
    .line 262
    move-result v2

    .line 263
    if-eqz v2, :cond_d

    .line 264
    .line 265
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 266
    .line 267
    .line 268
    move-result-object v2

    .line 269
    check-cast v2, Lflix/com/vision/models/Movie;

    .line 270
    .line 271
    invoke-virtual {v1, v2}, Landroidx/leanback/widget/a;->add(Ljava/lang/Object;)V

    .line 272
    .line 273
    .line 274
    goto :goto_7

    .line 275
    :cond_d
    new-instance p1, Landroidx/leanback/widget/P;

    .line 276
    .line 277
    iget-object v2, p0, Lflix/com/vision/activities/leanback/fragment/h;->f:Ljava/lang/String;

    .line 278
    .line 279
    invoke-direct {p1, v2}, Landroidx/leanback/widget/P;-><init>(Ljava/lang/String;)V

    .line 280
    .line 281
    .line 282
    new-instance v2, Landroidx/leanback/widget/f0;

    .line 283
    .line 284
    invoke-direct {v2, p1, v1}, Landroidx/leanback/widget/f0;-><init>(Landroidx/leanback/widget/P;Landroidx/leanback/widget/r0;)V

    .line 285
    .line 286
    .line 287
    iget-object p1, v0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->X0:Landroidx/leanback/widget/a;

    .line 288
    .line 289
    if-eqz p1, :cond_e

    .line 290
    .line 291
    invoke-virtual {p1, v2}, Landroidx/leanback/widget/a;->add(Ljava/lang/Object;)V

    .line 292
    .line 293
    .line 294
    :cond_e
    iget-boolean p1, v0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->a1:Z

    .line 295
    .line 296
    if-nez p1, :cond_f

    .line 297
    .line 298
    iput-boolean v3, v0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->a1:Z

    .line 299
    .line 300
    new-instance p1, Landroid/os/Handler;

    .line 301
    .line 302
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 303
    .line 304
    .line 305
    new-instance v1, Lflix/com/vision/activities/leanback/fragment/e;

    .line 306
    .line 307
    const/4 v2, 0x2

    .line 308
    invoke-direct {v1, v0, v2}, Lflix/com/vision/activities/leanback/fragment/e;-><init>(Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;I)V

    .line 309
    .line 310
    .line 311
    const-wide/16 v2, 0x3e8

    .line 312
    .line 313
    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 314
    .line 315
    .line 316
    :cond_f
    return-void
.end method
