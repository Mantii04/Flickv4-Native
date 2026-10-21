.class public Lio/hopmonsdk/Hopmn;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/hopmonsdk/Hopmn$Builder;,
        Lio/hopmonsdk/Hopmn$ConsentChoice;,
        Lio/hopmonsdk/Hopmn$ConsentCallback;
    }
.end annotation


# static fields
.field public static volatile u:Lio/hopmonsdk/Hopmn;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lp5/b;

.field public final c:Lq5/a;

.field public final d:Lk5/a;

.field public final e:Lj5/a;

.field public volatile f:Z

.field public volatile g:Z

.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/String;

.field public final j:J

.field public final k:Z

.field public final l:Z

.field public final m:Z

.field public final n:Z

.field public final o:Z

.field public final p:Ljava/lang/String;

.field public final q:Ljava/lang/String;

.field public final r:Lo5/e;

.field public final s:Ljava/lang/String;

.field public final t:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/hopmonsdk/Hopmn$Builder;)V
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v2, Lj5/a;

    .line 7
    .line 8
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-boolean v0, v2, Lj5/a;->b:Z

    .line 12
    .line 13
    iput-object v2, p0, Lio/hopmonsdk/Hopmn;->e:Lj5/a;

    .line 14
    .line 15
    iput-boolean v0, p0, Lio/hopmonsdk/Hopmn;->f:Z

    .line 16
    .line 17
    iput-boolean v0, p0, Lio/hopmonsdk/Hopmn;->g:Z

    .line 18
    .line 19
    iput-object p1, p0, Lio/hopmonsdk/Hopmn;->a:Landroid/content/Context;

    .line 20
    .line 21
    new-instance v2, Lk5/a;

    .line 22
    .line 23
    invoke-direct {v2, p1}, Lk5/a;-><init>(Landroid/content/Context;)V

    .line 24
    .line 25
    .line 26
    iput-object v2, p0, Lio/hopmonsdk/Hopmn;->d:Lk5/a;

    .line 27
    .line 28
    new-instance v3, Lp5/b;

    .line 29
    .line 30
    invoke-direct {v3, p1}, Lp5/b;-><init>(Landroid/content/Context;)V

    .line 31
    .line 32
    .line 33
    iput-object v3, p0, Lio/hopmonsdk/Hopmn;->b:Lp5/b;

    .line 34
    .line 35
    new-instance v3, Lq5/a;

    .line 36
    .line 37
    invoke-direct {v3, p1}, Lq5/a;-><init>(Landroid/content/Context;)V

    .line 38
    .line 39
    .line 40
    iput-object v3, p0, Lio/hopmonsdk/Hopmn;->c:Lq5/a;

    .line 41
    .line 42
    invoke-static {p2}, Lio/hopmonsdk/Hopmn$Builder;->access$500(Lio/hopmonsdk/Hopmn$Builder;)Z

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    invoke-virtual {v3, v4}, Lq5/a;->setEnableLogging(Z)V

    .line 47
    .line 48
    .line 49
    invoke-static {p2}, Lio/hopmonsdk/Hopmn$Builder;->access$600(Lio/hopmonsdk/Hopmn$Builder;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    iput-object v3, p0, Lio/hopmonsdk/Hopmn;->h:Ljava/lang/String;

    .line 54
    .line 55
    sget v3, Lio/hopmon/R$string;->hopmon_publisher_key:I

    .line 56
    .line 57
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    invoke-virtual {v2, v3}, Lk5/a;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    invoke-static {p2}, Lio/hopmonsdk/Hopmn$Builder;->access$700(Lio/hopmonsdk/Hopmn$Builder;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 70
    .line 71
    .line 72
    move-result v4

    .line 73
    if-nez v4, :cond_0

    .line 74
    .line 75
    invoke-static {p2}, Lio/hopmonsdk/Hopmn$Builder;->access$700(Lio/hopmonsdk/Hopmn$Builder;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    iput-object v3, p0, Lio/hopmonsdk/Hopmn;->i:Ljava/lang/String;

    .line 80
    .line 81
    sget v4, Lio/hopmon/R$string;->hopmon_publisher_key:I

    .line 82
    .line 83
    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    invoke-virtual {v2, v4, v3}, Lk5/a;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_0
    invoke-virtual {p2, v3}, Lio/hopmonsdk/Hopmn$Builder;->withPublisher(Ljava/lang/String;)Lio/hopmonsdk/Hopmn$Builder;

    .line 92
    .line 93
    .line 94
    iput-object v3, p0, Lio/hopmonsdk/Hopmn;->i:Ljava/lang/String;

    .line 95
    .line 96
    :goto_0
    sget v3, Lio/hopmon/R$string;->hopmon_country_key:I

    .line 97
    .line 98
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    invoke-virtual {v2, v3}, Lk5/a;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    sget v3, Lio/hopmon/R$string;->hopmon_uid_key:I

    .line 106
    .line 107
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    invoke-virtual {v2, v3}, Lk5/a;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    invoke-static {p2}, Lio/hopmonsdk/Hopmn$Builder;->access$800(Lio/hopmonsdk/Hopmn$Builder;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    invoke-static {p2}, Lio/hopmonsdk/Hopmn$Builder;->access$900(Lio/hopmonsdk/Hopmn$Builder;)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    invoke-static {p2}, Lio/hopmonsdk/Hopmn$Builder;->access$1000(Lio/hopmonsdk/Hopmn$Builder;)J

    .line 121
    .line 122
    .line 123
    move-result-wide v3

    .line 124
    iput-wide v3, p0, Lio/hopmonsdk/Hopmn;->j:J

    .line 125
    .line 126
    invoke-static {p2}, Lio/hopmonsdk/Hopmn$Builder;->access$1100(Lio/hopmonsdk/Hopmn$Builder;)Z

    .line 127
    .line 128
    .line 129
    move-result v3

    .line 130
    iput-boolean v3, p0, Lio/hopmonsdk/Hopmn;->k:Z

    .line 131
    .line 132
    invoke-static {p2}, Lio/hopmonsdk/Hopmn$Builder;->access$1200(Lio/hopmonsdk/Hopmn$Builder;)Z

    .line 133
    .line 134
    .line 135
    move-result v3

    .line 136
    iput-boolean v3, p0, Lio/hopmonsdk/Hopmn;->l:Z

    .line 137
    .line 138
    invoke-static {p2}, Lio/hopmonsdk/Hopmn$Builder;->access$1300(Lio/hopmonsdk/Hopmn$Builder;)Z

    .line 139
    .line 140
    .line 141
    move-result v3

    .line 142
    iput-boolean v3, p0, Lio/hopmonsdk/Hopmn;->m:Z

    .line 143
    .line 144
    invoke-static {p2}, Lio/hopmonsdk/Hopmn$Builder;->access$300(Lio/hopmonsdk/Hopmn$Builder;)Z

    .line 145
    .line 146
    .line 147
    move-result v3

    .line 148
    iput-boolean v3, p0, Lio/hopmonsdk/Hopmn;->n:Z

    .line 149
    .line 150
    invoke-static {p2}, Lio/hopmonsdk/Hopmn$Builder;->access$000(Lio/hopmonsdk/Hopmn$Builder;)Z

    .line 151
    .line 152
    .line 153
    move-result v4

    .line 154
    iput-boolean v4, p0, Lio/hopmonsdk/Hopmn;->o:Z

    .line 155
    .line 156
    invoke-static {p2}, Lio/hopmonsdk/Hopmn$Builder;->access$100(Lio/hopmonsdk/Hopmn$Builder;)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v5

    .line 160
    iput-object v5, p0, Lio/hopmonsdk/Hopmn;->p:Ljava/lang/String;

    .line 161
    .line 162
    invoke-static {p2}, Lio/hopmonsdk/Hopmn$Builder;->access$200(Lio/hopmonsdk/Hopmn$Builder;)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v6

    .line 166
    iput-object v6, p0, Lio/hopmonsdk/Hopmn;->q:Ljava/lang/String;

    .line 167
    .line 168
    const-string v7, "hopmon.bw_opt_enabled"

    .line 169
    .line 170
    invoke-virtual {v2, v7, v4}, Lk5/a;->set(Ljava/lang/String;Z)V

    .line 171
    .line 172
    .line 173
    if-eqz v5, :cond_1

    .line 174
    .line 175
    const-string v4, "hopmon.bw_opt_key"

    .line 176
    .line 177
    invoke-virtual {v2, v4, v5}, Lk5/a;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    :cond_1
    if-eqz v6, :cond_2

    .line 181
    .line 182
    const-string v4, "hopmon.bw_opt_endpoint"

    .line 183
    .line 184
    invoke-virtual {v2, v4, v6}, Lk5/a;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    :cond_2
    const-string v4, "hopmon.imsdk_enabled"

    .line 188
    .line 189
    invoke-virtual {v2, v4, v3}, Lk5/a;->set(Ljava/lang/String;Z)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {p0}, Lio/hopmonsdk/Hopmn;->isForegroundRunning()Z

    .line 193
    .line 194
    .line 195
    move-result v3

    .line 196
    if-eqz v3, :cond_3

    .line 197
    .line 198
    sget v3, Lio/hopmon/R$string;->hopmon_foreground:I

    .line 199
    .line 200
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v3

    .line 204
    invoke-virtual {v2, v3, v1}, Lk5/a;->set(Ljava/lang/String;Z)V

    .line 205
    .line 206
    .line 207
    goto :goto_1

    .line 208
    :cond_3
    sget v3, Lio/hopmon/R$string;->hopmon_foreground:I

    .line 209
    .line 210
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v3

    .line 214
    invoke-virtual {v2, v3, v0}, Lk5/a;->set(Ljava/lang/String;Z)V

    .line 215
    .line 216
    .line 217
    :goto_1
    invoke-static {p2}, Lio/hopmonsdk/Hopmn$Builder;->access$1400(Lio/hopmonsdk/Hopmn$Builder;)Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v3

    .line 221
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 222
    .line 223
    .line 224
    move-result v4

    .line 225
    const-string v5, "hopmon.seed_servers_csv"

    .line 226
    .line 227
    if-eqz v4, :cond_4

    .line 228
    .line 229
    invoke-virtual {v2, v5}, Lk5/a;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v3

    .line 233
    goto :goto_2

    .line 234
    :cond_4
    invoke-virtual {v2, v5, v3}, Lk5/a;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    :goto_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 238
    .line 239
    .line 240
    move-result v2

    .line 241
    if-nez v2, :cond_b

    .line 242
    .line 243
    new-instance v2, Ljava/util/ArrayList;

    .line 244
    .line 245
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 246
    .line 247
    .line 248
    const-string v4, ","

    .line 249
    .line 250
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v5

    .line 254
    array-length v6, v5

    .line 255
    move v7, v0

    .line 256
    :goto_3
    if-ge v7, v6, :cond_6

    .line 257
    .line 258
    aget-object v8, v5, v7

    .line 259
    .line 260
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v8

    .line 264
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    .line 265
    .line 266
    .line 267
    move-result v9

    .line 268
    if-nez v9, :cond_5

    .line 269
    .line 270
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 271
    .line 272
    .line 273
    :cond_5
    add-int/2addr v7, v1

    .line 274
    goto :goto_3

    .line 275
    :cond_6
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 276
    .line 277
    .line 278
    move-result v5

    .line 279
    if-nez v5, :cond_b

    .line 280
    .line 281
    new-instance v5, Lo5/e;

    .line 282
    .line 283
    iget-object v6, p0, Lio/hopmonsdk/Hopmn;->i:Ljava/lang/String;

    .line 284
    .line 285
    invoke-direct {v5, v2, v6}, Lo5/e;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 286
    .line 287
    .line 288
    iput-object v5, p0, Lio/hopmonsdk/Hopmn;->r:Lo5/e;

    .line 289
    .line 290
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 291
    .line 292
    .line 293
    move-result v5

    .line 294
    if-eqz v5, :cond_7

    .line 295
    .line 296
    const-string v3, ""

    .line 297
    .line 298
    goto :goto_4

    .line 299
    :cond_7
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v3

    .line 303
    aget-object v3, v3, v0

    .line 304
    .line 305
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object v3

    .line 309
    const-string v4, "://"

    .line 310
    .line 311
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 312
    .line 313
    .line 314
    move-result v4

    .line 315
    if-eqz v4, :cond_8

    .line 316
    .line 317
    :try_start_0
    new-instance v4, Ljava/net/URL;

    .line 318
    .line 319
    invoke-direct {v4, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 320
    .line 321
    .line 322
    invoke-virtual {v4}, Ljava/net/URL;->getHost()Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object v4

    .line 326
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 327
    .line 328
    .line 329
    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 330
    if-nez v5, :cond_8

    .line 331
    .line 332
    move-object v3, v4

    .line 333
    :catch_0
    :cond_8
    const-string v4, "^(\\d{1,3}\\.){3}\\d{1,3}$"

    .line 334
    .line 335
    invoke-virtual {v3, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 336
    .line 337
    .line 338
    move-result v4

    .line 339
    if-eqz v4, :cond_9

    .line 340
    .line 341
    goto :goto_4

    .line 342
    :cond_9
    const/16 v4, 0x2e

    .line 343
    .line 344
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    .line 345
    .line 346
    .line 347
    move-result v4

    .line 348
    if-ltz v4, :cond_a

    .line 349
    .line 350
    add-int/2addr v4, v1

    .line 351
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 352
    .line 353
    .line 354
    move-result-object v3

    .line 355
    :cond_a
    :goto_4
    iput-object v3, p0, Lio/hopmonsdk/Hopmn;->s:Ljava/lang/String;

    .line 356
    .line 357
    const/4 v4, 0x2

    .line 358
    new-array v4, v4, [Ljava/lang/Object;

    .line 359
    .line 360
    aput-object v3, v4, v0

    .line 361
    .line 362
    aput-object v2, v4, v1

    .line 363
    .line 364
    const-string v0, "Hopmn"

    .line 365
    .line 366
    const-string v1, "Seed mode enabled, domain=%s, seeds=%s"

    .line 367
    .line 368
    invoke-static {v0, v1, v4}, Ls5/b;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 369
    .line 370
    .line 371
    :cond_b
    invoke-static {p2}, Lio/hopmonsdk/Hopmn$Builder;->access$1500(Lio/hopmonsdk/Hopmn$Builder;)Ljava/lang/String;

    .line 372
    .line 373
    .line 374
    move-result-object p2

    .line 375
    iput-object p2, p0, Lio/hopmonsdk/Hopmn;->t:Ljava/lang/String;

    .line 376
    .line 377
    invoke-static {p1}, Lo0/c;->getInstance(Landroid/content/Context;)Lo0/c;

    .line 378
    .line 379
    .line 380
    move-result-object p1

    .line 381
    new-instance p2, Landroid/content/IntentFilter;

    .line 382
    .line 383
    const-class v0, Lio/hopmonsdk/Hopmn;

    .line 384
    .line 385
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 386
    .line 387
    .line 388
    move-result-object v0

    .line 389
    invoke-direct {p2, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 390
    .line 391
    .line 392
    invoke-virtual {p1, p0, p2}, Lo0/c;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 393
    .line 394
    .line 395
    return-void
.end method

.method public static a(Landroid/content/Context;Lio/hopmonsdk/Hopmn$Builder;)Lio/hopmonsdk/Hopmn;
    .locals 2

    .line 1
    sget-object v0, Lio/hopmonsdk/Hopmn;->u:Lio/hopmonsdk/Hopmn;

    .line 2
    .line 3
    if-nez v0, :cond_3

    .line 4
    .line 5
    const-class v0, Lio/hopmonsdk/Hopmn;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lio/hopmonsdk/Hopmn;->u:Lio/hopmonsdk/Hopmn;

    .line 9
    .line 10
    if-nez v1, :cond_2

    .line 11
    .line 12
    if-eqz p0, :cond_1

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    goto :goto_2

    .line 27
    :cond_0
    :goto_0
    new-instance v1, Lio/hopmonsdk/Hopmn;

    .line 28
    .line 29
    invoke-direct {v1, p0, p1}, Lio/hopmonsdk/Hopmn;-><init>(Landroid/content/Context;Lio/hopmonsdk/Hopmn$Builder;)V

    .line 30
    .line 31
    .line 32
    sput-object v1, Lio/hopmonsdk/Hopmn;->u:Lio/hopmonsdk/Hopmn;

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    .line 36
    .line 37
    const-string p1, "Context cannot be null"

    .line 38
    .line 39
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw p0

    .line 43
    :cond_2
    :goto_1
    monitor-exit v0

    .line 44
    goto :goto_3

    .line 45
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    throw p0

    .line 47
    :cond_3
    :goto_3
    sget-object p0, Lio/hopmonsdk/Hopmn;->u:Lio/hopmonsdk/Hopmn;

    .line 48
    .line 49
    return-object p0
.end method

.method public static builder()Lio/hopmonsdk/Hopmn$Builder;
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    new-instance v0, Lio/hopmonsdk/Hopmn$Builder;

    invoke-direct {v0}, Lio/hopmonsdk/Hopmn$Builder;-><init>()V

    return-object v0
.end method

.method public static getInstance()Lio/hopmonsdk/Hopmn;
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lio/hopmonsdk/Hopmn;->getInstance(Z)Lio/hopmonsdk/Hopmn;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lio/hopmonsdk/Hopmn;
    .locals 8
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    const/4 v0, 0x1

    .line 2
    sget-object v1, Lio/hopmonsdk/Hopmn;->u:Lio/hopmonsdk/Hopmn;

    if-nez v1, :cond_4

    const-class v1, Lio/hopmonsdk/Hopmn;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lio/hopmonsdk/Hopmn;->u:Lio/hopmonsdk/Hopmn;

    if-nez v2, :cond_3

    new-instance v2, Lk5/a;

    invoke-direct {v2, p0}, Lk5/a;-><init>(Landroid/content/Context;)V

    sget v3, Lio/hopmon/R$string;->hopmon_foreground:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lk5/a;->is(Ljava/lang/String;)Z

    move-result v3

    sget v4, Lio/hopmon/R$string;->hopmon_publisher_key:I

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lk5/a;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 p0, 0x0

    monitor-exit v1

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    new-instance v5, Lio/hopmonsdk/Hopmn$Builder;

    invoke-direct {v5}, Lio/hopmonsdk/Hopmn$Builder;-><init>()V

    invoke-virtual {v5, v4}, Lio/hopmonsdk/Hopmn$Builder;->withPublisher(Ljava/lang/String;)Lio/hopmonsdk/Hopmn$Builder;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, v6}, Lio/hopmonsdk/Hopmn$Builder;->withForegroundService(Ljava/lang/Boolean;)Lio/hopmonsdk/Hopmn$Builder;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v5, v3}, Lio/hopmonsdk/Hopmn$Builder;->withMobileForeground(Ljava/lang/Boolean;)Lio/hopmonsdk/Hopmn$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lio/hopmonsdk/Hopmn$Builder;->loggable()Lio/hopmonsdk/Hopmn$Builder;

    move-result-object v3

    const-string v5, "hopmon.bw_opt_enabled"

    invoke-virtual {v2, v5}, Lk5/a;->is(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {v3, v0}, Lio/hopmonsdk/Hopmn$Builder;->access$002(Lio/hopmonsdk/Hopmn$Builder;Z)Z

    const-string v5, "hopmon.bw_opt_key"

    invoke-virtual {v2, v5}, Lk5/a;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-static {v3, v5}, Lio/hopmonsdk/Hopmn$Builder;->access$102(Lio/hopmonsdk/Hopmn$Builder;Ljava/lang/String;)Ljava/lang/String;

    :cond_1
    const-string v5, "hopmon.bw_opt_endpoint"

    invoke-virtual {v2, v5}, Lk5/a;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-static {v3, v5}, Lio/hopmonsdk/Hopmn$Builder;->access$202(Lio/hopmonsdk/Hopmn$Builder;Ljava/lang/String;)Ljava/lang/String;

    :cond_2
    const-string v5, "hopmon.imsdk_enabled"

    invoke-virtual {v2, v5}, Lk5/a;->is(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v3, v5}, Lio/hopmonsdk/Hopmn$Builder;->access$302(Lio/hopmonsdk/Hopmn$Builder;Z)Z

    invoke-virtual {v3, p0}, Lio/hopmonsdk/Hopmn$Builder;->build(Landroid/content/Context;)Lio/hopmonsdk/Hopmn;

    move-result-object p0

    sput-object p0, Lio/hopmonsdk/Hopmn;->u:Lio/hopmonsdk/Hopmn;

    const-string p0, "Hopmn"

    const-string v3, "self-revived from storage (publisher did not build the instance in this process) pub=%s, imsdk=%s, optReporting=%s"

    const-string v5, "hopmon.imsdk_enabled"

    invoke-virtual {v2, v5}, Lk5/a;->is(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const-string v6, "hopmon.bw_opt_enabled"

    invoke-virtual {v2, v6}, Lk5/a;->is(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    aput-object v5, v6, v0

    const/4 v0, 0x2

    aput-object v2, v6, v0

    invoke-static {p0, v3, v6}, Ls5/b;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    monitor-exit v1

    goto :goto_1

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_4
    :goto_1
    sget-object p0, Lio/hopmonsdk/Hopmn;->u:Lio/hopmonsdk/Hopmn;

    return-object p0
.end method

.method public static getInstance(Z)Lio/hopmonsdk/Hopmn;
    .locals 2

    .line 3
    sget-object v0, Lio/hopmonsdk/Hopmn;->u:Lio/hopmonsdk/Hopmn;

    if-nez v0, :cond_2

    const-class v0, Lio/hopmonsdk/Hopmn;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lio/hopmonsdk/Hopmn;->u:Lio/hopmonsdk/Hopmn;

    if-nez v1, :cond_1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "You need to call create() at least once to create the singleton"

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_2
    sget-object p0, Lio/hopmonsdk/Hopmn;->u:Lio/hopmonsdk/Hopmn;

    return-object p0
.end method

.method public static isConsentAgreed(Landroid/content/Context;)Z
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    new-instance v0, Lk5/a;

    invoke-direct {v0, p0}, Lk5/a;-><init>(Landroid/content/Context;)V

    const-string p0, "hopmon.consent_choice"

    invoke-virtual {v0, p0}, Lk5/a;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "agree"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public getCategory()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/hopmonsdk/Hopmn;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getConfigManager()Lq5/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/hopmonsdk/Hopmn;->c:Lq5/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public getConsentChoice()Lio/hopmonsdk/Hopmn$ConsentChoice;
    .locals 2
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    iget-object v0, p0, Lio/hopmonsdk/Hopmn;->d:Lk5/a;

    const-string v1, "hopmon.consent_choice"

    invoke-virtual {v0, v1}, Lk5/a;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "agree"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lio/hopmonsdk/Hopmn$ConsentChoice;->AGREE:Lio/hopmonsdk/Hopmn$ConsentChoice;

    return-object v0

    :cond_0
    const-string v1, "decline"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lio/hopmonsdk/Hopmn$ConsentChoice;->DECLINE:Lio/hopmonsdk/Hopmn$ConsentChoice;

    return-object v0

    :cond_1
    sget-object v0, Lio/hopmonsdk/Hopmn$ConsentChoice;->NONE:Lio/hopmonsdk/Hopmn$ConsentChoice;

    return-object v0
.end method

.method public getDataStore()Lk5/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/hopmonsdk/Hopmn;->d:Lk5/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDelayMillis()J
    .locals 2

    iget-wide v0, p0, Lio/hopmonsdk/Hopmn;->j:J

    return-wide v0
.end method

.method public getDomain()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/hopmonsdk/Hopmn;->s:Ljava/lang/String;

    return-object v0
.end method

.method public getHttpManager()Lp5/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/hopmonsdk/Hopmn;->b:Lp5/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPublisher()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/hopmonsdk/Hopmn;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getSeedDiscovery()Lo5/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/hopmonsdk/Hopmn;->r:Lo5/e;

    .line 2
    .line 3
    return-object v0
.end method

.method public getUpTime()J
    .locals 2
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    iget-object v0, p0, Lio/hopmonsdk/Hopmn;->e:Lj5/a;

    invoke-virtual {v0}, Lj5/a;->isBound()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lj5/a;->getMoneytiserService()Lio/hopmonsdk/service/MoneytiserService;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1}, Lio/hopmonsdk/service/MoneytiserService;->getProxyUpTime(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public isConsentGiven()Z
    .locals 2
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    invoke-virtual {p0}, Lio/hopmonsdk/Hopmn;->getConsentChoice()Lio/hopmonsdk/Hopmn$ConsentChoice;

    move-result-object v0

    sget-object v1, Lio/hopmonsdk/Hopmn$ConsentChoice;->AGREE:Lio/hopmonsdk/Hopmn$ConsentChoice;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isForegroundRunning()Z
    .locals 2

    iget-boolean v0, p0, Lio/hopmonsdk/Hopmn;->l:Z

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Lio/hopmonsdk/Hopmn;->isTV()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lio/hopmonsdk/Hopmn;->isMobileForeground()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isImsdkActivationEnabled()Z
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    iget-boolean v0, p0, Lio/hopmonsdk/Hopmn;->n:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isLoggable()Z
    .locals 1

    iget-boolean v0, p0, Lio/hopmonsdk/Hopmn;->k:Z

    return v0
.end method

.method public isMobileForeground()Z
    .locals 1

    iget-boolean v0, p0, Lio/hopmonsdk/Hopmn;->m:Z

    return v0
.end method

.method public isRunning()Z
    .locals 2
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    iget-object v0, p0, Lio/hopmonsdk/Hopmn;->e:Lj5/a;

    invoke-virtual {v0}, Lj5/a;->isBound()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lj5/a;->getMoneytiserService()Lio/hopmonsdk/service/MoneytiserService;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lj5/a;->getMoneytiserService()Lio/hopmonsdk/service/MoneytiserService;

    move-result-object v0

    invoke-virtual {v0}, Lio/hopmonsdk/service/MoneytiserService;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isTV()Z
    .locals 4

    iget-object v0, p0, Lio/hopmonsdk/Hopmn;->a:Landroid/content/Context;

    const-string v1, "uimode"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/UiModeManager;

    invoke-virtual {v0}, Landroid/app/UiModeManager;->getCurrentModeType()I

    move-result v0

    const/4 v1, 0x4

    const-string v2, "DeviceTypeRuntimeCheck"

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "Running on a TV Device"

    invoke-static {v2, v1, v0}, Ls5/b;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "Running on a non-TV Device"

    invoke-static {v2, v1, v0}, Ls5/b;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v3
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 1
    const-string p1, "Failed To restart Hopmn Service"

    .line 2
    .line 3
    const-string v0, "message"

    .line 4
    .line 5
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "Got message: "

    .line 10
    .line 11
    invoke-static {v1, v0}, LA/i;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x0

    .line 16
    new-array v2, v1, [Ljava/lang/Object;

    .line 17
    .line 18
    const-string v3, "receiver"

    .line 19
    .line 20
    invoke-static {v3, v0, v2}, Ls5/b;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    const-string v0, "need_restart"

    .line 24
    .line 25
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    if-eqz p2, :cond_0

    .line 30
    .line 31
    :try_start_0
    const-string p2, "Restarting Hopmn Service"

    .line 32
    .line 33
    new-array v0, v1, [Ljava/lang/Object;

    .line 34
    .line 35
    invoke-static {v3, p2, v0}, Ls5/b;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lio/hopmonsdk/Hopmn;->start()Z

    .line 39
    .line 40
    .line 41
    move-result p2

    .line 42
    const/4 v0, 0x1

    .line 43
    if-eq p2, v0, :cond_0

    .line 44
    .line 45
    new-array p2, v1, [Ljava/lang/Object;

    .line 46
    .line 47
    invoke-static {v3, p1, p2}, Ls5/b;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :catch_0
    new-array p2, v1, [Ljava/lang/Object;

    .line 52
    .line 53
    invoke-static {v3, p1, p2}, Ls5/b;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    :cond_0
    return-void
.end method

.method public reportUserConsent(Lio/hopmonsdk/Hopmn$ConsentChoice;)V
    .locals 4
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    sget-object v0, Lio/hopmonsdk/c;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const-string v0, "hopmon.consent_accepted"

    const-string v1, "hopmon.consent_choice"

    const/4 v2, 0x1

    if-eq p1, v2, :cond_3

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq p1, v2, :cond_1

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lio/hopmonsdk/Hopmn;->d:Lk5/a;

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Lk5/a;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lio/hopmonsdk/Hopmn;->d:Lk5/a;

    invoke-virtual {p1, v0, v3}, Lk5/a;->set(Ljava/lang/String;Z)V

    iput-boolean v3, p0, Lio/hopmonsdk/Hopmn;->f:Z

    return-void

    :cond_1
    iget-object p1, p0, Lio/hopmonsdk/Hopmn;->d:Lk5/a;

    const-string v2, "decline"

    invoke-virtual {p1, v1, v2}, Lk5/a;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lio/hopmonsdk/Hopmn;->d:Lk5/a;

    invoke-virtual {p1, v0, v3}, Lk5/a;->set(Ljava/lang/String;Z)V

    iput-boolean v3, p0, Lio/hopmonsdk/Hopmn;->f:Z

    iget-boolean p1, p0, Lio/hopmonsdk/Hopmn;->o:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lio/hopmonsdk/Hopmn;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lio/hopmonsdk/Hopmn;->q:Ljava/lang/String;

    iget-object v1, p0, Lio/hopmonsdk/Hopmn;->i:Ljava/lang/String;

    iget-object v2, p0, Lio/hopmonsdk/Hopmn;->p:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Ln5/a;->reportOptOut(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object p1, p0, Lio/hopmonsdk/Hopmn;->d:Lk5/a;

    const-string v3, "agree"

    invoke-virtual {p1, v1, v3}, Lk5/a;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lio/hopmonsdk/Hopmn;->d:Lk5/a;

    invoke-virtual {p1, v0, v2}, Lk5/a;->set(Ljava/lang/String;Z)V

    iput-boolean v2, p0, Lio/hopmonsdk/Hopmn;->f:Z

    return-void
.end method

.method public resetConsent()V
    .locals 4
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    iget-object v0, p0, Lio/hopmonsdk/Hopmn;->d:Lk5/a;

    const-string v1, "hopmon.consent_accepted"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lk5/a;->set(Ljava/lang/String;Z)V

    iget-object v0, p0, Lio/hopmonsdk/Hopmn;->d:Lk5/a;

    const-string v1, "hopmon.consent_choice"

    const-string v3, ""

    invoke-virtual {v0, v1, v3}, Lk5/a;->set(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v2, p0, Lio/hopmonsdk/Hopmn;->f:Z

    iput-boolean v2, p0, Lio/hopmonsdk/Hopmn;->g:Z

    return-void
.end method

.method public setConsent(Z)V
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    if-eqz p1, :cond_0

    sget-object p1, Lio/hopmonsdk/Hopmn$ConsentChoice;->AGREE:Lio/hopmonsdk/Hopmn$ConsentChoice;

    invoke-virtual {p0, p1}, Lio/hopmonsdk/Hopmn;->reportUserConsent(Lio/hopmonsdk/Hopmn$ConsentChoice;)V

    invoke-virtual {p0}, Lio/hopmonsdk/Hopmn;->start()Z

    return-void

    :cond_0
    sget-object p1, Lio/hopmonsdk/Hopmn$ConsentChoice;->DECLINE:Lio/hopmonsdk/Hopmn$ConsentChoice;

    invoke-virtual {p0, p1}, Lio/hopmonsdk/Hopmn;->reportUserConsent(Lio/hopmonsdk/Hopmn$ConsentChoice;)V

    invoke-virtual {p0}, Lio/hopmonsdk/Hopmn;->stop()V

    return-void
.end method

.method public setCountry(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public showConsent(Landroid/app/Activity;Lio/hopmonsdk/Hopmn$ConsentCallback;)V
    .locals 9
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0}, Lio/hopmonsdk/Hopmn;->getConsentChoice()Lio/hopmonsdk/Hopmn$ConsentChoice;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    sget-object v2, Lio/hopmonsdk/Hopmn$ConsentChoice;->AGREE:Lio/hopmonsdk/Hopmn$ConsentChoice;

    .line 7
    .line 8
    const/4 v3, 0x1

    .line 9
    if-ne v1, v2, :cond_0

    .line 10
    .line 11
    iput-boolean v3, p0, Lio/hopmonsdk/Hopmn;->f:Z

    .line 12
    .line 13
    invoke-interface {p2}, Lio/hopmonsdk/Hopmn$ConsentCallback;->onAgreed()V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    sget-object v2, Lio/hopmonsdk/Hopmn$ConsentChoice;->DECLINE:Lio/hopmonsdk/Hopmn$ConsentChoice;

    .line 18
    .line 19
    if-ne v1, v2, :cond_1

    .line 20
    .line 21
    invoke-interface {p2}, Lio/hopmonsdk/Hopmn$ConsentCallback;->onDeclined()V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    const-string v1, "Hopmn"

    .line 26
    .line 27
    if-eqz p1, :cond_6

    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-nez v2, :cond_6

    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-eqz v2, :cond_2

    .line 40
    .line 41
    goto/16 :goto_2

    .line 42
    .line 43
    :cond_2
    iget-boolean v2, p0, Lio/hopmonsdk/Hopmn;->g:Z

    .line 44
    .line 45
    if-eqz v2, :cond_3

    .line 46
    .line 47
    goto/16 :goto_1

    .line 48
    .line 49
    :cond_3
    iput-boolean v3, p0, Lio/hopmonsdk/Hopmn;->g:Z

    .line 50
    .line 51
    iget-object v2, p0, Lio/hopmonsdk/Hopmn;->a:Landroid/content/Context;

    .line 52
    .line 53
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    iget-object v4, p0, Lio/hopmonsdk/Hopmn;->a:Landroid/content/Context;

    .line 58
    .line 59
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    invoke-virtual {v2, v4}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    const-string v4, " uses a small portion of your device\'s spare resources (such as a bit of network bandwidth) to help fund development and keep the app free. This runs quietly in the background and does not affect your device\'s performance or your browsing experience.\n\nNo personal data is collected. You can opt out at any time from Settings."

    .line 72
    .line 73
    invoke-static {v2, v4}, LA/i;->B(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    new-instance v5, Landroid/text/SpannableStringBuilder;

    .line 78
    .line 79
    invoke-direct {v5, v4}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 80
    .line 81
    .line 82
    iget-object v4, p0, Lio/hopmonsdk/Hopmn;->t:Ljava/lang/String;

    .line 83
    .line 84
    if-eqz v4, :cond_4

    .line 85
    .line 86
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 91
    .line 92
    .line 93
    move-result v4

    .line 94
    if-lez v4, :cond_4

    .line 95
    .line 96
    const-string v4, "\n\nPrivacy Policy"

    .line 97
    .line 98
    invoke-virtual {v5, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    .line 102
    .line 103
    .line 104
    move-result v4

    .line 105
    add-int/lit8 v4, v4, -0xe

    .line 106
    .line 107
    new-instance v6, Landroid/text/style/URLSpan;

    .line 108
    .line 109
    iget-object v7, p0, Lio/hopmonsdk/Hopmn;->t:Ljava/lang/String;

    .line 110
    .line 111
    invoke-direct {v6, v7}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    .line 115
    .line 116
    .line 117
    move-result v7

    .line 118
    const/16 v8, 0x21

    .line 119
    .line 120
    invoke-virtual {v5, v6, v4, v7, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 121
    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_4
    new-array v4, v0, [Ljava/lang/Object;

    .line 125
    .line 126
    const-string v6, "no privacy policy URL set - consent dialog shown without the link"

    .line 127
    .line 128
    invoke-static {v1, v6, v4}, Ls5/b;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    :goto_0
    new-instance v4, Landroid/app/AlertDialog$Builder;

    .line 132
    .line 133
    invoke-direct {v4, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 134
    .line 135
    .line 136
    new-instance p1, Ljava/lang/StringBuilder;

    .line 137
    .line 138
    const-string v6, "Help Keep "

    .line 139
    .line 140
    invoke-direct {p1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    const-string v2, " Free"

    .line 147
    .line 148
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    invoke-virtual {v4, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    invoke-virtual {p1, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    new-instance v2, LB4/b;

    .line 168
    .line 169
    const/4 v4, 0x2

    .line 170
    invoke-direct {v2, v4, p0, p2}, LB4/b;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 171
    .line 172
    .line 173
    const-string p2, "Okay"

    .line 174
    .line 175
    invoke-virtual {p1, p2, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    new-instance p2, Lio/hopmonsdk/b;

    .line 184
    .line 185
    invoke-direct {p2, p0}, Lio/hopmonsdk/b;-><init>(Lio/hopmonsdk/Hopmn;)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 189
    .line 190
    .line 191
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    .line 193
    .line 194
    const p2, 0x102000b

    .line 195
    .line 196
    .line 197
    invoke-virtual {p1, p2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 198
    .line 199
    .line 200
    move-result-object p1

    .line 201
    check-cast p1, Landroid/widget/TextView;

    .line 202
    .line 203
    if-eqz p1, :cond_5

    .line 204
    .line 205
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    .line 206
    .line 207
    .line 208
    move-result-object p2

    .line 209
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 210
    .line 211
    .line 212
    :cond_5
    :goto_1
    return-void

    .line 213
    :catchall_0
    move-exception p1

    .line 214
    iput-boolean v0, p0, Lio/hopmonsdk/Hopmn;->g:Z

    .line 215
    .line 216
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object p1

    .line 220
    new-array p2, v3, [Ljava/lang/Object;

    .line 221
    .line 222
    aput-object p1, p2, v0

    .line 223
    .line 224
    const-string p1, "consent dialog failed to show: %s"

    .line 225
    .line 226
    invoke-static {v1, p1, p2}, Ls5/b;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 227
    .line 228
    .line 229
    return-void

    .line 230
    :cond_6
    :goto_2
    new-array p1, v0, [Ljava/lang/Object;

    .line 231
    .line 232
    const-string p2, "showConsent skipped: activity is finishing/destroyed"

    .line 233
    .line 234
    invoke-static {v1, p2, p1}, Ls5/b;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 235
    .line 236
    .line 237
    return-void
.end method

.method public showConsentNow(Landroid/app/Activity;Lio/hopmonsdk/Hopmn$ConsentCallback;)V
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    invoke-virtual {p0}, Lio/hopmonsdk/Hopmn;->resetConsent()V

    invoke-virtual {p0, p1, p2}, Lio/hopmonsdk/Hopmn;->showConsent(Landroid/app/Activity;Lio/hopmonsdk/Hopmn$ConsentCallback;)V

    return-void
.end method

.method public start()Z
    .locals 7
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/hopmonsdk/Hopmn;->getConsentChoice()Lio/hopmonsdk/Hopmn$ConsentChoice;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lio/hopmonsdk/Hopmn$ConsentChoice;->DECLINE:Lio/hopmonsdk/Hopmn$ConsentChoice;

    .line 6
    .line 7
    const-string v2, "Hopmn"

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    new-array v0, v3, [Ljava/lang/Object;

    .line 13
    .line 14
    const-string v1, "start() blocked: user declined consent"

    .line 15
    .line 16
    invoke-static {v2, v1, v0}, Ls5/b;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    return v3

    .line 20
    :cond_0
    invoke-virtual {p0}, Lio/hopmonsdk/Hopmn;->isConsentGiven()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    iget-boolean v0, p0, Lio/hopmonsdk/Hopmn;->f:Z

    .line 27
    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    new-array v0, v3, [Ljava/lang/Object;

    .line 31
    .line 32
    const-string v1, "start() blocked: call showConsent() before start()"

    .line 33
    .line 34
    invoke-static {v2, v1, v0}, Ls5/b;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    return v3

    .line 38
    :cond_1
    iget-object v0, p0, Lio/hopmonsdk/Hopmn;->a:Landroid/content/Context;

    .line 39
    .line 40
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    new-instance v1, Landroid/content/Intent;

    .line 45
    .line 46
    const-class v4, Lio/hopmonsdk/service/MoneytiserService;

    .line 47
    .line 48
    invoke-direct {v1, v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 49
    .line 50
    .line 51
    const-string v4, "need_forground"

    .line 52
    .line 53
    const/4 v5, 0x1

    .line 54
    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 55
    .line 56
    .line 57
    :try_start_0
    iget-object v4, p0, Lio/hopmonsdk/Hopmn;->b:Lp5/b;

    .line 58
    .line 59
    invoke-virtual {v4}, Lp5/b;->start()V

    .line 60
    .line 61
    .line 62
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 63
    .line 64
    const/16 v6, 0x1a

    .line 65
    .line 66
    if-lt v4, v6, :cond_2

    .line 67
    .line 68
    invoke-static {v0, v1}, LB4/o;->v(Landroid/content/Context;Landroid/content/Intent;)V

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :catch_0
    move-exception v0

    .line 73
    goto :goto_2

    .line 74
    :cond_2
    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 75
    .line 76
    .line 77
    :goto_0
    iget-object v4, p0, Lio/hopmonsdk/Hopmn;->e:Lj5/a;

    .line 78
    .line 79
    invoke-virtual {v4}, Lj5/a;->isBound()Z

    .line 80
    .line 81
    .line 82
    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    if-nez v4, :cond_3

    .line 84
    .line 85
    :try_start_1
    iget-object v4, p0, Lio/hopmonsdk/Hopmn;->e:Lj5/a;

    .line 86
    .line 87
    invoke-virtual {v0, v1, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 88
    .line 89
    .line 90
    goto :goto_1

    .line 91
    :catch_1
    move-exception v1

    .line 92
    :try_start_2
    const-string v4, "bindService failed"

    .line 93
    .line 94
    new-array v6, v3, [Ljava/lang/Object;

    .line 95
    .line 96
    invoke-static {v2, v4, v1, v6}, Ls5/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lio/hopmonsdk/Hopmn;->isImsdkActivationEnabled()Z

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    if-eqz v1, :cond_4

    .line 104
    .line 105
    iget-object v1, p0, Lio/hopmonsdk/Hopmn;->i:Ljava/lang/String;

    .line 106
    .line 107
    iget-object v4, p0, Lio/hopmonsdk/Hopmn;->d:Lk5/a;

    .line 108
    .line 109
    const-string v6, "hopmon.seed_servers_csv"

    .line 110
    .line 111
    invoke-virtual {v4, v6}, Lk5/a;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v4

    .line 115
    invoke-static {v0, v1, v4}, Ll5/a;->enable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    :cond_4
    iget-boolean v1, p0, Lio/hopmonsdk/Hopmn;->o:Z

    .line 119
    .line 120
    if-eqz v1, :cond_5

    .line 121
    .line 122
    iget-object v1, p0, Lio/hopmonsdk/Hopmn;->q:Ljava/lang/String;

    .line 123
    .line 124
    iget-object v4, p0, Lio/hopmonsdk/Hopmn;->i:Ljava/lang/String;

    .line 125
    .line 126
    iget-object v6, p0, Lio/hopmonsdk/Hopmn;->p:Ljava/lang/String;

    .line 127
    .line 128
    invoke-static {v0, v1, v4, v6}, Ln5/a;->reportOptIn(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    :cond_5
    const-string v0, "start() requested MoneytiserService"

    .line 132
    .line 133
    new-array v1, v3, [Ljava/lang/Object;

    .line 134
    .line 135
    invoke-static {v2, v0, v1}, Ls5/b;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 136
    .line 137
    .line 138
    return v5

    .line 139
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 140
    .line 141
    const-string v4, "start() failed on SDK "

    .line 142
    .line 143
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 147
    .line 148
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    new-array v4, v3, [Ljava/lang/Object;

    .line 156
    .line 157
    invoke-static {v2, v1, v0, v4}, Ls5/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 158
    .line 159
    .line 160
    return v3
.end method

.method public startWithConsent(Landroid/app/Activity;)V
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lio/hopmonsdk/Hopmn;->startWithConsent(Landroid/app/Activity;Lio/hopmonsdk/Hopmn$ConsentCallback;)V

    return-void
.end method

.method public startWithConsent(Landroid/app/Activity;Lio/hopmonsdk/Hopmn$ConsentCallback;)V
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 2
    new-instance v0, Lio/hopmonsdk/a;

    invoke-direct {v0, p0, p2}, Lio/hopmonsdk/a;-><init>(Lio/hopmonsdk/Hopmn;Lio/hopmonsdk/Hopmn$ConsentCallback;)V

    invoke-virtual {p0, p1, v0}, Lio/hopmonsdk/Hopmn;->showConsent(Landroid/app/Activity;Lio/hopmonsdk/Hopmn$ConsentCallback;)V

    return-void
.end method

.method public stop()V
    .locals 6
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1
    const-string v0, "Hopmn"

    .line 2
    .line 3
    iget-object v1, p0, Lio/hopmonsdk/Hopmn;->e:Lj5/a;

    .line 4
    .line 5
    iget-object v2, p0, Lio/hopmonsdk/Hopmn;->a:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {p0}, Lio/hopmonsdk/Hopmn;->isImsdkActivationEnabled()Z

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    if-eqz v3, :cond_0

    .line 16
    .line 17
    invoke-static {v2}, Ll5/a;->disable(Landroid/content/Context;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    const/4 v3, 0x0

    .line 21
    :try_start_0
    invoke-virtual {v1}, Lj5/a;->isBound()Z

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    if-eqz v4, :cond_1

    .line 26
    .line 27
    invoke-virtual {v2, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 28
    .line 29
    .line 30
    iput-boolean v3, v1, Lj5/a;->b:Z

    .line 31
    .line 32
    const/4 v4, 0x0

    .line 33
    iput-object v4, v1, Lj5/a;->a:Lio/hopmonsdk/service/MoneytiserService;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catch_0
    move-exception v1

    .line 37
    new-array v4, v3, [Ljava/lang/Object;

    .line 38
    .line 39
    const-string v5, "unbindService failed"

    .line 40
    .line 41
    invoke-static {v0, v5, v1, v4}, Ls5/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    :cond_1
    :goto_0
    :try_start_1
    new-instance v1, Landroid/content/Intent;

    .line 45
    .line 46
    const-class v4, Lio/hopmonsdk/service/MoneytiserService;

    .line 47
    .line 48
    invoke-direct {v1, v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :catch_1
    move-exception v1

    .line 56
    new-array v2, v3, [Ljava/lang/Object;

    .line 57
    .line 58
    const-string v3, "stopService failed"

    .line 59
    .line 60
    invoke-static {v0, v3, v1, v2}, Ls5/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    :goto_1
    return-void
.end method
