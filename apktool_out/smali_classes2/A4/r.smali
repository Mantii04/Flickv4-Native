.class public LA4/r;
.super Landroidx/fragment/app/y;
.source "SourceFile"


# instance fields
.field public v0:Lflix/com/vision/models/Movie;

.field public w0:Ljava/lang/String;

.field public x0:Ljava/lang/String;

.field public y0:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/y;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static newInstance(Lflix/com/vision/models/Movie;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)LA4/r;
    .locals 1

    .line 1
    new-instance v0, LA4/r;

    .line 2
    .line 3
    invoke-direct {v0}, LA4/r;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p0, v0, LA4/r;->v0:Lflix/com/vision/models/Movie;

    .line 7
    .line 8
    iput-object p1, v0, LA4/r;->w0:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p2, v0, LA4/r;->x0:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p3, v0, LA4/r;->y0:Ljava/lang/String;

    .line 13
    .line 14
    return-object v0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11

    .line 1
    sget p3, Lflix/com/vision/R$layout;->dialog_movie_info_tv:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    sget p2, Lflix/com/vision/R$id;->dialog_movie_title:I

    .line 9
    .line 10
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    check-cast p2, Landroid/widget/TextView;

    .line 15
    .line 16
    sget p3, Lflix/com/vision/R$id;->dialog_movie_plot:I

    .line 17
    .line 18
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object p3

    .line 22
    check-cast p3, Landroid/widget/TextView;

    .line 23
    .line 24
    sget v1, Lflix/com/vision/R$id;->dialog_duration:I

    .line 25
    .line 26
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Landroid/widget/TextView;

    .line 31
    .line 32
    sget v2, Lflix/com/vision/R$id;->dialog_release_date:I

    .line 33
    .line 34
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    check-cast v2, Landroid/widget/TextView;

    .line 39
    .line 40
    sget v3, Lflix/com/vision/R$id;->dialog_genre:I

    .line 41
    .line 42
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    check-cast v3, Landroid/widget/TextView;

    .line 47
    .line 48
    sget v4, Lflix/com/vision/R$id;->dialog_rating:I

    .line 49
    .line 50
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    check-cast v4, Landroid/widget/TextView;

    .line 55
    .line 56
    sget v5, Lflix/com/vision/R$id;->dialog_writers:I

    .line 57
    .line 58
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    check-cast v5, Landroid/widget/TextView;

    .line 63
    .line 64
    sget v6, Lflix/com/vision/R$id;->dialog_production:I

    .line 65
    .line 66
    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 67
    .line 68
    .line 69
    move-result-object v6

    .line 70
    check-cast v6, Landroid/widget/TextView;

    .line 71
    .line 72
    sget v7, Lflix/com/vision/R$id;->dialog_director:I

    .line 73
    .line 74
    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 75
    .line 76
    .line 77
    move-result-object v7

    .line 78
    check-cast v7, Landroid/widget/TextView;

    .line 79
    .line 80
    sget v8, Lflix/com/vision/R$id;->dialog_cast:I

    .line 81
    .line 82
    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 83
    .line 84
    .line 85
    move-result-object v8

    .line 86
    check-cast v8, Landroid/widget/TextView;

    .line 87
    .line 88
    sget v9, Lflix/com/vision/R$id;->dialog_title_logo:I

    .line 89
    .line 90
    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 91
    .line 92
    .line 93
    move-result-object v9

    .line 94
    check-cast v9, Landroid/widget/ImageView;

    .line 95
    .line 96
    iget-object v10, p0, LA4/r;->v0:Lflix/com/vision/models/Movie;

    .line 97
    .line 98
    if-eqz v10, :cond_9

    .line 99
    .line 100
    invoke-virtual {v10}, Lflix/com/vision/models/Movie;->getTitle()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v10

    .line 104
    invoke-virtual {p2, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    .line 106
    .line 107
    iget-object v10, p0, LA4/r;->v0:Lflix/com/vision/models/Movie;

    .line 108
    .line 109
    invoke-virtual {v10}, Lflix/com/vision/models/Movie;->getOverview()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v10

    .line 113
    invoke-virtual {p3, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    .line 115
    .line 116
    iget-object p3, p0, LA4/r;->v0:Lflix/com/vision/models/Movie;

    .line 117
    .line 118
    iget-object p3, p3, Lflix/com/vision/models/Movie;->rawReleaseDate:Ljava/lang/String;

    .line 119
    .line 120
    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    .line 122
    .line 123
    iget-object p3, p0, LA4/r;->v0:Lflix/com/vision/models/Movie;

    .line 124
    .line 125
    invoke-virtual {p3}, Lflix/com/vision/models/Movie;->getGenres()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p3

    .line 129
    if-eqz p3, :cond_0

    .line 130
    .line 131
    const-string v2, ", "

    .line 132
    .line 133
    invoke-virtual {p3, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 134
    .line 135
    .line 136
    move-result v2

    .line 137
    if-eqz v2, :cond_0

    .line 138
    .line 139
    const/4 v2, 0x2

    .line 140
    invoke-static {v2, v0, p3}, LA/i;->d(IILjava/lang/String;)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p3

    .line 144
    :cond_0
    const-string v2, "Unknown"

    .line 145
    .line 146
    if-eqz p3, :cond_1

    .line 147
    .line 148
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    .line 149
    .line 150
    .line 151
    move-result v10

    .line 152
    if-nez v10, :cond_1

    .line 153
    .line 154
    goto :goto_0

    .line 155
    :cond_1
    move-object p3, v2

    .line 156
    :goto_0
    invoke-virtual {v3, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    .line 158
    .line 159
    iget-object p3, p0, LA4/r;->v0:Lflix/com/vision/models/Movie;

    .line 160
    .line 161
    iget-object p3, p3, Lflix/com/vision/models/Movie;->certification:Ljava/lang/String;

    .line 162
    .line 163
    const-string v3, "N/A"

    .line 164
    .line 165
    if-eqz p3, :cond_2

    .line 166
    .line 167
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    .line 168
    .line 169
    .line 170
    move-result v10

    .line 171
    if-nez v10, :cond_2

    .line 172
    .line 173
    goto :goto_1

    .line 174
    :cond_2
    move-object p3, v3

    .line 175
    :goto_1
    invoke-virtual {v4, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    .line 177
    .line 178
    iget-object p3, p0, LA4/r;->v0:Lflix/com/vision/models/Movie;

    .line 179
    .line 180
    iget-object p3, p3, Lflix/com/vision/models/Movie;->writers:Ljava/lang/String;

    .line 181
    .line 182
    if-eqz p3, :cond_3

    .line 183
    .line 184
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    .line 185
    .line 186
    .line 187
    move-result v4

    .line 188
    if-nez v4, :cond_3

    .line 189
    .line 190
    goto :goto_2

    .line 191
    :cond_3
    move-object p3, v2

    .line 192
    :goto_2
    invoke-virtual {v5, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    .line 194
    .line 195
    iget-object p3, p0, LA4/r;->v0:Lflix/com/vision/models/Movie;

    .line 196
    .line 197
    invoke-virtual {p3}, Lflix/com/vision/models/Movie;->getProduction()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object p3

    .line 201
    if-eqz p3, :cond_4

    .line 202
    .line 203
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object p3

    .line 207
    :cond_4
    if-eqz p3, :cond_5

    .line 208
    .line 209
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    .line 210
    .line 211
    .line 212
    move-result v4

    .line 213
    if-nez v4, :cond_5

    .line 214
    .line 215
    goto :goto_3

    .line 216
    :cond_5
    move-object p3, v2

    .line 217
    :goto_3
    invoke-virtual {v6, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    .line 219
    .line 220
    iget-object p3, p0, LA4/r;->v0:Lflix/com/vision/models/Movie;

    .line 221
    .line 222
    invoke-virtual {p3}, Lflix/com/vision/models/Movie;->getDuration()I

    .line 223
    .line 224
    .line 225
    move-result p3

    .line 226
    if-lez p3, :cond_6

    .line 227
    .line 228
    new-instance p3, Ljava/lang/StringBuilder;

    .line 229
    .line 230
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 231
    .line 232
    .line 233
    iget-object v3, p0, LA4/r;->v0:Lflix/com/vision/models/Movie;

    .line 234
    .line 235
    invoke-virtual {v3}, Lflix/com/vision/models/Movie;->getDuration()I

    .line 236
    .line 237
    .line 238
    move-result v3

    .line 239
    div-int/lit8 v3, v3, 0x3c

    .line 240
    .line 241
    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    const-string v3, "h "

    .line 245
    .line 246
    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    iget-object v3, p0, LA4/r;->v0:Lflix/com/vision/models/Movie;

    .line 250
    .line 251
    invoke-virtual {v3}, Lflix/com/vision/models/Movie;->getDuration()I

    .line 252
    .line 253
    .line 254
    move-result v3

    .line 255
    rem-int/lit8 v3, v3, 0x3c

    .line 256
    .line 257
    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    const-string v3, "m"

    .line 261
    .line 262
    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object p3

    .line 269
    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 270
    .line 271
    .line 272
    goto :goto_4

    .line 273
    :cond_6
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 274
    .line 275
    .line 276
    :goto_4
    iget-object p3, p0, LA4/r;->w0:Ljava/lang/String;

    .line 277
    .line 278
    if-eqz p3, :cond_7

    .line 279
    .line 280
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    .line 281
    .line 282
    .line 283
    move-result p3

    .line 284
    if-nez p3, :cond_7

    .line 285
    .line 286
    iget-object p3, p0, LA4/r;->w0:Ljava/lang/String;

    .line 287
    .line 288
    goto :goto_5

    .line 289
    :cond_7
    move-object p3, v2

    .line 290
    :goto_5
    invoke-virtual {v7, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 291
    .line 292
    .line 293
    iget-object p3, p0, LA4/r;->x0:Ljava/lang/String;

    .line 294
    .line 295
    if-eqz p3, :cond_8

    .line 296
    .line 297
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    .line 298
    .line 299
    .line 300
    move-result p3

    .line 301
    if-nez p3, :cond_8

    .line 302
    .line 303
    iget-object v2, p0, LA4/r;->x0:Ljava/lang/String;

    .line 304
    .line 305
    :cond_8
    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 306
    .line 307
    .line 308
    iget-object p3, p0, LA4/r;->y0:Ljava/lang/String;

    .line 309
    .line 310
    if-eqz p3, :cond_9

    .line 311
    .line 312
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    .line 313
    .line 314
    .line 315
    move-result p3

    .line 316
    if-nez p3, :cond_9

    .line 317
    .line 318
    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 319
    .line 320
    .line 321
    const/16 p3, 0x8

    .line 322
    .line 323
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 324
    .line 325
    .line 326
    invoke-static {}, Lm4/D;->get()Lm4/D;

    .line 327
    .line 328
    .line 329
    move-result-object p2

    .line 330
    iget-object p3, p0, LA4/r;->y0:Ljava/lang/String;

    .line 331
    .line 332
    invoke-virtual {p2, p3}, Lm4/D;->load(Ljava/lang/String;)Lm4/J;

    .line 333
    .line 334
    .line 335
    move-result-object p2

    .line 336
    invoke-virtual {p2, v9}, Lm4/J;->into(Landroid/widget/ImageView;)V

    .line 337
    .line 338
    .line 339
    :cond_9
    return-object p1
.end method

.method public onStart()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/y;->onStart()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/y;->getDialog()Landroid/app/Dialog;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const/4 v2, -0x1

    .line 21
    invoke-virtual {v1, v2, v2}, Landroid/view/Window;->setLayout(II)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    .line 29
    .line 30
    const/4 v3, 0x0

    .line 31
    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    sget v1, Lflix/com/vision/R$style;->DialogFadeAnimation:I

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 44
    .line 45
    .line 46
    :cond_0
    return-void
.end method
