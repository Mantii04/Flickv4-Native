.class public final synthetic LA4/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, LA4/s;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lflix/com/vision/activities/TraktActivity;I)V
    .locals 0

    .line 2
    iput p2, p0, LA4/s;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, "en"

    .line 3
    .line 4
    const-string v2, ""

    .line 5
    .line 6
    iget v3, p0, LA4/s;->b:I

    .line 7
    .line 8
    packed-switch v3, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    sget v0, Lflix/com/vision/activities/TraktActivity;->u:I

    .line 12
    .line 13
    instance-of v0, p1, Lcom/uwetrottmann/trakt5/entities/BaseMovie;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    check-cast p1, Lcom/uwetrottmann/trakt5/entities/BaseMovie;

    .line 18
    .line 19
    iget-object p1, p1, Lcom/uwetrottmann/trakt5/entities/BaseMovie;->movie:Lcom/uwetrottmann/trakt5/entities/Movie;

    .line 20
    .line 21
    invoke-static {p1}, Lflix/com/vision/activities/TraktActivity;->f(Lcom/uwetrottmann/trakt5/entities/Movie;)Lflix/com/vision/models/Movie;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    instance-of v0, p1, Lcom/uwetrottmann/trakt5/entities/BaseShow;

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    check-cast p1, Lcom/uwetrottmann/trakt5/entities/BaseShow;

    .line 31
    .line 32
    iget-object p1, p1, Lcom/uwetrottmann/trakt5/entities/BaseShow;->show:Lcom/uwetrottmann/trakt5/entities/Show;

    .line 33
    .line 34
    invoke-static {p1}, Lflix/com/vision/activities/TraktActivity;->g(Lcom/uwetrottmann/trakt5/entities/Show;)Lflix/com/vision/models/Movie;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    new-instance p1, Lflix/com/vision/models/Movie;

    .line 40
    .line 41
    invoke-direct {p1}, Lflix/com/vision/models/Movie;-><init>()V

    .line 42
    .line 43
    .line 44
    :goto_0
    return-object p1

    .line 45
    :pswitch_0
    check-cast p1, Ljava/util/List;

    .line 46
    .line 47
    sget v0, Lflix/com/vision/activities/TraktActivity;->u:I

    .line 48
    .line 49
    return-object p1

    .line 50
    :pswitch_1
    check-cast p1, Lcom/uwetrottmann/trakt5/entities/HistoryEntry;

    .line 51
    .line 52
    sget v0, Lflix/com/vision/activities/TraktActivity;->u:I

    .line 53
    .line 54
    iget-object v0, p1, Lcom/uwetrottmann/trakt5/entities/HistoryEntry;->movie:Lcom/uwetrottmann/trakt5/entities/Movie;

    .line 55
    .line 56
    if-eqz v0, :cond_2

    .line 57
    .line 58
    invoke-static {v0}, Lflix/com/vision/activities/TraktActivity;->f(Lcom/uwetrottmann/trakt5/entities/Movie;)Lflix/com/vision/models/Movie;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    goto :goto_1

    .line 63
    :cond_2
    iget-object v0, p1, Lcom/uwetrottmann/trakt5/entities/HistoryEntry;->episode:Lcom/uwetrottmann/trakt5/entities/Episode;

    .line 64
    .line 65
    if-eqz v0, :cond_3

    .line 66
    .line 67
    iget-object v0, p1, Lcom/uwetrottmann/trakt5/entities/HistoryEntry;->show:Lcom/uwetrottmann/trakt5/entities/Show;

    .line 68
    .line 69
    if-eqz v0, :cond_3

    .line 70
    .line 71
    invoke-static {v0}, Lflix/com/vision/activities/TraktActivity;->g(Lcom/uwetrottmann/trakt5/entities/Show;)Lflix/com/vision/models/Movie;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    new-instance v1, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .line 79
    .line 80
    iget-object v2, p1, Lcom/uwetrottmann/trakt5/entities/HistoryEntry;->show:Lcom/uwetrottmann/trakt5/entities/Show;

    .line 81
    .line 82
    iget-object v2, v2, Lcom/uwetrottmann/trakt5/entities/BaseEntity;->title:Ljava/lang/String;

    .line 83
    .line 84
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    const-string v2, " - S"

    .line 88
    .line 89
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    iget-object v2, p1, Lcom/uwetrottmann/trakt5/entities/HistoryEntry;->episode:Lcom/uwetrottmann/trakt5/entities/Episode;

    .line 93
    .line 94
    iget-object v2, v2, Lcom/uwetrottmann/trakt5/entities/Episode;->season:Ljava/lang/Integer;

    .line 95
    .line 96
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    const-string v2, "E"

    .line 100
    .line 101
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    iget-object p1, p1, Lcom/uwetrottmann/trakt5/entities/HistoryEntry;->episode:Lcom/uwetrottmann/trakt5/entities/Episode;

    .line 105
    .line 106
    iget-object p1, p1, Lcom/uwetrottmann/trakt5/entities/Episode;->number:Ljava/lang/Integer;

    .line 107
    .line 108
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-virtual {v0, p1}, Lflix/com/vision/models/Movie;->setTitle(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    move-object p1, v0

    .line 119
    goto :goto_1

    .line 120
    :cond_3
    new-instance p1, Lflix/com/vision/models/Movie;

    .line 121
    .line 122
    invoke-direct {p1}, Lflix/com/vision/models/Movie;-><init>()V

    .line 123
    .line 124
    .line 125
    :goto_1
    return-object p1

    .line 126
    :pswitch_2
    check-cast p1, Lflix/com/vision/models/TmdbImagesResponse;

    .line 127
    .line 128
    sget v3, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->a1:I

    .line 129
    .line 130
    iget-object v3, p1, Lflix/com/vision/models/TmdbImagesResponse;->logos:Ljava/util/List;

    .line 131
    .line 132
    if-eqz v3, :cond_7

    .line 133
    .line 134
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 135
    .line 136
    .line 137
    move-result v3

    .line 138
    if-eqz v3, :cond_4

    .line 139
    .line 140
    goto :goto_2

    .line 141
    :cond_4
    iget-object v2, p1, Lflix/com/vision/models/TmdbImagesResponse;->logos:Ljava/util/List;

    .line 142
    .line 143
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 148
    .line 149
    .line 150
    move-result v3

    .line 151
    if-eqz v3, :cond_6

    .line 152
    .line 153
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v3

    .line 157
    check-cast v3, Lflix/com/vision/models/TmdbImagesResponse$TmdbLogo;

    .line 158
    .line 159
    iget-object v4, v3, Lflix/com/vision/models/TmdbImagesResponse$TmdbLogo;->language:Ljava/lang/String;

    .line 160
    .line 161
    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 162
    .line 163
    .line 164
    move-result v4

    .line 165
    if-eqz v4, :cond_5

    .line 166
    .line 167
    iget-object v4, v3, Lflix/com/vision/models/TmdbImagesResponse$TmdbLogo;->filePath:Ljava/lang/String;

    .line 168
    .line 169
    if-eqz v4, :cond_5

    .line 170
    .line 171
    const-string v5, "png"

    .line 172
    .line 173
    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 174
    .line 175
    .line 176
    move-result v4

    .line 177
    if-eqz v4, :cond_5

    .line 178
    .line 179
    iget-object v2, v3, Lflix/com/vision/models/TmdbImagesResponse$TmdbLogo;->filePath:Ljava/lang/String;

    .line 180
    .line 181
    goto :goto_2

    .line 182
    :cond_6
    iget-object p1, p1, Lflix/com/vision/models/TmdbImagesResponse;->logos:Ljava/util/List;

    .line 183
    .line 184
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object p1

    .line 188
    check-cast p1, Lflix/com/vision/models/TmdbImagesResponse$TmdbLogo;

    .line 189
    .line 190
    iget-object v2, p1, Lflix/com/vision/models/TmdbImagesResponse$TmdbLogo;->filePath:Ljava/lang/String;

    .line 191
    .line 192
    :cond_7
    :goto_2
    return-object v2

    .line 193
    :pswitch_3
    check-cast p1, Ljava/lang/String;

    .line 194
    .line 195
    new-instance v0, LZ4/k;

    .line 196
    .line 197
    const/4 v1, 0x1

    .line 198
    invoke-direct {v0, p1, v1}, LZ4/k;-><init>(Ljava/lang/String;I)V

    .line 199
    .line 200
    .line 201
    invoke-static {v0}, Lio/reactivex/Observable;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/Observable;

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    .line 210
    .line 211
    .line 212
    move-result-object p1

    .line 213
    return-object p1

    .line 214
    :pswitch_4
    check-cast p1, Lcom/google/gson/JsonElement;

    .line 215
    .line 216
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->isJsonObject()Z

    .line 217
    .line 218
    .line 219
    move-result v0

    .line 220
    if-eqz v0, :cond_8

    .line 221
    .line 222
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    const-string v1, "poster_path"

    .line 227
    .line 228
    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    .line 229
    .line 230
    .line 231
    move-result v0

    .line 232
    if-eqz v0, :cond_8

    .line 233
    .line 234
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 235
    .line 236
    .line 237
    move-result-object p1

    .line 238
    invoke-virtual {p1, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 239
    .line 240
    .line 241
    move-result-object p1

    .line 242
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object p1

    .line 246
    const-string v0, "https://image.tmdb.org/t/p/w185"

    .line 247
    .line 248
    invoke-static {v0, p1}, LA/i;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v2

    .line 252
    :cond_8
    return-object v2

    .line 253
    :pswitch_5
    check-cast p1, Lflix/com/vision/models/TmdbImagesResponse;

    .line 254
    .line 255
    sget v3, Lflix/com/vision/activities/leanback/SlideshowActivity;->v:I

    .line 256
    .line 257
    iget-object v3, p1, Lflix/com/vision/models/TmdbImagesResponse;->logos:Ljava/util/List;

    .line 258
    .line 259
    if-eqz v3, :cond_c

    .line 260
    .line 261
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 262
    .line 263
    .line 264
    move-result v3

    .line 265
    if-eqz v3, :cond_9

    .line 266
    .line 267
    goto :goto_3

    .line 268
    :cond_9
    iget-object v2, p1, Lflix/com/vision/models/TmdbImagesResponse;->logos:Ljava/util/List;

    .line 269
    .line 270
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 271
    .line 272
    .line 273
    move-result-object v2

    .line 274
    :cond_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 275
    .line 276
    .line 277
    move-result v3

    .line 278
    if-eqz v3, :cond_b

    .line 279
    .line 280
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 281
    .line 282
    .line 283
    move-result-object v3

    .line 284
    check-cast v3, Lflix/com/vision/models/TmdbImagesResponse$TmdbLogo;

    .line 285
    .line 286
    iget-object v4, v3, Lflix/com/vision/models/TmdbImagesResponse$TmdbLogo;->language:Ljava/lang/String;

    .line 287
    .line 288
    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 289
    .line 290
    .line 291
    move-result v4

    .line 292
    if-eqz v4, :cond_a

    .line 293
    .line 294
    iget-object v2, v3, Lflix/com/vision/models/TmdbImagesResponse$TmdbLogo;->filePath:Ljava/lang/String;

    .line 295
    .line 296
    goto :goto_3

    .line 297
    :cond_b
    iget-object p1, p1, Lflix/com/vision/models/TmdbImagesResponse;->logos:Ljava/util/List;

    .line 298
    .line 299
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 300
    .line 301
    .line 302
    move-result-object p1

    .line 303
    check-cast p1, Lflix/com/vision/models/TmdbImagesResponse$TmdbLogo;

    .line 304
    .line 305
    iget-object v2, p1, Lflix/com/vision/models/TmdbImagesResponse$TmdbLogo;->filePath:Ljava/lang/String;

    .line 306
    .line 307
    :cond_c
    :goto_3
    return-object v2

    .line 308
    nop

    .line 309
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
