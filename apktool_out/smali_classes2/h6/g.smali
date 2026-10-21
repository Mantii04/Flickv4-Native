.class public final Lh6/g;
.super Lh6/c;
.source "SourceFile"

# interfaces
.implements Lg6/c;


# static fields
.field public static m:Ljavax/net/ssl/SSLSocketFactory;

.field public static final n:Ljava/util/regex/Pattern;


# instance fields
.field public e:Ljava/nio/ByteBuffer;

.field public f:Ljava/io/InputStream;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Z

.field public j:Z

.field public k:I

.field public l:Lh6/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "(application|text)/\\w*\\+?xml.*"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lh6/g;->n:Ljava/util/regex/Pattern;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lh6/g;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lh6/c;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lh6/g;->i:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lh6/g;->j:Z

    .line 8
    .line 9
    iput v0, p0, Lh6/g;->k:I

    .line 10
    .line 11
    if-eqz p1, :cond_1

    .line 12
    .line 13
    iget v0, p1, Lh6/g;->k:I

    .line 14
    .line 15
    add-int/lit8 v0, v0, 0x1

    .line 16
    .line 17
    iput v0, p0, Lh6/g;->k:I

    .line 18
    .line 19
    const/16 v1, 0x14

    .line 20
    .line 21
    if-ge v0, v1, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v0, Ljava/io/IOException;

    .line 25
    .line 26
    invoke-virtual {p1}, Lh6/g;->url()Ljava/net/URL;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string v2, "Too many redirects occurred trying to load URL "

    .line 33
    .line 34
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw v0

    .line 48
    :cond_1
    :goto_0
    return-void
.end method

