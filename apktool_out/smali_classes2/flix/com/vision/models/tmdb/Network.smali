.class public Lflix/com/vision/models/tmdb/Network;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public companyIds:Ljava/lang/String;

.field public id:I

.field public image:Ljava/lang/String;

.field public image_id:I

.field public movie:Lflix/com/vision/models/Movie;

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lflix/com/vision/models/tmdb/Network;->id:I

    .line 3
    iput-object p2, p0, Lflix/com/vision/models/tmdb/Network;->name:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lflix/com/vision/models/tmdb/Network;->image:Ljava/lang/String;

    .line 5
    iput p4, p0, Lflix/com/vision/models/tmdb/Network;->image_id:I

    .line 6
    invoke-direct {p0}, Lflix/com/vision/models/tmdb/Network;->setMovie()V

    return-void
.end method

.method public static getProviderId(I)I
    .locals 2

    const/16 v0, 0x180

    const/16 v1, 0x213

    sparse-switch p0, :sswitch_data_0

    const/4 p0, 0x0

    return p0

    :sswitch_0
    const p0, 0x334b3

    return p0

    :sswitch_1
    return v1

    :sswitch_2
    const/16 p0, 0x97

    return p0

    :sswitch_3
    const/16 p0, 0x6df

    return p0

    :sswitch_4
    return v0

    :sswitch_5
    const/16 p0, 0x151

    return p0

    :sswitch_6
    const/16 p0, 0x15e

    return p0

    :sswitch_7
    const/16 p0, 0x9

    return p0

    :sswitch_8
    const/16 p0, 0xc

    return p0

    :sswitch_9
    const/16 p0, 0x182

    return p0

    :sswitch_a
    const/16 p0, 0xf

    return p0

    :sswitch_b
    const/16 p0, 0x2b

    return p0

    :sswitch_c
    const/16 p0, 0x8

    return p0

    :sswitch_d
    return v0

    :sswitch_data_0
    .sparse-switch
        0x31 -> :sswitch_d
        0xd5 -> :sswitch_c
        0x13e -> :sswitch_b
        0x1c5 -> :sswitch_a
        0x39a -> :sswitch_9
        0x3a0 -> :sswitch_8
        0x400 -> :sswitch_7
        0x9f8 -> :sswitch_6
        0xab3 -> :sswitch_5
        0xc72 -> :sswitch_4
        0xd0f -> :sswitch_3
        0xd19 -> :sswitch_9
        0xfb9 -> :sswitch_2
        0x10ea -> :sswitch_1
        0x1582 -> :sswitch_1
        0x184b -> :sswitch_0
    .end sparse-switch
.end method

