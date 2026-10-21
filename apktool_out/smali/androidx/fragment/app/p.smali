.class public final Landroidx/fragment/app/p;
.super Landroidx/fragment/app/q;
.source "SourceFile"


# instance fields
.field public c:Z

.field public d:Z

.field public e:Landroidx/fragment/app/I;


# virtual methods
.method public final c(Landroid/content/Context;)Landroidx/fragment/app/I;
    .locals 8

    .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/p;->d:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Landroidx/fragment/app/p;->e:Landroidx/fragment/app/I;

    .line 6
    .line 7
    return-object p1

    .line 8
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/q;->a:Landroidx/fragment/app/L0;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroidx/fragment/app/L0;->getFragment()Landroidx/fragment/app/C;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0}, Landroidx/fragment/app/L0;->getFinalState()Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    sget-object v2, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->e:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    const/4 v4, 0x1

    .line 22
    if-ne v0, v2, :cond_1

    .line 23
    .line 24
    move v0, v4

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    move v0, v3

    .line 27
    :goto_0
    iget-object v2, v1, Landroidx/fragment/app/C;->T:Landroidx/fragment/app/B;

    .line 28
    .line 29
    if-nez v2, :cond_2

    .line 30
    .line 31
    move v5, v3

    .line 32
    goto :goto_1

    .line 33
    :cond_2
    iget v5, v2, Landroidx/fragment/app/B;->f:I

    .line 34
    .line 35
    :goto_1
    iget-boolean v6, p0, Landroidx/fragment/app/p;->c:Z

    .line 36
    .line 37
    if-eqz v6, :cond_6

    .line 38
    .line 39
    if-eqz v0, :cond_4

    .line 40
    .line 41
    if-nez v2, :cond_3

    .line 42
    .line 43
    :goto_2
    move v2, v3

    .line 44
    goto :goto_3

    .line 45
    :cond_3
    iget v2, v2, Landroidx/fragment/app/B;->d:I

    .line 46
    .line 47
    goto :goto_3

    .line 48
    :cond_4
    if-nez v2, :cond_5

    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_5
    iget v2, v2, Landroidx/fragment/app/B;->e:I

    .line 52
    .line 53
    goto :goto_3

    .line 54
    :cond_6
    if-eqz v0, :cond_8

    .line 55
    .line 56
    if-nez v2, :cond_7

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_7
    iget v2, v2, Landroidx/fragment/app/B;->b:I

    .line 60
    .line 61
    goto :goto_3

    .line 62
    :cond_8
    if-nez v2, :cond_9

    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_9
    iget v2, v2, Landroidx/fragment/app/B;->c:I

    .line 66
    .line 67
    :goto_3
    invoke-virtual {v1, v3, v3, v3, v3}, Landroidx/fragment/app/C;->h(IIII)V

    .line 68
    .line 69
    .line 70
    iget-object v3, v1, Landroidx/fragment/app/C;->P:Landroid/view/ViewGroup;

    .line 71
    .line 72
    const/4 v6, 0x0

    .line 73
    if-eqz v3, :cond_a

    .line 74
    .line 75
    sget v7, Landroidx/fragment/R$id;->visible_removing_fragment_view_tag:I

    .line 76
    .line 77
    invoke-virtual {v3, v7}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    if-eqz v3, :cond_a

    .line 82
    .line 83
    iget-object v3, v1, Landroidx/fragment/app/C;->P:Landroid/view/ViewGroup;

    .line 84
    .line 85
    sget v7, Landroidx/fragment/R$id;->visible_removing_fragment_view_tag:I

    .line 86
    .line 87
    invoke-virtual {v3, v7, v6}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    :cond_a
    iget-object v3, v1, Landroidx/fragment/app/C;->P:Landroid/view/ViewGroup;

    .line 91
    .line 92
    if-eqz v3, :cond_b

    .line 93
    .line 94
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    if-eqz v3, :cond_b

    .line 99
    .line 100
    goto/16 :goto_7

    .line 101
    .line 102
    :cond_b
    invoke-virtual {v1, v5, v0, v2}, Landroidx/fragment/app/C;->onCreateAnimation(IZI)Landroid/view/animation/Animation;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    if-eqz v3, :cond_c

    .line 107
    .line 108
    new-instance v6, Landroidx/fragment/app/I;

    .line 109
    .line 110
    invoke-direct {v6, v3}, Landroidx/fragment/app/I;-><init>(Landroid/view/animation/Animation;)V

    .line 111
    .line 112
    .line 113
    goto/16 :goto_7

    .line 114
    .line 115
    :cond_c
    invoke-virtual {v1, v5, v0, v2}, Landroidx/fragment/app/C;->onCreateAnimator(IZI)Landroid/animation/Animator;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    if-eqz v1, :cond_d

    .line 120
    .line 121
    new-instance v6, Landroidx/fragment/app/I;

    .line 122
    .line 123
    invoke-direct {v6, v1}, Landroidx/fragment/app/I;-><init>(Landroid/animation/Animator;)V

    .line 124
    .line 125
    .line 126
    goto/16 :goto_7

    .line 127
    .line 128
    :cond_d
    if-nez v2, :cond_18

    .line 129
    .line 130
    if-eqz v5, :cond_18

    .line 131
    .line 132
    const/16 v1, 0x1001

    .line 133
    .line 134
    if-eq v5, v1, :cond_16

    .line 135
    .line 136
    const/16 v1, 0x2002

    .line 137
    .line 138
    if-eq v5, v1, :cond_14

    .line 139
    .line 140
    const/16 v1, 0x2005

    .line 141
    .line 142
    if-eq v5, v1, :cond_12

    .line 143
    .line 144
    const/16 v1, 0x1003

    .line 145
    .line 146
    if-eq v5, v1, :cond_10

    .line 147
    .line 148
    const/16 v1, 0x1004

    .line 149
    .line 150
    if-eq v5, v1, :cond_e

    .line 151
    .line 152
    const/4 v0, -0x1

    .line 153
    :goto_4
    move v2, v0

    .line 154
    goto :goto_5

    .line 155
    :cond_e
    if-eqz v0, :cond_f

    .line 156
    .line 157
    const v0, 0x10100b8

    .line 158
    .line 159
    .line 160
    invoke-static {p1, v0}, Landroidx/fragment/app/K;->a(Landroid/content/Context;I)I

    .line 161
    .line 162
    .line 163
    move-result v0

    .line 164
    goto :goto_4

    .line 165
    :cond_f
    const v0, 0x10100b9

    .line 166
    .line 167
    .line 168
    invoke-static {p1, v0}, Landroidx/fragment/app/K;->a(Landroid/content/Context;I)I

    .line 169
    .line 170
    .line 171
    move-result v0

    .line 172
    goto :goto_4

    .line 173
    :cond_10
    if-eqz v0, :cond_11

    .line 174
    .line 175
    sget v0, Landroidx/fragment/R$animator;->fragment_fade_enter:I

    .line 176
    .line 177
    goto :goto_4

    .line 178
    :cond_11
    sget v0, Landroidx/fragment/R$animator;->fragment_fade_exit:I

    .line 179
    .line 180
    goto :goto_4

    .line 181
    :cond_12
    if-eqz v0, :cond_13

    .line 182
    .line 183
    const v0, 0x10100ba

    .line 184
    .line 185
    .line 186
    invoke-static {p1, v0}, Landroidx/fragment/app/K;->a(Landroid/content/Context;I)I

    .line 187
    .line 188
    .line 189
    move-result v0

    .line 190
    goto :goto_4

    .line 191
    :cond_13
    const v0, 0x10100bb

    .line 192
    .line 193
    .line 194
    invoke-static {p1, v0}, Landroidx/fragment/app/K;->a(Landroid/content/Context;I)I

    .line 195
    .line 196
    .line 197
    move-result v0

    .line 198
    goto :goto_4

    .line 199
    :cond_14
    if-eqz v0, :cond_15

    .line 200
    .line 201
    sget v0, Landroidx/fragment/R$animator;->fragment_close_enter:I

    .line 202
    .line 203
    goto :goto_4

    .line 204
    :cond_15
    sget v0, Landroidx/fragment/R$animator;->fragment_close_exit:I

    .line 205
    .line 206
    goto :goto_4

    .line 207
    :cond_16
    if-eqz v0, :cond_17

    .line 208
    .line 209
    sget v0, Landroidx/fragment/R$animator;->fragment_open_enter:I

    .line 210
    .line 211
    goto :goto_4

    .line 212
    :cond_17
    sget v0, Landroidx/fragment/R$animator;->fragment_open_exit:I

    .line 213
    .line 214
    goto :goto_4

    .line 215
    :cond_18
    :goto_5
    if-eqz v2, :cond_1b

    .line 216
    .line 217
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    const-string v1, "anim"

    .line 226
    .line 227
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 228
    .line 229
    .line 230
    move-result v0

    .line 231
    if-eqz v0, :cond_19

    .line 232
    .line 233
    :try_start_0
    invoke-static {p1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 234
    .line 235
    .line 236
    move-result-object v1

    .line 237
    if-eqz v1, :cond_1b

    .line 238
    .line 239
    new-instance v3, Landroidx/fragment/app/I;

    .line 240
    .line 241
    invoke-direct {v3, v1}, Landroidx/fragment/app/I;-><init>(Landroid/view/animation/Animation;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 242
    .line 243
    .line 244
    :goto_6
    move-object v6, v3

    .line 245
    goto :goto_7

    .line 246
    :catch_0
    move-exception p1

    .line 247
    throw p1

    .line 248
    :catch_1
    :cond_19
    :try_start_1
    invoke-static {p1, v2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    .line 249
    .line 250
    .line 251
    move-result-object v1

    .line 252
    if-eqz v1, :cond_1b

    .line 253
    .line 254
    new-instance v3, Landroidx/fragment/app/I;

    .line 255
    .line 256
    invoke-direct {v3, v1}, Landroidx/fragment/app/I;-><init>(Landroid/animation/Animator;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    .line 257
    .line 258
    .line 259
    goto :goto_6

    .line 260
    :catch_2
    move-exception v1

    .line 261
    if-nez v0, :cond_1a

    .line 262
    .line 263
    invoke-static {p1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 264
    .line 265
    .line 266
    move-result-object p1

    .line 267
    if-eqz p1, :cond_1b

    .line 268
    .line 269
    new-instance v6, Landroidx/fragment/app/I;

    .line 270
    .line 271
    invoke-direct {v6, p1}, Landroidx/fragment/app/I;-><init>(Landroid/view/animation/Animation;)V

    .line 272
    .line 273
    .line 274
    goto :goto_7

    .line 275
    :cond_1a
    throw v1

    .line 276
    :cond_1b
    :goto_7
    iput-object v6, p0, Landroidx/fragment/app/p;->e:Landroidx/fragment/app/I;

    .line 277
    .line 278
    iput-boolean v4, p0, Landroidx/fragment/app/p;->d:Z

    .line 279
    .line 280
    return-object v6
.end method
