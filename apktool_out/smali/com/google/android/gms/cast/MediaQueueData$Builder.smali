.class public Lcom/google/android/gms/cast/MediaQueueData$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/cast/MediaQueueData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public final a:Lcom/google/android/gms/cast/MediaQueueData;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/google/android/gms/cast/MediaQueueData;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaQueueData;->a()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/google/android/gms/cast/MediaQueueData$Builder;->a:Lcom/google/android/gms/cast/MediaQueueData;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/cast/MediaQueueData;
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/cast/MediaQueueData;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaQueueData$Builder;->a:Lcom/google/android/gms/cast/MediaQueueData;

    .line 7
    .line 8
    iget-object v2, v1, Lcom/google/android/gms/cast/MediaQueueData;->b:Ljava/lang/String;

    .line 9
    .line 10
    iput-object v2, v0, Lcom/google/android/gms/cast/MediaQueueData;->b:Ljava/lang/String;

    .line 11
    .line 12
    iget-object v2, v1, Lcom/google/android/gms/cast/MediaQueueData;->e:Ljava/lang/String;

    .line 13
    .line 14
    iput-object v2, v0, Lcom/google/android/gms/cast/MediaQueueData;->e:Ljava/lang/String;

    .line 15
    .line 16
    iget v2, v1, Lcom/google/android/gms/cast/MediaQueueData;->f:I

    .line 17
    .line 18
    iput v2, v0, Lcom/google/android/gms/cast/MediaQueueData;->f:I

    .line 19
    .line 20
    iget-object v2, v1, Lcom/google/android/gms/cast/MediaQueueData;->j:Ljava/lang/String;

    .line 21
    .line 22
    iput-object v2, v0, Lcom/google/android/gms/cast/MediaQueueData;->j:Ljava/lang/String;

    .line 23
    .line 24
    iget-object v2, v1, Lcom/google/android/gms/cast/MediaQueueData;->m:Lcom/google/android/gms/cast/MediaQueueContainerMetadata;

    .line 25
    .line 26
    iput-object v2, v0, Lcom/google/android/gms/cast/MediaQueueData;->m:Lcom/google/android/gms/cast/MediaQueueContainerMetadata;

    .line 27
    .line 28
    iget v2, v1, Lcom/google/android/gms/cast/MediaQueueData;->n:I

    .line 29
    .line 30
    iput v2, v0, Lcom/google/android/gms/cast/MediaQueueData;->n:I

    .line 31
    .line 32
    iget-object v2, v1, Lcom/google/android/gms/cast/MediaQueueData;->p:Ljava/util/ArrayList;

    .line 33
    .line 34
    iput-object v2, v0, Lcom/google/android/gms/cast/MediaQueueData;->p:Ljava/util/ArrayList;

    .line 35
    .line 36
    iget v2, v1, Lcom/google/android/gms/cast/MediaQueueData;->q:I

    .line 37
    .line 38
    iput v2, v0, Lcom/google/android/gms/cast/MediaQueueData;->q:I

    .line 39
    .line 40
    iget-wide v2, v1, Lcom/google/android/gms/cast/MediaQueueData;->r:J

    .line 41
    .line 42
    iput-wide v2, v0, Lcom/google/android/gms/cast/MediaQueueData;->r:J

    .line 43
    .line 44
    iget-boolean v1, v1, Lcom/google/android/gms/cast/MediaQueueData;->s:Z

    .line 45
    .line 46
    iput-boolean v1, v0, Lcom/google/android/gms/cast/MediaQueueData;->s:Z

    .line 47
    .line 48
    return-object v0
.end method

