.class public final synthetic Lflix/com/vision/processors/english/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:Lflix/com/vision/processors/english/m;

.field public final synthetic f:J

.field public final synthetic j:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lflix/com/vision/processors/english/m;JLjava/lang/String;I)V
    .locals 0

    .line 1
    iput p5, p0, Lflix/com/vision/processors/english/f;->b:I

    iput-object p1, p0, Lflix/com/vision/processors/english/f;->e:Lflix/com/vision/processors/english/m;

    iput-wide p2, p0, Lflix/com/vision/processors/english/f;->f:J

    iput-object p4, p0, Lflix/com/vision/processors/english/f;->j:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 10

    .line 1
    iget v0, p0, Lflix/com/vision/processors/english/f;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lflix/com/vision/processors/english/f;->j:Ljava/lang/String;

    .line 7
    .line 8
    check-cast p1, Lcom/google/gson/JsonElement;

    .line 9
    .line 10
    iget-object v1, p0, Lflix/com/vision/processors/english/f;->e:Lflix/com/vision/processors/english/m;

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    const-string v2, "data"

    .line 16
    .line 17
    const-string v3, "success"

    .line 18
    .line 19
    const-string v4, "[TORBOX] [FAST]"

    .line 20
    .line 21
    const-string v5, " ["

    .line 22
    .line 23
    :try_start_0
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p1, v3}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    .line 28
    .line 29
    .line 30
    move-result v6

    .line 31
    if-eqz v6, :cond_2

    .line 32
    .line 33
    invoke-virtual {p1, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-eqz v3, :cond_2

    .line 42
    .line 43
    invoke-virtual {p1, v2}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    if-eqz v3, :cond_2

    .line 48
    .line 49
    invoke-virtual {p1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    const-string v2, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .line 59
    const-wide/16 v6, 0x0

    .line 60
    .line 61
    iget-wide v8, p0, Lflix/com/vision/processors/english/f;->f:J

    .line 62
    .line 63
    cmp-long v3, v8, v6

    .line 64
    .line 65
    if-lez v3, :cond_0

    .line 66
    .line 67
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-static {v8, v9}, LT4/m;->readableFileSize(J)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    const-string v3, "]"

    .line 80
    .line 81
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    goto :goto_0

    .line 89
    :catch_0
    move-exception p1

    .line 90
    goto :goto_1

    .line 91
    :cond_0
    :goto_0
    new-instance v3, Lflix/com/vision/models/VideoSource;

    .line 92
    .line 93
    invoke-direct {v3}, Lflix/com/vision/models/VideoSource;-><init>()V

    .line 94
    .line 95
    .line 96
    iput-object p1, v3, Lflix/com/vision/models/VideoSource;->streamUrl:Ljava/lang/String;

    .line 97
    .line 98
    new-instance p1, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    iput-object p1, v3, Lflix/com/vision/models/VideoSource;->label:Ljava/lang/String;

    .line 111
    .line 112
    invoke-virtual {v1, v0}, Lflix/com/vision/processors/english/m;->getOriginalName(Ljava/lang/String;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    iput-object p1, v3, Lflix/com/vision/models/VideoSource;->originalFileName:Ljava/lang/String;

    .line 117
    .line 118
    const/4 p1, 0x1

    .line 119
    iput-boolean p1, v3, Lflix/com/vision/models/VideoSource;->streamable:Z

    .line 120
    .line 121
    iput-boolean p1, v3, Lflix/com/vision/models/VideoSource;->isTorbox:Z

    .line 122
    .line 123
    iput-boolean p1, v3, Lflix/com/vision/models/VideoSource;->isTorrentMagnet:Z

    .line 124
    .line 125
    invoke-static {v3}, Lflix/com/vision/processors/english/m;->setRDQtyLabelNew(Lflix/com/vision/models/VideoSource;)V

    .line 126
    .line 127
    .line 128
    iget p1, v3, Lflix/com/vision/models/VideoSource;->quality:I

    .line 129
    .line 130
    if-nez p1, :cond_1

    .line 131
    .line 132
    const/16 p1, 0x12c

    .line 133
    .line 134
    iput p1, v3, Lflix/com/vision/models/VideoSource;->quality:I

    .line 135
    .line 136
    :cond_1
    invoke-virtual {v1, v3}, Lflix/com/vision/processors/english/m;->addLink(Lflix/com/vision/models/VideoSource;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 137
    .line 138
    .line 139
    goto :goto_2

    .line 140
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 141
    .line 142
    .line 143
    :cond_2
    :goto_2
    return-void

    .line 144
    :pswitch_0
    check-cast p1, Lcom/google/gson/JsonElement;

    .line 145
    .line 146
    iget-object v0, p0, Lflix/com/vision/processors/english/f;->e:Lflix/com/vision/processors/english/m;

    .line 147
    .line 148
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 149
    .line 150
    .line 151
    const-string v1, "data"

    .line 152
    .line 153
    const-string v2, "success"

    .line 154
    .line 155
    const-string v3, "[TORBOX] [FAST]"

    .line 156
    .line 157
    const-string v4, "["

    .line 158
    .line 159
    const-string v5, " ["

    .line 160
    .line 161
    :try_start_2
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    invoke-virtual {p1, v2}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    .line 166
    .line 167
    .line 168
    move-result v6

    .line 169
    if-eqz v6, :cond_7

    .line 170
    .line 171
    invoke-virtual {p1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 172
    .line 173
    .line 174
    move-result-object v2

    .line 175
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    .line 176
    .line 177
    .line 178
    move-result v2

    .line 179
    if-eqz v2, :cond_7

    .line 180
    .line 181
    invoke-virtual {p1, v1}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    .line 182
    .line 183
    .line 184
    move-result v2

    .line 185
    if-eqz v2, :cond_7

    .line 186
    .line 187
    invoke-virtual {p1, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object p1

    .line 195
    const-string v1, ""
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 196
    .line 197
    const-wide/16 v6, 0x0

    .line 198
    .line 199
    iget-wide v8, p0, Lflix/com/vision/processors/english/f;->f:J

    .line 200
    .line 201
    cmp-long v2, v8, v6

    .line 202
    .line 203
    if-lez v2, :cond_3

    .line 204
    .line 205
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 206
    .line 207
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    invoke-static {v8, v9}, LT4/m;->readableFileSize(J)Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v2

    .line 214
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    const-string v2, "]"

    .line 218
    .line 219
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v1

    .line 226
    goto :goto_3

    .line 227
    :catch_1
    move-exception p1

    .line 228
    goto :goto_5

    .line 229
    :cond_3
    :goto_3
    new-instance v2, Lflix/com/vision/models/VideoSource;

    .line 230
    .line 231
    invoke-direct {v2}, Lflix/com/vision/models/VideoSource;-><init>()V

    .line 232
    .line 233
    .line 234
    iput-object p1, v2, Lflix/com/vision/models/VideoSource;->streamUrl:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 235
    .line 236
    iget-object p1, p0, Lflix/com/vision/processors/english/f;->j:Ljava/lang/String;

    .line 237
    .line 238
    if-eqz p1, :cond_4

    .line 239
    .line 240
    :try_start_4
    const-string v5, "http"

    .line 241
    .line 242
    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 243
    .line 244
    .line 245
    move-result v5

    .line 246
    if-eqz v5, :cond_4

    .line 247
    .line 248
    invoke-virtual {v0, p1}, Lflix/com/vision/processors/english/m;->getDomainName(Ljava/lang/String;)Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v3

    .line 252
    if-eqz v3, :cond_5

    .line 253
    .line 254
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 255
    .line 256
    .line 257
    move-result v5

    .line 258
    if-nez v5, :cond_5

    .line 259
    .line 260
    new-instance v5, Ljava/lang/StringBuilder;

    .line 261
    .line 262
    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    const-string v3, "] [TORBOX]"

    .line 269
    .line 270
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v1

    .line 280
    iput-object v1, v2, Lflix/com/vision/models/VideoSource;->label:Ljava/lang/String;

    .line 281
    .line 282
    goto :goto_4

    .line 283
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    .line 284
    .line 285
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 286
    .line 287
    .line 288
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v1

    .line 295
    iput-object v1, v2, Lflix/com/vision/models/VideoSource;->label:Ljava/lang/String;

    .line 296
    .line 297
    :cond_5
    :goto_4
    invoke-virtual {v0, p1}, Lflix/com/vision/processors/english/m;->getOriginalName(Ljava/lang/String;)Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object p1

    .line 301
    iput-object p1, v2, Lflix/com/vision/models/VideoSource;->originalFileName:Ljava/lang/String;

    .line 302
    .line 303
    const/4 p1, 0x1

    .line 304
    iput-boolean p1, v2, Lflix/com/vision/models/VideoSource;->streamable:Z

    .line 305
    .line 306
    iput-boolean p1, v2, Lflix/com/vision/models/VideoSource;->isTorbox:Z

    .line 307
    .line 308
    iput-boolean p1, v2, Lflix/com/vision/models/VideoSource;->isTorrentMagnet:Z

    .line 309
    .line 310
    invoke-static {v2}, Lflix/com/vision/processors/english/m;->setRDQtyLabelNew(Lflix/com/vision/models/VideoSource;)V

    .line 311
    .line 312
    .line 313
    iget p1, v2, Lflix/com/vision/models/VideoSource;->quality:I

    .line 314
    .line 315
    if-nez p1, :cond_6

    .line 316
    .line 317
    const/16 p1, 0x12c

    .line 318
    .line 319
    iput p1, v2, Lflix/com/vision/models/VideoSource;->quality:I

    .line 320
    .line 321
    :cond_6
    invoke-virtual {v0, v2}, Lflix/com/vision/processors/english/m;->addLink(Lflix/com/vision/models/VideoSource;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 322
    .line 323
    .line 324
    goto :goto_6

    .line 325
    :goto_5
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 326
    .line 327
    .line 328
    :cond_7
    :goto_6
    return-void

    .line 329
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
