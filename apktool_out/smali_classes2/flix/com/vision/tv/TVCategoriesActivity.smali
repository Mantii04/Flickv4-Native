.class public Lflix/com/vision/tv/TVCategoriesActivity;
.super Lflix/com/vision/activities/base/a;
.source "SourceFile"

# interfaces
.implements LU4/l;


# static fields
.field public static final synthetic H:I


# instance fields
.field public A:Landroid/widget/TextView;

.field public B:Landroid/widget/TextView;

.field public C:Landroid/widget/RelativeLayout;

.field public D:Landroid/view/animation/AlphaAnimation;

.field public E:Z

.field public F:Ljava/util/HashSet;

.field public G:I

.field public b:Landroid/widget/RelativeLayout;

.field public e:Landroid/widget/RelativeLayout;

.field public f:Landroid/widget/RelativeLayout;

.field public j:Lh5/j;

.field public m:Landroid/graphics/Typeface;

.field public n:Landroid/widget/TextView;

.field public final p:Ljava/util/ArrayList;

.field public q:Landroid/widget/LinearLayout;

.field public r:Landroid/widget/LinearLayout;

.field public s:Landroidx/recyclerview/widget/RecyclerView;

.field public t:Landroidx/recyclerview/widget/RecyclerView;

.field public u:LC4/c0;

.field public v:LC4/c0;

.field public w:Ljava/lang/String;

.field public x:Z

.field public y:Landroid/os/Handler;