.method public final zza(Lorg/json/JSONObject;)Lcom/google/android/gms/cast/MediaQueueData$Builder;
    .locals 12

    .line 1
    const/4 v0, 0x1

    .line 2
    sget-object v1, Lcom/google/android/gms/cast/MediaQueueData;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaQueueData$Builder;->a:Lcom/google/android/gms/cast/MediaQueueData;

    .line 5
    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/cast/MediaQueueData;->a()V

    .line 7
    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    goto/16 :goto_5

    .line 12
    .line 13
    :cond_0
    const-string v2, "id"

    .line 14
    .line 15
    invoke-static {p1, v2}, Lcom/google/android/gms/cast/internal/CastUtils;->optStringOrNull(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    iput-object v2, v1, Lcom/google/android/gms/cast/MediaQueueData;->b:Ljava/lang/String;

    .line 20
    .line 21
    const-string v2, "entity"

    .line 22
    .line 23
    invoke-static {p1, v2}, Lcom/google/android/gms/cast/internal/CastUtils;->optStringOrNull(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    iput-object v2, v1, Lcom/google/android/gms/cast/MediaQueueData;->e:Ljava/lang/String;

    .line 28
    .line 29
    const-string v2, "queueType"

    .line 30
    .line 31
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    const/4 v4, 0x4

    .line 40
    const/4 v5, 0x3

    .line 41
    const/4 v6, 0x2

    .line 42
    const/4 v7, 0x5

    .line 43
    const/4 v8, 0x0

    .line 44
    const/16 v9, 0x8

    .line 45
    .line 46
    const/4 v10, 0x6

    .line 47
    const/4 v11, 0x7

    .line 48
    sparse-switch v3, :sswitch_data_0

    .line 49
    .line 50
    .line 51
    goto/16 :goto_0

    .line 52
    .line 53
    :sswitch_0
    const-string v3, "LIVE_TV"

    .line 54
    .line 55
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-eqz v2, :cond_1

    .line 60
    .line 61
    move v2, v11

    .line 62
    goto :goto_1

    .line 63
    :sswitch_1
    const-string v3, "VIDEO_PLAYLIST"

    .line 64
    .line 65
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    if-eqz v2, :cond_1

    .line 70
    .line 71
    move v2, v10

    .line 72
    goto :goto_1

    .line 73
    :sswitch_2
    const-string v3, "MOVIE"

    .line 74
    .line 75
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    if-eqz v2, :cond_1

    .line 80
    .line 81
    move v2, v9

    .line 82
    goto :goto_1

    .line 83
    :sswitch_3
    const-string v3, "ALBUM"

    .line 84
    .line 85
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    if-eqz v2, :cond_1

    .line 90
    .line 91
    move v2, v8

    .line 92
    goto :goto_1

    .line 93
    :sswitch_4
    const-string v3, "TV_SERIES"

    .line 94
    .line 95
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    if-eqz v2, :cond_1

    .line 100
    .line 101
    move v2, v7

    .line 102
    goto :goto_1

    .line 103
    :sswitch_5
    const-string v3, "AUDIOBOOK"

    .line 104
    .line 105
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v2

    .line 109
    if-eqz v2, :cond_1

    .line 110
    .line 111
    move v2, v6

    .line 112
    goto :goto_1

    .line 113
    :sswitch_6
    const-string v3, "PLAYLIST"

    .line 114
    .line 115
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result v2

    .line 119
    if-eqz v2, :cond_1

    .line 120
    .line 121
    move v2, v0

    .line 122
    goto :goto_1

    .line 123
    :sswitch_7
    const-string v3, "RADIO_STATION"

    .line 124
    .line 125
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result v2

    .line 129
    if-eqz v2, :cond_1

    .line 130
    .line 131
    move v2, v5

    .line 132
    goto :goto_1

    .line 133
    :sswitch_8
    const-string v3, "PODCAST_SERIES"

    .line 134
    .line 135
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    move-result v2

    .line 139
    if-eqz v2, :cond_1

    .line 140
    .line 141
    move v2, v4

    .line 142
    goto :goto_1

    .line 143
    :cond_1
    :goto_0
    const/4 v2, -0x1

    .line 144
    :goto_1
    packed-switch v2, :pswitch_data_0

    .line 145
    .line 146
    .line 147
    goto :goto_2

    .line 148
    :pswitch_0
    const/16 v2, 0x9

    .line 149
    .line 150
    iput v2, v1, Lcom/google/android/gms/cast/MediaQueueData;->f:I

    .line 151
    .line 152
    goto :goto_2

    .line 153
    :pswitch_1
    iput v9, v1, Lcom/google/android/gms/cast/MediaQueueData;->f:I

    .line 154
    .line 155
    goto :goto_2

    .line 156
    :pswitch_2
    iput v11, v1, Lcom/google/android/gms/cast/MediaQueueData;->f:I

    .line 157
    .line 158
    goto :goto_2

    .line 159
    :pswitch_3
    iput v10, v1, Lcom/google/android/gms/cast/MediaQueueData;->f:I

    .line 160
    .line 161
    goto :goto_2

    .line 162
    :pswitch_4
    iput v7, v1, Lcom/google/android/gms/cast/MediaQueueData;->f:I

    .line 163
    .line 164
    goto :goto_2

    .line 165
    :pswitch_5
    iput v4, v1, Lcom/google/android/gms/cast/MediaQueueData;->f:I

    .line 166
    .line 167
    goto :goto_2

    .line 168
    :pswitch_6
    iput v5, v1, Lcom/google/android/gms/cast/MediaQueueData;->f:I

    .line 169
    .line 170
    goto :goto_2

    .line 171
    :pswitch_7
    iput v6, v1, Lcom/google/android/gms/cast/MediaQueueData;->f:I

    .line 172
    .line 173
    goto :goto_2

    .line 174
    :pswitch_8
    iput v0, v1, Lcom/google/android/gms/cast/MediaQueueData;->f:I

    .line 175
    .line 176
    :goto_2
    const-string v2, "name"

    .line 177
    .line 178
    invoke-static {p1, v2}, Lcom/google/android/gms/cast/internal/CastUtils;->optStringOrNull(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v2

    .line 182
    iput-object v2, v1, Lcom/google/android/gms/cast/MediaQueueData;->j:Ljava/lang/String;

    .line 183
    .line 184
    const-string v2, "containerMetadata"

    .line 185
    .line 186
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 187
    .line 188
    .line 189
    move-result v3

    .line 190
    if-eqz v3, :cond_2

    .line 191
    .line 192
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 193
    .line 194
    .line 195
    move-result-object v2

    .line 196
    goto :goto_3

    .line 197
    :cond_2
    const/4 v2, 0x0

    .line 198
    :goto_3
    if-eqz v2, :cond_3

    .line 199
    .line 200
    new-instance v3, Lcom/google/android/gms/cast/MediaQueueContainerMetadata$Builder;

    .line 201
    .line 202
    invoke-direct {v3}, Lcom/google/android/gms/cast/MediaQueueContainerMetadata$Builder;-><init>()V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v3, v2}, Lcom/google/android/gms/cast/MediaQueueContainerMetadata$Builder;->zza(Lorg/json/JSONObject;)Lcom/google/android/gms/cast/MediaQueueContainerMetadata$Builder;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v3}, Lcom/google/android/gms/cast/MediaQueueContainerMetadata$Builder;->build()Lcom/google/android/gms/cast/MediaQueueContainerMetadata;

    .line 209
    .line 210
    .line 211
    move-result-object v2

    .line 212
    iput-object v2, v1, Lcom/google/android/gms/cast/MediaQueueData;->m:Lcom/google/android/gms/cast/MediaQueueContainerMetadata;

    .line 213
    .line 214
    :cond_3
    const-string v2, "repeatMode"

    .line 215
    .line 216
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v2

    .line 220
    invoke-static {v2}, Lcom/google/android/gms/cast/internal/media/MediaCommon;->mediaRepeatModeFromString(Ljava/lang/String;)Ljava/lang/Integer;

    .line 221
    .line 222
    .line 223
    move-result-object v2

    .line 224
    if-eqz v2, :cond_4

    .line 225
    .line 226
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 227
    .line 228
    .line 229
    move-result v2

    .line 230
    iput v2, v1, Lcom/google/android/gms/cast/MediaQueueData;->n:I

    .line 231
    .line 232
    :cond_4
    const-string v2, "items"

    .line 233
    .line 234
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 235
    .line 236
    .line 237
    move-result-object v2

    .line 238
    if-eqz v2, :cond_6

    .line 239
    .line 240
    new-instance v3, Ljava/util/ArrayList;

    .line 241
    .line 242
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 243
    .line 244
    .line 245
    iput-object v3, v1, Lcom/google/android/gms/cast/MediaQueueData;->p:Ljava/util/ArrayList;

    .line 246
    .line 247
    :goto_4
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    .line 248
    .line 249
    .line 250
    move-result v4

    .line 251
    if-ge v8, v4, :cond_6

    .line 252
    .line 253
    invoke-virtual {v2, v8}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    .line 254
    .line 255
    .line 256
    move-result-object v4

    .line 257
    if-eqz v4, :cond_5

    .line 258
    .line 259
    :try_start_0
    new-instance v5, Lcom/google/android/gms/cast/MediaQueueItem;

    .line 260
    .line 261
    invoke-direct {v5, v4}, Lcom/google/android/gms/cast/MediaQueueItem;-><init>(Lorg/json/JSONObject;)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 265
    .line 266
    .line 267
    :catch_0
    :cond_5
    add-int/2addr v8, v0

    .line 268
    goto :goto_4

    .line 269
    :cond_6
    iget v0, v1, Lcom/google/android/gms/cast/MediaQueueData;->q:I

    .line 270
    .line 271
    const-string v2, "startIndex"

    .line 272
    .line 273
    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 274
    .line 275
    .line 276
    move-result v0

    .line 277
    iput v0, v1, Lcom/google/android/gms/cast/MediaQueueData;->q:I

    .line 278
    .line 279
    const-string v0, "startTime"

    .line 280
    .line 281
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 282
    .line 283
    .line 284
    move-result v2

    .line 285
    if-eqz v2, :cond_7

    .line 286
    .line 287
    iget-wide v2, v1, Lcom/google/android/gms/cast/MediaQueueData;->r:J

    .line 288
    .line 289
    long-to-double v2, v2

    .line 290
    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 291
    .line 292
    .line 293
    move-result-wide v2

    .line 294
    invoke-static {v2, v3}, Lcom/google/android/gms/cast/internal/CastUtils;->secToMillisec(D)J

    .line 295
    .line 296
    .line 297
    move-result-wide v2

    .line 298
    iput-wide v2, v1, Lcom/google/android/gms/cast/MediaQueueData;->r:J

    .line 299
    .line 300
    :cond_7
    const-string v0, "shuffle"

    .line 301
    .line 302
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    .line 303
    .line 304
    .line 305
    move-result p1

    .line 306
    iput-boolean p1, v1, Lcom/google/android/gms/cast/MediaQueueData;->s:Z

    .line 307
    .line 308
    :goto_5
    return-object p0

    .line 309
    :sswitch_data_0
    .sparse-switch
        -0x6b79e7ce -> :sswitch_8
        -0x68d6bb50 -> :sswitch_7
        -0x61538e2e -> :sswitch_6
        -0x4ea9f461 -> :sswitch_5
        -0x40e1912c -> :sswitch_4
        0x3b7864f -> :sswitch_3
        0x4624710 -> :sswitch_2
        0x176e3d36 -> :sswitch_1
        0x35c80eb5 -> :sswitch_0
    .end sparse-switch

    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
