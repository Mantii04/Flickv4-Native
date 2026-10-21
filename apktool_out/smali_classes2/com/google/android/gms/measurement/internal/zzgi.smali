.class final Lcom/google/android/gms/measurement/internal/zzgi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final b:Ljava/net/URL;

.field public final e:[B

.field public final f:Lcom/google/android/gms/measurement/internal/zzgh;

.field public final j:Ljava/lang/String;

.field public final m:Ljava/util/Map;

.field public final synthetic n:Lcom/google/android/gms/measurement/internal/zzge;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzge;Ljava/lang/String;Ljava/net/URL;[BLjava/util/Map;Lcom/google/android/gms/measurement/internal/zzgh;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/net/URL;",
            "[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/measurement/internal/zzgh;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzgi;->n:Lcom/google/android/gms/measurement/internal/zzge;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    invoke-static {p6}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzgi;->b:Ljava/net/URL;

    .line 16
    .line 17
    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zzgi;->e:[B

    .line 18
    .line 19
    iput-object p6, p0, Lcom/google/android/gms/measurement/internal/zzgi;->f:Lcom/google/android/gms/measurement/internal/zzgh;

    .line 20
    .line 21
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzgi;->j:Ljava/lang/String;

    .line 22
    .line 23
    iput-object p5, p0, Lcom/google/android/gms/measurement/internal/zzgi;->m:Ljava/util/Map;

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzgi;->j:Ljava/lang/String;

    .line 4
    .line 5
    const-string v3, "Error closing HTTP compressed POST connection output stream. appId"

    .line 6
    .line 7
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzgi;->n:Lcom/google/android/gms/measurement/internal/zzge;

    .line 8
    .line 9
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzge;->zzr()V

    .line 10
    .line 11
    .line 12
    const/4 v5, 0x0

    .line 13
    const/4 v6, 0x0

    .line 14
    :try_start_0
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzgi;->b:Ljava/net/URL;

    .line 15
    .line 16
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzcq;->zza()Lcom/google/android/gms/internal/measurement/zzcq;

    .line 17
    .line 18
    .line 19
    move-result-object v7

    .line 20
    const-string v8, "client-measurement"

    .line 21
    .line 22
    invoke-virtual {v7, v0, v8}, Lcom/google/android/gms/internal/measurement/zzcq;->zza(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URLConnection;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    instance-of v7, v0, Ljava/net/HttpURLConnection;

    .line 27
    .line 28
    if-eqz v7, :cond_2

    .line 29
    .line 30
    move-object v7, v0

    .line 31
    check-cast v7, Ljava/net/HttpURLConnection;

    .line 32
    .line 33
    invoke-virtual {v7, v6}, Ljava/net/URLConnection;->setDefaultUseCaches(Z)V

    .line 34
    .line 35
    .line 36
    const v0, 0xea60

    .line 37
    .line 38
    .line 39
    invoke-virtual {v7, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 40
    .line 41
    .line 42
    const v0, 0xee48

    .line 43
    .line 44
    .line 45
    invoke-virtual {v7, v0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v7, v6}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 49
    .line 50
    .line 51
    const/4 v0, 0x1

    .line 52
    invoke-virtual {v7, v0}, Ljava/net/URLConnection;->setDoInput(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 53
    .line 54
    .line 55
    :try_start_1
    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzgi;->m:Ljava/util/Map;

    .line 56
    .line 57
    if-eqz v8, :cond_0

    .line 58
    .line 59
    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 60
    .line 61
    .line 62
    move-result-object v8

    .line 63
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 64
    .line 65
    .line 66
    move-result-object v8

    .line 67
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 68
    .line 69
    .line 70
    move-result v9

    .line 71
    if-eqz v9, :cond_0

    .line 72
    .line 73
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v9

    .line 77
    check-cast v9, Ljava/util/Map$Entry;

    .line 78
    .line 79
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v10

    .line 83
    check-cast v10, Ljava/lang/String;

    .line 84
    .line 85
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v9

    .line 89
    check-cast v9, Ljava/lang/String;

    .line 90
    .line 91
    invoke-virtual {v7, v10, v9}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    .line 93
    .line 94
    goto :goto_0

    .line 95
    :catchall_0
    move-exception v0

    .line 96
    move-object v9, v5

    .line 97
    :goto_1
    move-object/from16 v16, v9

    .line 98
    .line 99
    :goto_2
    move v13, v6

    .line 100
    :goto_3
    move-object v5, v0

    .line 101
    goto/16 :goto_7

    .line 102
    .line 103
    :catch_0
    move-exception v0

    .line 104
    move-object v11, v0

    .line 105
    move-object v13, v5

    .line 106
    :goto_4
    move v10, v6

    .line 107
    goto/16 :goto_9

    .line 108
    .line 109
    :cond_0
    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzgi;->e:[B

    .line 110
    .line 111
    if-eqz v8, :cond_1

    .line 112
    .line 113
    :try_start_2
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzge;->g_()Lcom/google/android/gms/measurement/internal/zznm;

    .line 114
    .line 115
    .line 116
    move-result-object v9

    .line 117
    invoke-virtual {v9, v8}, Lcom/google/android/gms/measurement/internal/zznm;->G([B)[B

    .line 118
    .line 119
    .line 120
    move-result-object v8

    .line 121
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzge;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    .line 122
    .line 123
    .line 124
    move-result-object v9

    .line 125
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzgb;->zzp()Lcom/google/android/gms/measurement/internal/zzgd;

    .line 126
    .line 127
    .line 128
    move-result-object v9

    .line 129
    const-string v10, "Uploading data. size"

    .line 130
    .line 131
    array-length v11, v8

    .line 132
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 133
    .line 134
    .line 135
    move-result-object v11

    .line 136
    invoke-virtual {v9, v10, v11}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v7, v0}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 140
    .line 141
    .line 142
    const-string v0, "Content-Encoding"

    .line 143
    .line 144
    const-string v9, "gzip"

    .line 145
    .line 146
    invoke-virtual {v7, v0, v9}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    array-length v0, v8

    .line 150
    invoke-virtual {v7, v0}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v7}, Ljava/net/URLConnection;->connect()V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v7}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    .line 157
    .line 158
    .line 159
    move-result-object v9
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 160
    :try_start_3
    invoke-virtual {v9, v8}, Ljava/io/OutputStream;->write([B)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 164
    .line 165
    .line 166
    goto :goto_5

    .line 167
    :catchall_1
    move-exception v0

    .line 168
    move-object/from16 v16, v5

    .line 169
    .line 170
    goto :goto_2

    .line 171
    :catch_1
    move-exception v0

    .line 172
    move-object v11, v0

    .line 173
    move-object v13, v5

    .line 174
    move v10, v6

    .line 175
    move-object v5, v9

    .line 176
    goto/16 :goto_9

    .line 177
    .line 178
    :cond_1
    :goto_5
    :try_start_4
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 179
    .line 180
    .line 181
    move-result v11
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 182
    :try_start_5
    invoke-virtual {v7}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    .line 183
    .line 184
    .line 185
    move-result-object v14
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 186
    :try_start_6
    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/zzge;->a(Ljava/net/HttpURLConnection;)[B

    .line 187
    .line 188
    .line 189
    move-result-object v13
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 190
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzge;->zzl()Lcom/google/android/gms/measurement/internal/zzhh;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    new-instance v8, Lcom/google/android/gms/measurement/internal/zzgg;

    .line 198
    .line 199
    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzgi;->j:Ljava/lang/String;

    .line 200
    .line 201
    iget-object v10, v1, Lcom/google/android/gms/measurement/internal/zzgi;->f:Lcom/google/android/gms/measurement/internal/zzgh;

    .line 202
    .line 203
    const/4 v12, 0x0

    .line 204
    invoke-direct/range {v8 .. v14}, Lcom/google/android/gms/measurement/internal/zzgg;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzgh;ILjava/io/IOException;[BLjava/util/Map;)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v0, v8}, Lcom/google/android/gms/measurement/internal/zzhh;->zzb(Ljava/lang/Runnable;)V

    .line 208
    .line 209
    .line 210
    return-void

    .line 211
    :catchall_2
    move-exception v0

    .line 212
    move-object v9, v5

    .line 213
    move v13, v11

    .line 214
    move-object/from16 v16, v14

    .line 215
    .line 216
    goto :goto_3

    .line 217
    :catch_2
    move-exception v0

    .line 218
    move v10, v11

    .line 219
    move-object v13, v14

    .line 220
    :goto_6
    move-object v11, v0

    .line 221
    goto :goto_9

    .line 222
    :catchall_3
    move-exception v0

    .line 223
    move-object v9, v5

    .line 224
    move-object/from16 v16, v9

    .line 225
    .line 226
    move v13, v11

    .line 227
    goto :goto_3

    .line 228
    :catch_3
    move-exception v0

    .line 229
    move-object v13, v5

    .line 230
    move v10, v11

    .line 231
    goto :goto_6

    .line 232
    :catchall_4
    move-exception v0

    .line 233
    move-object v7, v5

    .line 234
    move-object v9, v7

    .line 235
    goto/16 :goto_1

    .line 236
    .line 237
    :catch_4
    move-exception v0

    .line 238
    move-object v11, v0

    .line 239
    move-object v7, v5

    .line 240
    move-object v13, v7

    .line 241
    goto/16 :goto_4

    .line 242
    .line 243
    :cond_2
    :try_start_7
    new-instance v0, Ljava/io/IOException;

    .line 244
    .line 245
    const-string v7, "Failed to obtain HTTP connection"

    .line 246
    .line 247
    invoke-direct {v0, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 248
    .line 249
    .line 250
    throw v0
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 251
    :goto_7
    if-eqz v9, :cond_3

    .line 252
    .line 253
    :try_start_8
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 254
    .line 255
    .line 256
    goto :goto_8

    .line 257
    :catch_5
    move-exception v0

    .line 258
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzge;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    .line 259
    .line 260
    .line 261
    move-result-object v6

    .line 262
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzgb;->zzg()Lcom/google/android/gms/measurement/internal/zzgd;

    .line 263
    .line 264
    .line 265
    move-result-object v6

    .line 266
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;)Ljava/lang/Object;

    .line 267
    .line 268
    .line 269
    move-result-object v2

    .line 270
    invoke-virtual {v6, v3, v2, v0}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 271
    .line 272
    .line 273
    :cond_3
    :goto_8
    if-eqz v7, :cond_4

    .line 274
    .line 275
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 276
    .line 277
    .line 278
    :cond_4
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzge;->zzl()Lcom/google/android/gms/measurement/internal/zzhh;

    .line 279
    .line 280
    .line 281
    move-result-object v0

    .line 282
    new-instance v10, Lcom/google/android/gms/measurement/internal/zzgg;

    .line 283
    .line 284
    iget-object v12, v1, Lcom/google/android/gms/measurement/internal/zzgi;->f:Lcom/google/android/gms/measurement/internal/zzgh;

    .line 285
    .line 286
    const/4 v14, 0x0

    .line 287
    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzgi;->j:Ljava/lang/String;

    .line 288
    .line 289
    const/4 v15, 0x0

    .line 290
    invoke-direct/range {v10 .. v16}, Lcom/google/android/gms/measurement/internal/zzgg;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzgh;ILjava/io/IOException;[BLjava/util/Map;)V

    .line 291
    .line 292
    .line 293
    invoke-virtual {v0, v10}, Lcom/google/android/gms/measurement/internal/zzhh;->zzb(Ljava/lang/Runnable;)V

    .line 294
    .line 295
    .line 296
    throw v5

    .line 297
    :goto_9
    if-eqz v5, :cond_5

    .line 298
    .line 299
    :try_start_9
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 300
    .line 301
    .line 302
    goto :goto_a

    .line 303
    :catch_6
    move-exception v0

    .line 304
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzge;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    .line 305
    .line 306
    .line 307
    move-result-object v5

    .line 308
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzgb;->zzg()Lcom/google/android/gms/measurement/internal/zzgd;

    .line 309
    .line 310
    .line 311
    move-result-object v5

    .line 312
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;)Ljava/lang/Object;

    .line 313
    .line 314
    .line 315
    move-result-object v2

    .line 316
    invoke-virtual {v5, v3, v2, v0}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 317
    .line 318
    .line 319
    :cond_5
    :goto_a
    if-eqz v7, :cond_6

    .line 320
    .line 321
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 322
    .line 323
    .line 324
    :cond_6
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzge;->zzl()Lcom/google/android/gms/measurement/internal/zzhh;

    .line 325
    .line 326
    .line 327
    move-result-object v0

    .line 328
    new-instance v7, Lcom/google/android/gms/measurement/internal/zzgg;

    .line 329
    .line 330
    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzgi;->j:Ljava/lang/String;

    .line 331
    .line 332
    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzgi;->f:Lcom/google/android/gms/measurement/internal/zzgh;

    .line 333
    .line 334
    const/4 v12, 0x0

    .line 335
    invoke-direct/range {v7 .. v13}, Lcom/google/android/gms/measurement/internal/zzgg;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzgh;ILjava/io/IOException;[BLjava/util/Map;)V

    .line 336
    .line 337
    .line 338
    invoke-virtual {v0, v7}, Lcom/google/android/gms/measurement/internal/zzhh;->zzb(Ljava/lang/Runnable;)V

    .line 339
    .line 340
    .line 341
    return-void
.end method
