.class public final synthetic LD4/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Action;


# instance fields
.field public final synthetic b:LD4/h;

.field public final synthetic e:Lflix/com/vision/models/Movie;

.field public final synthetic f:I

.field public final synthetic j:I

.field public final synthetic m:F

.field public final synthetic n:Lflix/com/vision/api/TraktAPI$ScrobbleState;


# direct methods
.method public synthetic constructor <init>(LD4/h;Lflix/com/vision/models/Movie;IIFLflix/com/vision/api/TraktAPI$ScrobbleState;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LD4/d;->b:LD4/h;

    iput-object p2, p0, LD4/d;->e:Lflix/com/vision/models/Movie;

    iput p3, p0, LD4/d;->f:I

    iput p4, p0, LD4/d;->j:I

    iput p5, p0, LD4/d;->m:F

    iput-object p6, p0, LD4/d;->n:Lflix/com/vision/api/TraktAPI$ScrobbleState;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 1
    iget-object v0, p0, LD4/d;->b:LD4/h;

    .line 2
    .line 3
    invoke-virtual {v0}, LD4/h;->a()V

    .line 4
    .line 5
    .line 6
    iget-object v1, v0, LD4/h;->a:Lcom/uwetrottmann/trakt5/TraktV2;

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget-object v1, p0, LD4/d;->e:Lflix/com/vision/models/Movie;

    .line 12
    .line 13
    invoke-virtual {v1}, Lflix/com/vision/models/Movie;->getMovieId()J

    .line 14
    .line 15
    .line 16
    move-result-wide v2

    .line 17
    const-wide/16 v4, 0x0

    .line 18
    .line 19
    cmp-long v2, v2, v4

    .line 20
    .line 21
    const-string v3, "TraktAPI"

    .line 22
    .line 23
    if-gtz v2, :cond_1

    .line 24
    .line 25
    const-string v0, "Aborting scrobble: Movie/Show has no TMDB ID."

    .line 26
    .line 27
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    invoke-virtual {v1}, Lflix/com/vision/models/Movie;->isSeries()Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    iget v4, p0, LD4/d;->m:F

    .line 36
    .line 37
    const-string v9, "2.9"

    .line 38
    .line 39
    const-string v10, "2024-10-01"

    .line 40
    .line 41
    if-eqz v2, :cond_2

    .line 42
    .line 43
    new-instance v2, Lcom/uwetrottmann/trakt5/entities/SyncEpisode;

    .line 44
    .line 45
    invoke-direct {v2}, Lcom/uwetrottmann/trakt5/entities/SyncEpisode;-><init>()V

    .line 46
    .line 47
    .line 48
    iget v5, p0, LD4/d;->f:I

    .line 49
    .line 50
    invoke-virtual {v2, v5}, Lcom/uwetrottmann/trakt5/entities/SyncEpisode;->season(I)Lcom/uwetrottmann/trakt5/entities/SyncEpisode;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    iget v5, p0, LD4/d;->j:I

    .line 55
    .line 56
    invoke-virtual {v2, v5}, Lcom/uwetrottmann/trakt5/entities/SyncEpisode;->number(I)Lcom/uwetrottmann/trakt5/entities/SyncEpisode;

    .line 57
    .line 58
    .line 59
    move-result-object v6

    .line 60
    new-instance v5, Lcom/uwetrottmann/trakt5/entities/ScrobbleProgress;

    .line 61
    .line 62
    float-to-double v7, v4

    .line 63
    invoke-direct/range {v5 .. v10}, Lcom/uwetrottmann/trakt5/entities/ScrobbleProgress;-><init>(Lcom/uwetrottmann/trakt5/entities/SyncEpisode;DLjava/lang/String;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    new-instance v2, Lcom/uwetrottmann/trakt5/entities/SyncShow;

    .line 67
    .line 68
    invoke-direct {v2}, Lcom/uwetrottmann/trakt5/entities/SyncShow;-><init>()V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1}, Lflix/com/vision/models/Movie;->getMovieId()J

    .line 72
    .line 73
    .line 74
    move-result-wide v6

    .line 75
    long-to-int v1, v6

    .line 76
    invoke-static {v1}, Lcom/uwetrottmann/trakt5/entities/ShowIds;->tmdb(I)Lcom/uwetrottmann/trakt5/entities/ShowIds;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-virtual {v2, v1}, Lcom/uwetrottmann/trakt5/entities/SyncShow;->id(Lcom/uwetrottmann/trakt5/entities/ShowIds;)Lcom/uwetrottmann/trakt5/entities/SyncShow;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    iput-object v1, v5, Lcom/uwetrottmann/trakt5/entities/GenericProgress;->show:Lcom/uwetrottmann/trakt5/entities/SyncShow;

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_2
    new-instance v2, Lcom/uwetrottmann/trakt5/entities/SyncMovie;

    .line 88
    .line 89
    invoke-direct {v2}, Lcom/uwetrottmann/trakt5/entities/SyncMovie;-><init>()V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1}, Lflix/com/vision/models/Movie;->getMovieId()J

    .line 93
    .line 94
    .line 95
    move-result-wide v5

    .line 96
    long-to-int v1, v5

    .line 97
    invoke-static {v1}, Lcom/uwetrottmann/trakt5/entities/MovieIds;->tmdb(I)Lcom/uwetrottmann/trakt5/entities/MovieIds;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-virtual {v2, v1}, Lcom/uwetrottmann/trakt5/entities/SyncMovie;->id(Lcom/uwetrottmann/trakt5/entities/MovieIds;)Lcom/uwetrottmann/trakt5/entities/SyncMovie;

    .line 102
    .line 103
    .line 104
    move-result-object v6

    .line 105
    new-instance v5, Lcom/uwetrottmann/trakt5/entities/ScrobbleProgress;

    .line 106
    .line 107
    float-to-double v7, v4

    .line 108
    invoke-direct/range {v5 .. v10}, Lcom/uwetrottmann/trakt5/entities/ScrobbleProgress;-><init>(Lcom/uwetrottmann/trakt5/entities/SyncMovie;DLjava/lang/String;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    :goto_0
    iget-object v1, p0, LD4/d;->n:Lflix/com/vision/api/TraktAPI$ScrobbleState;

    .line 112
    .line 113
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 114
    .line 115
    .line 116
    move-result v2

    .line 117
    if-eqz v2, :cond_4

    .line 118
    .line 119
    const/4 v6, 0x1

    .line 120
    if-eq v2, v6, :cond_3

    .line 121
    .line 122
    iget-object v0, v0, LD4/h;->a:Lcom/uwetrottmann/trakt5/TraktV2;

    .line 123
    .line 124
    invoke-virtual {v0}, Lcom/uwetrottmann/trakt5/TraktV2;->scrobble()Lcom/uwetrottmann/trakt5/services/Scrobble;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-interface {v0, v5}, Lcom/uwetrottmann/trakt5/services/Scrobble;->stopWatching(Lcom/uwetrottmann/trakt5/entities/ScrobbleProgress;)Lretrofit2/Call;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    invoke-interface {v0}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    goto :goto_1

    .line 137
    :cond_3
    iget-object v0, v0, LD4/h;->a:Lcom/uwetrottmann/trakt5/TraktV2;

    .line 138
    .line 139
    invoke-virtual {v0}, Lcom/uwetrottmann/trakt5/TraktV2;->scrobble()Lcom/uwetrottmann/trakt5/services/Scrobble;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    invoke-interface {v0, v5}, Lcom/uwetrottmann/trakt5/services/Scrobble;->pauseWatching(Lcom/uwetrottmann/trakt5/entities/ScrobbleProgress;)Lretrofit2/Call;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    invoke-interface {v0}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    goto :goto_1

    .line 152
    :cond_4
    iget-object v0, v0, LD4/h;->a:Lcom/uwetrottmann/trakt5/TraktV2;

    .line 153
    .line 154
    invoke-virtual {v0}, Lcom/uwetrottmann/trakt5/TraktV2;->scrobble()Lcom/uwetrottmann/trakt5/services/Scrobble;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    invoke-interface {v0, v5}, Lcom/uwetrottmann/trakt5/services/Scrobble;->startWatching(Lcom/uwetrottmann/trakt5/entities/ScrobbleProgress;)Lretrofit2/Call;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    invoke-interface {v0}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    :goto_1
    invoke-virtual {v0}, Lretrofit2/Response;->isSuccessful()Z

    .line 167
    .line 168
    .line 169
    move-result v2

    .line 170
    if-eqz v2, :cond_5

    .line 171
    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    .line 173
    .line 174
    const-string v2, "Scrobble sync successful: "

    .line 175
    .line 176
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    const-string v1, " at "

    .line 187
    .line 188
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    const-string v1, "%"

    .line 195
    .line 196
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    .line 205
    .line 206
    return-void

    .line 207
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 208
    .line 209
    const-string v2, "Scrobble Error Code: "

    .line 210
    .line 211
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v0}, Lretrofit2/Response;->code()I

    .line 215
    .line 216
    .line 217
    move-result v2

    .line 218
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v1

    .line 225
    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    .line 227
    .line 228
    new-instance v1, Ljava/io/IOException;

    .line 229
    .line 230
    new-instance v2, Ljava/lang/StringBuilder;

    .line 231
    .line 232
    const-string v3, "Trakt API Error: "

    .line 233
    .line 234
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {v0}, Lretrofit2/Response;->code()I

    .line 238
    .line 239
    .line 240
    move-result v0

    .line 241
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v0

    .line 248
    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    throw v1
.end method
