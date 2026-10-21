.class public Lflix/com/vision/activities/player/SimpleVideoPlayer;
.super Le/v;
.source "SourceFile"

# interfaces
.implements LK4/b;
.implements LU4/f;
.implements LU4/g;
.implements LK4/m;


# static fields
.field public static Q0:Z = false


# instance fields
.field public A:Lflix/com/vision/bvp/BetterVideoPlayer;

.field public A0:Z

.field public final B:LT4/j;

.field public B0:Ljava/util/ArrayList;

.field public C:Landroid/os/Handler;

.field public C0:I

.field public D:Landroid/widget/TextView;

.field public D0:Z

.field public E:Landroid/widget/TextView;

.field public E0:Z

.field public F:Landroid/widget/TextView;

.field public F0:Landroid/view/animation/Animation;

.field public G:Landroid/widget/TextView;

.field public G0:Landroid/view/animation/Animation;

.field public H:Landroid/widget/TextView;

.field public H0:Z

.field public I:Lflix/com/vision/models/Movie;

.field public I0:Z

.field public J:Landroid/widget/ImageView;

.field public J0:Landroid/os/CountDownTimer;

.field public K:Landroid/widget/ImageView;

.field public K0:Landroid/os/CountDownTimer;

.field public L:Landroid/widget/LinearLayout;

.field public L0:Z

.field public M:Landroid/widget/LinearLayout;