.field public z:Lf1/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lflix/com/vision/activities/base/a;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lflix/com/vision/tv/TVCategoriesActivity;->p:Ljava/util/ArrayList;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lflix/com/vision/tv/TVCategoriesActivity;->E:Z

    .line 13
    .line 14
    new-instance v0, Ljava/util/HashSet;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lflix/com/vision/tv/TVCategoriesActivity;->F:Ljava/util/HashSet;

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public ToastChannel(Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lflix/com/vision/tv/TVCategoriesActivity;->C:Landroid/widget/RelativeLayout;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    if-eqz p1, :cond_1

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/16 v2, 0x14

    .line 14
    .line 15
    if-le v1, v2, :cond_1

    .line 16
    .line 17
    const/16 v1, 0x13

    .line 18
    .line 19
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    :cond_1
    iget-object v1, p0, Lflix/com/vision/tv/TVCategoriesActivity;->C:Landroid/widget/RelativeLayout;

    .line 24
    .line 25
    const/high16 v2, 0x3f800000    # 1.0f

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Lflix/com/vision/tv/TVCategoriesActivity;->y:Landroid/os/Handler;

    .line 31
    .line 32
    iget-object v2, p0, Lflix/com/vision/tv/TVCategoriesActivity;->z:Lf1/a;

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 35
    .line 36
    .line 37
    iget-object v1, p0, Lflix/com/vision/tv/TVCategoriesActivity;->y:Landroid/os/Handler;

    .line 38
    .line 39
    iget-object v2, p0, Lflix/com/vision/tv/TVCategoriesActivity;->z:Lf1/a;

    .line 40
    .line 41
    const-wide/16 v3, 0x7d0

    .line 42
    .line 43
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 44
    .line 45
    .line 46
    iget-object v1, p0, Lflix/com/vision/tv/TVCategoriesActivity;->A:Landroid/widget/TextView;

    .line 47
    .line 48
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    .line 50
    .line 51
    iget-object p1, p0, Lflix/com/vision/tv/TVCategoriesActivity;->C:Landroid/widget/RelativeLayout;

    .line 52
    .line 53
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public final e()V
    .locals 7

    .line 1
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lflix/com/vision/App;->p:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 8
    .line 9
    .line 10
    new-instance v0, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    iget-object v1, v1, Lflix/com/vision/App;->j:Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const/4 v2, 0x0

    .line 26
    move v3, v2

    .line 27
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    const/4 v5, 0x1

    .line 32
    if-eqz v4, :cond_3

    .line 33
    .line 34
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    check-cast v4, Lflix/com/vision/models/ChannelTv;

    .line 39
    .line 40
    add-int/2addr v3, v5

    .line 41
    iget-object v5, v4, Lflix/com/vision/models/ChannelTv;->group_name:Ljava/lang/String;

    .line 42
    .line 43
    if-eqz v5, :cond_0

    .line 44
    .line 45
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v5

    .line 49
    if-nez v5, :cond_0

    .line 50
    .line 51
    iget-object v5, v4, Lflix/com/vision/models/ChannelTv;->group_name:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    const-string v6, "agent"

    .line 58
    .line 59
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    if-nez v5, :cond_0

    .line 64
    .line 65
    iget-object v5, v4, Lflix/com/vision/models/ChannelTv;->group_name:Ljava/lang/String;

    .line 66
    .line 67
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    new-instance v5, Lflix/com/vision/tv/TVCategory;

    .line 71
    .line 72
    invoke-direct {v5}, Lflix/com/vision/tv/TVCategory;-><init>()V

    .line 73
    .line 74
    .line 75
    iget-object v4, v4, Lflix/com/vision/models/ChannelTv;->group_name:Ljava/lang/String;

    .line 76
    .line 77
    invoke-virtual {v5, v4}, Lflix/com/vision/tv/TVCategory;->setCategoryName(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v5, v3}, Lflix/com/vision/tv/TVCategory;->setCategoryId(I)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v5}, Lflix/com/vision/tv/TVCategory;->getCategoryName()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    if-eqz v4, :cond_2

    .line 88
    .line 89
    invoke-virtual {v5}, Lflix/com/vision/tv/TVCategory;->getCategoryName()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    const-string v6, "united states"

    .line 98
    .line 99
    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 100
    .line 101
    .line 102
    move-result v4

    .line 103
    if-nez v4, :cond_1

    .line 104
    .line 105
    invoke-virtual {v5}, Lflix/com/vision/tv/TVCategory;->getCategoryName()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v4

    .line 109
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v4

    .line 113
    const-string v6, "france"

    .line 114
    .line 115
    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 116
    .line 117
    .line 118
    move-result v4

    .line 119
    if-nez v4, :cond_1

    .line 120
    .line 121
    invoke-virtual {v5}, Lflix/com/vision/tv/TVCategory;->getCategoryName()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v4

    .line 125
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v4

    .line 129
    const-string v6, "canada"

    .line 130
    .line 131
    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 132
    .line 133
    .line 134
    move-result v4

    .line 135
    if-nez v4, :cond_1

    .line 136
    .line 137
    invoke-virtual {v5}, Lflix/com/vision/tv/TVCategory;->getCategoryName()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v4

    .line 141
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v4

    .line 145
    const-string v6, "united kingdom"

    .line 146
    .line 147
    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 148
    .line 149
    .line 150
    move-result v4

    .line 151
    if-nez v4, :cond_1

    .line 152
    .line 153
    invoke-virtual {v5}, Lflix/com/vision/tv/TVCategory;->getCategoryName()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v4

    .line 157
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v4

    .line 161
    const-string v6, "south africa"

    .line 162
    .line 163
    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 164
    .line 165
    .line 166
    move-result v4

    .line 167
    if-nez v4, :cond_1

    .line 168
    .line 169
    invoke-virtual {v5}, Lflix/com/vision/tv/TVCategory;->getCategoryName()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v4

    .line 173
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v4

    .line 177
    const-string v6, "india"

    .line 178
    .line 179
    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 180
    .line 181
    .line 182
    move-result v4

    .line 183
    if-nez v4, :cond_1

    .line 184
    .line 185
    invoke-virtual {v5}, Lflix/com/vision/tv/TVCategory;->getCategoryName()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v4

    .line 189
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v4

    .line 193
    const-string v6, "ireland"

    .line 194
    .line 195
    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 196
    .line 197
    .line 198
    move-result v4

    .line 199
    if-nez v4, :cond_1

    .line 200
    .line 201
    invoke-virtual {v5}, Lflix/com/vision/tv/TVCategory;->getCategoryName()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v4

    .line 205
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v4

    .line 209
    const-string v6, "jamaica"

    .line 210
    .line 211
    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 212
    .line 213
    .line 214
    move-result v4

    .line 215
    if-nez v4, :cond_1

    .line 216
    .line 217
    invoke-virtual {v5}, Lflix/com/vision/tv/TVCategory;->getCategoryName()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v4

    .line 221
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v4

    .line 225
    const-string v6, "netherlands"

    .line 226
    .line 227
    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 228
    .line 229
    .line 230
    move-result v4

    .line 231
    if-eqz v4, :cond_2

    .line 232
    .line 233
    :cond_1
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 234
    .line 235
    .line 236
    move-result-object v4

    .line 237
    iget-object v4, v4, Lflix/com/vision/App;->p:Ljava/util/ArrayList;

    .line 238
    .line 239
    invoke-virtual {v4, v2, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 240
    .line 241
    .line 242
    :cond_2
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 243
    .line 244
    .line 245
    move-result-object v4

    .line 246
    iget-object v4, v4, Lflix/com/vision/App;->p:Ljava/util/ArrayList;

    .line 247
    .line 248
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    .line 250
    .line 251
    goto/16 :goto_0

    .line 252
    .line 253
    :cond_3
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 254
    .line 255
    .line 256
    move-result-object v0

    .line 257
    iget-object v0, v0, Lflix/com/vision/App;->p:Ljava/util/ArrayList;

    .line 258
    .line 259
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 260
    .line 261
    .line 262
    move-result v0

    .line 263
    if-lez v0, :cond_4

    .line 264
    .line 265
    iget-object v0, p0, Lflix/com/vision/tv/TVCategoriesActivity;->n:Landroid/widget/TextView;

    .line 266
    .line 267
    new-instance v1, Ljava/lang/StringBuilder;

    .line 268
    .line 269
    const-string v3, "TV Categories \u00b7 "

    .line 270
    .line 271
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 275
    .line 276
    .line 277
    move-result-object v3

    .line 278
    iget-object v3, v3, Lflix/com/vision/App;->p:Ljava/util/ArrayList;

    .line 279
    .line 280
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 281
    .line 282
    .line 283
    move-result v3

    .line 284
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v1

    .line 291
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 292
    .line 293
    .line 294
    iget-object v0, p0, Lflix/com/vision/tv/TVCategoriesActivity;->u:LC4/c0;

    .line 295
    .line 296
    invoke-virtual {v0}, Lm1/V;->notifyDataSetChanged()V

    .line 297
    .line 298
    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    .line 300
    .line 301
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 302
    .line 303
    .line 304
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 305
    .line 306
    .line 307
    move-result-object v1

    .line 308
    iget-object v1, v1, Lflix/com/vision/App;->j:Ljava/util/ArrayList;

    .line 309
    .line 310
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 311
    .line 312
    .line 313
    move-result v1

    .line 314
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 315
    .line 316
    .line 317
    const-string v1, " Channels loaded"

    .line 318
    .line 319
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    .line 321
    .line 322
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object v0

    .line 326
    invoke-static {p0, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 327
    .line 328
    .line 329
    move-result-object v0

    .line 330
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 331
    .line 332
    .line 333
    invoke-virtual {p0}, Lflix/com/vision/tv/TVCategoriesActivity;->updateFavoritesBar()V

    .line 334
    .line 335
    .line 336
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 337
    .line 338
    .line 339
    move-result-object v0

    .line 340
    iget-object v0, v0, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 341
    .line 342
    const-string v1, "hint_tv_cat_shown"

    .line 343
    .line 344
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 345
    .line 346
    .line 347
    move-result v0

    .line 348
    if-nez v0, :cond_4

    .line 349
    .line 350
    const-string v0, "You can long press on a Category to pin it at the top of the list"

    .line 351
    .line 352
    invoke-static {p0, v0, v5}, Lh5/i;->makeToast(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 353
    .line 354
    .line 355
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 356
    .line 357
    .line 358
    move-result-object v0

    .line 359
    iget-object v0, v0, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 360
    .line 361
    invoke-static {v0, v1, v5}, LA/i;->x(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 362
    .line 363
    .line 364
    :cond_4
    return-void
.end method

.method public getCategories()V
    .locals 3

    .line 1
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lflix/com/vision/App;->p:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-lez v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lflix/com/vision/tv/TVCategoriesActivity;->n:Landroid/widget/TextView;

    .line 14
    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v2, "TV Categories \u00b7 "

    .line 18
    .line 19
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    iget-object v2, v2, Lflix/com/vision/App;->p:Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lflix/com/vision/tv/TVCategoriesActivity;->q:Landroid/widget/LinearLayout;

    .line 43
    .line 44
    const/16 v1, 0x8

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lflix/com/vision/tv/TVCategoriesActivity;->u:LC4/c0;

    .line 50
    .line 51
    invoke-virtual {v0}, Lm1/V;->notifyDataSetChanged()V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lflix/com/vision/tv/TVCategoriesActivity;->s:Landroidx/recyclerview/widget/RecyclerView;

    .line 55
    .line 56
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 57
    .line 58
    .line 59
    const/4 v0, 0x1

    .line 60
    iput-boolean v0, p0, Lflix/com/vision/tv/TVCategoriesActivity;->E:Z

    .line 61
    .line 62
    invoke-virtual {p0}, Lflix/com/vision/tv/TVCategoriesActivity;->updateFavoritesBar()V

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :cond_0
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    iget-object v1, p0, Lflix/com/vision/tv/TVCategoriesActivity;->w:Ljava/lang/String;

    .line 71
    .line 72
    iput-object v1, v0, Lflix/com/vision/App;->f:Ljava/lang/String;

    .line 73
    .line 74
    iget-boolean v0, p0, Lflix/com/vision/tv/TVCategoriesActivity;->x:Z

    .line 75
    .line 76
    if-nez v0, :cond_1

    .line 77
    .line 78
    new-instance v0, Lf5/E;

    .line 79
    .line 80
    invoke-direct {v0, p0}, Lf5/E;-><init>(Lflix/com/vision/tv/TVCategoriesActivity;)V

    .line 81
    .line 82
    .line 83
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 84
    .line 85
    iget-object v2, p0, Lflix/com/vision/tv/TVCategoriesActivity;->w:Ljava/lang/String;

    .line 86
    .line 87
    filled-new-array {v2}, [Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 92
    .line 93
    .line 94
    return-void

    .line 95
    :cond_1
    new-instance v0, Lf5/D;

    .line 96
    .line 97
    invoke-direct {v0, p0}, Lf5/D;-><init>(Lflix/com/vision/tv/TVCategoriesActivity;)V

    .line 98
    .line 99
    .line 100
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 101
    .line 102
    iget-object v2, p0, Lflix/com/vision/tv/TVCategoriesActivity;->w:Ljava/lang/String;

    .line 103
    .line 104
    filled-new-array {v2}, [Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 109
    .line 110
    .line 111
    return-void
.end method

.method public onBackPressed()V
    .locals 4

    .line 1
    iget-object v0, p0, Lflix/com/vision/tv/TVCategoriesActivity;->t:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lflix/com/vision/tv/TVCategoriesActivity;->t:Landroidx/recyclerview/widget/RecyclerView;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lflix/com/vision/tv/TVCategoriesActivity;->t:Landroidx/recyclerview/widget/RecyclerView;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    iget-boolean v0, p0, Lflix/com/vision/tv/TVCategoriesActivity;->E:Z

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    const/4 v1, 0x1

    .line 39
    invoke-static {p0, v1}, LQ4/d;->newInstance(Landroid/app/Activity;Z)LQ4/d;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    const-string v2, "Still working"

    .line 44
    .line 45
    invoke-virtual {v1, v2}, LQ4/d;->setTitle(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    const-string v2, "We\'re still loading your channels. Can you please wait a little more?"

    .line 49
    .line 50
    invoke-virtual {v1, v2}, LQ4/d;->setMessage(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    new-instance v2, Lf5/B;

    .line 54
    .line 55
    const/4 v3, 0x0

    .line 56
    invoke-direct {v2, p0, v3}, Lf5/B;-><init>(Lflix/com/vision/tv/TVCategoriesActivity;I)V

    .line 57
    .line 58
    .line 59
    const-string v3, "CANCEL"

    .line 60
    .line 61
    invoke-virtual {v1, v3, v2}, LQ4/d;->setButton1(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 62
    .line 63
    .line 64
    new-instance v2, LA4/q;

    .line 65
    .line 66
    const/4 v3, 0x5

    .line 67
    invoke-direct {v2, v3}, LA4/q;-><init>(I)V

    .line 68
    .line 69
    .line 70
    const-string v3, "OK, I\'LL WAIT"

    .line 71
    .line 72
    invoke-virtual {v1, v3, v2}, LQ4/d;->setButton2(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 73
    .line 74
    .line 75
    :try_start_0
    const-string v2, ""

    .line 76
    .line 77
    invoke-virtual {v1, v0, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :catch_0
    move-exception v0

    .line 82
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 83
    .line 84
    .line 85
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lflix/com/vision/activities/base/a;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    sget p1, Lflix/com/vision/R$layout;->activity_tv_categories2:I

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Le/v;->setContentView(I)V

    .line 14
    .line 15
    .line 16
    new-instance p1, Ljava/util/HashSet;

    .line 17
    .line 18
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object v0, v0, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 23
    .line 24
    new-instance v1, Ljava/util/HashSet;

    .line 25
    .line 26
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 27
    .line 28
    .line 29
    const-string v2, "prefs_tv_category_fav_set"

    .line 30
    .line 31
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-direct {p1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 36
    .line 37
    .line 38
    iput-object p1, p0, Lflix/com/vision/tv/TVCategoriesActivity;->F:Ljava/util/HashSet;

    .line 39
    .line 40
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    sget-object v0, Lflix/com/vision/tv/Constant;->b:Ljava/lang/String;

    .line 45
    .line 46
    const-string v0, "fonts/product_sans_bold.ttf"

    .line 47
    .line 48
    invoke-static {p1, v0}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    iput-object p1, p0, Lflix/com/vision/tv/TVCategoriesActivity;->m:Landroid/graphics/Typeface;

    .line 53
    .line 54
    new-instance p1, Lh5/j;

    .line 55
    .line 56
    invoke-direct {p1}, Lh5/j;-><init>()V

    .line 57
    .line 58
    .line 59
    iput-object p1, p0, Lflix/com/vision/tv/TVCategoriesActivity;->j:Lh5/j;

    .line 60
    .line 61
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    const-string v0, "url"

    .line 66
    .line 67
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    iput-object p1, p0, Lflix/com/vision/tv/TVCategoriesActivity;->w:Ljava/lang/String;

    .line 72
    .line 73
    if-nez p1, :cond_0

    .line 74
    .line 75
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    iget-object p1, p1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 80
    .line 81
    const-string v0, "iptv_url"

    .line 82
    .line 83
    const-string v1, "https://iptv-org.github.io/iptv/index.country.m3u"

    .line 84
    .line 85
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    iput-object p1, p0, Lflix/com/vision/tv/TVCategoriesActivity;->w:Ljava/lang/String;

    .line 90
    .line 91
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    const-string v0, "is_file"

    .line 96
    .line 97
    const/4 v1, 0x0

    .line 98
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 99
    .line 100
    .line 101
    move-result p1

    .line 102
    iput-boolean p1, p0, Lflix/com/vision/tv/TVCategoriesActivity;->x:Z

    .line 103
    .line 104
    iget-object p1, p0, Lflix/com/vision/tv/TVCategoriesActivity;->w:Ljava/lang/String;

    .line 105
    .line 106
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 107
    .line 108
    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    iput-object p1, p0, Lflix/com/vision/tv/TVCategoriesActivity;->w:Ljava/lang/String;

    .line 113
    .line 114
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    iget-object p1, p1, Lflix/com/vision/App;->f:Ljava/lang/String;

    .line 119
    .line 120
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    iget-object v0, v0, Lflix/com/vision/App;->p:Ljava/util/ArrayList;

    .line 125
    .line 126
    if-nez v0, :cond_1

    .line 127
    .line 128
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    new-instance v2, Ljava/util/ArrayList;

    .line 133
    .line 134
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 135
    .line 136
    .line 137
    iput-object v2, v0, Lflix/com/vision/App;->p:Ljava/util/ArrayList;

    .line 138
    .line 139
    :cond_1
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    iget-object v0, v0, Lflix/com/vision/App;->j:Ljava/util/ArrayList;

    .line 144
    .line 145
    if-nez v0, :cond_2

    .line 146
    .line 147
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    new-instance v2, Ljava/util/ArrayList;

    .line 152
    .line 153
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 154
    .line 155
    .line 156
    iput-object v2, v0, Lflix/com/vision/App;->j:Ljava/util/ArrayList;

    .line 157
    .line 158
    :cond_2
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    iget-object v0, v0, Lflix/com/vision/App;->m:Ljava/util/ArrayList;

    .line 163
    .line 164
    if-nez v0, :cond_3

    .line 165
    .line 166
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    new-instance v2, Ljava/util/ArrayList;

    .line 171
    .line 172
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 173
    .line 174
    .line 175
    iput-object v2, v0, Lflix/com/vision/App;->m:Ljava/util/ArrayList;

    .line 176
    .line 177
    :cond_3
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    iget-object v0, v0, Lflix/com/vision/App;->p:Ljava/util/ArrayList;

    .line 182
    .line 183
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 184
    .line 185
    .line 186
    move-result v0

    .line 187
    if-lez v0, :cond_4

    .line 188
    .line 189
    if-eqz p1, :cond_4

    .line 190
    .line 191
    iget-object v0, p0, Lflix/com/vision/tv/TVCategoriesActivity;->w:Ljava/lang/String;

    .line 192
    .line 193
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 194
    .line 195
    .line 196
    move-result p1

    .line 197
    if-nez p1, :cond_4

    .line 198
    .line 199
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 200
    .line 201
    .line 202
    move-result-object p1

    .line 203
    iget-object p1, p1, Lflix/com/vision/App;->p:Ljava/util/ArrayList;

    .line 204
    .line 205
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 206
    .line 207
    .line 208
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 209
    .line 210
    .line 211
    move-result-object p1

    .line 212
    iget-object p1, p1, Lflix/com/vision/App;->j:Ljava/util/ArrayList;

    .line 213
    .line 214
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 215
    .line 216
    .line 217
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 218
    .line 219
    .line 220
    move-result-object p1

    .line 221
    iget-object p1, p1, Lflix/com/vision/App;->m:Ljava/util/ArrayList;

    .line 222
    .line 223
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 224
    .line 225
    .line 226
    :cond_4
    sget p1, Lflix/com/vision/R$id;->tv_favorites_layout:I

    .line 227
    .line 228
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 229
    .line 230
    .line 231
    move-result-object p1

    .line 232
    check-cast p1, Landroid/widget/LinearLayout;

    .line 233
    .line 234
    iput-object p1, p0, Lflix/com/vision/tv/TVCategoriesActivity;->r:Landroid/widget/LinearLayout;

    .line 235
    .line 236
    sget p1, Lflix/com/vision/R$id;->recyclerview_tv_favorites:I

    .line 237
    .line 238
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 239
    .line 240
    .line 241
    move-result-object p1

    .line 242
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 243
    .line 244
    iput-object p1, p0, Lflix/com/vision/tv/TVCategoriesActivity;->t:Landroidx/recyclerview/widget/RecyclerView;

    .line 245
    .line 246
    sget p1, Lflix/com/vision/R$id;->loader_text:I

    .line 247
    .line 248
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 249
    .line 250
    .line 251
    move-result-object p1

    .line 252
    check-cast p1, Landroid/widget/TextView;

    .line 253
    .line 254
    iput-object p1, p0, Lflix/com/vision/tv/TVCategoriesActivity;->B:Landroid/widget/TextView;

    .line 255
    .line 256
    sget p1, Lflix/com/vision/R$id;->recyclerview_categories:I

    .line 257
    .line 258
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 259
    .line 260
    .line 261
    move-result-object p1

    .line 262
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 263
    .line 264
    iput-object p1, p0, Lflix/com/vision/tv/TVCategoriesActivity;->s:Landroidx/recyclerview/widget/RecyclerView;

    .line 265
    .line 266
    sget p1, Lflix/com/vision/R$id;->loader:I

    .line 267
    .line 268
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 269
    .line 270
    .line 271
    move-result-object p1

    .line 272
    check-cast p1, Landroid/widget/LinearLayout;

    .line 273
    .line 274
    iput-object p1, p0, Lflix/com/vision/tv/TVCategoriesActivity;->q:Landroid/widget/LinearLayout;

    .line 275
    .line 276
    sget p1, Lflix/com/vision/R$id;->settings_button_adult:I

    .line 277
    .line 278
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 279
    .line 280
    .line 281
    move-result-object p1

    .line 282
    check-cast p1, Landroid/widget/RelativeLayout;

    .line 283
    .line 284
    iput-object p1, p0, Lflix/com/vision/tv/TVCategoriesActivity;->f:Landroid/widget/RelativeLayout;

    .line 285
    .line 286
    sget p1, Lflix/com/vision/R$id;->activity_player:I

    .line 287
    .line 288
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 289
    .line 290
    .line 291
    move-result-object p1

    .line 292
    check-cast p1, Landroid/widget/RelativeLayout;

    .line 293
    .line 294
    iput-object p1, p0, Lflix/com/vision/tv/TVCategoriesActivity;->e:Landroid/widget/RelativeLayout;

    .line 295
    .line 296
    sget p1, Lflix/com/vision/R$id;->search_button_adult:I

    .line 297
    .line 298
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 299
    .line 300
    .line 301
    move-result-object p1

    .line 302
    check-cast p1, Landroid/widget/RelativeLayout;

    .line 303
    .line 304
    iput-object p1, p0, Lflix/com/vision/tv/TVCategoriesActivity;->b:Landroid/widget/RelativeLayout;

    .line 305
    .line 306
    sget p1, Lflix/com/vision/R$id;->recyclerview_categories:I

    .line 307
    .line 308
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 309
    .line 310
    .line 311
    move-result-object p1

    .line 312
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 313
    .line 314
    iput-object p1, p0, Lflix/com/vision/tv/TVCategoriesActivity;->s:Landroidx/recyclerview/widget/RecyclerView;

    .line 315
    .line 316
    sget p1, Lflix/com/vision/R$id;->adult_page_title:I

    .line 317
    .line 318
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 319
    .line 320
    .line 321
    move-result-object p1

    .line 322
    check-cast p1, Landroid/widget/TextView;

    .line 323
    .line 324
    iput-object p1, p0, Lflix/com/vision/tv/TVCategoriesActivity;->n:Landroid/widget/TextView;

    .line 325
    .line 326
    iget-object v0, p0, Lflix/com/vision/tv/TVCategoriesActivity;->j:Lh5/j;

    .line 327
    .line 328
    iget-object v2, p0, Lflix/com/vision/tv/TVCategoriesActivity;->m:Landroid/graphics/Typeface;

    .line 329
    .line 330
    invoke-virtual {v0, p1, v2}, Lh5/j;->applyFontToView(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    .line 331
    .line 332
    .line 333
    iget-object p1, p0, Lflix/com/vision/tv/TVCategoriesActivity;->B:Landroid/widget/TextView;

    .line 334
    .line 335
    if-eqz p1, :cond_5

    .line 336
    .line 337
    iget-object v0, p0, Lflix/com/vision/tv/TVCategoriesActivity;->j:Lh5/j;

    .line 338
    .line 339
    iget-object v2, p0, Lflix/com/vision/tv/TVCategoriesActivity;->m:Landroid/graphics/Typeface;

    .line 340
    .line 341
    invoke-virtual {v0, p1, v2}, Lh5/j;->applyFontToView(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    .line 342
    .line 343
    .line 344
    :cond_5
    iget-object p1, p0, Lflix/com/vision/tv/TVCategoriesActivity;->b:Landroid/widget/RelativeLayout;

    .line 345
    .line 346
    new-instance v0, Lf5/B;

    .line 347
    .line 348
    const/4 v2, 0x1

    .line 349
    invoke-direct {v0, p0, v2}, Lf5/B;-><init>(Lflix/com/vision/tv/TVCategoriesActivity;I)V

    .line 350
    .line 351
    .line 352
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 353
    .line 354
    .line 355
    iget-object p1, p0, Lflix/com/vision/tv/TVCategoriesActivity;->f:Landroid/widget/RelativeLayout;

    .line 356
    .line 357
    new-instance v0, Lf5/B;

    .line 358
    .line 359
    const/4 v2, 0x2

    .line 360
    invoke-direct {v0, p0, v2}, Lf5/B;-><init>(Lflix/com/vision/tv/TVCategoriesActivity;I)V

    .line 361
    .line 362
    .line 363
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 364
    .line 365
    .line 366
    invoke-virtual {p0}, Lflix/com/vision/tv/TVCategoriesActivity;->setBackgroundColor()V

    .line 367
    .line 368
    .line 369
    sget-boolean p1, Lflix/com/vision/App;->I:Z

    .line 370
    .line 371
    if-eqz p1, :cond_6

    .line 372
    .line 373
    sget p1, Lflix/com/vision/R$id;->toast_view:I

    .line 374
    .line 375
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 376
    .line 377
    .line 378
    move-result-object p1

    .line 379
    check-cast p1, Landroid/widget/RelativeLayout;

    .line 380
    .line 381
    iput-object p1, p0, Lflix/com/vision/tv/TVCategoriesActivity;->C:Landroid/widget/RelativeLayout;

    .line 382
    .line 383
    new-instance p1, Landroid/view/animation/AlphaAnimation;

    .line 384
    .line 385
    const/high16 v0, 0x3f800000    # 1.0f

    .line 386
    .line 387
    const/4 v2, 0x0

    .line 388
    invoke-direct {p1, v0, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 389
    .line 390
    .line 391
    iput-object p1, p0, Lflix/com/vision/tv/TVCategoriesActivity;->D:Landroid/view/animation/AlphaAnimation;

    .line 392
    .line 393
    sget p1, Lflix/com/vision/R$id;->customToastText:I

    .line 394
    .line 395
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 396
    .line 397
    .line 398
    move-result-object p1

    .line 399
    check-cast p1, Landroid/widget/TextView;

    .line 400
    .line 401
    iput-object p1, p0, Lflix/com/vision/tv/TVCategoriesActivity;->A:Landroid/widget/TextView;

    .line 402
    .line 403
    new-instance p1, Landroid/os/Handler;

    .line 404
    .line 405
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 406
    .line 407
    .line 408
    iput-object p1, p0, Lflix/com/vision/tv/TVCategoriesActivity;->y:Landroid/os/Handler;

    .line 409
    .line 410
    new-instance p1, Lf1/a;

    .line 411
    .line 412
    const/4 v0, 0x4

    .line 413
    invoke-direct {p1, p0, v0}, Lf1/a;-><init>(Ljava/lang/Object;I)V

    .line 414
    .line 415
    .line 416
    iput-object p1, p0, Lflix/com/vision/tv/TVCategoriesActivity;->z:Lf1/a;

    .line 417
    .line 418
    :cond_6
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    .line 419
    .line 420
    .line 421
    move-result-object p1

    .line 422
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 423
    .line 424
    .line 425
    move-result-object p1

    .line 426
    invoke-static {p1}, Lb/c;->d(Landroid/view/Display;)Landroid/util/DisplayMetrics;

    .line 427
    .line 428
    .line 429
    move-result-object p1

    .line 430
    invoke-virtual {p0}, Le/v;->getResources()Landroid/content/res/Resources;

    .line 431
    .line 432
    .line 433
    move-result-object v0

    .line 434
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 435
    .line 436
    .line 437
    move-result-object v0

    .line 438
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 439
    .line 440
    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 441
    .line 442
    int-to-float p1, p1

    .line 443
    div-float/2addr p1, v0

    .line 444
    const/16 v0, 0x8c

    .line 445
    .line 446
    int-to-float v0, v0

    .line 447
    div-float/2addr p1, v0

    .line 448
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 449
    .line 450
    .line 451
    move-result p1

    .line 452
    new-instance v0, Lflix/com/vision/helpers/CenterGridLayoutManager;

    .line 453
    .line 454
    invoke-direct {v0, p0, p1}, Lflix/com/vision/helpers/CenterGridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 455
    .line 456
    .line 457
    iget-object p1, p0, Lflix/com/vision/tv/TVCategoriesActivity;->s:Landroidx/recyclerview/widget/RecyclerView;

    .line 458
    .line 459
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Lm1/i0;)V

    .line 460
    .line 461
    .line 462
    iget-object p1, p0, Lflix/com/vision/tv/TVCategoriesActivity;->s:Landroidx/recyclerview/widget/RecyclerView;

    .line 463
    .line 464
    new-instance v0, LT4/l;

    .line 465
    .line 466
    const/4 v2, 0x5

    .line 467
    invoke-direct {v0, v2}, LT4/l;-><init>(I)V

    .line 468
    .line 469
    .line 470
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Lm1/d0;)V

    .line 471
    .line 472
    .line 473
    new-instance p1, LC4/c0;

    .line 474
    .line 475
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 476
    .line 477
    .line 478
    move-result-object v0

    .line 479
    iget-object v0, v0, Lflix/com/vision/App;->p:Ljava/util/ArrayList;

    .line 480
    .line 481
    invoke-direct {p1, v0, p0, p0}, LC4/c0;-><init>(Ljava/util/ArrayList;LU4/l;Landroid/content/Context;)V

    .line 482
    .line 483
    .line 484
    iput-object p1, p0, Lflix/com/vision/tv/TVCategoriesActivity;->u:LC4/c0;

    .line 485
    .line 486
    iget-object v0, p0, Lflix/com/vision/tv/TVCategoriesActivity;->s:Landroidx/recyclerview/widget/RecyclerView;

    .line 487
    .line 488
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lm1/V;)V

    .line 489
    .line 490
    .line 491
    new-instance p1, LC4/c0;

    .line 492
    .line 493
    iget-object v0, p0, Lflix/com/vision/tv/TVCategoriesActivity;->p:Ljava/util/ArrayList;

    .line 494
    .line 495
    invoke-direct {p1, v0, p0, p0}, LC4/c0;-><init>(Ljava/util/ArrayList;LU4/l;Landroid/content/Context;)V

    .line 496
    .line 497
    .line 498
    iput-object p1, p0, Lflix/com/vision/tv/TVCategoriesActivity;->v:LC4/c0;

    .line 499
    .line 500
    iget-object p1, p0, Lflix/com/vision/tv/TVCategoriesActivity;->t:Landroidx/recyclerview/widget/RecyclerView;

    .line 501
    .line 502
    new-instance v0, Lflix/com/vision/helpers/CenterLayoutManager;

    .line 503
    .line 504
    invoke-direct {v0, p0, v1, v1}, Lflix/com/vision/helpers/CenterLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 505
    .line 506
    .line 507
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Lm1/i0;)V

    .line 508
    .line 509
    .line 510
    iget-object p1, p0, Lflix/com/vision/tv/TVCategoriesActivity;->t:Landroidx/recyclerview/widget/RecyclerView;

    .line 511
    .line 512
    iget-object v0, p0, Lflix/com/vision/tv/TVCategoriesActivity;->v:LC4/c0;

    .line 513
    .line 514
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lm1/V;)V

    .line 515
    .line 516
    .line 517
    iget-object p1, p0, Lflix/com/vision/tv/TVCategoriesActivity;->t:Landroidx/recyclerview/widget/RecyclerView;

    .line 518
    .line 519
    new-instance v0, LT4/k;

    .line 520
    .line 521
    const/16 v1, 0xf

    .line 522
    .line 523
    invoke-direct {v0, v1}, LT4/k;-><init>(I)V

    .line 524
    .line 525
    .line 526
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Lm1/d0;)V

    .line 527
    .line 528
    .line 529
    invoke-virtual {p0}, Lflix/com/vision/tv/TVCategoriesActivity;->getCategories()V

    .line 530
    .line 531
    .line 532
    return-void
.end method

.method public onLongPress(ILjava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lflix/com/vision/tv/TVCategory;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lflix/com/vision/tv/TVCategory;

    .line 6
    .line 7
    iget-object p2, p0, Lflix/com/vision/tv/TVCategoriesActivity;->F:Ljava/util/HashSet;

    .line 8
    .line 9
    invoke-virtual {p1}, Lflix/com/vision/tv/TVCategory;->getCategoryName()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p2, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    const-string v0, ""

    .line 18
    .line 19
    const-string v1, "OPEN"

    .line 20
    .line 21
    const-string v2, "What would you like to Do?"

    .line 22
    .line 23
    const/4 v3, 0x1

    .line 24
    if-eqz p2, :cond_0

    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    invoke-static {p0, v3}, LQ4/d;->newInstance(Landroid/app/Activity;Z)LQ4/d;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-virtual {p1}, Lflix/com/vision/tv/TVCategory;->getCategoryName()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    invoke-virtual {v3, v4}, LQ4/d;->setTitle(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3, v2}, LQ4/d;->setMessage(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    new-instance v2, Lf5/C;

    .line 45
    .line 46
    const/4 v4, 0x0

    .line 47
    invoke-direct {v2, p0, p1, v4}, Lf5/C;-><init>(Lflix/com/vision/tv/TVCategoriesActivity;Lflix/com/vision/tv/TVCategory;I)V

    .line 48
    .line 49
    .line 50
    const-string v4, "REMOVE FAVORITE"

    .line 51
    .line 52
    invoke-virtual {v3, v4, v2}, LQ4/d;->setButton1(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 53
    .line 54
    .line 55
    new-instance v2, Lf5/C;

    .line 56
    .line 57
    const/4 v4, 0x1

    .line 58
    invoke-direct {v2, p0, p1, v4}, Lf5/C;-><init>(Lflix/com/vision/tv/TVCategoriesActivity;Lflix/com/vision/tv/TVCategory;I)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v3, v1, v2}, LQ4/d;->setButton2(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 62
    .line 63
    .line 64
    :try_start_0
    invoke-virtual {v3, p2, v0}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :catch_0
    move-exception p1

    .line 69
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    .line 74
    .line 75
    .line 76
    move-result-object p2

    .line 77
    invoke-static {p0, v3}, LQ4/d;->newInstance(Landroid/app/Activity;Z)LQ4/d;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    invoke-virtual {p1}, Lflix/com/vision/tv/TVCategory;->getCategoryName()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    invoke-virtual {v3, v4}, LQ4/d;->setTitle(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v3, v2}, LQ4/d;->setMessage(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    new-instance v2, Lf5/C;

    .line 92
    .line 93
    const/4 v4, 0x2

    .line 94
    invoke-direct {v2, p0, p1, v4}, Lf5/C;-><init>(Lflix/com/vision/tv/TVCategoriesActivity;Lflix/com/vision/tv/TVCategory;I)V

    .line 95
    .line 96
    .line 97
    const-string v4, "ADD TO FAVORITES"

    .line 98
    .line 99
    invoke-virtual {v3, v4, v2}, LQ4/d;->setButton1(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 100
    .line 101
    .line 102
    new-instance v2, Lf5/C;

    .line 103
    .line 104
    const/4 v4, 0x3

    .line 105
    invoke-direct {v2, p0, p1, v4}, Lf5/C;-><init>(Lflix/com/vision/tv/TVCategoriesActivity;Lflix/com/vision/tv/TVCategory;I)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v3, v1, v2}, LQ4/d;->setButton2(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 109
    .line 110
    .line 111
    :try_start_1
    invoke-virtual {v3, p2, v0}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 112
    .line 113
    .line 114
    return-void

    .line 115
    :catch_1
    move-exception p1

    .line 116
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 117
    .line 118
    .line 119
    :goto_0
    return-void
.end method

.method public onMessageEvent(LR4/b;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object p1, p1, Lflix/com/vision/App;->p:Ljava/util/ArrayList;

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    throw p1
.end method

.method public onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Lflix/com/vision/activities/base/a;->onResume()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public openCategory(Lflix/com/vision/tv/TVCategory;)V
    .locals 4

    .line 1
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lflix/com/vision/App;->m:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 8
    .line 9
    .line 10
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v0, v0, Lflix/com/vision/App;->j:Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Lflix/com/vision/models/ChannelTv;

    .line 31
    .line 32
    iget-object v2, v1, Lflix/com/vision/models/ChannelTv;->group_name:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {p1}, Lflix/com/vision/tv/TVCategory;->getCategoryName()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-eqz v2, :cond_0

    .line 43
    .line 44
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    iget-object v2, v2, Lflix/com/vision/App;->m:Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    new-instance v0, Landroid/content/Intent;

    .line 55
    .line 56
    const-class v1, Lflix/com/vision/tv/ChannelsListActivity;

    .line 57
    .line 58
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 59
    .line 60
    .line 61
    const-string v1, "cat_name"

    .line 62
    .line 63
    invoke-virtual {p1}, Lflix/com/vision/tv/TVCategory;->getCategoryName()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method public setBackgroundColor()V
    .locals 5

    .line 1
    const v0, 0x263984

    .line 2
    .line 3
    .line 4
    iput v0, p0, Lflix/com/vision/tv/TVCategoriesActivity;->G:I

    .line 5
    .line 6
    new-instance v0, Landroid/animation/ArgbEvaluator;

    .line 7
    .line 8
    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    .line 9
    .line 10
    .line 11
    iget v1, p0, Lflix/com/vision/tv/TVCategoriesActivity;->G:I

    .line 12
    .line 13
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    const/4 v4, 0x2

    .line 23
    new-array v4, v4, [Ljava/lang/Object;

    .line 24
    .line 25
    aput-object v1, v4, v2

    .line 26
    .line 27
    const/4 v1, 0x1

    .line 28
    aput-object v3, v4, v1

    .line 29
    .line 30
    invoke-static {v0, v4}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const-wide/16 v3, 0x7d0

    .line 35
    .line 36
    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 37
    .line 38
    .line 39
    new-instance v1, LA3/a;

    .line 40
    .line 41
    const/4 v3, 0x4

    .line 42
    invoke-direct {v1, p0, v3}, LA3/a;-><init>(Ljava/lang/Object;I)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 49
    .line 50
    .line 51
    iput v2, p0, Lflix/com/vision/tv/TVCategoriesActivity;->G:I

    .line 52
    .line 53
    return-void
.end method

.method public updateFavoritesBar()V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lflix/com/vision/tv/TVCategoriesActivity;->p:Ljava/util/ArrayList;

    .line 3
    .line 4
    :try_start_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 5
    .line 6
    .line 7
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    iget-object v2, v2, Lflix/com/vision/App;->p:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    if-eqz v3, :cond_1

    .line 22
    .line 23
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    check-cast v3, Lflix/com/vision/tv/TVCategory;

    .line 28
    .line 29
    iget-object v4, p0, Lflix/com/vision/tv/TVCategoriesActivity;->F:Ljava/util/HashSet;

    .line 30
    .line 31
    invoke-virtual {v3}, Lflix/com/vision/tv/TVCategory;->getCategoryName()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    invoke-virtual {v4, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    if-eqz v4, :cond_0

    .line 40
    .line 41
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catch_0
    move-exception v1

    .line 46
    goto :goto_1

    .line 47
    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-nez v1, :cond_2

    .line 55
    .line 56
    iget-object v1, p0, Lflix/com/vision/tv/TVCategoriesActivity;->r:Landroid/widget/LinearLayout;

    .line 57
    .line 58
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 59
    .line 60
    .line 61
    iget-object v1, p0, Lflix/com/vision/tv/TVCategoriesActivity;->v:LC4/c0;

    .line 62
    .line 63
    invoke-virtual {v1}, Lm1/V;->notifyDataSetChanged()V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :cond_2
    iget-object v1, p0, Lflix/com/vision/tv/TVCategoriesActivity;->r:Landroid/widget/LinearLayout;

    .line 68
    .line 69
    const/16 v2, 0x8

    .line 70
    .line 71
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    const-string v3, "ERROR: "

    .line 78
    .line 79
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    invoke-static {p0, v1, v0}, Lh5/i;->makeToast(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 94
    .line 95
    .line 96
    return-void
.end method