.method private setMovie()V
    .locals 13

    .line 1
    iget v0, p0, Lflix/com/vision/models/tmdb/Network;->id:I

    .line 2
    .line 3
    const-string v1, "2005"

    .line 4
    .line 5
    const-string v2, "2011"

    .line 6
    .line 7
    const-string v3, "2021"

    .line 8
    .line 9
    const-string v4, "Drama, Crime"

    .line 10
    .line 11
    const-string v5, "2023"

    .line 12
    .line 13
    const-string v6, "2008"

    .line 14
    .line 15
    const-string v7, "2022"

    .line 16
    .line 17
    const-string v8, "2024"

    .line 18
    .line 19
    const/4 v9, 0x0

    .line 20
    const-string v10, "Drama"

    .line 21
    .line 22
    const-string v11, "2019"

    .line 23
    .line 24
    const/4 v12, 0x1

    .line 25
    sparse-switch v0, :sswitch_data_0

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :sswitch_0
    new-instance v0, Lflix/com/vision/models/Movie;

    .line 30
    .line 31
    invoke-direct {v0}, Lflix/com/vision/models/Movie;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object v0, p0, Lflix/com/vision/models/tmdb/Network;->movie:Lflix/com/vision/models/Movie;

    .line 35
    .line 36
    const-string v1, "2026"

    .line 37
    .line 38
    iput-object v1, v0, Lflix/com/vision/models/Movie;->year:Ljava/lang/String;

    .line 39
    .line 40
    const-string v1, "FV Direct Stream"

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Lflix/com/vision/models/Movie;->setTitle(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lflix/com/vision/models/tmdb/Network;->movie:Lflix/com/vision/models/Movie;

    .line 46
    .line 47
    invoke-virtual {v0, v12}, Lflix/com/vision/models/Movie;->setType(I)V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lflix/com/vision/models/tmdb/Network;->movie:Lflix/com/vision/models/Movie;

    .line 51
    .line 52
    const-string v1, "All Genres"

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Lflix/com/vision/models/Movie;->setGenres(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lflix/com/vision/models/tmdb/Network;->movie:Lflix/com/vision/models/Movie;

    .line 58
    .line 59
    sget v1, Lflix/com/vision/R$drawable;->movie_grid:I

    .line 60
    .line 61
    iput v1, v0, Lflix/com/vision/models/Movie;->backdrop_image_res_id:I

    .line 62
    .line 63
    const-string v1, "Use the Direct Stream Service to access all Movies and TV Shows available on Flix Vision with Direct Streaming Links"

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Lflix/com/vision/models/Movie;->setOverview(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :sswitch_1
    new-instance v0, Lflix/com/vision/models/Movie;

    .line 70
    .line 71
    invoke-direct {v0}, Lflix/com/vision/models/Movie;-><init>()V

    .line 72
    .line 73
    .line 74
    iput-object v0, p0, Lflix/com/vision/models/tmdb/Network;->movie:Lflix/com/vision/models/Movie;

    .line 75
    .line 76
    iput-object v11, v0, Lflix/com/vision/models/Movie;->year:Ljava/lang/String;

    .line 77
    .line 78
    const-string v1, "Avengers: Endgame"

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Lflix/com/vision/models/Movie;->setTitle(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    iget-object v0, p0, Lflix/com/vision/models/tmdb/Network;->movie:Lflix/com/vision/models/Movie;

    .line 84
    .line 85
    invoke-virtual {v0, v9}, Lflix/com/vision/models/Movie;->setType(I)V

    .line 86
    .line 87
    .line 88
    iget-object v0, p0, Lflix/com/vision/models/tmdb/Network;->movie:Lflix/com/vision/models/Movie;

    .line 89
    .line 90
    const-string v1, "Adventure, Science Fiction, Action"

    .line 91
    .line 92
    invoke-virtual {v0, v1}, Lflix/com/vision/models/Movie;->setGenres(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    iget-object v0, p0, Lflix/com/vision/models/tmdb/Network;->movie:Lflix/com/vision/models/Movie;

    .line 96
    .line 97
    sget v1, Lflix/com/vision/R$drawable;->marvel_movie:I

    .line 98
    .line 99
    iput v1, v0, Lflix/com/vision/models/Movie;->backdrop_image_res_id:I

    .line 100
    .line 101
    const-string v1, "After the devastating events of Avengers: Infinity War, the universe is in ruins due to the efforts of the Mad Titan, Thanos. With the help of remaining allies, the Avengers must assemble once more in order to undo Thanos\' actions and restore order to the universe once and for all, no matter what consequences may be in store."

    .line 102
    .line 103
    invoke-virtual {v0, v1}, Lflix/com/vision/models/Movie;->setOverview(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    return-void

    .line 107
    :sswitch_2
    new-instance v0, Lflix/com/vision/models/Movie;

    .line 108
    .line 109
    invoke-direct {v0}, Lflix/com/vision/models/Movie;-><init>()V

    .line 110
    .line 111
    .line 112
    iput-object v0, p0, Lflix/com/vision/models/tmdb/Network;->movie:Lflix/com/vision/models/Movie;

    .line 113
    .line 114
    iput-object v8, v0, Lflix/com/vision/models/Movie;->year:Ljava/lang/String;

    .line 115
    .line 116
    const-string v1, "Parasyte: The Grey"

    .line 117
    .line 118
    invoke-virtual {v0, v1}, Lflix/com/vision/models/Movie;->setTitle(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    iget-object v0, p0, Lflix/com/vision/models/tmdb/Network;->movie:Lflix/com/vision/models/Movie;

    .line 122
    .line 123
    invoke-virtual {v0, v12}, Lflix/com/vision/models/Movie;->setType(I)V

    .line 124
    .line 125
    .line 126
    iget-object v0, p0, Lflix/com/vision/models/tmdb/Network;->movie:Lflix/com/vision/models/Movie;

    .line 127
    .line 128
    const-string v1, "Sci-Fi & Fantasy,Drama,Action & Adventure"

    .line 129
    .line 130
    invoke-virtual {v0, v1}, Lflix/com/vision/models/Movie;->setGenres(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    iget-object v0, p0, Lflix/com/vision/models/tmdb/Network;->movie:Lflix/com/vision/models/Movie;

    .line 134
    .line 135
    sget v1, Lflix/com/vision/R$drawable;->drama_movie:I

    .line 136
    .line 137
    iput v1, v0, Lflix/com/vision/models/Movie;->backdrop_image_res_id:I

    .line 138
    .line 139
    const-string v1, "When unidentified parasites violently take over human hosts and gain power, humanity must rise to combat the growing threat."

    .line 140
    .line 141
    invoke-virtual {v0, v1}, Lflix/com/vision/models/Movie;->setOverview(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    return-void

    .line 145
    :sswitch_3
    new-instance v0, Lflix/com/vision/models/Movie;

    .line 146
    .line 147
    invoke-direct {v0}, Lflix/com/vision/models/Movie;-><init>()V

    .line 148
    .line 149
    .line 150
    iput-object v0, p0, Lflix/com/vision/models/tmdb/Network;->movie:Lflix/com/vision/models/Movie;

    .line 151
    .line 152
    iput-object v7, v0, Lflix/com/vision/models/Movie;->year:Ljava/lang/String;

    .line 153
    .line 154
    const-string v1, "FROM"

    .line 155
    .line 156
    invoke-virtual {v0, v1}, Lflix/com/vision/models/Movie;->setTitle(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    iget-object v0, p0, Lflix/com/vision/models/tmdb/Network;->movie:Lflix/com/vision/models/Movie;

    .line 160
    .line 161
    invoke-virtual {v0, v12}, Lflix/com/vision/models/Movie;->setType(I)V

    .line 162
    .line 163
    .line 164
    iget-object v0, p0, Lflix/com/vision/models/tmdb/Network;->movie:Lflix/com/vision/models/Movie;

    .line 165
    .line 166
    const-wide/32 v1, 0x1e5cc

    .line 167
    .line 168
    .line 169
    invoke-virtual {v0, v1, v2}, Lflix/com/vision/models/Movie;->setMovieId(J)V

    .line 170
    .line 171
    .line 172
    iget-object v0, p0, Lflix/com/vision/models/tmdb/Network;->movie:Lflix/com/vision/models/Movie;

    .line 173
    .line 174
    const-string v1, "Mystery, Drama, and Sci-Fi & Fantasy"

    .line 175
    .line 176
    invoke-virtual {v0, v1}, Lflix/com/vision/models/Movie;->setGenres(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    iget-object v0, p0, Lflix/com/vision/models/tmdb/Network;->movie:Lflix/com/vision/models/Movie;

    .line 180
    .line 181
    sget v1, Lflix/com/vision/R$drawable;->mgm_movie:I

    .line 182
    .line 183
    iput v1, v0, Lflix/com/vision/models/Movie;->backdrop_image_res_id:I

    .line 184
    .line 185
    const-string v1, "Unravel the mystery of a nightmarish town in middle America that traps all those who enter. As the unwilling residents fight to keep a sense of normalcy and search for a way out, they must also survive the threats of the surrounding forest \u2013 including the terrifying creatures that come out when the sun goes down."

    .line 186
    .line 187
    invoke-virtual {v0, v1}, Lflix/com/vision/models/Movie;->setOverview(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    return-void

    .line 191
    :sswitch_4
    new-instance v0, Lflix/com/vision/models/Movie;

    .line 192
    .line 193
    invoke-direct {v0}, Lflix/com/vision/models/Movie;-><init>()V

    .line 194
    .line 195
    .line 196
    iput-object v0, p0, Lflix/com/vision/models/tmdb/Network;->movie:Lflix/com/vision/models/Movie;

    .line 197
    .line 198
    iput-object v6, v0, Lflix/com/vision/models/Movie;->year:Ljava/lang/String;

    .line 199
    .line 200
    const-string v1, "Ghost Adventures"

    .line 201
    .line 202
    invoke-virtual {v0, v1}, Lflix/com/vision/models/Movie;->setTitle(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    iget-object v0, p0, Lflix/com/vision/models/tmdb/Network;->movie:Lflix/com/vision/models/Movie;

    .line 206
    .line 207
    invoke-virtual {v0, v12}, Lflix/com/vision/models/Movie;->setType(I)V

    .line 208
    .line 209
    .line 210
    iget-object v0, p0, Lflix/com/vision/models/tmdb/Network;->movie:Lflix/com/vision/models/Movie;

    .line 211
    .line 212
    const-string v1, "Reality"

    .line 213
    .line 214
    invoke-virtual {v0, v1}, Lflix/com/vision/models/Movie;->setGenres(Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    iget-object v0, p0, Lflix/com/vision/models/tmdb/Network;->movie:Lflix/com/vision/models/Movie;

    .line 218
    .line 219
    sget v1, Lflix/com/vision/R$drawable;->discovery_movie:I

    .line 220
    .line 221
    iput v1, v0, Lflix/com/vision/models/Movie;->backdrop_image_res_id:I

    .line 222
    .line 223
    const-string v1, "Paranormal investigator Zak Bagans and his crew, Nick Groff and Aaron Goodwin, search for haunted locations both domestically and internationally. During their investigations, Zak and crew acquaint themselves with the general area; interview locals about the hauntings; and go face-to-face with the evil spirits who reportedly haunt these locations."

    .line 224
    .line 225
    invoke-virtual {v0, v1}, Lflix/com/vision/models/Movie;->setOverview(Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    return-void

    .line 229
    :sswitch_5
    new-instance v0, Lflix/com/vision/models/Movie;

    .line 230
    .line 231
    invoke-direct {v0}, Lflix/com/vision/models/Movie;-><init>()V

    .line 232
    .line 233
    .line 234
    iput-object v0, p0, Lflix/com/vision/models/tmdb/Network;->movie:Lflix/com/vision/models/Movie;

    .line 235
    .line 236
    iput-object v5, v0, Lflix/com/vision/models/Movie;->year:Ljava/lang/String;

    .line 237
    .line 238
    const-string v1, "Special Ops: Lioness"

    .line 239
    .line 240
    invoke-virtual {v0, v1}, Lflix/com/vision/models/Movie;->setTitle(Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    iget-object v0, p0, Lflix/com/vision/models/tmdb/Network;->movie:Lflix/com/vision/models/Movie;

    .line 244
    .line 245
    invoke-virtual {v0, v12}, Lflix/com/vision/models/Movie;->setType(I)V

    .line 246
    .line 247
    .line 248
    iget-object v0, p0, Lflix/com/vision/models/tmdb/Network;->movie:Lflix/com/vision/models/Movie;

    .line 249
    .line 250
    invoke-virtual {v0, v10}, Lflix/com/vision/models/Movie;->setGenres(Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    iget-object v0, p0, Lflix/com/vision/models/tmdb/Network;->movie:Lflix/com/vision/models/Movie;

    .line 254
    .line 255
    sget v1, Lflix/com/vision/R$drawable;->paramount_movie:I

    .line 256
    .line 257
    iput v1, v0, Lflix/com/vision/models/Movie;->backdrop_image_res_id:I

    .line 258
    .line 259
    const-string v1, "Cruz Manuelos, a rough-around-the-edges but passionate young Marine, is recruited to join the CIA\u2019s Lioness Engagement Team to help bring down a terrorist organization from within. Joe, the station chief of the Lioness program, is tasked with training, managing and leading her female undercover operatives."

    .line 260
    .line 261
    invoke-virtual {v0, v1}, Lflix/com/vision/models/Movie;->setOverview(Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    return-void

    .line 265
    :sswitch_6
    new-instance v0, Lflix/com/vision/models/Movie;

    .line 266
    .line 267
    invoke-direct {v0}, Lflix/com/vision/models/Movie;-><init>()V

    .line 268
    .line 269
    .line 270
    iput-object v0, p0, Lflix/com/vision/models/tmdb/Network;->movie:Lflix/com/vision/models/Movie;

    .line 271
    .line 272
    const-string v1, "2010"

    .line 273
    .line 274
    iput-object v1, v0, Lflix/com/vision/models/Movie;->year:Ljava/lang/String;

    .line 275
    .line 276
    const-string v1, "Luther"

    .line 277
    .line 278
    invoke-virtual {v0, v1}, Lflix/com/vision/models/Movie;->setTitle(Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    iget-object v0, p0, Lflix/com/vision/models/tmdb/Network;->movie:Lflix/com/vision/models/Movie;

    .line 282
    .line 283
    invoke-virtual {v0, v12}, Lflix/com/vision/models/Movie;->setType(I)V

    .line 284
    .line 285
    .line 286
    iget-object v0, p0, Lflix/com/vision/models/tmdb/Network;->movie:Lflix/com/vision/models/Movie;

    .line 287
    .line 288
    const-string v1, "Crime, Drama, Mystery"

    .line 289
    .line 290
    invoke-virtual {v0, v1}, Lflix/com/vision/models/Movie;->setGenres(Ljava/lang/String;)V

    .line 291
    .line 292
    .line 293
    iget-object v0, p0, Lflix/com/vision/models/tmdb/Network;->movie:Lflix/com/vision/models/Movie;

    .line 294
    .line 295
    sget v1, Lflix/com/vision/R$drawable;->brit_box_poster:I

    .line 296
    .line 297
    iput v1, v0, Lflix/com/vision/models/Movie;->backdrop_image_res_id:I

    .line 298
    .line 299
    const-string v1, "A dark psychological crime drama starring Idris Elba as Luther, a man struggling with his own terrible demons, who might be as dangerous as the depraved murderers he hunts"

    .line 300
    .line 301
    invoke-virtual {v0, v1}, Lflix/com/vision/models/Movie;->setOverview(Ljava/lang/String;)V

    .line 302
    .line 303
    .line 304
    return-void

    .line 305
    :sswitch_7
    new-instance v0, Lflix/com/vision/models/Movie;

    .line 306
    .line 307
    invoke-direct {v0}, Lflix/com/vision/models/Movie;-><init>()V

    .line 308
    .line 309
    .line 310
    iput-object v0, p0, Lflix/com/vision/models/tmdb/Network;->movie:Lflix/com/vision/models/Movie;

    .line 311
    .line 312
    iput-object v8, v0, Lflix/com/vision/models/Movie;->year:Ljava/lang/String;

    .line 313
    .line 314
    const-string v1, "Fight Night: The Million Dollar Heist"

    .line 315
    .line 316
    invoke-virtual {v0, v1}, Lflix/com/vision/models/Movie;->setTitle(Ljava/lang/String;)V

    .line 317
    .line 318
    .line 319
    iget-object v0, p0, Lflix/com/vision/models/tmdb/Network;->movie:Lflix/com/vision/models/Movie;

    .line 320
    .line 321
    invoke-virtual {v0, v12}, Lflix/com/vision/models/Movie;->setType(I)V

    .line 322
    .line 323
    .line 324
    iget-object v0, p0, Lflix/com/vision/models/tmdb/Network;->movie:Lflix/com/vision/models/Movie;

    .line 325
    .line 326
    invoke-virtual {v0, v4}, Lflix/com/vision/models/Movie;->setGenres(Ljava/lang/String;)V

    .line 327
    .line 328
    .line 329
    iget-object v0, p0, Lflix/com/vision/models/tmdb/Network;->movie:Lflix/com/vision/models/Movie;

    .line 330
    .line 331
    sget v1, Lflix/com/vision/R$drawable;->peacock_poster1:I

    .line 332
    .line 333
    iput v1, v0, Lflix/com/vision/models/Movie;->backdrop_image_res_id:I

    .line 334
    .line 335
    const-string v1, "The story of how on the night of Ali\u2019s defeat of Jerry Quarry, which came after he was banned from boxing for refusing to enter the military draft, hundreds of guests at an after-party were robbed at gunpoint, becoming one of the largest armed robberies the country has ever seen."

    .line 336
    .line 337
    invoke-virtual {v0, v1}, Lflix/com/vision/models/Movie;->setOverview(Ljava/lang/String;)V

    .line 338
    .line 339
    .line 340
    return-void

    .line 341
    :sswitch_8
    new-instance v0, Lflix/com/vision/models/Movie;

    .line 342
    .line 343
    invoke-direct {v0}, Lflix/com/vision/models/Movie;-><init>()V

    .line 344
    .line 345
    .line 346
    iput-object v0, p0, Lflix/com/vision/models/tmdb/Network;->movie:Lflix/com/vision/models/Movie;

    .line 347
    .line 348
    const-string v1, "2020"

    .line 349
    .line 350
    iput-object v1, v0, Lflix/com/vision/models/Movie;->year:Ljava/lang/String;

    .line 351
    .line 352
    const-string v1, "Tyler Perry\'s Ruthless"

    .line 353
    .line 354
    invoke-virtual {v0, v1}, Lflix/com/vision/models/Movie;->setTitle(Ljava/lang/String;)V

    .line 355
    .line 356
    .line 357
    iget-object v0, p0, Lflix/com/vision/models/tmdb/Network;->movie:Lflix/com/vision/models/Movie;

    .line 358
    .line 359
    invoke-virtual {v0, v12}, Lflix/com/vision/models/Movie;->setType(I)V

    .line 360
    .line 361
    .line 362
    iget-object v0, p0, Lflix/com/vision/models/tmdb/Network;->movie:Lflix/com/vision/models/Movie;

    .line 363
    .line 364
    invoke-virtual {v0, v10}, Lflix/com/vision/models/Movie;->setGenres(Ljava/lang/String;)V

    .line 365
    .line 366
    .line 367
    iget-object v0, p0, Lflix/com/vision/models/tmdb/Network;->movie:Lflix/com/vision/models/Movie;

    .line 368
    .line 369
    sget v1, Lflix/com/vision/R$drawable;->bet_plus_poster:I

    .line 370
    .line 371
    iput v1, v0, Lflix/com/vision/models/Movie;->backdrop_image_res_id:I

    .line 372
    .line 373
    const-string v1, "A spinoff of \"The Oval,\" follows Ruth Truesdale as she\'s forced to play nice with a scandalous religious cult of powerful sex crazed fanatics in the hopes of freeing herself and her daughter."

    .line 374
    .line 375
    invoke-virtual {v0, v1}, Lflix/com/vision/models/Movie;->setOverview(Ljava/lang/String;)V

    .line 376
    .line 377
    .line 378
    return-void

    .line 379
    :sswitch_9
    new-instance v0, Lflix/com/vision/models/Movie;

    .line 380
    .line 381
    invoke-direct {v0}, Lflix/com/vision/models/Movie;-><init>()V

    .line 382
    .line 383
    .line 384
    iput-object v0, p0, Lflix/com/vision/models/tmdb/Network;->movie:Lflix/com/vision/models/Movie;

    .line 385
    .line 386
    iput-object v11, v0, Lflix/com/vision/models/Movie;->year:Ljava/lang/String;

    .line 387
    .line 388
    const-string v1, "The Mandalorian"

    .line 389
    .line 390
    invoke-virtual {v0, v1}, Lflix/com/vision/models/Movie;->setTitle(Ljava/lang/String;)V

    .line 391
    .line 392
    .line 393
    iget-object v0, p0, Lflix/com/vision/models/tmdb/Network;->movie:Lflix/com/vision/models/Movie;

    .line 394
    .line 395
    invoke-virtual {v0, v12}, Lflix/com/vision/models/Movie;->setType(I)V

    .line 396
    .line 397
    .line 398
    iget-object v0, p0, Lflix/com/vision/models/tmdb/Network;->movie:Lflix/com/vision/models/Movie;

    .line 399
    .line 400
    const-string v1, "Sci-Fi & Fantasy, Action & Adventure, Drama"

    .line 401
    .line 402
    invoke-virtual {v0, v1}, Lflix/com/vision/models/Movie;->setGenres(Ljava/lang/String;)V

    .line 403
    .line 404
    .line 405
    iget-object v0, p0, Lflix/com/vision/models/tmdb/Network;->movie:Lflix/com/vision/models/Movie;

    .line 406
    .line 407
    sget v1, Lflix/com/vision/R$drawable;->disney_movie:I

    .line 408
    .line 409
    iput v1, v0, Lflix/com/vision/models/Movie;->backdrop_image_res_id:I

    .line 410
    .line 411
    const-string v1, "The journeys of the Mandalorian through the Star Wars galaxy continue. Once a lone bounty hunter, Din Djarin has reunited with Grogu. Meanwhile, the New Republic struggles to lead the galaxy away from its dark history. The Mandalorian will cross paths with old allies and make new enemies as he and Grogu continue their journey together"

    .line 412
    .line 413
    invoke-virtual {v0, v1}, Lflix/com/vision/models/Movie;->setOverview(Ljava/lang/String;)V

    .line 414
    .line 415
    .line 416
    return-void

    .line 417
    :sswitch_a
    new-instance v0, Lflix/com/vision/models/Movie;

    .line 418
    .line 419
    invoke-direct {v0}, Lflix/com/vision/models/Movie;-><init>()V

    .line 420
    .line 421
    .line 422
    iput-object v0, p0, Lflix/com/vision/models/tmdb/Network;->movie:Lflix/com/vision/models/Movie;

    .line 423
    .line 424
    iput-object v11, v0, Lflix/com/vision/models/Movie;->year:Ljava/lang/String;

    .line 425
    .line 426
    const-string v1, "For All Mankind"

    .line 427
    .line 428
    invoke-virtual {v0, v1}, Lflix/com/vision/models/Movie;->setTitle(Ljava/lang/String;)V

    .line 429
    .line 430
    .line 431
    iget-object v0, p0, Lflix/com/vision/models/tmdb/Network;->movie:Lflix/com/vision/models/Movie;

    .line 432
    .line 433
    invoke-virtual {v0, v12}, Lflix/com/vision/models/Movie;->setType(I)V

    .line 434
    .line 435
    .line 436
    iget-object v0, p0, Lflix/com/vision/models/tmdb/Network;->movie:Lflix/com/vision/models/Movie;

    .line 437
    .line 438
    const-string v1, "Drama, Sci-Fi & Fantasy, War & Politics"

    .line 439
    .line 440
    invoke-virtual {v0, v1}, Lflix/com/vision/models/Movie;->setGenres(Ljava/lang/String;)V

    .line 441
    .line 442
    .line 443
    iget-object v0, p0, Lflix/com/vision/models/tmdb/Network;->movie:Lflix/com/vision/models/Movie;

    .line 444
    .line 445
    sget v1, Lflix/com/vision/R$drawable;->apple_movie:I

    .line 446
    .line 447
    iput v1, v0, Lflix/com/vision/models/Movie;->backdrop_image_res_id:I

    .line 448
    .line 449
    const-string v1, "Explore an aspirational world where NASA and the space program remained a priority and a focal point of our hopes and dreams as told through the lives of NASA astronauts, engineers, and their families."

    .line 450
    .line 451
    invoke-virtual {v0, v1}, Lflix/com/vision/models/Movie;->setOverview(Ljava/lang/String;)V

    .line 452
    .line 453
    .line 454
    return-void

    .line 455
    :sswitch_b
    new-instance v0, Lflix/com/vision/models/Movie;

    .line 456
    .line 457
    invoke-direct {v0}, Lflix/com/vision/models/Movie;-><init>()V

    .line 458
    .line 459
    .line 460
    iput-object v0, p0, Lflix/com/vision/models/tmdb/Network;->movie:Lflix/com/vision/models/Movie;

    .line 461
    .line 462
    iput-object v11, v0, Lflix/com/vision/models/Movie;->year:Ljava/lang/String;

    .line 463
    .line 464
    const-string v1, "The Boys"

    .line 465
    .line 466
    invoke-virtual {v0, v1}, Lflix/com/vision/models/Movie;->setTitle(Ljava/lang/String;)V

    .line 467
    .line 468
    .line 469
    iget-object v0, p0, Lflix/com/vision/models/tmdb/Network;->movie:Lflix/com/vision/models/Movie;

    .line 470
    .line 471
    invoke-virtual {v0, v12}, Lflix/com/vision/models/Movie;->setType(I)V

    .line 472
    .line 473
    .line 474
    iget-object v0, p0, Lflix/com/vision/models/tmdb/Network;->movie:Lflix/com/vision/models/Movie;

    .line 475
    .line 476
    const-string v1, "Sci-Fi & Fantasy, Action & Adventure"

    .line 477
    .line 478
    invoke-virtual {v0, v1}, Lflix/com/vision/models/Movie;->setGenres(Ljava/lang/String;)V

    .line 479
    .line 480
    .line 481
    iget-object v0, p0, Lflix/com/vision/models/tmdb/Network;->movie:Lflix/com/vision/models/Movie;

    .line 482
    .line 483
    sget v1, Lflix/com/vision/R$drawable;->prime_movie:I

    .line 484
    .line 485
    iput v1, v0, Lflix/com/vision/models/Movie;->backdrop_image_res_id:I

    .line 486
    .line 487
    const-string v1, "A group of vigilantes known informally as \u201cThe Boys\u201d set out to take down corrupt superheroes with no more than blue-collar grit and a willingness to fight dirty."

    .line 488
    .line 489
    invoke-virtual {v0, v1}, Lflix/com/vision/models/Movie;->setOverview(Ljava/lang/String;)V

    .line 490
    .line 491
    .line 492
    return-void

    .line 493
    :sswitch_c
    new-instance v0, Lflix/com/vision/models/Movie;

    .line 494
    .line 495
    invoke-direct {v0}, Lflix/com/vision/models/Movie;-><init>()V

    .line 496
    .line 497
    .line 498
    iput-object v0, p0, Lflix/com/vision/models/tmdb/Network;->movie:Lflix/com/vision/models/Movie;

    .line 499
    .line 500
    iput-object v5, v0, Lflix/com/vision/models/Movie;->year:Ljava/lang/String;

    .line 501
    .line 502
    const-string v1, "Animal"

    .line 503
    .line 504
    invoke-virtual {v0, v1}, Lflix/com/vision/models/Movie;->setTitle(Ljava/lang/String;)V

    .line 505
    .line 506
    .line 507
    iget-object v0, p0, Lflix/com/vision/models/tmdb/Network;->movie:Lflix/com/vision/models/Movie;

    .line 508
    .line 509
    invoke-virtual {v0, v9}, Lflix/com/vision/models/Movie;->setType(I)V

    .line 510
    .line 511
    .line 512
    iget-object v0, p0, Lflix/com/vision/models/tmdb/Network;->movie:Lflix/com/vision/models/Movie;

    .line 513
    .line 514
    const-string v1, "Action, Crime, Drama"

    .line 515
    .line 516
    invoke-virtual {v0, v1}, Lflix/com/vision/models/Movie;->setGenres(Ljava/lang/String;)V

    .line 517
    .line 518
    .line 519
    iget-object v0, p0, Lflix/com/vision/models/tmdb/Network;->movie:Lflix/com/vision/models/Movie;

    .line 520
    .line 521
    sget v1, Lflix/com/vision/R$drawable;->bollywood_movie:I

    .line 522
    .line 523
    iput v1, v0, Lflix/com/vision/models/Movie;->backdrop_image_res_id:I

    .line 524
    .line 525
    const-string v1, "A son undergoes a remarkable transformation as the bond with his father begins to fracture, and he becomes consumed by a quest for vengeance."

    .line 526
    .line 527
    invoke-virtual {v0, v1}, Lflix/com/vision/models/Movie;->setOverview(Ljava/lang/String;)V

    .line 528
    .line 529
    .line 530
    return-void

    .line 531
    :sswitch_d
    new-instance v0, Lflix/com/vision/models/Movie;

    .line 532
    .line 533
    invoke-direct {v0}, Lflix/com/vision/models/Movie;-><init>()V

    .line 534
    .line 535
    .line 536
    iput-object v0, p0, Lflix/com/vision/models/tmdb/Network;->movie:Lflix/com/vision/models/Movie;

    .line 537
    .line 538
    iput-object v3, v0, Lflix/com/vision/models/Movie;->year:Ljava/lang/String;

    .line 539
    .line 540
    const-string v1, "Only Murders in the Building"

    .line 541
    .line 542
    invoke-virtual {v0, v1}, Lflix/com/vision/models/Movie;->setTitle(Ljava/lang/String;)V

    .line 543
    .line 544
    .line 545
    iget-object v0, p0, Lflix/com/vision/models/tmdb/Network;->movie:Lflix/com/vision/models/Movie;

    .line 546
    .line 547
    invoke-virtual {v0, v12}, Lflix/com/vision/models/Movie;->setType(I)V

    .line 548
    .line 549
    .line 550
    iget-object v0, p0, Lflix/com/vision/models/tmdb/Network;->movie:Lflix/com/vision/models/Movie;

    .line 551
    .line 552
    const-string v1, "Comedy, Mystery, Crime"

    .line 553
    .line 554
    invoke-virtual {v0, v1}, Lflix/com/vision/models/Movie;->setGenres(Ljava/lang/String;)V

    .line 555
    .line 556
    .line 557
    iget-object v0, p0, Lflix/com/vision/models/tmdb/Network;->movie:Lflix/com/vision/models/Movie;

    .line 558
    .line 559
    sget v1, Lflix/com/vision/R$drawable;->hulu_movie:I

    .line 560
    .line 561
    iput v1, v0, Lflix/com/vision/models/Movie;->backdrop_image_res_id:I

    .line 562
    .line 563
    const-string v1, "Three strangers share an obsession with true crime and suddenly find themselves wrapped up in one."

    .line 564
    .line 565
    invoke-virtual {v0, v1}, Lflix/com/vision/models/Movie;->setOverview(Ljava/lang/String;)V

    .line 566
    .line 567
    .line 568
    return-void

    .line 569
    :sswitch_e
    new-instance v0, Lflix/com/vision/models/Movie;

    .line 570
    .line 571
    invoke-direct {v0}, Lflix/com/vision/models/Movie;-><init>()V

    .line 572
    .line 573
    .line 574
    iput-object v0, p0, Lflix/com/vision/models/tmdb/Network;->movie:Lflix/com/vision/models/Movie;

    .line 575
    .line 576
    const-string v1, "2014"

    .line 577
    .line 578
    iput-object v1, v0, Lflix/com/vision/models/Movie;->year:Ljava/lang/String;

    .line 579
    .line 580
    const-string v1, "Power"

    .line 581
    .line 582
    invoke-virtual {v0, v1}, Lflix/com/vision/models/Movie;->setTitle(Ljava/lang/String;)V

    .line 583
    .line 584
    .line 585
    iget-object v0, p0, Lflix/com/vision/models/tmdb/Network;->movie:Lflix/com/vision/models/Movie;

    .line 586
    .line 587
    invoke-virtual {v0, v12}, Lflix/com/vision/models/Movie;->setType(I)V

    .line 588
    .line 589
    .line 590
    iget-object v0, p0, Lflix/com/vision/models/tmdb/Network;->movie:Lflix/com/vision/models/Movie;

    .line 591
    .line 592
    const-string v1, "Crime, Drama"

    .line 593
    .line 594
    invoke-virtual {v0, v1}, Lflix/com/vision/models/Movie;->setGenres(Ljava/lang/String;)V

    .line 595
    .line 596
    .line 597
    iget-object v0, p0, Lflix/com/vision/models/tmdb/Network;->movie:Lflix/com/vision/models/Movie;

    .line 598
    .line 599
    sget v1, Lflix/com/vision/R$drawable;->starz_movie:I

    .line 600
    .line 601
    iput v1, v0, Lflix/com/vision/models/Movie;->backdrop_image_res_id:I

    .line 602
    .line 603
    const-string v1, "A successful New York entrepreneur lives a double life as the head of a drug empire that serves only the rich and influential, all while wanting to escape the underworld and keep his family safe."

    .line 604
    .line 605
    invoke-virtual {v0, v1}, Lflix/com/vision/models/Movie;->setOverview(Ljava/lang/String;)V

    .line 606
    .line 607
    .line 608
    return-void

    .line 609
    :sswitch_f
    new-instance v0, Lflix/com/vision/models/Movie;

    .line 610
    .line 611
    invoke-direct {v0}, Lflix/com/vision/models/Movie;-><init>()V

    .line 612
    .line 613
    .line 614
    iput-object v0, p0, Lflix/com/vision/models/tmdb/Network;->movie:Lflix/com/vision/models/Movie;

    .line 615
    .line 616
    new-instance v0, Ljava/util/Random;

    .line 617
    .line 618
    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 619
    .line 620
    .line 621
    const/4 v1, 0x4

    .line 622
    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    .line 623
    .line 624
    .line 625
    move-result v0

    .line 626
    add-int/2addr v0, v12

    .line 627
    if-ne v0, v12, :cond_0

    .line 628
    .line 629
    iget-object v0, p0, Lflix/com/vision/models/tmdb/Network;->movie:Lflix/com/vision/models/Movie;

    .line 630
    .line 631
    iput-object v2, v0, Lflix/com/vision/models/Movie;->year:Ljava/lang/String;

    .line 632
    .line 633
    const-string v1, "Black Mirror"

    .line 634
    .line 635
    invoke-virtual {v0, v1}, Lflix/com/vision/models/Movie;->setTitle(Ljava/lang/String;)V

    .line 636
    .line 637
    .line 638
    iget-object v0, p0, Lflix/com/vision/models/tmdb/Network;->movie:Lflix/com/vision/models/Movie;

    .line 639
    .line 640
    invoke-virtual {v0, v12}, Lflix/com/vision/models/Movie;->setType(I)V

    .line 641
    .line 642
    .line 643
    iget-object v0, p0, Lflix/com/vision/models/tmdb/Network;->movie:Lflix/com/vision/models/Movie;

    .line 644
    .line 645
    const-string v1, "Sci-Fi & Fantasy, Drama, Mystery"

    .line 646
    .line 647
    invoke-virtual {v0, v1}, Lflix/com/vision/models/Movie;->setGenres(Ljava/lang/String;)V

    .line 648
    .line 649
    .line 650
    iget-object v0, p0, Lflix/com/vision/models/tmdb/Network;->movie:Lflix/com/vision/models/Movie;

    .line 651
    .line 652
    sget v1, Lflix/com/vision/R$drawable;->netflix_movie:I

    .line 653
    .line 654
    iput v1, v0, Lflix/com/vision/models/Movie;->backdrop_image_res_id:I

    .line 655
    .line 656
    const-string v1, "Over the last ten years, technology has transformed almost every aspect of our lives before we\'ve had time to stop and question it. In every home; on every desk; in every palm - a plasma screen; a monitor; a smartphone - a black mirror of our 21st Century existence."

    .line 657
    .line 658
    invoke-virtual {v0, v1}, Lflix/com/vision/models/Movie;->setOverview(Ljava/lang/String;)V

    .line 659
    .line 660
    .line 661
    return-void

    .line 662
    :cond_0
    const/4 v1, 0x2

    .line 663
    if-ne v0, v1, :cond_1

    .line 664
    .line 665
    iget-object v0, p0, Lflix/com/vision/models/tmdb/Network;->movie:Lflix/com/vision/models/Movie;

    .line 666
    .line 667
    const-string v1, "2018"

    .line 668
    .line 669
    iput-object v1, v0, Lflix/com/vision/models/Movie;->year:Ljava/lang/String;

    .line 670
    .line 671
    const-string v1, "House of Cards"

    .line 672
    .line 673
    invoke-virtual {v0, v1}, Lflix/com/vision/models/Movie;->setTitle(Ljava/lang/String;)V

    .line 674
    .line 675
    .line 676
    iget-object v0, p0, Lflix/com/vision/models/tmdb/Network;->movie:Lflix/com/vision/models/Movie;

    .line 677
    .line 678
    invoke-virtual {v0, v12}, Lflix/com/vision/models/Movie;->setType(I)V

    .line 679
    .line 680
    .line 681
    iget-object v0, p0, Lflix/com/vision/models/tmdb/Network;->movie:Lflix/com/vision/models/Movie;

    .line 682
    .line 683
    invoke-virtual {v0, v10}, Lflix/com/vision/models/Movie;->setGenres(Ljava/lang/String;)V

    .line 684
    .line 685
    .line 686
    iget-object v0, p0, Lflix/com/vision/models/tmdb/Network;->movie:Lflix/com/vision/models/Movie;

    .line 687
    .line 688
    sget v1, Lflix/com/vision/R$drawable;->netflix_movie2:I

    .line 689
    .line 690
    iput v1, v0, Lflix/com/vision/models/Movie;->backdrop_image_res_id:I

    .line 691
    .line 692
    const-string v1, "Set in present day Washington, D.C., House of Cards is the story of Frank Underwood, a ruthless and cunning politician, and his wife Claire who will stop at nothing to conquer everything. This wicked political drama penetrates the shadowy world of greed, sex and corruption in modern D.C."

    .line 693
    .line 694
    invoke-virtual {v0, v1}, Lflix/com/vision/models/Movie;->setOverview(Ljava/lang/String;)V

    .line 695
    .line 696
    .line 697
    return-void

    .line 698
    :cond_1
    const/4 v1, 0x3

    .line 699
    if-ne v0, v1, :cond_2

    .line 700
    .line 701
    iget-object v0, p0, Lflix/com/vision/models/tmdb/Network;->movie:Lflix/com/vision/models/Movie;

    .line 702
    .line 703
    iput-object v7, v0, Lflix/com/vision/models/Movie;->year:Ljava/lang/String;

    .line 704
    .line 705
    const-string v1, "Wednesday"

    .line 706
    .line 707
    invoke-virtual {v0, v1}, Lflix/com/vision/models/Movie;->setTitle(Ljava/lang/String;)V

    .line 708
    .line 709
    .line 710
    iget-object v0, p0, Lflix/com/vision/models/tmdb/Network;->movie:Lflix/com/vision/models/Movie;

    .line 711
    .line 712
    invoke-virtual {v0, v12}, Lflix/com/vision/models/Movie;->setType(I)V

    .line 713
    .line 714
    .line 715
    iget-object v0, p0, Lflix/com/vision/models/tmdb/Network;->movie:Lflix/com/vision/models/Movie;

    .line 716
    .line 717
    const-string v1, "Sci-Fi & Fantasy, Mystery, Comedy"

    .line 718
    .line 719
    invoke-virtual {v0, v1}, Lflix/com/vision/models/Movie;->setGenres(Ljava/lang/String;)V

    .line 720
    .line 721
    .line 722
    iget-object v0, p0, Lflix/com/vision/models/tmdb/Network;->movie:Lflix/com/vision/models/Movie;

    .line 723
    .line 724
    sget v1, Lflix/com/vision/R$drawable;->netflix_movie3:I

    .line 725
    .line 726
    iput v1, v0, Lflix/com/vision/models/Movie;->backdrop_image_res_id:I

    .line 727
    .line 728
    const-string v1, "Wednesday Addams is sent to Nevermore Academy, a bizarre boarding school where she attempts to master her psychic powers, stop a monstrous killing spree of the town citizens, and solve the supernatural mystery that affected her family 25 years ago \u2014 all while navigating her new relationships."

    .line 729
    .line 730
    invoke-virtual {v0, v1}, Lflix/com/vision/models/Movie;->setOverview(Ljava/lang/String;)V

    .line 731
    .line 732
    .line 733
    return-void

    .line 734
    :cond_2
    iget-object v0, p0, Lflix/com/vision/models/tmdb/Network;->movie:Lflix/com/vision/models/Movie;

    .line 735
    .line 736
    iput-object v3, v0, Lflix/com/vision/models/Movie;->year:Ljava/lang/String;

    .line 737
    .line 738
    const-string v1, "Squid Game"

    .line 739
    .line 740
    invoke-virtual {v0, v1}, Lflix/com/vision/models/Movie;->setTitle(Ljava/lang/String;)V

    .line 741
    .line 742
    .line 743
    iget-object v0, p0, Lflix/com/vision/models/tmdb/Network;->movie:Lflix/com/vision/models/Movie;

    .line 744
    .line 745
    invoke-virtual {v0, v12}, Lflix/com/vision/models/Movie;->setType(I)V

    .line 746
    .line 747
    .line 748
    iget-object v0, p0, Lflix/com/vision/models/tmdb/Network;->movie:Lflix/com/vision/models/Movie;

    .line 749
    .line 750
    const-string v1, "Action & Adventure, Mystery, Drama"

    .line 751
    .line 752
    invoke-virtual {v0, v1}, Lflix/com/vision/models/Movie;->setGenres(Ljava/lang/String;)V

    .line 753
    .line 754
    .line 755
    iget-object v0, p0, Lflix/com/vision/models/tmdb/Network;->movie:Lflix/com/vision/models/Movie;

    .line 756
    .line 757
    sget v1, Lflix/com/vision/R$drawable;->squid:I

    .line 758
    .line 759
    iput v1, v0, Lflix/com/vision/models/Movie;->backdrop_image_res_id:I

    .line 760
    .line 761
    const-string v1, "Hundreds of cash-strapped players accept a strange invitation to compete in children\'s games. Inside, a tempting prize awaits \u2014 with deadly high stakes."

    .line 762
    .line 763
    invoke-virtual {v0, v1}, Lflix/com/vision/models/Movie;->setOverview(Ljava/lang/String;)V

    .line 764
    .line 765
    .line 766
    return-void

    .line 767
    :sswitch_10
    new-instance v0, Lflix/com/vision/models/Movie;

    .line 768
    .line 769
    invoke-direct {v0}, Lflix/com/vision/models/Movie;-><init>()V

    .line 770
    .line 771
    .line 772
    iput-object v0, p0, Lflix/com/vision/models/tmdb/Network;->movie:Lflix/com/vision/models/Movie;

    .line 773
    .line 774
    iput-object v6, v0, Lflix/com/vision/models/Movie;->year:Ljava/lang/String;

    .line 775
    .line 776
    const-string v1, "Breaking Bad"

    .line 777
    .line 778
    invoke-virtual {v0, v1}, Lflix/com/vision/models/Movie;->setTitle(Ljava/lang/String;)V

    .line 779
    .line 780
    .line 781
    iget-object v0, p0, Lflix/com/vision/models/tmdb/Network;->movie:Lflix/com/vision/models/Movie;

    .line 782
    .line 783
    invoke-virtual {v0, v12}, Lflix/com/vision/models/Movie;->setType(I)V

    .line 784
    .line 785
    .line 786
    iget-object v0, p0, Lflix/com/vision/models/tmdb/Network;->movie:Lflix/com/vision/models/Movie;

    .line 787
    .line 788
    invoke-virtual {v0, v4}, Lflix/com/vision/models/Movie;->setGenres(Ljava/lang/String;)V

    .line 789
    .line 790
    .line 791
    iget-object v0, p0, Lflix/com/vision/models/tmdb/Network;->movie:Lflix/com/vision/models/Movie;

    .line 792
    .line 793
    sget v1, Lflix/com/vision/R$drawable;->amc_movie:I

    .line 794
    .line 795
    iput v1, v0, Lflix/com/vision/models/Movie;->backdrop_image_res_id:I

    .line 796
    .line 797
    const-string v1, "When Walter White, a New Mexico chemistry teacher, is diagnosed with Stage III cancer and given a prognosis of only two years left to live. He becomes filled with a sense of fearlessness and an unrelenting desire to secure his family\'s financial future at any cost as he enters the dangerous world of drugs and crime."

    .line 798
    .line 799
    invoke-virtual {v0, v1}, Lflix/com/vision/models/Movie;->setOverview(Ljava/lang/String;)V

    .line 800
    .line 801
    .line 802
    return-void

    .line 803
    :sswitch_11
    new-instance v0, Lflix/com/vision/models/Movie;

    .line 804
    .line 805
    invoke-direct {v0}, Lflix/com/vision/models/Movie;-><init>()V

    .line 806
    .line 807
    .line 808
    iput-object v0, p0, Lflix/com/vision/models/tmdb/Network;->movie:Lflix/com/vision/models/Movie;

    .line 809
    .line 810
    iput-object v2, v0, Lflix/com/vision/models/Movie;->year:Ljava/lang/String;

    .line 811
    .line 812
    const-string v1, "Game of Thrones"

    .line 813
    .line 814
    invoke-virtual {v0, v1}, Lflix/com/vision/models/Movie;->setTitle(Ljava/lang/String;)V

    .line 815
    .line 816
    .line 817
    iget-object v0, p0, Lflix/com/vision/models/tmdb/Network;->movie:Lflix/com/vision/models/Movie;

    .line 818
    .line 819
    invoke-virtual {v0, v12}, Lflix/com/vision/models/Movie;->setType(I)V

    .line 820
    .line 821
    .line 822
    iget-object v0, p0, Lflix/com/vision/models/tmdb/Network;->movie:Lflix/com/vision/models/Movie;

    .line 823
    .line 824
    const-string v1, "Sci-Fi & Fantasy, Drama, Action & Adventure"

    .line 825
    .line 826
    invoke-virtual {v0, v1}, Lflix/com/vision/models/Movie;->setGenres(Ljava/lang/String;)V

    .line 827
    .line 828
    .line 829
    iget-object v0, p0, Lflix/com/vision/models/tmdb/Network;->movie:Lflix/com/vision/models/Movie;

    .line 830
    .line 831
    sget v1, Lflix/com/vision/R$drawable;->hbo_movie:I

    .line 832
    .line 833
    iput v1, v0, Lflix/com/vision/models/Movie;->backdrop_image_res_id:I

    .line 834
    .line 835
    const-string v1, "Seven noble families fight for control of the mythical land of Westeros. Friction between the houses leads to full-scale war. All while a very ancient evil awakens in the farthest north. Amidst the war, a neglected military order of misfits, the Night\'s Watch, is all that stands between the realms of men and icy horrors beyond."

    .line 836
    .line 837
    invoke-virtual {v0, v1}, Lflix/com/vision/models/Movie;->setOverview(Ljava/lang/String;)V

    .line 838
    .line 839
    .line 840
    return-void

    .line 841
    :sswitch_12
    new-instance v0, Lflix/com/vision/models/Movie;

    .line 842
    .line 843
    invoke-direct {v0}, Lflix/com/vision/models/Movie;-><init>()V

    .line 844
    .line 845
    .line 846
    iput-object v0, p0, Lflix/com/vision/models/tmdb/Network;->movie:Lflix/com/vision/models/Movie;

    .line 847
    .line 848
    iput-object v1, v0, Lflix/com/vision/models/Movie;->year:Ljava/lang/String;

    .line 849
    .line 850
    const-string v1, "How I Met Your Mother"

    .line 851
    .line 852
    invoke-virtual {v0, v1}, Lflix/com/vision/models/Movie;->setTitle(Ljava/lang/String;)V

    .line 853
    .line 854
    .line 855
    iget-object v0, p0, Lflix/com/vision/models/tmdb/Network;->movie:Lflix/com/vision/models/Movie;

    .line 856
    .line 857
    invoke-virtual {v0, v12}, Lflix/com/vision/models/Movie;->setType(I)V

    .line 858
    .line 859
    .line 860
    iget-object v0, p0, Lflix/com/vision/models/tmdb/Network;->movie:Lflix/com/vision/models/Movie;

    .line 861
    .line 862
    const-string v1, "Comedy"

    .line 863
    .line 864
    invoke-virtual {v0, v1}, Lflix/com/vision/models/Movie;->setGenres(Ljava/lang/String;)V

    .line 865
    .line 866
    .line 867
    iget-object v0, p0, Lflix/com/vision/models/tmdb/Network;->movie:Lflix/com/vision/models/Movie;

    .line 868
    .line 869
    sget v1, Lflix/com/vision/R$drawable;->cbs_movie:I

    .line 870
    .line 871
    iput v1, v0, Lflix/com/vision/models/Movie;->backdrop_image_res_id:I

    .line 872
    .line 873
    const-string v1, "A father recounts to his children - through a series of flashbacks - the journey he and his four best friends took leading up to him meeting their mother"

    .line 874
    .line 875
    invoke-virtual {v0, v1}, Lflix/com/vision/models/Movie;->setOverview(Ljava/lang/String;)V

    .line 876
    .line 877
    .line 878
    return-void

    .line 879
    :sswitch_13
    new-instance v0, Lflix/com/vision/models/Movie;

    .line 880
    .line 881
    invoke-direct {v0}, Lflix/com/vision/models/Movie;-><init>()V

    .line 882
    .line 883
    .line 884
    iput-object v0, p0, Lflix/com/vision/models/tmdb/Network;->movie:Lflix/com/vision/models/Movie;

    .line 885
    .line 886
    iput-object v1, v0, Lflix/com/vision/models/Movie;->year:Ljava/lang/String;

    .line 887
    .line 888
    const-string v1, "Grey\'s Anatomy"

    .line 889
    .line 890
    invoke-virtual {v0, v1}, Lflix/com/vision/models/Movie;->setTitle(Ljava/lang/String;)V

    .line 891
    .line 892
    .line 893
    iget-object v0, p0, Lflix/com/vision/models/tmdb/Network;->movie:Lflix/com/vision/models/Movie;

    .line 894
    .line 895
    invoke-virtual {v0, v12}, Lflix/com/vision/models/Movie;->setType(I)V

    .line 896
    .line 897
    .line 898
    iget-object v0, p0, Lflix/com/vision/models/tmdb/Network;->movie:Lflix/com/vision/models/Movie;

    .line 899
    .line 900
    invoke-virtual {v0, v10}, Lflix/com/vision/models/Movie;->setGenres(Ljava/lang/String;)V

    .line 901
    .line 902
    .line 903
    iget-object v0, p0, Lflix/com/vision/models/tmdb/Network;->movie:Lflix/com/vision/models/Movie;

    .line 904
    .line 905
    sget v1, Lflix/com/vision/R$drawable;->abc_movie:I

    .line 906
    .line 907
    iput v1, v0, Lflix/com/vision/models/Movie;->backdrop_image_res_id:I

    .line 908
    .line 909
    const-string v1, "Follows the personal and professional lives of a group of doctors at Seattle\u2019s Grey Sloan Memorial Hospital."

    .line 910
    .line 911
    invoke-virtual {v0, v1}, Lflix/com/vision/models/Movie;->setOverview(Ljava/lang/String;)V

    .line 912
    .line 913
    .line 914
    return-void

    .line 915
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_13
        0x10 -> :sswitch_12
        0x31 -> :sswitch_11
        0xae -> :sswitch_10
        0xd5 -> :sswitch_f
        0x13e -> :sswitch_e
        0x1c5 -> :sswitch_d
        0x3e7 -> :sswitch_c
        0x400 -> :sswitch_b
        0x9f8 -> :sswitch_a
        0xab3 -> :sswitch_9
        0xd0f -> :sswitch_8
        0xd19 -> :sswitch_7
        0xfb9 -> :sswitch_6
        0x10ea -> :sswitch_5
        0x1101 -> :sswitch_4
        0x184b -> :sswitch_3
        0x2707 -> :sswitch_2
        0x270f -> :sswitch_1
        0x1869f -> :sswitch_0
    .end sparse-switch
.end method
