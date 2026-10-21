.class public final synthetic Lflix/com/vision/processors/english/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:Lflix/com/vision/processors/english/m;


# direct methods
.method public synthetic constructor <init>(Lflix/com/vision/processors/english/m;I)V
    .locals 0

    .line 1
    iput p2, p0, Lflix/com/vision/processors/english/j;->b:I

    iput-object p1, p0, Lflix/com/vision/processors/english/j;->e:Lflix/com/vision/processors/english/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 7

    .line 1
    iget v0, p0, Lflix/com/vision/processors/english/j;->b:I

    .line 2
    .line 3
    check-cast p1, Lcom/google/gson/JsonElement;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lflix/com/vision/processors/english/j;->e:Lflix/com/vision/processors/english/m;

    .line 9
    .line 10
    check-cast v0, Lflix/com/vision/processors/english/s;

    .line 11
    .line 12
    if-eqz p1, :cond_2

    .line 13
    .line 14
    const-string v1, "data"

    .line 15
    .line 16
    invoke-static {v1, p1}, Lb/c;->f(Ljava/lang/String;Lcom/google/gson/JsonElement;)Lcom/google/gson/JsonArray;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    const/4 v1, 0x0

    .line 21
    :goto_0
    invoke-virtual {p1}, Lcom/google/gson/JsonArray;->size()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-ge v1, v2, :cond_2

    .line 26
    .line 27
    invoke-virtual {p1, v1}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    const-string v3, "imdb_id"

    .line 36
    .line 37
    invoke-virtual {v2, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    const-string v4, "title"

    .line 46
    .line 47
    invoke-virtual {v2, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    iget-object v5, v0, Lflix/com/vision/processors/english/s;->b:Lflix/com/vision/models/Movie;

    .line 56
    .line 57
    invoke-virtual {v5}, Lflix/com/vision/models/Movie;->getTitle()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v6

    .line 61
    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    if-nez v4, :cond_1

    .line 66
    .line 67
    if-eqz v3, :cond_0

    .line 68
    .line 69
    invoke-virtual {v5}, Lflix/com/vision/models/Movie;->getImdbID()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    if-eqz v3, :cond_0

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_1
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    .line 87
    .line 88
    iget-object v1, v0, Lflix/com/vision/processors/english/m;->domain:Ljava/lang/String;

    .line 89
    .line 90
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string v1, "movie/"

    .line 94
    .line 95
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    const-string v1, "slug"

    .line 99
    .line 100
    invoke-virtual {v2, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    goto :goto_2

    .line 116
    :cond_2
    const/4 p1, 0x0

    .line 117
    :goto_2
    if-eqz p1, :cond_3

    .line 118
    .line 119
    new-instance v1, Landroid/os/Handler;

    .line 120
    .line 121
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 126
    .line 127
    .line 128
    new-instance v2, Lflix/com/vision/activities/leanback/fragment/a;

    .line 129
    .line 130
    const/4 v3, 0x4

    .line 131
    invoke-direct {v2, v3, v0, p1}, Lflix/com/vision/activities/leanback/fragment/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 135
    .line 136
    .line 137
    :cond_3
    return-void

    .line 138
    :pswitch_0
    iget-object v0, p0, Lflix/com/vision/processors/english/j;->e:Lflix/com/vision/processors/english/m;

    .line 139
    .line 140
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 141
    .line 142
    .line 143
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    const-string v1, "status"

    .line 148
    .line 149
    invoke-virtual {p1, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    if-eqz v1, :cond_7

    .line 158
    .line 159
    const-string v2, "success"

    .line 160
    .line 161
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    move-result v1

    .line 165
    if-eqz v1, :cond_7

    .line 166
    .line 167
    const-string v1, "data"

    .line 168
    .line 169
    invoke-virtual {p1, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    const-string v1, "link"

    .line 178
    .line 179
    invoke-virtual {p1, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v1

    .line 187
    const-string v2, "filesize"

    .line 188
    .line 189
    invoke-virtual {p1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsLong()J

    .line 194
    .line 195
    .line 196
    move-result-wide v2

    .line 197
    const-wide/32 v4, 0x5f5e100

    .line 198
    .line 199
    .line 200
    cmp-long p1, v2, v4

    .line 201
    .line 202
    if-gez p1, :cond_4

    .line 203
    .line 204
    goto :goto_4

    .line 205
    :cond_4
    const-wide/16 v4, 0x0

    .line 206
    .line 207
    cmp-long p1, v2, v4

    .line 208
    .line 209
    if-eqz p1, :cond_5

    .line 210
    .line 211
    const-wide/16 v4, -0x1

    .line 212
    .line 213
    cmp-long p1, v2, v4

    .line 214
    .line 215
    if-eqz p1, :cond_5

    .line 216
    .line 217
    invoke-static {v2, v3}, LT4/m;->readableFileSize(J)Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object p1

    .line 221
    goto :goto_3

    .line 222
    :cond_5
    const-string p1, ""

    .line 223
    .line 224
    :goto_3
    new-instance v2, Lflix/com/vision/models/VideoSource;

    .line 225
    .line 226
    invoke-direct {v2}, Lflix/com/vision/models/VideoSource;-><init>()V

    .line 227
    .line 228
    .line 229
    const/4 v3, 0x1

    .line 230
    iput-boolean v3, v2, Lflix/com/vision/models/VideoSource;->streamable:Z

    .line 231
    .line 232
    const-string v4, "[ALLDEBRID] [FAST] ["

    .line 233
    .line 234
    const-string v5, "]"

    .line 235
    .line 236
    invoke-static {v4, p1, v5}, LA/i;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object p1

    .line 240
    iput-object p1, v2, Lflix/com/vision/models/VideoSource;->label:Ljava/lang/String;

    .line 241
    .line 242
    iput-object v1, v2, Lflix/com/vision/models/VideoSource;->streamUrl:Ljava/lang/String;

    .line 243
    .line 244
    iput-boolean v3, v2, Lflix/com/vision/models/VideoSource;->isAllDebrid:Z

    .line 245
    .line 246
    iput-boolean v3, v2, Lflix/com/vision/models/VideoSource;->isTorrentMagnet:Z

    .line 247
    .line 248
    invoke-static {v2}, Lflix/com/vision/activities/LinksActivity;->setRDQtyLabel(Lflix/com/vision/models/VideoSource;)V

    .line 249
    .line 250
    .line 251
    iget p1, v2, Lflix/com/vision/models/VideoSource;->quality:I

    .line 252
    .line 253
    if-nez p1, :cond_6

    .line 254
    .line 255
    const/16 p1, 0x12c

    .line 256
    .line 257
    iput p1, v2, Lflix/com/vision/models/VideoSource;->quality:I

    .line 258
    .line 259
    :cond_6
    invoke-virtual {v0, v2}, Lflix/com/vision/processors/english/m;->addLink(Lflix/com/vision/models/VideoSource;)V

    .line 260
    .line 261
    .line 262
    :cond_7
    :goto_4
    return-void

    .line 263
    :pswitch_1
    iget-object v0, p0, Lflix/com/vision/processors/english/j;->e:Lflix/com/vision/processors/english/m;

    .line 264
    .line 265
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 266
    .line 267
    .line 268
    move-result-object p1

    .line 269
    const-string v1, "data"

    .line 270
    .line 271
    invoke-virtual {p1, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 272
    .line 273
    .line 274
    move-result-object p1

    .line 275
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 276
    .line 277
    .line 278
    move-result-object p1

    .line 279
    const-string v1, "magnets"

    .line 280
    .line 281
    invoke-virtual {p1, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 282
    .line 283
    .line 284
    move-result-object p1

    .line 285
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    .line 286
    .line 287
    .line 288
    move-result-object p1

    .line 289
    const/4 v1, 0x0

    .line 290
    :goto_5
    invoke-virtual {p1}, Lcom/google/gson/JsonArray;->size()I

    .line 291
    .line 292
    .line 293
    move-result v2

    .line 294
    if-ge v1, v2, :cond_9

    .line 295
    .line 296
    invoke-virtual {p1, v1}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    .line 297
    .line 298
    .line 299
    move-result-object v2

    .line 300
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 301
    .line 302
    .line 303
    move-result-object v2

    .line 304
    const-string v3, "ready"

    .line 305
    .line 306
    invoke-virtual {v2, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 307
    .line 308
    .line 309
    move-result-object v3

    .line 310
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    .line 311
    .line 312
    .line 313
    move-result v3

    .line 314
    if-eqz v3, :cond_8

    .line 315
    .line 316
    iget-object v3, v0, Lflix/com/vision/processors/english/m;->ids:Ljava/util/ArrayDeque;

    .line 317
    .line 318
    const-string v4, "id"

    .line 319
    .line 320
    invoke-virtual {v2, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 321
    .line 322
    .line 323
    move-result-object v2

    .line 324
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsInt()I

    .line 325
    .line 326
    .line 327
    move-result v2

    .line 328
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 329
    .line 330
    .line 331
    move-result-object v2

    .line 332
    invoke-virtual {v3, v2}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 333
    .line 334
    .line 335
    :cond_8
    add-int/lit8 v1, v1, 0x1

    .line 336
    .line 337
    goto :goto_5

    .line 338
    :cond_9
    iget-object p1, v0, Lflix/com/vision/processors/english/m;->ids:Ljava/util/ArrayDeque;

    .line 339
    .line 340
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->size()I

    .line 341
    .line 342
    .line 343
    move-result p1

    .line 344
    if-lez p1, :cond_a

    .line 345
    .line 346
    new-instance p1, Landroid/os/Handler;

    .line 347
    .line 348
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 349
    .line 350
    .line 351
    new-instance v1, Lflix/com/vision/processors/english/d;

    .line 352
    .line 353
    const/4 v2, 0x0

    .line 354
    invoke-direct {v1, v0, v2}, Lflix/com/vision/processors/english/d;-><init>(Ljava/lang/Object;I)V

    .line 355
    .line 356
    .line 357
    const-wide/16 v2, 0x2710

    .line 358
    .line 359
    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 360
    .line 361
    .line 362
    :cond_a
    return-void

    .line 363
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
