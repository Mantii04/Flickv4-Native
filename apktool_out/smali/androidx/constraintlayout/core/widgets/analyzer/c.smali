.class public final Landroidx/constraintlayout/core/widgets/analyzer/c;
.super Landroidx/constraintlayout/core/widgets/analyzer/f;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lu/e;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/constraintlayout/core/widgets/analyzer/f;-><init>(Lu/e;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 2
    .line 3
    instance-of v1, v0, Lu/a;

    .line 4
    .line 5
    if-eqz v1, :cond_c

    .line 6
    .line 7
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->h:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    iput-boolean v2, v1, Landroidx/constraintlayout/core/widgets/analyzer/a;->b:Z

    .line 11
    .line 12
    check-cast v0, Lu/a;

    .line 13
    .line 14
    invoke-virtual {v0}, Lu/a;->getBarrierType()I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    invoke-virtual {v0}, Lu/a;->getAllowsGoneWidget()Z

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    const/16 v5, 0x8

    .line 23
    .line 24
    const/4 v6, 0x0

    .line 25
    if-eqz v3, :cond_9

    .line 26
    .line 27
    if-eq v3, v2, :cond_6

    .line 28
    .line 29
    const/4 v2, 0x2

    .line 30
    if-eq v3, v2, :cond_3

    .line 31
    .line 32
    const/4 v2, 0x3

    .line 33
    if-eq v3, v2, :cond_0

    .line 34
    .line 35
    goto/16 :goto_8

    .line 36
    .line 37
    :cond_0
    sget-object v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;->p:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;

    .line 38
    .line 39
    iput-object v2, v1, Landroidx/constraintlayout/core/widgets/analyzer/a;->e:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;

    .line 40
    .line 41
    :goto_0
    iget v2, v0, Lu/k;->r0:I

    .line 42
    .line 43
    if-ge v6, v2, :cond_2

    .line 44
    .line 45
    iget-object v2, v0, Lu/k;->q0:[Lu/e;

    .line 46
    .line 47
    aget-object v2, v2, v6

    .line 48
    .line 49
    if-nez v4, :cond_1

    .line 50
    .line 51
    invoke-virtual {v2}, Lu/e;->getVisibility()I

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    if-ne v3, v5, :cond_1

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_1
    iget-object v2, v2, Lu/e;->e:Landroidx/constraintlayout/core/widgets/analyzer/e;

    .line 59
    .line 60
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/f;->i:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 61
    .line 62
    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/analyzer/a;->k:Ljava/util/ArrayList;

    .line 63
    .line 64
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    iget-object v3, v1, Landroidx/constraintlayout/core/widgets/analyzer/a;->l:Ljava/util/ArrayList;

    .line 68
    .line 69
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    :goto_1
    add-int/lit8 v6, v6, 0x1

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_2
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 76
    .line 77
    iget-object v0, v0, Lu/e;->e:Landroidx/constraintlayout/core/widgets/analyzer/e;

    .line 78
    .line 79
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->h:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 80
    .line 81
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/widgets/analyzer/c;->d(Landroidx/constraintlayout/core/widgets/analyzer/a;)V

    .line 82
    .line 83
    .line 84
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 85
    .line 86
    iget-object v0, v0, Lu/e;->e:Landroidx/constraintlayout/core/widgets/analyzer/e;

    .line 87
    .line 88
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->i:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 89
    .line 90
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/widgets/analyzer/c;->d(Landroidx/constraintlayout/core/widgets/analyzer/a;)V

    .line 91
    .line 92
    .line 93
    return-void

    .line 94
    :cond_3
    sget-object v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;->n:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;

    .line 95
    .line 96
    iput-object v2, v1, Landroidx/constraintlayout/core/widgets/analyzer/a;->e:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;

    .line 97
    .line 98
    :goto_2
    iget v2, v0, Lu/k;->r0:I

    .line 99
    .line 100
    if-ge v6, v2, :cond_5

    .line 101
    .line 102
    iget-object v2, v0, Lu/k;->q0:[Lu/e;

    .line 103
    .line 104
    aget-object v2, v2, v6

    .line 105
    .line 106
    if-nez v4, :cond_4

    .line 107
    .line 108
    invoke-virtual {v2}, Lu/e;->getVisibility()I

    .line 109
    .line 110
    .line 111
    move-result v3

    .line 112
    if-ne v3, v5, :cond_4

    .line 113
    .line 114
    goto :goto_3

    .line 115
    :cond_4
    iget-object v2, v2, Lu/e;->e:Landroidx/constraintlayout/core/widgets/analyzer/e;

    .line 116
    .line 117
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/f;->h:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 118
    .line 119
    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/analyzer/a;->k:Ljava/util/ArrayList;

    .line 120
    .line 121
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    iget-object v3, v1, Landroidx/constraintlayout/core/widgets/analyzer/a;->l:Ljava/util/ArrayList;

    .line 125
    .line 126
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    :goto_3
    add-int/lit8 v6, v6, 0x1

    .line 130
    .line 131
    goto :goto_2

    .line 132
    :cond_5
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 133
    .line 134
    iget-object v0, v0, Lu/e;->e:Landroidx/constraintlayout/core/widgets/analyzer/e;

    .line 135
    .line 136
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->h:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 137
    .line 138
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/widgets/analyzer/c;->d(Landroidx/constraintlayout/core/widgets/analyzer/a;)V

    .line 139
    .line 140
    .line 141
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 142
    .line 143
    iget-object v0, v0, Lu/e;->e:Landroidx/constraintlayout/core/widgets/analyzer/e;

    .line 144
    .line 145
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->i:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 146
    .line 147
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/widgets/analyzer/c;->d(Landroidx/constraintlayout/core/widgets/analyzer/a;)V

    .line 148
    .line 149
    .line 150
    return-void

    .line 151
    :cond_6
    sget-object v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;->m:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;

    .line 152
    .line 153
    iput-object v2, v1, Landroidx/constraintlayout/core/widgets/analyzer/a;->e:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;

    .line 154
    .line 155
    :goto_4
    iget v2, v0, Lu/k;->r0:I

    .line 156
    .line 157
    if-ge v6, v2, :cond_8

    .line 158
    .line 159
    iget-object v2, v0, Lu/k;->q0:[Lu/e;

    .line 160
    .line 161
    aget-object v2, v2, v6

    .line 162
    .line 163
    if-nez v4, :cond_7

    .line 164
    .line 165
    invoke-virtual {v2}, Lu/e;->getVisibility()I

    .line 166
    .line 167
    .line 168
    move-result v3

    .line 169
    if-ne v3, v5, :cond_7

    .line 170
    .line 171
    goto :goto_5

    .line 172
    :cond_7
    iget-object v2, v2, Lu/e;->d:Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 173
    .line 174
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/f;->i:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 175
    .line 176
    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/analyzer/a;->k:Ljava/util/ArrayList;

    .line 177
    .line 178
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    iget-object v3, v1, Landroidx/constraintlayout/core/widgets/analyzer/a;->l:Ljava/util/ArrayList;

    .line 182
    .line 183
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    :goto_5
    add-int/lit8 v6, v6, 0x1

    .line 187
    .line 188
    goto :goto_4

    .line 189
    :cond_8
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 190
    .line 191
    iget-object v0, v0, Lu/e;->d:Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 192
    .line 193
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->h:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 194
    .line 195
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/widgets/analyzer/c;->d(Landroidx/constraintlayout/core/widgets/analyzer/a;)V

    .line 196
    .line 197
    .line 198
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 199
    .line 200
    iget-object v0, v0, Lu/e;->d:Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 201
    .line 202
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->i:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 203
    .line 204
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/widgets/analyzer/c;->d(Landroidx/constraintlayout/core/widgets/analyzer/a;)V

    .line 205
    .line 206
    .line 207
    return-void

    .line 208
    :cond_9
    sget-object v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;->j:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;

    .line 209
    .line 210
    iput-object v2, v1, Landroidx/constraintlayout/core/widgets/analyzer/a;->e:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;

    .line 211
    .line 212
    :goto_6
    iget v2, v0, Lu/k;->r0:I

    .line 213
    .line 214
    if-ge v6, v2, :cond_b

    .line 215
    .line 216
    iget-object v2, v0, Lu/k;->q0:[Lu/e;

    .line 217
    .line 218
    aget-object v2, v2, v6

    .line 219
    .line 220
    if-nez v4, :cond_a

    .line 221
    .line 222
    invoke-virtual {v2}, Lu/e;->getVisibility()I

    .line 223
    .line 224
    .line 225
    move-result v3

    .line 226
    if-ne v3, v5, :cond_a

    .line 227
    .line 228
    goto :goto_7

    .line 229
    :cond_a
    iget-object v2, v2, Lu/e;->d:Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 230
    .line 231
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/f;->h:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 232
    .line 233
    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/analyzer/a;->k:Ljava/util/ArrayList;

    .line 234
    .line 235
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    .line 237
    .line 238
    iget-object v3, v1, Landroidx/constraintlayout/core/widgets/analyzer/a;->l:Ljava/util/ArrayList;

    .line 239
    .line 240
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    .line 242
    .line 243
    :goto_7
    add-int/lit8 v6, v6, 0x1

    .line 244
    .line 245
    goto :goto_6

    .line 246
    :cond_b
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 247
    .line 248
    iget-object v0, v0, Lu/e;->d:Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 249
    .line 250
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->h:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 251
    .line 252
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/widgets/analyzer/c;->d(Landroidx/constraintlayout/core/widgets/analyzer/a;)V

    .line 253
    .line 254
    .line 255
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 256
    .line 257
    iget-object v0, v0, Lu/e;->d:Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 258
    .line 259
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->i:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 260
    .line 261
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/widgets/analyzer/c;->d(Landroidx/constraintlayout/core/widgets/analyzer/a;)V

    .line 262
    .line 263
    .line 264
    :cond_c
    :goto_8
    return-void
.end method

.method public applyToWidget()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 2
    .line 3
    instance-of v1, v0, Lu/a;

    .line 4
    .line 5
    if-eqz v1, :cond_2

    .line 6
    .line 7
    check-cast v0, Lu/a;

    .line 8
    .line 9
    invoke-virtual {v0}, Lu/a;->getBarrierType()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->h:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    if-ne v0, v2, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 22
    .line 23
    iget v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Lu/e;->setY(I)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 30
    .line 31
    iget v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lu/e;->setX(I)V

    .line 34
    .line 35
    .line 36
    :cond_2
    return-void
.end method

.method public final b()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->c:Lv/k;

    .line 3
    .line 4
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->h:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/analyzer/a;->clear()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final c()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public final d(Landroidx/constraintlayout/core/widgets/analyzer/a;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->h:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/a;->k:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/analyzer/a;->l:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public update(Lv/f;)V
    .locals 7

    .line 1
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 2
    .line 3
    check-cast p1, Lu/a;

    .line 4
    .line 5
    invoke-virtual {p1}, Lu/a;->getBarrierType()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->h:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 10
    .line 11
    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/analyzer/a;->l:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    const/4 v3, -0x1

    .line 18
    const/4 v4, 0x0

    .line 19
    move v5, v3

    .line 20
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v6

    .line 24
    if-eqz v6, :cond_3

    .line 25
    .line 26
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v6

    .line 30
    check-cast v6, Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 31
    .line 32
    iget v6, v6, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    .line 33
    .line 34
    if-eq v5, v3, :cond_1

    .line 35
    .line 36
    if-ge v6, v5, :cond_2

    .line 37
    .line 38
    :cond_1
    move v5, v6

    .line 39
    :cond_2
    if-ge v4, v6, :cond_0

    .line 40
    .line 41
    move v4, v6

    .line 42
    goto :goto_0

    .line 43
    :cond_3
    if-eqz v0, :cond_5

    .line 44
    .line 45
    const/4 v2, 0x2

    .line 46
    if-ne v0, v2, :cond_4

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_4
    invoke-virtual {p1}, Lu/a;->getMargin()I

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    add-int/2addr p1, v4

    .line 54
    invoke-virtual {v1, p1}, Landroidx/constraintlayout/core/widgets/analyzer/a;->resolve(I)V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :cond_5
    :goto_1
    invoke-virtual {p1}, Lu/a;->getMargin()I

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    add-int/2addr p1, v5

    .line 63
    invoke-virtual {v1, p1}, Landroidx/constraintlayout/core/widgets/analyzer/a;->resolve(I)V

    .line 64
    .line 65
    .line 66
    return-void
.end method
