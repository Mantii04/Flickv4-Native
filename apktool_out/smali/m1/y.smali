.class public final Lm1/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final m:Ljava/lang/ThreadLocal;

.field public static final n:Lm1/v;


# instance fields
.field public b:Ljava/util/ArrayList;

.field public e:J

.field public f:J

.field public j:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/ThreadLocal;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lm1/y;->m:Ljava/lang/ThreadLocal;

    .line 7
    .line 8
    new-instance v0, Lm1/v;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lm1/y;->n:Lm1/v;

    .line 14
    .line 15
    return-void
.end method

.method public static c(Landroidx/recyclerview/widget/RecyclerView;IJ)Lm1/B0;
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->n:Lm1/d;

    .line 2
    .line 3
    iget-object v0, v0, Lm1/d;->a:Lm1/T;

    .line 4
    .line 5
    invoke-virtual {v0}, Lm1/T;->getChildCount()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    move v2, v1

    .line 11
    :goto_0
    if-ge v2, v0, :cond_1

    .line 12
    .line 13
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->n:Lm1/d;

    .line 14
    .line 15
    iget-object v3, v3, Lm1/d;->a:Lm1/T;

    .line 16
    .line 17
    invoke-virtual {v3, v2}, Lm1/T;->getChildAt(I)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-static {v3}, Landroidx/recyclerview/widget/RecyclerView;->E(Landroid/view/View;)Lm1/B0;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    iget v4, v3, Lm1/B0;->c:I

    .line 26
    .line 27
    if-ne v4, p1, :cond_0

    .line 28
    .line 29
    invoke-virtual {v3}, Lm1/B0;->e()Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-nez v3, :cond_0

    .line 34
    .line 35
    const/4 p0, 0x0

    .line 36
    return-object p0

    .line 37
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->f:Lm1/p0;

    .line 41
    .line 42
    :try_start_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->L()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, p1, p2, p3}, Lm1/p0;->i(IJ)Lm1/B0;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    if-eqz p1, :cond_3

    .line 50
    .line 51
    invoke-virtual {p1}, Lm1/B0;->d()Z

    .line 52
    .line 53
    .line 54
    move-result p2

    .line 55
    if-eqz p2, :cond_2

    .line 56
    .line 57
    invoke-virtual {p1}, Lm1/B0;->e()Z

    .line 58
    .line 59
    .line 60
    move-result p2

    .line 61
    if-nez p2, :cond_2

    .line 62
    .line 63
    iget-object p2, p1, Lm1/B0;->a:Landroid/view/View;

    .line 64
    .line 65
    invoke-virtual {v0, p2}, Lm1/p0;->recycleView(Landroid/view/View;)V

    .line 66
    .line 67
    .line 68
    goto :goto_1

    .line 69
    :catchall_0
    move-exception p1

    .line 70
    goto :goto_2

    .line 71
    :cond_2
    invoke-virtual {v0, p1, v1}, Lm1/p0;->a(Lm1/B0;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    .line 73
    .line 74
    :cond_3
    :goto_1
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->M(Z)V

    .line 75
    .line 76
    .line 77
    return-object p1

    .line 78
    :goto_2
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->M(Z)V

    .line 79
    .line 80
    .line 81
    throw p1
.end method


# virtual methods
.method public final a(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->isAttachedToWindow()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    sget-boolean v0, Landroidx/recyclerview/widget/RecyclerView;->J0:Z

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lm1/y;->b:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 21
    .line 22
    const-string p2, "attempting to post unregistered view!"

    .line 23
    .line 24
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw p1

    .line 28
    :cond_1
    :goto_0
    iget-wide v0, p0, Lm1/y;->e:J

    .line 29
    .line 30
    const-wide/16 v2, 0x0

    .line 31
    .line 32
    cmp-long v0, v0, v2

    .line 33
    .line 34
    if-nez v0, :cond_2

    .line 35
    .line 36
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getNanoTime()J

    .line 37
    .line 38
    .line 39
    move-result-wide v0

    .line 40
    iput-wide v0, p0, Lm1/y;->e:J

    .line 41
    .line 42
    invoke-virtual {p1, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 43
    .line 44
    .line 45
    :cond_2
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->p0:Lm1/w;

    .line 46
    .line 47
    iput p2, p1, Lm1/w;->a:I

    .line 48
    .line 49
    iput p3, p1, Lm1/w;->b:I

    .line 50
    .line 51
    return-void
.end method

.method public add(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2

    .line 1
    sget-boolean v0, Landroidx/recyclerview/widget/RecyclerView;->J0:Z

    .line 2
    .line 3
    iget-object v1, p0, Lm1/y;->b:Ljava/util/ArrayList;

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 15
    .line 16
    const-string v0, "RecyclerView already present in worker list!"

    .line 17
    .line 18
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw p1

    .line 22
    :cond_1
    :goto_0
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final b(J)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v0, v1, Lm1/y;->b:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const/4 v3, 0x0

    .line 10
    move v4, v3

    .line 11
    move v5, v4

    .line 12
    :goto_0
    if-ge v4, v2, :cond_1

    .line 13
    .line 14
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v6

    .line 18
    check-cast v6, Landroidx/recyclerview/widget/RecyclerView;

    .line 19
    .line 20
    invoke-virtual {v6}, Landroid/view/View;->getWindowVisibility()I

    .line 21
    .line 22
    .line 23
    move-result v7

    .line 24
    if-nez v7, :cond_0

    .line 25
    .line 26
    iget-object v7, v6, Landroidx/recyclerview/widget/RecyclerView;->p0:Lm1/w;

    .line 27
    .line 28
    invoke-virtual {v7, v6, v3}, Lm1/w;->a(Landroidx/recyclerview/widget/RecyclerView;Z)V

    .line 29
    .line 30
    .line 31
    iget v6, v7, Lm1/w;->d:I

    .line 32
    .line 33
    add-int/2addr v5, v6

    .line 34
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    iget-object v4, v1, Lm1/y;->j:Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 40
    .line 41
    .line 42
    move v5, v3

    .line 43
    move v6, v5

    .line 44
    :goto_1
    const/4 v7, 0x1

    .line 45
    if-ge v5, v2, :cond_6

    .line 46
    .line 47
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v8

    .line 51
    check-cast v8, Landroidx/recyclerview/widget/RecyclerView;

    .line 52
    .line 53
    invoke-virtual {v8}, Landroid/view/View;->getWindowVisibility()I

    .line 54
    .line 55
    .line 56
    move-result v9

    .line 57
    if-eqz v9, :cond_2

    .line 58
    .line 59
    goto :goto_5

    .line 60
    :cond_2
    iget-object v9, v8, Landroidx/recyclerview/widget/RecyclerView;->p0:Lm1/w;

    .line 61
    .line 62
    iget v10, v9, Lm1/w;->a:I

    .line 63
    .line 64
    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    .line 65
    .line 66
    .line 67
    move-result v10

    .line 68
    iget v11, v9, Lm1/w;->b:I

    .line 69
    .line 70
    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    .line 71
    .line 72
    .line 73
    move-result v11

    .line 74
    add-int/2addr v11, v10

    .line 75
    move v10, v3

    .line 76
    :goto_2
    iget v12, v9, Lm1/w;->d:I

    .line 77
    .line 78
    mul-int/lit8 v12, v12, 0x2

    .line 79
    .line 80
    if-ge v10, v12, :cond_5

    .line 81
    .line 82
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 83
    .line 84
    .line 85
    move-result v12

    .line 86
    if-lt v6, v12, :cond_3

    .line 87
    .line 88
    new-instance v12, Lm1/x;

    .line 89
    .line 90
    invoke-direct {v12}, Ljava/lang/Object;-><init>()V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    goto :goto_3

    .line 97
    :cond_3
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v12

    .line 101
    check-cast v12, Lm1/x;

    .line 102
    .line 103
    :goto_3
    iget-object v13, v9, Lm1/w;->c:[I

    .line 104
    .line 105
    add-int/lit8 v14, v10, 0x1

    .line 106
    .line 107
    aget v14, v13, v14

    .line 108
    .line 109
    if-gt v14, v11, :cond_4

    .line 110
    .line 111
    move v15, v7

    .line 112
    goto :goto_4

    .line 113
    :cond_4
    move v15, v3

    .line 114
    :goto_4
    iput-boolean v15, v12, Lm1/x;->a:Z

    .line 115
    .line 116
    iput v11, v12, Lm1/x;->b:I

    .line 117
    .line 118
    iput v14, v12, Lm1/x;->c:I

    .line 119
    .line 120
    iput-object v8, v12, Lm1/x;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 121
    .line 122
    aget v13, v13, v10

    .line 123
    .line 124
    iput v13, v12, Lm1/x;->e:I

    .line 125
    .line 126
    add-int/lit8 v6, v6, 0x1

    .line 127
    .line 128
    add-int/lit8 v10, v10, 0x2

    .line 129
    .line 130
    goto :goto_2

    .line 131
    :cond_5
    :goto_5
    add-int/lit8 v5, v5, 0x1

    .line 132
    .line 133
    goto :goto_1

    .line 134
    :cond_6
    sget-object v0, Lm1/y;->n:Lm1/v;

    .line 135
    .line 136
    invoke-static {v4, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 137
    .line 138
    .line 139
    move v0, v3

    .line 140
    :goto_6
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 141
    .line 142
    .line 143
    move-result v2

    .line 144
    if-ge v0, v2, :cond_f

    .line 145
    .line 146
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    check-cast v2, Lm1/x;

    .line 151
    .line 152
    iget-object v5, v2, Lm1/x;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 153
    .line 154
    if-nez v5, :cond_7

    .line 155
    .line 156
    goto/16 :goto_b

    .line 157
    .line 158
    :cond_7
    iget-boolean v6, v2, Lm1/x;->a:Z

    .line 159
    .line 160
    if-eqz v6, :cond_8

    .line 161
    .line 162
    const-wide v8, 0x7fffffffffffffffL

    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    goto :goto_7

    .line 168
    :cond_8
    move-wide/from16 v8, p1

    .line 169
    .line 170
    :goto_7
    iget v6, v2, Lm1/x;->e:I

    .line 171
    .line 172
    invoke-static {v5, v6, v8, v9}, Lm1/y;->c(Landroidx/recyclerview/widget/RecyclerView;IJ)Lm1/B0;

    .line 173
    .line 174
    .line 175
    move-result-object v5

    .line 176
    if-eqz v5, :cond_9

    .line 177
    .line 178
    iget-object v6, v5, Lm1/B0;->b:Ljava/lang/ref/WeakReference;

    .line 179
    .line 180
    if-eqz v6, :cond_9

    .line 181
    .line 182
    invoke-virtual {v5}, Lm1/B0;->d()Z

    .line 183
    .line 184
    .line 185
    move-result v6

    .line 186
    if-eqz v6, :cond_9

    .line 187
    .line 188
    invoke-virtual {v5}, Lm1/B0;->e()Z

    .line 189
    .line 190
    .line 191
    move-result v6

    .line 192
    if-nez v6, :cond_9

    .line 193
    .line 194
    iget-object v5, v5, Lm1/B0;->b:Ljava/lang/ref/WeakReference;

    .line 195
    .line 196
    invoke-virtual {v5}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object v5

    .line 200
    check-cast v5, Landroidx/recyclerview/widget/RecyclerView;

    .line 201
    .line 202
    if-nez v5, :cond_a

    .line 203
    .line 204
    :cond_9
    move-wide/from16 v10, p1

    .line 205
    .line 206
    goto :goto_a

    .line 207
    :cond_a
    iget-boolean v6, v5, Landroidx/recyclerview/widget/RecyclerView;->M:Z

    .line 208
    .line 209
    if-eqz v6, :cond_d

    .line 210
    .line 211
    iget-object v6, v5, Landroidx/recyclerview/widget/RecyclerView;->n:Lm1/d;

    .line 212
    .line 213
    iget-object v6, v6, Lm1/d;->a:Lm1/T;

    .line 214
    .line 215
    invoke-virtual {v6}, Lm1/T;->getChildCount()I

    .line 216
    .line 217
    .line 218
    move-result v6

    .line 219
    if-eqz v6, :cond_d

    .line 220
    .line 221
    iget-object v6, v5, Landroidx/recyclerview/widget/RecyclerView;->V:Lm1/b0;

    .line 222
    .line 223
    if-eqz v6, :cond_b

    .line 224
    .line 225
    invoke-virtual {v6}, Lm1/b0;->endAnimations()V

    .line 226
    .line 227
    .line 228
    :cond_b
    iget-object v6, v5, Landroidx/recyclerview/widget/RecyclerView;->w:Lm1/i0;

    .line 229
    .line 230
    iget-object v8, v5, Landroidx/recyclerview/widget/RecyclerView;->f:Lm1/p0;

    .line 231
    .line 232
    if-eqz v6, :cond_c

    .line 233
    .line 234
    invoke-virtual {v6, v8}, Lm1/i0;->removeAndRecycleAllViews(Lm1/p0;)V

    .line 235
    .line 236
    .line 237
    iget-object v6, v5, Landroidx/recyclerview/widget/RecyclerView;->w:Lm1/i0;

    .line 238
    .line 239
    invoke-virtual {v6, v8}, Lm1/i0;->d(Lm1/p0;)V

    .line 240
    .line 241
    .line 242
    :cond_c
    invoke-virtual {v8}, Lm1/p0;->clear()V

    .line 243
    .line 244
    .line 245
    :cond_d
    iget-object v6, v5, Landroidx/recyclerview/widget/RecyclerView;->p0:Lm1/w;

    .line 246
    .line 247
    invoke-virtual {v6, v5, v7}, Lm1/w;->a(Landroidx/recyclerview/widget/RecyclerView;Z)V

    .line 248
    .line 249
    .line 250
    iget v8, v6, Lm1/w;->d:I

    .line 251
    .line 252
    if-eqz v8, :cond_9

    .line 253
    .line 254
    :try_start_0
    const-string v8, "RV Nested Prefetch"

    .line 255
    .line 256
    invoke-static {v8}, LI/s;->beginSection(Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    iget-object v8, v5, Landroidx/recyclerview/widget/RecyclerView;->q0:Lm1/x0;

    .line 260
    .line 261
    iget-object v9, v5, Landroidx/recyclerview/widget/RecyclerView;->v:Lm1/V;

    .line 262
    .line 263
    iput v7, v8, Lm1/x0;->d:I

    .line 264
    .line 265
    invoke-virtual {v9}, Lm1/V;->getItemCount()I

    .line 266
    .line 267
    .line 268
    move-result v9

    .line 269
    iput v9, v8, Lm1/x0;->e:I

    .line 270
    .line 271
    iput-boolean v3, v8, Lm1/x0;->g:Z

    .line 272
    .line 273
    iput-boolean v3, v8, Lm1/x0;->h:Z

    .line 274
    .line 275
    iput-boolean v3, v8, Lm1/x0;->i:Z

    .line 276
    .line 277
    move v8, v3

    .line 278
    :goto_8
    iget v9, v6, Lm1/w;->d:I

    .line 279
    .line 280
    mul-int/lit8 v9, v9, 0x2

    .line 281
    .line 282
    if-ge v8, v9, :cond_e

    .line 283
    .line 284
    iget-object v9, v6, Lm1/w;->c:[I

    .line 285
    .line 286
    aget v9, v9, v8

    .line 287
    .line 288
    move-wide/from16 v10, p1

    .line 289
    .line 290
    invoke-static {v5, v9, v10, v11}, Lm1/y;->c(Landroidx/recyclerview/widget/RecyclerView;IJ)Lm1/B0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 291
    .line 292
    .line 293
    add-int/lit8 v8, v8, 0x2

    .line 294
    .line 295
    goto :goto_8

    .line 296
    :catchall_0
    move-exception v0

    .line 297
    goto :goto_9

    .line 298
    :cond_e
    move-wide/from16 v10, p1

    .line 299
    .line 300
    invoke-static {}, LI/s;->endSection()V

    .line 301
    .line 302
    .line 303
    goto :goto_a

    .line 304
    :goto_9
    invoke-static {}, LI/s;->endSection()V

    .line 305
    .line 306
    .line 307
    throw v0

    .line 308
    :goto_a
    invoke-virtual {v2}, Lm1/x;->clear()V

    .line 309
    .line 310
    .line 311
    add-int/lit8 v0, v0, 0x1

    .line 312
    .line 313
    goto/16 :goto_6

    .line 314
    .line 315
    :cond_f
    :goto_b
    return-void
.end method

.method public remove(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lm1/y;->b:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    sget-boolean v0, Landroidx/recyclerview/widget/RecyclerView;->J0:Z

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 15
    .line 16
    const-string v0, "RecyclerView removal failed!"

    .line 17
    .line 18
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw p1

    .line 22
    :cond_1
    :goto_0
    return-void
.end method

.method public run()V
    .locals 9

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    :try_start_0
    const-string v2, "RV Prefetch"

    .line 4
    .line 5
    invoke-static {v2}, LI/s;->beginSection(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    .line 8
    iget-object v2, p0, Lm1/y;->b:Ljava/util/ArrayList;

    .line 9
    .line 10
    :try_start_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 11
    .line 12
    .line 13
    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    :goto_0
    iput-wide v0, p0, Lm1/y;->e:J

    .line 17
    .line 18
    invoke-static {}, LI/s;->endSection()V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    :try_start_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    const/4 v4, 0x0

    .line 27
    move-wide v5, v0

    .line 28
    :goto_1
    if-ge v4, v3, :cond_2

    .line 29
    .line 30
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v7

    .line 34
    check-cast v7, Landroidx/recyclerview/widget/RecyclerView;

    .line 35
    .line 36
    invoke-virtual {v7}, Landroid/view/View;->getWindowVisibility()I

    .line 37
    .line 38
    .line 39
    move-result v8

    .line 40
    if-nez v8, :cond_1

    .line 41
    .line 42
    invoke-virtual {v7}, Landroid/view/View;->getDrawingTime()J

    .line 43
    .line 44
    .line 45
    move-result-wide v7

    .line 46
    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->max(JJ)J

    .line 47
    .line 48
    .line 49
    move-result-wide v5

    .line 50
    goto :goto_2

    .line 51
    :catchall_0
    move-exception v2

    .line 52
    goto :goto_3

    .line 53
    :cond_1
    :goto_2
    add-int/lit8 v4, v4, 0x1

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_2
    cmp-long v2, v5, v0

    .line 57
    .line 58
    if-nez v2, :cond_3

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_3
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 62
    .line 63
    invoke-virtual {v2, v5, v6}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    .line 64
    .line 65
    .line 66
    move-result-wide v2

    .line 67
    iget-wide v4, p0, Lm1/y;->f:J

    .line 68
    .line 69
    add-long/2addr v2, v4

    .line 70
    invoke-virtual {p0, v2, v3}, Lm1/y;->b(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :goto_3
    iput-wide v0, p0, Lm1/y;->e:J

    .line 75
    .line 76
    invoke-static {}, LI/s;->endSection()V

    .line 77
    .line 78
    .line 79
    throw v2
.end method
