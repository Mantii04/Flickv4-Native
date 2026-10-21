.class public final synthetic Ly4/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:Lflix/com/vision/activities/AnimeDetailActivity;


# direct methods
.method public synthetic constructor <init>(Lflix/com/vision/activities/AnimeDetailActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Ly4/a;->b:I

    iput-object p1, p0, Ly4/a;->e:Lflix/com/vision/activities/AnimeDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .line 1
    const/4 p1, 0x0

    .line 2
    iget-object v0, p0, Ly4/a;->e:Lflix/com/vision/activities/AnimeDetailActivity;

    .line 3
    .line 4
    iget v1, p0, Ly4/a;->b:I

    .line 5
    .line 6
    packed-switch v1, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    sget v1, Lflix/com/vision/activities/AnimeDetailActivity;->D:I

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    iget-object v1, v1, Lflix/com/vision/App;->r:LP4/e;

    .line 19
    .line 20
    iget-object v2, v0, Lflix/com/vision/activities/AnimeDetailActivity;->t:Lflix/com/vision/models/Anime;

    .line 21
    .line 22
    invoke-virtual {v2}, Lflix/com/vision/models/Anime;->toMovie()Lflix/com/vision/models/Movie;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v1, v2}, LP4/e;->isMovieFavorited_ANIME(Lflix/com/vision/models/Movie;)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    const/16 v2, 0x50

    .line 31
    .line 32
    const/4 v3, 0x0

    .line 33
    if-nez v1, :cond_0

    .line 34
    .line 35
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    iget-object v1, v1, Lflix/com/vision/App;->r:LP4/e;

    .line 40
    .line 41
    iget-object v4, v0, Lflix/com/vision/activities/AnimeDetailActivity;->t:Lflix/com/vision/models/Anime;

    .line 42
    .line 43
    invoke-virtual {v4}, Lflix/com/vision/models/Anime;->toMovie()Lflix/com/vision/models/Movie;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    invoke-virtual {v1, v4}, LP4/e;->addMovieFavorites_Anime(Lflix/com/vision/models/Movie;)Z

    .line 48
    .line 49
    .line 50
    :try_start_0
    const-string v1, "Added to your Anime List"

    .line 51
    .line 52
    invoke-static {v0, v1, v3, v2, p1}, LN4/a;->Success(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .line 54
    .line 55
    :catch_0
    iget-object p1, v0, Lflix/com/vision/activities/AnimeDetailActivity;->b:Landroid/widget/ImageView;

    .line 56
    .line 57
    sget v0, Lflix/com/vision/R$drawable;->ic_delete_bookmark:I

    .line 58
    .line 59
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_0
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    iget-object v1, v1, Lflix/com/vision/App;->r:LP4/e;

    .line 68
    .line 69
    iget-object v4, v0, Lflix/com/vision/activities/AnimeDetailActivity;->t:Lflix/com/vision/models/Anime;

    .line 70
    .line 71
    invoke-virtual {v4}, Lflix/com/vision/models/Anime;->toMovie()Lflix/com/vision/models/Movie;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    invoke-virtual {v1, v4}, LP4/e;->deleteFavoriteMovie_ANIME(Lflix/com/vision/models/Movie;)V

    .line 76
    .line 77
    .line 78
    :try_start_1
    const-string v1, "Removed from your list"

    .line 79
    .line 80
    invoke-static {v0, v1, v3, v2, p1}, LN4/a;->Success(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 81
    .line 82
    .line 83
    :catch_1
    iget-object p1, v0, Lflix/com/vision/activities/AnimeDetailActivity;->b:Landroid/widget/ImageView;

    .line 84
    .line 85
    sget v0, Lflix/com/vision/R$drawable;->ic_bookmark:I

    .line 86
    .line 87
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 88
    .line 89
    .line 90
    :goto_0
    return-void

    .line 91
    :pswitch_0
    sget v1, Lflix/com/vision/activities/AnimeDetailActivity;->D:I

    .line 92
    .line 93
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 94
    .line 95
    .line 96
    :try_start_2
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    iget-object v1, v1, Lflix/com/vision/App;->r:LP4/e;

    .line 101
    .line 102
    iget-object v2, v0, Lflix/com/vision/activities/AnimeDetailActivity;->t:Lflix/com/vision/models/Anime;

    .line 103
    .line 104
    invoke-virtual {v2}, Lflix/com/vision/models/Anime;->toMovie()Lflix/com/vision/models/Movie;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    invoke-virtual {v1, v2}, LP4/e;->addMovieHistory_ANIME(Lflix/com/vision/models/Movie;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 109
    .line 110
    .line 111
    goto :goto_1

    .line 112
    :catch_2
    move-exception v1

    .line 113
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 114
    .line 115
    .line 116
    :goto_1
    new-instance v1, Landroid/content/Intent;

    .line 117
    .line 118
    const-class v2, Lflix/com/vision/activities/LinksActivity;

    .line 119
    .line 120
    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 121
    .line 122
    .line 123
    const-string v2, "server_index"

    .line 124
    .line 125
    iget v3, v0, Lflix/com/vision/activities/AnimeDetailActivity;->B:I

    .line 126
    .line 127
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 128
    .line 129
    .line 130
    iget-object v2, v0, Lflix/com/vision/activities/AnimeDetailActivity;->u:Ljava/util/ArrayList;

    .line 131
    .line 132
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v3

    .line 136
    check-cast v3, Lflix/com/vision/models/Episode;

    .line 137
    .line 138
    iget-object v3, v3, Lflix/com/vision/models/Episode;->url:Ljava/lang/String;

    .line 139
    .line 140
    const-string v4, "url"

    .line 141
    .line 142
    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 143
    .line 144
    .line 145
    iget-object v3, v0, Lflix/com/vision/activities/AnimeDetailActivity;->t:Lflix/com/vision/models/Anime;

    .line 146
    .line 147
    iget-object v3, v3, Lflix/com/vision/models/Anime;->image_url:Ljava/lang/String;

    .line 148
    .line 149
    const-string v4, "img_url"

    .line 150
    .line 151
    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 152
    .line 153
    .line 154
    iget-object v3, v0, Lflix/com/vision/activities/AnimeDetailActivity;->t:Lflix/com/vision/models/Anime;

    .line 155
    .line 156
    invoke-virtual {v3}, Lflix/com/vision/models/Anime;->toMovie()Lflix/com/vision/models/Movie;

    .line 157
    .line 158
    .line 159
    move-result-object v3

    .line 160
    const-string v4, "movie"

    .line 161
    .line 162
    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 163
    .line 164
    .line 165
    const-string v3, "episode_index"

    .line 166
    .line 167
    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 168
    .line 169
    .line 170
    const-string v3, "episode_number"

    .line 171
    .line 172
    const/4 v4, 0x1

    .line 173
    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 174
    .line 175
    .line 176
    new-instance v3, Ljava/lang/StringBuilder;

    .line 177
    .line 178
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 179
    .line 180
    .line 181
    iget-object v4, v0, Lflix/com/vision/activities/AnimeDetailActivity;->t:Lflix/com/vision/models/Anime;

    .line 182
    .line 183
    iget-object v4, v4, Lflix/com/vision/models/Anime;->title:Ljava/lang/String;

    .line 184
    .line 185
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    const-string v4, " - episode "

    .line 189
    .line 190
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object v4

    .line 197
    check-cast v4, Lflix/com/vision/models/Episode;

    .line 198
    .line 199
    iget-object v4, v4, Lflix/com/vision/models/Episode;->label:Ljava/lang/String;

    .line 200
    .line 201
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v3

    .line 208
    const-string v4, "title"

    .line 209
    .line 210
    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    move-result-object v3

    .line 217
    check-cast v3, Lflix/com/vision/models/Episode;

    .line 218
    .line 219
    iget-object v3, v3, Lflix/com/vision/models/Episode;->label:Ljava/lang/String;

    .line 220
    .line 221
    const-string v4, "episode"

    .line 222
    .line 223
    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 224
    .line 225
    .line 226
    iget-object v3, v0, Lflix/com/vision/activities/AnimeDetailActivity;->t:Lflix/com/vision/models/Anime;

    .line 227
    .line 228
    iget-object v3, v3, Lflix/com/vision/models/Anime;->title:Ljava/lang/String;

    .line 229
    .line 230
    const-string v5, "title_simple"

    .line 231
    .line 232
    invoke-virtual {v1, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 233
    .line 234
    .line 235
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    move-result-object p1

    .line 242
    check-cast p1, Lflix/com/vision/models/Episode;

    .line 243
    .line 244
    iget-object p1, p1, Lflix/com/vision/models/Episode;->label:Ljava/lang/String;

    .line 245
    .line 246
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 247
    .line 248
    .line 249
    move-result-object v1

    .line 250
    iget-object v1, v1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 251
    .line 252
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 253
    .line 254
    .line 255
    move-result-object v1

    .line 256
    new-instance v2, Ljava/lang/StringBuilder;

    .line 257
    .line 258
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 259
    .line 260
    .line 261
    iget-object v0, v0, Lflix/com/vision/activities/AnimeDetailActivity;->t:Lflix/com/vision/models/Anime;

    .line 262
    .line 263
    iget-object v0, v0, Lflix/com/vision/models/Anime;->url:Ljava/lang/String;

    .line 264
    .line 265
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v0

    .line 275
    invoke-interface {v1, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 276
    .line 277
    .line 278
    move-result-object p1

    .line 279
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 280
    .line 281
    .line 282
    return-void

    .line 283
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