.method public static b(Lh6/d;Lh6/g;)Lh6/g;
    .locals 12

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const-string v2, "Request must not be null"

    .line 4
    .line 5
    invoke-static {p0, v2}, Lh6/k;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lh6/d;->url()Ljava/net/URL;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {v2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    const-string v3, "http"

    .line 17
    .line 18
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-nez v3, :cond_1

    .line 23
    .line 24
    const-string v3, "https"

    .line 25
    .line 26
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    new-instance p0, Ljava/net/MalformedURLException;

    .line 34
    .line 35
    const-string p1, "Only http & https protocols supported"

    .line 36
    .line 37
    invoke-direct {p0, p1}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw p0

    .line 41
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lh6/d;->method()Lorg/jsoup/Connection$Method;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {v2}, Lorg/jsoup/Connection$Method;->hasBody()Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    invoke-virtual {p0}, Lh6/d;->requestBody()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    if-eqz v3, :cond_2

    .line 54
    .line 55
    move v3, v0

    .line 56
    goto :goto_1

    .line 57
    :cond_2
    move v3, v1

    .line 58
    :goto_1
    if-nez v2, :cond_3

    .line 59
    .line 60
    new-instance v4, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    const-string v5, "Cannot set a request body for HTTP method "

    .line 63
    .line 64
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Lh6/d;->method()Lorg/jsoup/Connection$Method;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    invoke-static {v3, v4}, Lh6/k;->isFalse(ZLjava/lang/String;)V

    .line 79
    .line 80
    .line 81
    :cond_3
    invoke-virtual {p0}, Lh6/d;->data()Ljava/util/Collection;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    .line 86
    .line 87
    .line 88
    move-result v4

    .line 89
    if-lez v4, :cond_7

    .line 90
    .line 91
    if-eqz v2, :cond_4

    .line 92
    .line 93
    if-eqz v3, :cond_7

    .line 94
    .line 95
    :cond_4
    invoke-virtual {p0}, Lh6/d;->url()Ljava/net/URL;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    invoke-static {}, Lh6/j;->stringBuilder()Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    invoke-virtual {v2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v4

    .line 107
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    const-string v4, "://"

    .line 111
    .line 112
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v2}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v4

    .line 119
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v2}, Ljava/net/URL;->getPath()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v4

    .line 126
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    const-string v4, "?"

    .line 130
    .line 131
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v2}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v4

    .line 138
    if-eqz v4, :cond_5

    .line 139
    .line 140
    invoke-virtual {v2}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    :cond_5
    invoke-virtual {p0}, Lh6/d;->data()Ljava/util/Collection;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 152
    .line 153
    .line 154
    move-result-object v2

    .line 155
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 156
    .line 157
    .line 158
    move-result v4

    .line 159
    if-nez v4, :cond_6

    .line 160
    .line 161
    new-instance v2, Ljava/net/URL;

    .line 162
    .line 163
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v3

    .line 167
    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {p0, v2}, Lh6/c;->url(Ljava/net/URL;)Lg6/a;

    .line 171
    .line 172
    .line 173
    invoke-virtual {p0}, Lh6/d;->data()Ljava/util/Collection;

    .line 174
    .line 175
    .line 176
    move-result-object v2

    .line 177
    invoke-interface {v2}, Ljava/util/Collection;->clear()V

    .line 178
    .line 179
    .line 180
    goto :goto_2

    .line 181
    :cond_6
    invoke-static {v2}, Lb/c;->g(Ljava/util/Iterator;)Ljava/lang/ClassCastException;

    .line 182
    .line 183
    .line 184
    move-result-object p0

    .line 185
    throw p0

    .line 186
    :cond_7
    if-eqz v2, :cond_a

    .line 187
    .line 188
    const-string v2, "Content-Type"

    .line 189
    .line 190
    invoke-virtual {p0, v2}, Lh6/d;->hasHeader(Ljava/lang/String;)Z

    .line 191
    .line 192
    .line 193
    move-result v3

    .line 194
    if-eqz v3, :cond_8

    .line 195
    .line 196
    goto :goto_2

    .line 197
    :cond_8
    invoke-virtual {p0}, Lh6/d;->data()Ljava/util/Collection;

    .line 198
    .line 199
    .line 200
    move-result-object v3

    .line 201
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 202
    .line 203
    .line 204
    move-result-object v3

    .line 205
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 206
    .line 207
    .line 208
    move-result v4

    .line 209
    if-nez v4, :cond_9

    .line 210
    .line 211
    new-instance v3, Ljava/lang/StringBuilder;

    .line 212
    .line 213
    const-string v4, "application/x-www-form-urlencoded; charset="

    .line 214
    .line 215
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {p0}, Lh6/d;->postDataCharset()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v4

    .line 222
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v3

    .line 229
    invoke-virtual {p0, v2, v3}, Lh6/c;->header(Ljava/lang/String;Ljava/lang/String;)Lg6/a;

    .line 230
    .line 231
    .line 232
    goto :goto_2

    .line 233
    :cond_9
    invoke-static {v3}, Lb/c;->g(Ljava/util/Iterator;)Ljava/lang/ClassCastException;

    .line 234
    .line 235
    .line 236
    move-result-object p0

    .line 237
    throw p0

    .line 238
    :cond_a
    :goto_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 239
    .line 240
    .line 241
    move-result-wide v2

    .line 242
    invoke-virtual {p0}, Lh6/d;->proxy()Ljava/net/Proxy;

    .line 243
    .line 244
    .line 245
    move-result-object v4

    .line 246
    if-nez v4, :cond_b

    .line 247
    .line 248
    invoke-virtual {p0}, Lh6/d;->url()Ljava/net/URL;

    .line 249
    .line 250
    .line 251
    move-result-object v4

    .line 252
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 253
    .line 254
    .line 255
    move-result-object v4

    .line 256
    goto :goto_3

    .line 257
    :cond_b
    invoke-virtual {p0}, Lh6/d;->url()Ljava/net/URL;

    .line 258
    .line 259
    .line 260
    move-result-object v4

    .line 261
    invoke-virtual {p0}, Lh6/d;->proxy()Ljava/net/Proxy;

    .line 262
    .line 263
    .line 264
    move-result-object v5

    .line 265
    invoke-virtual {v4, v5}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    .line 266
    .line 267
    .line 268
    move-result-object v4

    .line 269
    :goto_3
    check-cast v4, Ljava/net/HttpURLConnection;

    .line 270
    .line 271
    invoke-virtual {p0}, Lh6/d;->method()Lorg/jsoup/Connection$Method;

    .line 272
    .line 273
    .line 274
    move-result-object v5

    .line 275
    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v5

    .line 279
    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 280
    .line 281
    .line 282
    invoke-virtual {v4, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 283
    .line 284
    .line 285
    invoke-virtual {p0}, Lh6/d;->timeout()I

    .line 286
    .line 287
    .line 288
    move-result v5

    .line 289
    invoke-virtual {v4, v5}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 290
    .line 291
    .line 292
    invoke-virtual {p0}, Lh6/d;->timeout()I

    .line 293
    .line 294
    .line 295
    move-result v5

    .line 296
    div-int/lit8 v5, v5, 0x2

    .line 297
    .line 298
    invoke-virtual {v4, v5}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 299
    .line 300
    .line 301
    instance-of v5, v4, Ljavax/net/ssl/HttpsURLConnection;

    .line 302
    .line 303
    const/4 v6, 0x0

    .line 304
    if-eqz v5, :cond_e

    .line 305
    .line 306
    invoke-virtual {p0}, Lh6/d;->sslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    .line 307
    .line 308
    .line 309
    move-result-object v5

    .line 310
    if-eqz v5, :cond_c

    .line 311
    .line 312
    move-object v7, v4

    .line 313
    check-cast v7, Ljavax/net/ssl/HttpsURLConnection;

    .line 314
    .line 315
    invoke-virtual {v7, v5}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 316
    .line 317
    .line 318
    goto :goto_6

    .line 319
    :cond_c
    invoke-virtual {p0}, Lh6/d;->validateTLSCertificates()Z

    .line 320
    .line 321
    .line 322
    move-result v5

    .line 323
    if-nez v5, :cond_e

    .line 324
    .line 325
    const-class v5, Lh6/g;

    .line 326
    .line 327
    monitor-enter v5

    .line 328
    :try_start_0
    sget-object v7, Lh6/g;->m:Ljavax/net/ssl/SSLSocketFactory;

    .line 329
    .line 330
    if-nez v7, :cond_d

    .line 331
    .line 332
    new-instance v7, Lh6/f;

    .line 333
    .line 334
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 335
    .line 336
    .line 337
    new-array v8, v0, [Ljavax/net/ssl/TrustManager;

    .line 338
    .line 339
    aput-object v7, v8, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 340
    .line 341
    :try_start_1
    const-string v7, "SSL"

    .line 342
    .line 343
    invoke-static {v7}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    .line 344
    .line 345
    .line 346
    move-result-object v7

    .line 347
    new-instance v9, Ljava/security/SecureRandom;

    .line 348
    .line 349
    invoke-direct {v9}, Ljava/security/SecureRandom;-><init>()V

    .line 350
    .line 351
    .line 352
    invoke-virtual {v7, v6, v8, v9}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 353
    .line 354
    .line 355
    invoke-virtual {v7}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    .line 356
    .line 357
    .line 358
    move-result-object v7

    .line 359
    sput-object v7, Lh6/g;->m:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/KeyManagementException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 360
    .line 361
    goto :goto_4

    .line 362
    :catchall_0
    move-exception p0

    .line 363
    goto :goto_5

    .line 364
    :catch_0
    :try_start_2
    new-instance p0, Ljava/io/IOException;

    .line 365
    .line 366
    const-string p1, "Can\'t create unsecure trust manager"

    .line 367
    .line 368
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 369
    .line 370
    .line 371
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 372
    :cond_d
    :goto_4
    monitor-exit v5

    .line 373
    move-object v5, v4

    .line 374
    check-cast v5, Ljavax/net/ssl/HttpsURLConnection;

    .line 375
    .line 376
    sget-object v7, Lh6/g;->m:Ljavax/net/ssl/SSLSocketFactory;

    .line 377
    .line 378
    invoke-virtual {v5, v7}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 379
    .line 380
    .line 381
    new-instance v7, Lh6/e;

    .line 382
    .line 383
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 384
    .line 385
    .line 386
    invoke-virtual {v5, v7}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 387
    .line 388
    .line 389
    goto :goto_6

    .line 390
    :goto_5
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 391
    throw p0

    .line 392
    :cond_e
    :goto_6
    invoke-virtual {p0}, Lh6/d;->method()Lorg/jsoup/Connection$Method;

    .line 393
    .line 394
    .line 395
    move-result-object v5

    .line 396
    invoke-virtual {v5}, Lorg/jsoup/Connection$Method;->hasBody()Z

    .line 397
    .line 398
    .line 399
    move-result v5

    .line 400
    if-eqz v5, :cond_f

    .line 401
    .line 402
    invoke-virtual {v4, v0}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 403
    .line 404
    .line 405
    :cond_f
    invoke-virtual {p0}, Lh6/d;->cookies()Ljava/util/Map;

    .line 406
    .line 407
    .line 408
    move-result-object v5

    .line 409
    invoke-interface {v5}, Ljava/util/Map;->size()I

    .line 410
    .line 411
    .line 412
    move-result v5

    .line 413
    if-lez v5, :cond_12

    .line 414
    .line 415
    const-string v5, "Cookie"

    .line 416
    .line 417
    invoke-static {}, Lh6/j;->stringBuilder()Ljava/lang/StringBuilder;

    .line 418
    .line 419
    .line 420
    move-result-object v7

    .line 421
    invoke-virtual {p0}, Lh6/d;->cookies()Ljava/util/Map;

    .line 422
    .line 423
    .line 424
    move-result-object v8

    .line 425
    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 426
    .line 427
    .line 428
    move-result-object v8

    .line 429
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 430
    .line 431
    .line 432
    move-result-object v8

    .line 433
    move v9, v0

    .line 434
    :goto_7
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 435
    .line 436
    .line 437
    move-result v10

    .line 438
    if-eqz v10, :cond_11

    .line 439
    .line 440
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 441
    .line 442
    .line 443
    move-result-object v10

    .line 444
    check-cast v10, Ljava/util/Map$Entry;

    .line 445
    .line 446
    if-nez v9, :cond_10

    .line 447
    .line 448
    const-string v11, "; "

    .line 449
    .line 450
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    .line 452
    .line 453
    goto :goto_8

    .line 454
    :cond_10
    move v9, v1

    .line 455
    :goto_8
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 456
    .line 457
    .line 458
    move-result-object v11

    .line 459
    check-cast v11, Ljava/lang/String;

    .line 460
    .line 461
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    .line 463
    .line 464
    const/16 v11, 0x3d

    .line 465
    .line 466
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 467
    .line 468
    .line 469
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 470
    .line 471
    .line 472
    move-result-object v10

    .line 473
    check-cast v10, Ljava/lang/String;

    .line 474
    .line 475
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 476
    .line 477
    .line 478
    goto :goto_7

    .line 479
    :cond_11
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 480
    .line 481
    .line 482
    move-result-object v7

    .line 483
    invoke-virtual {v4, v5, v7}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    .line 485
    .line 486
    :cond_12
    invoke-virtual {p0}, Lh6/d;->multiHeaders()Ljava/util/Map;

    .line 487
    .line 488
    .line 489
    move-result-object v5

    .line 490
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 491
    .line 492
    .line 493
    move-result-object v5

    .line 494
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 495
    .line 496
    .line 497
    move-result-object v5

    .line 498
    :cond_13
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 499
    .line 500
    .line 501
    move-result v7

    .line 502
    if-eqz v7, :cond_14

    .line 503
    .line 504
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 505
    .line 506
    .line 507
    move-result-object v7

    .line 508
    check-cast v7, Ljava/util/Map$Entry;

    .line 509
    .line 510
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 511
    .line 512
    .line 513
    move-result-object v8

    .line 514
    check-cast v8, Ljava/util/List;

    .line 515
    .line 516
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 517
    .line 518
    .line 519
    move-result-object v8

    .line 520
    :goto_9
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 521
    .line 522
    .line 523
    move-result v9

    .line 524
    if-eqz v9, :cond_13

    .line 525
    .line 526
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 527
    .line 528
    .line 529
    move-result-object v9

    .line 530
    check-cast v9, Ljava/lang/String;

    .line 531
    .line 532
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 533
    .line 534
    .line 535
    move-result-object v10

    .line 536
    check-cast v10, Ljava/lang/String;

    .line 537
    .line 538
    invoke-virtual {v4, v10, v9}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    .line 540
    .line 541
    goto :goto_9

    .line 542
    :cond_14
    :try_start_4
    invoke-virtual {v4}, Ljava/net/URLConnection;->connect()V

    .line 543
    .line 544
    .line 545
    invoke-virtual {v4}, Ljava/net/URLConnection;->getDoOutput()Z

    .line 546
    .line 547
    .line 548
    move-result v5

    .line 549
    if-eqz v5, :cond_17

    .line 550
    .line 551
    invoke-virtual {v4}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    .line 552
    .line 553
    .line 554
    move-result-object v5

    .line 555
    invoke-virtual {p0}, Lh6/d;->data()Ljava/util/Collection;

    .line 556
    .line 557
    .line 558
    move-result-object v7

    .line 559
    new-instance v8, Ljava/io/BufferedWriter;

    .line 560
    .line 561
    new-instance v9, Ljava/io/OutputStreamWriter;

    .line 562
    .line 563
    invoke-virtual {p0}, Lh6/d;->postDataCharset()Ljava/lang/String;

    .line 564
    .line 565
    .line 566
    move-result-object v10

    .line 567
    invoke-direct {v9, v5, v10}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 568
    .line 569
    .line 570
    invoke-direct {v8, v9}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 571
    .line 572
    .line 573
    invoke-virtual {p0}, Lh6/d;->requestBody()Ljava/lang/String;

    .line 574
    .line 575
    .line 576
    move-result-object v5

    .line 577
    if-eqz v5, :cond_15

    .line 578
    .line 579
    invoke-virtual {p0}, Lh6/d;->requestBody()Ljava/lang/String;

    .line 580
    .line 581
    .line 582
    move-result-object v5

    .line 583
    invoke-virtual {v8, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 584
    .line 585
    .line 586
    goto :goto_a

    .line 587
    :cond_15
    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 588
    .line 589
    .line 590
    move-result-object v5

    .line 591
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 592
    .line 593
    .line 594
    move-result v7

    .line 595
    if-nez v7, :cond_16

    .line 596
    .line 597
    :goto_a
    invoke-virtual {v8}, Ljava/io/BufferedWriter;->close()V

    .line 598
    .line 599
    .line 600
    goto :goto_b

    .line 601
    :cond_16
    invoke-static {v5}, Lb/c;->g(Ljava/util/Iterator;)Ljava/lang/ClassCastException;

    .line 602
    .line 603
    .line 604
    move-result-object p0

    .line 605
    throw p0

    .line 606
    :catch_1
    move-exception p0

    .line 607
    goto/16 :goto_11

    .line 608
    .line 609
    :cond_17
    :goto_b
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 610
    .line 611
    .line 612
    move-result v5

    .line 613
    new-instance v7, Lh6/g;

    .line 614
    .line 615
    invoke-direct {v7, p1}, Lh6/g;-><init>(Lh6/g;)V

    .line 616
    .line 617
    .line 618
    invoke-virtual {v7, v4, p1}, Lh6/g;->c(Ljava/net/HttpURLConnection;Lh6/g;)V

    .line 619
    .line 620
    .line 621
    iput-object p0, v7, Lh6/g;->l:Lh6/d;

    .line 622
    .line 623
    const-string p1, "Location"

    .line 624
    .line 625
    invoke-virtual {v7, p1}, Lh6/g;->hasHeader(Ljava/lang/String;)Z

    .line 626
    .line 627
    .line 628
    move-result p1

    .line 629
    if-eqz p1, :cond_1b

    .line 630
    .line 631
    invoke-virtual {p0}, Lh6/d;->followRedirects()Z

    .line 632
    .line 633
    .line 634
    move-result p1

    .line 635
    if-eqz p1, :cond_1b

    .line 636
    .line 637
    const/16 p1, 0x133

    .line 638
    .line 639
    if-eq v5, p1, :cond_18

    .line 640
    .line 641
    sget-object p1, Lorg/jsoup/Connection$Method;->e:Lorg/jsoup/Connection$Method;

    .line 642
    .line 643
    invoke-virtual {p0, p1}, Lh6/c;->method(Lorg/jsoup/Connection$Method;)Lg6/a;

    .line 644
    .line 645
    .line 646
    invoke-virtual {p0}, Lh6/d;->data()Ljava/util/Collection;

    .line 647
    .line 648
    .line 649
    move-result-object p1

    .line 650
    invoke-interface {p1}, Ljava/util/Collection;->clear()V

    .line 651
    .line 652
    .line 653
    invoke-virtual {p0, v6}, Lh6/d;->requestBody(Ljava/lang/String;)Lg6/b;

    .line 654
    .line 655
    .line 656
    const-string p1, "Content-Type"

    .line 657
    .line 658
    invoke-virtual {p0, p1}, Lh6/c;->removeHeader(Ljava/lang/String;)Lg6/a;

    .line 659
    .line 660
    .line 661
    :cond_18
    const-string p1, "Location"

    .line 662
    .line 663
    invoke-virtual {v7, p1}, Lh6/g;->header(Ljava/lang/String;)Ljava/lang/String;

    .line 664
    .line 665
    .line 666
    move-result-object p1

    .line 667
    if-eqz p1, :cond_19

    .line 668
    .line 669
    const-string v0, "http:/"

    .line 670
    .line 671
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 672
    .line 673
    .line 674
    move-result v0

    .line 675
    if-eqz v0, :cond_19

    .line 676
    .line 677
    const/4 v0, 0x6

    .line 678
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    .line 679
    .line 680
    .line 681
    move-result v1

    .line 682
    const/16 v2, 0x2f

    .line 683
    .line 684
    if-eq v1, v2, :cond_19

    .line 685
    .line 686
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 687
    .line 688
    .line 689
    move-result-object p1

    .line 690
    :cond_19
    invoke-virtual {p0}, Lh6/d;->url()Ljava/net/URL;

    .line 691
    .line 692
    .line 693
    move-result-object v0

    .line 694
    invoke-static {v0, p1}, Lh6/j;->resolve(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;

    .line 695
    .line 696
    .line 697
    move-result-object p1

    .line 698
    invoke-static {p1}, Lh6/h;->a(Ljava/net/URL;)Ljava/net/URL;

    .line 699
    .line 700
    .line 701
    move-result-object p1

    .line 702
    invoke-virtual {p0, p1}, Lh6/c;->url(Ljava/net/URL;)Lg6/a;

    .line 703
    .line 704
    .line 705
    iget-object p1, v7, Lh6/c;->d:Ljava/util/LinkedHashMap;

    .line 706
    .line 707
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 708
    .line 709
    .line 710
    move-result-object p1

    .line 711
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 712
    .line 713
    .line 714
    move-result-object p1

    .line 715
    :goto_c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 716
    .line 717
    .line 718
    move-result v0

    .line 719
    if-eqz v0, :cond_1a

    .line 720
    .line 721
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 722
    .line 723
    .line 724
    move-result-object v0

    .line 725
    check-cast v0, Ljava/util/Map$Entry;

    .line 726
    .line 727
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 728
    .line 729
    .line 730
    move-result-object v1

    .line 731
    check-cast v1, Ljava/lang/String;

    .line 732
    .line 733
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 734
    .line 735
    .line 736
    move-result-object v0

    .line 737
    check-cast v0, Ljava/lang/String;

    .line 738
    .line 739
    invoke-virtual {p0, v1, v0}, Lh6/c;->cookie(Ljava/lang/String;Ljava/lang/String;)Lg6/a;

    .line 740
    .line 741
    .line 742
    goto :goto_c

    .line 743
    :cond_1a
    invoke-static {p0, v7}, Lh6/g;->b(Lh6/d;Lh6/g;)Lh6/g;

    .line 744
    .line 745
    .line 746
    move-result-object p0

    .line 747
    return-object p0

    .line 748
    :cond_1b
    const/16 p1, 0xc8

    .line 749
    .line 750
    if-lt v5, p1, :cond_1c

    .line 751
    .line 752
    const/16 p1, 0x190

    .line 753
    .line 754
    if-lt v5, p1, :cond_1d

    .line 755
    .line 756
    :cond_1c
    invoke-virtual {p0}, Lh6/d;->ignoreHttpErrors()Z

    .line 757
    .line 758
    .line 759
    move-result p1

    .line 760
    if-eqz p1, :cond_25

    .line 761
    .line 762
    :cond_1d
    invoke-virtual {v7}, Lh6/g;->contentType()Ljava/lang/String;

    .line 763
    .line 764
    .line 765
    move-result-object p1

    .line 766
    if-eqz p1, :cond_1f

    .line 767
    .line 768
    invoke-virtual {p0}, Lh6/d;->ignoreContentType()Z

    .line 769
    .line 770
    .line 771
    move-result v5

    .line 772
    if-nez v5, :cond_1f

    .line 773
    .line 774
    const-string v5, "text/"

    .line 775
    .line 776
    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 777
    .line 778
    .line 779
    move-result v5

    .line 780
    if-nez v5, :cond_1f

    .line 781
    .line 782
    sget-object v5, Lh6/g;->n:Ljava/util/regex/Pattern;

    .line 783
    .line 784
    invoke-virtual {v5, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 785
    .line 786
    .line 787
    move-result-object v5

    .line 788
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    .line 789
    .line 790
    .line 791
    move-result v5

    .line 792
    if-eqz v5, :cond_1e

    .line 793
    .line 794
    goto :goto_d

    .line 795
    :cond_1e
    new-instance v0, Lorg/jsoup/UnsupportedMimeTypeException;

    .line 796
    .line 797
    const-string v1, "Unhandled content type. Must be text/*, application/xml, or application/xhtml+xml"

    .line 798
    .line 799
    invoke-virtual {p0}, Lh6/d;->url()Ljava/net/URL;

    .line 800
    .line 801
    .line 802
    move-result-object p0

    .line 803
    invoke-virtual {p0}, Ljava/net/URL;->toString()Ljava/lang/String;

    .line 804
    .line 805
    .line 806
    move-result-object p0

    .line 807
    invoke-direct {v0, v1, p1, p0}, Lorg/jsoup/UnsupportedMimeTypeException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 808
    .line 809
    .line 810
    throw v0

    .line 811
    :cond_1f
    :goto_d
    if-eqz p1, :cond_20

    .line 812
    .line 813
    sget-object v5, Lh6/g;->n:Ljava/util/regex/Pattern;

    .line 814
    .line 815
    invoke-virtual {v5, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 816
    .line 817
    .line 818
    move-result-object p1

    .line 819
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    .line 820
    .line 821
    .line 822
    move-result p1

    .line 823
    if-eqz p1, :cond_20

    .line 824
    .line 825
    iget-boolean p1, p0, Lh6/d;->k:Z

    .line 826
    .line 827
    if-nez p1, :cond_20

    .line 828
    .line 829
    invoke-static {}, Lk6/e;->xmlParser()Lk6/e;

    .line 830
    .line 831
    .line 832
    move-result-object p1

    .line 833
    invoke-virtual {p0, p1}, Lh6/d;->parser(Lk6/e;)Lg6/b;

    .line 834
    .line 835
    .line 836
    :cond_20
    iget-object p1, v7, Lh6/g;->h:Ljava/lang/String;

    .line 837
    .line 838
    invoke-static {p1}, Lh6/b;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 839
    .line 840
    .line 841
    move-result-object p1

    .line 842
    iput-object p1, v7, Lh6/g;->g:Ljava/lang/String;

    .line 843
    .line 844
    invoke-virtual {v4}, Ljava/net/URLConnection;->getContentLength()I

    .line 845
    .line 846
    .line 847
    move-result p1

    .line 848
    if-eqz p1, :cond_24

    .line 849
    .line 850
    invoke-virtual {p0}, Lh6/d;->method()Lorg/jsoup/Connection$Method;

    .line 851
    .line 852
    .line 853
    move-result-object p1

    .line 854
    sget-object v5, Lorg/jsoup/Connection$Method;->f:Lorg/jsoup/Connection$Method;

    .line 855
    .line 856
    if-eq p1, v5, :cond_24

    .line 857
    .line 858
    iput-object v6, v7, Lh6/g;->f:Ljava/io/InputStream;

    .line 859
    .line 860
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    .line 861
    .line 862
    .line 863
    move-result-object p1

    .line 864
    if-eqz p1, :cond_21

    .line 865
    .line 866
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    .line 867
    .line 868
    .line 869
    move-result-object p1

    .line 870
    goto :goto_e

    .line 871
    :cond_21
    invoke-virtual {v4}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 872
    .line 873
    .line 874
    move-result-object p1

    .line 875
    :goto_e
    iput-object p1, v7, Lh6/g;->f:Ljava/io/InputStream;

    .line 876
    .line 877
    const-string p1, "Content-Encoding"

    .line 878
    .line 879
    const-string v1, "gzip"

    .line 880
    .line 881
    invoke-virtual {v7, p1, v1}, Lh6/g;->hasHeaderWithValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 882
    .line 883
    .line 884
    move-result p1

    .line 885
    if-eqz p1, :cond_22

    .line 886
    .line 887
    new-instance p1, Ljava/util/zip/GZIPInputStream;

    .line 888
    .line 889
    iget-object v1, v7, Lh6/g;->f:Ljava/io/InputStream;

    .line 890
    .line 891
    invoke-direct {p1, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 892
    .line 893
    .line 894
    iput-object p1, v7, Lh6/g;->f:Ljava/io/InputStream;

    .line 895
    .line 896
    goto :goto_f

    .line 897
    :cond_22
    const-string p1, "Content-Encoding"

    .line 898
    .line 899
    const-string v1, "deflate"

    .line 900
    .line 901
    invoke-virtual {v7, p1, v1}, Lh6/g;->hasHeaderWithValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 902
    .line 903
    .line 904
    move-result p1

    .line 905
    if-eqz p1, :cond_23

    .line 906
    .line 907
    new-instance p1, Ljava/util/zip/InflaterInputStream;

    .line 908
    .line 909
    iget-object v1, v7, Lh6/g;->f:Ljava/io/InputStream;

    .line 910
    .line 911
    new-instance v5, Ljava/util/zip/Inflater;

    .line 912
    .line 913
    invoke-direct {v5, v0}, Ljava/util/zip/Inflater;-><init>(Z)V

    .line 914
    .line 915
    .line 916
    invoke-direct {p1, v1, v5}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;)V

    .line 917
    .line 918
    .line 919
    iput-object p1, v7, Lh6/g;->f:Ljava/io/InputStream;

    .line 920
    .line 921
    :cond_23
    :goto_f
    iget-object p1, v7, Lh6/g;->f:Ljava/io/InputStream;

    .line 922
    .line 923
    invoke-virtual {p0}, Lh6/d;->maxBodySize()I

    .line 924
    .line 925
    .line 926
    move-result v1

    .line 927
    const v5, 0x8000

    .line 928
    .line 929
    .line 930
    invoke-static {p1, v5, v1}, Li6/a;->wrap(Ljava/io/InputStream;II)Li6/a;

    .line 931
    .line 932
    .line 933
    move-result-object p1

    .line 934
    invoke-virtual {p0}, Lh6/d;->timeout()I

    .line 935
    .line 936
    .line 937
    move-result p0

    .line 938
    int-to-long v5, p0

    .line 939
    invoke-virtual {p1, v2, v3, v5, v6}, Li6/a;->timeout(JJ)Li6/a;

    .line 940
    .line 941
    .line 942
    move-result-object p0

    .line 943
    iput-object p0, v7, Lh6/g;->f:Ljava/io/InputStream;

    .line 944
    .line 945
    goto :goto_10

    .line 946
    :cond_24
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 947
    .line 948
    .line 949
    move-result-object p0

    .line 950
    iput-object p0, v7, Lh6/g;->e:Ljava/nio/ByteBuffer;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 951
    .line 952
    :goto_10
    iput-boolean v0, v7, Lh6/g;->i:Z

    .line 953
    .line 954
    return-object v7

    .line 955
    :cond_25
    :try_start_5
    new-instance p1, Lorg/jsoup/HttpStatusException;

    .line 956
    .line 957
    const-string v0, "HTTP error fetching URL"

    .line 958
    .line 959
    invoke-virtual {p0}, Lh6/d;->url()Ljava/net/URL;

    .line 960
    .line 961
    .line 962
    move-result-object p0

    .line 963
    invoke-virtual {p0}, Ljava/net/URL;->toString()Ljava/lang/String;

    .line 964
    .line 965
    .line 966
    move-result-object p0

    .line 967
    invoke-direct {p1, v0, v5, p0}, Lorg/jsoup/HttpStatusException;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 968
    .line 969
    .line 970
    throw p1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 971
    :goto_11
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 972
    .line 973
    .line 974
    throw p0
.end method


# virtual methods
.method public final c(Ljava/net/HttpURLConnection;Lh6/g;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lorg/jsoup/Connection$Method;->valueOf(Ljava/lang/String;)Lorg/jsoup/Connection$Method;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lh6/c;->b:Lorg/jsoup/Connection$Method;

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lh6/c;->a:Ljava/net/URL;

    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iput-object v0, p0, Lh6/g;->h:Ljava/lang/String;

    .line 28
    .line 29
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 30
    .line 31
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 32
    .line 33
    .line 34
    const/4 v1, 0x0

    .line 35
    :cond_0
    :goto_0
    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->getHeaderField(I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    if-nez v2, :cond_9

    .line 44
    .line 45
    if-nez v3, :cond_9

    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_6

    .line 60
    .line 61
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    check-cast v0, Ljava/util/Map$Entry;

    .line 66
    .line 67
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    check-cast v1, Ljava/lang/String;

    .line 72
    .line 73
    if-nez v1, :cond_2

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    check-cast v0, Ljava/util/List;

    .line 81
    .line 82
    const-string v2, "Set-Cookie"

    .line 83
    .line 84
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    if-eqz v2, :cond_5

    .line 89
    .line 90
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 95
    .line 96
    .line 97
    move-result v3

    .line 98
    if-eqz v3, :cond_5

    .line 99
    .line 100
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    check-cast v3, Ljava/lang/String;

    .line 105
    .line 106
    if-nez v3, :cond_4

    .line 107
    .line 108
    goto :goto_2

    .line 109
    :cond_4
    new-instance v4, Lk6/p;

    .line 110
    .line 111
    invoke-direct {v4, v3}, Lk6/p;-><init>(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    const-string v3, "="

    .line 115
    .line 116
    invoke-virtual {v4, v3}, Lk6/p;->chompTo(Ljava/lang/String;)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v3

    .line 120
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    const-string v5, ";"

    .line 125
    .line 126
    invoke-virtual {v4, v5}, Lk6/p;->consumeTo(Ljava/lang/String;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v4

    .line 130
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v4

    .line 134
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 135
    .line 136
    .line 137
    move-result v5

    .line 138
    if-lez v5, :cond_3

    .line 139
    .line 140
    invoke-virtual {p0, v3, v4}, Lh6/c;->cookie(Ljava/lang/String;Ljava/lang/String;)Lg6/a;

    .line 141
    .line 142
    .line 143
    goto :goto_2

    .line 144
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 149
    .line 150
    .line 151
    move-result v2

    .line 152
    if-eqz v2, :cond_1

    .line 153
    .line 154
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v2

    .line 158
    check-cast v2, Ljava/lang/String;

    .line 159
    .line 160
    invoke-virtual {p0, v1, v2}, Lh6/c;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lg6/a;

    .line 161
    .line 162
    .line 163
    goto :goto_3

    .line 164
    :cond_6
    if-eqz p2, :cond_8

    .line 165
    .line 166
    invoke-virtual {p2}, Lh6/g;->cookies()Ljava/util/Map;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    :cond_7
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 179
    .line 180
    .line 181
    move-result p2

    .line 182
    if-eqz p2, :cond_8

    .line 183
    .line 184
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object p2

    .line 188
    check-cast p2, Ljava/util/Map$Entry;

    .line 189
    .line 190
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    check-cast v0, Ljava/lang/String;

    .line 195
    .line 196
    invoke-virtual {p0, v0}, Lh6/g;->hasCookie(Ljava/lang/String;)Z

    .line 197
    .line 198
    .line 199
    move-result v0

    .line 200
    if-nez v0, :cond_7

    .line 201
    .line 202
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    check-cast v0, Ljava/lang/String;

    .line 207
    .line 208
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object p2

    .line 212
    check-cast p2, Ljava/lang/String;

    .line 213
    .line 214
    invoke-virtual {p0, v0, p2}, Lh6/c;->cookie(Ljava/lang/String;Ljava/lang/String;)Lg6/a;

    .line 215
    .line 216
    .line 217
    goto :goto_4

    .line 218
    :cond_8
    return-void

    .line 219
    :cond_9
    add-int/lit8 v1, v1, 0x1

    .line 220
    .line 221
    if-eqz v2, :cond_0

    .line 222
    .line 223
    if-nez v3, :cond_a

    .line 224
    .line 225
    goto/16 :goto_0

    .line 226
    .line 227
    :cond_a
    invoke-virtual {v0, v2}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    .line 228
    .line 229
    .line 230
    move-result v4

    .line 231
    if-eqz v4, :cond_b

    .line 232
    .line 233
    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    move-result-object v2

    .line 237
    check-cast v2, Ljava/util/List;

    .line 238
    .line 239
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    .line 241
    .line 242
    goto/16 :goto_0

    .line 243
    .line 244
    :cond_b
    new-instance v4, Ljava/util/ArrayList;

    .line 245
    .line 246
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 247
    .line 248
    .line 249
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    .line 251
    .line 252
    invoke-virtual {v0, v2, v4}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    goto/16 :goto_0
.end method

.method public contentType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lh6/g;->h:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic cookies()Ljava/util/Map;
    .locals 1

    .line 1
    invoke-super {p0}, Lh6/c;->cookies()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic hasCookie(Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lh6/c;->hasCookie(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public bridge synthetic hasHeader(Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lh6/c;->hasHeader(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public bridge synthetic hasHeaderWithValue(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lh6/c;->hasHeaderWithValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public bridge synthetic header(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lh6/c;->header(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic headers(Ljava/lang/String;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lh6/c;->headers(Ljava/lang/String;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public parse()Lj6/h;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-boolean v0, v1, Lh6/g;->i:Z

    .line 4
    .line 5
    const-string v2, "Request must be executed (with .execute(), .get(), or .post() before parsing response"

    .line 6
    .line 7
    invoke-static {v0, v2}, Lh6/k;->isTrue(ZLjava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, v1, Lh6/g;->e:Ljava/nio/ByteBuffer;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    new-instance v0, Ljava/io/ByteArrayInputStream;

    .line 16
    .line 17
    iget-object v3, v1, Lh6/g;->e:Ljava/nio/ByteBuffer;

    .line 18
    .line 19
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-direct {v0, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 24
    .line 25
    .line 26
    iput-object v0, v1, Lh6/g;->f:Ljava/io/InputStream;

    .line 27
    .line 28
    iput-boolean v2, v1, Lh6/g;->j:Z

    .line 29
    .line 30
    :cond_0
    iget-boolean v0, v1, Lh6/g;->j:Z

    .line 31
    .line 32
    const-string v3, "Input stream already read and parsed, cannot re-read."

    .line 33
    .line 34
    invoke-static {v0, v3}, Lh6/k;->isFalse(ZLjava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget-object v0, v1, Lh6/g;->f:Ljava/io/InputStream;

    .line 38
    .line 39
    iget-object v3, v1, Lh6/g;->g:Ljava/lang/String;

    .line 40
    .line 41
    iget-object v4, v1, Lh6/c;->a:Ljava/net/URL;

    .line 42
    .line 43
    invoke-virtual {v4}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    iget-object v5, v1, Lh6/g;->l:Lh6/d;

    .line 48
    .line 49
    invoke-interface {v5}, Lg6/b;->parser()Lk6/e;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    sget-object v6, Lh6/b;->a:Ljava/util/regex/Pattern;

    .line 54
    .line 55
    const/4 v7, 0x1

    .line 56
    if-nez v0, :cond_1

    .line 57
    .line 58
    new-instance v0, Lj6/h;

    .line 59
    .line 60
    invoke-direct {v0, v4}, Lj6/h;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    goto/16 :goto_5

    .line 64
    .line 65
    :cond_1
    const v8, 0x8000

    .line 66
    .line 67
    .line 68
    invoke-static {v0, v8, v2}, Li6/a;->wrap(Ljava/io/InputStream;II)Li6/a;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {v0, v8}, Ljava/io/InputStream;->mark(I)V

    .line 73
    .line 74
    .line 75
    const/16 v9, 0x13ff

    .line 76
    .line 77
    invoke-static {v0, v9}, Lh6/b;->readToByteBuffer(Ljava/io/InputStream;I)Ljava/nio/ByteBuffer;

    .line 78
    .line 79
    .line 80
    move-result-object v9

    .line 81
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    .line 82
    .line 83
    .line 84
    move-result v10

    .line 85
    const/4 v11, -0x1

    .line 86
    if-ne v10, v11, :cond_2

    .line 87
    .line 88
    move v10, v7

    .line 89
    goto :goto_0

    .line 90
    :cond_2
    move v10, v2

    .line 91
    :goto_0
    invoke-virtual {v0}, Li6/a;->reset()V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v9}, Ljava/nio/Buffer;->mark()Ljava/nio/Buffer;

    .line 95
    .line 96
    .line 97
    const/4 v12, 0x4

    .line 98
    new-array v13, v12, [B

    .line 99
    .line 100
    invoke-virtual {v9}, Ljava/nio/Buffer;->remaining()I

    .line 101
    .line 102
    .line 103
    move-result v14

    .line 104
    if-lt v14, v12, :cond_3

    .line 105
    .line 106
    invoke-virtual {v9, v13}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v9}, Ljava/nio/Buffer;->rewind()Ljava/nio/Buffer;

    .line 110
    .line 111
    .line 112
    :cond_3
    aget-byte v12, v13, v2

    .line 113
    .line 114
    const-string v14, "UTF-8"

    .line 115
    .line 116
    const/16 v16, 0x2

    .line 117
    .line 118
    const/16 v17, 0x3

    .line 119
    .line 120
    const/4 v15, -0x2

    .line 121
    if-nez v12, :cond_4

    .line 122
    .line 123
    aget-byte v18, v13, v7

    .line 124
    .line 125
    if-nez v18, :cond_4

    .line 126
    .line 127
    aget-byte v6, v13, v16

    .line 128
    .line 129
    if-ne v6, v15, :cond_4

    .line 130
    .line 131
    aget-byte v6, v13, v17

    .line 132
    .line 133
    if-eq v6, v11, :cond_5

    .line 134
    .line 135
    :cond_4
    if-ne v12, v11, :cond_6

    .line 136
    .line 137
    aget-byte v6, v13, v7

    .line 138
    .line 139
    if-ne v6, v15, :cond_6

    .line 140
    .line 141
    aget-byte v6, v13, v16

    .line 142
    .line 143
    if-nez v6, :cond_6

    .line 144
    .line 145
    aget-byte v6, v13, v17

    .line 146
    .line 147
    if-nez v6, :cond_6

    .line 148
    .line 149
    :cond_5
    new-instance v6, Lh6/a;

    .line 150
    .line 151
    const-string v11, "UTF-32"

    .line 152
    .line 153
    invoke-direct {v6, v11, v2}, Lh6/a;-><init>(Ljava/lang/String;Z)V

    .line 154
    .line 155
    .line 156
    goto :goto_1

    .line 157
    :cond_6
    if-ne v12, v15, :cond_7

    .line 158
    .line 159
    aget-byte v6, v13, v7

    .line 160
    .line 161
    if-eq v6, v11, :cond_8

    .line 162
    .line 163
    :cond_7
    if-ne v12, v11, :cond_9

    .line 164
    .line 165
    aget-byte v6, v13, v7

    .line 166
    .line 167
    if-ne v6, v15, :cond_9

    .line 168
    .line 169
    :cond_8
    new-instance v6, Lh6/a;

    .line 170
    .line 171
    const-string v11, "UTF-16"

    .line 172
    .line 173
    invoke-direct {v6, v11, v2}, Lh6/a;-><init>(Ljava/lang/String;Z)V

    .line 174
    .line 175
    .line 176
    goto :goto_1

    .line 177
    :cond_9
    const/16 v6, -0x11

    .line 178
    .line 179
    if-ne v12, v6, :cond_a

    .line 180
    .line 181
    aget-byte v6, v13, v7

    .line 182
    .line 183
    const/16 v11, -0x45

    .line 184
    .line 185
    if-ne v6, v11, :cond_a

    .line 186
    .line 187
    aget-byte v6, v13, v16

    .line 188
    .line 189
    const/16 v11, -0x41

    .line 190
    .line 191
    if-ne v6, v11, :cond_a

    .line 192
    .line 193
    new-instance v6, Lh6/a;

    .line 194
    .line 195
    invoke-direct {v6, v14, v7}, Lh6/a;-><init>(Ljava/lang/String;Z)V

    .line 196
    .line 197
    .line 198
    goto :goto_1

    .line 199
    :cond_a
    const/4 v6, 0x0

    .line 200
    :goto_1
    if-eqz v6, :cond_b

    .line 201
    .line 202
    iget-object v3, v6, Lh6/a;->a:Ljava/lang/String;

    .line 203
    .line 204
    :cond_b
    if-nez v3, :cond_12

    .line 205
    .line 206
    invoke-static {v14}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 207
    .line 208
    .line 209
    move-result-object v11

    .line 210
    invoke-virtual {v11, v9}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    .line 211
    .line 212
    .line 213
    move-result-object v9

    .line 214
    invoke-virtual {v9}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v9

    .line 218
    invoke-virtual {v5, v9, v4}, Lk6/e;->parseInput(Ljava/lang/String;Ljava/lang/String;)Lj6/h;

    .line 219
    .line 220
    .line 221
    move-result-object v9

    .line 222
    const-string v11, "meta[http-equiv=content-type], meta[charset]"

    .line 223
    .line 224
    invoke-virtual {v9, v11}, Lorg/jsoup/nodes/b;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    .line 225
    .line 226
    .line 227
    move-result-object v11

    .line 228
    invoke-virtual {v11}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 229
    .line 230
    .line 231
    move-result-object v11

    .line 232
    const/4 v12, 0x0

    .line 233
    :cond_c
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 234
    .line 235
    .line 236
    move-result v13

    .line 237
    if-eqz v13, :cond_f

    .line 238
    .line 239
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    move-result-object v13

    .line 243
    check-cast v13, Lorg/jsoup/nodes/b;

    .line 244
    .line 245
    const-string v15, "http-equiv"

    .line 246
    .line 247
    invoke-virtual {v13, v15}, Lj6/p;->hasAttr(Ljava/lang/String;)Z

    .line 248
    .line 249
    .line 250
    move-result v15

    .line 251
    if-eqz v15, :cond_d

    .line 252
    .line 253
    const-string v12, "content"

    .line 254
    .line 255
    invoke-virtual {v13, v12}, Lj6/p;->attr(Ljava/lang/String;)Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v12

    .line 259
    invoke-static {v12}, Lh6/b;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v12

    .line 263
    :cond_d
    if-nez v12, :cond_e

    .line 264
    .line 265
    const-string v15, "charset"

    .line 266
    .line 267
    invoke-virtual {v13, v15}, Lj6/p;->hasAttr(Ljava/lang/String;)Z

    .line 268
    .line 269
    .line 270
    move-result v16

    .line 271
    if-eqz v16, :cond_e

    .line 272
    .line 273
    invoke-virtual {v13, v15}, Lj6/p;->attr(Ljava/lang/String;)Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v12

    .line 277
    :cond_e
    if-eqz v12, :cond_c

    .line 278
    .line 279
    :cond_f
    if-nez v12, :cond_10

    .line 280
    .line 281
    invoke-virtual {v9}, Lorg/jsoup/nodes/b;->childNodeSize()I

    .line 282
    .line 283
    .line 284
    move-result v11

    .line 285
    if-lez v11, :cond_10

    .line 286
    .line 287
    invoke-virtual {v9, v2}, Lj6/p;->childNode(I)Lj6/p;

    .line 288
    .line 289
    .line 290
    move-result-object v11

    .line 291
    instance-of v11, v11, Lj6/s;

    .line 292
    .line 293
    if-eqz v11, :cond_10

    .line 294
    .line 295
    invoke-virtual {v9, v2}, Lj6/p;->childNode(I)Lj6/p;

    .line 296
    .line 297
    .line 298
    move-result-object v2

    .line 299
    check-cast v2, Lj6/s;

    .line 300
    .line 301
    invoke-virtual {v2}, Lj6/s;->name()Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v11

    .line 305
    const-string v13, "xml"

    .line 306
    .line 307
    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 308
    .line 309
    .line 310
    move-result v11

    .line 311
    if-eqz v11, :cond_10

    .line 312
    .line 313
    const-string v11, "encoding"

    .line 314
    .line 315
    invoke-virtual {v2, v11}, Lj6/s;->attr(Ljava/lang/String;)Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object v12

    .line 319
    :cond_10
    invoke-static {v12}, Lh6/b;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object v2

    .line 323
    if-eqz v2, :cond_11

    .line 324
    .line 325
    invoke-virtual {v2, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 326
    .line 327
    .line 328
    move-result v11

    .line 329
    if-nez v11, :cond_11

    .line 330
    .line 331
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object v2

    .line 335
    const-string v3, "[\"\']"

    .line 336
    .line 337
    const-string v9, ""

    .line 338
    .line 339
    invoke-virtual {v2, v3, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 340
    .line 341
    .line 342
    move-result-object v3

    .line 343
    goto :goto_2

    .line 344
    :cond_11
    if-nez v10, :cond_13

    .line 345
    .line 346
    goto :goto_2

    .line 347
    :cond_12
    const-string v2, "Must set charset arg to character set of file to parse. Set to null to attempt to detect from HTML"

    .line 348
    .line 349
    invoke-static {v3, v2}, Lh6/k;->notEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    .line 351
    .line 352
    :goto_2
    const/4 v9, 0x0

    .line 353
    :cond_13
    if-nez v9, :cond_16

    .line 354
    .line 355
    if-nez v3, :cond_14

    .line 356
    .line 357
    goto :goto_3

    .line 358
    :cond_14
    move-object v14, v3

    .line 359
    :goto_3
    new-instance v2, Ljava/io/BufferedReader;

    .line 360
    .line 361
    new-instance v3, Ljava/io/InputStreamReader;

    .line 362
    .line 363
    invoke-direct {v3, v0, v14}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 364
    .line 365
    .line 366
    invoke-direct {v2, v3, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 367
    .line 368
    .line 369
    if-eqz v6, :cond_15

    .line 370
    .line 371
    iget-boolean v3, v6, Lh6/a;->b:Z

    .line 372
    .line 373
    if-eqz v3, :cond_15

    .line 374
    .line 375
    const-wide/16 v8, 0x1

    .line 376
    .line 377
    invoke-virtual {v2, v8, v9}, Ljava/io/BufferedReader;->skip(J)J

    .line 378
    .line 379
    .line 380
    :cond_15
    :try_start_0
    invoke-virtual {v5, v2, v4}, Lk6/e;->parseInput(Ljava/io/Reader;Ljava/lang/String;)Lj6/h;

    .line 381
    .line 382
    .line 383
    move-result-object v2
    :try_end_0
    .catch Lorg/jsoup/UncheckedIOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 384
    invoke-virtual {v2}, Lj6/h;->outputSettings()Lorg/jsoup/nodes/a;

    .line 385
    .line 386
    .line 387
    move-result-object v3

    .line 388
    invoke-virtual {v3, v14}, Lorg/jsoup/nodes/a;->charset(Ljava/lang/String;)Lorg/jsoup/nodes/a;

    .line 389
    .line 390
    .line 391
    goto :goto_4

    .line 392
    :catch_0
    move-exception v0

    .line 393
    invoke-virtual {v0}, Lorg/jsoup/UncheckedIOException;->ioException()Ljava/io/IOException;

    .line 394
    .line 395
    .line 396
    move-result-object v0

    .line 397
    throw v0

    .line 398
    :cond_16
    move-object v2, v9

    .line 399
    :goto_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 400
    .line 401
    .line 402
    move-object v0, v2

    .line 403
    :goto_5
    invoke-virtual {v0}, Lj6/h;->outputSettings()Lorg/jsoup/nodes/a;

    .line 404
    .line 405
    .line 406
    move-result-object v2

    .line 407
    invoke-virtual {v2}, Lorg/jsoup/nodes/a;->charset()Ljava/nio/charset/Charset;

    .line 408
    .line 409
    .line 410
    move-result-object v2

    .line 411
    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    .line 412
    .line 413
    .line 414
    move-result-object v2

    .line 415
    iput-object v2, v1, Lh6/g;->g:Ljava/lang/String;

    .line 416
    .line 417
    iput-boolean v7, v1, Lh6/g;->j:Z

    .line 418
    .line 419
    iget-object v2, v1, Lh6/g;->f:Ljava/io/InputStream;

    .line 420
    .line 421
    if-eqz v2, :cond_17

    .line 422
    .line 423
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 424
    .line 425
    .line 426
    const/4 v2, 0x0

    .line 427
    iput-object v2, v1, Lh6/g;->f:Ljava/io/InputStream;

    .line 428
    .line 429
    return-object v0

    .line 430
    :catchall_0
    move-exception v0

    .line 431
    const/4 v2, 0x0

    .line 432
    iput-object v2, v1, Lh6/g;->f:Ljava/io/InputStream;

    .line 433
    .line 434
    throw v0

    .line 435
    :catch_1
    const/4 v2, 0x0

    .line 436
    iput-object v2, v1, Lh6/g;->f:Ljava/io/InputStream;

    .line 437
    .line 438
    :cond_17
    return-object v0
.end method

.method public bridge synthetic url()Ljava/net/URL;
    .locals 1

    .line 1
    invoke-super {p0}, Lh6/c;->url()Ljava/net/URL;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
