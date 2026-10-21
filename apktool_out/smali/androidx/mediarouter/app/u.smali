.class public final Landroidx/mediarouter/app/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic b:Ljava/util/HashMap;

.field public final synthetic e:Ljava/util/HashMap;

.field public final synthetic f:Landroidx/mediarouter/app/D;


# direct methods
.method public constructor <init>(Landroidx/mediarouter/app/D;Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/mediarouter/app/u;->f:Landroidx/mediarouter/app/D;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/mediarouter/app/u;->b:Ljava/util/HashMap;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/mediarouter/app/u;->e:Ljava/util/HashMap;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/mediarouter/app/u;->f:Landroidx/mediarouter/app/D;

    .line 4
    .line 5
    iget-object v2, v1, Landroidx/mediarouter/app/D;->P:Landroidx/mediarouter/app/OverlayListView;

    .line 6
    .line 7
    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v2, v0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 12
    .line 13
    .line 14
    iget-object v2, v1, Landroidx/mediarouter/app/D;->S:Ljava/util/Set;

    .line 15
    .line 16
    if-eqz v2, :cond_6

    .line 17
    .line 18
    iget-object v3, v1, Landroidx/mediarouter/app/D;->T:Ljava/util/Set;

    .line 19
    .line 20
    if-nez v3, :cond_0

    .line 21
    .line 22
    goto/16 :goto_5

    .line 23
    .line 24
    :cond_0
    invoke-interface {v2}, Ljava/util/Set;->size()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    iget-object v3, v1, Landroidx/mediarouter/app/D;->T:Ljava/util/Set;

    .line 29
    .line 30
    invoke-interface {v3}, Ljava/util/Set;->size()I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    sub-int/2addr v2, v3

    .line 35
    new-instance v3, Landroidx/mediarouter/app/v;

    .line 36
    .line 37
    invoke-direct {v3, v1}, Landroidx/mediarouter/app/v;-><init>(Landroidx/mediarouter/app/D;)V

    .line 38
    .line 39
    .line 40
    iget-object v4, v1, Landroidx/mediarouter/app/D;->P:Landroidx/mediarouter/app/OverlayListView;

    .line 41
    .line 42
    invoke-virtual {v4}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    const/4 v5, 0x0

    .line 47
    move v6, v5

    .line 48
    :goto_0
    iget-object v7, v1, Landroidx/mediarouter/app/D;->P:Landroidx/mediarouter/app/OverlayListView;

    .line 49
    .line 50
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    .line 51
    .line 52
    .line 53
    move-result v7

    .line 54
    iget-object v8, v0, Landroidx/mediarouter/app/u;->b:Ljava/util/HashMap;

    .line 55
    .line 56
    iget-object v9, v0, Landroidx/mediarouter/app/u;->e:Ljava/util/HashMap;

    .line 57
    .line 58
    const/4 v10, 0x0

    .line 59
    if-ge v5, v7, :cond_4

    .line 60
    .line 61
    iget-object v7, v1, Landroidx/mediarouter/app/D;->P:Landroidx/mediarouter/app/OverlayListView;

    .line 62
    .line 63
    invoke-virtual {v7, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 64
    .line 65
    .line 66
    move-result-object v7

    .line 67
    add-int v11, v4, v5

    .line 68
    .line 69
    iget-object v12, v1, Landroidx/mediarouter/app/D;->Q:Landroidx/mediarouter/app/C;

    .line 70
    .line 71
    invoke-virtual {v12, v11}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v11

    .line 75
    check-cast v11, Lf1/U;

    .line 76
    .line 77
    invoke-interface {v8, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v12

    .line 81
    check-cast v12, Landroid/graphics/Rect;

    .line 82
    .line 83
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    .line 84
    .line 85
    .line 86
    move-result v13

    .line 87
    if-eqz v12, :cond_1

    .line 88
    .line 89
    iget v12, v12, Landroid/graphics/Rect;->top:I

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_1
    iget v12, v1, Landroidx/mediarouter/app/D;->Z:I

    .line 93
    .line 94
    mul-int/2addr v12, v2

    .line 95
    add-int/2addr v12, v13

    .line 96
    :goto_1
    new-instance v14, Landroid/view/animation/AnimationSet;

    .line 97
    .line 98
    const/4 v15, 0x1

    .line 99
    invoke-direct {v14, v15}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 100
    .line 101
    .line 102
    iget-object v15, v1, Landroidx/mediarouter/app/D;->S:Ljava/util/Set;

    .line 103
    .line 104
    if-eqz v15, :cond_2

    .line 105
    .line 106
    invoke-interface {v15, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result v15

    .line 110
    if-eqz v15, :cond_2

    .line 111
    .line 112
    new-instance v12, Landroid/view/animation/AlphaAnimation;

    .line 113
    .line 114
    invoke-direct {v12, v10, v10}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 115
    .line 116
    .line 117
    iget v15, v1, Landroidx/mediarouter/app/D;->t0:I

    .line 118
    .line 119
    move-object/from16 v16, v11

    .line 120
    .line 121
    int-to-long v10, v15

    .line 122
    invoke-virtual {v12, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v14, v12}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 126
    .line 127
    .line 128
    move v12, v13

    .line 129
    goto :goto_2

    .line 130
    :cond_2
    move-object/from16 v16, v11

    .line 131
    .line 132
    :goto_2
    new-instance v10, Landroid/view/animation/TranslateAnimation;

    .line 133
    .line 134
    sub-int/2addr v12, v13

    .line 135
    int-to-float v11, v12

    .line 136
    const/4 v12, 0x0

    .line 137
    invoke-direct {v10, v12, v12, v11, v12}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 138
    .line 139
    .line 140
    iget v11, v1, Landroidx/mediarouter/app/D;->s0:I

    .line 141
    .line 142
    int-to-long v11, v11

    .line 143
    invoke-virtual {v10, v11, v12}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v14, v10}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 147
    .line 148
    .line 149
    const/4 v10, 0x1

    .line 150
    invoke-virtual {v14, v10}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v14, v10}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 154
    .line 155
    .line 156
    iget-object v11, v1, Landroidx/mediarouter/app/D;->v0:Landroid/view/animation/Interpolator;

    .line 157
    .line 158
    invoke-virtual {v14, v11}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 159
    .line 160
    .line 161
    if-nez v6, :cond_3

    .line 162
    .line 163
    invoke-virtual {v14, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 164
    .line 165
    .line 166
    move v6, v10

    .line 167
    :cond_3
    invoke-virtual {v7}, Landroid/view/View;->clearAnimation()V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v7, v14}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 171
    .line 172
    .line 173
    move-object/from16 v11, v16

    .line 174
    .line 175
    invoke-interface {v8, v11}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    invoke-interface {v9, v11}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    add-int/lit8 v5, v5, 0x1

    .line 182
    .line 183
    goto/16 :goto_0

    .line 184
    .line 185
    :cond_4
    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 186
    .line 187
    .line 188
    move-result-object v3

    .line 189
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 190
    .line 191
    .line 192
    move-result-object v3

    .line 193
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 194
    .line 195
    .line 196
    move-result v4

    .line 197
    if-eqz v4, :cond_6

    .line 198
    .line 199
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object v4

    .line 203
    check-cast v4, Ljava/util/Map$Entry;

    .line 204
    .line 205
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    move-result-object v5

    .line 209
    check-cast v5, Lf1/U;

    .line 210
    .line 211
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object v4

    .line 215
    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    .line 216
    .line 217
    invoke-interface {v8, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object v6

    .line 221
    check-cast v6, Landroid/graphics/Rect;

    .line 222
    .line 223
    iget-object v7, v1, Landroidx/mediarouter/app/D;->T:Ljava/util/Set;

    .line 224
    .line 225
    invoke-interface {v7, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 226
    .line 227
    .line 228
    move-result v7

    .line 229
    if-eqz v7, :cond_5

    .line 230
    .line 231
    new-instance v5, Landroidx/mediarouter/app/q0;

    .line 232
    .line 233
    invoke-direct {v5, v4, v6}, Landroidx/mediarouter/app/q0;-><init>(Landroid/graphics/drawable/BitmapDrawable;Landroid/graphics/Rect;)V

    .line 234
    .line 235
    .line 236
    const/high16 v4, 0x3f800000    # 1.0f

    .line 237
    .line 238
    const/4 v12, 0x0

    .line 239
    invoke-virtual {v5, v4, v12}, Landroidx/mediarouter/app/q0;->setAlphaAnimation(FF)Landroidx/mediarouter/app/q0;

    .line 240
    .line 241
    .line 242
    move-result-object v4

    .line 243
    iget v5, v1, Landroidx/mediarouter/app/D;->u0:I

    .line 244
    .line 245
    int-to-long v5, v5

    .line 246
    invoke-virtual {v4, v5, v6}, Landroidx/mediarouter/app/q0;->setDuration(J)Landroidx/mediarouter/app/q0;

    .line 247
    .line 248
    .line 249
    move-result-object v4

    .line 250
    iget-object v5, v1, Landroidx/mediarouter/app/D;->v0:Landroid/view/animation/Interpolator;

    .line 251
    .line 252
    invoke-virtual {v4, v5}, Landroidx/mediarouter/app/q0;->setInterpolator(Landroid/view/animation/Interpolator;)Landroidx/mediarouter/app/q0;

    .line 253
    .line 254
    .line 255
    move-result-object v4

    .line 256
    goto :goto_4

    .line 257
    :cond_5
    const/4 v12, 0x0

    .line 258
    iget v7, v1, Landroidx/mediarouter/app/D;->Z:I

    .line 259
    .line 260
    mul-int/2addr v7, v2

    .line 261
    new-instance v9, Landroidx/mediarouter/app/q0;

    .line 262
    .line 263
    invoke-direct {v9, v4, v6}, Landroidx/mediarouter/app/q0;-><init>(Landroid/graphics/drawable/BitmapDrawable;Landroid/graphics/Rect;)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {v9, v7}, Landroidx/mediarouter/app/q0;->setTranslateYAnimation(I)Landroidx/mediarouter/app/q0;

    .line 267
    .line 268
    .line 269
    move-result-object v4

    .line 270
    iget v6, v1, Landroidx/mediarouter/app/D;->s0:I

    .line 271
    .line 272
    int-to-long v6, v6

    .line 273
    invoke-virtual {v4, v6, v7}, Landroidx/mediarouter/app/q0;->setDuration(J)Landroidx/mediarouter/app/q0;

    .line 274
    .line 275
    .line 276
    move-result-object v4

    .line 277
    iget-object v6, v1, Landroidx/mediarouter/app/D;->v0:Landroid/view/animation/Interpolator;

    .line 278
    .line 279
    invoke-virtual {v4, v6}, Landroidx/mediarouter/app/q0;->setInterpolator(Landroid/view/animation/Interpolator;)Landroidx/mediarouter/app/q0;

    .line 280
    .line 281
    .line 282
    move-result-object v4

    .line 283
    new-instance v6, Landroidx/mediarouter/app/k;

    .line 284
    .line 285
    invoke-direct {v6, v1, v5}, Landroidx/mediarouter/app/k;-><init>(Landroidx/mediarouter/app/D;Lf1/U;)V

    .line 286
    .line 287
    .line 288
    invoke-virtual {v4, v6}, Landroidx/mediarouter/app/q0;->setAnimationEndListener(Landroidx/mediarouter/app/p0;)Landroidx/mediarouter/app/q0;

    .line 289
    .line 290
    .line 291
    move-result-object v4

    .line 292
    iget-object v6, v1, Landroidx/mediarouter/app/D;->U:Ljava/util/HashSet;

    .line 293
    .line 294
    invoke-virtual {v6, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 295
    .line 296
    .line 297
    :goto_4
    iget-object v5, v1, Landroidx/mediarouter/app/D;->P:Landroidx/mediarouter/app/OverlayListView;

    .line 298
    .line 299
    invoke-virtual {v5, v4}, Landroidx/mediarouter/app/OverlayListView;->addOverlayObject(Landroidx/mediarouter/app/q0;)V

    .line 300
    .line 301
    .line 302
    goto :goto_3

    .line 303
    :cond_6
    :goto_5
    return-void
.end method