.field public final M0:[Ljava/lang/CharSequence;

.field public N:Landroid/widget/LinearLayout;

.field public final N0:[Ljava/lang/CharSequence;

.field public O:LC4/V;

.field public O0:Lflix/com/vision/models/IntroDbResponse$Segment;

.field public final P:Ljava/util/ArrayList;

.field public P0:Lflix/com/vision/models/IntroDbResponse$Segment;

.field public Q:Lcom/google/android/gms/cast/framework/CastContext;

.field public R:Z

.field public S:J

.field public final T:Landroid/os/Handler;

.field public final U:LB4/C;

.field public V:I

.field public W:Ljava/lang/String;

.field public X:I

.field public Y:Ljava/lang/String;

.field public Z:Ljava/lang/String;

.field public a0:Z

.field public b:Z

.field public b0:Z

.field public final c0:Landroid/os/Handler;

.field public final d0:LB4/E;

.field public e:Z

.field public e0:Ljava/lang/String;

.field public f:Landroid/widget/ImageView;

.field public f0:Ljava/lang/String;

.field public g0:I

.field public h0:I

.field public i0:I

.field public j:Z

.field public j0:LB4/s;

.field public k0:Z

.field public l0:Z

.field public m:Z

.field public m0:I

.field public n:Landroid/widget/TextClock;

.field public n0:I

.field public o0:Ljava/lang/String;

.field public p:Landroidx/mediarouter/app/MediaRouteButton;

.field public p0:Landroid/view/animation/Animation;

.field public q:Landroid/widget/ImageView;

.field public q0:Landroid/view/animation/Animation;

.field public r:Ljava/util/ArrayList;

.field public r0:Landroid/view/animation/Animation;

.field public s:Lcom/github/ybq/android/spinkit/SpinKitView;

.field public s0:Landroid/view/animation/Animation;

.field public t:Landroid/widget/RelativeLayout;

.field public t0:Landroid/view/animation/Animation;

.field public u:Landroid/widget/RelativeLayout;

.field public u0:Z

.field public v:Landroidx/recyclerview/widget/RecyclerView;

.field public v0:Z

.field public w:Landroid/graphics/Typeface;

.field public w0:LQ4/d;

.field public x:Lh5/j;

.field public x0:Lcom/google/android/gms/cast/framework/CastSession;

.field public y:Ljava/lang/String;

.field public y0:Lcom/google/android/gms/cast/framework/SessionManager;

.field public z:Landroid/view/View;

.field public final z0:LB4/L;


# direct methods
.method public constructor <init>()V
    .locals 10

    .line 1
    invoke-direct {p0}, Le/v;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->b:Z

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    iput-boolean v1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->e:Z

    .line 9
    .line 10
    iput-boolean v0, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->j:Z

    .line 11
    .line 12
    iput-boolean v1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->m:Z

    .line 13
    .line 14
    new-instance v2, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v2, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->r:Ljava/util/ArrayList;

    .line 20
    .line 21
    new-instance v2, LT4/j;

    .line 22
    .line 23
    invoke-direct {v2}, LT4/j;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v2, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->B:LT4/j;

    .line 27
    .line 28
    new-instance v2, Landroid/os/Handler;

    .line 29
    .line 30
    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object v2, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->C:Landroid/os/Handler;

    .line 34
    .line 35
    new-instance v2, Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .line 39
    .line 40
    iput-object v2, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->P:Ljava/util/ArrayList;

    .line 41
    .line 42
    iput-boolean v0, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->R:Z

    .line 43
    .line 44
    const-wide/16 v2, -0x1

    .line 45
    .line 46
    iput-wide v2, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->S:J

    .line 47
    .line 48
    new-instance v2, Landroid/os/Handler;

    .line 49
    .line 50
    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    .line 51
    .line 52
    .line 53
    iput-object v2, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->T:Landroid/os/Handler;

    .line 54
    .line 55
    new-instance v2, LB4/C;

    .line 56
    .line 57
    invoke-direct {v2, p0}, LB4/C;-><init>(Lflix/com/vision/activities/player/SimpleVideoPlayer;)V

    .line 58
    .line 59
    .line 60
    iput-object v2, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->U:LB4/C;

    .line 61
    .line 62
    iput v0, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->X:I

    .line 63
    .line 64
    const/4 v2, 0x0

    .line 65
    iput-object v2, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->Y:Ljava/lang/String;

    .line 66
    .line 67
    iput-object v2, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->Z:Ljava/lang/String;

    .line 68
    .line 69
    iput-boolean v0, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->a0:Z

    .line 70
    .line 71
    iput-boolean v0, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->b0:Z

    .line 72
    .line 73
    new-instance v3, Landroid/os/Handler;

    .line 74
    .line 75
    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    .line 76
    .line 77
    .line 78
    iput-object v3, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->c0:Landroid/os/Handler;

    .line 79
    .line 80
    new-instance v3, LB4/E;

    .line 81
    .line 82
    invoke-direct {v3, p0}, LB4/E;-><init>(Lflix/com/vision/activities/player/SimpleVideoPlayer;)V

    .line 83
    .line 84
    .line 85
    iput-object v3, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->d0:LB4/E;

    .line 86
    .line 87
    iput-boolean v0, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->k0:Z

    .line 88
    .line 89
    iput-boolean v0, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->l0:Z

    .line 90
    .line 91
    iput v0, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->m0:I

    .line 92
    .line 93
    const/4 v3, -0x1

    .line 94
    iput v3, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->n0:I

    .line 95
    .line 96
    iput-object v2, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->o0:Ljava/lang/String;

    .line 97
    .line 98
    iput-boolean v0, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->u0:Z

    .line 99
    .line 100
    iput-boolean v0, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->v0:Z

    .line 101
    .line 102
    iput-object v2, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->w0:LQ4/d;

    .line 103
    .line 104
    new-instance v2, LB4/L;

    .line 105
    .line 106
    invoke-direct {v2, p0}, LB4/L;-><init>(Lflix/com/vision/activities/player/SimpleVideoPlayer;)V

    .line 107
    .line 108
    .line 109
    iput-object v2, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->z0:LB4/L;

    .line 110
    .line 111
    iput-boolean v0, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A0:Z

    .line 112
    .line 113
    new-instance v2, Ljava/util/ArrayList;

    .line 114
    .line 115
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 116
    .line 117
    .line 118
    iput-object v2, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->B0:Ljava/util/ArrayList;

    .line 119
    .line 120
    iput v3, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->C0:I

    .line 121
    .line 122
    iput-boolean v0, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->E0:Z

    .line 123
    .line 124
    iput-boolean v0, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->H0:Z

    .line 125
    .line 126
    iput-boolean v0, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->I0:Z

    .line 127
    .line 128
    iput-boolean v0, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->L0:Z

    .line 129
    .line 130
    const/4 v2, 0x7

    .line 131
    new-array v3, v2, [Ljava/lang/CharSequence;

    .line 132
    .line 133
    const-string v4, "18sp"

    .line 134
    .line 135
    aput-object v4, v3, v0

    .line 136
    .line 137
    const-string v4, "23sp"

    .line 138
    .line 139
    aput-object v4, v3, v1

    .line 140
    .line 141
    const-string v4, "28sp"

    .line 142
    .line 143
    const/4 v5, 0x2

    .line 144
    aput-object v4, v3, v5

    .line 145
    .line 146
    const-string v4, "33sp"

    .line 147
    .line 148
    const/4 v6, 0x3

    .line 149
    aput-object v4, v3, v6

    .line 150
    .line 151
    const-string v4, "38sp"

    .line 152
    .line 153
    const/4 v7, 0x4

    .line 154
    aput-object v4, v3, v7

    .line 155
    .line 156
    const-string v4, "48sp"

    .line 157
    .line 158
    const/4 v8, 0x5

    .line 159
    aput-object v4, v3, v8

    .line 160
    .line 161
    const-string v4, "58sp"

    .line 162
    .line 163
    const/4 v9, 0x6

    .line 164
    aput-object v4, v3, v9

    .line 165
    .line 166
    iput-object v3, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->M0:[Ljava/lang/CharSequence;

    .line 167
    .line 168
    const/16 v3, 0x2e

    .line 169
    .line 170
    new-array v3, v3, [Ljava/lang/CharSequence;

    .line 171
    .line 172
    const-string v4, "Default Charset"

    .line 173
    .line 174
    aput-object v4, v3, v0

    .line 175
    .line 176
    const-string v0, "UTF-8 utf-8"

    .line 177
    .line 178
    aput-object v0, v3, v1

    .line 179
    .line 180
    const-string v0, "UTF-16 LE utf-16 le"

    .line 181
    .line 182
    aput-object v0, v3, v5

    .line 183
    .line 184
    const-string v0, "UTF-16 BE utf-16 be"

    .line 185
    .line 186
    aput-object v0, v3, v6

    .line 187
    .line 188
    const-string v0, "Western (Windows 1252) windows-1252"

    .line 189
    .line 190
    aput-object v0, v3, v7

    .line 191
    .line 192
    const-string v0, "Western (ISO 8859-1) iso-8859-1"

    .line 193
    .line 194
    aput-object v0, v3, v8

    .line 195
    .line 196
    const-string v0, "Western (ISO 8859-3) iso-8859-3"

    .line 197
    .line 198
    aput-object v0, v3, v9

    .line 199
    .line 200
    const-string v0, "Western (ISO 8859-15) iso-8859-15"

    .line 201
    .line 202
    aput-object v0, v3, v2

    .line 203
    .line 204
    const-string v0, "Western (Mac Roman) macroman"

    .line 205
    .line 206
    const/16 v1, 0x8

    .line 207
    .line 208
    aput-object v0, v3, v1

    .line 209
    .line 210
    const-string v0, "Arabic (Windows 1256) windows-1256"

    .line 211
    .line 212
    const/16 v1, 0x9

    .line 213
    .line 214
    aput-object v0, v3, v1

    .line 215
    .line 216
    const-string v0, "Arabic (ISO 8859-6) iso-8859-6"

    .line 217
    .line 218
    const/16 v1, 0xa

    .line 219
    .line 220
    aput-object v0, v3, v1

    .line 221
    .line 222
    const-string v0, "Baltic (Windows 1257) windows-1257"

    .line 223
    .line 224
    const/16 v1, 0xb

    .line 225
    .line 226
    aput-object v0, v3, v1

    .line 227
    .line 228
    const-string v0, "Baltic (ISO 8859-4) iso-8859-4"

    .line 229
    .line 230
    const/16 v1, 0xc

    .line 231
    .line 232
    aput-object v0, v3, v1

    .line 233
    .line 234
    const-string v0, "Celtic (ISO 8859-14) iso-8859-14"

    .line 235
    .line 236
    const/16 v1, 0xd

    .line 237
    .line 238
    aput-object v0, v3, v1

    .line 239
    .line 240
    const-string v0, "Central European (Windows 1250) windows-1250"

    .line 241
    .line 242
    const/16 v1, 0xe

    .line 243
    .line 244
    aput-object v0, v3, v1

    .line 245
    .line 246
    const-string v0, "Central European (ISO 8859-2) iso-8859-2"

    .line 247
    .line 248
    const/16 v1, 0xf

    .line 249
    .line 250
    aput-object v0, v3, v1

    .line 251
    .line 252
    const-string v0, "Central European (CP 852) cp-852"

    .line 253
    .line 254
    const/16 v1, 0x10

    .line 255
    .line 256
    aput-object v0, v3, v1

    .line 257
    .line 258
    const-string v0, "Cyrillic (Windows 1251) windows-1251"

    .line 259
    .line 260
    const/16 v1, 0x11

    .line 261
    .line 262
    aput-object v0, v3, v1

    .line 263
    .line 264
    const-string v0, "Cyrillic (CP 866) cp-866"

    .line 265
    .line 266
    const/16 v1, 0x12

    .line 267
    .line 268
    aput-object v0, v3, v1

    .line 269
    .line 270
    const-string v0, "Cyrillic (ISO 8859-5) iso-8859-5"

    .line 271
    .line 272
    const/16 v1, 0x13

    .line 273
    .line 274
    aput-object v0, v3, v1

    .line 275
    .line 276
    const-string v0, "Cyrillic (KO18-R) koi8-r"

    .line 277
    .line 278
    const/16 v1, 0x14

    .line 279
    .line 280
    aput-object v0, v3, v1

    .line 281
    .line 282
    const-string v0, "Cyrillic (KOI8-U) koi8-u"

    .line 283
    .line 284
    const/16 v1, 0x15

    .line 285
    .line 286
    aput-object v0, v3, v1

    .line 287
    .line 288
    const-string v0, "Estonian (ISO 8859-13) iso-8859-13"

    .line 289
    .line 290
    const/16 v1, 0x16

    .line 291
    .line 292
    aput-object v0, v3, v1

    .line 293
    .line 294
    const-string v0, "Greek (Windows 1253) windows-1253"

    .line 295
    .line 296
    const/16 v1, 0x17

    .line 297
    .line 298
    aput-object v0, v3, v1

    .line 299
    .line 300
    const-string v0, "Greek (ISO 8859-7) iso-8859-7"

    .line 301
    .line 302
    const/16 v1, 0x18

    .line 303
    .line 304
    aput-object v0, v3, v1

    .line 305
    .line 306
    const-string v0, "Hebrew (Windows 1255) windows-1255"

    .line 307
    .line 308
    const/16 v1, 0x19

    .line 309
    .line 310
    aput-object v0, v3, v1

    .line 311
    .line 312
    const-string v0, "Hebrew (ISO 8859-8) iso-8859-8"

    .line 313
    .line 314
    const/16 v1, 0x1a

    .line 315
    .line 316
    aput-object v0, v3, v1

    .line 317
    .line 318
    const-string v0, "Nordic (ISO 8859-10) iso-8859-10"

    .line 319
    .line 320
    const/16 v1, 0x1b

    .line 321
    .line 322
    aput-object v0, v3, v1

    .line 323
    .line 324
    const-string v0, "Romanian (ISO 8859-16) iso-8859-16"

    .line 325
    .line 326
    const/16 v1, 0x1c

    .line 327
    .line 328
    aput-object v0, v3, v1

    .line 329
    .line 330
    const-string v0, "Turkish (Windows 1254) windows-1254"

    .line 331
    .line 332
    const/16 v1, 0x1d

    .line 333
    .line 334
    aput-object v0, v3, v1

    .line 335
    .line 336
    const-string v0, "Turkish (ISO 8859-9) iso-8859-9"

    .line 337
    .line 338
    const/16 v1, 0x1e

    .line 339
    .line 340
    aput-object v0, v3, v1

    .line 341
    .line 342
    const-string v0, "Vietnamese (Windows 1258) windows-1258"

    .line 343
    .line 344
    const/16 v1, 0x1f

    .line 345
    .line 346
    aput-object v0, v3, v1

    .line 347
    .line 348
    const-string v0, "Simplified Chinese (GBK) gbk"

    .line 349
    .line 350
    const/16 v1, 0x20

    .line 351
    .line 352
    aput-object v0, v3, v1

    .line 353
    .line 354
    const-string v0, "Simplified Chinese (GB18030) gb18030"

    .line 355
    .line 356
    const/16 v1, 0x21

    .line 357
    .line 358
    aput-object v0, v3, v1

    .line 359
    .line 360
    const-string v0, "Traditional Chinese (Big5) c950"

    .line 361
    .line 362
    const/16 v1, 0x22

    .line 363
    .line 364
    aput-object v0, v3, v1

    .line 365
    .line 366
    const-string v0, "Traditional Chinese (Big5-HKSCS) big5-hkscs"

    .line 367
    .line 368
    const/16 v1, 0x23

    .line 369
    .line 370
    aput-object v0, v3, v1

    .line 371
    .line 372
    const-string v0, "Japanese (Shift JIS) Shift_JIS"

    .line 373
    .line 374
    const/16 v1, 0x24

    .line 375
    .line 376
    aput-object v0, v3, v1

    .line 377
    .line 378
    const-string v0, "Japanese (EUC-JP) EUC_JP_LINUX"

    .line 379
    .line 380
    const/16 v1, 0x25

    .line 381
    .line 382
    aput-object v0, v3, v1

    .line 383
    .line 384
    const-string v0, "Korean (EUC-KR) euc-kr"

    .line 385
    .line 386
    const/16 v1, 0x26

    .line 387
    .line 388
    aput-object v0, v3, v1

    .line 389
    .line 390
    const-string v0, "Thai (Windows 874) windows-874"

    .line 391
    .line 392
    const/16 v1, 0x27

    .line 393
    .line 394
    aput-object v0, v3, v1

    .line 395
    .line 396
    const-string v0, "Latin/Thai (ISO 8859-11) iso-8859-11"

    .line 397
    .line 398
    const/16 v1, 0x28

    .line 399
    .line 400
    aput-object v0, v3, v1

    .line 401
    .line 402
    const-string v0, "Cyrillic (KOI8-RU) koi8-ru"

    .line 403
    .line 404
    const/16 v1, 0x29

    .line 405
    .line 406
    aput-object v0, v3, v1

    .line 407
    .line 408
    const-string v0, "Tajik (KO18-T) KOI8_R"

    .line 409
    .line 410
    const/16 v1, 0x2a

    .line 411
    .line 412
    aput-object v0, v3, v1

    .line 413
    .line 414
    const-string v0, "Simplified Chinese (GB 2312) EUC_CN"

    .line 415
    .line 416
    const/16 v1, 0x2b

    .line 417
    .line 418
    aput-object v0, v3, v1

    .line 419
    .line 420
    const-string v0, "Nordic DOS (CP 865) Cp865"

    .line 421
    .line 422
    const/16 v1, 0x2c

    .line 423
    .line 424
    aput-object v0, v3, v1

    .line 425
    .line 426
    const-string v0, "Western European DOS (CP 850) cp850"

    .line 427
    .line 428
    const/16 v1, 0x2d

    .line 429
    .line 430
    aput-object v0, v3, v1

    .line 431
    .line 432
    iput-object v3, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->N0:[Ljava/lang/CharSequence;

    .line 433
    .line 434
    return-void
.end method

.method public static synthetic e(Lflix/com/vision/activities/player/SimpleVideoPlayer;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p0}, Lflix/com/vision/activities/player/SimpleVideoPlayer;->h()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->Y:Ljava/lang/String;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v0, v0, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 16
    .line 17
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-object v1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->Y:Ljava/lang/String;

    .line 22
    .line 23
    iget-object v2, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 24
    .line 25
    invoke-virtual {v2}, Lflix/com/vision/bvp/BetterVideoPlayer;->getCurrentPosition()J

    .line 26
    .line 27
    .line 28
    move-result-wide v2

    .line 29
    long-to-int v2, v2

    .line 30
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 35
    .line 36
    .line 37
    :cond_0
    iget-object v0, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 38
    .line 39
    invoke-virtual {v0}, Lflix/com/vision/bvp/BetterVideoPlayer;->stop()V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 43
    .line 44
    invoke-virtual {v0}, Lflix/com/vision/bvp/BetterVideoPlayer;->release()V

    .line 45
    .line 46
    .line 47
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .line 52
    .line 53
    :catch_0
    return-void
.end method

.method public static f(Lflix/com/vision/activities/player/SimpleVideoPlayer;)V
    .locals 5

    .line 1
    const-string v0, "Audio Tracks Found: "

    .line 2
    .line 3
    :try_start_0
    iget-object v1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 4
    .line 5
    if-eqz v1, :cond_3

    .line 6
    .line 7
    invoke-virtual {v1}, Lflix/com/vision/bvp/BetterVideoPlayer;->getToolbar()Landroidx/appcompat/widget/Toolbar;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    iget-object v1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 15
    .line 16
    invoke-virtual {v1}, Lflix/com/vision/bvp/BetterVideoPlayer;->getToolbar()Landroidx/appcompat/widget/Toolbar;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v1}, Landroidx/appcompat/widget/Toolbar;->getMenu()Landroid/view/Menu;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    sget v2, Lflix/com/vision/R$id;->audio_track_button:I

    .line 25
    .line 26
    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    if-eqz v1, :cond_3

    .line 31
    .line 32
    invoke-interface {v1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    if-eqz v2, :cond_1

    .line 37
    .line 38
    invoke-static {v2}, LE/c;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    sget v3, Lflix/com/vision/R$color;->accent:I

    .line 47
    .line 48
    invoke-static {p0, v3}, LA/h;->getColor(Landroid/content/Context;I)I

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    invoke-static {v2, v3}, LE/c;->setTint(Landroid/graphics/drawable/Drawable;I)V

    .line 53
    .line 54
    .line 55
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 56
    .line 57
    .line 58
    :cond_1
    iget-object p0, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 59
    .line 60
    invoke-virtual {p0}, Lflix/com/vision/bvp/BetterVideoPlayer;->getAvailableAudioTracks()Ljava/util/ArrayList;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    const/4 v3, 0x0

    .line 69
    const/4 v4, 0x1

    .line 70
    if-le v2, v4, :cond_2

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_2
    move v4, v3

    .line 74
    :goto_0
    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 75
    .line 76
    .line 77
    if-eqz v4, :cond_3

    .line 78
    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 85
    .line 86
    .line 87
    move-result p0

    .line 88
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    const-string p0, ". Showing button."

    .line 92
    .line 93
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    new-array v0, v3, [Ljava/lang/Object;

    .line 101
    .line 102
    invoke-static {p0, v0}, Lflix/com/vision/bvp/BetterVideoPlayer;->LOG(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    .line 104
    .line 105
    return-void

    .line 106
    :catch_0
    move-exception p0

    .line 107
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 108
    .line 109
    .line 110
    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public final A()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-static {p0, v1}, LQ4/d;->newInstance(Landroid/app/Activity;Z)LQ4/d;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const-string v2, "Exit"

    .line 11
    .line 12
    invoke-virtual {v1, v2}, LQ4/d;->setTitle(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v2, "Do you really want to stop playback and exit ?"

    .line 16
    .line 17
    invoke-virtual {v1, v2}, LQ4/d;->setMessage(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    new-instance v2, LA4/q;

    .line 21
    .line 22
    const/4 v3, 0x2

    .line 23
    invoke-direct {v2, v3}, LA4/q;-><init>(I)V

    .line 24
    .line 25
    .line 26
    const-string v3, "CANCEL"

    .line 27
    .line 28
    invoke-virtual {v1, v3, v2}, LQ4/d;->setButton1(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 29
    .line 30
    .line 31
    new-instance v2, LB4/q;

    .line 32
    .line 33
    const/4 v3, 0x0

    .line 34
    invoke-direct {v2, p0, v3}, LB4/q;-><init>(Lflix/com/vision/activities/player/SimpleVideoPlayer;I)V

    .line 35
    .line 36
    .line 37
    const-string v3, "EXIT"

    .line 38
    .line 39
    invoke-virtual {v1, v3, v2}, LQ4/d;->setButton2(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 40
    .line 41
    .line 42
    sget-boolean v2, Lflix/com/vision/App;->I:Z

    .line 43
    .line 44
    if-nez v2, :cond_0

    .line 45
    .line 46
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 47
    .line 48
    const/16 v3, 0x1a

    .line 49
    .line 50
    if-lt v2, v3, :cond_0

    .line 51
    .line 52
    new-instance v2, LB4/q;

    .line 53
    .line 54
    const/4 v3, 0x1

    .line 55
    invoke-direct {v2, p0, v3}, LB4/q;-><init>(Lflix/com/vision/activities/player/SimpleVideoPlayer;I)V

    .line 56
    .line 57
    .line 58
    const-string v3, "MINIMIZE"

    .line 59
    .line 60
    invoke-virtual {v1, v3, v2}, LQ4/d;->setButton3(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 61
    .line 62
    .line 63
    :cond_0
    :try_start_0
    const-string v2, ""

    .line 64
    .line 65
    invoke-virtual {v1, v0, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :catch_0
    move-exception v0

    .line 70
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method public final B()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->E0:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-static {p0, v1}, LQ4/d;->newInstance(Landroid/app/Activity;Z)LQ4/d;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const-string v2, "Subtitle Not Found via API"

    .line 14
    .line 15
    invoke-virtual {v1, v2}, LQ4/d;->setTitle(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const-string v2, "Would you like to Download directly from OpenSubtitles Website ?"

    .line 19
    .line 20
    invoke-virtual {v1, v2}, LQ4/d;->setMessage(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    new-instance v2, LA4/q;

    .line 24
    .line 25
    const/4 v3, 0x2

    .line 26
    invoke-direct {v2, v3}, LA4/q;-><init>(I)V

    .line 27
    .line 28
    .line 29
    const-string v3, "CANCEL"

    .line 30
    .line 31
    invoke-virtual {v1, v3, v2}, LQ4/d;->setButton2(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 32
    .line 33
    .line 34
    new-instance v2, LB4/q;

    .line 35
    .line 36
    const/4 v3, 0x6

    .line 37
    invoke-direct {v2, p0, v3}, LB4/q;-><init>(Lflix/com/vision/activities/player/SimpleVideoPlayer;I)V

    .line 38
    .line 39
    .line 40
    const-string v3, "YES, DOWNLOAD"

    .line 41
    .line 42
    invoke-virtual {v1, v3, v2}, LQ4/d;->setButton1(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 43
    .line 44
    .line 45
    :try_start_0
    const-string v2, ""

    .line 46
    .line 47
    invoke-virtual {v1, v0, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :catch_0
    move-exception v0

    .line 52
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public final C()V
    .locals 6

    .line 1
    iget-object v0, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->I:Lflix/com/vision/models/Movie;

    .line 2
    .line 3
    invoke-virtual {v0}, Lflix/com/vision/models/Movie;->isAnime()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_4

    .line 8
    .line 9
    iget-object v0, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->I:Lflix/com/vision/models/Movie;

    .line 10
    .line 11
    iget-boolean v0, v0, Lflix/com/vision/models/Movie;->drama:Z

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    goto/16 :goto_2

    .line 16
    .line 17
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const/4 v1, 0x1

    .line 22
    invoke-static {p0, v1}, LQ4/d;->newInstance(Landroid/app/Activity;Z)LQ4/d;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    new-instance v2, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    iget-object v3, v3, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 36
    .line 37
    const-string v4, "sub_lang_name_1"

    .line 38
    .line 39
    const-string v5, "English"

    .line 40
    .line 41
    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v3, " Subtitles"

    .line 49
    .line 50
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-virtual {v1, v2}, LQ4/d;->setTitle(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    const-string v2, "You can Download Subtitles from OpenSubtitles"

    .line 61
    .line 62
    invoke-virtual {v1, v2}, LQ4/d;->setMessage(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    iget-object v2, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 66
    .line 67
    invoke-virtual {v2}, Lflix/com/vision/bvp/BetterVideoPlayer;->isCaptionActive()Z

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    if-eqz v2, :cond_1

    .line 72
    .line 73
    const-string v2, "Disable, Change Subtitles or Adjust Offset"

    .line 74
    .line 75
    invoke-virtual {v1, v2}, LQ4/d;->setMessage(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    new-instance v2, LB4/q;

    .line 79
    .line 80
    const/16 v3, 0xc

    .line 81
    .line 82
    invoke-direct {v2, p0, v3}, LB4/q;-><init>(Lflix/com/vision/activities/player/SimpleVideoPlayer;I)V

    .line 83
    .line 84
    .line 85
    const-string v3, "DISABLE"

    .line 86
    .line 87
    invoke-virtual {v1, v3, v2}, LQ4/d;->setButton1(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_1
    invoke-virtual {p0}, Lflix/com/vision/activities/player/SimpleVideoPlayer;->n()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    if-eqz v2, :cond_2

    .line 96
    .line 97
    new-instance v3, Ljava/io/File;

    .line 98
    .line 99
    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 103
    .line 104
    .line 105
    move-result v3

    .line 106
    if-eqz v3, :cond_2

    .line 107
    .line 108
    new-instance v3, LA4/m;

    .line 109
    .line 110
    const/4 v4, 0x1

    .line 111
    invoke-direct {v3, v4, p0, v2}, LA4/m;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    const-string v2, "ENABLE"

    .line 115
    .line 116
    invoke-virtual {v1, v2, v3}, LQ4/d;->setButton1(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 117
    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_2
    new-instance v2, LA4/q;

    .line 121
    .line 122
    const/4 v3, 0x2

    .line 123
    invoke-direct {v2, v3}, LA4/q;-><init>(I)V

    .line 124
    .line 125
    .line 126
    const-string v3, "CANCEL"

    .line 127
    .line 128
    invoke-virtual {v1, v3, v2}, LQ4/d;->setButton1(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 129
    .line 130
    .line 131
    :goto_0
    iget-object v2, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->B0:Ljava/util/ArrayList;

    .line 132
    .line 133
    if-eqz v2, :cond_3

    .line 134
    .line 135
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 136
    .line 137
    .line 138
    move-result v2

    .line 139
    if-nez v2, :cond_3

    .line 140
    .line 141
    const-string v2, "SUBTITLES"

    .line 142
    .line 143
    goto :goto_1

    .line 144
    :cond_3
    const-string v2, "DOWNLOAD"

    .line 145
    .line 146
    :goto_1
    new-instance v3, LB4/q;

    .line 147
    .line 148
    const/16 v4, 0xd

    .line 149
    .line 150
    invoke-direct {v3, p0, v4}, LB4/q;-><init>(Lflix/com/vision/activities/player/SimpleVideoPlayer;I)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v1, v2, v3}, LQ4/d;->setButton2(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 154
    .line 155
    .line 156
    new-instance v2, LB4/q;

    .line 157
    .line 158
    const/16 v3, 0xe

    .line 159
    .line 160
    invoke-direct {v2, p0, v3}, LB4/q;-><init>(Lflix/com/vision/activities/player/SimpleVideoPlayer;I)V

    .line 161
    .line 162
    .line 163
    const-string v3, "IMPORT"

    .line 164
    .line 165
    invoke-virtual {v1, v3, v2}, LQ4/d;->setButton3(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 166
    .line 167
    .line 168
    :try_start_0
    const-string v2, ""

    .line 169
    .line 170
    invoke-virtual {v1, v0, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    .line 172
    .line 173
    return-void

    .line 174
    :catch_0
    move-exception v0

    .line 175
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 176
    .line 177
    .line 178
    :cond_4
    :goto_2
    return-void
.end method

.method public final D(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->H0:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lflix/com/vision/activities/player/SimpleVideoPlayer;->F()V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const/4 v0, 0x0

    .line 16
    invoke-static {p0, v0}, LQ4/d;->newInstance(Landroid/app/Activity;Z)LQ4/d;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->w0:LQ4/d;

    .line 21
    .line 22
    invoke-virtual {v0}, LQ4/d;->setloading()V

    .line 23
    .line 24
    .line 25
    :try_start_0
    iget-object v0, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->w0:LQ4/d;

    .line 26
    .line 27
    const-string v1, ""

    .line 28
    .line 29
    invoke-virtual {v0, p1, v1}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :catch_0
    move-exception p1

    .line 34
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public final E()V
    .locals 5

    .line 1
    iget-object v0, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->B0:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const-string v0, "No Subtitle Found"

    .line 11
    .line 12
    invoke-static {p0, v0, v1}, Lh5/i;->makeToast(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .line 20
    .line 21
    move v2, v1

    .line 22
    :goto_0
    iget-object v3, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->B0:Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-ge v2, v3, :cond_2

    .line 29
    .line 30
    iget-object v3, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->B0:Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    check-cast v3, Lflix/com/vision/subtitles/OpenSubtitles$Subtitle;

    .line 37
    .line 38
    iget-object v3, v3, Lflix/com/vision/subtitles/OpenSubtitles$Subtitle;->subFileName:Ljava/lang/String;

    .line 39
    .line 40
    if-eqz v3, :cond_1

    .line 41
    .line 42
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 43
    .line 44
    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    goto :goto_1

    .line 49
    :catch_0
    move-exception v0

    .line 50
    goto :goto_2

    .line 51
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .line 55
    .line 56
    const-string v4, "SUBTITLE "

    .line 57
    .line 58
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    add-int/lit8 v4, v2, 0x1

    .line 62
    .line 63
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    :goto_1
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    add-int/lit8 v2, v2, 0x1

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_2
    new-array v1, v1, [Ljava/lang/CharSequence;

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    check-cast v0, [Ljava/lang/CharSequence;

    .line 83
    .line 84
    new-instance v1, Le/r;

    .line 85
    .line 86
    new-instance v2, Landroid/view/ContextThemeWrapper;

    .line 87
    .line 88
    sget v3, Lflix/com/vision/R$style;->AlertDialogNoHeader:I

    .line 89
    .line 90
    invoke-direct {v2, p0, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 91
    .line 92
    .line 93
    invoke-direct {v1, v2}, Le/r;-><init>(Landroid/content/Context;)V

    .line 94
    .line 95
    .line 96
    iget v2, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->C0:I

    .line 97
    .line 98
    new-instance v3, LB4/t;

    .line 99
    .line 100
    const/4 v4, 0x0

    .line 101
    invoke-direct {v3, p0, v4}, LB4/t;-><init>(Lflix/com/vision/activities/player/SimpleVideoPlayer;I)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v1, v0, v2, v3}, Le/r;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Le/r;

    .line 105
    .line 106
    .line 107
    new-instance v0, LB4/c;

    .line 108
    .line 109
    const/4 v2, 0x1

    .line 110
    invoke-direct {v0, v2}, LB4/c;-><init>(I)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v1, v0}, Le/r;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Le/r;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v1}, Le/r;->show()Le/s;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    .line 118
    .line 119
    return-void

    .line 120
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 121
    .line 122
    .line 123
    return-void
.end method

.method public final F()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->f:Landroid/widget/ImageView;

    .line 2
    .line 3
    const/high16 v1, 0x3f800000    # 1.0f

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->u:Landroid/widget/RelativeLayout;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->f:Landroid/widget/ImageView;

    .line 15
    .line 16
    iget-object v1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->r0:Landroid/view/animation/Animation;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    .line 21
    :catch_0
    return-void
.end method

.method public final G(Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-static {p0, v1}, LQ4/d;->newInstance(Landroid/app/Activity;Z)LQ4/d;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const-string v2, "An Error Occurred. Try external player if it persists"

    .line 11
    .line 12
    invoke-virtual {v1, v2}, LQ4/d;->setTitle(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    new-instance v2, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v3, "Message: "

    .line 18
    .line 19
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {v1, p1}, LQ4/d;->setMessage(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    new-instance p1, LB4/q;

    .line 33
    .line 34
    const/4 v2, 0x2

    .line 35
    invoke-direct {p1, p0, v2}, LB4/q;-><init>(Lflix/com/vision/activities/player/SimpleVideoPlayer;I)V

    .line 36
    .line 37
    .line 38
    const-string v2, "GOT IT"

    .line 39
    .line 40
    invoke-virtual {v1, v2, p1}, LQ4/d;->setButton1(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 41
    .line 42
    .line 43
    new-instance p1, LB4/q;

    .line 44
    .line 45
    const/4 v2, 0x3

    .line 46
    invoke-direct {p1, p0, v2}, LB4/q;-><init>(Lflix/com/vision/activities/player/SimpleVideoPlayer;I)V

    .line 47
    .line 48
    .line 49
    const-string v2, "OPEN SETTINGS"

    .line 50
    .line 51
    invoke-virtual {v1, v2, p1}, LQ4/d;->setButton2(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 52
    .line 53
    .line 54
    :try_start_0
    const-string p1, ""

    .line 55
    .line 56
    invoke-virtual {v1, v0, p1}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :catch_0
    move-exception p1

    .line 61
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method public final H()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 2
    .line 3
    if-eqz v0, :cond_5

    .line 4
    .line 5
    invoke-virtual {v0}, Lflix/com/vision/bvp/BetterVideoPlayer;->getToolbar()Landroidx/appcompat/widget/Toolbar;

    .line 6
    .line 7
    .line 8
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto/16 :goto_2

    .line 12
    .line 13
    :cond_0
    :try_start_1
    iget-object v0, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 14
    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    invoke-virtual {v0}, Lflix/com/vision/bvp/BetterVideoPlayer;->getToolbar()Landroidx/appcompat/widget/Toolbar;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    iget-object v0, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 25
    .line 26
    invoke-virtual {v0}, Lflix/com/vision/bvp/BetterVideoPlayer;->getToolbar()Landroidx/appcompat/widget/Toolbar;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getMenu()Landroid/view/Menu;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    sget v1, Lflix/com/vision/R$id;->subtitle_gear_button:I

    .line 35
    .line 36
    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    iget-object v1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 43
    .line 44
    invoke-virtual {v1}, Lflix/com/vision/bvp/BetterVideoPlayer;->isCaptionActive()Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catch_0
    move-exception v0

    .line 53
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 54
    .line 55
    .line 56
    :cond_2
    :goto_0
    iget-object v0, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 57
    .line 58
    invoke-virtual {v0}, Lflix/com/vision/bvp/BetterVideoPlayer;->getToolbar()Landroidx/appcompat/widget/Toolbar;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getMenu()Landroid/view/Menu;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    sget v1, Lflix/com/vision/R$id;->subtitle_button:I

    .line 67
    .line 68
    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    if-nez v0, :cond_3

    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_3
    iget-object v1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 76
    .line 77
    invoke-virtual {v1}, Lflix/com/vision/bvp/BetterVideoPlayer;->isCaptionActive()Z

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    if-nez v1, :cond_4

    .line 82
    .line 83
    sget v1, Lflix/com/vision/R$drawable;->subtitles_24px:I

    .line 84
    .line 85
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 86
    .line 87
    .line 88
    goto :goto_2

    .line 89
    :catch_1
    move-exception v0

    .line 90
    goto :goto_1

    .line 91
    :cond_4
    sget v1, Lflix/com/vision/R$drawable;->subtitles_24px:I

    .line 92
    .line 93
    invoke-static {p0, v1}, LA/h;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    if-eqz v1, :cond_5

    .line 98
    .line 99
    invoke-static {v1}, LE/c;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    sget v2, Lflix/com/vision/R$color;->selector_active_icon_tint:I

    .line 108
    .line 109
    invoke-static {p0, v2}, LA/h;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    invoke-static {v1, v2}, LE/c;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 114
    .line 115
    .line 116
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 117
    .line 118
    .line 119
    goto :goto_2

    .line 120
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 121
    .line 122
    .line 123
    :cond_5
    :goto_2
    return-void
.end method

.method public final I()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 2
    .line 3
    if-eqz v0, :cond_6

    .line 4
    .line 5
    invoke-virtual {v0}, Lflix/com/vision/bvp/BetterVideoPlayer;->getToolbar()Landroidx/appcompat/widget/Toolbar;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 13
    .line 14
    invoke-virtual {v0}, Lflix/com/vision/bvp/BetterVideoPlayer;->getToolbar()Landroidx/appcompat/widget/Toolbar;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getMenu()Landroid/view/Menu;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    sget v1, Lflix/com/vision/R$id;->hd_button:I

    .line 23
    .line 24
    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    if-eqz v0, :cond_6

    .line 29
    .line 30
    iget-object v1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->o0:Ljava/lang/String;

    .line 31
    .line 32
    if-nez v1, :cond_1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const-string v2, "4K"

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_2

    .line 42
    .line 43
    sget v1, Lflix/com/vision/R$drawable;->for_4k_24px:I

    .line 44
    .line 45
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_2
    iget-object v1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->o0:Ljava/lang/String;

    .line 50
    .line 51
    const-string v2, "1080"

    .line 52
    .line 53
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-eqz v1, :cond_3

    .line 58
    .line 59
    sget v1, Lflix/com/vision/R$drawable;->full_hd_40px:I

    .line 60
    .line 61
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :cond_3
    iget-object v1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->o0:Ljava/lang/String;

    .line 66
    .line 67
    const-string v2, "720"

    .line 68
    .line 69
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    if-eqz v1, :cond_4

    .line 74
    .line 75
    sget v1, Lflix/com/vision/R$drawable;->hd_40px:I

    .line 76
    .line 77
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :cond_4
    iget-object v1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->o0:Ljava/lang/String;

    .line 82
    .line 83
    const-string v2, "480"

    .line 84
    .line 85
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    if-nez v1, :cond_5

    .line 90
    .line 91
    iget-object v1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->o0:Ljava/lang/String;

    .line 92
    .line 93
    const-string v2, "250"

    .line 94
    .line 95
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    if-nez v1, :cond_5

    .line 100
    .line 101
    iget-object v1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->o0:Ljava/lang/String;

    .line 102
    .line 103
    const-string v2, "360"

    .line 104
    .line 105
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    if-eqz v1, :cond_6

    .line 110
    .line 111
    :cond_5
    sget v1, Lflix/com/vision/R$drawable;->sd_40px:I

    .line 112
    .line 113
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    .line 115
    .line 116
    :catch_0
    :cond_6
    :goto_0
    return-void
.end method

.method public final J(I)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-ne p1, v1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Le/v;->getResources()Landroid/content/res/Resources;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    sget v1, Lflix/com/vision/R$dimen;->sub_size_normal:I

    .line 11
    .line 12
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    goto :goto_0

    .line 17
    :catch_0
    move-exception p1

    .line 18
    goto :goto_1

    .line 19
    :cond_0
    const/4 v1, 0x1

    .line 20
    if-ne p1, v1, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0}, Le/v;->getResources()Landroid/content/res/Resources;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    sget v1, Lflix/com/vision/R$dimen;->sub_size_small:I

    .line 27
    .line 28
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const/4 v1, 0x3

    .line 34
    if-ne p1, v1, :cond_2

    .line 35
    .line 36
    invoke-virtual {p0}, Le/v;->getResources()Landroid/content/res/Resources;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    sget v1, Lflix/com/vision/R$dimen;->sub_size_big:I

    .line 41
    .line 42
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    goto :goto_0

    .line 47
    :cond_2
    const/4 v1, 0x4

    .line 48
    if-ne p1, v1, :cond_3

    .line 49
    .line 50
    invoke-virtual {p0}, Le/v;->getResources()Landroid/content/res/Resources;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    sget v1, Lflix/com/vision/R$dimen;->sub_size_big_big:I

    .line 55
    .line 56
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    goto :goto_0

    .line 61
    :cond_3
    const/4 v1, 0x5

    .line 62
    if-ne p1, v1, :cond_4

    .line 63
    .line 64
    invoke-virtual {p0}, Le/v;->getResources()Landroid/content/res/Resources;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    sget v1, Lflix/com/vision/R$dimen;->sub_size_big_big_big:I

    .line 69
    .line 70
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    goto :goto_0

    .line 75
    :cond_4
    const/4 v1, 0x6

    .line 76
    if-ne p1, v1, :cond_5

    .line 77
    .line 78
    invoke-virtual {p0}, Le/v;->getResources()Landroid/content/res/Resources;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    sget v1, Lflix/com/vision/R$dimen;->sub_size_big_big_big_big:I

    .line 83
    .line 84
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    goto :goto_0

    .line 89
    :cond_5
    const/4 v1, 0x7

    .line 90
    if-ne p1, v1, :cond_6

    .line 91
    .line 92
    invoke-virtual {p0}, Le/v;->getResources()Landroid/content/res/Resources;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    sget v1, Lflix/com/vision/R$dimen;->sub_size_big_big_big_big_big:I

    .line 97
    .line 98
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 99
    .line 100
    .line 101
    move-result p1

    .line 102
    goto :goto_0

    .line 103
    :cond_6
    invoke-virtual {p0}, Le/v;->getResources()Landroid/content/res/Resources;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    sget v1, Lflix/com/vision/R$dimen;->sub_size_normal:I

    .line 108
    .line 109
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 110
    .line 111
    .line 112
    move-result p1

    .line 113
    :goto_0
    invoke-virtual {v0, p1}, Lflix/com/vision/bvp/BetterVideoPlayer;->setSubSize(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    .line 115
    .line 116
    return-void

    .line 117
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 118
    .line 119
    .line 120
    return-void
.end method

.method public OnError()V
    .locals 0

    return-void
.end method

.method public OnM3USuccess(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lflix/com/vision/models/VideoSource;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->r:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 4
    .line 5
    .line 6
    sget-object v0, Lflix/com/vision/App;->B:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public OnSuccess(Lflix/com/vision/models/VideoSource;)V
    .locals 2

    .line 3
    iget-boolean v0, p1, Lflix/com/vision/models/VideoSource;->streamable:Z

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    new-instance v0, LA4/n;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0, p1}, LA4/n;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public OnSuccess(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lflix/com/vision/models/VideoSource;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->r:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2
    sget-object v0, Lflix/com/vision/App;->B:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public final g(Ljava/lang/String;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->x0:Lcom/google/android/gms/cast/framework/CastSession;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/CastSession;->getRemoteMediaClient()Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    :goto_0
    return-void

    .line 13
    :cond_1
    new-instance v1, LB4/I;

    .line 14
    .line 15
    invoke-direct {v1, p0, v0}, LB4/I;-><init>(Lflix/com/vision/activities/player/SimpleVideoPlayer;Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->registerCallback(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$Callback;)V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->I:Lflix/com/vision/models/Movie;

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    if-eqz v1, :cond_2

    .line 25
    .line 26
    invoke-virtual {v1}, Lflix/com/vision/models/Movie;->getImage_url()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    goto :goto_1

    .line 31
    :cond_2
    move-object v1, v2

    .line 32
    :goto_1
    new-instance v3, Lcom/google/android/gms/cast/MediaMetadata;

    .line 33
    .line 34
    const/4 v4, 0x1

    .line 35
    invoke-direct {v3, v4}, Lcom/google/android/gms/cast/MediaMetadata;-><init>(I)V

    .line 36
    .line 37
    .line 38
    iget-object v5, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->D:Landroid/widget/TextView;

    .line 39
    .line 40
    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    const-string v6, "com.google.android.gms.cast.metadata.TITLE"

    .line 49
    .line 50
    invoke-virtual {v3, v6, v5}, Lcom/google/android/gms/cast/MediaMetadata;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iget-object v5, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->F:Landroid/widget/TextView;

    .line 54
    .line 55
    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    const-string v6, "com.google.android.gms.cast.metadata.SUBTITLE"

    .line 64
    .line 65
    invoke-virtual {v3, v6, v5}, Lcom/google/android/gms/cast/MediaMetadata;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    const-string v5, "hls"

    .line 69
    .line 70
    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 71
    .line 72
    .line 73
    move-result v5

    .line 74
    if-nez v5, :cond_3

    .line 75
    .line 76
    const-string v5, "video/*"

    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_3
    const-string v5, "application/vnd.apple.mpegurl"

    .line 80
    .line 81
    :goto_2
    iget-object v6, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->e0:Ljava/lang/String;

    .line 82
    .line 83
    if-eqz v6, :cond_4

    .line 84
    .line 85
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 86
    .line 87
    .line 88
    move-result v6

    .line 89
    const/4 v7, 0x5

    .line 90
    if-le v6, v7, :cond_4

    .line 91
    .line 92
    iget-object v5, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->e0:Ljava/lang/String;

    .line 93
    .line 94
    :cond_4
    if-eqz v1, :cond_5

    .line 95
    .line 96
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 97
    .line 98
    .line 99
    move-result v6

    .line 100
    if-le v6, v4, :cond_5

    .line 101
    .line 102
    new-instance v6, Lcom/google/android/gms/common/images/WebImage;

    .line 103
    .line 104
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    invoke-direct {v6, v1}, Lcom/google/android/gms/common/images/WebImage;-><init>(Landroid/net/Uri;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v3, v6}, Lcom/google/android/gms/cast/MediaMetadata;->addImage(Lcom/google/android/gms/common/images/WebImage;)V

    .line 112
    .line 113
    .line 114
    :cond_5
    new-instance v1, Lcom/google/android/gms/cast/MediaInfo$Builder;

    .line 115
    .line 116
    invoke-direct {v1, p1}, Lcom/google/android/gms/cast/MediaInfo$Builder;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v1, v4}, Lcom/google/android/gms/cast/MediaInfo$Builder;->setStreamType(I)Lcom/google/android/gms/cast/MediaInfo$Builder;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    invoke-virtual {p1, v5}, Lcom/google/android/gms/cast/MediaInfo$Builder;->setContentType(Ljava/lang/String;)Lcom/google/android/gms/cast/MediaInfo$Builder;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    invoke-virtual {p1, v3}, Lcom/google/android/gms/cast/MediaInfo$Builder;->setMetadata(Lcom/google/android/gms/cast/MediaMetadata;)Lcom/google/android/gms/cast/MediaInfo$Builder;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    iget-object v1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 132
    .line 133
    invoke-virtual {v1}, Lflix/com/vision/bvp/BetterVideoPlayer;->getDuration()J

    .line 134
    .line 135
    .line 136
    move-result-wide v3

    .line 137
    const-wide/16 v5, 0x3e8

    .line 138
    .line 139
    mul-long/2addr v3, v5

    .line 140
    invoke-virtual {p1, v3, v4}, Lcom/google/android/gms/cast/MediaInfo$Builder;->setStreamDuration(J)Lcom/google/android/gms/cast/MediaInfo$Builder;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    new-instance v1, Lcom/google/android/gms/cast/MediaLoadRequestData$Builder;

    .line 145
    .line 146
    invoke-direct {v1}, Lcom/google/android/gms/cast/MediaLoadRequestData$Builder;-><init>()V

    .line 147
    .line 148
    .line 149
    invoke-virtual {p1}, Lcom/google/android/gms/cast/MediaInfo$Builder;->build()Lcom/google/android/gms/cast/MediaInfo;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    invoke-virtual {v1, p1}, Lcom/google/android/gms/cast/MediaLoadRequestData$Builder;->setMediaInfo(Lcom/google/android/gms/cast/MediaInfo;)Lcom/google/android/gms/cast/MediaLoadRequestData$Builder;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    invoke-virtual {p1, v2}, Lcom/google/android/gms/cast/MediaLoadRequestData$Builder;->setActiveTrackIds([J)Lcom/google/android/gms/cast/MediaLoadRequestData$Builder;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    iget-object v1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 162
    .line 163
    if-eqz v1, :cond_6

    .line 164
    .line 165
    invoke-virtual {v1}, Lflix/com/vision/bvp/BetterVideoPlayer;->isPrepared()Z

    .line 166
    .line 167
    .line 168
    move-result v1

    .line 169
    if-eqz v1, :cond_6

    .line 170
    .line 171
    iget-object v1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 172
    .line 173
    invoke-virtual {v1}, Lflix/com/vision/bvp/BetterVideoPlayer;->getCurrentPosition()J

    .line 174
    .line 175
    .line 176
    move-result-wide v1

    .line 177
    goto :goto_3

    .line 178
    :cond_6
    const-wide/16 v1, 0x0

    .line 179
    .line 180
    :goto_3
    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/cast/MediaLoadRequestData$Builder;->setCurrentTime(J)Lcom/google/android/gms/cast/MediaLoadRequestData$Builder;

    .line 181
    .line 182
    .line 183
    move-result-object p1

    .line 184
    invoke-virtual {p1}, Lcom/google/android/gms/cast/MediaLoadRequestData$Builder;->build()Lcom/google/android/gms/cast/MediaLoadRequestData;

    .line 185
    .line 186
    .line 187
    move-result-object p1

    .line 188
    invoke-virtual {v0, p1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->load(Lcom/google/android/gms/cast/MediaLoadRequestData;)Lcom/google/android/gms/common/api/PendingResult;

    .line 189
    .line 190
    .line 191
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 192
    .line 193
    .line 194
    return-void
.end method

.method public final h()V
    .locals 6

    .line 1
    iget-object v0, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->I:Lflix/com/vision/models/Movie;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_1

    .line 6
    .line 7
    :cond_0
    iget-object v0, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 8
    .line 9
    invoke-virtual {v0}, Lflix/com/vision/bvp/BetterVideoPlayer;->getCurrentPosition()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    iget-object v2, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 14
    .line 15
    invoke-virtual {v2}, Lflix/com/vision/bvp/BetterVideoPlayer;->getDuration()J

    .line 16
    .line 17
    .line 18
    move-result-wide v2

    .line 19
    const-wide/16 v4, 0x0

    .line 20
    .line 21
    cmp-long v4, v2, v4

    .line 22
    .line 23
    if-lez v4, :cond_3

    .line 24
    .line 25
    const-wide/16 v4, 0x64

    .line 26
    .line 27
    mul-long/2addr v0, v4

    .line 28
    div-long/2addr v0, v2

    .line 29
    const-wide/16 v2, 0x5a

    .line 30
    .line 31
    cmp-long v2, v0, v2

    .line 32
    .line 33
    if-lez v2, :cond_3

    .line 34
    .line 35
    new-instance v2, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    const-string v3, "Watched threshold reached ("

    .line 38
    .line 39
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v0, "%). Syncing..."

    .line 46
    .line 47
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    const-string v1, "Player"

    .line 55
    .line 56
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    iget-object v0, v0, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 64
    .line 65
    const-string v1, "trakt_user_logged_in"

    .line 66
    .line 67
    const/4 v2, 0x0

    .line 68
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-eqz v0, :cond_2

    .line 73
    .line 74
    iget-object v0, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->I:Lflix/com/vision/models/Movie;

    .line 75
    .line 76
    invoke-virtual {v0}, Lflix/com/vision/models/Movie;->isSeries()Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    if-eqz v0, :cond_1

    .line 81
    .line 82
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    iget-object v0, v0, Lflix/com/vision/App;->q:LD4/h;

    .line 87
    .line 88
    iget-object v1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->I:Lflix/com/vision/models/Movie;

    .line 89
    .line 90
    iget v2, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->g0:I

    .line 91
    .line 92
    iget v3, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->h0:I

    .line 93
    .line 94
    invoke-virtual {v0, v1, v2, v3}, LD4/h;->traktAddToWatchedHistoryEpisode(Lflix/com/vision/models/Movie;II)V

    .line 95
    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_1
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    iget-object v0, v0, Lflix/com/vision/App;->q:LD4/h;

    .line 103
    .line 104
    iget-object v1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->I:Lflix/com/vision/models/Movie;

    .line 105
    .line 106
    invoke-virtual {v0, v1}, LD4/h;->addToHistory(Lflix/com/vision/models/Movie;)Lio/reactivex/Completable;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    invoke-virtual {v0, v1}, Lio/reactivex/Completable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    new-instance v1, LB4/r;

    .line 119
    .line 120
    const/4 v2, 0x1

    .line 121
    invoke-direct {v1, v2}, LB4/r;-><init>(I)V

    .line 122
    .line 123
    .line 124
    new-instance v2, LA4/c;

    .line 125
    .line 126
    const/4 v3, 0x4

    .line 127
    invoke-direct {v2, v3}, LA4/c;-><init>(I)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 131
    .line 132
    .line 133
    :cond_2
    :goto_0
    iget-object v0, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->Y:Ljava/lang/String;

    .line 134
    .line 135
    if-eqz v0, :cond_3

    .line 136
    .line 137
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    iget-object v0, v0, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 142
    .line 143
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    iget-object v1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->Y:Ljava/lang/String;

    .line 148
    .line 149
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 154
    .line 155
    .line 156
    :cond_3
    :goto_1
    return-void
.end method

.method public final i()V
    .locals 4

    .line 1
    iget-object v0, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->I:Lflix/com/vision/models/Movie;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Lflix/com/vision/models/Movie;->isAnime()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->I:Lflix/com/vision/models/Movie;

    .line 12
    .line 13
    iget-boolean v0, v0, Lflix/com/vision/models/Movie;->drama:Z

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    :cond_0
    return-void

    .line 18
    :cond_1
    new-instance v0, Landroid/os/Handler;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 21
    .line 22
    .line 23
    new-instance v1, LB4/s;

    .line 24
    .line 25
    const/16 v2, 0x9

    .line 26
    .line 27
    invoke-direct {v1, p0, v2}, LB4/s;-><init>(Lflix/com/vision/activities/player/SimpleVideoPlayer;I)V

    .line 28
    .line 29
    .line 30
    const-wide/16 v2, 0x12c

    .line 31
    .line 32
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final j(Ljava/util/ArrayList;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 2
    .line 3
    invoke-virtual {v0}, Lflix/com/vision/bvp/BetterVideoPlayer;->getCurrentPosition()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    long-to-int v0, v0

    .line 8
    iput v0, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->m0:I

    .line 9
    .line 10
    new-instance v0, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    .line 15
    sget-object v1, Lflix/com/vision/App;->B:Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_0

    .line 22
    .line 23
    sget-object p1, Lflix/com/vision/App;->B:Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 30
    .line 31
    .line 32
    :goto_0
    :try_start_0
    new-instance p1, Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .line 36
    .line 37
    const/4 v1, 0x0

    .line 38
    move v2, v1

    .line 39
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-ge v2, v3, :cond_1

    .line 44
    .line 45
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    check-cast v3, Lflix/com/vision/models/VideoSource;

    .line 50
    .line 51
    iget-object v3, v3, Lflix/com/vision/models/VideoSource;->label:Ljava/lang/String;

    .line 52
    .line 53
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 54
    .line 55
    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    add-int/lit8 v2, v2, 0x1

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_1
    iget-object v2, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 66
    .line 67
    invoke-virtual {v2}, Lflix/com/vision/bvp/BetterVideoPlayer;->getSource()Landroid/net/Uri;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    if-ge v1, v3, :cond_3

    .line 80
    .line 81
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    check-cast v3, Lflix/com/vision/models/VideoSource;

    .line 86
    .line 87
    iget-object v3, v3, Lflix/com/vision/models/VideoSource;->streamUrl:Ljava/lang/String;

    .line 88
    .line 89
    invoke-static {v3, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v3

    .line 93
    if-eqz v3, :cond_2

    .line 94
    .line 95
    iput v1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->n0:I

    .line 96
    .line 97
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 98
    .line 99
    goto :goto_2

    .line 100
    :cond_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    new-array v1, v1, [Ljava/lang/CharSequence;

    .line 105
    .line 106
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    check-cast p1, [Ljava/lang/CharSequence;

    .line 111
    .line 112
    new-instance v1, Le/r;

    .line 113
    .line 114
    new-instance v2, Landroid/view/ContextThemeWrapper;

    .line 115
    .line 116
    sget v3, Lflix/com/vision/R$style;->AlertDialogNoHeader:I

    .line 117
    .line 118
    invoke-direct {v2, p0, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 119
    .line 120
    .line 121
    invoke-direct {v1, v2}, Le/r;-><init>(Landroid/content/Context;)V

    .line 122
    .line 123
    .line 124
    iget v2, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->n0:I

    .line 125
    .line 126
    new-instance v3, LB4/z;

    .line 127
    .line 128
    const/4 v4, 0x0

    .line 129
    invoke-direct {v3, p0, v0, v4}, LB4/z;-><init>(Lflix/com/vision/activities/player/SimpleVideoPlayer;Ljava/util/ArrayList;I)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v1, p1, v2, v3}, Le/r;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Le/r;

    .line 133
    .line 134
    .line 135
    new-instance p1, LB4/c;

    .line 136
    .line 137
    const/4 v0, 0x1

    .line 138
    invoke-direct {p1, v0}, LB4/c;-><init>(I)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v1, p1}, Le/r;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Le/r;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v1}, Le/r;->show()Le/s;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    .line 146
    .line 147
    :catch_0
    return-void
.end method

.method public final k(Z)V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->E0:Z

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lflix/com/vision/activities/player/SimpleVideoPlayer;->D(Z)V

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iget-object p1, p1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 14
    .line 15
    const-string v0, "subtitle_source_index_2"

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    const-string v0, "eng"

    .line 23
    .line 24
    if-nez p1, :cond_1

    .line 25
    .line 26
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iget-object p1, p1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 31
    .line 32
    const-string v1, "sub_lang_code_1"

    .line 33
    .line 34
    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    :cond_1
    iget-object p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->I:Lflix/com/vision/models/Movie;

    .line 39
    .line 40
    invoke-virtual {p1}, Lflix/com/vision/models/Movie;->getImdbID()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    const/4 v1, 0x0

    .line 45
    if-eqz p1, :cond_3

    .line 46
    .line 47
    const-string v2, "tt"

    .line 48
    .line 49
    const-string v3, ""

    .line 50
    .line 51
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    const-string v2, "_"

    .line 60
    .line 61
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    if-nez v2, :cond_2

    .line 66
    .line 67
    const-string v2, "null"

    .line 68
    .line 69
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    if-nez v2, :cond_2

    .line 74
    .line 75
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    if-eqz v2, :cond_3

    .line 80
    .line 81
    :cond_2
    move-object p1, v1

    .line 82
    :cond_3
    if-nez p1, :cond_4

    .line 83
    .line 84
    iget-object v2, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->I:Lflix/com/vision/models/Movie;

    .line 85
    .line 86
    invoke-virtual {v2}, Lflix/com/vision/models/Movie;->getTitle()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    goto :goto_0

    .line 91
    :cond_4
    move-object v2, v1

    .line 92
    :goto_0
    iget-object v3, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->I:Lflix/com/vision/models/Movie;

    .line 93
    .line 94
    invoke-virtual {v3}, Lflix/com/vision/models/Movie;->isSeries()Z

    .line 95
    .line 96
    .line 97
    move-result v3

    .line 98
    if-eqz v3, :cond_5

    .line 99
    .line 100
    iget v3, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->g0:I

    .line 101
    .line 102
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    goto :goto_1

    .line 107
    :cond_5
    move-object v3, v1

    .line 108
    :goto_1
    iget-object v4, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->I:Lflix/com/vision/models/Movie;

    .line 109
    .line 110
    invoke-virtual {v4}, Lflix/com/vision/models/Movie;->isSeries()Z

    .line 111
    .line 112
    .line 113
    move-result v4

    .line 114
    if-eqz v4, :cond_6

    .line 115
    .line 116
    iget v1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->h0:I

    .line 117
    .line 118
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    :cond_6
    invoke-static {p1, v2, v3, v1, v0}, Lflix/com/vision/subtitles/OpenSubtitles;->search(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)Lretrofit2/Call;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    new-instance v0, LB4/J;

    .line 127
    .line 128
    invoke-direct {v0, p0}, LB4/J;-><init>(Lflix/com/vision/activities/player/SimpleVideoPlayer;)V

    .line 129
    .line 130
    .line 131
    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 132
    .line 133
    .line 134
    return-void
.end method

.method public final l()V
    .locals 5

    .line 1
    iget-object v0, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 2
    .line 3
    invoke-virtual {v0}, Lflix/com/vision/bvp/BetterVideoPlayer;->isPrepared()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 10
    .line 11
    invoke-virtual {v0}, Lflix/com/vision/bvp/BetterVideoPlayer;->isPlaying()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 18
    .line 19
    invoke-virtual {v0}, Lflix/com/vision/bvp/BetterVideoPlayer;->pause()V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->K:Landroid/widget/ImageView;

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 29
    .line 30
    invoke-virtual {v0}, Lflix/com/vision/bvp/BetterVideoPlayer;->getToolbar()Landroidx/appcompat/widget/Toolbar;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getMenu()Landroid/view/Menu;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    sget v1, Lflix/com/vision/R$id;->play_pause_button:I

    .line 39
    .line 40
    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    iget-object v1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 47
    .line 48
    invoke-virtual {v1}, Lflix/com/vision/bvp/BetterVideoPlayer;->isPlaying()Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-eqz v1, :cond_0

    .line 53
    .line 54
    sget v1, Lflix/com/vision/R$drawable;->pause_circle_40px:I

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    sget v1, Lflix/com/vision/R$drawable;->play_circle_40px:I

    .line 58
    .line 59
    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 60
    .line 61
    .line 62
    :cond_1
    new-instance v0, Landroid/content/Intent;

    .line 63
    .line 64
    const-class v1, Lflix/com/vision/subtitles/SubtitlesWebViewActivity;

    .line 65
    .line 66
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 67
    .line 68
    .line 69
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    iget-object v1, v1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 74
    .line 75
    const-string v2, "sub_lang_code_1"

    .line 76
    .line 77
    const-string v3, "eng"

    .line 78
    .line 79
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    const-string v2, "https://www.opensubtitles.org/en/search/sublanguageid-"

    .line 84
    .line 85
    const-string v3, "/imdbid-"

    .line 86
    .line 87
    invoke-static {v2, v1, v3}, LA/i;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    iget-object v2, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->I:Lflix/com/vision/models/Movie;

    .line 92
    .line 93
    invoke-virtual {v2}, Lflix/com/vision/models/Movie;->getImdbID()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    const-string v3, "tt"

    .line 98
    .line 99
    const-string v4, ""

    .line 100
    .line 101
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    iget-object v2, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->I:Lflix/com/vision/models/Movie;

    .line 113
    .line 114
    invoke-virtual {v2}, Lflix/com/vision/models/Movie;->isSeries()Z

    .line 115
    .line 116
    .line 117
    move-result v2

    .line 118
    if-eqz v2, :cond_2

    .line 119
    .line 120
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 125
    .line 126
    .line 127
    :cond_2
    const-string v2, "url"

    .line 128
    .line 129
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 130
    .line 131
    .line 132
    iget-object v1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->I:Lflix/com/vision/models/Movie;

    .line 133
    .line 134
    invoke-virtual {v1}, Lflix/com/vision/models/Movie;->getTitle()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    iget-object v2, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->I:Lflix/com/vision/models/Movie;

    .line 139
    .line 140
    invoke-virtual {v2}, Lflix/com/vision/models/Movie;->isSeries()Z

    .line 141
    .line 142
    .line 143
    move-result v2

    .line 144
    if-eqz v2, :cond_3

    .line 145
    .line 146
    const-string v2, " - S"

    .line 147
    .line 148
    invoke-static {v1, v2}, LA/i;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    iget v2, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->g0:I

    .line 153
    .line 154
    invoke-static {v2}, Lh5/n;->formatSeasonnumber(I)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v2

    .line 158
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    const-string v2, "E"

    .line 162
    .line 163
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    iget v2, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->h0:I

    .line 167
    .line 168
    invoke-static {v2}, Lh5/n;->formatSeasonnumber(I)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v2

    .line 172
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    :cond_3
    const-string v2, "title"

    .line 180
    .line 181
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 182
    .line 183
    .line 184
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 185
    .line 186
    .line 187
    return-void
.end method

.method public final m()V
    .locals 5

    .line 1
    iget-object v0, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->I:Lflix/com/vision/models/Movie;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v1, 0x0

    .line 7
    iput-object v1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->P0:Lflix/com/vision/models/IntroDbResponse$Segment;

    .line 8
    .line 9
    invoke-virtual {v0}, Lflix/com/vision/models/Movie;->getImdbID()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget v2, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->g0:I

    .line 14
    .line 15
    iget v3, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->h0:I

    .line 16
    .line 17
    iget-object v4, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->I:Lflix/com/vision/models/Movie;

    .line 18
    .line 19
    invoke-virtual {v4}, Lflix/com/vision/models/Movie;->isSeries()Z

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    xor-int/lit8 v4, v4, 0x1

    .line 24
    .line 25
    if-lez v2, :cond_1

    .line 26
    .line 27
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    move-object v2, v1

    .line 33
    :goto_0
    if-lez v3, :cond_2

    .line 34
    .line 35
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    :cond_2
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-static {v0, v2, v1, v3}, LD4/a;->getIntroSegment(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;)Lio/reactivex/Observable;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    new-instance v1, LB4/v;

    .line 64
    .line 65
    const/4 v2, 0x0

    .line 66
    invoke-direct {v1, p0, v2}, LB4/v;-><init>(Lflix/com/vision/activities/player/SimpleVideoPlayer;I)V

    .line 67
    .line 68
    .line 69
    new-instance v2, LA4/c;

    .line 70
    .line 71
    const/4 v3, 0x7

    .line 72
    invoke-direct {v2, v3}, LA4/c;-><init>(I)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 76
    .line 77
    .line 78
    return-void
.end method

.method public final n()Ljava/lang/String;
    .locals 6

    .line 1
    iget-object v0, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->I:Lflix/com/vision/models/Movie;

    .line 2
    .line 3
    const-string v1, "subtitle"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lflix/com/vision/models/Movie;->isSeries()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v0, v0, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 19
    .line 20
    new-instance v3, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    iget-object v4, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->I:Lflix/com/vision/models/Movie;

    .line 26
    .line 27
    invoke-virtual {v4}, Lflix/com/vision/models/Movie;->getMovieId()J

    .line 28
    .line 29
    .line 30
    move-result-wide v4

    .line 31
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    return-object v0

    .line 46
    :cond_0
    iget-object v0, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->I:Lflix/com/vision/models/Movie;

    .line 47
    .line 48
    if-eqz v0, :cond_1

    .line 49
    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    .line 55
    iget-object v3, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->I:Lflix/com/vision/models/Movie;

    .line 56
    .line 57
    invoke-virtual {v3}, Lflix/com/vision/models/Movie;->getMovieId()J

    .line 58
    .line 59
    .line 60
    move-result-wide v3

    .line 61
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v3, ""

    .line 65
    .line 66
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    iget v4, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->g0:I

    .line 70
    .line 71
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    iget v3, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->h0:I

    .line 78
    .line 79
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    iget-object v3, v3, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 91
    .line 92
    new-instance v4, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-interface {v3, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    return-object v0

    .line 112
    :cond_1
    return-object v2
.end method

.method public final o()F
    .locals 4

    .line 1
    iget-object v0, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Lflix/com/vision/bvp/BetterVideoPlayer;->getDuration()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    const-wide/16 v2, 0x0

    .line 10
    .line 11
    cmp-long v0, v0, v2

    .line 12
    .line 13
    if-gtz v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object v0, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 17
    .line 18
    invoke-virtual {v0}, Lflix/com/vision/bvp/BetterVideoPlayer;->getCurrentPosition()J

    .line 19
    .line 20
    .line 21
    move-result-wide v0

    .line 22
    long-to-double v0, v0

    .line 23
    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    .line 24
    .line 25
    mul-double/2addr v0, v2

    .line 26
    iget-object v2, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 27
    .line 28
    invoke-virtual {v2}, Lflix/com/vision/bvp/BetterVideoPlayer;->getDuration()J

    .line 29
    .line 30
    .line 31
    move-result-wide v2

    .line 32
    long-to-double v2, v2

    .line 33
    div-double/2addr v0, v2

    .line 34
    double-to-float v0, v0

    .line 35
    return v0

    .line 36
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 37
    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 8

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    const/16 v1, 0x3039

    .line 4
    .line 5
    if-ne p1, v1, :cond_4

    .line 6
    .line 7
    const/4 v1, -0x1

    .line 8
    if-ne p2, v1, :cond_4

    .line 9
    .line 10
    const-string v1, "file_extra_data"

    .line 11
    .line 12
    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const/4 v2, 0x1

    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    const-string p1, "File path not found."

    .line 20
    .line 21
    invoke-static {p0, p1, v2}, Lh5/i;->makeToast(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 26
    .line 27
    invoke-virtual {v1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    const-string v5, ".srt"

    .line 32
    .line 33
    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    if-nez v4, :cond_1

    .line 38
    .line 39
    invoke-virtual {v1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    const-string v6, ".vtt"

    .line 44
    .line 45
    invoke-virtual {v4, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    if-nez v4, :cond_1

    .line 50
    .line 51
    sget p1, Lflix/com/vision/R$string;->srt_vtt_only_sub:I

    .line 52
    .line 53
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-static {p0, p1, v2}, Lh5/i;->makeToast(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :cond_1
    :try_start_0
    iget-object v4, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 62
    .line 63
    invoke-virtual {v1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    invoke-virtual {v3, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    if-eqz v3, :cond_2

    .line 72
    .line 73
    sget-object v3, Lflix/com/vision/bvp/subtitle/CaptionsView$CMime;->b:Lflix/com/vision/bvp/subtitle/CaptionsView$CMime;

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :catch_0
    move-exception v0

    .line 77
    goto/16 :goto_2

    .line 78
    .line 79
    :cond_2
    sget-object v3, Lflix/com/vision/bvp/subtitle/CaptionsView$CMime;->e:Lflix/com/vision/bvp/subtitle/CaptionsView$CMime;

    .line 80
    .line 81
    :goto_0
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 82
    .line 83
    .line 84
    move-result-object v5

    .line 85
    iget-object v5, v5, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 86
    .line 87
    const-string v6, "pref_subtitle_encoding_label"

    .line 88
    .line 89
    const-string v7, "utf-8"

    .line 90
    .line 91
    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v5

    .line 95
    invoke-virtual {v4, v1, v3, v5}, Lflix/com/vision/bvp/BetterVideoPlayer;->setCaptionsPath(Ljava/lang/String;Lflix/com/vision/bvp/subtitle/CaptionsView$CMime;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0}, Lflix/com/vision/activities/player/SimpleVideoPlayer;->H()V

    .line 99
    .line 100
    .line 101
    iget-object v3, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->I:Lflix/com/vision/models/Movie;

    .line 102
    .line 103
    invoke-virtual {v3}, Lflix/com/vision/models/Movie;->isSeries()Z

    .line 104
    .line 105
    .line 106
    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    const-string v4, "subtitle"

    .line 108
    .line 109
    if-nez v3, :cond_3

    .line 110
    .line 111
    :try_start_1
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    iget-object v0, v0, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 116
    .line 117
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    new-instance v3, Ljava/lang/StringBuilder;

    .line 122
    .line 123
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 124
    .line 125
    .line 126
    iget-object v5, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->I:Lflix/com/vision/models/Movie;

    .line 127
    .line 128
    invoke-virtual {v5}, Lflix/com/vision/models/Movie;->getMovieId()J

    .line 129
    .line 130
    .line 131
    move-result-wide v5

    .line 132
    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v3

    .line 142
    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 147
    .line 148
    .line 149
    goto :goto_1

    .line 150
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    .line 151
    .line 152
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 153
    .line 154
    .line 155
    iget-object v5, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->I:Lflix/com/vision/models/Movie;

    .line 156
    .line 157
    invoke-virtual {v5}, Lflix/com/vision/models/Movie;->getMovieId()J

    .line 158
    .line 159
    .line 160
    move-result-wide v5

    .line 161
    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    iget v5, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->g0:I

    .line 168
    .line 169
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    iget v0, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->h0:I

    .line 176
    .line 177
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 185
    .line 186
    .line 187
    move-result-object v3

    .line 188
    iget-object v3, v3, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 189
    .line 190
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 191
    .line 192
    .line 193
    move-result-object v3

    .line 194
    new-instance v5, Ljava/lang/StringBuilder;

    .line 195
    .line 196
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 214
    .line 215
    .line 216
    :goto_1
    const-string v0, "Subtitles Loaded"

    .line 217
    .line 218
    const/16 v1, 0x30

    .line 219
    .line 220
    const/4 v3, 0x0

    .line 221
    const/4 v4, 0x0

    .line 222
    invoke-static {p0, v0, v4, v1, v3}, LN4/a;->Success(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 223
    .line 224
    .line 225
    goto :goto_3

    .line 226
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 227
    .line 228
    .line 229
    new-instance v1, Ljava/lang/StringBuilder;

    .line 230
    .line 231
    const-string v3, "Error loading subtitle: "

    .line 232
    .line 233
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v0

    .line 240
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v0

    .line 247
    invoke-static {p0, v0, v2}, Lh5/i;->makeToast(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 248
    .line 249
    .line 250
    :cond_4
    :goto_3
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/H;->onActivityResult(IILandroid/content/Intent;)V

    .line 251
    .line 252
    .line 253
    return-void
.end method

.method public onBackPressed()V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingSuperCall"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->N:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lflix/com/vision/activities/player/SimpleVideoPlayer;->r()V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->t:Landroid/widget/RelativeLayout;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    invoke-virtual {p0}, Lflix/com/vision/activities/player/SimpleVideoPlayer;->t()V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    iget-object v0, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 29
    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    invoke-virtual {v0}, Lflix/com/vision/bvp/BetterVideoPlayer;->isControlsShown()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    iget-object v0, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 39
    .line 40
    invoke-virtual {v0}, Lflix/com/vision/bvp/BetterVideoPlayer;->hideControls()V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_2
    iget-boolean v0, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->H0:Z

    .line 45
    .line 46
    if-eqz v0, :cond_3

    .line 47
    .line 48
    iget-object v0, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->u:Landroid/widget/RelativeLayout;

    .line 49
    .line 50
    if-eqz v0, :cond_3

    .line 51
    .line 52
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-nez v0, :cond_3

    .line 57
    .line 58
    invoke-virtual {p0}, Lflix/com/vision/activities/player/SimpleVideoPlayer;->p()V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :cond_3
    invoke-virtual {p0}, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A()V

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method public onBuffering(I)V
    .locals 0

    return-void
.end method

.method public onCompletion(Lflix/com/vision/bvp/BetterVideoPlayer;)V
    .locals 6

    .line 1
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p1, Lflix/com/vision/App;->q:LD4/h;

    .line 6
    .line 7
    iget-object v1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->I:Lflix/com/vision/models/Movie;

    .line 8
    .line 9
    iget v2, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->g0:I

    .line 10
    .line 11
    iget v3, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->h0:I

    .line 12
    .line 13
    invoke-virtual {p0}, Lflix/com/vision/activities/player/SimpleVideoPlayer;->o()F

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    sget-object v5, Lflix/com/vision/api/TraktAPI$ScrobbleState;->f:Lflix/com/vision/api/TraktAPI$ScrobbleState;

    .line 18
    .line 19
    invoke-virtual/range {v0 .. v5}, LD4/h;->scrobble(Lflix/com/vision/models/Movie;IIFLflix/com/vision/api/TraktAPI$ScrobbleState;)Lio/reactivex/Completable;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {p1, v0}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    new-instance v0, LB4/r;

    .line 32
    .line 33
    const/4 v1, 0x0

    .line 34
    invoke-direct {v0, v1}, LB4/r;-><init>(I)V

    .line 35
    .line 36
    .line 37
    new-instance v1, LA4/c;

    .line 38
    .line 39
    const/4 v2, 0x3

    .line 40
    invoke-direct {v1, v2}, LA4/c;-><init>(I)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, v0, v1}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Le/v;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 5
    .line 6
    const/16 v0, 0x1a

    .line 7
    .line 8
    if-lt p1, v0, :cond_0

    .line 9
    .line 10
    invoke-static {p0}, LB4/n;->z(Lflix/com/vision/activities/player/SimpleVideoPlayer;)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    iget-object p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 17
    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    invoke-virtual {p1, v0}, Lflix/com/vision/bvp/BetterVideoPlayer;->setResizeMode(I)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    const/4 v2, 0x0

    .line 5
    const-string v3, "GMS not available. Status: "

    .line 6
    .line 7
    invoke-super {p0, p1}, Landroidx/fragment/app/H;->onCreate(Landroid/os/Bundle;)V

    .line 8
    .line 9
    .line 10
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 11
    .line 12
    const/16 v4, 0x1c

    .line 13
    .line 14
    if-lt p1, v4, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-static {p1}, LB4/p;->w(Landroid/view/WindowManager$LayoutParams;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    const/16 v4, 0x400

    .line 32
    .line 33
    invoke-virtual {p1, v4}, Landroid/view/Window;->addFlags(I)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    const/16 v4, 0x80

    .line 41
    .line 42
    invoke-virtual {p1, v4}, Landroid/view/Window;->addFlags(I)V

    .line 43
    .line 44
    .line 45
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    iget-object p1, p1, Lflix/com/vision/App;->y:Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    iget-object v4, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->P:Ljava/util/ArrayList;

    .line 56
    .line 57
    if-nez p1, :cond_1

    .line 58
    .line 59
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    iget-object p1, p1, Lflix/com/vision/App;->y:Ljava/util/ArrayList;

    .line 64
    .line 65
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 66
    .line 67
    .line 68
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    const-string v5, "is_torrent"

    .line 73
    .line 74
    invoke-virtual {p1, v5, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    iput-boolean p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->j:Z

    .line 79
    .line 80
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    iget-object p1, p1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 85
    .line 86
    const-string v5, "IS_RD_LOGGED_IN"

    .line 87
    .line 88
    invoke-interface {p1, v5, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 89
    .line 90
    .line 91
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    iget-object p1, p1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 96
    .line 97
    const-string v5, "pref_show_time"

    .line 98
    .line 99
    invoke-interface {p1, v5, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    iput-boolean p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->m:Z

    .line 104
    .line 105
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    sget v5, Lflix/com/vision/R$anim;->slide_up:I

    .line 117
    .line 118
    invoke-static {p1, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    iput-object p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->p0:Landroid/view/animation/Animation;

    .line 123
    .line 124
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    sget v5, Lflix/com/vision/R$anim;->slide_down:I

    .line 129
    .line 130
    invoke-static {p1, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    iput-object p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->q0:Landroid/view/animation/Animation;

    .line 135
    .line 136
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    sget v5, Lflix/com/vision/R$anim;->fade_in_infinite:I

    .line 141
    .line 142
    invoke-static {p1, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    iput-object p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->r0:Landroid/view/animation/Animation;

    .line 147
    .line 148
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    sget v5, Lflix/com/vision/R$anim;->fade_in_rated:I

    .line 153
    .line 154
    invoke-static {p1, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    iput-object p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->s0:Landroid/view/animation/Animation;

    .line 159
    .line 160
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    sget v5, Lflix/com/vision/R$anim;->fade_out_rated:I

    .line 165
    .line 166
    invoke-static {p1, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    iput-object p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->t0:Landroid/view/animation/Animation;

    .line 171
    .line 172
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    iget-object p1, p1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 177
    .line 178
    const-string v5, "pref_auto_play_next_ep"

    .line 179
    .line 180
    const/4 v6, 0x1

    .line 181
    invoke-interface {p1, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 182
    .line 183
    .line 184
    move-result p1

    .line 185
    iput-boolean p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->a0:Z

    .line 186
    .line 187
    sget-boolean p1, Lflix/com/vision/App;->I:Z

    .line 188
    .line 189
    if-eqz p1, :cond_2

    .line 190
    .line 191
    sget p1, Lflix/com/vision/R$layout;->activity_player:I

    .line 192
    .line 193
    goto :goto_0

    .line 194
    :cond_2
    sget p1, Lflix/com/vision/R$layout;->activity_player_light:I

    .line 195
    .line 196
    :goto_0
    invoke-virtual {p0, p1}, Le/v;->setContentView(I)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 200
    .line 201
    .line 202
    move-result-object p1

    .line 203
    const-string v5, "sources"

    .line 204
    .line 205
    invoke-virtual {p1, v5}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 206
    .line 207
    .line 208
    move-result-object p1

    .line 209
    iput-object p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->r:Ljava/util/ArrayList;

    .line 210
    .line 211
    if-nez p1, :cond_3

    .line 212
    .line 213
    new-instance p1, Ljava/util/ArrayList;

    .line 214
    .line 215
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 216
    .line 217
    .line 218
    iput-object p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->r:Ljava/util/ArrayList;

    .line 219
    .line 220
    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 221
    .line 222
    .line 223
    move-result-object p1

    .line 224
    const-string v5, "current_index"

    .line 225
    .line 226
    const/4 v7, -0x1

    .line 227
    invoke-virtual {p1, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 228
    .line 229
    .line 230
    move-result p1

    .line 231
    iput p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->n0:I

    .line 232
    .line 233
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 234
    .line 235
    .line 236
    move-result-object p1

    .line 237
    sget-object v5, Lflix/com/vision/tv/Constant;->b:Ljava/lang/String;

    .line 238
    .line 239
    const-string v5, "fonts/pproduct_sans_rregular.ttf"

    .line 240
    .line 241
    invoke-static {p1, v5}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    .line 242
    .line 243
    .line 244
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 245
    .line 246
    .line 247
    move-result-object p1

    .line 248
    const-string v5, "fonts/product_sans_bold.ttf"

    .line 249
    .line 250
    invoke-static {p1, v5}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    .line 251
    .line 252
    .line 253
    move-result-object p1

    .line 254
    iput-object p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->w:Landroid/graphics/Typeface;

    .line 255
    .line 256
    new-instance p1, Lh5/j;

    .line 257
    .line 258
    invoke-direct {p1}, Lh5/j;-><init>()V

    .line 259
    .line 260
    .line 261
    iput-object p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->x:Lh5/j;

    .line 262
    .line 263
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 264
    .line 265
    .line 266
    move-result-object p1

    .line 267
    const-string v5, "movie"

    .line 268
    .line 269
    invoke-virtual {p1, v5}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    .line 270
    .line 271
    .line 272
    move-result-object p1

    .line 273
    check-cast p1, Lflix/com/vision/models/Movie;

    .line 274
    .line 275
    iput-object p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->I:Lflix/com/vision/models/Movie;

    .line 276
    .line 277
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 278
    .line 279
    .line 280
    move-result-object p1

    .line 281
    const-string v5, "season_year"

    .line 282
    .line 283
    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    sget p1, Lflix/com/vision/R$id;->title_poster_img:I

    .line 287
    .line 288
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 289
    .line 290
    .line 291
    move-result-object p1

    .line 292
    check-cast p1, Landroid/widget/ImageView;

    .line 293
    .line 294
    iput-object p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->f:Landroid/widget/ImageView;

    .line 295
    .line 296
    iget-object p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->I:Lflix/com/vision/models/Movie;

    .line 297
    .line 298
    if-eqz p1, :cond_4

    .line 299
    .line 300
    iget-boolean v5, p1, Lflix/com/vision/models/Movie;->drama:Z

    .line 301
    .line 302
    if-nez v5, :cond_4

    .line 303
    .line 304
    invoke-virtual {p1}, Lflix/com/vision/models/Movie;->isAnime()Z

    .line 305
    .line 306
    .line 307
    move-result p1

    .line 308
    if-nez p1, :cond_4

    .line 309
    .line 310
    iget-object p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->f:Landroid/widget/ImageView;

    .line 311
    .line 312
    if-eqz p1, :cond_4

    .line 313
    .line 314
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 315
    .line 316
    .line 317
    move-result-object p1

    .line 318
    iget-object p1, p1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 319
    .line 320
    const-string v5, "pref_logo_as_loading_players"

    .line 321
    .line 322
    invoke-interface {p1, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 323
    .line 324
    .line 325
    move-result p1

    .line 326
    if-eqz p1, :cond_4

    .line 327
    .line 328
    :try_start_0
    iget-object p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->I:Lflix/com/vision/models/Movie;

    .line 329
    .line 330
    iget-object v5, p1, Lflix/com/vision/models/Movie;->logoUrl:Ljava/lang/String;

    .line 331
    .line 332
    iput-object v5, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->W:Ljava/lang/String;

    .line 333
    .line 334
    iget-boolean p1, p1, Lflix/com/vision/models/Movie;->is_title_logo_available:Z

    .line 335
    .line 336
    iput-boolean p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->H0:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 337
    .line 338
    if-eqz p1, :cond_4

    .line 339
    .line 340
    :try_start_1
    invoke-static {}, Lm4/D;->get()Lm4/D;

    .line 341
    .line 342
    .line 343
    move-result-object p1

    .line 344
    iget-object v5, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->W:Ljava/lang/String;

    .line 345
    .line 346
    invoke-virtual {p1, v5}, Lm4/D;->load(Ljava/lang/String;)Lm4/J;

    .line 347
    .line 348
    .line 349
    move-result-object p1

    .line 350
    iget-object v5, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->f:Landroid/widget/ImageView;

    .line 351
    .line 352
    new-instance v8, LB4/K;

    .line 353
    .line 354
    invoke-direct {v8, p0}, LB4/K;-><init>(Lflix/com/vision/activities/player/SimpleVideoPlayer;)V

    .line 355
    .line 356
    .line 357
    invoke-virtual {p1, v5, v8}, Lm4/J;->into(Landroid/widget/ImageView;Lm4/i;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 358
    .line 359
    .line 360
    goto :goto_1

    .line 361
    :catch_0
    move-exception p1

    .line 362
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 363
    .line 364
    .line 365
    :catch_1
    :cond_4
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 366
    .line 367
    .line 368
    move-result-object p1

    .line 369
    const-string v5, "runtime"

    .line 370
    .line 371
    invoke-virtual {p1, v5, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 372
    .line 373
    .line 374
    move-result p1

    .line 375
    iput p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->X:I

    .line 376
    .line 377
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 378
    .line 379
    .line 380
    move-result-object p1

    .line 381
    const-string v5, "season_number"

    .line 382
    .line 383
    invoke-virtual {p1, v5, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 384
    .line 385
    .line 386
    move-result p1

    .line 387
    iput p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->g0:I

    .line 388
    .line 389
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 390
    .line 391
    .line 392
    move-result-object p1

    .line 393
    const-string v5, "episode_number"

    .line 394
    .line 395
    invoke-virtual {p1, v5, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 396
    .line 397
    .line 398
    move-result p1

    .line 399
    iput p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->h0:I

    .line 400
    .line 401
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 402
    .line 403
    .line 404
    move-result-object p1

    .line 405
    const-string v5, "episode_count"

    .line 406
    .line 407
    invoke-virtual {p1, v5, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 408
    .line 409
    .line 410
    move-result p1

    .line 411
    iput p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->i0:I

    .line 412
    .line 413
    sget p1, Lflix/com/vision/R$id;->player:I

    .line 414
    .line 415
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 416
    .line 417
    .line 418
    move-result-object p1

    .line 419
    check-cast p1, Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 420
    .line 421
    iput-object p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 422
    .line 423
    new-instance v5, LB4/D;

    .line 424
    .line 425
    invoke-direct {v5, p0}, LB4/D;-><init>(Lflix/com/vision/activities/player/SimpleVideoPlayer;)V

    .line 426
    .line 427
    .line 428
    invoke-virtual {p1, v5}, Lflix/com/vision/bvp/BetterVideoPlayer;->addListener(Landroidx/media3/common/Player$Listener;)V

    .line 429
    .line 430
    .line 431
    iget-object p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 432
    .line 433
    invoke-virtual {p1, p0}, Lflix/com/vision/bvp/BetterVideoPlayer;->setProgressCallback(LK4/m;)V

    .line 434
    .line 435
    .line 436
    sget p1, Lflix/com/vision/R$id;->btn_close_autoplay:I

    .line 437
    .line 438
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 439
    .line 440
    .line 441
    move-result-object p1

    .line 442
    check-cast p1, Landroid/widget/ImageView;

    .line 443
    .line 444
    if-eqz p1, :cond_5

    .line 445
    .line 446
    new-instance v5, LB4/q;

    .line 447
    .line 448
    const/16 v8, 0x9

    .line 449
    .line 450
    invoke-direct {v5, p0, v8}, LB4/q;-><init>(Lflix/com/vision/activities/player/SimpleVideoPlayer;I)V

    .line 451
    .line 452
    .line 453
    invoke-virtual {p1, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 454
    .line 455
    .line 456
    :cond_5
    sget-boolean p1, Lflix/com/vision/App;->I:Z

    .line 457
    .line 458
    if-nez p1, :cond_6

    .line 459
    .line 460
    sget p1, Lflix/com/vision/R$id;->btn_close_episodes:I

    .line 461
    .line 462
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 463
    .line 464
    .line 465
    move-result-object p1

    .line 466
    check-cast p1, Landroid/widget/ImageView;

    .line 467
    .line 468
    if-eqz p1, :cond_6

    .line 469
    .line 470
    new-instance v5, LB4/q;

    .line 471
    .line 472
    const/16 v8, 0xa

    .line 473
    .line 474
    invoke-direct {v5, p0, v8}, LB4/q;-><init>(Lflix/com/vision/activities/player/SimpleVideoPlayer;I)V

    .line 475
    .line 476
    .line 477
    invoke-virtual {p1, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 478
    .line 479
    .line 480
    :cond_6
    sget p1, Lflix/com/vision/R$id;->rated_text_view:I

    .line 481
    .line 482
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 483
    .line 484
    .line 485
    move-result-object p1

    .line 486
    check-cast p1, Landroid/widget/TextView;

    .line 487
    .line 488
    iput-object p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->H:Landroid/widget/TextView;

    .line 489
    .line 490
    sget p1, Lflix/com/vision/R$id;->rated_layout:I

    .line 491
    .line 492
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 493
    .line 494
    .line 495
    move-result-object p1

    .line 496
    check-cast p1, Landroid/widget/LinearLayout;

    .line 497
    .line 498
    sget p1, Lflix/com/vision/R$id;->buffering_layout:I

    .line 499
    .line 500
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 501
    .line 502
    .line 503
    move-result-object p1

    .line 504
    check-cast p1, Landroid/widget/RelativeLayout;

    .line 505
    .line 506
    iput-object p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->u:Landroid/widget/RelativeLayout;

    .line 507
    .line 508
    sget p1, Lflix/com/vision/R$id;->episode_list:I

    .line 509
    .line 510
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 511
    .line 512
    .line 513
    move-result-object p1

    .line 514
    check-cast p1, Landroid/widget/RelativeLayout;

    .line 515
    .line 516
    iput-object p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->t:Landroid/widget/RelativeLayout;

    .line 517
    .line 518
    sget p1, Lflix/com/vision/R$id;->recyclerview_episodes_list:I

    .line 519
    .line 520
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 521
    .line 522
    .line 523
    move-result-object p1

    .line 524
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 525
    .line 526
    iput-object p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->v:Landroidx/recyclerview/widget/RecyclerView;

    .line 527
    .line 528
    new-instance p1, LC4/V;

    .line 529
    .line 530
    iget v5, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->h0:I

    .line 531
    .line 532
    sub-int/2addr v5, v6

    .line 533
    invoke-direct {p1, p0, v4, v5}, LC4/V;-><init>(Lflix/com/vision/activities/player/SimpleVideoPlayer;Ljava/util/ArrayList;I)V

    .line 534
    .line 535
    .line 536
    iput-object p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->O:LC4/V;

    .line 537
    .line 538
    iget-object p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->v:Landroidx/recyclerview/widget/RecyclerView;

    .line 539
    .line 540
    invoke-static {p1, v1}, Lb/c;->s(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 541
    .line 542
    .line 543
    iget-object p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->v:Landroidx/recyclerview/widget/RecyclerView;

    .line 544
    .line 545
    new-instance v4, Lflix/com/vision/helpers/CenterLayoutManager;

    .line 546
    .line 547
    invoke-direct {v4, p0, v6, v2}, Lflix/com/vision/helpers/CenterLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 548
    .line 549
    .line 550
    invoke-virtual {p1, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Lm1/i0;)V

    .line 551
    .line 552
    .line 553
    iget-object p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->v:Landroidx/recyclerview/widget/RecyclerView;

    .line 554
    .line 555
    iget-object v4, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->O:LC4/V;

    .line 556
    .line 557
    invoke-virtual {p1, v4}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lm1/V;)V

    .line 558
    .line 559
    .line 560
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 561
    .line 562
    .line 563
    move-result-object p1

    .line 564
    sget v4, Lflix/com/vision/R$anim;->slide_left:I

    .line 565
    .line 566
    invoke-static {p1, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 567
    .line 568
    .line 569
    move-result-object p1

    .line 570
    iput-object p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->F0:Landroid/view/animation/Animation;

    .line 571
    .line 572
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 573
    .line 574
    .line 575
    move-result-object p1

    .line 576
    sget v4, Lflix/com/vision/R$anim;->slide_right:I

    .line 577
    .line 578
    invoke-static {p1, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 579
    .line 580
    .line 581
    move-result-object p1

    .line 582
    iput-object p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->G0:Landroid/view/animation/Animation;

    .line 583
    .line 584
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 585
    .line 586
    .line 587
    move-result-object p1

    .line 588
    iget-object p1, p1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 589
    .line 590
    const-string v4, "pref_subtitle_encoding_label"

    .line 591
    .line 592
    const-string v5, "utf-8"

    .line 593
    .line 594
    invoke-interface {p1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 595
    .line 596
    .line 597
    move-result-object p1

    .line 598
    iget-object v4, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 599
    .line 600
    invoke-virtual {v4, p1}, Lflix/com/vision/bvp/BetterVideoPlayer;->setEncoding(Ljava/lang/String;)V

    .line 601
    .line 602
    .line 603
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 604
    .line 605
    .line 606
    move-result-object p1

    .line 607
    iget-object p1, p1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 608
    .line 609
    const-string v4, "pref_subtitle_size"

    .line 610
    .line 611
    const/4 v5, 0x3

    .line 612
    invoke-interface {p1, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 613
    .line 614
    .line 615
    move-result p1

    .line 616
    invoke-virtual {p0, p1}, Lflix/com/vision/activities/player/SimpleVideoPlayer;->J(I)V

    .line 617
    .line 618
    .line 619
    iget-object p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 620
    .line 621
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 622
    .line 623
    .line 624
    move-result-object v4

    .line 625
    iget-object v4, v4, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 626
    .line 627
    const-string v5, "subtitle_color_res"

    .line 628
    .line 629
    sget v8, Lflix/com/vision/R$color;->md_white_1:I

    .line 630
    .line 631
    invoke-interface {v4, v5, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 632
    .line 633
    .line 634
    move-result v4

    .line 635
    invoke-virtual {p1, v4}, Lflix/com/vision/bvp/BetterVideoPlayer;->setSubColor(I)V

    .line 636
    .line 637
    .line 638
    sget-boolean p1, Lflix/com/vision/App;->I:Z

    .line 639
    .line 640
    if-eqz p1, :cond_7

    .line 641
    .line 642
    iget-object p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 643
    .line 644
    invoke-virtual {p1, v2}, Lflix/com/vision/bvp/BetterVideoPlayer;->setEnableClick(Z)V

    .line 645
    .line 646
    .line 647
    :cond_7
    iget-object p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 648
    .line 649
    iget-object p1, p1, Lflix/com/vision/bvp/BetterVideoPlayer;->C:Landroid/widget/SeekBar;

    .line 650
    .line 651
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    .line 652
    .line 653
    .line 654
    move-result-object p1

    .line 655
    invoke-virtual {p0}, Le/v;->getResources()Landroid/content/res/Resources;

    .line 656
    .line 657
    .line 658
    move-result-object v4

    .line 659
    sget v5, Lflix/com/vision/R$color;->accent:I

    .line 660
    .line 661
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    .line 662
    .line 663
    .line 664
    move-result v4

    .line 665
    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    .line 666
    .line 667
    invoke-virtual {p1, v4, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 668
    .line 669
    .line 670
    iget-object p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 671
    .line 672
    iget-object p1, p1, Lflix/com/vision/bvp/BetterVideoPlayer;->C:Landroid/widget/SeekBar;

    .line 673
    .line 674
    new-instance v4, LA4/g;

    .line 675
    .line 676
    const/4 v5, 0x2

    .line 677
    invoke-direct {v4, p0, v5}, LA4/g;-><init>(Ljava/lang/Object;I)V

    .line 678
    .line 679
    .line 680
    invoke-virtual {p1, v4}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 681
    .line 682
    .line 683
    sget p1, Lflix/com/vision/R$id;->buffering_view:I

    .line 684
    .line 685
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 686
    .line 687
    .line 688
    move-result-object p1

    .line 689
    check-cast p1, Lcom/github/ybq/android/spinkit/SpinKitView;

    .line 690
    .line 691
    iput-object p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->s:Lcom/github/ybq/android/spinkit/SpinKitView;

    .line 692
    .line 693
    sget p1, Lflix/com/vision/R$id;->text_view_rating:I

    .line 694
    .line 695
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 696
    .line 697
    .line 698
    move-result-object p1

    .line 699
    check-cast p1, Landroid/widget/TextView;

    .line 700
    .line 701
    iput-object p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->G:Landroid/widget/TextView;

    .line 702
    .line 703
    sget-boolean p1, Lflix/com/vision/App;->I:Z

    .line 704
    .line 705
    if-eqz p1, :cond_b

    .line 706
    .line 707
    iget-object p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->I:Lflix/com/vision/models/Movie;

    .line 708
    .line 709
    if-nez p1, :cond_8

    .line 710
    .line 711
    sget p1, Lflix/com/vision/R$menu;->menu_simple_video_player:I

    .line 712
    .line 713
    iput p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->V:I

    .line 714
    .line 715
    goto :goto_4

    .line 716
    :cond_8
    invoke-virtual {p1}, Lflix/com/vision/models/Movie;->isSeries()Z

    .line 717
    .line 718
    .line 719
    move-result p1

    .line 720
    if-nez p1, :cond_a

    .line 721
    .line 722
    iget-object p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->I:Lflix/com/vision/models/Movie;

    .line 723
    .line 724
    iget-boolean v4, p1, Lflix/com/vision/models/Movie;->drama:Z

    .line 725
    .line 726
    if-nez v4, :cond_a

    .line 727
    .line 728
    invoke-virtual {p1}, Lflix/com/vision/models/Movie;->isAnime()Z

    .line 729
    .line 730
    .line 731
    move-result p1

    .line 732
    if-eqz p1, :cond_9

    .line 733
    .line 734
    goto :goto_2

    .line 735
    :cond_9
    sget p1, Lflix/com/vision/R$menu;->menu_simple_video_player:I

    .line 736
    .line 737
    iput p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->V:I

    .line 738
    .line 739
    goto :goto_4

    .line 740
    :cond_a
    :goto_2
    sget p1, Lflix/com/vision/R$menu;->menu_simple_video_player_series:I

    .line 741
    .line 742
    iput p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->V:I

    .line 743
    .line 744
    goto :goto_4

    .line 745
    :cond_b
    iget-object p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->I:Lflix/com/vision/models/Movie;

    .line 746
    .line 747
    if-nez p1, :cond_c

    .line 748
    .line 749
    sget p1, Lflix/com/vision/R$menu;->menu_simple_video_player_mobile:I

    .line 750
    .line 751
    iput p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->V:I

    .line 752
    .line 753
    goto :goto_4

    .line 754
    :cond_c
    invoke-virtual {p1}, Lflix/com/vision/models/Movie;->isSeries()Z

    .line 755
    .line 756
    .line 757
    move-result p1

    .line 758
    if-nez p1, :cond_e

    .line 759
    .line 760
    iget-object p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->I:Lflix/com/vision/models/Movie;

    .line 761
    .line 762
    invoke-virtual {p1}, Lflix/com/vision/models/Movie;->isAnime()Z

    .line 763
    .line 764
    .line 765
    move-result p1

    .line 766
    if-nez p1, :cond_e

    .line 767
    .line 768
    iget-object p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->I:Lflix/com/vision/models/Movie;

    .line 769
    .line 770
    iget-boolean p1, p1, Lflix/com/vision/models/Movie;->drama:Z

    .line 771
    .line 772
    if-eqz p1, :cond_d

    .line 773
    .line 774
    goto :goto_3

    .line 775
    :cond_d
    sget p1, Lflix/com/vision/R$menu;->menu_simple_video_player_mobile:I

    .line 776
    .line 777
    iput p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->V:I

    .line 778
    .line 779
    goto :goto_4

    .line 780
    :cond_e
    :goto_3
    sget p1, Lflix/com/vision/R$menu;->menu_simple_video_player_mobile_series:I

    .line 781
    .line 782
    iput p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->V:I

    .line 783
    .line 784
    :goto_4
    iget-object p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 785
    .line 786
    invoke-virtual {p1}, Lflix/com/vision/bvp/BetterVideoPlayer;->getToolbar()Landroidx/appcompat/widget/Toolbar;

    .line 787
    .line 788
    .line 789
    move-result-object p1

    .line 790
    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getMenu()Landroid/view/Menu;

    .line 791
    .line 792
    .line 793
    move-result-object p1

    .line 794
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 795
    .line 796
    .line 797
    iget-object p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 798
    .line 799
    invoke-virtual {p1}, Lflix/com/vision/bvp/BetterVideoPlayer;->getToolbar()Landroidx/appcompat/widget/Toolbar;

    .line 800
    .line 801
    .line 802
    move-result-object p1

    .line 803
    iget v4, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->V:I

    .line 804
    .line 805
    invoke-virtual {p1, v4}, Landroidx/appcompat/widget/Toolbar;->inflateMenu(I)V

    .line 806
    .line 807
    .line 808
    iget-object p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 809
    .line 810
    invoke-virtual {p1}, Lflix/com/vision/bvp/BetterVideoPlayer;->getToolbar()Landroidx/appcompat/widget/Toolbar;

    .line 811
    .line 812
    .line 813
    move-result-object p1

    .line 814
    if-nez p1, :cond_f

    .line 815
    .line 816
    goto :goto_5

    .line 817
    :cond_f
    new-instance v4, LB4/u;

    .line 818
    .line 819
    invoke-direct {v4, p1, v2}, LB4/u;-><init>(Landroidx/appcompat/widget/Toolbar;I)V

    .line 820
    .line 821
    .line 822
    invoke-virtual {p1, v4}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 823
    .line 824
    .line 825
    :goto_5
    sget-boolean p1, Lflix/com/vision/App;->I:Z

    .line 826
    .line 827
    const-string v4, "Cast"

    .line 828
    .line 829
    if-nez p1, :cond_12

    .line 830
    .line 831
    :try_start_3
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    .line 832
    .line 833
    .line 834
    move-result-object p1

    .line 835
    invoke-virtual {p1, p0}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    .line 836
    .line 837
    .line 838
    move-result p1

    .line 839
    if-nez p1, :cond_10

    .line 840
    .line 841
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 842
    .line 843
    .line 844
    move-result-object p1

    .line 845
    iget-object v5, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 846
    .line 847
    invoke-virtual {v5}, Lflix/com/vision/bvp/BetterVideoPlayer;->getToolbar()Landroidx/appcompat/widget/Toolbar;

    .line 848
    .line 849
    .line 850
    move-result-object v5

    .line 851
    invoke-virtual {v5}, Landroidx/appcompat/widget/Toolbar;->getMenu()Landroid/view/Menu;

    .line 852
    .line 853
    .line 854
    move-result-object v5

    .line 855
    sget v8, Lflix/com/vision/R$id;->media_route_menu_item:I

    .line 856
    .line 857
    invoke-static {p1, v5, v8}, Lcom/google/android/gms/cast/framework/CastButtonFactory;->setUpMediaRouteButton(Landroid/content/Context;Landroid/view/Menu;I)Landroid/view/MenuItem;

    .line 858
    .line 859
    .line 860
    goto :goto_6

    .line 861
    :cond_10
    iget-object p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 862
    .line 863
    invoke-virtual {p1}, Lflix/com/vision/bvp/BetterVideoPlayer;->getToolbar()Landroidx/appcompat/widget/Toolbar;

    .line 864
    .line 865
    .line 866
    move-result-object p1

    .line 867
    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getMenu()Landroid/view/Menu;

    .line 868
    .line 869
    .line 870
    move-result-object p1

    .line 871
    sget v5, Lflix/com/vision/R$id;->media_route_menu_item:I

    .line 872
    .line 873
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 874
    .line 875
    .line 876
    move-result-object p1

    .line 877
    if-eqz p1, :cond_11

    .line 878
    .line 879
    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 880
    .line 881
    .line 882
    goto :goto_6

    .line 883
    :catch_2
    const-string p1, "Menu Cast button setup failed"

    .line 884
    .line 885
    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    .line 887
    .line 888
    :cond_11
    :goto_6
    new-instance p1, Landroid/os/Handler;

    .line 889
    .line 890
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 891
    .line 892
    .line 893
    new-instance v5, LB4/s;

    .line 894
    .line 895
    const/4 v8, 0x6

    .line 896
    invoke-direct {v5, p0, v8}, LB4/s;-><init>(Lflix/com/vision/activities/player/SimpleVideoPlayer;I)V

    .line 897
    .line 898
    .line 899
    const-wide/16 v8, 0x3e8

    .line 900
    .line 901
    invoke-virtual {p1, v5, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 902
    .line 903
    .line 904
    goto :goto_7

    .line 905
    :cond_12
    invoke-virtual {p0}, Lflix/com/vision/activities/player/SimpleVideoPlayer;->i()V

    .line 906
    .line 907
    .line 908
    :goto_7
    iget-object p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 909
    .line 910
    invoke-virtual {p1}, Lflix/com/vision/bvp/BetterVideoPlayer;->getToolbar()Landroidx/appcompat/widget/Toolbar;

    .line 911
    .line 912
    .line 913
    move-result-object p1

    .line 914
    new-instance v5, LA0/a;

    .line 915
    .line 916
    const/4 v8, 0x4

    .line 917
    invoke-direct {v5, p0, v8}, LA0/a;-><init>(Ljava/lang/Object;I)V

    .line 918
    .line 919
    .line 920
    invoke-virtual {p1, v5}, Landroidx/appcompat/widget/Toolbar;->setOnMenuItemClickListener(Ll/m2;)V

    .line 921
    .line 922
    .line 923
    sget p1, Lflix/com/vision/R$id;->next_episode_button:I

    .line 924
    .line 925
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 926
    .line 927
    .line 928
    move-result-object p1

    .line 929
    check-cast p1, Landroid/widget/ImageView;

    .line 930
    .line 931
    iput-object p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->q:Landroid/widget/ImageView;

    .line 932
    .line 933
    sget p1, Lflix/com/vision/R$id;->media_route_button:I

    .line 934
    .line 935
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 936
    .line 937
    .line 938
    move-result-object p1

    .line 939
    check-cast p1, Landroidx/mediarouter/app/MediaRouteButton;

    .line 940
    .line 941
    iput-object p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->p:Landroidx/mediarouter/app/MediaRouteButton;

    .line 942
    .line 943
    if-eqz p1, :cond_15

    .line 944
    .line 945
    sget-boolean p1, Lflix/com/vision/App;->I:Z

    .line 946
    .line 947
    if-nez p1, :cond_15

    .line 948
    .line 949
    :try_start_4
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    .line 950
    .line 951
    .line 952
    move-result-object p1

    .line 953
    invoke-virtual {p1, p0}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    .line 954
    .line 955
    .line 956
    move-result p1

    .line 957
    if-nez p1, :cond_13

    .line 958
    .line 959
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 960
    .line 961
    .line 962
    move-result-object p1

    .line 963
    iget-object v3, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->p:Landroidx/mediarouter/app/MediaRouteButton;

    .line 964
    .line 965
    invoke-static {p1, v3}, Lcom/google/android/gms/cast/framework/CastButtonFactory;->setUpMediaRouteButton(Landroid/content/Context;Landroidx/mediarouter/app/MediaRouteButton;)V

    .line 966
    .line 967
    .line 968
    invoke-static {p0}, Lcom/google/android/gms/cast/framework/CastContext;->getSharedInstance(Landroid/content/Context;)Lcom/google/android/gms/cast/framework/CastContext;

    .line 969
    .line 970
    .line 971
    move-result-object p1

    .line 972
    iput-object p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->Q:Lcom/google/android/gms/cast/framework/CastContext;

    .line 973
    .line 974
    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/CastContext;->getSessionManager()Lcom/google/android/gms/cast/framework/SessionManager;

    .line 975
    .line 976
    .line 977
    move-result-object p1

    .line 978
    iput-object p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->y0:Lcom/google/android/gms/cast/framework/SessionManager;

    .line 979
    .line 980
    goto :goto_9

    .line 981
    :catch_3
    move-exception p1

    .line 982
    goto :goto_8

    .line 983
    :cond_13
    iget-object v5, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->p:Landroidx/mediarouter/app/MediaRouteButton;

    .line 984
    .line 985
    invoke-virtual {v5, v0}, Landroidx/mediarouter/app/MediaRouteButton;->setVisibility(I)V

    .line 986
    .line 987
    .line 988
    new-instance v5, Ljava/lang/StringBuilder;

    .line 989
    .line 990
    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 991
    .line 992
    .line 993
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 994
    .line 995
    .line 996
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 997
    .line 998
    .line 999
    move-result-object p1

    .line 1000
    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 1001
    .line 1002
    .line 1003
    goto :goto_9

    .line 1004
    :goto_8
    iget-object v3, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->p:Landroidx/mediarouter/app/MediaRouteButton;

    .line 1005
    .line 1006
    if-eqz v3, :cond_14

    .line 1007
    .line 1008
    invoke-virtual {v3, v0}, Landroidx/mediarouter/app/MediaRouteButton;->setVisibility(I)V

    .line 1009
    .line 1010
    .line 1011
    :cond_14
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1012
    .line 1013
    const-string v5, "Cast initialization failed: "

    .line 1014
    .line 1015
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1016
    .line 1017
    .line 1018
    invoke-static {p1, v3, v4}, Lb/c;->t(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1019
    .line 1020
    .line 1021
    :cond_15
    :goto_9
    sget p1, Lflix/com/vision/R$id;->clock:I

    .line 1022
    .line 1023
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 1024
    .line 1025
    .line 1026
    move-result-object p1

    .line 1027
    check-cast p1, Landroid/widget/TextClock;

    .line 1028
    .line 1029
    iput-object p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->n:Landroid/widget/TextClock;

    .line 1030
    .line 1031
    sget p1, Lflix/com/vision/R$id;->pause_icon:I

    .line 1032
    .line 1033
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 1034
    .line 1035
    .line 1036
    move-result-object p1

    .line 1037
    check-cast p1, Landroid/widget/ImageView;

    .line 1038
    .line 1039
    iput-object p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->K:Landroid/widget/ImageView;

    .line 1040
    .line 1041
    sget p1, Lflix/com/vision/R$id;->skip_intro_layout:I

    .line 1042
    .line 1043
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 1044
    .line 1045
    .line 1046
    move-result-object p1

    .line 1047
    check-cast p1, Landroid/widget/LinearLayout;

    .line 1048
    .line 1049
    iput-object p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->N:Landroid/widget/LinearLayout;

    .line 1050
    .line 1051
    sget p1, Lflix/com/vision/R$id;->movie_title_container:I

    .line 1052
    .line 1053
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 1054
    .line 1055
    .line 1056
    move-result-object p1

    .line 1057
    check-cast p1, Landroid/widget/LinearLayout;

    .line 1058
    .line 1059
    iput-object p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->L:Landroid/widget/LinearLayout;

    .line 1060
    .line 1061
    sget p1, Lflix/com/vision/R$id;->next_episode_layout:I

    .line 1062
    .line 1063
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 1064
    .line 1065
    .line 1066
    move-result-object p1

    .line 1067
    check-cast p1, Landroid/widget/LinearLayout;

    .line 1068
    .line 1069
    iput-object p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->M:Landroid/widget/LinearLayout;

    .line 1070
    .line 1071
    sget p1, Lflix/com/vision/R$id;->movie_title_player_text:I

    .line 1072
    .line 1073
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 1074
    .line 1075
    .line 1076
    move-result-object p1

    .line 1077
    check-cast p1, Landroid/widget/TextView;

    .line 1078
    .line 1079
    iput-object p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->D:Landroid/widget/TextView;

    .line 1080
    .line 1081
    sget p1, Lflix/com/vision/R$id;->poster_image:I

    .line 1082
    .line 1083
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 1084
    .line 1085
    .line 1086
    move-result-object p1

    .line 1087
    check-cast p1, Landroid/widget/ImageView;

    .line 1088
    .line 1089
    iput-object p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->J:Landroid/widget/ImageView;

    .line 1090
    .line 1091
    sget p1, Lflix/com/vision/R$id;->undertitle_episode:I

    .line 1092
    .line 1093
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 1094
    .line 1095
    .line 1096
    move-result-object p1

    .line 1097
    check-cast p1, Landroid/widget/TextView;

    .line 1098
    .line 1099
    iput-object p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->E:Landroid/widget/TextView;

    .line 1100
    .line 1101
    sget p1, Lflix/com/vision/R$id;->undertitle:I

    .line 1102
    .line 1103
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 1104
    .line 1105
    .line 1106
    move-result-object p1

    .line 1107
    check-cast p1, Landroid/widget/TextView;

    .line 1108
    .line 1109
    iput-object p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->F:Landroid/widget/TextView;

    .line 1110
    .line 1111
    iget-object p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 1112
    .line 1113
    invoke-virtual {p1, v6}, Lflix/com/vision/bvp/BetterVideoPlayer;->setAutoPlay(Z)V

    .line 1114
    .line 1115
    .line 1116
    iget-object p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 1117
    .line 1118
    invoke-virtual {p1, v2}, Lflix/com/vision/bvp/BetterVideoPlayer;->setBottomProgressBarVisibility(Z)V

    .line 1119
    .line 1120
    .line 1121
    iget-object p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 1122
    .line 1123
    invoke-virtual {p1, v6}, Lflix/com/vision/bvp/BetterVideoPlayer;->setHideControlsOnPlay(Z)V

    .line 1124
    .line 1125
    .line 1126
    iget-object p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 1127
    .line 1128
    const/16 v3, 0x1388

    .line 1129
    .line 1130
    invoke-virtual {p1, v3}, Lflix/com/vision/bvp/BetterVideoPlayer;->setHideControlsDuration(I)V

    .line 1131
    .line 1132
    .line 1133
    iget-object p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 1134
    .line 1135
    invoke-virtual {p1, p0}, Lflix/com/vision/bvp/BetterVideoPlayer;->setCallback(LK4/b;)V

    .line 1136
    .line 1137
    .line 1138
    iget-object p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 1139
    .line 1140
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 1141
    .line 1142
    .line 1143
    move-result-object v4

    .line 1144
    invoke-virtual {p1, v4}, Lflix/com/vision/bvp/BetterVideoPlayer;->enableSwipeGestures(Landroid/view/Window;)V

    .line 1145
    .line 1146
    .line 1147
    new-instance p1, Landroid/os/Handler;

    .line 1148
    .line 1149
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 1150
    .line 1151
    .line 1152
    iput-object p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->C:Landroid/os/Handler;

    .line 1153
    .line 1154
    new-instance p1, LB4/s;

    .line 1155
    .line 1156
    invoke-direct {p1, p0, v0}, LB4/s;-><init>(Lflix/com/vision/activities/player/SimpleVideoPlayer;I)V

    .line 1157
    .line 1158
    .line 1159
    iput-object p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->j0:LB4/s;

    .line 1160
    .line 1161
    iget-object p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 1162
    .line 1163
    invoke-virtual {p1}, Lflix/com/vision/bvp/BetterVideoPlayer;->getToolbar()Landroidx/appcompat/widget/Toolbar;

    .line 1164
    .line 1165
    .line 1166
    move-result-object p1

    .line 1167
    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getMenu()Landroid/view/Menu;

    .line 1168
    .line 1169
    .line 1170
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 1171
    .line 1172
    .line 1173
    move-result-object p1

    .line 1174
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 1175
    .line 1176
    .line 1177
    move-result-object p1

    .line 1178
    iput-object p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->z:Landroid/view/View;

    .line 1179
    .line 1180
    const/16 v4, 0x404

    .line 1181
    .line 1182
    invoke-virtual {p1, v4}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 1183
    .line 1184
    .line 1185
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 1186
    .line 1187
    .line 1188
    move-result-object p1

    .line 1189
    const-string v4, "movie_id"

    .line 1190
    .line 1191
    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 1192
    .line 1193
    .line 1194
    move-result-object p1

    .line 1195
    iput-object p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->Y:Ljava/lang/String;

    .line 1196
    .line 1197
    if-eqz p1, :cond_16

    .line 1198
    .line 1199
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 1200
    .line 1201
    .line 1202
    move-result-object p1

    .line 1203
    iget-object p1, p1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 1204
    .line 1205
    iget-object v4, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->Y:Ljava/lang/String;

    .line 1206
    .line 1207
    invoke-interface {p1, v4, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 1208
    .line 1209
    .line 1210
    move-result p1

    .line 1211
    iput p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->m0:I

    .line 1212
    .line 1213
    :cond_16
    iget p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->m0:I

    .line 1214
    .line 1215
    if-le p1, v3, :cond_17

    .line 1216
    .line 1217
    iput-boolean v6, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->l0:Z

    .line 1218
    .line 1219
    :cond_17
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 1220
    .line 1221
    .line 1222
    move-result-object p1

    .line 1223
    const-string v3, "movie_rating"

    .line 1224
    .line 1225
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 1226
    .line 1227
    .line 1228
    move-result-object p1

    .line 1229
    iput-object p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->Z:Ljava/lang/String;

    .line 1230
    .line 1231
    if-eqz p1, :cond_19

    .line 1232
    .line 1233
    iget-object v3, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->G:Landroid/widget/TextView;

    .line 1234
    .line 1235
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1236
    .line 1237
    .line 1238
    iget-object p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->G:Landroid/widget/TextView;

    .line 1239
    .line 1240
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1241
    .line 1242
    .line 1243
    iget-object p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->H:Landroid/widget/TextView;

    .line 1244
    .line 1245
    if-eqz p1, :cond_19

    .line 1246
    .line 1247
    iget-object p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->Z:Ljava/lang/String;

    .line 1248
    .line 1249
    if-eqz p1, :cond_19

    .line 1250
    .line 1251
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 1252
    .line 1253
    .line 1254
    move-result p1

    .line 1255
    if-nez p1, :cond_19

    .line 1256
    .line 1257
    iget-object p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->Z:Ljava/lang/String;

    .line 1258
    .line 1259
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 1260
    .line 1261
    .line 1262
    move-result p1

    .line 1263
    if-le p1, v6, :cond_18

    .line 1264
    .line 1265
    iget-object p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->H:Landroid/widget/TextView;

    .line 1266
    .line 1267
    iget-object v3, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->Z:Ljava/lang/String;

    .line 1268
    .line 1269
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1270
    .line 1271
    .line 1272
    goto :goto_a

    .line 1273
    :cond_18
    iget-object p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->H:Landroid/widget/TextView;

    .line 1274
    .line 1275
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1276
    .line 1277
    const-string v4, "RATED "

    .line 1278
    .line 1279
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1280
    .line 1281
    .line 1282
    iget-object v4, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->Z:Ljava/lang/String;

    .line 1283
    .line 1284
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1285
    .line 1286
    .line 1287
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1288
    .line 1289
    .line 1290
    move-result-object v3

    .line 1291
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1292
    .line 1293
    .line 1294
    :goto_a
    iput-boolean v6, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->e:Z

    .line 1295
    .line 1296
    :cond_19
    iget-object p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->I:Lflix/com/vision/models/Movie;

    .line 1297
    .line 1298
    if-eqz p1, :cond_1a

    .line 1299
    .line 1300
    invoke-virtual {p0}, Lflix/com/vision/activities/player/SimpleVideoPlayer;->u()V

    .line 1301
    .line 1302
    .line 1303
    goto :goto_b

    .line 1304
    :cond_1a
    iget-boolean p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->j:Z

    .line 1305
    .line 1306
    if-eqz p1, :cond_1b

    .line 1307
    .line 1308
    iget-object p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->J:Landroid/widget/ImageView;

    .line 1309
    .line 1310
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1311
    .line 1312
    .line 1313
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 1314
    .line 1315
    .line 1316
    move-result-object p1

    .line 1317
    const-string v0, "title"

    .line 1318
    .line 1319
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 1320
    .line 1321
    .line 1322
    move-result-object p1

    .line 1323
    if-eqz p1, :cond_1b

    .line 1324
    .line 1325
    iget-object v0, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->D:Landroid/widget/TextView;

    .line 1326
    .line 1327
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1328
    .line 1329
    .line 1330
    :cond_1b
    :goto_b
    iget-object p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->x:Lh5/j;

    .line 1331
    .line 1332
    iget-object v0, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->D:Landroid/widget/TextView;

    .line 1333
    .line 1334
    iget-object v3, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->w:Landroid/graphics/Typeface;

    .line 1335
    .line 1336
    invoke-virtual {p1, v0, v3}, Lh5/j;->applyFontToView(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    .line 1337
    .line 1338
    .line 1339
    iget-object p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->I:Lflix/com/vision/models/Movie;

    .line 1340
    .line 1341
    if-eqz p1, :cond_1c

    .line 1342
    .line 1343
    iget-boolean v0, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->a0:Z

    .line 1344
    .line 1345
    if-eqz v0, :cond_1c

    .line 1346
    .line 1347
    iget-object v0, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->q:Landroid/widget/ImageView;

    .line 1348
    .line 1349
    if-eqz v0, :cond_1c

    .line 1350
    .line 1351
    invoke-virtual {p1}, Lflix/com/vision/models/Movie;->isSeries()Z

    .line 1352
    .line 1353
    .line 1354
    move-result p1

    .line 1355
    if-eqz p1, :cond_1c

    .line 1356
    .line 1357
    iget-object p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->q:Landroid/widget/ImageView;

    .line 1358
    .line 1359
    new-instance v0, LB4/q;

    .line 1360
    .line 1361
    const/16 v3, 0xb

    .line 1362
    .line 1363
    invoke-direct {v0, p0, v3}, LB4/q;-><init>(Lflix/com/vision/activities/player/SimpleVideoPlayer;I)V

    .line 1364
    .line 1365
    .line 1366
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1367
    .line 1368
    .line 1369
    :cond_1c
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 1370
    .line 1371
    .line 1372
    move-result-object p1

    .line 1373
    const-string v0, "streamUrl"

    .line 1374
    .line 1375
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 1376
    .line 1377
    .line 1378
    move-result-object p1

    .line 1379
    iput-object p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->y:Ljava/lang/String;

    .line 1380
    .line 1381
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 1382
    .line 1383
    .line 1384
    move-result-object p1

    .line 1385
    const-string v0, "mimeType"

    .line 1386
    .line 1387
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 1388
    .line 1389
    .line 1390
    move-result-object p1

    .line 1391
    iput-object p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->e0:Ljava/lang/String;

    .line 1392
    .line 1393
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 1394
    .line 1395
    .line 1396
    move-result-object p1

    .line 1397
    const-string v0, "referer"

    .line 1398
    .line 1399
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 1400
    .line 1401
    .line 1402
    move-result-object p1

    .line 1403
    invoke-static {p1}, Lh5/n;->notNull(Ljava/lang/String;)Z

    .line 1404
    .line 1405
    .line 1406
    move-result v0

    .line 1407
    if-eqz v0, :cond_1d

    .line 1408
    .line 1409
    sget-object v0, Lflix/com/vision/App;->E:Ljava/util/HashMap;

    .line 1410
    .line 1411
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1412
    .line 1413
    .line 1414
    const-string v3, "Referer"

    .line 1415
    .line 1416
    invoke-virtual {v0, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1417
    .line 1418
    .line 1419
    :cond_1d
    sget-boolean p1, Lflix/com/vision/App;->I:Z

    .line 1420
    .line 1421
    if-eqz p1, :cond_1e

    .line 1422
    .line 1423
    iget-object p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->y:Ljava/lang/String;

    .line 1424
    .line 1425
    if-eqz p1, :cond_1f

    .line 1426
    .line 1427
    invoke-virtual {p0}, Lflix/com/vision/activities/player/SimpleVideoPlayer;->I()V

    .line 1428
    .line 1429
    .line 1430
    iget-object p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->y:Ljava/lang/String;

    .line 1431
    .line 1432
    invoke-virtual {p0, p1, v6}, Lflix/com/vision/activities/player/SimpleVideoPlayer;->playLink(Ljava/lang/String;Z)V

    .line 1433
    .line 1434
    .line 1435
    goto :goto_c

    .line 1436
    :cond_1e
    new-instance p1, Landroid/os/Handler;

    .line 1437
    .line 1438
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 1439
    .line 1440
    .line 1441
    new-instance v0, LB4/s;

    .line 1442
    .line 1443
    invoke-direct {v0, p0, v1}, LB4/s;-><init>(Lflix/com/vision/activities/player/SimpleVideoPlayer;I)V

    .line 1444
    .line 1445
    .line 1446
    const-wide/16 v3, 0x5dc

    .line 1447
    .line 1448
    invoke-virtual {p1, v0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1449
    .line 1450
    .line 1451
    :cond_1f
    :goto_c
    iget-object p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->I:Lflix/com/vision/models/Movie;

    .line 1452
    .line 1453
    if-eqz p1, :cond_21

    .line 1454
    .line 1455
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 1456
    .line 1457
    .line 1458
    move-result-object p1

    .line 1459
    iget-object p1, p1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 1460
    .line 1461
    const-string v0, "pref_sub_auto_dl"

    .line 1462
    .line 1463
    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 1464
    .line 1465
    .line 1466
    move-result p1

    .line 1467
    if-eqz p1, :cond_21

    .line 1468
    .line 1469
    invoke-virtual {p0}, Lflix/com/vision/activities/player/SimpleVideoPlayer;->n()Ljava/lang/String;

    .line 1470
    .line 1471
    .line 1472
    move-result-object p1

    .line 1473
    if-eqz p1, :cond_20

    .line 1474
    .line 1475
    new-instance v0, Ljava/io/File;

    .line 1476
    .line 1477
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1478
    .line 1479
    .line 1480
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 1481
    .line 1482
    .line 1483
    move-result p1

    .line 1484
    if-nez p1, :cond_21

    .line 1485
    .line 1486
    :cond_20
    invoke-virtual {p0, v2}, Lflix/com/vision/activities/player/SimpleVideoPlayer;->k(Z)V

    .line 1487
    .line 1488
    .line 1489
    :cond_21
    iget-object p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 1490
    .line 1491
    invoke-virtual {p1}, Lflix/com/vision/bvp/BetterVideoPlayer;->getToolbar()Landroidx/appcompat/widget/Toolbar;

    .line 1492
    .line 1493
    .line 1494
    move-result-object p1

    .line 1495
    if-nez p1, :cond_22

    .line 1496
    .line 1497
    goto :goto_d

    .line 1498
    :cond_22
    new-instance v0, LB4/u;

    .line 1499
    .line 1500
    invoke-direct {v0, p1, v2}, LB4/u;-><init>(Landroidx/appcompat/widget/Toolbar;I)V

    .line 1501
    .line 1502
    .line 1503
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 1504
    .line 1505
    .line 1506
    :goto_d
    invoke-virtual {p0}, Lflix/com/vision/activities/player/SimpleVideoPlayer;->m()V

    .line 1507
    .line 1508
    .line 1509
    return-void
.end method

.method public onDestroy()V
    .locals 9

    .line 1
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 6
    .line 7
    const-string v1, "trakt_user_logged_in"

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    sget-boolean v0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->Q0:Z

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iget-object v3, v0, Lflix/com/vision/App;->q:LD4/h;

    .line 25
    .line 26
    iget-object v4, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->I:Lflix/com/vision/models/Movie;

    .line 27
    .line 28
    iget v5, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->g0:I

    .line 29
    .line 30
    iget v6, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->h0:I

    .line 31
    .line 32
    invoke-virtual {p0}, Lflix/com/vision/activities/player/SimpleVideoPlayer;->o()F

    .line 33
    .line 34
    .line 35
    move-result v7

    .line 36
    sget-object v8, Lflix/com/vision/api/TraktAPI$ScrobbleState;->f:Lflix/com/vision/api/TraktAPI$ScrobbleState;

    .line 37
    .line 38
    invoke-virtual/range {v3 .. v8}, LD4/h;->scrobble(Lflix/com/vision/models/Movie;IIFLflix/com/vision/api/TraktAPI$ScrobbleState;)Lio/reactivex/Completable;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v0, v1}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    new-instance v1, LB4/r;

    .line 51
    .line 52
    const/4 v3, 0x4

    .line 53
    invoke-direct {v1, v3}, LB4/r;-><init>(I)V

    .line 54
    .line 55
    .line 56
    new-instance v3, LA4/c;

    .line 57
    .line 58
    const/16 v4, 0x8

    .line 59
    .line 60
    invoke-direct {v3, v4}, LA4/c;-><init>(I)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v1, v3}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 64
    .line 65
    .line 66
    :cond_0
    invoke-super {p0}, Le/v;->onDestroy()V

    .line 67
    .line 68
    .line 69
    sput-boolean v2, Lflix/com/vision/activities/player/SimpleVideoPlayer;->Q0:Z

    .line 70
    .line 71
    iget-object v0, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->T:Landroid/os/Handler;

    .line 72
    .line 73
    if-eqz v0, :cond_1

    .line 74
    .line 75
    iget-object v1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->U:LB4/C;

    .line 76
    .line 77
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 78
    .line 79
    .line 80
    :cond_1
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    iget-object v0, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 88
    .line 89
    if-eqz v0, :cond_2

    .line 90
    .line 91
    invoke-virtual {v0}, Lflix/com/vision/bvp/BetterVideoPlayer;->release()V

    .line 92
    .line 93
    .line 94
    :cond_2
    iget-object v0, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->C:Landroid/os/Handler;

    .line 95
    .line 96
    if-eqz v0, :cond_3

    .line 97
    .line 98
    const/4 v1, 0x0

    .line 99
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    :cond_3
    return-void
.end method

.method public onError(Lflix/com/vision/bvp/BetterVideoPlayer;Ljava/lang/Exception;)V
    .locals 2

    .line 1
    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Lflix/com/vision/activities/player/SimpleVideoPlayer;->z(Z)V

    .line 3
    .line 4
    .line 5
    if-eqz p2, :cond_3

    .line 6
    .line 7
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    const-string v1, "UnrecognizedInputFormatException"

    .line 30
    .line 31
    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    if-eqz p2, :cond_0

    .line 36
    .line 37
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    invoke-static {p0, p1}, LQ4/d;->newInstance(Landroid/app/Activity;Z)LQ4/d;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    const-string v0, "Unsupported Video Format"

    .line 46
    .line 47
    invoke-virtual {p1, v0}, LQ4/d;->setTitle(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    const-string v0, "Our internal Player could not decode the video. Please try with a more powerful Player like VLC or MX Player. You can change Player in Settings"

    .line 51
    .line 52
    invoke-virtual {p1, v0}, LQ4/d;->setMessage(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    new-instance v0, LB4/q;

    .line 56
    .line 57
    const/4 v1, 0x7

    .line 58
    invoke-direct {v0, p0, v1}, LB4/q;-><init>(Lflix/com/vision/activities/player/SimpleVideoPlayer;I)V

    .line 59
    .line 60
    .line 61
    const-string v1, "GOT IT"

    .line 62
    .line 63
    invoke-virtual {p1, v1, v0}, LQ4/d;->setButton1(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 64
    .line 65
    .line 66
    new-instance v0, LB4/q;

    .line 67
    .line 68
    const/16 v1, 0x8

    .line 69
    .line 70
    invoke-direct {v0, p0, v1}, LB4/q;-><init>(Lflix/com/vision/activities/player/SimpleVideoPlayer;I)V

    .line 71
    .line 72
    .line 73
    const-string v1, "OPEN SETTINGS"

    .line 74
    .line 75
    invoke-virtual {p1, v1, v0}, LQ4/d;->setButton2(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 76
    .line 77
    .line 78
    :try_start_0
    const-string v0, ""

    .line 79
    .line 80
    invoke-virtual {p1, p2, v0}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :catch_0
    move-exception p1

    .line 85
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 86
    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_0
    if-eqz v0, :cond_1

    .line 90
    .line 91
    const-string p1, "Source error"

    .line 92
    .line 93
    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 94
    .line 95
    .line 96
    move-result p1

    .line 97
    if-eqz p1, :cond_1

    .line 98
    .line 99
    const-string p1, "Unable to read video source. The file might be corrupted or the link expired."

    .line 100
    .line 101
    invoke-virtual {p0, p1}, Lflix/com/vision/activities/player/SimpleVideoPlayer;->G(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    return-void

    .line 105
    :cond_1
    if-eqz v0, :cond_2

    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_2
    const-string p1, "Unknown Playback Error: "

    .line 109
    .line 110
    invoke-static {p1, v0}, LA/i;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    :goto_0
    invoke-virtual {p0, v0}, Lflix/com/vision/activities/player/SimpleVideoPlayer;->G(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    :cond_3
    :goto_1
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object v2, v1

    .line 14
    :goto_0
    const/4 v3, 0x4

    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    if-eq p1, v3, :cond_2

    .line 18
    .line 19
    instance-of v2, v2, Landroidx/appcompat/widget/ActionMenuView;

    .line 20
    .line 21
    if-nez v2, :cond_1

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    iget-object v2, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 28
    .line 29
    iget-object v2, v2, Lflix/com/vision/bvp/BetterVideoPlayer;->C:Landroid/widget/SeekBar;

    .line 30
    .line 31
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-ne v0, v2, :cond_2

    .line 36
    .line 37
    :cond_1
    invoke-super {p0, p1, p2}, Le/v;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    return p1

    .line 42
    :cond_2
    iget-object p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->B:LT4/j;

    .line 43
    .line 44
    invoke-virtual {p1, p2}, LT4/j;->getDirectionPressed(Landroid/view/InputEvent;)I

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    const/4 p2, 0x7

    .line 49
    const/4 v0, 0x1

    .line 50
    if-eq p1, v0, :cond_15

    .line 51
    .line 52
    if-eq p1, p2, :cond_15

    .line 53
    .line 54
    const/4 v2, 0x2

    .line 55
    if-eq p1, v2, :cond_15

    .line 56
    .line 57
    const/4 v2, 0x6

    .line 58
    if-ne p1, v2, :cond_3

    .line 59
    .line 60
    goto/16 :goto_7

    .line 61
    .line 62
    :cond_3
    iget-object p2, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 63
    .line 64
    invoke-virtual {p2}, Lflix/com/vision/bvp/BetterVideoPlayer;->isControlsShown()Z

    .line 65
    .line 66
    .line 67
    move-result p2

    .line 68
    const/4 v2, 0x0

    .line 69
    const/16 v4, 0x8

    .line 70
    .line 71
    const-wide/16 v5, 0xc8

    .line 72
    .line 73
    if-nez p2, :cond_9

    .line 74
    .line 75
    if-ne p1, v3, :cond_9

    .line 76
    .line 77
    :try_start_0
    iget-object p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 78
    .line 79
    invoke-virtual {p1}, Lflix/com/vision/bvp/BetterVideoPlayer;->getToolbar()Landroidx/appcompat/widget/Toolbar;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getMenu()Landroid/view/Menu;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    sget p2, Lflix/com/vision/R$id;->play_pause_button:I

    .line 88
    .line 89
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    if-eqz p1, :cond_5

    .line 94
    .line 95
    iget-object p2, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 96
    .line 97
    invoke-virtual {p2}, Lflix/com/vision/bvp/BetterVideoPlayer;->isPlaying()Z

    .line 98
    .line 99
    .line 100
    move-result p2

    .line 101
    if-eqz p2, :cond_4

    .line 102
    .line 103
    sget p2, Lflix/com/vision/R$drawable;->pause_circle_40px:I

    .line 104
    .line 105
    goto :goto_1

    .line 106
    :catch_0
    move-exception p1

    .line 107
    goto :goto_2

    .line 108
    :cond_4
    sget p2, Lflix/com/vision/R$drawable;->play_circle_40px:I

    .line 109
    .line 110
    :goto_1
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 111
    .line 112
    .line 113
    :cond_5
    iget-object p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 114
    .line 115
    invoke-virtual {p1}, Lflix/com/vision/bvp/BetterVideoPlayer;->isPlaying()Z

    .line 116
    .line 117
    .line 118
    move-result p1

    .line 119
    if-eqz p1, :cond_7

    .line 120
    .line 121
    iget-object p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 122
    .line 123
    invoke-virtual {p1}, Lflix/com/vision/bvp/BetterVideoPlayer;->pause()V

    .line 124
    .line 125
    .line 126
    iget-object p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->f:Landroid/widget/ImageView;

    .line 127
    .line 128
    if-eqz p1, :cond_6

    .line 129
    .line 130
    iget-boolean p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->H0:Z

    .line 131
    .line 132
    if-eqz p1, :cond_6

    .line 133
    .line 134
    iget-object p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->u:Landroid/widget/RelativeLayout;

    .line 135
    .line 136
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 137
    .line 138
    .line 139
    :cond_6
    iget-object p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->K:Landroid/widget/ImageView;

    .line 140
    .line 141
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 142
    .line 143
    .line 144
    return v0

    .line 145
    :cond_7
    iget-object p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 146
    .line 147
    invoke-virtual {p1}, Lflix/com/vision/bvp/BetterVideoPlayer;->isPrepared()Z

    .line 148
    .line 149
    .line 150
    move-result p1

    .line 151
    if-eqz p1, :cond_13

    .line 152
    .line 153
    iget-object p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->K:Landroid/widget/ImageView;

    .line 154
    .line 155
    sget p2, Lflix/com/vision/R$drawable;->ic_play:I

    .line 156
    .line 157
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 158
    .line 159
    .line 160
    new-instance p1, Landroid/os/Handler;

    .line 161
    .line 162
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 163
    .line 164
    .line 165
    new-instance p2, LB4/s;

    .line 166
    .line 167
    const/16 v1, 0xb

    .line 168
    .line 169
    invoke-direct {p2, p0, v1}, LB4/s;-><init>(Lflix/com/vision/activities/player/SimpleVideoPlayer;I)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {p1, p2, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 173
    .line 174
    .line 175
    iget-object p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->f:Landroid/widget/ImageView;

    .line 176
    .line 177
    if-eqz p1, :cond_8

    .line 178
    .line 179
    iget-boolean p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->H0:Z

    .line 180
    .line 181
    if-eqz p1, :cond_8

    .line 182
    .line 183
    iget-object p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->u:Landroid/widget/RelativeLayout;

    .line 184
    .line 185
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 186
    .line 187
    .line 188
    :cond_8
    iget-object p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 189
    .line 190
    invoke-virtual {p1}, Lflix/com/vision/bvp/BetterVideoPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    .line 192
    .line 193
    return v0

    .line 194
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 195
    .line 196
    .line 197
    goto/16 :goto_6

    .line 198
    .line 199
    :cond_9
    iget-object p2, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 200
    .line 201
    invoke-virtual {p2}, Lflix/com/vision/bvp/BetterVideoPlayer;->showControls()V

    .line 202
    .line 203
    .line 204
    if-eq p1, v3, :cond_14

    .line 205
    .line 206
    const/4 p2, 0x5

    .line 207
    if-eq p1, p2, :cond_e

    .line 208
    .line 209
    packed-switch p1, :pswitch_data_0

    .line 210
    .line 211
    .line 212
    return v2

    .line 213
    :pswitch_0
    iget-object p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->M:Landroid/widget/LinearLayout;

    .line 214
    .line 215
    if-eqz p1, :cond_b

    .line 216
    .line 217
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 218
    .line 219
    .line 220
    move-result p1

    .line 221
    if-nez p1, :cond_b

    .line 222
    .line 223
    iget-object p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->J0:Landroid/os/CountDownTimer;

    .line 224
    .line 225
    if-eqz p1, :cond_a

    .line 226
    .line 227
    invoke-virtual {p1}, Landroid/os/CountDownTimer;->cancel()V

    .line 228
    .line 229
    .line 230
    :cond_a
    invoke-virtual {p0}, Lflix/com/vision/activities/player/SimpleVideoPlayer;->q()V

    .line 231
    .line 232
    .line 233
    :try_start_1
    const-string p1, "Auto-play cancelled"

    .line 234
    .line 235
    const/16 p2, 0x30

    .line 236
    .line 237
    invoke-static {p0, p1, v1, p2, v2}, LN4/a;->Success(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 238
    .line 239
    .line 240
    return v0

    .line 241
    :cond_b
    iget-object p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->t:Landroid/widget/RelativeLayout;

    .line 242
    .line 243
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 244
    .line 245
    .line 246
    move-result p1

    .line 247
    if-nez p1, :cond_c

    .line 248
    .line 249
    invoke-virtual {p0}, Lflix/com/vision/activities/player/SimpleVideoPlayer;->t()V

    .line 250
    .line 251
    .line 252
    return v0

    .line 253
    :cond_c
    iget-object p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 254
    .line 255
    invoke-virtual {p1}, Lflix/com/vision/bvp/BetterVideoPlayer;->isControlsShown()Z

    .line 256
    .line 257
    .line 258
    move-result p1

    .line 259
    if-eqz p1, :cond_d

    .line 260
    .line 261
    iget-object p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 262
    .line 263
    invoke-virtual {p1}, Lflix/com/vision/bvp/BetterVideoPlayer;->hideControls()V

    .line 264
    .line 265
    .line 266
    return v0

    .line 267
    :cond_d
    invoke-virtual {p0}, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A()V

    .line 268
    .line 269
    .line 270
    return v0

    .line 271
    :cond_e
    :pswitch_1
    :try_start_2
    iget-object p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 272
    .line 273
    invoke-virtual {p1}, Lflix/com/vision/bvp/BetterVideoPlayer;->isPlaying()Z

    .line 274
    .line 275
    .line 276
    move-result p1

    .line 277
    if-eqz p1, :cond_10

    .line 278
    .line 279
    iget-object p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->K:Landroid/widget/ImageView;

    .line 280
    .line 281
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 282
    .line 283
    .line 284
    iget-object p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 285
    .line 286
    invoke-virtual {p1}, Lflix/com/vision/bvp/BetterVideoPlayer;->pause()V

    .line 287
    .line 288
    .line 289
    iget-object p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->Y:Ljava/lang/String;

    .line 290
    .line 291
    if-eqz p1, :cond_f

    .line 292
    .line 293
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 294
    .line 295
    .line 296
    move-result-object p1

    .line 297
    iget-object p1, p1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 298
    .line 299
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 300
    .line 301
    .line 302
    move-result-object p1

    .line 303
    iget-object p2, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->Y:Ljava/lang/String;

    .line 304
    .line 305
    iget-object v1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 306
    .line 307
    invoke-virtual {v1}, Lflix/com/vision/bvp/BetterVideoPlayer;->getCurrentPosition()J

    .line 308
    .line 309
    .line 310
    move-result-wide v1

    .line 311
    long-to-int v1, v1

    .line 312
    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 313
    .line 314
    .line 315
    move-result-object p1

    .line 316
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 317
    .line 318
    .line 319
    goto :goto_3

    .line 320
    :catch_1
    move-exception p1

    .line 321
    goto :goto_5

    .line 322
    :cond_f
    :goto_3
    invoke-virtual {p0}, Lflix/com/vision/activities/player/SimpleVideoPlayer;->requestAndDisplayAd()V

    .line 323
    .line 324
    .line 325
    goto :goto_4

    .line 326
    :cond_10
    iget-object p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 327
    .line 328
    invoke-virtual {p1}, Lflix/com/vision/bvp/BetterVideoPlayer;->isPrepared()Z

    .line 329
    .line 330
    .line 331
    move-result p1

    .line 332
    if-eqz p1, :cond_12

    .line 333
    .line 334
    iget-object p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->f:Landroid/widget/ImageView;

    .line 335
    .line 336
    if-eqz p1, :cond_11

    .line 337
    .line 338
    iget-boolean p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->H0:Z

    .line 339
    .line 340
    if-eqz p1, :cond_11

    .line 341
    .line 342
    iget-object p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->u:Landroid/widget/RelativeLayout;

    .line 343
    .line 344
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 345
    .line 346
    .line 347
    :cond_11
    iget-object p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->K:Landroid/widget/ImageView;

    .line 348
    .line 349
    sget p2, Lflix/com/vision/R$drawable;->ic_play:I

    .line 350
    .line 351
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 352
    .line 353
    .line 354
    new-instance p1, Landroid/os/Handler;

    .line 355
    .line 356
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 357
    .line 358
    .line 359
    new-instance p2, LB4/s;

    .line 360
    .line 361
    const/16 v1, 0xc

    .line 362
    .line 363
    invoke-direct {p2, p0, v1}, LB4/s;-><init>(Lflix/com/vision/activities/player/SimpleVideoPlayer;I)V

    .line 364
    .line 365
    .line 366
    invoke-virtual {p1, p2, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 367
    .line 368
    .line 369
    iget-object p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 370
    .line 371
    invoke-virtual {p1}, Lflix/com/vision/bvp/BetterVideoPlayer;->start()V

    .line 372
    .line 373
    .line 374
    :cond_12
    :goto_4
    iget-object p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 375
    .line 376
    invoke-virtual {p1}, Lflix/com/vision/bvp/BetterVideoPlayer;->showControls()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 377
    .line 378
    .line 379
    return v0

    .line 380
    :goto_5
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 381
    .line 382
    .line 383
    :catch_2
    :cond_13
    :goto_6
    :pswitch_2
    return v0

    .line 384
    :cond_14
    iget-object p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 385
    .line 386
    invoke-virtual {p1}, Lflix/com/vision/bvp/BetterVideoPlayer;->toggleControls()V

    .line 387
    .line 388
    .line 389
    return v0

    .line 390
    :cond_15
    :goto_7
    iget-wide v1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->S:J

    .line 391
    .line 392
    const-wide/16 v3, -0x1

    .line 393
    .line 394
    cmp-long v1, v1, v3

    .line 395
    .line 396
    if-nez v1, :cond_16

    .line 397
    .line 398
    iget-object v1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 399
    .line 400
    invoke-virtual {v1}, Lflix/com/vision/bvp/BetterVideoPlayer;->getCurrentPosition()J

    .line 401
    .line 402
    .line 403
    move-result-wide v1

    .line 404
    iput-wide v1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->S:J

    .line 405
    .line 406
    iget-object v1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 407
    .line 408
    invoke-virtual {v1}, Lflix/com/vision/bvp/BetterVideoPlayer;->isPlaying()Z

    .line 409
    .line 410
    .line 411
    move-result v1

    .line 412
    if-eqz v1, :cond_16

    .line 413
    .line 414
    iget-object v1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 415
    .line 416
    invoke-virtual {v1}, Lflix/com/vision/bvp/BetterVideoPlayer;->pause()V

    .line 417
    .line 418
    .line 419
    :cond_16
    if-eq p1, v0, :cond_18

    .line 420
    .line 421
    if-ne p1, p2, :cond_17

    .line 422
    .line 423
    goto :goto_8

    .line 424
    :cond_17
    move p1, v0

    .line 425
    goto :goto_9

    .line 426
    :cond_18
    :goto_8
    const/4 p1, -0x1

    .line 427
    :goto_9
    mul-int/lit16 p1, p1, 0x3a98

    .line 428
    .line 429
    int-to-long p1, p1

    .line 430
    iget-wide v1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->S:J

    .line 431
    .line 432
    add-long/2addr v1, p1

    .line 433
    iput-wide v1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->S:J

    .line 434
    .line 435
    const-wide/16 p1, 0x0

    .line 436
    .line 437
    cmp-long v1, v1, p1

    .line 438
    .line 439
    if-gez v1, :cond_19

    .line 440
    .line 441
    iput-wide p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->S:J

    .line 442
    .line 443
    :cond_19
    iget-wide p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->S:J

    .line 444
    .line 445
    iget-object v1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 446
    .line 447
    invoke-virtual {v1}, Lflix/com/vision/bvp/BetterVideoPlayer;->getDuration()J

    .line 448
    .line 449
    .line 450
    move-result-wide v1

    .line 451
    cmp-long p1, p1, v1

    .line 452
    .line 453
    if-lez p1, :cond_1a

    .line 454
    .line 455
    iget-object p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 456
    .line 457
    invoke-virtual {p1}, Lflix/com/vision/bvp/BetterVideoPlayer;->getDuration()J

    .line 458
    .line 459
    .line 460
    move-result-wide p1

    .line 461
    iput-wide p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->S:J

    .line 462
    .line 463
    :cond_1a
    iget-object p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 464
    .line 465
    iget-wide v1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->S:J

    .line 466
    .line 467
    invoke-virtual {p1, v1, v2}, Lflix/com/vision/bvp/BetterVideoPlayer;->updateVisualSeek(J)V

    .line 468
    .line 469
    .line 470
    iget-object p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->T:Landroid/os/Handler;

    .line 471
    .line 472
    iget-object p2, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->U:LB4/C;

    .line 473
    .line 474
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 475
    .line 476
    .line 477
    const-wide/16 v1, 0x190

    .line 478
    .line 479
    invoke-virtual {p1, p2, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 480
    .line 481
    .line 482
    return v0

    .line 483
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onMessageEvent()V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 10
    iget-object v0, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A:Lflix/com/vision/bvp/BetterVideoPlayer;

    invoke-virtual {v0}, Lflix/com/vision/bvp/BetterVideoPlayer;->isControlsShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11
    iget-object v0, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A:Lflix/com/vision/bvp/BetterVideoPlayer;

    invoke-virtual {v0}, Lflix/com/vision/bvp/BetterVideoPlayer;->hideControls()V

    :cond_0
    return-void
.end method

.method public onMessageEvent(Lflix/com/vision/models/CastAction;)V
    .locals 8
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 18
    iget-boolean v0, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->D0:Z

    if-eqz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->D0:Z

    if-eqz p1, :cond_7

    .line 20
    iget-object v1, p1, Lflix/com/vision/models/CastAction;->file:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 21
    const-string v2, ".srt"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    const/16 v3, 0x30

    const/4 v4, 0x0

    if-nez v1, :cond_2

    iget-object v1, p1, Lflix/com/vision/models/CastAction;->file:Ljava/lang/String;

    const-string v5, ".vtt"

    invoke-virtual {v1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 22
    :cond_1
    :try_start_0
    const-string p1, "Only SRT and VTT format are supported. Please choose another file"

    invoke-static {p0, p1, v4, v3, v0}, LN4/a;->Success(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 23
    :cond_2
    :goto_0
    iget-object v0, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A:Lflix/com/vision/bvp/BetterVideoPlayer;

    iget-object v1, p1, Lflix/com/vision/models/CastAction;->file:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lflix/com/vision/bvp/subtitle/CaptionsView$CMime;->b:Lflix/com/vision/bvp/subtitle/CaptionsView$CMime;

    goto :goto_1

    :cond_3
    sget-object v2, Lflix/com/vision/bvp/subtitle/CaptionsView$CMime;->e:Lflix/com/vision/bvp/subtitle/CaptionsView$CMime;

    :goto_1
    const-string v5, ""

    invoke-virtual {v0, v1, v2, v5}, Lflix/com/vision/bvp/BetterVideoPlayer;->setCaptionsPath(Ljava/lang/String;Lflix/com/vision/bvp/subtitle/CaptionsView$CMime;Ljava/lang/String;)V

    .line 24
    invoke-virtual {p0}, Lflix/com/vision/activities/player/SimpleVideoPlayer;->H()V

    .line 25
    iget-object v0, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A:Lflix/com/vision/bvp/BetterVideoPlayer;

    invoke-virtual {v0}, Lflix/com/vision/bvp/BetterVideoPlayer;->start()V

    .line 26
    iget-object v0, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->f:Landroid/widget/ImageView;

    const/16 v1, 0x8

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->H0:Z

    if-eqz v0, :cond_4

    .line 27
    iget-object v0, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->u:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 28
    :cond_4
    iget-object v0, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->K:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 29
    iget-object v0, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A:Lflix/com/vision/bvp/BetterVideoPlayer;

    invoke-virtual {v0}, Lflix/com/vision/bvp/BetterVideoPlayer;->getToolbar()Landroidx/appcompat/widget/Toolbar;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    sget v2, Lflix/com/vision/R$id;->play_pause_button:I

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 30
    sget v2, Lflix/com/vision/R$drawable;->pause_circle_40px:I

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 31
    :cond_5
    iget-object v0, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A:Lflix/com/vision/bvp/BetterVideoPlayer;

    invoke-virtual {v0}, Lflix/com/vision/bvp/BetterVideoPlayer;->hideControls()V

    .line 32
    iget-object v0, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->L:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 33
    iget-object v0, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->I:Lflix/com/vision/models/Movie;

    invoke-virtual {v0}, Lflix/com/vision/models/Movie;->isSeries()Z

    move-result v0

    const-string v1, "subtitle"

    if-nez v0, :cond_6

    .line 34
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    move-result-object v0

    iget-object v0, v0, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->I:Lflix/com/vision/models/Movie;

    invoke-virtual {v5}, Lflix/com/vision/models/Movie;->getMovieId()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object p1, p1, Lflix/com/vision/models/CastAction;->file:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_2

    .line 35
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->I:Lflix/com/vision/models/Movie;

    invoke-virtual {v2}, Lflix/com/vision/models/Movie;->getMovieId()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->g0:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->h0:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 36
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    move-result-object v2

    iget-object v2, v2, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 37
    invoke-static {v0, v1}, LA/i;->B(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 38
    iget-object p1, p1, Lflix/com/vision/models/CastAction;->file:Ljava/lang/String;

    invoke-interface {v2, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 39
    :goto_2
    :try_start_1
    const-string p1, "Subtitles Loaded"

    const/4 v0, 0x0

    invoke-static {p0, p1, v4, v3, v0}, LN4/a;->Success(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :cond_7
    if-eqz p1, :cond_8

    .line 40
    iget-object p1, p1, Lflix/com/vision/models/CastAction;->file:Ljava/lang/String;

    if-nez p1, :cond_8

    .line 41
    invoke-virtual {p0}, Lflix/com/vision/activities/player/SimpleVideoPlayer;->B()V

    :catch_0
    :cond_8
    :goto_3
    return-void
.end method

.method public onMessageEvent(Lflix/com/vision/models/PlayerEvent;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    iget-object v0, p1, Lflix/com/vision/models/PlayerEvent;->vs:Lflix/com/vision/models/VideoSource;

    if-eqz v0, :cond_2

    .line 2
    iget-boolean v1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->R:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->v0:Z

    if-nez v1, :cond_2

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->R:Z

    const/4 v1, 0x1

    .line 4
    iput-boolean v1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->v0:Z

    .line 5
    iget-object v2, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->r:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->r:Ljava/util/ArrayList;

    iget-object v2, p1, Lflix/com/vision/models/PlayerEvent;->vs:Lflix/com/vision/models/VideoSource;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    :cond_0
    sget-object v0, Lflix/com/vision/App;->B:Ljava/util/ArrayList;

    iget-object v2, p1, Lflix/com/vision/models/PlayerEvent;->vs:Lflix/com/vision/models/VideoSource;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 8
    sget-object v0, Lflix/com/vision/App;->B:Ljava/util/ArrayList;

    iget-object v2, p1, Lflix/com/vision/models/PlayerEvent;->vs:Lflix/com/vision/models/VideoSource;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    :cond_1
    iget-object p1, p1, Lflix/com/vision/models/PlayerEvent;->vs:Lflix/com/vision/models/VideoSource;

    invoke-virtual {p0, p1, v1}, Lflix/com/vision/activities/player/SimpleVideoPlayer;->y(Lflix/com/vision/models/VideoSource;Z)V

    :cond_2
    return-void
.end method

.method public onMessageEvent(Lflix/com/vision/models/SubEvent;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 12
    iget v0, p1, Lflix/com/vision/models/SubEvent;->color:I

    if-lez v0, :cond_0

    .line 13
    iget-object v1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A:Lflix/com/vision/bvp/BetterVideoPlayer;

    invoke-virtual {v1, v0}, Lflix/com/vision/bvp/BetterVideoPlayer;->setSubColor(I)V

    .line 14
    :cond_0
    iget v0, p1, Lflix/com/vision/models/SubEvent;->size_index:I

    if-lez v0, :cond_1

    .line 15
    invoke-virtual {p0, v0}, Lflix/com/vision/activities/player/SimpleVideoPlayer;->J(I)V

    .line 16
    :cond_1
    iget-object v0, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A:Lflix/com/vision/bvp/BetterVideoPlayer;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lflix/com/vision/bvp/BetterVideoPlayer;->isCaptionActive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 17
    iget-object v0, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A:Lflix/com/vision/bvp/BetterVideoPlayer;

    iget-object p1, p1, Lflix/com/vision/models/SubEvent;->encoding:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lflix/com/vision/bvp/BetterVideoPlayer;->changeEncoding(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 5
    .line 6
    .line 7
    const-string v0, "streamUrl"

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->y:Ljava/lang/String;

    .line 14
    .line 15
    const-string v0, "movie"

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lflix/com/vision/models/Movie;

    .line 22
    .line 23
    iput-object v0, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->I:Lflix/com/vision/models/Movie;

    .line 24
    .line 25
    const-string v0, "sources"

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iput-object v0, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->r:Ljava/util/ArrayList;

    .line 32
    .line 33
    const-string v0, "movie_id"

    .line 34
    .line 35
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    iput-object p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->Y:Ljava/lang/String;

    .line 40
    .line 41
    iget-object p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->B0:Ljava/util/ArrayList;

    .line 42
    .line 43
    if-eqz p1, :cond_0

    .line 44
    .line 45
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 52
    .line 53
    .line 54
    iput-object p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->B0:Ljava/util/ArrayList;

    .line 55
    .line 56
    :goto_0
    const/4 p1, -0x1

    .line 57
    iput p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->C0:I

    .line 58
    .line 59
    const/4 p1, 0x0

    .line 60
    iput-boolean p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->D0:Z

    .line 61
    .line 62
    iget-object v0, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 63
    .line 64
    if-eqz v0, :cond_1

    .line 65
    .line 66
    invoke-virtual {v0}, Lflix/com/vision/bvp/BetterVideoPlayer;->removeCaptions()V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0}, Lflix/com/vision/activities/player/SimpleVideoPlayer;->H()V

    .line 70
    .line 71
    .line 72
    iput-boolean p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->b0:Z

    .line 73
    .line 74
    iget-object v0, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->J0:Landroid/os/CountDownTimer;

    .line 75
    .line 76
    if-eqz v0, :cond_1

    .line 77
    .line 78
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 79
    .line 80
    .line 81
    :cond_1
    iput-boolean p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->R:Z

    .line 82
    .line 83
    iput-boolean p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->v0:Z

    .line 84
    .line 85
    invoke-virtual {p0}, Lflix/com/vision/activities/player/SimpleVideoPlayer;->u()V

    .line 86
    .line 87
    .line 88
    iget-object v0, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->y:Ljava/lang/String;

    .line 89
    .line 90
    if-eqz v0, :cond_2

    .line 91
    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    const-string v1, "onNewIntent: Loading new stream: "

    .line 95
    .line 96
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    iget-object v1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->y:Ljava/lang/String;

    .line 100
    .line 101
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    new-array v1, p1, [Ljava/lang/Object;

    .line 109
    .line 110
    invoke-static {v0, v1}, Lflix/com/vision/bvp/BetterVideoPlayer;->LOG(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    iget-object v0, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 114
    .line 115
    invoke-virtual {v0}, Lflix/com/vision/bvp/BetterVideoPlayer;->stop()V

    .line 116
    .line 117
    .line 118
    iget-object v0, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 119
    .line 120
    invoke-virtual {v0}, Lflix/com/vision/bvp/BetterVideoPlayer;->reset()V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p0}, Lflix/com/vision/activities/player/SimpleVideoPlayer;->I()V

    .line 124
    .line 125
    .line 126
    iget-object v0, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->y:Ljava/lang/String;

    .line 127
    .line 128
    const/4 v1, 0x1

    .line 129
    invoke-virtual {p0, v0, v1}, Lflix/com/vision/activities/player/SimpleVideoPlayer;->playLink(Ljava/lang/String;Z)V

    .line 130
    .line 131
    .line 132
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    iget-object v0, v0, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 137
    .line 138
    const-string v1, "pref_sub_auto_dl"

    .line 139
    .line 140
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 141
    .line 142
    .line 143
    move-result v0

    .line 144
    if-eqz v0, :cond_2

    .line 145
    .line 146
    invoke-virtual {p0, p1}, Lflix/com/vision/activities/player/SimpleVideoPlayer;->k(Z)V

    .line 147
    .line 148
    .line 149
    :cond_2
    return-void
.end method

.method public onPause()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/H;->onPause()V

    .line 2
    .line 3
    .line 4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 5
    .line 6
    const/16 v1, 0x18

    .line 7
    .line 8
    if-ge v0, v1, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0}, Lflix/com/vision/bvp/BetterVideoPlayer;->pause()V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->T:Landroid/os/Handler;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    iget-object v1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->U:LB4/C;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 24
    .line 25
    .line 26
    :cond_1
    iget-object v0, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->y0:Lcom/google/android/gms/cast/framework/SessionManager;

    .line 27
    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    iget-object v1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->z0:LB4/L;

    .line 31
    .line 32
    const-class v2, Lcom/google/android/gms/cast/framework/CastSession;

    .line 33
    .line 34
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/cast/framework/SessionManager;->removeSessionManagerListener(Lcom/google/android/gms/cast/framework/SessionManagerListener;Ljava/lang/Class;)V

    .line 35
    .line 36
    .line 37
    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->x0:Lcom/google/android/gms/cast/framework/CastSession;

    .line 39
    .line 40
    :cond_2
    return-void
.end method

.method public onPaused(Lflix/com/vision/bvp/BetterVideoPlayer;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lflix/com/vision/activities/player/SimpleVideoPlayer;->w()V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->c0:Landroid/os/Handler;

    .line 5
    .line 6
    iget-object v0, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->d0:LB4/E;

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object p1, p1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 16
    .line 17
    const-string v0, "trakt_user_logged_in"

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iget-object v0, p1, Lflix/com/vision/App;->q:LD4/h;

    .line 31
    .line 32
    iget-object v1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->I:Lflix/com/vision/models/Movie;

    .line 33
    .line 34
    iget v2, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->g0:I

    .line 35
    .line 36
    iget v3, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->h0:I

    .line 37
    .line 38
    invoke-virtual {p0}, Lflix/com/vision/activities/player/SimpleVideoPlayer;->o()F

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    sget-object v5, Lflix/com/vision/api/TraktAPI$ScrobbleState;->e:Lflix/com/vision/api/TraktAPI$ScrobbleState;

    .line 43
    .line 44
    invoke-virtual/range {v0 .. v5}, LD4/h;->scrobble(Lflix/com/vision/models/Movie;IIFLflix/com/vision/api/TraktAPI$ScrobbleState;)Lio/reactivex/Completable;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {p1, v0}, Lio/reactivex/Completable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    new-instance v0, LB4/r;

    .line 57
    .line 58
    const/4 v1, 0x2

    .line 59
    invoke-direct {v0, v1}, LB4/r;-><init>(I)V

    .line 60
    .line 61
    .line 62
    new-instance v1, LA4/c;

    .line 63
    .line 64
    const/4 v2, 0x5

    .line 65
    invoke-direct {v1, v2}, LA4/c;-><init>(I)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, v0, v1}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 69
    .line 70
    .line 71
    :cond_0
    return-void
.end method

.method public onPictureInPictureModeChanged(ZLandroid/content/res/Configuration;)V
    .locals 6

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/activity/ComponentActivity;->onPictureInPictureModeChanged(ZLandroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    iget-object p2, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 5
    .line 6
    invoke-virtual {p2}, Lflix/com/vision/bvp/BetterVideoPlayer;->getSubtitleView()Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    sput-boolean p1, Lflix/com/vision/activities/player/SimpleVideoPlayer;->Q0:Z

    .line 11
    .line 12
    const/high16 v0, 0x3f800000    # 1.0f

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    const/4 v2, 0x0

    .line 16
    if-eqz p1, :cond_4

    .line 17
    .line 18
    iget-object p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 19
    .line 20
    invoke-virtual {p1}, Lflix/com/vision/bvp/BetterVideoPlayer;->hideControls()V

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 24
    .line 25
    invoke-virtual {p1}, Lflix/com/vision/bvp/BetterVideoPlayer;->hideToolbar()V

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->K:Landroid/widget/ImageView;

    .line 29
    .line 30
    const/16 v3, 0x8

    .line 31
    .line 32
    if-eqz p1, :cond_0

    .line 33
    .line 34
    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 35
    .line 36
    .line 37
    :cond_0
    iget-object p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 38
    .line 39
    invoke-virtual {p1, v2}, Lflix/com/vision/bvp/BetterVideoPlayer;->setResizeMode(I)V

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->L:Landroid/widget/LinearLayout;

    .line 43
    .line 44
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 45
    .line 46
    .line 47
    iget-object p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->n:Landroid/widget/TextClock;

    .line 48
    .line 49
    if-eqz p1, :cond_1

    .line 50
    .line 51
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 52
    .line 53
    .line 54
    :cond_1
    iget-object p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->M:Landroid/widget/LinearLayout;

    .line 55
    .line 56
    if-eqz p1, :cond_2

    .line 57
    .line 58
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 59
    .line 60
    .line 61
    :cond_2
    :try_start_0
    iget-object p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 62
    .line 63
    invoke-virtual {p0}, Le/v;->getResources()Landroid/content/res/Resources;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    const/4 v4, 0x2

    .line 72
    const/high16 v5, 0x41000000    # 8.0f

    .line 73
    .line 74
    invoke-static {v4, v5, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 75
    .line 76
    .line 77
    move-result v3

    .line 78
    float-to-int v3, v3

    .line 79
    invoke-virtual {p1, v3}, Lflix/com/vision/bvp/BetterVideoPlayer;->setSubSize(I)V

    .line 80
    .line 81
    .line 82
    if-eqz p2, :cond_8

    .line 83
    .line 84
    instance-of p1, p2, Landroid/widget/TextView;

    .line 85
    .line 86
    if-eqz p1, :cond_3

    .line 87
    .line 88
    move-object p1, p2

    .line 89
    check-cast p1, Landroid/widget/TextView;

    .line 90
    .line 91
    const/4 v3, 0x0

    .line 92
    invoke-virtual {p1, v3, v0}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p2, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 96
    .line 97
    .line 98
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    instance-of p1, p1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 103
    .line 104
    if-eqz p1, :cond_8

    .line 105
    .line 106
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 111
    .line 112
    invoke-virtual {p0}, Le/v;->getResources()Landroid/content/res/Resources;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    const/high16 v3, 0x40000000    # 2.0f

    .line 121
    .line 122
    invoke-static {v1, v3, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    float-to-int v0, v0

    .line 127
    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 128
    .line 129
    iput v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 130
    .line 131
    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    .line 133
    .line 134
    return-void

    .line 135
    :cond_4
    iget-object p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->K:Landroid/widget/ImageView;

    .line 136
    .line 137
    if-eqz p1, :cond_5

    .line 138
    .line 139
    iget-object p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 140
    .line 141
    invoke-virtual {p1}, Lflix/com/vision/bvp/BetterVideoPlayer;->isPlaying()Z

    .line 142
    .line 143
    .line 144
    move-result p1

    .line 145
    if-nez p1, :cond_5

    .line 146
    .line 147
    iget-object p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->K:Landroid/widget/ImageView;

    .line 148
    .line 149
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 150
    .line 151
    .line 152
    :cond_5
    iget-object p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 153
    .line 154
    invoke-virtual {p1}, Lflix/com/vision/bvp/BetterVideoPlayer;->isControlsShown()Z

    .line 155
    .line 156
    .line 157
    move-result p1

    .line 158
    if-eqz p1, :cond_6

    .line 159
    .line 160
    iget-object p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->L:Landroid/widget/LinearLayout;

    .line 161
    .line 162
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 163
    .line 164
    .line 165
    :cond_6
    new-instance p1, Landroid/os/Handler;

    .line 166
    .line 167
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 168
    .line 169
    .line 170
    move-result-object v2

    .line 171
    invoke-direct {p1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 172
    .line 173
    .line 174
    new-instance v2, LB4/s;

    .line 175
    .line 176
    const/4 v3, 0x0

    .line 177
    invoke-direct {v2, p0, v3}, LB4/s;-><init>(Lflix/com/vision/activities/player/SimpleVideoPlayer;I)V

    .line 178
    .line 179
    .line 180
    const-wide/16 v3, 0x12c

    .line 181
    .line 182
    invoke-virtual {p1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 183
    .line 184
    .line 185
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 186
    .line 187
    .line 188
    move-result-object p1

    .line 189
    iget-object p1, p1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 190
    .line 191
    const-string v2, "pref_subtitle_size"

    .line 192
    .line 193
    const/4 v3, 0x3

    .line 194
    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 195
    .line 196
    .line 197
    move-result p1

    .line 198
    invoke-virtual {p0, p1}, Lflix/com/vision/activities/player/SimpleVideoPlayer;->J(I)V

    .line 199
    .line 200
    .line 201
    if-eqz p2, :cond_8

    .line 202
    .line 203
    :try_start_1
    instance-of p1, p2, Landroid/widget/TextView;

    .line 204
    .line 205
    if-eqz p1, :cond_7

    .line 206
    .line 207
    move-object p1, p2

    .line 208
    check-cast p1, Landroid/widget/TextView;

    .line 209
    .line 210
    invoke-virtual {p0}, Le/v;->getResources()Landroid/content/res/Resources;

    .line 211
    .line 212
    .line 213
    move-result-object v2

    .line 214
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 215
    .line 216
    .line 217
    move-result-object v2

    .line 218
    const/high16 v3, 0x40800000    # 4.0f

    .line 219
    .line 220
    invoke-static {v1, v3, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 221
    .line 222
    .line 223
    move-result v2

    .line 224
    invoke-virtual {p1, v2, v0}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 225
    .line 226
    .line 227
    :cond_7
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 228
    .line 229
    .line 230
    move-result-object p1

    .line 231
    instance-of p1, p1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 232
    .line 233
    if-eqz p1, :cond_8

    .line 234
    .line 235
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 236
    .line 237
    .line 238
    move-result-object p1

    .line 239
    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 240
    .line 241
    invoke-virtual {p0}, Le/v;->getResources()Landroid/content/res/Resources;

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    const/high16 v2, 0x42200000    # 40.0f

    .line 250
    .line 251
    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 252
    .line 253
    .line 254
    move-result v0

    .line 255
    float-to-int v0, v0

    .line 256
    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 257
    .line 258
    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 259
    .line 260
    .line 261
    :catch_0
    :cond_8
    return-void
.end method

.method public onPrepared(Lflix/com/vision/bvp/BetterVideoPlayer;)V
    .locals 4

    .line 1
    new-instance v0, Landroid/os/Handler;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    new-instance v1, LB4/d;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    invoke-direct {v1, p1, v2}, LB4/d;-><init>(Lflix/com/vision/bvp/BetterVideoPlayer;I)V

    .line 13
    .line 14
    .line 15
    const-wide/16 v2, 0xc8

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public onPreparing()V
    .locals 0

    return-void
.end method

.method public onProgressUpdateChanged(II)V
    .locals 6

    .line 1
    iget-boolean p2, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->L0:Z

    .line 2
    .line 3
    if-nez p2, :cond_a

    .line 4
    .line 5
    iget-object v0, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->P0:Lflix/com/vision/models/IntroDbResponse$Segment;

    .line 6
    .line 7
    if-eqz v0, :cond_a

    .line 8
    .line 9
    iget-wide v1, v0, Lflix/com/vision/models/IntroDbResponse$Segment;->confidence:D

    .line 10
    .line 11
    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    .line 12
    .line 13
    cmpg-double v1, v1, v3

    .line 14
    .line 15
    if-gez v1, :cond_0

    .line 16
    .line 17
    goto/16 :goto_1

    .line 18
    .line 19
    :cond_0
    int-to-long v2, p1

    .line 20
    iget-wide v4, v0, Lflix/com/vision/models/IntroDbResponse$Segment;->start_ms:J

    .line 21
    .line 22
    cmp-long p1, v2, v4

    .line 23
    .line 24
    if-ltz p1, :cond_a

    .line 25
    .line 26
    iget-wide v4, v0, Lflix/com/vision/models/IntroDbResponse$Segment;->end_ms:J

    .line 27
    .line 28
    cmp-long p1, v2, v4

    .line 29
    .line 30
    if-gez p1, :cond_a

    .line 31
    .line 32
    if-gez v1, :cond_1

    .line 33
    .line 34
    goto/16 :goto_1

    .line 35
    .line 36
    :cond_1
    if-eqz p2, :cond_2

    .line 37
    .line 38
    goto/16 :goto_1

    .line 39
    .line 40
    :cond_2
    iget-object p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 41
    .line 42
    invoke-virtual {p1}, Lflix/com/vision/bvp/BetterVideoPlayer;->getCurrentPosition()J

    .line 43
    .line 44
    .line 45
    move-result-wide p1

    .line 46
    iget-object v0, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->P0:Lflix/com/vision/models/IntroDbResponse$Segment;

    .line 47
    .line 48
    iget-wide v0, v0, Lflix/com/vision/models/IntroDbResponse$Segment;->end_ms:J

    .line 49
    .line 50
    cmp-long p1, p1, v0

    .line 51
    .line 52
    if-lez p1, :cond_3

    .line 53
    .line 54
    goto/16 :goto_1

    .line 55
    .line 56
    :cond_3
    const/4 p1, 0x1

    .line 57
    iput-boolean p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->L0:Z

    .line 58
    .line 59
    sget p2, Lflix/com/vision/R$id;->btn_close_skip_intro:I

    .line 60
    .line 61
    invoke-virtual {p0, p2}, Le/v;->findViewById(I)Landroid/view/View;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    check-cast p2, Landroid/widget/ImageView;

    .line 66
    .line 67
    sget v0, Lflix/com/vision/R$id;->skip_intro_button_1:I

    .line 68
    .line 69
    invoke-virtual {p0, v0}, Le/v;->findViewById(I)Landroid/view/View;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    check-cast v0, Landroid/widget/ImageView;

    .line 74
    .line 75
    sget v1, Lflix/com/vision/R$id;->current_episode_name:I

    .line 76
    .line 77
    invoke-virtual {p0, v1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    check-cast v1, Landroid/widget/TextView;

    .line 82
    .line 83
    if-eqz v0, :cond_4

    .line 84
    .line 85
    new-instance v2, LB4/q;

    .line 86
    .line 87
    const/4 v3, 0x4

    .line 88
    invoke-direct {v2, p0, v3}, LB4/q;-><init>(Lflix/com/vision/activities/player/SimpleVideoPlayer;I)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    .line 93
    .line 94
    :cond_4
    if-eqz p2, :cond_5

    .line 95
    .line 96
    new-instance v2, LB4/q;

    .line 97
    .line 98
    const/4 v3, 0x5

    .line 99
    invoke-direct {v2, p0, v3}, LB4/q;-><init>(Lflix/com/vision/activities/player/SimpleVideoPlayer;I)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p2, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    .line 104
    .line 105
    :cond_5
    if-eqz v1, :cond_6

    .line 106
    .line 107
    :try_start_0
    iget-object p2, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->P:Ljava/util/ArrayList;

    .line 108
    .line 109
    iget v2, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->h0:I

    .line 110
    .line 111
    sub-int/2addr v2, p1

    .line 112
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    check-cast p1, Lflix/com/vision/models/Episode;

    .line 117
    .line 118
    iget-object p1, p1, Lflix/com/vision/models/Episode;->title:Ljava/lang/String;

    .line 119
    .line 120
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    .line 122
    .line 123
    :catch_0
    :cond_6
    sget p1, Lflix/com/vision/R$id;->skip_intro_countdown_progress:I

    .line 124
    .line 125
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    check-cast p1, Landroid/widget/ProgressBar;

    .line 130
    .line 131
    iget-object p2, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->N:Landroid/widget/LinearLayout;

    .line 132
    .line 133
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    .line 134
    .line 135
    .line 136
    move-result p2

    .line 137
    if-nez p2, :cond_7

    .line 138
    .line 139
    goto :goto_0

    .line 140
    :cond_7
    iget-object p2, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->N:Landroid/widget/LinearLayout;

    .line 141
    .line 142
    const/4 v1, 0x0

    .line 143
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 144
    .line 145
    .line 146
    iget-object p2, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->N:Landroid/widget/LinearLayout;

    .line 147
    .line 148
    iget-object v1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->p0:Landroid/view/animation/Animation;

    .line 149
    .line 150
    invoke-virtual {p2, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 151
    .line 152
    .line 153
    :goto_0
    if-eqz v0, :cond_8

    .line 154
    .line 155
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 156
    .line 157
    .line 158
    :cond_8
    iget-object p2, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->K0:Landroid/os/CountDownTimer;

    .line 159
    .line 160
    if-eqz p2, :cond_9

    .line 161
    .line 162
    invoke-virtual {p2}, Landroid/os/CountDownTimer;->cancel()V

    .line 163
    .line 164
    .line 165
    :cond_9
    new-instance p2, LB4/B;

    .line 166
    .line 167
    invoke-direct {p2, p0, p1}, LB4/B;-><init>(Lflix/com/vision/activities/player/SimpleVideoPlayer;Landroid/widget/ProgressBar;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {p2}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    iput-object p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->K0:Landroid/os/CountDownTimer;

    .line 175
    .line 176
    :cond_a
    :goto_1
    return-void
.end method

.method public onResume()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/H;->onResume()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->b:Z

    .line 6
    .line 7
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget-object v1, v1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 12
    .line 13
    const-string v2, "pref_auto_play_next_ep"

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    iput-boolean v1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->a0:Z

    .line 21
    .line 22
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    iget-boolean v1, v1, Lflix/com/vision/App;->b:Z

    .line 27
    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    iget-object v1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 31
    .line 32
    if-eqz v1, :cond_0

    .line 33
    .line 34
    invoke-virtual {v1}, Lflix/com/vision/bvp/BetterVideoPlayer;->removeCaptions()V

    .line 35
    .line 36
    .line 37
    :cond_0
    const/4 v1, -0x1

    .line 38
    iput v1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->C0:I

    .line 39
    .line 40
    new-instance v1, Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .line 44
    .line 45
    iput-object v1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->B0:Ljava/util/ArrayList;

    .line 46
    .line 47
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    iput-boolean v0, v1, Lflix/com/vision/App;->b:Z

    .line 52
    .line 53
    invoke-virtual {p0}, Lflix/com/vision/activities/player/SimpleVideoPlayer;->H()V

    .line 54
    .line 55
    .line 56
    :cond_1
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    iget-object v1, v1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 61
    .line 62
    const-string v2, "pref_show_time"

    .line 63
    .line 64
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    iput-boolean v0, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->m:Z

    .line 69
    .line 70
    iget-object v0, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->y0:Lcom/google/android/gms/cast/framework/SessionManager;

    .line 71
    .line 72
    if-eqz v0, :cond_2

    .line 73
    .line 74
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/SessionManager;->getCurrentCastSession()Lcom/google/android/gms/cast/framework/CastSession;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    iput-object v0, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->x0:Lcom/google/android/gms/cast/framework/CastSession;

    .line 79
    .line 80
    iget-object v0, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->y0:Lcom/google/android/gms/cast/framework/SessionManager;

    .line 81
    .line 82
    iget-object v1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->z0:LB4/L;

    .line 83
    .line 84
    const-class v2, Lcom/google/android/gms/cast/framework/CastSession;

    .line 85
    .line 86
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/cast/framework/SessionManager;->addSessionManagerListener(Lcom/google/android/gms/cast/framework/SessionManagerListener;Ljava/lang/Class;)V

    .line 87
    .line 88
    .line 89
    :cond_2
    return-void
.end method

.method public onStarted(Lflix/com/vision/bvp/BetterVideoPlayer;)V
    .locals 10

    .line 1
    const-string v0, "Resuming playback at: "

    .line 2
    .line 3
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v1, v1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 8
    .line 9
    const-string v2, "trakt_user_logged_in"

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    iget-object v4, v1, Lflix/com/vision/App;->q:LD4/h;

    .line 23
    .line 24
    iget-object v5, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->I:Lflix/com/vision/models/Movie;

    .line 25
    .line 26
    iget v6, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->g0:I

    .line 27
    .line 28
    iget v7, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->h0:I

    .line 29
    .line 30
    invoke-virtual {p0}, Lflix/com/vision/activities/player/SimpleVideoPlayer;->o()F

    .line 31
    .line 32
    .line 33
    move-result v8

    .line 34
    sget-object v9, Lflix/com/vision/api/TraktAPI$ScrobbleState;->b:Lflix/com/vision/api/TraktAPI$ScrobbleState;

    .line 35
    .line 36
    invoke-virtual/range {v4 .. v9}, LD4/h;->scrobble(Lflix/com/vision/models/Movie;IIFLflix/com/vision/api/TraktAPI$ScrobbleState;)Lio/reactivex/Completable;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    new-instance v2, LB4/r;

    .line 49
    .line 50
    const/4 v4, 0x3

    .line 51
    invoke-direct {v2, v4}, LB4/r;-><init>(I)V

    .line 52
    .line 53
    .line 54
    new-instance v4, LA4/c;

    .line 55
    .line 56
    const/4 v5, 0x6

    .line 57
    invoke-direct {v4, v5}, LA4/c;-><init>(I)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, v2, v4}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 61
    .line 62
    .line 63
    :cond_0
    iget-boolean v1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->e:Z

    .line 64
    .line 65
    if-eqz v1, :cond_1

    .line 66
    .line 67
    iget-boolean v1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->I0:Z

    .line 68
    .line 69
    if-nez v1, :cond_1

    .line 70
    .line 71
    new-instance v1, Landroid/os/Handler;

    .line 72
    .line 73
    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 74
    .line 75
    .line 76
    new-instance v2, LB4/s;

    .line 77
    .line 78
    const/4 v4, 0x4

    .line 79
    invoke-direct {v2, p0, v4}, LB4/s;-><init>(Lflix/com/vision/activities/player/SimpleVideoPlayer;I)V

    .line 80
    .line 81
    .line 82
    const-wide/16 v4, 0x2710

    .line 83
    .line 84
    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 85
    .line 86
    .line 87
    :cond_1
    iget-object v1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->I:Lflix/com/vision/models/Movie;

    .line 88
    .line 89
    if-eqz v1, :cond_2

    .line 90
    .line 91
    invoke-virtual {v1}, Lflix/com/vision/models/Movie;->isSeries()Z

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    if-eqz v1, :cond_2

    .line 96
    .line 97
    iget-boolean v1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->a0:Z

    .line 98
    .line 99
    if-eqz v1, :cond_2

    .line 100
    .line 101
    iget-boolean v1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->k0:Z

    .line 102
    .line 103
    if-nez v1, :cond_2

    .line 104
    .line 105
    const/4 v1, 0x1

    .line 106
    iput-boolean v1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->k0:Z

    .line 107
    .line 108
    :cond_2
    iget-boolean v1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->l0:Z

    .line 109
    .line 110
    if-eqz v1, :cond_3

    .line 111
    .line 112
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    iget v0, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->m0:I

    .line 118
    .line 119
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    new-array v1, v3, [Ljava/lang/Object;

    .line 127
    .line 128
    invoke-static {v0, v1}, Lflix/com/vision/bvp/BetterVideoPlayer;->LOG(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    iget v0, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->m0:I

    .line 132
    .line 133
    add-int/lit16 v0, v0, -0x3e8

    .line 134
    .line 135
    int-to-long v0, v0

    .line 136
    invoke-virtual {p1, v0, v1}, Lflix/com/vision/bvp/BetterVideoPlayer;->seekTo(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    .line 138
    .line 139
    goto :goto_0

    .line 140
    :catch_0
    move-exception v0

    .line 141
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 142
    .line 143
    .line 144
    :goto_0
    iput-boolean v3, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->l0:Z

    .line 145
    .line 146
    :cond_3
    iput-boolean v3, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->R:Z

    .line 147
    .line 148
    iget-object v0, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->c0:Landroid/os/Handler;

    .line 149
    .line 150
    iget-object v1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->d0:LB4/E;

    .line 151
    .line 152
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 153
    .line 154
    .line 155
    invoke-virtual {p1}, Lflix/com/vision/bvp/BetterVideoPlayer;->getToolbar()Landroidx/appcompat/widget/Toolbar;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getMenu()Landroid/view/Menu;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    sget v0, Lflix/com/vision/R$id;->play_pause_button:I

    .line 164
    .line 165
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    if-eqz p1, :cond_4

    .line 170
    .line 171
    sget v0, Lflix/com/vision/R$drawable;->pause_circle_40px:I

    .line 172
    .line 173
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 174
    .line 175
    .line 176
    :cond_4
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 1
    invoke-super {p0}, Le/v;->onStop()V

    .line 2
    .line 3
    .line 4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 5
    .line 6
    const/16 v1, 0x18

    .line 7
    .line 8
    if-lt v0, v1, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0}, Lflix/com/vision/bvp/BetterVideoPlayer;->pause()V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public onToggleControls(Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->L:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    const/high16 v1, 0x3f800000    # 1.0f

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->n:Landroid/widget/TextClock;

    .line 9
    .line 10
    const/16 v2, 0x8

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    iget-boolean v4, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->m:Z

    .line 16
    .line 17
    if-eqz v4, :cond_1

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->n:Landroid/widget/TextClock;

    .line 23
    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    move v1, v3

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    move v1, v2

    .line 29
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 30
    .line 31
    .line 32
    :cond_1
    iget-object v0, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->L:Landroid/widget/LinearLayout;

    .line 33
    .line 34
    if-eqz p1, :cond_2

    .line 35
    .line 36
    move v2, v3

    .line 37
    :cond_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 38
    .line 39
    .line 40
    if-eqz p1, :cond_3

    .line 41
    .line 42
    iget-object p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 43
    .line 44
    invoke-virtual {p1}, Lflix/com/vision/bvp/BetterVideoPlayer;->showToolbar()V

    .line 45
    .line 46
    .line 47
    iget-object p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->C:Landroid/os/Handler;

    .line 48
    .line 49
    iget-object v0, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->j0:LB4/s;

    .line 50
    .line 51
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 52
    .line 53
    .line 54
    iget-object p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->C:Landroid/os/Handler;

    .line 55
    .line 56
    iget-object v0, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->j0:LB4/s;

    .line 57
    .line 58
    const-wide/16 v1, 0xfa0

    .line 59
    .line 60
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 61
    .line 62
    .line 63
    :cond_3
    return-void
.end method

.method public onUserLeaveHint()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->b:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onUserLeaveHint()V

    .line 7
    .line 8
    .line 9
    sget-boolean v0, Lflix/com/vision/App;->I:Z

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 14
    .line 15
    const/16 v1, 0x1a

    .line 16
    .line 17
    if-lt v0, v1, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {v0}, Lflix/com/vision/bvp/BetterVideoPlayer;->isPlaying()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    invoke-virtual {p0}, Lflix/com/vision/activities/player/SimpleVideoPlayer;->v()V

    .line 30
    .line 31
    .line 32
    :cond_1
    :goto_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const/16 v0, 0x1706

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public openEpisode(I)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 2
    .line 3
    invoke-virtual {v0}, Lflix/com/vision/bvp/BetterVideoPlayer;->hideControls()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 7
    .line 8
    invoke-virtual {v0}, Lflix/com/vision/bvp/BetterVideoPlayer;->hideToolbar()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    :catch_0
    sget-object v0, Lflix/com/vision/App;->B:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->r:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 19
    .line 20
    .line 21
    iget v0, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->h0:I

    .line 22
    .line 23
    add-int/lit8 v1, p1, 0x1

    .line 24
    .line 25
    iput v1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->h0:I

    .line 26
    .line 27
    invoke-virtual {p0}, Lflix/com/vision/activities/player/SimpleVideoPlayer;->t()V

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->I:Lflix/com/vision/models/Movie;

    .line 31
    .line 32
    invoke-virtual {v1}, Lflix/com/vision/models/Movie;->isSeries()Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_0

    .line 37
    .line 38
    iget-object v1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->P:Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    check-cast p1, Lflix/com/vision/models/Episode;

    .line 45
    .line 46
    iget-object p1, p1, Lflix/com/vision/models/Episode;->title:Ljava/lang/String;

    .line 47
    .line 48
    iput-object p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->f0:Ljava/lang/String;

    .line 49
    .line 50
    :cond_0
    invoke-virtual {p0, v0}, Lflix/com/vision/activities/player/SimpleVideoPlayer;->x(I)V

    .line 51
    .line 52
    .line 53
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    iget-object p1, p1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 58
    .line 59
    const-string v0, "pref_sub_auto_dl"

    .line 60
    .line 61
    const/4 v1, 0x0

    .line 62
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    if-eqz p1, :cond_1

    .line 67
    .line 68
    invoke-virtual {p0, v1}, Lflix/com/vision/activities/player/SimpleVideoPlayer;->k(Z)V

    .line 69
    .line 70
    .line 71
    :cond_1
    return-void
.end method

.method public final p()V
    .locals 1

    .line 1
    iget-object v0, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->w0:LQ4/d;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    :catch_0
    :cond_0
    iget-boolean v0, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->H0:Z

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {p0}, Lflix/com/vision/activities/player/SimpleVideoPlayer;->s()V

    .line 13
    .line 14
    .line 15
    :cond_1
    return-void
.end method

.method public playLink(Ljava/lang/String;Z)V
    .locals 5

    .line 1
    const-string v0, "playLink: Setting source to "

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    const-string v2, "playLink: Stopping and resetting player"

    .line 5
    .line 6
    new-array v3, v1, [Ljava/lang/Object;

    .line 7
    .line 8
    invoke-static {v2, v3}, Lflix/com/vision/bvp/BetterVideoPlayer;->LOG(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object v2, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 12
    .line 13
    invoke-virtual {v2}, Lflix/com/vision/bvp/BetterVideoPlayer;->stop()V

    .line 14
    .line 15
    .line 16
    iget-object v2, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 17
    .line 18
    invoke-virtual {v2}, Lflix/com/vision/bvp/BetterVideoPlayer;->reset()V

    .line 19
    .line 20
    .line 21
    iput-boolean v1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->l0:Z

    .line 22
    .line 23
    new-instance v2, Ljava/util/HashMap;

    .line 24
    .line 25
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    const-string v4, "referer"

    .line 33
    .line 34
    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    if-eqz v3, :cond_0

    .line 39
    .line 40
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    if-nez v4, :cond_0

    .line 45
    .line 46
    const-string v4, "Referer"

    .line 47
    .line 48
    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catch_0
    move-exception p1

    .line 53
    goto :goto_1

    .line 54
    :cond_0
    :goto_0
    sget-object v3, Lflix/com/vision/App;->E:Ljava/util/HashMap;

    .line 55
    .line 56
    if-eqz v3, :cond_1

    .line 57
    .line 58
    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    if-nez v4, :cond_1

    .line 63
    .line 64
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 65
    .line 66
    .line 67
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    new-array v3, v1, [Ljava/lang/Object;

    .line 80
    .line 81
    invoke-static {v0, v3}, Lflix/com/vision/bvp/BetterVideoPlayer;->LOG(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    const-string v0, "User-Agent"

    .line 85
    .line 86
    const-string v3, "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36"

    .line 87
    .line 88
    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    iget-object v0, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 92
    .line 93
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-virtual {v0, p1, v2}, Lflix/com/vision/bvp/BetterVideoPlayer;->setSource(Landroid/net/Uri;Ljava/util/Map;)V

    .line 98
    .line 99
    .line 100
    iget-object p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 101
    .line 102
    invoke-virtual {p1}, Lflix/com/vision/bvp/BetterVideoPlayer;->removeCaptions()V

    .line 103
    .line 104
    .line 105
    if-eqz p2, :cond_2

    .line 106
    .line 107
    iget-object p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->I:Lflix/com/vision/models/Movie;

    .line 108
    .line 109
    if-eqz p1, :cond_2

    .line 110
    .line 111
    iget-boolean p2, p1, Lflix/com/vision/models/Movie;->drama:Z

    .line 112
    .line 113
    if-nez p2, :cond_2

    .line 114
    .line 115
    invoke-virtual {p1}, Lflix/com/vision/models/Movie;->isAnime()Z

    .line 116
    .line 117
    .line 118
    move-result p1

    .line 119
    if-nez p1, :cond_2

    .line 120
    .line 121
    invoke-virtual {p0}, Lflix/com/vision/activities/player/SimpleVideoPlayer;->n()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    if-eqz p1, :cond_2

    .line 126
    .line 127
    new-instance p2, Ljava/io/File;

    .line 128
    .line 129
    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    .line 133
    .line 134
    .line 135
    move-result p2

    .line 136
    if-eqz p2, :cond_2

    .line 137
    .line 138
    iget-object p2, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 139
    .line 140
    sget-object v0, Lflix/com/vision/bvp/subtitle/CaptionsView$CMime;->b:Lflix/com/vision/bvp/subtitle/CaptionsView$CMime;

    .line 141
    .line 142
    const-string v2, ""

    .line 143
    .line 144
    invoke-virtual {p2, p1, v0, v2}, Lflix/com/vision/bvp/BetterVideoPlayer;->setCaptionsPath(Ljava/lang/String;Lflix/com/vision/bvp/subtitle/CaptionsView$CMime;Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {p0}, Lflix/com/vision/activities/player/SimpleVideoPlayer;->H()V

    .line 148
    .line 149
    .line 150
    :cond_2
    iget-object p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 151
    .line 152
    invoke-virtual {p1}, Lflix/com/vision/bvp/BetterVideoPlayer;->prepare()V

    .line 153
    .line 154
    .line 155
    iget-object p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 156
    .line 157
    invoke-virtual {p1}, Lflix/com/vision/bvp/BetterVideoPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    .line 159
    .line 160
    return-void

    .line 161
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    .line 162
    .line 163
    const-string v0, "playLink: Error occurred - "

    .line 164
    .line 165
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object p2

    .line 179
    new-array v0, v1, [Ljava/lang/Object;

    .line 180
    .line 181
    invoke-static {p2, v0}, Lflix/com/vision/bvp/BetterVideoPlayer;->LOG(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 185
    .line 186
    .line 187
    return-void
.end method

.method public final q()V
    .locals 3

    .line 1
    iget-object v0, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->M:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x8

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v0, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->M:Landroid/widget/LinearLayout;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->M:Landroid/widget/LinearLayout;

    .line 22
    .line 23
    iget-object v2, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->q0:Landroid/view/animation/Animation;

    .line 24
    .line 25
    invoke-virtual {v0, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->M:Landroid/widget/LinearLayout;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final r()V
    .locals 3

    .line 1
    iget-object v0, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->N:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x8

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v0, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->N:Landroid/widget/LinearLayout;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->N:Landroid/widget/LinearLayout;

    .line 22
    .line 23
    iget-object v2, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->q0:Landroid/view/animation/Animation;

    .line 24
    .line 25
    invoke-virtual {v0, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->N:Landroid/widget/LinearLayout;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public requestAndDisplayAd()V
    .locals 0

    return-void
.end method

.method public final s()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->u:Landroid/widget/RelativeLayout;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->f:Landroid/widget/ImageView;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->f:Landroid/widget/ImageView;

    .line 14
    .line 15
    const/high16 v1, 0x3f800000    # 1.0f

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    .line 20
    :catch_0
    return-void
.end method

.method public final t()V
    .locals 2

    .line 1
    iget-object v0, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->t:Landroid/widget/RelativeLayout;

    .line 2
    .line 3
    iget-object v1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->G0:Landroid/view/animation/Animation;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->t:Landroid/widget/RelativeLayout;

    .line 9
    .line 10
    const/16 v1, 0x8

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->v:Landroidx/recyclerview/widget/RecyclerView;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final u()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->I:Lflix/com/vision/models/Movie;

    .line 2
    .line 3
    invoke-virtual {v0}, Lflix/com/vision/models/Movie;->getImage_url()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    :try_start_1
    invoke-static {}, Lm4/D;->get()Lm4/D;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1, v0}, Lm4/D;->load(Ljava/lang/String;)Lm4/J;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lm4/J;->fit()Lm4/J;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Lm4/J;->centerCrop()Lm4/J;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iget-object v1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->J:Landroid/widget/ImageView;

    .line 32
    .line 33
    new-instance v2, LB4/F;

    .line 34
    .line 35
    invoke-direct {v2, p0}, LB4/F;-><init>(Lflix/com/vision/activities/player/SimpleVideoPlayer;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1, v2}, Lm4/J;->into(Landroid/widget/ImageView;Lm4/i;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catch_0
    move-exception v0

    .line 43
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 44
    .line 45
    .line 46
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    const-string v1, "title"

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    if-eqz v0, :cond_1

    .line 57
    .line 58
    iget-object v1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->D:Landroid/widget/TextView;

    .line 59
    .line 60
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    .line 62
    .line 63
    :cond_1
    iget v0, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->X:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 64
    .line 65
    if-lez v0, :cond_3

    .line 66
    .line 67
    const-string v1, "m"

    .line 68
    .line 69
    const/16 v2, 0x3c

    .line 70
    .line 71
    if-le v0, v2, :cond_2

    .line 72
    .line 73
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .line 77
    .line 78
    iget v3, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->X:I

    .line 79
    .line 80
    div-int/2addr v3, v2

    .line 81
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string v3, "h "

    .line 85
    .line 86
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    iget v3, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->X:I

    .line 90
    .line 91
    rem-int/2addr v3, v2

    .line 92
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    goto :goto_1

    .line 103
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    .line 107
    .line 108
    iget v2, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->X:I

    .line 109
    .line 110
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    :goto_1
    iget-object v1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->F:Landroid/widget/TextView;

    .line 121
    .line 122
    new-instance v2, Ljava/lang/StringBuilder;

    .line 123
    .line 124
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    .line 126
    .line 127
    iget-object v3, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->I:Lflix/com/vision/models/Movie;

    .line 128
    .line 129
    invoke-virtual {v3}, Lflix/com/vision/models/Movie;->getYear()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v3

    .line 133
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    const-string v3, "  \u00b7  "

    .line 137
    .line 138
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    .line 150
    .line 151
    goto :goto_2

    .line 152
    :cond_3
    iget-object v0, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->F:Landroid/widget/TextView;

    .line 153
    .line 154
    iget-object v1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->I:Lflix/com/vision/models/Movie;

    .line 155
    .line 156
    invoke-virtual {v1}, Lflix/com/vision/models/Movie;->getYear()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    .line 162
    .line 163
    :goto_2
    iget-object v0, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->I:Lflix/com/vision/models/Movie;

    .line 164
    .line 165
    invoke-virtual {v0}, Lflix/com/vision/models/Movie;->isSeries()Z

    .line 166
    .line 167
    .line 168
    move-result v0

    .line 169
    if-nez v0, :cond_4

    .line 170
    .line 171
    iget-object v0, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->I:Lflix/com/vision/models/Movie;

    .line 172
    .line 173
    invoke-virtual {v0}, Lflix/com/vision/models/Movie;->isAnime()Z

    .line 174
    .line 175
    .line 176
    move-result v0

    .line 177
    if-nez v0, :cond_4

    .line 178
    .line 179
    iget-object v0, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->I:Lflix/com/vision/models/Movie;

    .line 180
    .line 181
    iget-boolean v0, v0, Lflix/com/vision/models/Movie;->drama:Z

    .line 182
    .line 183
    if-eqz v0, :cond_5

    .line 184
    .line 185
    :cond_4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    const-string v1, "title_episode"

    .line 190
    .line 191
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    iput-object v0, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->f0:Ljava/lang/String;

    .line 196
    .line 197
    if-eqz v0, :cond_5

    .line 198
    .line 199
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 200
    .line 201
    .line 202
    move-result v0

    .line 203
    if-nez v0, :cond_5

    .line 204
    .line 205
    iget-object v0, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->E:Landroid/widget/TextView;

    .line 206
    .line 207
    const/4 v1, 0x0

    .line 208
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 209
    .line 210
    .line 211
    iget-object v0, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->E:Landroid/widget/TextView;

    .line 212
    .line 213
    iget-object v1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->f0:Ljava/lang/String;

    .line 214
    .line 215
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 216
    .line 217
    .line 218
    :catch_1
    :cond_5
    return-void
.end method

.method public final v()V
    .locals 6

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1a

    .line 4
    .line 5
    if-lt v0, v1, :cond_3

    .line 6
    .line 7
    invoke-static {}, LB4/o;->c()Landroid/app/PictureInPictureParams$Builder;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 12
    .line 13
    if-eqz v1, :cond_2

    .line 14
    .line 15
    invoke-virtual {v1}, Lflix/com/vision/bvp/BetterVideoPlayer;->getExoPlayer()Landroidx/media3/common/Player;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    if-eqz v1, :cond_2

    .line 20
    .line 21
    iget-object v1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 22
    .line 23
    invoke-virtual {v1}, Lflix/com/vision/bvp/BetterVideoPlayer;->getExoPlayer()Landroidx/media3/common/Player;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-interface {v1}, Landroidx/media3/common/Player;->getVideoSize()Landroidx/media3/common/VideoSize;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v1, Landroidx/media3/common/VideoSize;->width:I

    .line 32
    .line 33
    if-lez v2, :cond_2

    .line 34
    .line 35
    iget v2, v1, Landroidx/media3/common/VideoSize;->height:I

    .line 36
    .line 37
    if-lez v2, :cond_2

    .line 38
    .line 39
    new-instance v2, Landroid/util/Rational;

    .line 40
    .line 41
    iget v3, v1, Landroidx/media3/common/VideoSize;->width:I

    .line 42
    .line 43
    iget v1, v1, Landroidx/media3/common/VideoSize;->height:I

    .line 44
    .line 45
    invoke-direct {v2, v3, v1}, Landroid/util/Rational;-><init>(II)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2}, Landroid/util/Rational;->floatValue()F

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    const v3, 0x4018f5c3    # 2.39f

    .line 53
    .line 54
    .line 55
    cmpl-float v3, v1, v3

    .line 56
    .line 57
    const/16 v4, 0x64

    .line 58
    .line 59
    const/16 v5, 0xef

    .line 60
    .line 61
    if-lez v3, :cond_0

    .line 62
    .line 63
    new-instance v2, Landroid/util/Rational;

    .line 64
    .line 65
    invoke-direct {v2, v5, v4}, Landroid/util/Rational;-><init>(II)V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_0
    const v3, 0x3ed639d7

    .line 70
    .line 71
    .line 72
    cmpg-float v1, v1, v3

    .line 73
    .line 74
    if-gez v1, :cond_1

    .line 75
    .line 76
    new-instance v2, Landroid/util/Rational;

    .line 77
    .line 78
    invoke-direct {v2, v4, v5}, Landroid/util/Rational;-><init>(II)V

    .line 79
    .line 80
    .line 81
    :cond_1
    :goto_0
    invoke-static {v0, v2}, LB4/o;->s(Landroid/app/PictureInPictureParams$Builder;Landroid/util/Rational;)V

    .line 82
    .line 83
    .line 84
    :cond_2
    invoke-static {v0}, LB4/o;->d(Landroid/app/PictureInPictureParams$Builder;)Landroid/app/PictureInPictureParams;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-static {p0, v0}, LB4/o;->z(Lflix/com/vision/activities/player/SimpleVideoPlayer;Landroid/app/PictureInPictureParams;)V

    .line 89
    .line 90
    .line 91
    :cond_3
    return-void
.end method

.method public final w()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->Y:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v0, v0, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 10
    .line 11
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->Y:Ljava/lang/String;

    .line 16
    .line 17
    iget-object v2, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 18
    .line 19
    invoke-virtual {v2}, Lflix/com/vision/bvp/BetterVideoPlayer;->getCurrentPosition()J

    .line 20
    .line 21
    .line 22
    move-result-wide v2

    .line 23
    long-to-int v2, v2

    .line 24
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catch_0
    move-exception v0

    .line 33
    goto :goto_1

    .line 34
    :cond_0
    :goto_0
    iget-object v0, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 35
    .line 36
    invoke-virtual {v0}, Lflix/com/vision/bvp/BetterVideoPlayer;->getCurrentPosition()J

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 40
    .line 41
    invoke-virtual {v0}, Lflix/com/vision/bvp/BetterVideoPlayer;->getToolbar()Landroidx/appcompat/widget/Toolbar;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getMenu()Landroid/view/Menu;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    sget v1, Lflix/com/vision/R$id;->play_pause_button:I

    .line 50
    .line 51
    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    if-eqz v0, :cond_1

    .line 56
    .line 57
    sget v1, Lflix/com/vision/R$drawable;->play_circle_40px:I

    .line 58
    .line 59
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 64
    .line 65
    .line 66
    :cond_1
    return-void
.end method

.method public final x(I)V
    .locals 10

    .line 1
    iget-object v0, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->P:Ljava/util/ArrayList;

    .line 2
    .line 3
    const-string v1, "Episode "

    .line 4
    .line 5
    invoke-virtual {p0}, Lflix/com/vision/activities/player/SimpleVideoPlayer;->m()V

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    iput-boolean v2, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->L0:Z

    .line 10
    .line 11
    const/4 v3, 0x1

    .line 12
    iput-boolean v3, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->e:Z

    .line 13
    .line 14
    iput-boolean v2, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->I0:Z

    .line 15
    .line 16
    iget-boolean v4, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->R:Z

    .line 17
    .line 18
    if-eqz v4, :cond_0

    .line 19
    .line 20
    goto/16 :goto_5

    .line 21
    .line 22
    :cond_0
    iput-boolean v3, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->R:Z

    .line 23
    .line 24
    iget-object v4, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->J0:Landroid/os/CountDownTimer;

    .line 25
    .line 26
    if-eqz v4, :cond_1

    .line 27
    .line 28
    invoke-virtual {v4}, Landroid/os/CountDownTimer;->cancel()V

    .line 29
    .line 30
    .line 31
    :cond_1
    iput-boolean v2, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->b0:Z

    .line 32
    .line 33
    iput-boolean v2, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->v0:Z

    .line 34
    .line 35
    iput-boolean v3, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->R:Z

    .line 36
    .line 37
    invoke-virtual {p0}, Lflix/com/vision/activities/player/SimpleVideoPlayer;->q()V

    .line 38
    .line 39
    .line 40
    iput-boolean v2, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->k0:Z

    .line 41
    .line 42
    iput-boolean v2, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->I0:Z

    .line 43
    .line 44
    iget-object v4, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 45
    .line 46
    invoke-virtual {v4}, Lflix/com/vision/bvp/BetterVideoPlayer;->hideControls()V

    .line 47
    .line 48
    .line 49
    iget-object v4, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 50
    .line 51
    invoke-virtual {v4}, Lflix/com/vision/bvp/BetterVideoPlayer;->hideToolbar()V

    .line 52
    .line 53
    .line 54
    iget-object v4, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 55
    .line 56
    invoke-virtual {v4}, Lflix/com/vision/bvp/BetterVideoPlayer;->pause()V

    .line 57
    .line 58
    .line 59
    iget-object v4, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 60
    .line 61
    invoke-virtual {v4}, Lflix/com/vision/bvp/BetterVideoPlayer;->stop()V

    .line 62
    .line 63
    .line 64
    iget-object v4, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 65
    .line 66
    invoke-virtual {v4}, Lflix/com/vision/bvp/BetterVideoPlayer;->reset()V

    .line 67
    .line 68
    .line 69
    iget v4, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->h0:I

    .line 70
    .line 71
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 72
    .line 73
    .line 74
    move-result-object v5

    .line 75
    iget-object v5, v5, Lflix/com/vision/App;->y:Ljava/util/ArrayList;

    .line 76
    .line 77
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 78
    .line 79
    .line 80
    move-result v5

    .line 81
    if-gt v4, v5, :cond_12

    .line 82
    .line 83
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    iget-object v4, v4, Lflix/com/vision/App;->y:Ljava/util/ArrayList;

    .line 88
    .line 89
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 90
    .line 91
    .line 92
    move-result v4

    .line 93
    if-eqz v4, :cond_2

    .line 94
    .line 95
    goto/16 :goto_6

    .line 96
    .line 97
    :cond_2
    iget-object v4, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->r:Ljava/util/ArrayList;

    .line 98
    .line 99
    if-nez v4, :cond_3

    .line 100
    .line 101
    new-instance v4, Ljava/util/ArrayList;

    .line 102
    .line 103
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 104
    .line 105
    .line 106
    iput-object v4, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->r:Ljava/util/ArrayList;

    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 110
    .line 111
    .line 112
    :goto_0
    sget-object v4, Lflix/com/vision/App;->B:Ljava/util/ArrayList;

    .line 113
    .line 114
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 115
    .line 116
    .line 117
    iget-object v4, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->B0:Ljava/util/ArrayList;

    .line 118
    .line 119
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 120
    .line 121
    .line 122
    const/4 v4, -0x1

    .line 123
    iput v4, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->C0:I

    .line 124
    .line 125
    iput-boolean v2, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->D0:Z

    .line 126
    .line 127
    iget-object v4, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 128
    .line 129
    invoke-virtual {v4}, Lflix/com/vision/bvp/BetterVideoPlayer;->removeCaptions()V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p0}, Lflix/com/vision/activities/player/SimpleVideoPlayer;->H()V

    .line 133
    .line 134
    .line 135
    iput-boolean v2, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->u0:Z

    .line 136
    .line 137
    iput-boolean v2, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->v0:Z

    .line 138
    .line 139
    iget-object v4, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->M:Landroid/widget/LinearLayout;

    .line 140
    .line 141
    const/16 v5, 0x8

    .line 142
    .line 143
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 144
    .line 145
    .line 146
    new-instance v4, Ljava/lang/StringBuilder;

    .line 147
    .line 148
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 149
    .line 150
    .line 151
    iget-object v5, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->I:Lflix/com/vision/models/Movie;

    .line 152
    .line 153
    invoke-virtual {v5}, Lflix/com/vision/models/Movie;->getMovieId()J

    .line 154
    .line 155
    .line 156
    move-result-wide v5

    .line 157
    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    const-string v5, ""

    .line 161
    .line 162
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    iget v6, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->g0:I

    .line 166
    .line 167
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    iget v6, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->h0:I

    .line 174
    .line 175
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v4

    .line 182
    iput-object v4, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->Y:Ljava/lang/String;

    .line 183
    .line 184
    iget-object v4, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->D:Landroid/widget/TextView;

    .line 185
    .line 186
    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 187
    .line 188
    .line 189
    move-result-object v4

    .line 190
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v4

    .line 194
    new-instance v6, Ljava/lang/StringBuilder;

    .line 195
    .line 196
    const-string v7, "S"

    .line 197
    .line 198
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    iget v8, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->g0:I

    .line 202
    .line 203
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    const-string v8, "E"

    .line 207
    .line 208
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object p1

    .line 218
    new-instance v6, Ljava/lang/StringBuilder;

    .line 219
    .line 220
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    iget v7, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->g0:I

    .line 224
    .line 225
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    iget v7, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->h0:I

    .line 232
    .line 233
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v6

    .line 240
    invoke-virtual {v4, p1, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object p1

    .line 244
    iget-object v4, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->D:Landroid/widget/TextView;

    .line 245
    .line 246
    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 247
    .line 248
    .line 249
    :try_start_0
    iget p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->h0:I

    .line 250
    .line 251
    sub-int/2addr p1, v3

    .line 252
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    move-result-object p1

    .line 256
    check-cast p1, Lflix/com/vision/models/Episode;

    .line 257
    .line 258
    if-eqz p1, :cond_4

    .line 259
    .line 260
    iget-object v4, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->E:Landroid/widget/TextView;

    .line 261
    .line 262
    iget-object v6, p1, Lflix/com/vision/models/Episode;->title:Ljava/lang/String;

    .line 263
    .line 264
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 265
    .line 266
    .line 267
    iget-object p1, p1, Lflix/com/vision/models/Episode;->title:Ljava/lang/String;

    .line 268
    .line 269
    iput-object p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->f0:Ljava/lang/String;

    .line 270
    .line 271
    goto :goto_1

    .line 272
    :cond_4
    iget-object p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->E:Landroid/widget/TextView;

    .line 273
    .line 274
    new-instance v4, Ljava/lang/StringBuilder;

    .line 275
    .line 276
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 277
    .line 278
    .line 279
    iget v6, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->h0:I

    .line 280
    .line 281
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v4

    .line 288
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    .line 290
    .line 291
    goto :goto_1

    .line 292
    :catch_0
    iget-object p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->E:Landroid/widget/TextView;

    .line 293
    .line 294
    new-instance v4, Ljava/lang/StringBuilder;

    .line 295
    .line 296
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    iget v1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->h0:I

    .line 300
    .line 301
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 302
    .line 303
    .line 304
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object v1

    .line 308
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 309
    .line 310
    .line 311
    :goto_1
    iget-object p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->v:Landroidx/recyclerview/widget/RecyclerView;

    .line 312
    .line 313
    if-eqz p1, :cond_5

    .line 314
    .line 315
    new-instance p1, LC4/V;

    .line 316
    .line 317
    iget v1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->h0:I

    .line 318
    .line 319
    sub-int/2addr v1, v3

    .line 320
    invoke-direct {p1, p0, v0, v1}, LC4/V;-><init>(Lflix/com/vision/activities/player/SimpleVideoPlayer;Ljava/util/ArrayList;I)V

    .line 321
    .line 322
    .line 323
    iput-object p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->O:LC4/V;

    .line 324
    .line 325
    iget-object v0, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->v:Landroidx/recyclerview/widget/RecyclerView;

    .line 326
    .line 327
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lm1/V;)V

    .line 328
    .line 329
    .line 330
    iget-object p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->v:Landroidx/recyclerview/widget/RecyclerView;

    .line 331
    .line 332
    iget v0, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->h0:I

    .line 333
    .line 334
    sub-int/2addr v0, v3

    .line 335
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 336
    .line 337
    .line 338
    :cond_5
    invoke-virtual {p0, v2}, Lflix/com/vision/activities/player/SimpleVideoPlayer;->D(Z)V

    .line 339
    .line 340
    .line 341
    new-instance p1, Landroid/os/Handler;

    .line 342
    .line 343
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 344
    .line 345
    .line 346
    new-instance v0, LB4/s;

    .line 347
    .line 348
    const/4 v1, 0x1

    .line 349
    invoke-direct {v0, p0, v1}, LB4/s;-><init>(Lflix/com/vision/activities/player/SimpleVideoPlayer;I)V

    .line 350
    .line 351
    .line 352
    const-wide/16 v6, 0x7d0

    .line 353
    .line 354
    invoke-virtual {p1, v0, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 355
    .line 356
    .line 357
    iget-object p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->I:Lflix/com/vision/models/Movie;

    .line 358
    .line 359
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 360
    .line 361
    .line 362
    move-result-object v0

    .line 363
    iget-object v0, v0, Lflix/com/vision/App;->y:Ljava/util/ArrayList;

    .line 364
    .line 365
    iget v1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->h0:I

    .line 366
    .line 367
    sub-int/2addr v1, v3

    .line 368
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 369
    .line 370
    .line 371
    move-result-object v0

    .line 372
    check-cast v0, Lflix/com/vision/models/Episode;

    .line 373
    .line 374
    iget v1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->g0:I

    .line 375
    .line 376
    iget v4, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->h0:I

    .line 377
    .line 378
    iget-object v8, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->r:Ljava/util/ArrayList;

    .line 379
    .line 380
    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 381
    .line 382
    .line 383
    sget-object v8, Lflix/com/vision/App;->B:Ljava/util/ArrayList;

    .line 384
    .line 385
    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 386
    .line 387
    .line 388
    invoke-virtual {p1}, Lflix/com/vision/models/Movie;->isDrama()Z

    .line 389
    .line 390
    .line 391
    move-result v8

    .line 392
    if-eqz v8, :cond_6

    .line 393
    .line 394
    new-instance v1, Lb5/b;

    .line 395
    .line 396
    invoke-direct {v1, p0, p1, p0}, Lb5/b;-><init>(Landroid/content/Context;Lflix/com/vision/models/Movie;LU4/f;)V

    .line 397
    .line 398
    .line 399
    iget-object p1, v0, Lflix/com/vision/models/Episode;->url:Ljava/lang/String;

    .line 400
    .line 401
    invoke-virtual {v1, p1}, Lb5/b;->process(Ljava/lang/String;)V

    .line 402
    .line 403
    .line 404
    goto/16 :goto_4

    .line 405
    .line 406
    :cond_6
    invoke-virtual {p1}, Lflix/com/vision/models/Movie;->isAnime()Z

    .line 407
    .line 408
    .line 409
    move-result v8

    .line 410
    if-eqz v8, :cond_8

    .line 411
    .line 412
    iget-object v0, v0, Lflix/com/vision/models/Episode;->url:Ljava/lang/String;

    .line 413
    .line 414
    if-eqz v0, :cond_7

    .line 415
    .line 416
    const-string v1, "www9.gogoanime.io"

    .line 417
    .line 418
    const-string v3, "gogoanime.pe"

    .line 419
    .line 420
    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 421
    .line 422
    .line 423
    move-result-object v0

    .line 424
    const-string v1, "gogoanime.io"

    .line 425
    .line 426
    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 427
    .line 428
    .line 429
    move-result-object v0

    .line 430
    :cond_7
    if-eqz v0, :cond_10

    .line 431
    .line 432
    new-instance v1, Lflix/com/vision/processors/english/b;

    .line 433
    .line 434
    invoke-direct {v1, p0, p0, p1}, Lflix/com/vision/processors/english/b;-><init>(Landroid/content/Context;LU4/f;Lflix/com/vision/models/Movie;)V

    .line 435
    .line 436
    .line 437
    invoke-virtual {v1, v0}, Lflix/com/vision/processors/english/b;->Process(Ljava/lang/String;)V

    .line 438
    .line 439
    .line 440
    goto/16 :goto_4

    .line 441
    .line 442
    :cond_8
    invoke-virtual {p1}, Lflix/com/vision/models/Movie;->getImdbID()Ljava/lang/String;

    .line 443
    .line 444
    .line 445
    move-result-object v0

    .line 446
    if-eqz v0, :cond_9

    .line 447
    .line 448
    invoke-virtual {p1}, Lflix/com/vision/models/Movie;->getImdbID()Ljava/lang/String;

    .line 449
    .line 450
    .line 451
    move-result-object v0

    .line 452
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 453
    .line 454
    .line 455
    move-result v0

    .line 456
    if-nez v0, :cond_9

    .line 457
    .line 458
    new-instance v0, Landroid/os/Handler;

    .line 459
    .line 460
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 461
    .line 462
    .line 463
    new-instance v8, LB4/x;

    .line 464
    .line 465
    invoke-direct {v8, p0, p1, v1, v4}, LB4/x;-><init>(Lflix/com/vision/activities/player/SimpleVideoPlayer;Lflix/com/vision/models/Movie;II)V

    .line 466
    .line 467
    .line 468
    invoke-virtual {v0, v8, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 469
    .line 470
    .line 471
    :cond_9
    sget-boolean v0, Lflix/com/vision/api/realdebrid/RealDebridCommon;->m:Z

    .line 472
    .line 473
    if-nez v0, :cond_a

    .line 474
    .line 475
    sget-boolean v0, Lflix/com/vision/api/premiumize/PremiumizeCommon;->b:Z

    .line 476
    .line 477
    if-nez v0, :cond_a

    .line 478
    .line 479
    sget-boolean v0, Lflix/com/vision/api/alldebrid/AllDebridCommon;->f:Z

    .line 480
    .line 481
    if-nez v0, :cond_a

    .line 482
    .line 483
    sget-boolean v0, LJ4/b;->a:Z

    .line 484
    .line 485
    if-eqz v0, :cond_b

    .line 486
    .line 487
    :cond_a
    new-instance v0, La5/x;

    .line 488
    .line 489
    invoke-direct {v0, p0, p1, p0}, La5/x;-><init>(Landroid/content/Context;Lflix/com/vision/models/Movie;LU4/f;)V

    .line 490
    .line 491
    .line 492
    invoke-virtual {v0, v1, v4, v3}, La5/x;->process(III)V

    .line 493
    .line 494
    .line 495
    new-instance v0, La5/p;

    .line 496
    .line 497
    invoke-direct {v0, p0, p1, p0}, La5/p;-><init>(Landroid/content/Context;Lflix/com/vision/models/Movie;LU4/f;)V

    .line 498
    .line 499
    .line 500
    invoke-virtual {v0, v1, v4, v3}, La5/p;->process(III)V

    .line 501
    .line 502
    .line 503
    new-instance v0, La5/h;

    .line 504
    .line 505
    invoke-direct {v0, p0, p1, p0}, La5/h;-><init>(Landroid/content/Context;Lflix/com/vision/models/Movie;LU4/f;)V

    .line 506
    .line 507
    .line 508
    invoke-virtual {v0, v1, v4, v3}, La5/h;->process(III)V

    .line 509
    .line 510
    .line 511
    new-instance v0, LZ4/t;

    .line 512
    .line 513
    invoke-direct {v0, p0, p1, p0}, LZ4/t;-><init>(Landroid/content/Context;Lflix/com/vision/models/Movie;LU4/f;)V

    .line 514
    .line 515
    .line 516
    invoke-virtual {v0, v1, v4}, LZ4/t;->process(II)V

    .line 517
    .line 518
    .line 519
    new-instance v0, LZ4/j;

    .line 520
    .line 521
    invoke-direct {v0, p0, p1, p0}, LZ4/j;-><init>(Landroid/content/Context;Lflix/com/vision/models/Movie;LU4/f;)V

    .line 522
    .line 523
    .line 524
    invoke-virtual {v0, v1, v4}, LZ4/j;->process(II)V

    .line 525
    .line 526
    .line 527
    :cond_b
    invoke-virtual {p1}, Lflix/com/vision/models/Movie;->getMovieId()J

    .line 528
    .line 529
    .line 530
    move-result-wide v6

    .line 531
    const-wide/16 v8, 0x0

    .line 532
    .line 533
    cmp-long v0, v6, v8

    .line 534
    .line 535
    if-gtz v0, :cond_c

    .line 536
    .line 537
    invoke-virtual {p1}, Lflix/com/vision/models/Movie;->getImdbID()Ljava/lang/String;

    .line 538
    .line 539
    .line 540
    move-result-object v0

    .line 541
    if-eqz v0, :cond_e

    .line 542
    .line 543
    invoke-virtual {p1}, Lflix/com/vision/models/Movie;->getImdbID()Ljava/lang/String;

    .line 544
    .line 545
    .line 546
    move-result-object v0

    .line 547
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 548
    .line 549
    .line 550
    move-result v0

    .line 551
    if-nez v0, :cond_e

    .line 552
    .line 553
    :cond_c
    invoke-virtual {p1}, Lflix/com/vision/models/Movie;->getImdbID()Ljava/lang/String;

    .line 554
    .line 555
    .line 556
    move-result-object v0

    .line 557
    if-eqz v0, :cond_d

    .line 558
    .line 559
    invoke-virtual {p1}, Lflix/com/vision/models/Movie;->getImdbID()Ljava/lang/String;

    .line 560
    .line 561
    .line 562
    move-result-object v0

    .line 563
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 564
    .line 565
    .line 566
    move-result v0

    .line 567
    if-nez v0, :cond_d

    .line 568
    .line 569
    invoke-virtual {p1}, Lflix/com/vision/models/Movie;->getImdbID()Ljava/lang/String;

    .line 570
    .line 571
    .line 572
    move-result-object v0

    .line 573
    goto :goto_2

    .line 574
    :cond_d
    invoke-virtual {p1}, Lflix/com/vision/models/Movie;->getMovieId()J

    .line 575
    .line 576
    .line 577
    move-result-wide v6

    .line 578
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 579
    .line 580
    .line 581
    move-result-object v0

    .line 582
    :goto_2
    new-instance v6, Lflix/com/vision/extractors/CloudnestraExtractor;

    .line 583
    .line 584
    invoke-direct {v6, p0, p0}, Lflix/com/vision/extractors/CloudnestraExtractor;-><init>(Landroid/content/Context;LU4/f;)V

    .line 585
    .line 586
    .line 587
    new-instance v7, Ljava/lang/StringBuilder;

    .line 588
    .line 589
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 590
    .line 591
    .line 592
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 593
    .line 594
    .line 595
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 596
    .line 597
    .line 598
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 599
    .line 600
    .line 601
    move-result-object v7

    .line 602
    new-instance v8, Ljava/lang/StringBuilder;

    .line 603
    .line 604
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 605
    .line 606
    .line 607
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 608
    .line 609
    .line 610
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 611
    .line 612
    .line 613
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 614
    .line 615
    .line 616
    move-result-object v5

    .line 617
    invoke-virtual {p1}, Lflix/com/vision/models/Movie;->isSeries()Z

    .line 618
    .line 619
    .line 620
    move-result v8

    .line 621
    xor-int/2addr v3, v8

    .line 622
    invoke-virtual {v6, v0, v7, v5, v3}, Lflix/com/vision/extractors/CloudnestraExtractor;->fetchLinks(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 623
    .line 624
    .line 625
    :cond_e
    iget-object v0, p1, Lflix/com/vision/models/Movie;->seasons:Ljava/util/ArrayList;

    .line 626
    .line 627
    if-eqz v0, :cond_f

    .line 628
    .line 629
    invoke-virtual {p1}, Lflix/com/vision/models/Movie;->getSeason_count()I

    .line 630
    .line 631
    .line 632
    move-result v0

    .line 633
    goto :goto_3

    .line 634
    :cond_f
    move v0, v2

    .line 635
    :goto_3
    new-instance v3, Lflix/com/vision/processors/english/q;

    .line 636
    .line 637
    invoke-direct {v3, p0, p1, p0}, Lflix/com/vision/processors/english/q;-><init>(Landroid/content/Context;Lflix/com/vision/models/Movie;LU4/f;)V

    .line 638
    .line 639
    .line 640
    invoke-virtual {v3, v1, v4}, Lflix/com/vision/processors/english/q;->process(II)V

    .line 641
    .line 642
    .line 643
    new-instance v3, Lc5/b;

    .line 644
    .line 645
    invoke-direct {v3, p0, p1, p0}, Lc5/b;-><init>(Landroid/content/Context;Lflix/com/vision/models/Movie;LU4/f;)V

    .line 646
    .line 647
    .line 648
    invoke-virtual {v3, v1, v4}, Lc5/b;->process(II)V

    .line 649
    .line 650
    .line 651
    new-instance v3, Lflix/com/vision/processors/english/v;

    .line 652
    .line 653
    invoke-direct {v3, p0, p1, p0}, Lflix/com/vision/processors/english/v;-><init>(Landroid/content/Context;Lflix/com/vision/models/Movie;LU4/f;)V

    .line 654
    .line 655
    .line 656
    invoke-virtual {v3, v1, v4}, Lflix/com/vision/processors/english/v;->process(II)V

    .line 657
    .line 658
    .line 659
    new-instance v3, Lflix/com/vision/processors/english/B;

    .line 660
    .line 661
    invoke-direct {v3, p0, p1, p0}, Lflix/com/vision/processors/english/B;-><init>(Landroid/content/Context;Lflix/com/vision/models/Movie;LU4/f;)V

    .line 662
    .line 663
    .line 664
    iget-object v5, p1, Lflix/com/vision/models/Movie;->last_air_date:Ljava/lang/String;

    .line 665
    .line 666
    invoke-virtual {v3, v1, v4, v0, v5}, Lflix/com/vision/processors/english/B;->process(IIILjava/lang/String;)V

    .line 667
    .line 668
    .line 669
    new-instance v0, Lflix/com/vision/extractors/VixSrcExtractor;

    .line 670
    .line 671
    invoke-direct {v0, p0, p0, p1}, Lflix/com/vision/extractors/VixSrcExtractor;-><init>(Landroid/content/Context;LU4/f;Lflix/com/vision/models/Movie;)V

    .line 672
    .line 673
    .line 674
    invoke-virtual {v0, v1, v4}, Lflix/com/vision/extractors/VixSrcExtractor;->extractEpisode(II)V

    .line 675
    .line 676
    .line 677
    :cond_10
    :goto_4
    new-instance p1, Landroid/os/Handler;

    .line 678
    .line 679
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 680
    .line 681
    .line 682
    move-result-object v0

    .line 683
    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 684
    .line 685
    .line 686
    new-instance v0, LB4/s;

    .line 687
    .line 688
    const/4 v1, 0x2

    .line 689
    invoke-direct {v0, p0, v1}, LB4/s;-><init>(Lflix/com/vision/activities/player/SimpleVideoPlayer;I)V

    .line 690
    .line 691
    .line 692
    const-wide/16 v3, 0x1f40

    .line 693
    .line 694
    invoke-virtual {p1, v0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 695
    .line 696
    .line 697
    new-instance p1, Landroid/os/Handler;

    .line 698
    .line 699
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 700
    .line 701
    .line 702
    new-instance v0, LB4/s;

    .line 703
    .line 704
    const/4 v1, 0x3

    .line 705
    invoke-direct {v0, p0, v1}, LB4/s;-><init>(Lflix/com/vision/activities/player/SimpleVideoPlayer;I)V

    .line 706
    .line 707
    .line 708
    const-wide/16 v3, 0x7530

    .line 709
    .line 710
    invoke-virtual {p1, v0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 711
    .line 712
    .line 713
    iput-boolean v2, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->b0:Z

    .line 714
    .line 715
    iget-object p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->J0:Landroid/os/CountDownTimer;

    .line 716
    .line 717
    if-eqz p1, :cond_11

    .line 718
    .line 719
    invoke-virtual {p1}, Landroid/os/CountDownTimer;->cancel()V

    .line 720
    .line 721
    .line 722
    :cond_11
    :goto_5
    return-void

    .line 723
    :cond_12
    :goto_6
    const-string p1, "Error indexing episodes list"

    .line 724
    .line 725
    invoke-static {p0, p1, v3}, Lh5/i;->makeToast(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 726
    .line 727
    .line 728
    return-void
.end method

.method public final y(Lflix/com/vision/models/VideoSource;Z)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->R:Z

    .line 2
    .line 3
    const/16 v1, 0x1388

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Lflix/com/vision/bvp/BetterVideoPlayer;->getCurrentPosition()J

    .line 13
    .line 14
    .line 15
    move-result-wide v3

    .line 16
    long-to-int v0, v3

    .line 17
    if-le v0, v1, :cond_1

    .line 18
    .line 19
    iput v0, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->m0:I

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iput v2, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->m0:I

    .line 23
    .line 24
    :cond_1
    :goto_0
    iget v0, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->m0:I

    .line 25
    .line 26
    if-le v0, v1, :cond_2

    .line 27
    .line 28
    const/4 v0, 0x1

    .line 29
    goto :goto_1

    .line 30
    :cond_2
    move v0, v2

    .line 31
    :goto_1
    iput-boolean v0, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->l0:Z

    .line 32
    .line 33
    iget-object v0, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 34
    .line 35
    if-eqz v0, :cond_3

    .line 36
    .line 37
    invoke-virtual {v0}, Lflix/com/vision/bvp/BetterVideoPlayer;->stop()V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 41
    .line 42
    invoke-virtual {v0}, Lflix/com/vision/bvp/BetterVideoPlayer;->reset()V

    .line 43
    .line 44
    .line 45
    :cond_3
    const-string v0, "User-Agent"

    .line 46
    .line 47
    const-string v1, "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36"

    .line 48
    .line 49
    invoke-static {v0, v1}, Lb/c;->p(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    iget-object v1, p1, Lflix/com/vision/models/VideoSource;->referer:Ljava/lang/String;

    .line 54
    .line 55
    if-eqz v1, :cond_4

    .line 56
    .line 57
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-nez v1, :cond_4

    .line 62
    .line 63
    const-string v1, "Referer"

    .line 64
    .line 65
    iget-object v3, p1, Lflix/com/vision/models/VideoSource;->referer:Ljava/lang/String;

    .line 66
    .line 67
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    :cond_4
    iget-object v1, p1, Lflix/com/vision/models/VideoSource;->headers:Ljava/util/Map;

    .line 71
    .line 72
    if-eqz v1, :cond_5

    .line 73
    .line 74
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    if-nez v1, :cond_5

    .line 79
    .line 80
    iget-object v1, p1, Lflix/com/vision/models/VideoSource;->headers:Ljava/util/Map;

    .line 81
    .line 82
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 83
    .line 84
    .line 85
    :cond_5
    iget-object v1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 86
    .line 87
    if-eqz v1, :cond_7

    .line 88
    .line 89
    iget-object p1, p1, Lflix/com/vision/models/VideoSource;->streamUrl:Ljava/lang/String;

    .line 90
    .line 91
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    invoke-virtual {v1, p1, v0}, Lflix/com/vision/bvp/BetterVideoPlayer;->setSource(Landroid/net/Uri;Ljava/util/Map;)V

    .line 96
    .line 97
    .line 98
    if-eqz p2, :cond_6

    .line 99
    .line 100
    iget-object p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 101
    .line 102
    invoke-virtual {p1}, Lflix/com/vision/bvp/BetterVideoPlayer;->removeCaptions()V

    .line 103
    .line 104
    .line 105
    :cond_6
    const-string p1, "playSource: Preparing and starting playback"

    .line 106
    .line 107
    new-array p2, v2, [Ljava/lang/Object;

    .line 108
    .line 109
    invoke-static {p1, p2}, Lflix/com/vision/bvp/BetterVideoPlayer;->LOG(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    iget-object p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 113
    .line 114
    invoke-virtual {p1}, Lflix/com/vision/bvp/BetterVideoPlayer;->prepare()V

    .line 115
    .line 116
    .line 117
    iget-object p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 118
    .line 119
    invoke-virtual {p1}, Lflix/com/vision/bvp/BetterVideoPlayer;->start()V

    .line 120
    .line 121
    .line 122
    :cond_7
    return-void
.end method

.method public final z(Z)V
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-boolean p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->H0:Z

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lflix/com/vision/activities/player/SimpleVideoPlayer;->F()V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget-object p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->s:Lcom/github/ybq/android/spinkit/SpinKitView;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_1
    iget-boolean p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->H0:Z

    .line 19
    .line 20
    if-eqz p1, :cond_2

    .line 21
    .line 22
    invoke-virtual {p0}, Lflix/com/vision/activities/player/SimpleVideoPlayer;->s()V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_2
    iget-object p1, p0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->s:Lcom/github/ybq/android/spinkit/SpinKitView;

    .line 27
    .line 28
    const/16 v0, 0x8

    .line 29
    .line 30
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 31
    .line 32
    .line 33
    return-void
.end method
