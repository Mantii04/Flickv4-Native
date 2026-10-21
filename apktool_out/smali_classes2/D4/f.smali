.class public final synthetic LD4/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Action;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:LD4/h;

.field public final synthetic f:Lflix/com/vision/models/Movie;

.field public final synthetic j:I

.field public final synthetic m:I


# direct methods
.method public synthetic constructor <init>(LD4/h;IILflix/com/vision/models/Movie;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, LD4/f;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LD4/f;->e:LD4/h;

    iput p2, p0, LD4/f;->j:I

    iput p3, p0, LD4/f;->m:I

    iput-object p4, p0, LD4/f;->f:Lflix/com/vision/models/Movie;

    return-void
.end method

.method public synthetic constructor <init>(LD4/h;Lflix/com/vision/models/Movie;II)V
    .locals 1

    .line 2
    const/4 v0, 0x1

    iput v0, p0, LD4/f;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LD4/f;->e:LD4/h;

    iput-object p2, p0, LD4/f;->f:Lflix/com/vision/models/Movie;

    iput p3, p0, LD4/f;->j:I

    iput p4, p0, LD4/f;->m:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget v0, p0, LD4/f;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, LD4/f;->e:LD4/h;

    .line 7
    .line 8
    invoke-virtual {v0}, LD4/h;->a()V

    .line 9
    .line 10
    .line 11
    iget-object v1, v0, LD4/h;->a:Lcom/uwetrottmann/trakt5/TraktV2;

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    goto/16 :goto_0

    .line 16
    .line 17
    :cond_0
    invoke-virtual {v1}, Lcom/uwetrottmann/trakt5/TraktV2;->checkin()Lcom/uwetrottmann/trakt5/services/Checkin;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-interface {v1}, Lcom/uwetrottmann/trakt5/services/Checkin;->deleteActiveCheckin()Lretrofit2/Call;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-interface {v1}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    .line 26
    .line 27
    .line 28
    iget-object v1, v0, LD4/h;->a:Lcom/uwetrottmann/trakt5/TraktV2;

    .line 29
    .line 30
    invoke-virtual {v1}, Lcom/uwetrottmann/trakt5/TraktV2;->seasons()Lcom/uwetrottmann/trakt5/services/Seasons;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    iget-object v2, p0, LD4/f;->f:Lflix/com/vision/models/Movie;

    .line 35
    .line 36
    invoke-virtual {v2}, Lflix/com/vision/models/Movie;->getImdbID()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    sget-object v4, Lcom/uwetrottmann/trakt5/enums/Extended;->EPISODES:Lcom/uwetrottmann/trakt5/enums/Extended;

    .line 41
    .line 42
    iget v5, p0, LD4/f;->j:I

    .line 43
    .line 44
    invoke-interface {v1, v3, v5, v4}, Lcom/uwetrottmann/trakt5/services/Seasons;->season(Ljava/lang/String;ILcom/uwetrottmann/trakt5/enums/Extended;)Lretrofit2/Call;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-interface {v1}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v1}, Lretrofit2/Response;->isSuccessful()Z

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    if-eqz v3, :cond_2

    .line 57
    .line 58
    invoke-virtual {v1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    if-eqz v3, :cond_2

    .line 63
    .line 64
    invoke-virtual {v1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    check-cast v1, Ljava/util/List;

    .line 69
    .line 70
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 75
    .line 76
    .line 77
    move-result v3

    .line 78
    if-eqz v3, :cond_2

    .line 79
    .line 80
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    check-cast v3, Lcom/uwetrottmann/trakt5/entities/Episode;

    .line 85
    .line 86
    iget-object v4, v3, Lcom/uwetrottmann/trakt5/entities/Episode;->number:Ljava/lang/Integer;

    .line 87
    .line 88
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 89
    .line 90
    .line 91
    move-result v4

    .line 92
    iget v6, p0, LD4/f;->m:I

    .line 93
    .line 94
    if-ne v4, v6, :cond_1

    .line 95
    .line 96
    new-instance v1, Lcom/uwetrottmann/trakt5/entities/EpisodeCheckin$Builder;

    .line 97
    .line 98
    new-instance v4, Lcom/uwetrottmann/trakt5/entities/SyncEpisode;

    .line 99
    .line 100
    invoke-direct {v4}, Lcom/uwetrottmann/trakt5/entities/SyncEpisode;-><init>()V

    .line 101
    .line 102
    .line 103
    iget-object v3, v3, Lcom/uwetrottmann/trakt5/entities/Episode;->ids:Lcom/uwetrottmann/trakt5/entities/EpisodeIds;

    .line 104
    .line 105
    invoke-virtual {v4, v3}, Lcom/uwetrottmann/trakt5/entities/SyncEpisode;->id(Lcom/uwetrottmann/trakt5/entities/EpisodeIds;)Lcom/uwetrottmann/trakt5/entities/SyncEpisode;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    invoke-static {}, Lorg/threeten/bp/OffsetDateTime;->now()Lorg/threeten/bp/OffsetDateTime;

    .line 110
    .line 111
    .line 112
    move-result-object v4

    .line 113
    invoke-virtual {v3, v4}, Lcom/uwetrottmann/trakt5/entities/SyncEpisode;->watchedAt(Lorg/threeten/bp/OffsetDateTime;)Lcom/uwetrottmann/trakt5/entities/SyncEpisode;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    const-string v4, "Flix Vision"

    .line 118
    .line 119
    const-string v7, ""

    .line 120
    .line 121
    invoke-direct {v1, v3, v4, v7}, Lcom/uwetrottmann/trakt5/entities/EpisodeCheckin$Builder;-><init>(Lcom/uwetrottmann/trakt5/entities/SyncEpisode;Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    new-instance v3, Ljava/lang/StringBuilder;

    .line 125
    .line 126
    const-string v4, "Watching "

    .line 127
    .line 128
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v2}, Lflix/com/vision/models/Movie;->getTitle()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    const-string v2, " S"

    .line 139
    .line 140
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    const-string v2, "E"

    .line 147
    .line 148
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v2

    .line 158
    invoke-virtual {v1, v2}, Lcom/uwetrottmann/trakt5/entities/EpisodeCheckin$Builder;->message(Ljava/lang/String;)Lcom/uwetrottmann/trakt5/entities/EpisodeCheckin$Builder;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    invoke-virtual {v1}, Lcom/uwetrottmann/trakt5/entities/EpisodeCheckin$Builder;->build()Lcom/uwetrottmann/trakt5/entities/EpisodeCheckin;

    .line 163
    .line 164
    .line 165
    move-result-object v1

    .line 166
    iget-object v0, v0, LD4/h;->a:Lcom/uwetrottmann/trakt5/TraktV2;

    .line 167
    .line 168
    invoke-virtual {v0}, Lcom/uwetrottmann/trakt5/TraktV2;->checkin()Lcom/uwetrottmann/trakt5/services/Checkin;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    invoke-interface {v0, v1}, Lcom/uwetrottmann/trakt5/services/Checkin;->checkin(Lcom/uwetrottmann/trakt5/entities/EpisodeCheckin;)Lretrofit2/Call;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    invoke-interface {v0}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    .line 177
    .line 178
    .line 179
    :cond_2
    :goto_0
    return-void

    .line 180
    :pswitch_0
    iget-object v0, p0, LD4/f;->e:LD4/h;

    .line 181
    .line 182
    invoke-virtual {v0}, LD4/h;->a()V

    .line 183
    .line 184
    .line 185
    iget-object v1, v0, LD4/h;->a:Lcom/uwetrottmann/trakt5/TraktV2;

    .line 186
    .line 187
    if-nez v1, :cond_3

    .line 188
    .line 189
    goto :goto_1

    .line 190
    :cond_3
    new-instance v1, Lcom/uwetrottmann/trakt5/entities/SyncItems;

    .line 191
    .line 192
    invoke-direct {v1}, Lcom/uwetrottmann/trakt5/entities/SyncItems;-><init>()V

    .line 193
    .line 194
    .line 195
    new-instance v2, Lcom/uwetrottmann/trakt5/entities/SyncEpisode;

    .line 196
    .line 197
    invoke-direct {v2}, Lcom/uwetrottmann/trakt5/entities/SyncEpisode;-><init>()V

    .line 198
    .line 199
    .line 200
    iget v3, p0, LD4/f;->j:I

    .line 201
    .line 202
    invoke-virtual {v2, v3}, Lcom/uwetrottmann/trakt5/entities/SyncEpisode;->number(I)Lcom/uwetrottmann/trakt5/entities/SyncEpisode;

    .line 203
    .line 204
    .line 205
    move-result-object v2

    .line 206
    new-instance v3, Lcom/uwetrottmann/trakt5/entities/SyncSeason;

    .line 207
    .line 208
    invoke-direct {v3}, Lcom/uwetrottmann/trakt5/entities/SyncSeason;-><init>()V

    .line 209
    .line 210
    .line 211
    iget v4, p0, LD4/f;->m:I

    .line 212
    .line 213
    invoke-virtual {v3, v4}, Lcom/uwetrottmann/trakt5/entities/SyncSeason;->number(I)Lcom/uwetrottmann/trakt5/entities/SyncSeason;

    .line 214
    .line 215
    .line 216
    move-result-object v3

    .line 217
    invoke-virtual {v3, v2}, Lcom/uwetrottmann/trakt5/entities/SyncSeason;->episodes(Lcom/uwetrottmann/trakt5/entities/SyncEpisode;)Lcom/uwetrottmann/trakt5/entities/SyncSeason;

    .line 218
    .line 219
    .line 220
    move-result-object v2

    .line 221
    new-instance v3, Lcom/uwetrottmann/trakt5/entities/SyncShow;

    .line 222
    .line 223
    invoke-direct {v3}, Lcom/uwetrottmann/trakt5/entities/SyncShow;-><init>()V

    .line 224
    .line 225
    .line 226
    iget-object v4, p0, LD4/f;->f:Lflix/com/vision/models/Movie;

    .line 227
    .line 228
    invoke-virtual {v4}, Lflix/com/vision/models/Movie;->getMovieId()J

    .line 229
    .line 230
    .line 231
    move-result-wide v4

    .line 232
    long-to-int v4, v4

    .line 233
    invoke-static {v4}, Lcom/uwetrottmann/trakt5/entities/ShowIds;->tmdb(I)Lcom/uwetrottmann/trakt5/entities/ShowIds;

    .line 234
    .line 235
    .line 236
    move-result-object v4

    .line 237
    invoke-virtual {v3, v4}, Lcom/uwetrottmann/trakt5/entities/SyncShow;->id(Lcom/uwetrottmann/trakt5/entities/ShowIds;)Lcom/uwetrottmann/trakt5/entities/SyncShow;

    .line 238
    .line 239
    .line 240
    move-result-object v3

    .line 241
    invoke-virtual {v3, v2}, Lcom/uwetrottmann/trakt5/entities/SyncShow;->seasons(Lcom/uwetrottmann/trakt5/entities/SyncSeason;)Lcom/uwetrottmann/trakt5/entities/SyncShow;

    .line 242
    .line 243
    .line 244
    move-result-object v2

    .line 245
    invoke-virtual {v1, v2}, Lcom/uwetrottmann/trakt5/entities/SyncItems;->shows(Lcom/uwetrottmann/trakt5/entities/SyncShow;)Lcom/uwetrottmann/trakt5/entities/SyncItems;

    .line 246
    .line 247
    .line 248
    iget-object v0, v0, LD4/h;->a:Lcom/uwetrottmann/trakt5/TraktV2;

    .line 249
    .line 250
    invoke-virtual {v0}, Lcom/uwetrottmann/trakt5/TraktV2;->sync()Lcom/uwetrottmann/trakt5/services/Sync;

    .line 251
    .line 252
    .line 253
    move-result-object v0

    .line 254
    invoke-interface {v0, v1}, Lcom/uwetrottmann/trakt5/services/Sync;->addItemsToWatchedHistory(Lcom/uwetrottmann/trakt5/entities/SyncItems;)Lretrofit2/Call;

    .line 255
    .line 256
    .line 257
    move-result-object v0

    .line 258
    invoke-interface {v0}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    .line 259
    .line 260
    .line 261
    move-result-object v0

    .line 262
    invoke-virtual {v0}, Lretrofit2/Response;->isSuccessful()Z

    .line 263
    .line 264
    .line 265
    move-result v1

    .line 266
    if-eqz v1, :cond_4

    .line 267
    .line 268
    :goto_1
    return-void

    .line 269
    :cond_4
    new-instance v1, Ljava/io/IOException;

    .line 270
    .line 271
    new-instance v2, Ljava/lang/StringBuilder;

    .line 272
    .line 273
    const-string v3, "Trakt Error: "

    .line 274
    .line 275
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 276
    .line 277
    .line 278
    invoke-virtual {v0}, Lretrofit2/Response;->code()I

    .line 279
    .line 280
    .line 281
    move-result v0

    .line 282
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v0

    .line 289
    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 290
    .line 291
    .line 292
    throw v1

    .line 293
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
