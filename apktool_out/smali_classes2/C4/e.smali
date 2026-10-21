.class public final synthetic LC4/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:I

.field public final synthetic f:Lm1/V;

.field public final synthetic j:Lm1/B0;


# direct methods
.method public synthetic constructor <init>(IILm1/V;Lm1/B0;)V
    .locals 0

    .line 1
    iput p2, p0, LC4/e;->b:I

    iput-object p3, p0, LC4/e;->f:Lm1/V;

    iput-object p4, p0, LC4/e;->j:Lm1/B0;

    iput p1, p0, LC4/e;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(LC4/u;ILC4/t;)V
    .locals 1

    .line 2
    const/4 v0, 0x1

    iput v0, p0, LC4/e;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LC4/e;->f:Lm1/V;

    iput p2, p0, LC4/e;->e:I

    iput-object p3, p0, LC4/e;->j:Lm1/B0;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 6

    .line 1
    iget v0, p0, LC4/e;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, LC4/e;->f:Lm1/V;

    .line 7
    .line 8
    check-cast p1, LC4/m0;

    .line 9
    .line 10
    iget-object p1, p1, LC4/m0;->g:Lflix/com/vision/activities/WatchedAcvivity;

    .line 11
    .line 12
    iget-object v0, p0, LC4/e;->j:Lm1/B0;

    .line 13
    .line 14
    check-cast v0, LC4/l0;

    .line 15
    .line 16
    iget-object v0, v0, LC4/l0;->u:Lflix/com/vision/models/Movie;

    .line 17
    .line 18
    iget v1, p0, LC4/e;->e:I

    .line 19
    .line 20
    invoke-virtual {p1, v0, v1}, Lflix/com/vision/activities/WatchedAcvivity;->showLongPressDialog(Lflix/com/vision/models/Movie;I)V

    .line 21
    .line 22
    .line 23
    const/4 p1, 0x1

    .line 24
    return p1

    .line 25
    :pswitch_0
    iget-object v0, p0, LC4/e;->f:Lm1/V;

    .line 26
    .line 27
    check-cast v0, LC4/P;

    .line 28
    .line 29
    new-instance v1, Lj/f;

    .line 30
    .line 31
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    sget v3, Landroidx/appcompat/R$style;->Theme_AppCompat_DayNight_NoActionBar:I

    .line 36
    .line 37
    invoke-direct {v1, v2, v3}, Lj/f;-><init>(Landroid/content/Context;I)V

    .line 38
    .line 39
    .line 40
    new-instance v2, Ll/v1;

    .line 41
    .line 42
    invoke-direct {v2, v1, p1}, Ll/v1;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 43
    .line 44
    .line 45
    iget-object p1, p0, LC4/e;->j:Lm1/B0;

    .line 46
    .line 47
    check-cast p1, LC4/O;

    .line 48
    .line 49
    iget-object p1, p1, LC4/O;->u:Lflix/com/vision/models/Movie;

    .line 50
    .line 51
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    iget-object v1, v1, Lflix/com/vision/App;->r:LP4/e;

    .line 56
    .line 57
    invoke-virtual {v1, p1}, LP4/e;->isMovieFavorited(Lflix/com/vision/models/Movie;)Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-nez v1, :cond_0

    .line 62
    .line 63
    invoke-virtual {v2}, Ll/v1;->getMenuInflater()Landroid/view/MenuInflater;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    sget v3, Lflix/com/vision/R$menu;->context_menu_add_fav_channels:I

    .line 68
    .line 69
    invoke-virtual {v2}, Ll/v1;->getMenu()Landroid/view/Menu;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    invoke-virtual {v1, v3, v4}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_0
    invoke-virtual {v2}, Ll/v1;->getMenuInflater()Landroid/view/MenuInflater;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    sget v3, Lflix/com/vision/R$menu;->context_menu_remove_fav_channels:I

    .line 82
    .line 83
    invoke-virtual {v2}, Ll/v1;->getMenu()Landroid/view/Menu;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    invoke-virtual {v1, v3, v4}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 88
    .line 89
    .line 90
    :goto_0
    new-instance v1, LC4/M;

    .line 91
    .line 92
    iget v3, p0, LC4/e;->e:I

    .line 93
    .line 94
    invoke-direct {v1, v0, p1, v3, v2}, LC4/M;-><init>(LC4/P;Lflix/com/vision/models/Movie;ILl/v1;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v2, v1}, Ll/v1;->setOnMenuItemClickListener(Ll/u1;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v2}, Ll/v1;->show()V

    .line 101
    .line 102
    .line 103
    const/4 p1, 0x1

    .line 104
    return p1

    .line 105
    :pswitch_1
    iget-object p1, p0, LC4/e;->f:Lm1/V;

    .line 106
    .line 107
    check-cast p1, LC4/B;

    .line 108
    .line 109
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 110
    .line 111
    .line 112
    iget-object v0, p0, LC4/e;->j:Lm1/B0;

    .line 113
    .line 114
    check-cast v0, LC4/A;

    .line 115
    .line 116
    iget-object v0, v0, LC4/A;->u:Lflix/com/vision/models/Drama;

    .line 117
    .line 118
    iget-object p1, p1, LC4/B;->e:Lflix/com/vision/activities/DramaHomeActivity;

    .line 119
    .line 120
    iget v0, p0, LC4/e;->e:I

    .line 121
    .line 122
    invoke-virtual {p1, v0}, Lflix/com/vision/activities/DramaHomeActivity;->onContinueLongPress(I)V

    .line 123
    .line 124
    .line 125
    const/4 p1, 0x1

    .line 126
    return p1

    .line 127
    :pswitch_2
    iget-object p1, p0, LC4/e;->f:Lm1/V;

    .line 128
    .line 129
    check-cast p1, LC4/u;

    .line 130
    .line 131
    iget-object v0, p1, LC4/u;->g:Lflix/com/vision/tv/ChannelsListActivity;

    .line 132
    .line 133
    if-eqz v0, :cond_1

    .line 134
    .line 135
    iget-object p1, p1, LC4/u;->h:Ljava/util/ArrayList;

    .line 136
    .line 137
    iget v1, p0, LC4/e;->e:I

    .line 138
    .line 139
    invoke-virtual {v0, v1, p1}, Lflix/com/vision/tv/ChannelsListActivity;->channelLongPress(ILjava/util/ArrayList;)V

    .line 140
    .line 141
    .line 142
    goto :goto_2

    .line 143
    :cond_1
    new-instance v0, Ll/v1;

    .line 144
    .line 145
    iget-object v1, p0, LC4/e;->j:Lm1/B0;

    .line 146
    .line 147
    check-cast v1, LC4/t;

    .line 148
    .line 149
    iget-object v2, v1, LC4/t;->v:Landroid/view/View;

    .line 150
    .line 151
    iget-object v3, p1, LC4/u;->f:Landroid/app/Activity;

    .line 152
    .line 153
    invoke-direct {v0, v3, v2}, Ll/v1;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 154
    .line 155
    .line 156
    iget-object v1, v1, LC4/t;->u:Lflix/com/vision/models/ChannelTv;

    .line 157
    .line 158
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 159
    .line 160
    .line 161
    move-result-object v2

    .line 162
    iget-object v2, v2, Lflix/com/vision/App;->r:LP4/e;

    .line 163
    .line 164
    invoke-virtual {v2, v1}, LP4/e;->isChannelFavorited(Lflix/com/vision/models/ChannelTv;)Z

    .line 165
    .line 166
    .line 167
    move-result v2

    .line 168
    if-nez v2, :cond_2

    .line 169
    .line 170
    invoke-virtual {v0}, Ll/v1;->getMenuInflater()Landroid/view/MenuInflater;

    .line 171
    .line 172
    .line 173
    move-result-object v2

    .line 174
    sget v3, Lflix/com/vision/R$menu;->context_menu_add_fav_channels:I

    .line 175
    .line 176
    invoke-virtual {v0}, Ll/v1;->getMenu()Landroid/view/Menu;

    .line 177
    .line 178
    .line 179
    move-result-object v4

    .line 180
    invoke-virtual {v2, v3, v4}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 181
    .line 182
    .line 183
    goto :goto_1

    .line 184
    :cond_2
    invoke-virtual {v0}, Ll/v1;->getMenuInflater()Landroid/view/MenuInflater;

    .line 185
    .line 186
    .line 187
    move-result-object v2

    .line 188
    sget v3, Lflix/com/vision/R$menu;->context_menu_remove_fav_channels:I

    .line 189
    .line 190
    invoke-virtual {v0}, Ll/v1;->getMenu()Landroid/view/Menu;

    .line 191
    .line 192
    .line 193
    move-result-object v4

    .line 194
    invoke-virtual {v2, v3, v4}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 195
    .line 196
    .line 197
    :goto_1
    new-instance v2, LC4/f;

    .line 198
    .line 199
    const/4 v3, 0x2

    .line 200
    invoke-direct {v2, p1, v1, v0, v3}, LC4/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v0, v2}, Ll/v1;->setOnMenuItemClickListener(Ll/u1;)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v0}, Ll/v1;->show()V

    .line 207
    .line 208
    .line 209
    :goto_2
    const/4 p1, 0x1

    .line 210
    return p1

    .line 211
    :pswitch_3
    iget-object p1, p0, LC4/e;->f:Lm1/V;

    .line 212
    .line 213
    check-cast p1, LC4/h;

    .line 214
    .line 215
    iget-object v0, p0, LC4/e;->j:Lm1/B0;

    .line 216
    .line 217
    check-cast v0, LC4/g;

    .line 218
    .line 219
    invoke-virtual {v0}, Lm1/B0;->getBindingAdapterPosition()I

    .line 220
    .line 221
    .line 222
    move-result v1

    .line 223
    iget-object v2, p1, LC4/h;->e:Landroid/app/Activity;

    .line 224
    .line 225
    instance-of v3, v2, Lflix/com/vision/activities/adult/AdultHistoryActivity;

    .line 226
    .line 227
    iget v4, p0, LC4/e;->e:I

    .line 228
    .line 229
    const/4 v5, -0x1

    .line 230
    if-eqz v3, :cond_3

    .line 231
    .line 232
    if-eq v1, v5, :cond_3

    .line 233
    .line 234
    check-cast v2, Lflix/com/vision/activities/adult/AdultHistoryActivity;

    .line 235
    .line 236
    invoke-virtual {v2, v4}, Lflix/com/vision/activities/adult/AdultHistoryActivity;->onHistoryLongPress(I)V

    .line 237
    .line 238
    .line 239
    goto :goto_4

    .line 240
    :cond_3
    instance-of v3, v2, Lflix/com/vision/activities/adult/AdultVideosFavoritesActivity;

    .line 241
    .line 242
    if-eqz v3, :cond_4

    .line 243
    .line 244
    if-eq v1, v5, :cond_4

    .line 245
    .line 246
    check-cast v2, Lflix/com/vision/activities/adult/AdultVideosFavoritesActivity;

    .line 247
    .line 248
    invoke-virtual {v2, v4}, Lflix/com/vision/activities/adult/AdultVideosFavoritesActivity;->onFavoritesLongPress(I)V

    .line 249
    .line 250
    .line 251
    goto :goto_4

    .line 252
    :cond_4
    :try_start_0
    new-instance v1, Ll/v1;

    .line 253
    .line 254
    iget-object v3, v0, LC4/g;->y:Landroid/view/View;

    .line 255
    .line 256
    invoke-direct {v1, v2, v3}, Ll/v1;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 257
    .line 258
    .line 259
    iget-object v0, v0, LC4/g;->u:Lflix/com/vision/models/adult/AdultVideo;

    .line 260
    .line 261
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 262
    .line 263
    .line 264
    move-result-object v2

    .line 265
    iget-object v2, v2, Lflix/com/vision/App;->r:LP4/e;

    .line 266
    .line 267
    invoke-virtual {v2, v0}, LP4/e;->isAdultVideoFavorited(Lflix/com/vision/models/adult/AdultVideo;)Z

    .line 268
    .line 269
    .line 270
    move-result v2

    .line 271
    if-nez v2, :cond_5

    .line 272
    .line 273
    invoke-virtual {v1}, Ll/v1;->getMenuInflater()Landroid/view/MenuInflater;

    .line 274
    .line 275
    .line 276
    move-result-object v2

    .line 277
    sget v3, Lflix/com/vision/R$menu;->context_menu_add_fav_channels:I

    .line 278
    .line 279
    invoke-virtual {v1}, Ll/v1;->getMenu()Landroid/view/Menu;

    .line 280
    .line 281
    .line 282
    move-result-object v4

    .line 283
    invoke-virtual {v2, v3, v4}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 284
    .line 285
    .line 286
    goto :goto_3

    .line 287
    :cond_5
    invoke-virtual {v1}, Ll/v1;->getMenuInflater()Landroid/view/MenuInflater;

    .line 288
    .line 289
    .line 290
    move-result-object v2

    .line 291
    sget v3, Lflix/com/vision/R$menu;->context_menu_remove_fav_channels:I

    .line 292
    .line 293
    invoke-virtual {v1}, Ll/v1;->getMenu()Landroid/view/Menu;

    .line 294
    .line 295
    .line 296
    move-result-object v4

    .line 297
    invoke-virtual {v2, v3, v4}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 298
    .line 299
    .line 300
    :goto_3
    new-instance v2, LC4/f;

    .line 301
    .line 302
    const/4 v3, 0x0

    .line 303
    invoke-direct {v2, p1, v0, v1, v3}, LC4/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 304
    .line 305
    .line 306
    invoke-virtual {v1, v2}, Ll/v1;->setOnMenuItemClickListener(Ll/u1;)V

    .line 307
    .line 308
    .line 309
    invoke-virtual {v1}, Ll/v1;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 310
    .line 311
    .line 312
    :catch_0
    :goto_4
    const/4 p1, 0x1

    .line 313
    return p1

    .line 314
    nop

    .line 315
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
