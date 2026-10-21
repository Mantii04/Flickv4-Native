.class public final Lv/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lu/f;

.field public b:Z

.field public c:Z

.field public final d:Lu/f;

.field public final e:Ljava/util/ArrayList;

.field public f:Lv/c;

.field public final g:Lv/b;

.field public final h:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lu/f;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lv/g;->b:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lv/g;->c:Z

    .line 8
    .line 9
    new-instance v0, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lv/g;->e:Ljava/util/ArrayList;

    .line 15
    .line 16
    new-instance v0, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lv/g;->f:Lv/c;

    .line 23
    .line 24
    new-instance v0, Lv/b;

    .line 25
    .line 26
    invoke-direct {v0}, Lv/b;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Lv/g;->g:Lv/b;

    .line 30
    .line 31
    new-instance v0, Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 34
    .line 35
    .line 36
    iput-object v0, p0, Lv/g;->h:Ljava/util/ArrayList;

    .line 37
    .line 38
    iput-object p1, p0, Lv/g;->a:Lu/f;

    .line 39
    .line 40
    iput-object p1, p0, Lv/g;->d:Lu/f;

    .line 41
    .line 42
    return-void
.end method


# virtual methods
.method public final a(Landroidx/constraintlayout/core/widgets/analyzer/a;IILjava/util/ArrayList;Lv/k;)V
    .locals 7

    .line 1
    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/analyzer/a;->d:Landroidx/constraintlayout/core/widgets/analyzer/f;

    .line 2
    .line 3
    iget-object v0, p1, Landroidx/constraintlayout/core/widgets/analyzer/f;->c:Lv/k;

    .line 4
    .line 5
    if-nez v0, :cond_a

    .line 6
    .line 7
    iget-object v0, p0, Lv/g;->a:Lu/f;

    .line 8
    .line 9
    iget-object v1, v0, Lu/e;->d:Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 10
    .line 11
    if-eq p1, v1, :cond_a

    .line 12
    .line 13
    iget-object v0, v0, Lu/e;->e:Landroidx/constraintlayout/core/widgets/analyzer/e;

    .line 14
    .line 15
    if-ne p1, v0, :cond_0

    .line 16
    .line 17
    goto/16 :goto_7

    .line 18
    .line 19
    :cond_0
    if-nez p5, :cond_1

    .line 20
    .line 21
    new-instance p5, Lv/k;

    .line 22
    .line 23
    invoke-direct {p5, p1, p3}, Lv/k;-><init>(Landroidx/constraintlayout/core/widgets/analyzer/f;I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p4, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    :cond_1
    move-object v6, p5

    .line 30
    iput-object v6, p1, Landroidx/constraintlayout/core/widgets/analyzer/f;->c:Lv/k;

    .line 31
    .line 32
    invoke-virtual {v6, p1}, Lv/k;->add(Landroidx/constraintlayout/core/widgets/analyzer/f;)V

    .line 33
    .line 34
    .line 35
    iget-object p3, p1, Landroidx/constraintlayout/core/widgets/analyzer/f;->h:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 36
    .line 37
    iget-object p5, p3, Landroidx/constraintlayout/core/widgets/analyzer/a;->k:Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-virtual {p5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 40
    .line 41
    .line 42
    move-result-object p5

    .line 43
    :goto_0
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_3

    .line 48
    .line 49
    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    check-cast v0, Lv/f;

    .line 54
    .line 55
    instance-of v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 56
    .line 57
    if-eqz v1, :cond_2

    .line 58
    .line 59
    move-object v2, v0

    .line 60
    check-cast v2, Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 61
    .line 62
    const/4 v4, 0x0

    .line 63
    move-object v1, p0

    .line 64
    move v3, p2

    .line 65
    move-object v5, p4

    .line 66
    invoke-virtual/range {v1 .. v6}, Lv/g;->a(Landroidx/constraintlayout/core/widgets/analyzer/a;IILjava/util/ArrayList;Lv/k;)V

    .line 67
    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_2
    move v3, p2

    .line 71
    move-object v5, p4

    .line 72
    :goto_1
    move p2, v3

    .line 73
    move-object p4, v5

    .line 74
    goto :goto_0

    .line 75
    :cond_3
    move v3, p2

    .line 76
    move-object v5, p4

    .line 77
    iget-object p2, p1, Landroidx/constraintlayout/core/widgets/analyzer/f;->i:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 78
    .line 79
    iget-object p4, p2, Landroidx/constraintlayout/core/widgets/analyzer/a;->k:Ljava/util/ArrayList;

    .line 80
    .line 81
    invoke-virtual {p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 82
    .line 83
    .line 84
    move-result-object p4

    .line 85
    :cond_4
    :goto_2
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    .line 86
    .line 87
    .line 88
    move-result p5

    .line 89
    if-eqz p5, :cond_5

    .line 90
    .line 91
    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object p5

    .line 95
    check-cast p5, Lv/f;

    .line 96
    .line 97
    instance-of v0, p5, Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 98
    .line 99
    if-eqz v0, :cond_4

    .line 100
    .line 101
    move-object v2, p5

    .line 102
    check-cast v2, Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 103
    .line 104
    const/4 v4, 0x1

    .line 105
    move-object v1, p0

    .line 106
    invoke-virtual/range {v1 .. v6}, Lv/g;->a(Landroidx/constraintlayout/core/widgets/analyzer/a;IILjava/util/ArrayList;Lv/k;)V

    .line 107
    .line 108
    .line 109
    goto :goto_2

    .line 110
    :cond_5
    const/4 p4, 0x1

    .line 111
    if-ne v3, p4, :cond_7

    .line 112
    .line 113
    instance-of p5, p1, Landroidx/constraintlayout/core/widgets/analyzer/e;

    .line 114
    .line 115
    if-eqz p5, :cond_7

    .line 116
    .line 117
    move-object p5, p1

    .line 118
    check-cast p5, Landroidx/constraintlayout/core/widgets/analyzer/e;

    .line 119
    .line 120
    iget-object p5, p5, Landroidx/constraintlayout/core/widgets/analyzer/e;->k:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 121
    .line 122
    iget-object p5, p5, Landroidx/constraintlayout/core/widgets/analyzer/a;->k:Ljava/util/ArrayList;

    .line 123
    .line 124
    invoke-virtual {p5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 125
    .line 126
    .line 127
    move-result-object p5

    .line 128
    :cond_6
    :goto_3
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    if-eqz v0, :cond_7

    .line 133
    .line 134
    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    check-cast v0, Lv/f;

    .line 139
    .line 140
    instance-of v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 141
    .line 142
    if-eqz v1, :cond_6

    .line 143
    .line 144
    move-object v2, v0

    .line 145
    check-cast v2, Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 146
    .line 147
    const/4 v4, 0x2

    .line 148
    move-object v1, p0

    .line 149
    invoke-virtual/range {v1 .. v6}, Lv/g;->a(Landroidx/constraintlayout/core/widgets/analyzer/a;IILjava/util/ArrayList;Lv/k;)V

    .line 150
    .line 151
    .line 152
    goto :goto_3

    .line 153
    :cond_7
    iget-object p3, p3, Landroidx/constraintlayout/core/widgets/analyzer/a;->l:Ljava/util/ArrayList;

    .line 154
    .line 155
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 156
    .line 157
    .line 158
    move-result-object p3

    .line 159
    :goto_4
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 160
    .line 161
    .line 162
    move-result p5

    .line 163
    if-eqz p5, :cond_8

    .line 164
    .line 165
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object p5

    .line 169
    move-object v2, p5

    .line 170
    check-cast v2, Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 171
    .line 172
    const/4 v4, 0x0

    .line 173
    move-object v1, p0

    .line 174
    invoke-virtual/range {v1 .. v6}, Lv/g;->a(Landroidx/constraintlayout/core/widgets/analyzer/a;IILjava/util/ArrayList;Lv/k;)V

    .line 175
    .line 176
    .line 177
    goto :goto_4

    .line 178
    :cond_8
    iget-object p2, p2, Landroidx/constraintlayout/core/widgets/analyzer/a;->l:Ljava/util/ArrayList;

    .line 179
    .line 180
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 181
    .line 182
    .line 183
    move-result-object p2

    .line 184
    :goto_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 185
    .line 186
    .line 187
    move-result p3

    .line 188
    if-eqz p3, :cond_9

    .line 189
    .line 190
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object p3

    .line 194
    move-object v2, p3

    .line 195
    check-cast v2, Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 196
    .line 197
    const/4 v4, 0x1

    .line 198
    move-object v1, p0

    .line 199
    invoke-virtual/range {v1 .. v6}, Lv/g;->a(Landroidx/constraintlayout/core/widgets/analyzer/a;IILjava/util/ArrayList;Lv/k;)V

    .line 200
    .line 201
    .line 202
    goto :goto_5

    .line 203
    :cond_9
    if-ne v3, p4, :cond_a

    .line 204
    .line 205
    instance-of p2, p1, Landroidx/constraintlayout/core/widgets/analyzer/e;

    .line 206
    .line 207
    if-eqz p2, :cond_a

    .line 208
    .line 209
    check-cast p1, Landroidx/constraintlayout/core/widgets/analyzer/e;

    .line 210
    .line 211
    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/analyzer/e;->k:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 212
    .line 213
    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/analyzer/a;->l:Ljava/util/ArrayList;

    .line 214
    .line 215
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 216
    .line 217
    .line 218
    move-result-object p1

    .line 219
    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 220
    .line 221
    .line 222
    move-result p2

    .line 223
    if-eqz p2, :cond_a

    .line 224
    .line 225
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object p2

    .line 229
    move-object v2, p2

    .line 230
    check-cast v2, Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 231
    .line 232
    const/4 v4, 0x2

    .line 233
    move-object v1, p0

    .line 234
    :try_start_0
    invoke-virtual/range {v1 .. v6}, Lv/g;->a(Landroidx/constraintlayout/core/widgets/analyzer/a;IILjava/util/ArrayList;Lv/k;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 235
    .line 236
    .line 237
    goto :goto_6

    .line 238
    :catchall_0
    move-exception v0

    .line 239
    move-object p1, v0

    .line 240
    throw p1

    .line 241
    :cond_a
    :goto_7
    return-void
.end method

.method public final b(Lu/f;)V
    .locals 20

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    iget-object v1, v0, Lu/n;->q0:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-eqz v2, :cond_29

    .line 14
    .line 15
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    move-object v4, v2

    .line 20
    check-cast v4, Lu/e;

    .line 21
    .line 22
    iget-object v2, v4, Lu/e;->T:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    aget-object v5, v2, v3

    .line 26
    .line 27
    const/4 v9, 0x1

    .line 28
    aget-object v2, v2, v9

    .line 29
    .line 30
    invoke-virtual {v4}, Lu/e;->getVisibility()I

    .line 31
    .line 32
    .line 33
    move-result v6

    .line 34
    const/16 v7, 0x8

    .line 35
    .line 36
    if-ne v6, v7, :cond_1

    .line 37
    .line 38
    iput-boolean v9, v4, Lu/e;->a:Z

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    iget v6, v4, Lu/e;->w:F

    .line 42
    .line 43
    const/high16 v10, 0x3f800000    # 1.0f

    .line 44
    .line 45
    cmpg-float v6, v6, v10

    .line 46
    .line 47
    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->f:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 48
    .line 49
    const/4 v8, 0x2

    .line 50
    if-gez v6, :cond_2

    .line 51
    .line 52
    if-ne v5, v7, :cond_2

    .line 53
    .line 54
    iput v8, v4, Lu/e;->r:I

    .line 55
    .line 56
    :cond_2
    iget v6, v4, Lu/e;->z:F

    .line 57
    .line 58
    cmpg-float v6, v6, v10

    .line 59
    .line 60
    if-gez v6, :cond_3

    .line 61
    .line 62
    if-ne v2, v7, :cond_3

    .line 63
    .line 64
    iput v8, v4, Lu/e;->s:I

    .line 65
    .line 66
    :cond_3
    invoke-virtual {v4}, Lu/e;->getDimensionRatio()F

    .line 67
    .line 68
    .line 69
    move-result v6

    .line 70
    const/4 v11, 0x0

    .line 71
    cmpl-float v6, v6, v11

    .line 72
    .line 73
    sget-object v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->e:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 74
    .line 75
    sget-object v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 76
    .line 77
    const/4 v13, 0x3

    .line 78
    if-lez v6, :cond_9

    .line 79
    .line 80
    if-ne v5, v7, :cond_5

    .line 81
    .line 82
    if-eq v2, v11, :cond_4

    .line 83
    .line 84
    if-ne v2, v12, :cond_5

    .line 85
    .line 86
    :cond_4
    iput v13, v4, Lu/e;->r:I

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_5
    if-ne v2, v7, :cond_7

    .line 90
    .line 91
    if-eq v5, v11, :cond_6

    .line 92
    .line 93
    if-ne v5, v12, :cond_7

    .line 94
    .line 95
    :cond_6
    iput v13, v4, Lu/e;->s:I

    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_7
    if-ne v5, v7, :cond_9

    .line 99
    .line 100
    if-ne v2, v7, :cond_9

    .line 101
    .line 102
    iget v6, v4, Lu/e;->r:I

    .line 103
    .line 104
    if-nez v6, :cond_8

    .line 105
    .line 106
    iput v13, v4, Lu/e;->r:I

    .line 107
    .line 108
    :cond_8
    iget v6, v4, Lu/e;->s:I

    .line 109
    .line 110
    if-nez v6, :cond_9

    .line 111
    .line 112
    iput v13, v4, Lu/e;->s:I

    .line 113
    .line 114
    :cond_9
    :goto_1
    iget-object v6, v4, Lu/e;->K:Lu/d;

    .line 115
    .line 116
    iget-object v14, v4, Lu/e;->I:Lu/d;

    .line 117
    .line 118
    if-ne v5, v7, :cond_b

    .line 119
    .line 120
    iget v15, v4, Lu/e;->r:I

    .line 121
    .line 122
    if-ne v15, v9, :cond_b

    .line 123
    .line 124
    iget-object v15, v14, Lu/d;->f:Lu/d;

    .line 125
    .line 126
    if-eqz v15, :cond_a

    .line 127
    .line 128
    iget-object v15, v6, Lu/d;->f:Lu/d;

    .line 129
    .line 130
    if-nez v15, :cond_b

    .line 131
    .line 132
    :cond_a
    move-object v5, v11

    .line 133
    :cond_b
    iget-object v15, v4, Lu/e;->L:Lu/d;

    .line 134
    .line 135
    move/from16 v16, v3

    .line 136
    .line 137
    iget-object v3, v4, Lu/e;->J:Lu/d;

    .line 138
    .line 139
    move/from16 v17, v10

    .line 140
    .line 141
    if-ne v2, v7, :cond_d

    .line 142
    .line 143
    iget v10, v4, Lu/e;->s:I

    .line 144
    .line 145
    if-ne v10, v9, :cond_d

    .line 146
    .line 147
    iget-object v10, v3, Lu/d;->f:Lu/d;

    .line 148
    .line 149
    if-eqz v10, :cond_c

    .line 150
    .line 151
    iget-object v10, v15, Lu/d;->f:Lu/d;

    .line 152
    .line 153
    if-nez v10, :cond_d

    .line 154
    .line 155
    :cond_c
    move-object v2, v11

    .line 156
    :cond_d
    iget-object v10, v4, Lu/e;->d:Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 157
    .line 158
    iput-object v5, v10, Landroidx/constraintlayout/core/widgets/analyzer/f;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 159
    .line 160
    iget v8, v4, Lu/e;->r:I

    .line 161
    .line 162
    iput v8, v10, Landroidx/constraintlayout/core/widgets/analyzer/f;->a:I

    .line 163
    .line 164
    iget-object v10, v4, Lu/e;->e:Landroidx/constraintlayout/core/widgets/analyzer/e;

    .line 165
    .line 166
    iput-object v2, v10, Landroidx/constraintlayout/core/widgets/analyzer/f;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 167
    .line 168
    iget v9, v4, Lu/e;->s:I

    .line 169
    .line 170
    iput v9, v10, Landroidx/constraintlayout/core/widgets/analyzer/f;->a:I

    .line 171
    .line 172
    sget-object v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->j:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 173
    .line 174
    if-eq v5, v10, :cond_e

    .line 175
    .line 176
    if-eq v5, v12, :cond_e

    .line 177
    .line 178
    if-ne v5, v11, :cond_10

    .line 179
    .line 180
    :cond_e
    if-eq v2, v10, :cond_f

    .line 181
    .line 182
    if-eq v2, v12, :cond_f

    .line 183
    .line 184
    if-ne v2, v11, :cond_10

    .line 185
    .line 186
    :cond_f
    move-object v7, v2

    .line 187
    goto/16 :goto_9

    .line 188
    .line 189
    :cond_10
    iget-object v3, v0, Lu/e;->T:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 190
    .line 191
    iget-object v6, v4, Lu/e;->Q:[Lu/d;

    .line 192
    .line 193
    const/high16 v14, 0x3f000000    # 0.5f

    .line 194
    .line 195
    if-ne v5, v7, :cond_11

    .line 196
    .line 197
    if-eq v2, v11, :cond_12

    .line 198
    .line 199
    if-ne v2, v12, :cond_11

    .line 200
    .line 201
    goto :goto_2

    .line 202
    :cond_11
    move-object v15, v5

    .line 203
    move-object v5, v11

    .line 204
    move-object v11, v7

    .line 205
    move-object v7, v2

    .line 206
    goto/16 :goto_3

    .line 207
    .line 208
    :cond_12
    :goto_2
    if-ne v8, v13, :cond_14

    .line 209
    .line 210
    if-ne v2, v11, :cond_13

    .line 211
    .line 212
    const/4 v8, 0x0

    .line 213
    const/4 v6, 0x0

    .line 214
    move-object v7, v11

    .line 215
    move-object/from16 v3, p0

    .line 216
    .line 217
    move-object v5, v11

    .line 218
    invoke-virtual/range {v3 .. v8}, Lv/g;->e(Lu/e;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 219
    .line 220
    .line 221
    :cond_13
    invoke-virtual {v4}, Lu/e;->getHeight()I

    .line 222
    .line 223
    .line 224
    move-result v8

    .line 225
    int-to-float v2, v8

    .line 226
    iget v3, v4, Lu/e;->X:F

    .line 227
    .line 228
    mul-float/2addr v2, v3

    .line 229
    add-float/2addr v2, v14

    .line 230
    float-to-int v6, v2

    .line 231
    move-object v7, v12

    .line 232
    move-object/from16 v3, p0

    .line 233
    .line 234
    move-object v5, v12

    .line 235
    invoke-virtual/range {v3 .. v8}, Lv/g;->e(Lu/e;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 236
    .line 237
    .line 238
    iget-object v2, v4, Lu/e;->d:Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 239
    .line 240
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    .line 241
    .line 242
    invoke-virtual {v4}, Lu/e;->getWidth()I

    .line 243
    .line 244
    .line 245
    move-result v3

    .line 246
    invoke-virtual {v2, v3}, Landroidx/constraintlayout/core/widgets/analyzer/b;->resolve(I)V

    .line 247
    .line 248
    .line 249
    iget-object v2, v4, Lu/e;->e:Landroidx/constraintlayout/core/widgets/analyzer/e;

    .line 250
    .line 251
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    .line 252
    .line 253
    invoke-virtual {v4}, Lu/e;->getHeight()I

    .line 254
    .line 255
    .line 256
    move-result v3

    .line 257
    invoke-virtual {v2, v3}, Landroidx/constraintlayout/core/widgets/analyzer/b;->resolve(I)V

    .line 258
    .line 259
    .line 260
    const/4 v11, 0x1

    .line 261
    iput-boolean v11, v4, Lu/e;->a:Z

    .line 262
    .line 263
    goto/16 :goto_0

    .line 264
    .line 265
    :cond_14
    move-object v15, v5

    .line 266
    move-object v5, v11

    .line 267
    const/4 v11, 0x1

    .line 268
    if-ne v8, v11, :cond_15

    .line 269
    .line 270
    const/4 v6, 0x0

    .line 271
    const/4 v8, 0x0

    .line 272
    move-object/from16 v3, p0

    .line 273
    .line 274
    move-object v7, v2

    .line 275
    invoke-virtual/range {v3 .. v8}, Lv/g;->e(Lu/e;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 276
    .line 277
    .line 278
    iget-object v2, v4, Lu/e;->d:Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 279
    .line 280
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    .line 281
    .line 282
    invoke-virtual {v4}, Lu/e;->getWidth()I

    .line 283
    .line 284
    .line 285
    move-result v3

    .line 286
    iput v3, v2, Landroidx/constraintlayout/core/widgets/analyzer/b;->m:I

    .line 287
    .line 288
    goto/16 :goto_0

    .line 289
    .line 290
    :cond_15
    move-object v11, v7

    .line 291
    move-object v7, v2

    .line 292
    const/4 v2, 0x2

    .line 293
    if-ne v8, v2, :cond_17

    .line 294
    .line 295
    aget-object v2, v3, v16

    .line 296
    .line 297
    if-eq v2, v12, :cond_16

    .line 298
    .line 299
    if-ne v2, v10, :cond_19

    .line 300
    .line 301
    :cond_16
    iget v2, v4, Lu/e;->w:F

    .line 302
    .line 303
    invoke-virtual {v0}, Lu/e;->getWidth()I

    .line 304
    .line 305
    .line 306
    move-result v3

    .line 307
    int-to-float v3, v3

    .line 308
    mul-float/2addr v2, v3

    .line 309
    add-float/2addr v2, v14

    .line 310
    float-to-int v6, v2

    .line 311
    invoke-virtual {v4}, Lu/e;->getHeight()I

    .line 312
    .line 313
    .line 314
    move-result v8

    .line 315
    move-object/from16 v3, p0

    .line 316
    .line 317
    move-object v5, v12

    .line 318
    invoke-virtual/range {v3 .. v8}, Lv/g;->e(Lu/e;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 319
    .line 320
    .line 321
    iget-object v2, v4, Lu/e;->d:Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 322
    .line 323
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    .line 324
    .line 325
    invoke-virtual {v4}, Lu/e;->getWidth()I

    .line 326
    .line 327
    .line 328
    move-result v3

    .line 329
    invoke-virtual {v2, v3}, Landroidx/constraintlayout/core/widgets/analyzer/b;->resolve(I)V

    .line 330
    .line 331
    .line 332
    iget-object v2, v4, Lu/e;->e:Landroidx/constraintlayout/core/widgets/analyzer/e;

    .line 333
    .line 334
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    .line 335
    .line 336
    invoke-virtual {v4}, Lu/e;->getHeight()I

    .line 337
    .line 338
    .line 339
    move-result v3

    .line 340
    invoke-virtual {v2, v3}, Landroidx/constraintlayout/core/widgets/analyzer/b;->resolve(I)V

    .line 341
    .line 342
    .line 343
    const/4 v2, 0x1

    .line 344
    iput-boolean v2, v4, Lu/e;->a:Z

    .line 345
    .line 346
    goto/16 :goto_0

    .line 347
    .line 348
    :cond_17
    const/16 v19, 0x1

    .line 349
    .line 350
    aget-object v2, v6, v16

    .line 351
    .line 352
    iget-object v2, v2, Lu/d;->f:Lu/d;

    .line 353
    .line 354
    if-eqz v2, :cond_18

    .line 355
    .line 356
    aget-object v2, v6, v19

    .line 357
    .line 358
    iget-object v2, v2, Lu/d;->f:Lu/d;

    .line 359
    .line 360
    if-nez v2, :cond_19

    .line 361
    .line 362
    :cond_18
    const/4 v6, 0x0

    .line 363
    const/4 v8, 0x0

    .line 364
    move-object/from16 v3, p0

    .line 365
    .line 366
    invoke-virtual/range {v3 .. v8}, Lv/g;->e(Lu/e;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 367
    .line 368
    .line 369
    iget-object v2, v4, Lu/e;->d:Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 370
    .line 371
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    .line 372
    .line 373
    invoke-virtual {v4}, Lu/e;->getWidth()I

    .line 374
    .line 375
    .line 376
    move-result v3

    .line 377
    invoke-virtual {v2, v3}, Landroidx/constraintlayout/core/widgets/analyzer/b;->resolve(I)V

    .line 378
    .line 379
    .line 380
    iget-object v2, v4, Lu/e;->e:Landroidx/constraintlayout/core/widgets/analyzer/e;

    .line 381
    .line 382
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    .line 383
    .line 384
    invoke-virtual {v4}, Lu/e;->getHeight()I

    .line 385
    .line 386
    .line 387
    move-result v3

    .line 388
    invoke-virtual {v2, v3}, Landroidx/constraintlayout/core/widgets/analyzer/b;->resolve(I)V

    .line 389
    .line 390
    .line 391
    const/4 v2, 0x1

    .line 392
    iput-boolean v2, v4, Lu/e;->a:Z

    .line 393
    .line 394
    goto/16 :goto_0

    .line 395
    .line 396
    :cond_19
    :goto_3
    if-ne v7, v11, :cond_1a

    .line 397
    .line 398
    if-eq v15, v5, :cond_1c

    .line 399
    .line 400
    if-ne v15, v12, :cond_1a

    .line 401
    .line 402
    goto :goto_5

    .line 403
    :cond_1a
    move-object v2, v15

    .line 404
    move-object v15, v5

    .line 405
    move-object v5, v2

    .line 406
    :cond_1b
    :goto_4
    const/4 v2, 0x1

    .line 407
    goto/16 :goto_7

    .line 408
    .line 409
    :cond_1c
    :goto_5
    if-ne v9, v13, :cond_1f

    .line 410
    .line 411
    if-ne v15, v5, :cond_1d

    .line 412
    .line 413
    const/4 v8, 0x0

    .line 414
    const/4 v6, 0x0

    .line 415
    move-object v7, v5

    .line 416
    move-object/from16 v3, p0

    .line 417
    .line 418
    invoke-virtual/range {v3 .. v8}, Lv/g;->e(Lu/e;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 419
    .line 420
    .line 421
    :cond_1d
    invoke-virtual {v4}, Lu/e;->getWidth()I

    .line 422
    .line 423
    .line 424
    move-result v6

    .line 425
    iget v2, v4, Lu/e;->X:F

    .line 426
    .line 427
    invoke-virtual {v4}, Lu/e;->getDimensionRatioSide()I

    .line 428
    .line 429
    .line 430
    move-result v3

    .line 431
    const/4 v5, -0x1

    .line 432
    if-ne v3, v5, :cond_1e

    .line 433
    .line 434
    div-float v2, v17, v2

    .line 435
    .line 436
    :cond_1e
    int-to-float v3, v6

    .line 437
    mul-float/2addr v3, v2

    .line 438
    add-float/2addr v3, v14

    .line 439
    float-to-int v8, v3

    .line 440
    move-object v7, v12

    .line 441
    move-object/from16 v3, p0

    .line 442
    .line 443
    move-object v5, v12

    .line 444
    invoke-virtual/range {v3 .. v8}, Lv/g;->e(Lu/e;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 445
    .line 446
    .line 447
    iget-object v2, v4, Lu/e;->d:Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 448
    .line 449
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    .line 450
    .line 451
    invoke-virtual {v4}, Lu/e;->getWidth()I

    .line 452
    .line 453
    .line 454
    move-result v3

    .line 455
    invoke-virtual {v2, v3}, Landroidx/constraintlayout/core/widgets/analyzer/b;->resolve(I)V

    .line 456
    .line 457
    .line 458
    iget-object v2, v4, Lu/e;->e:Landroidx/constraintlayout/core/widgets/analyzer/e;

    .line 459
    .line 460
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    .line 461
    .line 462
    invoke-virtual {v4}, Lu/e;->getHeight()I

    .line 463
    .line 464
    .line 465
    move-result v3

    .line 466
    invoke-virtual {v2, v3}, Landroidx/constraintlayout/core/widgets/analyzer/b;->resolve(I)V

    .line 467
    .line 468
    .line 469
    const/4 v2, 0x1

    .line 470
    iput-boolean v2, v4, Lu/e;->a:Z

    .line 471
    .line 472
    goto/16 :goto_0

    .line 473
    .line 474
    :cond_1f
    const/4 v2, 0x1

    .line 475
    if-ne v9, v2, :cond_20

    .line 476
    .line 477
    const/4 v8, 0x0

    .line 478
    const/4 v6, 0x0

    .line 479
    move-object/from16 v3, p0

    .line 480
    .line 481
    move-object v7, v5

    .line 482
    move-object v5, v15

    .line 483
    invoke-virtual/range {v3 .. v8}, Lv/g;->e(Lu/e;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 484
    .line 485
    .line 486
    iget-object v2, v4, Lu/e;->e:Landroidx/constraintlayout/core/widgets/analyzer/e;

    .line 487
    .line 488
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    .line 489
    .line 490
    invoke-virtual {v4}, Lu/e;->getHeight()I

    .line 491
    .line 492
    .line 493
    move-result v3

    .line 494
    iput v3, v2, Landroidx/constraintlayout/core/widgets/analyzer/b;->m:I

    .line 495
    .line 496
    goto/16 :goto_0

    .line 497
    .line 498
    :cond_20
    move-object/from16 v17, v15

    .line 499
    .line 500
    move-object v15, v5

    .line 501
    const/4 v5, 0x2

    .line 502
    if-ne v9, v5, :cond_23

    .line 503
    .line 504
    aget-object v5, v3, v2

    .line 505
    .line 506
    if-eq v5, v12, :cond_22

    .line 507
    .line 508
    if-ne v5, v10, :cond_21

    .line 509
    .line 510
    goto :goto_6

    .line 511
    :cond_21
    move-object/from16 v5, v17

    .line 512
    .line 513
    goto :goto_4

    .line 514
    :cond_22
    :goto_6
    iget v2, v4, Lu/e;->z:F

    .line 515
    .line 516
    invoke-virtual {v4}, Lu/e;->getWidth()I

    .line 517
    .line 518
    .line 519
    move-result v6

    .line 520
    invoke-virtual {v0}, Lu/e;->getHeight()I

    .line 521
    .line 522
    .line 523
    move-result v3

    .line 524
    int-to-float v3, v3

    .line 525
    mul-float/2addr v2, v3

    .line 526
    add-float/2addr v2, v14

    .line 527
    float-to-int v8, v2

    .line 528
    move-object/from16 v3, p0

    .line 529
    .line 530
    move-object v7, v12

    .line 531
    move-object/from16 v5, v17

    .line 532
    .line 533
    invoke-virtual/range {v3 .. v8}, Lv/g;->e(Lu/e;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 534
    .line 535
    .line 536
    iget-object v2, v4, Lu/e;->d:Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 537
    .line 538
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    .line 539
    .line 540
    invoke-virtual {v4}, Lu/e;->getWidth()I

    .line 541
    .line 542
    .line 543
    move-result v3

    .line 544
    invoke-virtual {v2, v3}, Landroidx/constraintlayout/core/widgets/analyzer/b;->resolve(I)V

    .line 545
    .line 546
    .line 547
    iget-object v2, v4, Lu/e;->e:Landroidx/constraintlayout/core/widgets/analyzer/e;

    .line 548
    .line 549
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    .line 550
    .line 551
    invoke-virtual {v4}, Lu/e;->getHeight()I

    .line 552
    .line 553
    .line 554
    move-result v3

    .line 555
    invoke-virtual {v2, v3}, Landroidx/constraintlayout/core/widgets/analyzer/b;->resolve(I)V

    .line 556
    .line 557
    .line 558
    const/4 v2, 0x1

    .line 559
    iput-boolean v2, v4, Lu/e;->a:Z

    .line 560
    .line 561
    goto/16 :goto_0

    .line 562
    .line 563
    :cond_23
    move/from16 v18, v5

    .line 564
    .line 565
    move-object/from16 v5, v17

    .line 566
    .line 567
    aget-object v2, v6, v18

    .line 568
    .line 569
    iget-object v2, v2, Lu/d;->f:Lu/d;

    .line 570
    .line 571
    if-eqz v2, :cond_24

    .line 572
    .line 573
    aget-object v2, v6, v13

    .line 574
    .line 575
    iget-object v2, v2, Lu/d;->f:Lu/d;

    .line 576
    .line 577
    if-nez v2, :cond_1b

    .line 578
    .line 579
    :cond_24
    const/4 v6, 0x0

    .line 580
    const/4 v8, 0x0

    .line 581
    move-object/from16 v3, p0

    .line 582
    .line 583
    move-object v5, v15

    .line 584
    invoke-virtual/range {v3 .. v8}, Lv/g;->e(Lu/e;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 585
    .line 586
    .line 587
    iget-object v2, v4, Lu/e;->d:Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 588
    .line 589
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    .line 590
    .line 591
    invoke-virtual {v4}, Lu/e;->getWidth()I

    .line 592
    .line 593
    .line 594
    move-result v3

    .line 595
    invoke-virtual {v2, v3}, Landroidx/constraintlayout/core/widgets/analyzer/b;->resolve(I)V

    .line 596
    .line 597
    .line 598
    iget-object v2, v4, Lu/e;->e:Landroidx/constraintlayout/core/widgets/analyzer/e;

    .line 599
    .line 600
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    .line 601
    .line 602
    invoke-virtual {v4}, Lu/e;->getHeight()I

    .line 603
    .line 604
    .line 605
    move-result v3

    .line 606
    invoke-virtual {v2, v3}, Landroidx/constraintlayout/core/widgets/analyzer/b;->resolve(I)V

    .line 607
    .line 608
    .line 609
    const/4 v2, 0x1

    .line 610
    iput-boolean v2, v4, Lu/e;->a:Z

    .line 611
    .line 612
    goto/16 :goto_0

    .line 613
    .line 614
    :goto_7
    if-ne v5, v11, :cond_0

    .line 615
    .line 616
    if-ne v7, v11, :cond_0

    .line 617
    .line 618
    if-eq v8, v2, :cond_26

    .line 619
    .line 620
    if-ne v9, v2, :cond_25

    .line 621
    .line 622
    goto :goto_8

    .line 623
    :cond_25
    const/4 v5, 0x2

    .line 624
    if-ne v9, v5, :cond_0

    .line 625
    .line 626
    if-ne v8, v5, :cond_0

    .line 627
    .line 628
    aget-object v5, v3, v16

    .line 629
    .line 630
    if-ne v5, v12, :cond_0

    .line 631
    .line 632
    aget-object v3, v3, v2

    .line 633
    .line 634
    if-ne v3, v12, :cond_0

    .line 635
    .line 636
    iget v2, v4, Lu/e;->w:F

    .line 637
    .line 638
    iget v3, v4, Lu/e;->z:F

    .line 639
    .line 640
    invoke-virtual {v0}, Lu/e;->getWidth()I

    .line 641
    .line 642
    .line 643
    move-result v5

    .line 644
    int-to-float v5, v5

    .line 645
    mul-float/2addr v2, v5

    .line 646
    add-float/2addr v2, v14

    .line 647
    float-to-int v6, v2

    .line 648
    invoke-virtual {v0}, Lu/e;->getHeight()I

    .line 649
    .line 650
    .line 651
    move-result v2

    .line 652
    int-to-float v2, v2

    .line 653
    mul-float/2addr v3, v2

    .line 654
    add-float/2addr v3, v14

    .line 655
    float-to-int v8, v3

    .line 656
    move-object v7, v12

    .line 657
    move-object/from16 v3, p0

    .line 658
    .line 659
    move-object v5, v12

    .line 660
    invoke-virtual/range {v3 .. v8}, Lv/g;->e(Lu/e;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 661
    .line 662
    .line 663
    iget-object v2, v4, Lu/e;->d:Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 664
    .line 665
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    .line 666
    .line 667
    invoke-virtual {v4}, Lu/e;->getWidth()I

    .line 668
    .line 669
    .line 670
    move-result v3

    .line 671
    invoke-virtual {v2, v3}, Landroidx/constraintlayout/core/widgets/analyzer/b;->resolve(I)V

    .line 672
    .line 673
    .line 674
    iget-object v2, v4, Lu/e;->e:Landroidx/constraintlayout/core/widgets/analyzer/e;

    .line 675
    .line 676
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    .line 677
    .line 678
    invoke-virtual {v4}, Lu/e;->getHeight()I

    .line 679
    .line 680
    .line 681
    move-result v3

    .line 682
    invoke-virtual {v2, v3}, Landroidx/constraintlayout/core/widgets/analyzer/b;->resolve(I)V

    .line 683
    .line 684
    .line 685
    const/4 v2, 0x1

    .line 686
    iput-boolean v2, v4, Lu/e;->a:Z

    .line 687
    .line 688
    goto/16 :goto_0

    .line 689
    .line 690
    :cond_26
    :goto_8
    const/4 v8, 0x0

    .line 691
    const/4 v6, 0x0

    .line 692
    move-object v7, v15

    .line 693
    move-object/from16 v3, p0

    .line 694
    .line 695
    move-object v5, v15

    .line 696
    invoke-virtual/range {v3 .. v8}, Lv/g;->e(Lu/e;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 697
    .line 698
    .line 699
    iget-object v2, v4, Lu/e;->d:Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 700
    .line 701
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    .line 702
    .line 703
    invoke-virtual {v4}, Lu/e;->getWidth()I

    .line 704
    .line 705
    .line 706
    move-result v3

    .line 707
    iput v3, v2, Landroidx/constraintlayout/core/widgets/analyzer/b;->m:I

    .line 708
    .line 709
    iget-object v2, v4, Lu/e;->e:Landroidx/constraintlayout/core/widgets/analyzer/e;

    .line 710
    .line 711
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    .line 712
    .line 713
    invoke-virtual {v4}, Lu/e;->getHeight()I

    .line 714
    .line 715
    .line 716
    move-result v3

    .line 717
    iput v3, v2, Landroidx/constraintlayout/core/widgets/analyzer/b;->m:I

    .line 718
    .line 719
    goto/16 :goto_0

    .line 720
    .line 721
    :goto_9
    invoke-virtual {v4}, Lu/e;->getWidth()I

    .line 722
    .line 723
    .line 724
    move-result v2

    .line 725
    if-ne v5, v10, :cond_27

    .line 726
    .line 727
    invoke-virtual {v0}, Lu/e;->getWidth()I

    .line 728
    .line 729
    .line 730
    move-result v2

    .line 731
    iget v5, v14, Lu/d;->g:I

    .line 732
    .line 733
    sub-int/2addr v2, v5

    .line 734
    iget v5, v6, Lu/d;->g:I

    .line 735
    .line 736
    sub-int/2addr v2, v5

    .line 737
    move-object v5, v12

    .line 738
    :cond_27
    move v6, v2

    .line 739
    invoke-virtual {v4}, Lu/e;->getHeight()I

    .line 740
    .line 741
    .line 742
    move-result v2

    .line 743
    if-ne v7, v10, :cond_28

    .line 744
    .line 745
    invoke-virtual {v0}, Lu/e;->getHeight()I

    .line 746
    .line 747
    .line 748
    move-result v2

    .line 749
    iget v3, v3, Lu/d;->g:I

    .line 750
    .line 751
    sub-int/2addr v2, v3

    .line 752
    iget v3, v15, Lu/d;->g:I

    .line 753
    .line 754
    sub-int/2addr v2, v3

    .line 755
    move-object v7, v12

    .line 756
    :cond_28
    move-object/from16 v3, p0

    .line 757
    .line 758
    move v8, v2

    .line 759
    invoke-virtual/range {v3 .. v8}, Lv/g;->e(Lu/e;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 760
    .line 761
    .line 762
    iget-object v2, v4, Lu/e;->d:Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 763
    .line 764
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    .line 765
    .line 766
    invoke-virtual {v4}, Lu/e;->getWidth()I

    .line 767
    .line 768
    .line 769
    move-result v3

    .line 770
    invoke-virtual {v2, v3}, Landroidx/constraintlayout/core/widgets/analyzer/b;->resolve(I)V

    .line 771
    .line 772
    .line 773
    iget-object v2, v4, Lu/e;->e:Landroidx/constraintlayout/core/widgets/analyzer/e;

    .line 774
    .line 775
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    .line 776
    .line 777
    invoke-virtual {v4}, Lu/e;->getHeight()I

    .line 778
    .line 779
    .line 780
    move-result v3

    .line 781
    invoke-virtual {v2, v3}, Landroidx/constraintlayout/core/widgets/analyzer/b;->resolve(I)V

    .line 782
    .line 783
    .line 784
    const/4 v2, 0x1

    .line 785
    iput-boolean v2, v4, Lu/e;->a:Z

    .line 786
    .line 787
    goto/16 :goto_0

    .line 788
    .line 789
    :cond_29
    return-void
.end method

.method public buildGraph()V
    .locals 4

    .line 1
    iget-object v0, p0, Lv/g;->e:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lv/g;->buildGraph(Ljava/util/ArrayList;)V

    .line 2
    iget-object v0, p0, Lv/g;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3
    iget-object v1, p0, Lv/g;->a:Lu/f;

    iget-object v2, v1, Lu/e;->d:Landroidx/constraintlayout/core/widgets/analyzer/d;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v0}, Lv/g;->d(Landroidx/constraintlayout/core/widgets/analyzer/f;ILjava/util/ArrayList;)V

    .line 4
    iget-object v1, v1, Lu/e;->e:Landroidx/constraintlayout/core/widgets/analyzer/e;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2, v0}, Lv/g;->d(Landroidx/constraintlayout/core/widgets/analyzer/f;ILjava/util/ArrayList;)V

    .line 5
    iput-boolean v3, p0, Lv/g;->b:Z

    return-void
.end method

.method public buildGraph(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/core/widgets/analyzer/f;",
            ">;)V"
        }
    .end annotation

    .line 6
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 7
    iget-object v0, p0, Lv/g;->d:Lu/f;

    iget-object v1, v0, Lu/e;->d:Landroidx/constraintlayout/core/widgets/analyzer/d;

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/analyzer/d;->b()V

    .line 8
    iget-object v1, v0, Lu/e;->e:Landroidx/constraintlayout/core/widgets/analyzer/e;

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/analyzer/e;->b()V

    .line 9
    iget-object v1, v0, Lu/e;->d:Landroidx/constraintlayout/core/widgets/analyzer/d;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    iget-object v1, v0, Lu/e;->e:Landroidx/constraintlayout/core/widgets/analyzer/e;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    iget-object v1, v0, Lu/n;->q0:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lu/e;

    .line 12
    instance-of v4, v3, Lu/i;

    if-eqz v4, :cond_1

    .line 13
    new-instance v4, Lv/j;

    invoke-direct {v4, v3}, Lv/j;-><init>(Lu/e;)V

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 14
    :cond_1
    invoke-virtual {v3}, Lu/e;->isInHorizontalChain()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 15
    iget-object v4, v3, Lu/e;->b:Lv/e;

    if-nez v4, :cond_2

    .line 16
    new-instance v4, Lv/e;

    const/4 v5, 0x0

    invoke-direct {v4, v3, v5}, Lv/e;-><init>(Lu/e;I)V

    iput-object v4, v3, Lu/e;->b:Lv/e;

    :cond_2
    if-nez v2, :cond_3

    .line 17
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 18
    :cond_3
    iget-object v4, v3, Lu/e;->b:Lv/e;

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 19
    :cond_4
    iget-object v4, v3, Lu/e;->d:Landroidx/constraintlayout/core/widgets/analyzer/d;

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    :goto_1
    invoke-virtual {v3}, Lu/e;->isInVerticalChain()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 21
    iget-object v4, v3, Lu/e;->c:Lv/e;

    if-nez v4, :cond_5

    .line 22
    new-instance v4, Lv/e;

    const/4 v5, 0x1

    invoke-direct {v4, v3, v5}, Lv/e;-><init>(Lu/e;I)V

    iput-object v4, v3, Lu/e;->c:Lv/e;

    :cond_5
    if-nez v2, :cond_6

    .line 23
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 24
    :cond_6
    iget-object v4, v3, Lu/e;->c:Lv/e;

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 25
    :cond_7
    iget-object v4, v3, Lu/e;->e:Landroidx/constraintlayout/core/widgets/analyzer/e;

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    :goto_2
    instance-of v4, v3, Lu/k;

    if-eqz v4, :cond_0

    .line 27
    new-instance v4, Landroidx/constraintlayout/core/widgets/analyzer/c;

    invoke-direct {v4, v3}, Landroidx/constraintlayout/core/widgets/analyzer/c;-><init>(Lu/e;)V

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_8
    if-eqz v2, :cond_9

    .line 28
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 29
    :cond_9
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/core/widgets/analyzer/f;

    .line 30
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/analyzer/f;->b()V

    goto :goto_3

    .line 31
    :cond_a
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/core/widgets/analyzer/f;

    .line 32
    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    if-ne v2, v0, :cond_b

    goto :goto_4

    .line 33
    :cond_b
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/analyzer/f;->a()V

    goto :goto_4

    :cond_c
    return-void
.end method

.method public final c(Lu/f;I)I
    .locals 7

    .line 1
    iget-object v0, p0, Lv/g;->h:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    :goto_0
    if-ge v4, v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v5

    .line 16
    check-cast v5, Lv/k;

    .line 17
    .line 18
    invoke-virtual {v5, p1, p2}, Lv/k;->computeWrapSize(Lu/f;I)J

    .line 19
    .line 20
    .line 21
    move-result-wide v5

    .line 22
    invoke-static {v2, v3, v5, v6}, Ljava/lang/Math;->max(JJ)J

    .line 23
    .line 24
    .line 25
    move-result-wide v2

    .line 26
    add-int/lit8 v4, v4, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    long-to-int p1, v2

    .line 30
    return p1
.end method

.method public final d(Landroidx/constraintlayout/core/widgets/analyzer/f;ILjava/util/ArrayList;)V
    .locals 16

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->h:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 4
    .line 5
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/a;->k:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    iget-object v3, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->i:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 16
    .line 17
    if-eqz v2, :cond_2

    .line 18
    .line 19
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Lv/f;

    .line 24
    .line 25
    instance-of v3, v2, Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 26
    .line 27
    if-eqz v3, :cond_1

    .line 28
    .line 29
    move-object v5, v2

    .line 30
    check-cast v5, Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 31
    .line 32
    const/4 v9, 0x0

    .line 33
    const/4 v7, 0x0

    .line 34
    move-object/from16 v4, p0

    .line 35
    .line 36
    move/from16 v6, p2

    .line 37
    .line 38
    move-object/from16 v8, p3

    .line 39
    .line 40
    invoke-virtual/range {v4 .. v9}, Lv/g;->a(Landroidx/constraintlayout/core/widgets/analyzer/a;IILjava/util/ArrayList;Lv/k;)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    instance-of v3, v2, Landroidx/constraintlayout/core/widgets/analyzer/f;

    .line 45
    .line 46
    if-eqz v3, :cond_0

    .line 47
    .line 48
    check-cast v2, Landroidx/constraintlayout/core/widgets/analyzer/f;

    .line 49
    .line 50
    iget-object v11, v2, Landroidx/constraintlayout/core/widgets/analyzer/f;->h:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 51
    .line 52
    const/4 v15, 0x0

    .line 53
    const/4 v13, 0x0

    .line 54
    move-object/from16 v10, p0

    .line 55
    .line 56
    move/from16 v12, p2

    .line 57
    .line 58
    move-object/from16 v14, p3

    .line 59
    .line 60
    invoke-virtual/range {v10 .. v15}, Lv/g;->a(Landroidx/constraintlayout/core/widgets/analyzer/a;IILjava/util/ArrayList;Lv/k;)V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_2
    iget-object v1, v3, Landroidx/constraintlayout/core/widgets/analyzer/a;->k:Ljava/util/ArrayList;

    .line 65
    .line 66
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    if-eqz v2, :cond_5

    .line 75
    .line 76
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    check-cast v2, Lv/f;

    .line 81
    .line 82
    instance-of v3, v2, Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 83
    .line 84
    if-eqz v3, :cond_4

    .line 85
    .line 86
    move-object v11, v2

    .line 87
    check-cast v11, Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 88
    .line 89
    const/4 v15, 0x0

    .line 90
    const/4 v13, 0x1

    .line 91
    move-object/from16 v10, p0

    .line 92
    .line 93
    move/from16 v12, p2

    .line 94
    .line 95
    move-object/from16 v14, p3

    .line 96
    .line 97
    invoke-virtual/range {v10 .. v15}, Lv/g;->a(Landroidx/constraintlayout/core/widgets/analyzer/a;IILjava/util/ArrayList;Lv/k;)V

    .line 98
    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_4
    instance-of v3, v2, Landroidx/constraintlayout/core/widgets/analyzer/f;

    .line 102
    .line 103
    if-eqz v3, :cond_3

    .line 104
    .line 105
    check-cast v2, Landroidx/constraintlayout/core/widgets/analyzer/f;

    .line 106
    .line 107
    iget-object v11, v2, Landroidx/constraintlayout/core/widgets/analyzer/f;->i:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 108
    .line 109
    const/4 v15, 0x0

    .line 110
    const/4 v13, 0x1

    .line 111
    move-object/from16 v10, p0

    .line 112
    .line 113
    move/from16 v12, p2

    .line 114
    .line 115
    move-object/from16 v14, p3

    .line 116
    .line 117
    invoke-virtual/range {v10 .. v15}, Lv/g;->a(Landroidx/constraintlayout/core/widgets/analyzer/a;IILjava/util/ArrayList;Lv/k;)V

    .line 118
    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_5
    const/4 v1, 0x1

    .line 122
    move/from16 v12, p2

    .line 123
    .line 124
    if-ne v12, v1, :cond_7

    .line 125
    .line 126
    check-cast v0, Landroidx/constraintlayout/core/widgets/analyzer/e;

    .line 127
    .line 128
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/e;->k:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 129
    .line 130
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/a;->k:Ljava/util/ArrayList;

    .line 131
    .line 132
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 137
    .line 138
    .line 139
    move-result v1

    .line 140
    if-eqz v1, :cond_7

    .line 141
    .line 142
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    check-cast v1, Lv/f;

    .line 147
    .line 148
    instance-of v2, v1, Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 149
    .line 150
    if-eqz v2, :cond_6

    .line 151
    .line 152
    move-object v11, v1

    .line 153
    check-cast v11, Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 154
    .line 155
    const/4 v15, 0x0

    .line 156
    const/4 v13, 0x2

    .line 157
    move-object/from16 v10, p0

    .line 158
    .line 159
    move-object/from16 v14, p3

    .line 160
    .line 161
    invoke-virtual/range {v10 .. v15}, Lv/g;->a(Landroidx/constraintlayout/core/widgets/analyzer/a;IILjava/util/ArrayList;Lv/k;)V

    .line 162
    .line 163
    .line 164
    :cond_6
    move/from16 v12, p2

    .line 165
    .line 166
    goto :goto_2

    .line 167
    :cond_7
    return-void
.end method

.method public directMeasure(Z)Z
    .locals 12

    .line 1
    iget-boolean v0, p0, Lv/g;->b:Z

    .line 2
    .line 3
    iget-object v1, p0, Lv/g;->a:Lu/f;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iget-boolean v0, p0, Lv/g;->c:Z

    .line 9
    .line 10
    if-eqz v0, :cond_2

    .line 11
    .line 12
    :cond_0
    iget-object v0, v1, Lu/n;->q0:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-eqz v3, :cond_1

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    check-cast v3, Lu/e;

    .line 29
    .line 30
    invoke-virtual {v3}, Lu/e;->ensureWidgetRuns()V

    .line 31
    .line 32
    .line 33
    iput-boolean v2, v3, Lu/e;->a:Z

    .line 34
    .line 35
    iget-object v4, v3, Lu/e;->d:Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 36
    .line 37
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/analyzer/d;->e()V

    .line 38
    .line 39
    .line 40
    iget-object v3, v3, Lu/e;->e:Landroidx/constraintlayout/core/widgets/analyzer/e;

    .line 41
    .line 42
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/analyzer/e;->d()V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    invoke-virtual {v1}, Lu/e;->ensureWidgetRuns()V

    .line 47
    .line 48
    .line 49
    iput-boolean v2, v1, Lu/e;->a:Z

    .line 50
    .line 51
    iget-object v0, v1, Lu/e;->d:Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 52
    .line 53
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/analyzer/d;->e()V

    .line 54
    .line 55
    .line 56
    iget-object v0, v1, Lu/e;->e:Landroidx/constraintlayout/core/widgets/analyzer/e;

    .line 57
    .line 58
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/analyzer/e;->d()V

    .line 59
    .line 60
    .line 61
    iput-boolean v2, p0, Lv/g;->c:Z

    .line 62
    .line 63
    :cond_2
    iget-object v0, p0, Lv/g;->d:Lu/f;

    .line 64
    .line 65
    invoke-virtual {p0, v0}, Lv/g;->b(Lu/f;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1, v2}, Lu/e;->setX(I)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1, v2}, Lu/e;->setY(I)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1, v2}, Lu/e;->getDimensionBehaviour(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    const/4 v3, 0x1

    .line 79
    invoke-virtual {v1, v3}, Lu/e;->getDimensionBehaviour(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    iget-boolean v5, p0, Lv/g;->b:Z

    .line 84
    .line 85
    if-eqz v5, :cond_3

    .line 86
    .line 87
    invoke-virtual {p0}, Lv/g;->buildGraph()V

    .line 88
    .line 89
    .line 90
    :cond_3
    invoke-virtual {v1}, Lu/e;->getX()I

    .line 91
    .line 92
    .line 93
    move-result v5

    .line 94
    invoke-virtual {v1}, Lu/e;->getY()I

    .line 95
    .line 96
    .line 97
    move-result v6

    .line 98
    iget-object v7, v1, Lu/e;->d:Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 99
    .line 100
    iget-object v7, v7, Landroidx/constraintlayout/core/widgets/analyzer/f;->h:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 101
    .line 102
    invoke-virtual {v7, v5}, Landroidx/constraintlayout/core/widgets/analyzer/a;->resolve(I)V

    .line 103
    .line 104
    .line 105
    iget-object v7, v1, Lu/e;->e:Landroidx/constraintlayout/core/widgets/analyzer/e;

    .line 106
    .line 107
    iget-object v7, v7, Landroidx/constraintlayout/core/widgets/analyzer/f;->h:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 108
    .line 109
    invoke-virtual {v7, v6}, Landroidx/constraintlayout/core/widgets/analyzer/a;->resolve(I)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0}, Lv/g;->measureWidgets()V

    .line 113
    .line 114
    .line 115
    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->e:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 116
    .line 117
    sget-object v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 118
    .line 119
    iget-object v9, p0, Lv/g;->e:Ljava/util/ArrayList;

    .line 120
    .line 121
    if-eq v0, v7, :cond_4

    .line 122
    .line 123
    if-ne v4, v7, :cond_8

    .line 124
    .line 125
    :cond_4
    if-eqz p1, :cond_6

    .line 126
    .line 127
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 128
    .line 129
    .line 130
    move-result-object v10

    .line 131
    :cond_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 132
    .line 133
    .line 134
    move-result v11

    .line 135
    if-eqz v11, :cond_6

    .line 136
    .line 137
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v11

    .line 141
    check-cast v11, Landroidx/constraintlayout/core/widgets/analyzer/f;

    .line 142
    .line 143
    invoke-virtual {v11}, Landroidx/constraintlayout/core/widgets/analyzer/f;->c()Z

    .line 144
    .line 145
    .line 146
    move-result v11

    .line 147
    if-nez v11, :cond_5

    .line 148
    .line 149
    move p1, v2

    .line 150
    :cond_6
    if-eqz p1, :cond_7

    .line 151
    .line 152
    if-ne v0, v7, :cond_7

    .line 153
    .line 154
    invoke-virtual {v1, v8}, Lu/e;->setHorizontalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {p0, v1, v2}, Lv/g;->c(Lu/f;I)I

    .line 158
    .line 159
    .line 160
    move-result v10

    .line 161
    invoke-virtual {v1, v10}, Lu/e;->setWidth(I)V

    .line 162
    .line 163
    .line 164
    iget-object v10, v1, Lu/e;->d:Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 165
    .line 166
    iget-object v10, v10, Landroidx/constraintlayout/core/widgets/analyzer/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    .line 167
    .line 168
    invoke-virtual {v1}, Lu/e;->getWidth()I

    .line 169
    .line 170
    .line 171
    move-result v11

    .line 172
    invoke-virtual {v10, v11}, Landroidx/constraintlayout/core/widgets/analyzer/b;->resolve(I)V

    .line 173
    .line 174
    .line 175
    :cond_7
    if-eqz p1, :cond_8

    .line 176
    .line 177
    if-ne v4, v7, :cond_8

    .line 178
    .line 179
    invoke-virtual {v1, v8}, Lu/e;->setVerticalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {p0, v1, v3}, Lv/g;->c(Lu/f;I)I

    .line 183
    .line 184
    .line 185
    move-result p1

    .line 186
    invoke-virtual {v1, p1}, Lu/e;->setHeight(I)V

    .line 187
    .line 188
    .line 189
    iget-object p1, v1, Lu/e;->e:Landroidx/constraintlayout/core/widgets/analyzer/e;

    .line 190
    .line 191
    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/analyzer/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    .line 192
    .line 193
    invoke-virtual {v1}, Lu/e;->getHeight()I

    .line 194
    .line 195
    .line 196
    move-result v7

    .line 197
    invoke-virtual {p1, v7}, Landroidx/constraintlayout/core/widgets/analyzer/b;->resolve(I)V

    .line 198
    .line 199
    .line 200
    :cond_8
    iget-object p1, v1, Lu/e;->T:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 201
    .line 202
    aget-object p1, p1, v2

    .line 203
    .line 204
    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->j:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 205
    .line 206
    if-eq p1, v8, :cond_a

    .line 207
    .line 208
    if-ne p1, v7, :cond_9

    .line 209
    .line 210
    goto :goto_1

    .line 211
    :cond_9
    move p1, v2

    .line 212
    goto :goto_2

    .line 213
    :cond_a
    :goto_1
    invoke-virtual {v1}, Lu/e;->getWidth()I

    .line 214
    .line 215
    .line 216
    move-result p1

    .line 217
    add-int/2addr p1, v5

    .line 218
    iget-object v10, v1, Lu/e;->d:Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 219
    .line 220
    iget-object v10, v10, Landroidx/constraintlayout/core/widgets/analyzer/f;->i:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 221
    .line 222
    invoke-virtual {v10, p1}, Landroidx/constraintlayout/core/widgets/analyzer/a;->resolve(I)V

    .line 223
    .line 224
    .line 225
    iget-object v10, v1, Lu/e;->d:Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 226
    .line 227
    iget-object v10, v10, Landroidx/constraintlayout/core/widgets/analyzer/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    .line 228
    .line 229
    sub-int/2addr p1, v5

    .line 230
    invoke-virtual {v10, p1}, Landroidx/constraintlayout/core/widgets/analyzer/b;->resolve(I)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {p0}, Lv/g;->measureWidgets()V

    .line 234
    .line 235
    .line 236
    iget-object p1, v1, Lu/e;->T:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 237
    .line 238
    aget-object p1, p1, v3

    .line 239
    .line 240
    if-eq p1, v8, :cond_b

    .line 241
    .line 242
    if-ne p1, v7, :cond_c

    .line 243
    .line 244
    :cond_b
    invoke-virtual {v1}, Lu/e;->getHeight()I

    .line 245
    .line 246
    .line 247
    move-result p1

    .line 248
    add-int/2addr p1, v6

    .line 249
    iget-object v5, v1, Lu/e;->e:Landroidx/constraintlayout/core/widgets/analyzer/e;

    .line 250
    .line 251
    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/analyzer/f;->i:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 252
    .line 253
    invoke-virtual {v5, p1}, Landroidx/constraintlayout/core/widgets/analyzer/a;->resolve(I)V

    .line 254
    .line 255
    .line 256
    iget-object v5, v1, Lu/e;->e:Landroidx/constraintlayout/core/widgets/analyzer/e;

    .line 257
    .line 258
    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/analyzer/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    .line 259
    .line 260
    sub-int/2addr p1, v6

    .line 261
    invoke-virtual {v5, p1}, Landroidx/constraintlayout/core/widgets/analyzer/b;->resolve(I)V

    .line 262
    .line 263
    .line 264
    :cond_c
    invoke-virtual {p0}, Lv/g;->measureWidgets()V

    .line 265
    .line 266
    .line 267
    move p1, v3

    .line 268
    :goto_2
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 269
    .line 270
    .line 271
    move-result-object v5

    .line 272
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 273
    .line 274
    .line 275
    move-result v6

    .line 276
    if-eqz v6, :cond_e

    .line 277
    .line 278
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 279
    .line 280
    .line 281
    move-result-object v6

    .line 282
    check-cast v6, Landroidx/constraintlayout/core/widgets/analyzer/f;

    .line 283
    .line 284
    iget-object v7, v6, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 285
    .line 286
    if-ne v7, v1, :cond_d

    .line 287
    .line 288
    iget-boolean v7, v6, Landroidx/constraintlayout/core/widgets/analyzer/f;->g:Z

    .line 289
    .line 290
    if-nez v7, :cond_d

    .line 291
    .line 292
    goto :goto_3

    .line 293
    :cond_d
    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/analyzer/f;->applyToWidget()V

    .line 294
    .line 295
    .line 296
    goto :goto_3

    .line 297
    :cond_e
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 298
    .line 299
    .line 300
    move-result-object v5

    .line 301
    :cond_f
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 302
    .line 303
    .line 304
    move-result v6

    .line 305
    if-eqz v6, :cond_13

    .line 306
    .line 307
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 308
    .line 309
    .line 310
    move-result-object v6

    .line 311
    check-cast v6, Landroidx/constraintlayout/core/widgets/analyzer/f;

    .line 312
    .line 313
    if-nez p1, :cond_10

    .line 314
    .line 315
    iget-object v7, v6, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 316
    .line 317
    if-ne v7, v1, :cond_10

    .line 318
    .line 319
    goto :goto_4

    .line 320
    :cond_10
    iget-object v7, v6, Landroidx/constraintlayout/core/widgets/analyzer/f;->h:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 321
    .line 322
    iget-boolean v7, v7, Landroidx/constraintlayout/core/widgets/analyzer/a;->j:Z

    .line 323
    .line 324
    if-nez v7, :cond_11

    .line 325
    .line 326
    goto :goto_5

    .line 327
    :cond_11
    iget-object v7, v6, Landroidx/constraintlayout/core/widgets/analyzer/f;->i:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 328
    .line 329
    iget-boolean v7, v7, Landroidx/constraintlayout/core/widgets/analyzer/a;->j:Z

    .line 330
    .line 331
    if-nez v7, :cond_12

    .line 332
    .line 333
    instance-of v7, v6, Lv/j;

    .line 334
    .line 335
    if-nez v7, :cond_12

    .line 336
    .line 337
    goto :goto_5

    .line 338
    :cond_12
    iget-object v7, v6, Landroidx/constraintlayout/core/widgets/analyzer/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    .line 339
    .line 340
    iget-boolean v7, v7, Landroidx/constraintlayout/core/widgets/analyzer/a;->j:Z

    .line 341
    .line 342
    if-nez v7, :cond_f

    .line 343
    .line 344
    instance-of v7, v6, Lv/e;

    .line 345
    .line 346
    if-nez v7, :cond_f

    .line 347
    .line 348
    instance-of v6, v6, Lv/j;

    .line 349
    .line 350
    if-nez v6, :cond_f

    .line 351
    .line 352
    goto :goto_5

    .line 353
    :cond_13
    move v2, v3

    .line 354
    :goto_5
    invoke-virtual {v1, v0}, Lu/e;->setHorizontalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 355
    .line 356
    .line 357
    invoke-virtual {v1, v4}, Lu/e;->setVerticalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 358
    .line 359
    .line 360
    return v2
.end method

.method public directMeasureSetup(Z)Z
    .locals 5

    .line 1
    iget-boolean p1, p0, Lv/g;->b:Z

    .line 2
    .line 3
    iget-object v0, p0, Lv/g;->a:Lu/f;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_1

    .line 7
    .line 8
    iget-object p1, v0, Lu/n;->q0:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Lu/e;

    .line 25
    .line 26
    invoke-virtual {v2}, Lu/e;->ensureWidgetRuns()V

    .line 27
    .line 28
    .line 29
    iput-boolean v1, v2, Lu/e;->a:Z

    .line 30
    .line 31
    iget-object v3, v2, Lu/e;->d:Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 32
    .line 33
    iget-object v4, v3, Landroidx/constraintlayout/core/widgets/analyzer/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    .line 34
    .line 35
    iput-boolean v1, v4, Landroidx/constraintlayout/core/widgets/analyzer/a;->j:Z

    .line 36
    .line 37
    iput-boolean v1, v3, Landroidx/constraintlayout/core/widgets/analyzer/f;->g:Z

    .line 38
    .line 39
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/analyzer/d;->e()V

    .line 40
    .line 41
    .line 42
    iget-object v2, v2, Lu/e;->e:Landroidx/constraintlayout/core/widgets/analyzer/e;

    .line 43
    .line 44
    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/analyzer/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    .line 45
    .line 46
    iput-boolean v1, v3, Landroidx/constraintlayout/core/widgets/analyzer/a;->j:Z

    .line 47
    .line 48
    iput-boolean v1, v2, Landroidx/constraintlayout/core/widgets/analyzer/f;->g:Z

    .line 49
    .line 50
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/analyzer/e;->d()V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    invoke-virtual {v0}, Lu/e;->ensureWidgetRuns()V

    .line 55
    .line 56
    .line 57
    iput-boolean v1, v0, Lu/e;->a:Z

    .line 58
    .line 59
    iget-object p1, v0, Lu/e;->d:Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 60
    .line 61
    iget-object v2, p1, Landroidx/constraintlayout/core/widgets/analyzer/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    .line 62
    .line 63
    iput-boolean v1, v2, Landroidx/constraintlayout/core/widgets/analyzer/a;->j:Z

    .line 64
    .line 65
    iput-boolean v1, p1, Landroidx/constraintlayout/core/widgets/analyzer/f;->g:Z

    .line 66
    .line 67
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/analyzer/d;->e()V

    .line 68
    .line 69
    .line 70
    iget-object p1, v0, Lu/e;->e:Landroidx/constraintlayout/core/widgets/analyzer/e;

    .line 71
    .line 72
    iget-object v2, p1, Landroidx/constraintlayout/core/widgets/analyzer/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    .line 73
    .line 74
    iput-boolean v1, v2, Landroidx/constraintlayout/core/widgets/analyzer/a;->j:Z

    .line 75
    .line 76
    iput-boolean v1, p1, Landroidx/constraintlayout/core/widgets/analyzer/f;->g:Z

    .line 77
    .line 78
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/analyzer/e;->d()V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0}, Lv/g;->buildGraph()V

    .line 82
    .line 83
    .line 84
    :cond_1
    iget-object p1, p0, Lv/g;->d:Lu/f;

    .line 85
    .line 86
    invoke-virtual {p0, p1}, Lv/g;->b(Lu/f;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, v1}, Lu/e;->setX(I)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, v1}, Lu/e;->setY(I)V

    .line 93
    .line 94
    .line 95
    iget-object p1, v0, Lu/e;->d:Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 96
    .line 97
    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/analyzer/f;->h:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 98
    .line 99
    invoke-virtual {p1, v1}, Landroidx/constraintlayout/core/widgets/analyzer/a;->resolve(I)V

    .line 100
    .line 101
    .line 102
    iget-object p1, v0, Lu/e;->e:Landroidx/constraintlayout/core/widgets/analyzer/e;

    .line 103
    .line 104
    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/analyzer/f;->h:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 105
    .line 106
    invoke-virtual {p1, v1}, Landroidx/constraintlayout/core/widgets/analyzer/a;->resolve(I)V

    .line 107
    .line 108
    .line 109
    const/4 p1, 0x1

    .line 110
    return p1
.end method

.method public directMeasureWithOrientation(ZI)Z
    .locals 13

    .line 1
    iget-object v0, p0, Lv/g;->a:Lu/f;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lu/e;->getDimensionBehaviour(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    const/4 v3, 0x1

    .line 9
    invoke-virtual {v0, v3}, Lu/e;->getDimensionBehaviour(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 10
    .line 11
    .line 12
    move-result-object v4

    .line 13
    invoke-virtual {v0}, Lu/e;->getX()I

    .line 14
    .line 15
    .line 16
    move-result v5

    .line 17
    invoke-virtual {v0}, Lu/e;->getY()I

    .line 18
    .line 19
    .line 20
    move-result v6

    .line 21
    iget-object v7, p0, Lv/g;->e:Ljava/util/ArrayList;

    .line 22
    .line 23
    sget-object v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 24
    .line 25
    if-eqz p1, :cond_4

    .line 26
    .line 27
    sget-object v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->e:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 28
    .line 29
    if-eq v2, v9, :cond_0

    .line 30
    .line 31
    if-ne v4, v9, :cond_4

    .line 32
    .line 33
    :cond_0
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 34
    .line 35
    .line 36
    move-result-object v10

    .line 37
    :cond_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    .line 39
    .line 40
    move-result v11

    .line 41
    if-eqz v11, :cond_2

    .line 42
    .line 43
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v11

    .line 47
    check-cast v11, Landroidx/constraintlayout/core/widgets/analyzer/f;

    .line 48
    .line 49
    iget v12, v11, Landroidx/constraintlayout/core/widgets/analyzer/f;->f:I

    .line 50
    .line 51
    if-ne v12, p2, :cond_1

    .line 52
    .line 53
    invoke-virtual {v11}, Landroidx/constraintlayout/core/widgets/analyzer/f;->c()Z

    .line 54
    .line 55
    .line 56
    move-result v11

    .line 57
    if-nez v11, :cond_1

    .line 58
    .line 59
    move p1, v1

    .line 60
    :cond_2
    if-nez p2, :cond_3

    .line 61
    .line 62
    if-eqz p1, :cond_4

    .line 63
    .line 64
    if-ne v2, v9, :cond_4

    .line 65
    .line 66
    invoke-virtual {v0, v8}, Lu/e;->setHorizontalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0, v0, v1}, Lv/g;->c(Lu/f;I)I

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    invoke-virtual {v0, p1}, Lu/e;->setWidth(I)V

    .line 74
    .line 75
    .line 76
    iget-object p1, v0, Lu/e;->d:Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 77
    .line 78
    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/analyzer/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    .line 79
    .line 80
    invoke-virtual {v0}, Lu/e;->getWidth()I

    .line 81
    .line 82
    .line 83
    move-result v9

    .line 84
    invoke-virtual {p1, v9}, Landroidx/constraintlayout/core/widgets/analyzer/b;->resolve(I)V

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_3
    if-eqz p1, :cond_4

    .line 89
    .line 90
    if-ne v4, v9, :cond_4

    .line 91
    .line 92
    invoke-virtual {v0, v8}, Lu/e;->setVerticalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0, v0, v3}, Lv/g;->c(Lu/f;I)I

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    invoke-virtual {v0, p1}, Lu/e;->setHeight(I)V

    .line 100
    .line 101
    .line 102
    iget-object p1, v0, Lu/e;->e:Landroidx/constraintlayout/core/widgets/analyzer/e;

    .line 103
    .line 104
    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/analyzer/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    .line 105
    .line 106
    invoke-virtual {v0}, Lu/e;->getHeight()I

    .line 107
    .line 108
    .line 109
    move-result v9

    .line 110
    invoke-virtual {p1, v9}, Landroidx/constraintlayout/core/widgets/analyzer/b;->resolve(I)V

    .line 111
    .line 112
    .line 113
    :cond_4
    :goto_0
    sget-object p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->j:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 114
    .line 115
    if-nez p2, :cond_6

    .line 116
    .line 117
    iget-object v6, v0, Lu/e;->T:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 118
    .line 119
    aget-object v6, v6, v1

    .line 120
    .line 121
    if-eq v6, v8, :cond_5

    .line 122
    .line 123
    if-ne v6, p1, :cond_7

    .line 124
    .line 125
    :cond_5
    invoke-virtual {v0}, Lu/e;->getWidth()I

    .line 126
    .line 127
    .line 128
    move-result p1

    .line 129
    add-int/2addr p1, v5

    .line 130
    iget-object v6, v0, Lu/e;->d:Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 131
    .line 132
    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/analyzer/f;->i:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 133
    .line 134
    invoke-virtual {v6, p1}, Landroidx/constraintlayout/core/widgets/analyzer/a;->resolve(I)V

    .line 135
    .line 136
    .line 137
    iget-object v6, v0, Lu/e;->d:Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 138
    .line 139
    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/analyzer/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    .line 140
    .line 141
    sub-int/2addr p1, v5

    .line 142
    invoke-virtual {v6, p1}, Landroidx/constraintlayout/core/widgets/analyzer/b;->resolve(I)V

    .line 143
    .line 144
    .line 145
    :goto_1
    move p1, v3

    .line 146
    goto :goto_3

    .line 147
    :cond_6
    iget-object v5, v0, Lu/e;->T:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 148
    .line 149
    aget-object v5, v5, v3

    .line 150
    .line 151
    if-eq v5, v8, :cond_8

    .line 152
    .line 153
    if-ne v5, p1, :cond_7

    .line 154
    .line 155
    goto :goto_2

    .line 156
    :cond_7
    move p1, v1

    .line 157
    goto :goto_3

    .line 158
    :cond_8
    :goto_2
    invoke-virtual {v0}, Lu/e;->getHeight()I

    .line 159
    .line 160
    .line 161
    move-result p1

    .line 162
    add-int/2addr p1, v6

    .line 163
    iget-object v5, v0, Lu/e;->e:Landroidx/constraintlayout/core/widgets/analyzer/e;

    .line 164
    .line 165
    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/analyzer/f;->i:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 166
    .line 167
    invoke-virtual {v5, p1}, Landroidx/constraintlayout/core/widgets/analyzer/a;->resolve(I)V

    .line 168
    .line 169
    .line 170
    iget-object v5, v0, Lu/e;->e:Landroidx/constraintlayout/core/widgets/analyzer/e;

    .line 171
    .line 172
    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/analyzer/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    .line 173
    .line 174
    sub-int/2addr p1, v6

    .line 175
    invoke-virtual {v5, p1}, Landroidx/constraintlayout/core/widgets/analyzer/b;->resolve(I)V

    .line 176
    .line 177
    .line 178
    goto :goto_1

    .line 179
    :goto_3
    invoke-virtual {p0}, Lv/g;->measureWidgets()V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 183
    .line 184
    .line 185
    move-result-object v5

    .line 186
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 187
    .line 188
    .line 189
    move-result v6

    .line 190
    if-eqz v6, :cond_b

    .line 191
    .line 192
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v6

    .line 196
    check-cast v6, Landroidx/constraintlayout/core/widgets/analyzer/f;

    .line 197
    .line 198
    iget v8, v6, Landroidx/constraintlayout/core/widgets/analyzer/f;->f:I

    .line 199
    .line 200
    if-eq v8, p2, :cond_9

    .line 201
    .line 202
    goto :goto_4

    .line 203
    :cond_9
    iget-object v8, v6, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 204
    .line 205
    if-ne v8, v0, :cond_a

    .line 206
    .line 207
    iget-boolean v8, v6, Landroidx/constraintlayout/core/widgets/analyzer/f;->g:Z

    .line 208
    .line 209
    if-nez v8, :cond_a

    .line 210
    .line 211
    goto :goto_4

    .line 212
    :cond_a
    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/analyzer/f;->applyToWidget()V

    .line 213
    .line 214
    .line 215
    goto :goto_4

    .line 216
    :cond_b
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 217
    .line 218
    .line 219
    move-result-object v5

    .line 220
    :cond_c
    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 221
    .line 222
    .line 223
    move-result v6

    .line 224
    if-eqz v6, :cond_11

    .line 225
    .line 226
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    move-result-object v6

    .line 230
    check-cast v6, Landroidx/constraintlayout/core/widgets/analyzer/f;

    .line 231
    .line 232
    iget v7, v6, Landroidx/constraintlayout/core/widgets/analyzer/f;->f:I

    .line 233
    .line 234
    if-eq v7, p2, :cond_d

    .line 235
    .line 236
    goto :goto_5

    .line 237
    :cond_d
    if-nez p1, :cond_e

    .line 238
    .line 239
    iget-object v7, v6, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 240
    .line 241
    if-ne v7, v0, :cond_e

    .line 242
    .line 243
    goto :goto_5

    .line 244
    :cond_e
    iget-object v7, v6, Landroidx/constraintlayout/core/widgets/analyzer/f;->h:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 245
    .line 246
    iget-boolean v7, v7, Landroidx/constraintlayout/core/widgets/analyzer/a;->j:Z

    .line 247
    .line 248
    if-nez v7, :cond_f

    .line 249
    .line 250
    goto :goto_6

    .line 251
    :cond_f
    iget-object v7, v6, Landroidx/constraintlayout/core/widgets/analyzer/f;->i:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 252
    .line 253
    iget-boolean v7, v7, Landroidx/constraintlayout/core/widgets/analyzer/a;->j:Z

    .line 254
    .line 255
    if-nez v7, :cond_10

    .line 256
    .line 257
    goto :goto_6

    .line 258
    :cond_10
    instance-of v7, v6, Lv/e;

    .line 259
    .line 260
    if-nez v7, :cond_c

    .line 261
    .line 262
    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/analyzer/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    .line 263
    .line 264
    iget-boolean v6, v6, Landroidx/constraintlayout/core/widgets/analyzer/a;->j:Z

    .line 265
    .line 266
    if-nez v6, :cond_c

    .line 267
    .line 268
    goto :goto_6

    .line 269
    :cond_11
    move v1, v3

    .line 270
    :goto_6
    invoke-virtual {v0, v2}, Lu/e;->setHorizontalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 271
    .line 272
    .line 273
    invoke-virtual {v0, v4}, Lu/e;->setVerticalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 274
    .line 275
    .line 276
    return v1
.end method

.method public final e(Lu/e;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lv/g;->g:Lv/b;

    .line 2
    .line 3
    iput-object p2, v0, Lv/b;->a:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 4
    .line 5
    iput-object p4, v0, Lv/b;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 6
    .line 7
    iput p3, v0, Lv/b;->c:I

    .line 8
    .line 9
    iput p5, v0, Lv/b;->d:I

    .line 10
    .line 11
    iget-object p2, p0, Lv/g;->f:Lv/c;

    .line 12
    .line 13
    check-cast p2, Lx/a;

    .line 14
    .line 15
    invoke-virtual {p2, p1, v0}, Lx/a;->measure(Lu/e;Lv/b;)V

    .line 16
    .line 17
    .line 18
    iget p2, v0, Lv/b;->e:I

    .line 19
    .line 20
    invoke-virtual {p1, p2}, Lu/e;->setWidth(I)V

    .line 21
    .line 22
    .line 23
    iget p2, v0, Lv/b;->f:I

    .line 24
    .line 25
    invoke-virtual {p1, p2}, Lu/e;->setHeight(I)V

    .line 26
    .line 27
    .line 28
    iget-boolean p2, v0, Lv/b;->h:Z

    .line 29
    .line 30
    invoke-virtual {p1, p2}, Lu/e;->setHasBaseline(Z)V

    .line 31
    .line 32
    .line 33
    iget p2, v0, Lv/b;->g:I

    .line 34
    .line 35
    invoke-virtual {p1, p2}, Lu/e;->setBaselineDistance(I)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public invalidateGraph()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lv/g;->b:Z

    .line 3
    .line 4
    return-void
.end method

.method public invalidateMeasures()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lv/g;->c:Z

    .line 3
    .line 4
    return-void
.end method

.method public measureWidgets()V
    .locals 15

    .line 1
    iget-object v0, p0, Lv/g;->a:Lu/f;

    .line 2
    .line 3
    iget-object v0, v0, Lu/n;->q0:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_b

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    move-object v3, v1

    .line 20
    check-cast v3, Lu/e;

    .line 21
    .line 22
    iget-boolean v1, v3, Lu/e;->a:Z

    .line 23
    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    iget-object v1, v3, Lu/e;->T:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    aget-object v8, v1, v2

    .line 31
    .line 32
    const/4 v9, 0x1

    .line 33
    aget-object v1, v1, v9

    .line 34
    .line 35
    iget v4, v3, Lu/e;->r:I

    .line 36
    .line 37
    iget v5, v3, Lu/e;->s:I

    .line 38
    .line 39
    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->e:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 40
    .line 41
    sget-object v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->f:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 42
    .line 43
    if-eq v8, v6, :cond_3

    .line 44
    .line 45
    if-ne v8, v10, :cond_2

    .line 46
    .line 47
    if-ne v4, v9, :cond_2

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_2
    move v4, v2

    .line 51
    goto :goto_2

    .line 52
    :cond_3
    :goto_1
    move v4, v9

    .line 53
    :goto_2
    if-eq v1, v6, :cond_4

    .line 54
    .line 55
    if-ne v1, v10, :cond_5

    .line 56
    .line 57
    if-ne v5, v9, :cond_5

    .line 58
    .line 59
    :cond_4
    move v2, v9

    .line 60
    :cond_5
    iget-object v5, v3, Lu/e;->d:Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 61
    .line 62
    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/analyzer/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    .line 63
    .line 64
    iget-boolean v7, v5, Landroidx/constraintlayout/core/widgets/analyzer/a;->j:Z

    .line 65
    .line 66
    iget-object v11, v3, Lu/e;->e:Landroidx/constraintlayout/core/widgets/analyzer/e;

    .line 67
    .line 68
    iget-object v11, v11, Landroidx/constraintlayout/core/widgets/analyzer/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    .line 69
    .line 70
    iget-boolean v12, v11, Landroidx/constraintlayout/core/widgets/analyzer/a;->j:Z

    .line 71
    .line 72
    move v13, v4

    .line 73
    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 74
    .line 75
    if-eqz v7, :cond_6

    .line 76
    .line 77
    if-eqz v12, :cond_6

    .line 78
    .line 79
    iget v5, v5, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    .line 80
    .line 81
    iget v7, v11, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    .line 82
    .line 83
    move-object v6, v4

    .line 84
    move-object v2, p0

    .line 85
    invoke-virtual/range {v2 .. v7}, Lv/g;->e(Lu/e;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 86
    .line 87
    .line 88
    iput-boolean v9, v3, Lu/e;->a:Z

    .line 89
    .line 90
    goto :goto_3

    .line 91
    :cond_6
    if-eqz v7, :cond_8

    .line 92
    .line 93
    if-eqz v2, :cond_8

    .line 94
    .line 95
    iget v5, v5, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    .line 96
    .line 97
    iget v7, v11, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    .line 98
    .line 99
    move-object v2, p0

    .line 100
    invoke-virtual/range {v2 .. v7}, Lv/g;->e(Lu/e;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 101
    .line 102
    .line 103
    if-ne v1, v10, :cond_7

    .line 104
    .line 105
    iget-object v1, v3, Lu/e;->e:Landroidx/constraintlayout/core/widgets/analyzer/e;

    .line 106
    .line 107
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    .line 108
    .line 109
    invoke-virtual {v3}, Lu/e;->getHeight()I

    .line 110
    .line 111
    .line 112
    move-result v2

    .line 113
    iput v2, v1, Landroidx/constraintlayout/core/widgets/analyzer/b;->m:I

    .line 114
    .line 115
    goto :goto_3

    .line 116
    :cond_7
    iget-object v1, v3, Lu/e;->e:Landroidx/constraintlayout/core/widgets/analyzer/e;

    .line 117
    .line 118
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    .line 119
    .line 120
    invoke-virtual {v3}, Lu/e;->getHeight()I

    .line 121
    .line 122
    .line 123
    move-result v2

    .line 124
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/widgets/analyzer/b;->resolve(I)V

    .line 125
    .line 126
    .line 127
    iput-boolean v9, v3, Lu/e;->a:Z

    .line 128
    .line 129
    goto :goto_3

    .line 130
    :cond_8
    move-object v14, v6

    .line 131
    move-object v6, v4

    .line 132
    move-object v4, v14

    .line 133
    if-eqz v12, :cond_a

    .line 134
    .line 135
    if-eqz v13, :cond_a

    .line 136
    .line 137
    iget v5, v5, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    .line 138
    .line 139
    iget v7, v11, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    .line 140
    .line 141
    move-object v2, p0

    .line 142
    invoke-virtual/range {v2 .. v7}, Lv/g;->e(Lu/e;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 143
    .line 144
    .line 145
    if-ne v8, v10, :cond_9

    .line 146
    .line 147
    iget-object v1, v3, Lu/e;->d:Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 148
    .line 149
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    .line 150
    .line 151
    invoke-virtual {v3}, Lu/e;->getWidth()I

    .line 152
    .line 153
    .line 154
    move-result v2

    .line 155
    iput v2, v1, Landroidx/constraintlayout/core/widgets/analyzer/b;->m:I

    .line 156
    .line 157
    goto :goto_3

    .line 158
    :cond_9
    iget-object v1, v3, Lu/e;->d:Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 159
    .line 160
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    .line 161
    .line 162
    invoke-virtual {v3}, Lu/e;->getWidth()I

    .line 163
    .line 164
    .line 165
    move-result v2

    .line 166
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/widgets/analyzer/b;->resolve(I)V

    .line 167
    .line 168
    .line 169
    iput-boolean v9, v3, Lu/e;->a:Z

    .line 170
    .line 171
    :cond_a
    :goto_3
    iget-boolean v1, v3, Lu/e;->a:Z

    .line 172
    .line 173
    if-eqz v1, :cond_0

    .line 174
    .line 175
    iget-object v1, v3, Lu/e;->e:Landroidx/constraintlayout/core/widgets/analyzer/e;

    .line 176
    .line 177
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/e;->l:Lv/a;

    .line 178
    .line 179
    if-eqz v1, :cond_0

    .line 180
    .line 181
    invoke-virtual {v3}, Lu/e;->getBaselineDistance()I

    .line 182
    .line 183
    .line 184
    move-result v2

    .line 185
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/widgets/analyzer/b;->resolve(I)V

    .line 186
    .line 187
    .line 188
    goto/16 :goto_0

    .line 189
    .line 190
    :cond_b
    return-void
.end method

.method public setMeasurer(Lv/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lv/g;->f:Lv/c;

    .line 2
    .line 3
    return-void
.end method
