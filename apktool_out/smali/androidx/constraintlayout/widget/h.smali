.class public final Landroidx/constraintlayout/widget/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final p0:Landroid/util/SparseIntArray;


# instance fields
.field public A:I

.field public B:F

.field public C:I

.field public D:I

.field public E:I

.field public F:I

.field public G:I

.field public H:I

.field public I:I

.field public J:I

.field public K:I

.field public L:I

.field public M:I

.field public N:I

.field public O:I

.field public P:I

.field public Q:I

.field public R:I

.field public S:I

.field public T:F

.field public U:F

.field public V:I

.field public W:I

.field public X:I

.field public Y:I

.field public Z:I

.field public a:Z

.field public a0:I

.field public b:I

.field public b0:I

.field public c:I

.field public c0:I

.field public d:I

.field public d0:F

.field public e:I

.field public e0:F

.field public f:F

.field public f0:I

.field public g:Z

.field public g0:I

.field public h:I

.field public h0:I

.field public i:I

.field public i0:[I

.field public j:I

.field public j0:Ljava/lang/String;

.field public k:I

.field public k0:Ljava/lang/String;

.field public l:I

.field public l0:Z

.field public m:I

.field public m0:Z

.field public n:I

.field public n0:Z

.field public o:I

.field public o0:I

.field public p:I

.field public q:I

.field public r:I

.field public s:I

.field public t:I

.field public u:I

.field public v:I

.field public w:F

.field public x:F

.field public y:Ljava/lang/String;

.field public z:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Landroid/util/SparseIntArray;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/constraintlayout/widget/h;->p0:Landroid/util/SparseIntArray;

    .line 7
    .line 8
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_constraintLeft_toLeftOf:I

    .line 9
    .line 10
    const/16 v2, 0x18

    .line 11
    .line 12
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 13
    .line 14
    .line 15
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_constraintLeft_toRightOf:I

    .line 16
    .line 17
    const/16 v2, 0x19

    .line 18
    .line 19
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 20
    .line 21
    .line 22
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_constraintRight_toLeftOf:I

    .line 23
    .line 24
    const/16 v2, 0x1c

    .line 25
    .line 26
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 27
    .line 28
    .line 29
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_constraintRight_toRightOf:I

    .line 30
    .line 31
    const/16 v2, 0x1d

    .line 32
    .line 33
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 34
    .line 35
    .line 36
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_constraintTop_toTopOf:I

    .line 37
    .line 38
    const/16 v2, 0x23

    .line 39
    .line 40
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 41
    .line 42
    .line 43
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_constraintTop_toBottomOf:I

    .line 44
    .line 45
    const/16 v2, 0x22

    .line 46
    .line 47
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 48
    .line 49
    .line 50
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_constraintBottom_toTopOf:I

    .line 51
    .line 52
    const/4 v2, 0x4

    .line 53
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 54
    .line 55
    .line 56
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_constraintBottom_toBottomOf:I

    .line 57
    .line 58
    const/4 v2, 0x3

    .line 59
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 60
    .line 61
    .line 62
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_constraintBaseline_toBaselineOf:I

    .line 63
    .line 64
    const/4 v2, 0x1

    .line 65
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 66
    .line 67
    .line 68
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_editor_absoluteX:I

    .line 69
    .line 70
    const/4 v2, 0x6

    .line 71
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 72
    .line 73
    .line 74
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_editor_absoluteY:I

    .line 75
    .line 76
    const/4 v2, 0x7

    .line 77
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 78
    .line 79
    .line 80
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_constraintGuide_begin:I

    .line 81
    .line 82
    const/16 v2, 0x11

    .line 83
    .line 84
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 85
    .line 86
    .line 87
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_constraintGuide_end:I

    .line 88
    .line 89
    const/16 v2, 0x12

    .line 90
    .line 91
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 92
    .line 93
    .line 94
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_constraintGuide_percent:I

    .line 95
    .line 96
    const/16 v2, 0x13

    .line 97
    .line 98
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 99
    .line 100
    .line 101
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_guidelineUseRtl:I

    .line 102
    .line 103
    const/16 v2, 0x5a

    .line 104
    .line 105
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 106
    .line 107
    .line 108
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_android_orientation:I

    .line 109
    .line 110
    const/16 v2, 0x1a

    .line 111
    .line 112
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 113
    .line 114
    .line 115
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_constraintStart_toEndOf:I

    .line 116
    .line 117
    const/16 v2, 0x1f

    .line 118
    .line 119
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 120
    .line 121
    .line 122
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_constraintStart_toStartOf:I

    .line 123
    .line 124
    const/16 v2, 0x20

    .line 125
    .line 126
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 127
    .line 128
    .line 129
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_constraintEnd_toStartOf:I

    .line 130
    .line 131
    const/16 v2, 0xa

    .line 132
    .line 133
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 134
    .line 135
    .line 136
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_constraintEnd_toEndOf:I

    .line 137
    .line 138
    const/16 v2, 0x9

    .line 139
    .line 140
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 141
    .line 142
    .line 143
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_goneMarginLeft:I

    .line 144
    .line 145
    const/16 v2, 0xd

    .line 146
    .line 147
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 148
    .line 149
    .line 150
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_goneMarginTop:I

    .line 151
    .line 152
    const/16 v2, 0x10

    .line 153
    .line 154
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 155
    .line 156
    .line 157
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_goneMarginRight:I

    .line 158
    .line 159
    const/16 v2, 0xe

    .line 160
    .line 161
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 162
    .line 163
    .line 164
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_goneMarginBottom:I

    .line 165
    .line 166
    const/16 v2, 0xb

    .line 167
    .line 168
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 169
    .line 170
    .line 171
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_goneMarginStart:I

    .line 172
    .line 173
    const/16 v2, 0xf

    .line 174
    .line 175
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 176
    .line 177
    .line 178
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_goneMarginEnd:I

    .line 179
    .line 180
    const/16 v2, 0xc

    .line 181
    .line 182
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 183
    .line 184
    .line 185
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_constraintVertical_weight:I

    .line 186
    .line 187
    const/16 v2, 0x26

    .line 188
    .line 189
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 190
    .line 191
    .line 192
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_constraintHorizontal_weight:I

    .line 193
    .line 194
    const/16 v2, 0x25

    .line 195
    .line 196
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 197
    .line 198
    .line 199
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_constraintHorizontal_chainStyle:I

    .line 200
    .line 201
    const/16 v2, 0x27

    .line 202
    .line 203
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 204
    .line 205
    .line 206
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_constraintVertical_chainStyle:I

    .line 207
    .line 208
    const/16 v2, 0x28

    .line 209
    .line 210
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 211
    .line 212
    .line 213
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_constraintHorizontal_bias:I

    .line 214
    .line 215
    const/16 v2, 0x14

    .line 216
    .line 217
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 218
    .line 219
    .line 220
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_constraintVertical_bias:I

    .line 221
    .line 222
    const/16 v2, 0x24

    .line 223
    .line 224
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 225
    .line 226
    .line 227
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_constraintDimensionRatio:I

    .line 228
    .line 229
    const/4 v2, 0x5

    .line 230
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 231
    .line 232
    .line 233
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_constraintLeft_creator:I

    .line 234
    .line 235
    const/16 v2, 0x5b

    .line 236
    .line 237
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 238
    .line 239
    .line 240
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_constraintTop_creator:I

    .line 241
    .line 242
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 243
    .line 244
    .line 245
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_constraintRight_creator:I

    .line 246
    .line 247
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 248
    .line 249
    .line 250
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_constraintBottom_creator:I

    .line 251
    .line 252
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 253
    .line 254
    .line 255
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_constraintBaseline_creator:I

    .line 256
    .line 257
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 258
    .line 259
    .line 260
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_android_layout_marginLeft:I

    .line 261
    .line 262
    const/16 v2, 0x17

    .line 263
    .line 264
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 265
    .line 266
    .line 267
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_android_layout_marginRight:I

    .line 268
    .line 269
    const/16 v2, 0x1b

    .line 270
    .line 271
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 272
    .line 273
    .line 274
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_android_layout_marginStart:I

    .line 275
    .line 276
    const/16 v2, 0x1e

    .line 277
    .line 278
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 279
    .line 280
    .line 281
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_android_layout_marginEnd:I

    .line 282
    .line 283
    const/16 v2, 0x8

    .line 284
    .line 285
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 286
    .line 287
    .line 288
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_android_layout_marginTop:I

    .line 289
    .line 290
    const/16 v2, 0x21

    .line 291
    .line 292
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 293
    .line 294
    .line 295
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_android_layout_marginBottom:I

    .line 296
    .line 297
    const/4 v2, 0x2

    .line 298
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 299
    .line 300
    .line 301
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_android_layout_width:I

    .line 302
    .line 303
    const/16 v2, 0x16

    .line 304
    .line 305
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 306
    .line 307
    .line 308
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_android_layout_height:I

    .line 309
    .line 310
    const/16 v2, 0x15

    .line 311
    .line 312
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 313
    .line 314
    .line 315
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_constraintWidth:I

    .line 316
    .line 317
    const/16 v2, 0x29

    .line 318
    .line 319
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 320
    .line 321
    .line 322
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_constraintHeight:I

    .line 323
    .line 324
    const/16 v3, 0x2a

    .line 325
    .line 326
    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 327
    .line 328
    .line 329
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_constrainedWidth:I

    .line 330
    .line 331
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 332
    .line 333
    .line 334
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_constrainedHeight:I

    .line 335
    .line 336
    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 337
    .line 338
    .line 339
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_wrapBehaviorInParent:I

    .line 340
    .line 341
    const/16 v2, 0x4c

    .line 342
    .line 343
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 344
    .line 345
    .line 346
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_constraintCircle:I

    .line 347
    .line 348
    const/16 v2, 0x3d

    .line 349
    .line 350
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 351
    .line 352
    .line 353
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_constraintCircleRadius:I

    .line 354
    .line 355
    const/16 v2, 0x3e

    .line 356
    .line 357
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 358
    .line 359
    .line 360
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_constraintCircleAngle:I

    .line 361
    .line 362
    const/16 v2, 0x3f

    .line 363
    .line 364
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 365
    .line 366
    .line 367
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_constraintWidth_percent:I

    .line 368
    .line 369
    const/16 v2, 0x45

    .line 370
    .line 371
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 372
    .line 373
    .line 374
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_constraintHeight_percent:I

    .line 375
    .line 376
    const/16 v2, 0x46

    .line 377
    .line 378
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 379
    .line 380
    .line 381
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_chainUseRtl:I

    .line 382
    .line 383
    const/16 v2, 0x47

    .line 384
    .line 385
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 386
    .line 387
    .line 388
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_barrierDirection:I

    .line 389
    .line 390
    const/16 v2, 0x48

    .line 391
    .line 392
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 393
    .line 394
    .line 395
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_barrierMargin:I

    .line 396
    .line 397
    const/16 v2, 0x49

    .line 398
    .line 399
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 400
    .line 401
    .line 402
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_constraint_referenced_ids:I

    .line 403
    .line 404
    const/16 v2, 0x4a

    .line 405
    .line 406
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 407
    .line 408
    .line 409
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_barrierAllowsGoneWidgets:I

    .line 410
    .line 411
    const/16 v2, 0x4b

    .line 412
    .line 413
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 414
    .line 415
    .line 416
    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/h;->a:Z

    .line 6
    .line 7
    const/4 v1, -0x1

    .line 8
    iput v1, p0, Landroidx/constraintlayout/widget/h;->d:I

    .line 9
    .line 10
    iput v1, p0, Landroidx/constraintlayout/widget/h;->e:I

    .line 11
    .line 12
    const/high16 v2, -0x40800000    # -1.0f

    .line 13
    .line 14
    iput v2, p0, Landroidx/constraintlayout/widget/h;->f:F

    .line 15
    .line 16
    const/4 v3, 0x1

    .line 17
    iput-boolean v3, p0, Landroidx/constraintlayout/widget/h;->g:Z

    .line 18
    .line 19
    iput v1, p0, Landroidx/constraintlayout/widget/h;->h:I

    .line 20
    .line 21
    iput v1, p0, Landroidx/constraintlayout/widget/h;->i:I

    .line 22
    .line 23
    iput v1, p0, Landroidx/constraintlayout/widget/h;->j:I

    .line 24
    .line 25
    iput v1, p0, Landroidx/constraintlayout/widget/h;->k:I

    .line 26
    .line 27
    iput v1, p0, Landroidx/constraintlayout/widget/h;->l:I

    .line 28
    .line 29
    iput v1, p0, Landroidx/constraintlayout/widget/h;->m:I

    .line 30
    .line 31
    iput v1, p0, Landroidx/constraintlayout/widget/h;->n:I

    .line 32
    .line 33
    iput v1, p0, Landroidx/constraintlayout/widget/h;->o:I

    .line 34
    .line 35
    iput v1, p0, Landroidx/constraintlayout/widget/h;->p:I

    .line 36
    .line 37
    iput v1, p0, Landroidx/constraintlayout/widget/h;->q:I

    .line 38
    .line 39
    iput v1, p0, Landroidx/constraintlayout/widget/h;->r:I

    .line 40
    .line 41
    iput v1, p0, Landroidx/constraintlayout/widget/h;->s:I

    .line 42
    .line 43
    iput v1, p0, Landroidx/constraintlayout/widget/h;->t:I

    .line 44
    .line 45
    iput v1, p0, Landroidx/constraintlayout/widget/h;->u:I

    .line 46
    .line 47
    iput v1, p0, Landroidx/constraintlayout/widget/h;->v:I

    .line 48
    .line 49
    const/high16 v4, 0x3f000000    # 0.5f

    .line 50
    .line 51
    iput v4, p0, Landroidx/constraintlayout/widget/h;->w:F

    .line 52
    .line 53
    iput v4, p0, Landroidx/constraintlayout/widget/h;->x:F

    .line 54
    .line 55
    const/4 v4, 0x0

    .line 56
    iput-object v4, p0, Landroidx/constraintlayout/widget/h;->y:Ljava/lang/String;

    .line 57
    .line 58
    iput v1, p0, Landroidx/constraintlayout/widget/h;->z:I

    .line 59
    .line 60
    iput v0, p0, Landroidx/constraintlayout/widget/h;->A:I

    .line 61
    .line 62
    const/4 v4, 0x0

    .line 63
    iput v4, p0, Landroidx/constraintlayout/widget/h;->B:F

    .line 64
    .line 65
    iput v1, p0, Landroidx/constraintlayout/widget/h;->C:I

    .line 66
    .line 67
    iput v1, p0, Landroidx/constraintlayout/widget/h;->D:I

    .line 68
    .line 69
    iput v1, p0, Landroidx/constraintlayout/widget/h;->E:I

    .line 70
    .line 71
    iput v0, p0, Landroidx/constraintlayout/widget/h;->F:I

    .line 72
    .line 73
    iput v0, p0, Landroidx/constraintlayout/widget/h;->G:I

    .line 74
    .line 75
    iput v0, p0, Landroidx/constraintlayout/widget/h;->H:I

    .line 76
    .line 77
    iput v0, p0, Landroidx/constraintlayout/widget/h;->I:I

    .line 78
    .line 79
    iput v0, p0, Landroidx/constraintlayout/widget/h;->J:I

    .line 80
    .line 81
    iput v0, p0, Landroidx/constraintlayout/widget/h;->K:I

    .line 82
    .line 83
    iput v0, p0, Landroidx/constraintlayout/widget/h;->L:I

    .line 84
    .line 85
    const/high16 v4, -0x80000000

    .line 86
    .line 87
    iput v4, p0, Landroidx/constraintlayout/widget/h;->M:I

    .line 88
    .line 89
    iput v4, p0, Landroidx/constraintlayout/widget/h;->N:I

    .line 90
    .line 91
    iput v4, p0, Landroidx/constraintlayout/widget/h;->O:I

    .line 92
    .line 93
    iput v4, p0, Landroidx/constraintlayout/widget/h;->P:I

    .line 94
    .line 95
    iput v4, p0, Landroidx/constraintlayout/widget/h;->Q:I

    .line 96
    .line 97
    iput v4, p0, Landroidx/constraintlayout/widget/h;->R:I

    .line 98
    .line 99
    iput v4, p0, Landroidx/constraintlayout/widget/h;->S:I

    .line 100
    .line 101
    iput v2, p0, Landroidx/constraintlayout/widget/h;->T:F

    .line 102
    .line 103
    iput v2, p0, Landroidx/constraintlayout/widget/h;->U:F

    .line 104
    .line 105
    iput v0, p0, Landroidx/constraintlayout/widget/h;->V:I

    .line 106
    .line 107
    iput v0, p0, Landroidx/constraintlayout/widget/h;->W:I

    .line 108
    .line 109
    iput v0, p0, Landroidx/constraintlayout/widget/h;->X:I

    .line 110
    .line 111
    iput v0, p0, Landroidx/constraintlayout/widget/h;->Y:I

    .line 112
    .line 113
    iput v0, p0, Landroidx/constraintlayout/widget/h;->Z:I

    .line 114
    .line 115
    iput v0, p0, Landroidx/constraintlayout/widget/h;->a0:I

    .line 116
    .line 117
    iput v0, p0, Landroidx/constraintlayout/widget/h;->b0:I

    .line 118
    .line 119
    iput v0, p0, Landroidx/constraintlayout/widget/h;->c0:I

    .line 120
    .line 121
    const/high16 v2, 0x3f800000    # 1.0f

    .line 122
    .line 123
    iput v2, p0, Landroidx/constraintlayout/widget/h;->d0:F

    .line 124
    .line 125
    iput v2, p0, Landroidx/constraintlayout/widget/h;->e0:F

    .line 126
    .line 127
    iput v1, p0, Landroidx/constraintlayout/widget/h;->f0:I

    .line 128
    .line 129
    iput v0, p0, Landroidx/constraintlayout/widget/h;->g0:I

    .line 130
    .line 131
    iput v1, p0, Landroidx/constraintlayout/widget/h;->h0:I

    .line 132
    .line 133
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/h;->l0:Z

    .line 134
    .line 135
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/h;->m0:Z

    .line 136
    .line 137
    iput-boolean v3, p0, Landroidx/constraintlayout/widget/h;->n0:Z

    .line 138
    .line 139
    iput v0, p0, Landroidx/constraintlayout/widget/h;->o0:I

    .line 140
    .line 141
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    .line 1
    sget-object v0, Landroidx/constraintlayout/widget/R$styleable;->Layout:[I

    .line 2
    .line 3
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    const/4 v0, 0x0

    .line 12
    move v1, v0

    .line 13
    :goto_0
    if-ge v1, p2, :cond_0

    .line 14
    .line 15
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    sget-object v3, Landroidx/constraintlayout/widget/h;->p0:Landroid/util/SparseIntArray;

    .line 20
    .line 21
    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->get(I)I

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    packed-switch v4, :pswitch_data_0

    .line 26
    .line 27
    .line 28
    packed-switch v4, :pswitch_data_1

    .line 29
    .line 30
    .line 31
    const/high16 v5, 0x3f800000    # 1.0f

    .line 32
    .line 33
    const-string v6, "   "

    .line 34
    .line 35
    const-string v7, "ConstraintSet"

    .line 36
    .line 37
    packed-switch v4, :pswitch_data_2

    .line 38
    .line 39
    .line 40
    new-instance v4, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    const-string v5, "Unknown attribute 0x"

    .line 43
    .line 44
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->get(I)I

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-static {v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    goto/16 :goto_1

    .line 72
    .line 73
    :pswitch_0
    new-instance v4, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    const-string v5, "unused attribute 0x"

    .line 76
    .line 77
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v5

    .line 84
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->get(I)I

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    invoke-static {v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    .line 103
    .line 104
    goto/16 :goto_1

    .line 105
    .line 106
    :pswitch_1
    iget-boolean v3, p0, Landroidx/constraintlayout/widget/h;->g:Z

    .line 107
    .line 108
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 109
    .line 110
    .line 111
    move-result v2

    .line 112
    iput-boolean v2, p0, Landroidx/constraintlayout/widget/h;->g:Z

    .line 113
    .line 114
    goto/16 :goto_1

    .line 115
    .line 116
    :pswitch_2
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    iput-object v2, p0, Landroidx/constraintlayout/widget/h;->k0:Ljava/lang/String;

    .line 121
    .line 122
    goto/16 :goto_1

    .line 123
    .line 124
    :pswitch_3
    iget-boolean v3, p0, Landroidx/constraintlayout/widget/h;->m0:Z

    .line 125
    .line 126
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 127
    .line 128
    .line 129
    move-result v2

    .line 130
    iput-boolean v2, p0, Landroidx/constraintlayout/widget/h;->m0:Z

    .line 131
    .line 132
    goto/16 :goto_1

    .line 133
    .line 134
    :pswitch_4
    iget-boolean v3, p0, Landroidx/constraintlayout/widget/h;->l0:Z

    .line 135
    .line 136
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 137
    .line 138
    .line 139
    move-result v2

    .line 140
    iput-boolean v2, p0, Landroidx/constraintlayout/widget/h;->l0:Z

    .line 141
    .line 142
    goto/16 :goto_1

    .line 143
    .line 144
    :pswitch_5
    iget v3, p0, Landroidx/constraintlayout/widget/h;->b0:I

    .line 145
    .line 146
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 147
    .line 148
    .line 149
    move-result v2

    .line 150
    iput v2, p0, Landroidx/constraintlayout/widget/h;->b0:I

    .line 151
    .line 152
    goto/16 :goto_1

    .line 153
    .line 154
    :pswitch_6
    iget v3, p0, Landroidx/constraintlayout/widget/h;->c0:I

    .line 155
    .line 156
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 157
    .line 158
    .line 159
    move-result v2

    .line 160
    iput v2, p0, Landroidx/constraintlayout/widget/h;->c0:I

    .line 161
    .line 162
    goto/16 :goto_1

    .line 163
    .line 164
    :pswitch_7
    iget v3, p0, Landroidx/constraintlayout/widget/h;->Z:I

    .line 165
    .line 166
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 167
    .line 168
    .line 169
    move-result v2

    .line 170
    iput v2, p0, Landroidx/constraintlayout/widget/h;->Z:I

    .line 171
    .line 172
    goto/16 :goto_1

    .line 173
    .line 174
    :pswitch_8
    iget v3, p0, Landroidx/constraintlayout/widget/h;->a0:I

    .line 175
    .line 176
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 177
    .line 178
    .line 179
    move-result v2

    .line 180
    iput v2, p0, Landroidx/constraintlayout/widget/h;->a0:I

    .line 181
    .line 182
    goto/16 :goto_1

    .line 183
    .line 184
    :pswitch_9
    iget v3, p0, Landroidx/constraintlayout/widget/h;->Y:I

    .line 185
    .line 186
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 187
    .line 188
    .line 189
    move-result v2

    .line 190
    iput v2, p0, Landroidx/constraintlayout/widget/h;->Y:I

    .line 191
    .line 192
    goto/16 :goto_1

    .line 193
    .line 194
    :pswitch_a
    iget v3, p0, Landroidx/constraintlayout/widget/h;->X:I

    .line 195
    .line 196
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 197
    .line 198
    .line 199
    move-result v2

    .line 200
    iput v2, p0, Landroidx/constraintlayout/widget/h;->X:I

    .line 201
    .line 202
    goto/16 :goto_1

    .line 203
    .line 204
    :pswitch_b
    iget v3, p0, Landroidx/constraintlayout/widget/h;->L:I

    .line 205
    .line 206
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 207
    .line 208
    .line 209
    move-result v2

    .line 210
    iput v2, p0, Landroidx/constraintlayout/widget/h;->L:I

    .line 211
    .line 212
    goto/16 :goto_1

    .line 213
    .line 214
    :pswitch_c
    iget v3, p0, Landroidx/constraintlayout/widget/h;->S:I

    .line 215
    .line 216
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 217
    .line 218
    .line 219
    move-result v2

    .line 220
    iput v2, p0, Landroidx/constraintlayout/widget/h;->S:I

    .line 221
    .line 222
    goto/16 :goto_1

    .line 223
    .line 224
    :pswitch_d
    iget v3, p0, Landroidx/constraintlayout/widget/h;->r:I

    .line 225
    .line 226
    invoke-static {p1, v2, v3}, Landroidx/constraintlayout/widget/l;->d(Landroid/content/res/TypedArray;II)I

    .line 227
    .line 228
    .line 229
    move-result v2

    .line 230
    iput v2, p0, Landroidx/constraintlayout/widget/h;->r:I

    .line 231
    .line 232
    goto/16 :goto_1

    .line 233
    .line 234
    :pswitch_e
    iget v3, p0, Landroidx/constraintlayout/widget/h;->q:I

    .line 235
    .line 236
    invoke-static {p1, v2, v3}, Landroidx/constraintlayout/widget/l;->d(Landroid/content/res/TypedArray;II)I

    .line 237
    .line 238
    .line 239
    move-result v2

    .line 240
    iput v2, p0, Landroidx/constraintlayout/widget/h;->q:I

    .line 241
    .line 242
    goto/16 :goto_1

    .line 243
    .line 244
    :pswitch_f
    iget v3, p0, Landroidx/constraintlayout/widget/h;->o0:I

    .line 245
    .line 246
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 247
    .line 248
    .line 249
    move-result v2

    .line 250
    iput v2, p0, Landroidx/constraintlayout/widget/h;->o0:I

    .line 251
    .line 252
    goto/16 :goto_1

    .line 253
    .line 254
    :pswitch_10
    iget-boolean v3, p0, Landroidx/constraintlayout/widget/h;->n0:Z

    .line 255
    .line 256
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 257
    .line 258
    .line 259
    move-result v2

    .line 260
    iput-boolean v2, p0, Landroidx/constraintlayout/widget/h;->n0:Z

    .line 261
    .line 262
    goto/16 :goto_1

    .line 263
    .line 264
    :pswitch_11
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v2

    .line 268
    iput-object v2, p0, Landroidx/constraintlayout/widget/h;->j0:Ljava/lang/String;

    .line 269
    .line 270
    goto/16 :goto_1

    .line 271
    .line 272
    :pswitch_12
    iget v3, p0, Landroidx/constraintlayout/widget/h;->g0:I

    .line 273
    .line 274
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 275
    .line 276
    .line 277
    move-result v2

    .line 278
    iput v2, p0, Landroidx/constraintlayout/widget/h;->g0:I

    .line 279
    .line 280
    goto/16 :goto_1

    .line 281
    .line 282
    :pswitch_13
    iget v3, p0, Landroidx/constraintlayout/widget/h;->f0:I

    .line 283
    .line 284
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 285
    .line 286
    .line 287
    move-result v2

    .line 288
    iput v2, p0, Landroidx/constraintlayout/widget/h;->f0:I

    .line 289
    .line 290
    goto/16 :goto_1

    .line 291
    .line 292
    :pswitch_14
    const-string v2, "CURRENTLY UNSUPPORTED"

    .line 293
    .line 294
    invoke-static {v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    .line 296
    .line 297
    goto/16 :goto_1

    .line 298
    .line 299
    :pswitch_15
    invoke-virtual {p1, v2, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 300
    .line 301
    .line 302
    move-result v2

    .line 303
    iput v2, p0, Landroidx/constraintlayout/widget/h;->e0:F

    .line 304
    .line 305
    goto/16 :goto_1

    .line 306
    .line 307
    :pswitch_16
    invoke-virtual {p1, v2, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 308
    .line 309
    .line 310
    move-result v2

    .line 311
    iput v2, p0, Landroidx/constraintlayout/widget/h;->d0:F

    .line 312
    .line 313
    goto/16 :goto_1

    .line 314
    .line 315
    :pswitch_17
    iget v3, p0, Landroidx/constraintlayout/widget/h;->B:F

    .line 316
    .line 317
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 318
    .line 319
    .line 320
    move-result v2

    .line 321
    iput v2, p0, Landroidx/constraintlayout/widget/h;->B:F

    .line 322
    .line 323
    goto/16 :goto_1

    .line 324
    .line 325
    :pswitch_18
    iget v3, p0, Landroidx/constraintlayout/widget/h;->A:I

    .line 326
    .line 327
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 328
    .line 329
    .line 330
    move-result v2

    .line 331
    iput v2, p0, Landroidx/constraintlayout/widget/h;->A:I

    .line 332
    .line 333
    goto/16 :goto_1

    .line 334
    .line 335
    :pswitch_19
    iget v3, p0, Landroidx/constraintlayout/widget/h;->z:I

    .line 336
    .line 337
    invoke-static {p1, v2, v3}, Landroidx/constraintlayout/widget/l;->d(Landroid/content/res/TypedArray;II)I

    .line 338
    .line 339
    .line 340
    move-result v2

    .line 341
    iput v2, p0, Landroidx/constraintlayout/widget/h;->z:I

    .line 342
    .line 343
    goto/16 :goto_1

    .line 344
    .line 345
    :pswitch_1a
    const/4 v3, 0x1

    .line 346
    invoke-static {p0, p1, v2, v3}, Landroidx/constraintlayout/widget/l;->e(Ljava/lang/Object;Landroid/content/res/TypedArray;II)V

    .line 347
    .line 348
    .line 349
    goto/16 :goto_1

    .line 350
    .line 351
    :pswitch_1b
    invoke-static {p0, p1, v2, v0}, Landroidx/constraintlayout/widget/l;->e(Ljava/lang/Object;Landroid/content/res/TypedArray;II)V

    .line 352
    .line 353
    .line 354
    goto/16 :goto_1

    .line 355
    .line 356
    :pswitch_1c
    iget v3, p0, Landroidx/constraintlayout/widget/h;->W:I

    .line 357
    .line 358
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 359
    .line 360
    .line 361
    move-result v2

    .line 362
    iput v2, p0, Landroidx/constraintlayout/widget/h;->W:I

    .line 363
    .line 364
    goto/16 :goto_1

    .line 365
    .line 366
    :pswitch_1d
    iget v3, p0, Landroidx/constraintlayout/widget/h;->V:I

    .line 367
    .line 368
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 369
    .line 370
    .line 371
    move-result v2

    .line 372
    iput v2, p0, Landroidx/constraintlayout/widget/h;->V:I

    .line 373
    .line 374
    goto/16 :goto_1

    .line 375
    .line 376
    :pswitch_1e
    iget v3, p0, Landroidx/constraintlayout/widget/h;->T:F

    .line 377
    .line 378
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 379
    .line 380
    .line 381
    move-result v2

    .line 382
    iput v2, p0, Landroidx/constraintlayout/widget/h;->T:F

    .line 383
    .line 384
    goto/16 :goto_1

    .line 385
    .line 386
    :pswitch_1f
    iget v3, p0, Landroidx/constraintlayout/widget/h;->U:F

    .line 387
    .line 388
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 389
    .line 390
    .line 391
    move-result v2

    .line 392
    iput v2, p0, Landroidx/constraintlayout/widget/h;->U:F

    .line 393
    .line 394
    goto/16 :goto_1

    .line 395
    .line 396
    :pswitch_20
    iget v3, p0, Landroidx/constraintlayout/widget/h;->x:F

    .line 397
    .line 398
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 399
    .line 400
    .line 401
    move-result v2

    .line 402
    iput v2, p0, Landroidx/constraintlayout/widget/h;->x:F

    .line 403
    .line 404
    goto/16 :goto_1

    .line 405
    .line 406
    :pswitch_21
    iget v3, p0, Landroidx/constraintlayout/widget/h;->l:I

    .line 407
    .line 408
    invoke-static {p1, v2, v3}, Landroidx/constraintlayout/widget/l;->d(Landroid/content/res/TypedArray;II)I

    .line 409
    .line 410
    .line 411
    move-result v2

    .line 412
    iput v2, p0, Landroidx/constraintlayout/widget/h;->l:I

    .line 413
    .line 414
    goto/16 :goto_1

    .line 415
    .line 416
    :pswitch_22
    iget v3, p0, Landroidx/constraintlayout/widget/h;->m:I

    .line 417
    .line 418
    invoke-static {p1, v2, v3}, Landroidx/constraintlayout/widget/l;->d(Landroid/content/res/TypedArray;II)I

    .line 419
    .line 420
    .line 421
    move-result v2

    .line 422
    iput v2, p0, Landroidx/constraintlayout/widget/h;->m:I

    .line 423
    .line 424
    goto/16 :goto_1

    .line 425
    .line 426
    :pswitch_23
    iget v3, p0, Landroidx/constraintlayout/widget/h;->H:I

    .line 427
    .line 428
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 429
    .line 430
    .line 431
    move-result v2

    .line 432
    iput v2, p0, Landroidx/constraintlayout/widget/h;->H:I

    .line 433
    .line 434
    goto/16 :goto_1

    .line 435
    .line 436
    :pswitch_24
    iget v3, p0, Landroidx/constraintlayout/widget/h;->t:I

    .line 437
    .line 438
    invoke-static {p1, v2, v3}, Landroidx/constraintlayout/widget/l;->d(Landroid/content/res/TypedArray;II)I

    .line 439
    .line 440
    .line 441
    move-result v2

    .line 442
    iput v2, p0, Landroidx/constraintlayout/widget/h;->t:I

    .line 443
    .line 444
    goto/16 :goto_1

    .line 445
    .line 446
    :pswitch_25
    iget v3, p0, Landroidx/constraintlayout/widget/h;->s:I

    .line 447
    .line 448
    invoke-static {p1, v2, v3}, Landroidx/constraintlayout/widget/l;->d(Landroid/content/res/TypedArray;II)I

    .line 449
    .line 450
    .line 451
    move-result v2

    .line 452
    iput v2, p0, Landroidx/constraintlayout/widget/h;->s:I

    .line 453
    .line 454
    goto/16 :goto_1

    .line 455
    .line 456
    :pswitch_26
    iget v3, p0, Landroidx/constraintlayout/widget/h;->K:I

    .line 457
    .line 458
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 459
    .line 460
    .line 461
    move-result v2

    .line 462
    iput v2, p0, Landroidx/constraintlayout/widget/h;->K:I

    .line 463
    .line 464
    goto/16 :goto_1

    .line 465
    .line 466
    :pswitch_27
    iget v3, p0, Landroidx/constraintlayout/widget/h;->k:I

    .line 467
    .line 468
    invoke-static {p1, v2, v3}, Landroidx/constraintlayout/widget/l;->d(Landroid/content/res/TypedArray;II)I

    .line 469
    .line 470
    .line 471
    move-result v2

    .line 472
    iput v2, p0, Landroidx/constraintlayout/widget/h;->k:I

    .line 473
    .line 474
    goto/16 :goto_1

    .line 475
    .line 476
    :pswitch_28
    iget v3, p0, Landroidx/constraintlayout/widget/h;->j:I

    .line 477
    .line 478
    invoke-static {p1, v2, v3}, Landroidx/constraintlayout/widget/l;->d(Landroid/content/res/TypedArray;II)I

    .line 479
    .line 480
    .line 481
    move-result v2

    .line 482
    iput v2, p0, Landroidx/constraintlayout/widget/h;->j:I

    .line 483
    .line 484
    goto/16 :goto_1

    .line 485
    .line 486
    :pswitch_29
    iget v3, p0, Landroidx/constraintlayout/widget/h;->G:I

    .line 487
    .line 488
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 489
    .line 490
    .line 491
    move-result v2

    .line 492
    iput v2, p0, Landroidx/constraintlayout/widget/h;->G:I

    .line 493
    .line 494
    goto/16 :goto_1

    .line 495
    .line 496
    :pswitch_2a
    iget v3, p0, Landroidx/constraintlayout/widget/h;->E:I

    .line 497
    .line 498
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 499
    .line 500
    .line 501
    move-result v2

    .line 502
    iput v2, p0, Landroidx/constraintlayout/widget/h;->E:I

    .line 503
    .line 504
    goto/16 :goto_1

    .line 505
    .line 506
    :pswitch_2b
    iget v3, p0, Landroidx/constraintlayout/widget/h;->i:I

    .line 507
    .line 508
    invoke-static {p1, v2, v3}, Landroidx/constraintlayout/widget/l;->d(Landroid/content/res/TypedArray;II)I

    .line 509
    .line 510
    .line 511
    move-result v2

    .line 512
    iput v2, p0, Landroidx/constraintlayout/widget/h;->i:I

    .line 513
    .line 514
    goto/16 :goto_1

    .line 515
    .line 516
    :pswitch_2c
    iget v3, p0, Landroidx/constraintlayout/widget/h;->h:I

    .line 517
    .line 518
    invoke-static {p1, v2, v3}, Landroidx/constraintlayout/widget/l;->d(Landroid/content/res/TypedArray;II)I

    .line 519
    .line 520
    .line 521
    move-result v2

    .line 522
    iput v2, p0, Landroidx/constraintlayout/widget/h;->h:I

    .line 523
    .line 524
    goto/16 :goto_1

    .line 525
    .line 526
    :pswitch_2d
    iget v3, p0, Landroidx/constraintlayout/widget/h;->F:I

    .line 527
    .line 528
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 529
    .line 530
    .line 531
    move-result v2

    .line 532
    iput v2, p0, Landroidx/constraintlayout/widget/h;->F:I

    .line 533
    .line 534
    goto/16 :goto_1

    .line 535
    .line 536
    :pswitch_2e
    iget v3, p0, Landroidx/constraintlayout/widget/h;->b:I

    .line 537
    .line 538
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    .line 539
    .line 540
    .line 541
    move-result v2

    .line 542
    iput v2, p0, Landroidx/constraintlayout/widget/h;->b:I

    .line 543
    .line 544
    goto/16 :goto_1

    .line 545
    .line 546
    :pswitch_2f
    iget v3, p0, Landroidx/constraintlayout/widget/h;->c:I

    .line 547
    .line 548
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    .line 549
    .line 550
    .line 551
    move-result v2

    .line 552
    iput v2, p0, Landroidx/constraintlayout/widget/h;->c:I

    .line 553
    .line 554
    goto/16 :goto_1

    .line 555
    .line 556
    :pswitch_30
    iget v3, p0, Landroidx/constraintlayout/widget/h;->w:F

    .line 557
    .line 558
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 559
    .line 560
    .line 561
    move-result v2

    .line 562
    iput v2, p0, Landroidx/constraintlayout/widget/h;->w:F

    .line 563
    .line 564
    goto/16 :goto_1

    .line 565
    .line 566
    :pswitch_31
    iget v3, p0, Landroidx/constraintlayout/widget/h;->f:F

    .line 567
    .line 568
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 569
    .line 570
    .line 571
    move-result v2

    .line 572
    iput v2, p0, Landroidx/constraintlayout/widget/h;->f:F

    .line 573
    .line 574
    goto/16 :goto_1

    .line 575
    .line 576
    :pswitch_32
    iget v3, p0, Landroidx/constraintlayout/widget/h;->e:I

    .line 577
    .line 578
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 579
    .line 580
    .line 581
    move-result v2

    .line 582
    iput v2, p0, Landroidx/constraintlayout/widget/h;->e:I

    .line 583
    .line 584
    goto/16 :goto_1

    .line 585
    .line 586
    :pswitch_33
    iget v3, p0, Landroidx/constraintlayout/widget/h;->d:I

    .line 587
    .line 588
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 589
    .line 590
    .line 591
    move-result v2

    .line 592
    iput v2, p0, Landroidx/constraintlayout/widget/h;->d:I

    .line 593
    .line 594
    goto/16 :goto_1

    .line 595
    .line 596
    :pswitch_34
    iget v3, p0, Landroidx/constraintlayout/widget/h;->N:I

    .line 597
    .line 598
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 599
    .line 600
    .line 601
    move-result v2

    .line 602
    iput v2, p0, Landroidx/constraintlayout/widget/h;->N:I

    .line 603
    .line 604
    goto/16 :goto_1

    .line 605
    .line 606
    :pswitch_35
    iget v3, p0, Landroidx/constraintlayout/widget/h;->R:I

    .line 607
    .line 608
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 609
    .line 610
    .line 611
    move-result v2

    .line 612
    iput v2, p0, Landroidx/constraintlayout/widget/h;->R:I

    .line 613
    .line 614
    goto/16 :goto_1

    .line 615
    .line 616
    :pswitch_36
    iget v3, p0, Landroidx/constraintlayout/widget/h;->O:I

    .line 617
    .line 618
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 619
    .line 620
    .line 621
    move-result v2

    .line 622
    iput v2, p0, Landroidx/constraintlayout/widget/h;->O:I

    .line 623
    .line 624
    goto/16 :goto_1

    .line 625
    .line 626
    :pswitch_37
    iget v3, p0, Landroidx/constraintlayout/widget/h;->M:I

    .line 627
    .line 628
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 629
    .line 630
    .line 631
    move-result v2

    .line 632
    iput v2, p0, Landroidx/constraintlayout/widget/h;->M:I

    .line 633
    .line 634
    goto/16 :goto_1

    .line 635
    .line 636
    :pswitch_38
    iget v3, p0, Landroidx/constraintlayout/widget/h;->Q:I

    .line 637
    .line 638
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 639
    .line 640
    .line 641
    move-result v2

    .line 642
    iput v2, p0, Landroidx/constraintlayout/widget/h;->Q:I

    .line 643
    .line 644
    goto :goto_1

    .line 645
    :pswitch_39
    iget v3, p0, Landroidx/constraintlayout/widget/h;->P:I

    .line 646
    .line 647
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 648
    .line 649
    .line 650
    move-result v2

    .line 651
    iput v2, p0, Landroidx/constraintlayout/widget/h;->P:I

    .line 652
    .line 653
    goto :goto_1

    .line 654
    :pswitch_3a
    iget v3, p0, Landroidx/constraintlayout/widget/h;->u:I

    .line 655
    .line 656
    invoke-static {p1, v2, v3}, Landroidx/constraintlayout/widget/l;->d(Landroid/content/res/TypedArray;II)I

    .line 657
    .line 658
    .line 659
    move-result v2

    .line 660
    iput v2, p0, Landroidx/constraintlayout/widget/h;->u:I

    .line 661
    .line 662
    goto :goto_1

    .line 663
    :pswitch_3b
    iget v3, p0, Landroidx/constraintlayout/widget/h;->v:I

    .line 664
    .line 665
    invoke-static {p1, v2, v3}, Landroidx/constraintlayout/widget/l;->d(Landroid/content/res/TypedArray;II)I

    .line 666
    .line 667
    .line 668
    move-result v2

    .line 669
    iput v2, p0, Landroidx/constraintlayout/widget/h;->v:I

    .line 670
    .line 671
    goto :goto_1

    .line 672
    :pswitch_3c
    iget v3, p0, Landroidx/constraintlayout/widget/h;->J:I

    .line 673
    .line 674
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 675
    .line 676
    .line 677
    move-result v2

    .line 678
    iput v2, p0, Landroidx/constraintlayout/widget/h;->J:I

    .line 679
    .line 680
    goto :goto_1

    .line 681
    :pswitch_3d
    iget v3, p0, Landroidx/constraintlayout/widget/h;->D:I

    .line 682
    .line 683
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 684
    .line 685
    .line 686
    move-result v2

    .line 687
    iput v2, p0, Landroidx/constraintlayout/widget/h;->D:I

    .line 688
    .line 689
    goto :goto_1

    .line 690
    :pswitch_3e
    iget v3, p0, Landroidx/constraintlayout/widget/h;->C:I

    .line 691
    .line 692
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 693
    .line 694
    .line 695
    move-result v2

    .line 696
    iput v2, p0, Landroidx/constraintlayout/widget/h;->C:I

    .line 697
    .line 698
    goto :goto_1

    .line 699
    :pswitch_3f
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 700
    .line 701
    .line 702
    move-result-object v2

    .line 703
    iput-object v2, p0, Landroidx/constraintlayout/widget/h;->y:Ljava/lang/String;

    .line 704
    .line 705
    goto :goto_1

    .line 706
    :pswitch_40
    iget v3, p0, Landroidx/constraintlayout/widget/h;->n:I

    .line 707
    .line 708
    invoke-static {p1, v2, v3}, Landroidx/constraintlayout/widget/l;->d(Landroid/content/res/TypedArray;II)I

    .line 709
    .line 710
    .line 711
    move-result v2

    .line 712
    iput v2, p0, Landroidx/constraintlayout/widget/h;->n:I

    .line 713
    .line 714
    goto :goto_1

    .line 715
    :pswitch_41
    iget v3, p0, Landroidx/constraintlayout/widget/h;->o:I

    .line 716
    .line 717
    invoke-static {p1, v2, v3}, Landroidx/constraintlayout/widget/l;->d(Landroid/content/res/TypedArray;II)I

    .line 718
    .line 719
    .line 720
    move-result v2

    .line 721
    iput v2, p0, Landroidx/constraintlayout/widget/h;->o:I

    .line 722
    .line 723
    goto :goto_1

    .line 724
    :pswitch_42
    iget v3, p0, Landroidx/constraintlayout/widget/h;->I:I

    .line 725
    .line 726
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 727
    .line 728
    .line 729
    move-result v2

    .line 730
    iput v2, p0, Landroidx/constraintlayout/widget/h;->I:I

    .line 731
    .line 732
    goto :goto_1

    .line 733
    :pswitch_43
    iget v3, p0, Landroidx/constraintlayout/widget/h;->p:I

    .line 734
    .line 735
    invoke-static {p1, v2, v3}, Landroidx/constraintlayout/widget/l;->d(Landroid/content/res/TypedArray;II)I

    .line 736
    .line 737
    .line 738
    move-result v2

    .line 739
    iput v2, p0, Landroidx/constraintlayout/widget/h;->p:I

    .line 740
    .line 741
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 742
    .line 743
    goto/16 :goto_0

    .line 744
    .line 745
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 746
    .line 747
    .line 748
    return-void

    .line 749
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
    .end packed-switch

    .line 750
    .line 751
    .line 752
    .line 753
    .line 754
    .line 755
    .line 756
    .line 757
    .line 758
    .line 759
    .line 760
    .line 761
    .line 762
    .line 763
    .line 764
    .line 765
    .line 766
    .line 767
    .line 768
    .line 769
    .line 770
    .line 771
    .line 772
    .line 773
    .line 774
    .line 775
    .line 776
    .line 777
    .line 778
    .line 779
    .line 780
    .line 781
    .line 782
    .line 783
    .line 784
    .line 785
    .line 786
    .line 787
    .line 788
    .line 789
    .line 790
    .line 791
    .line 792
    .line 793
    .line 794
    .line 795
    .line 796
    .line 797
    .line 798
    .line 799
    .line 800
    .line 801
    .line 802
    .line 803
    .line 804
    .line 805
    .line 806
    .line 807
    .line 808
    .line 809
    .line 810
    .line 811
    .line 812
    .line 813
    .line 814
    .line 815
    .line 816
    .line 817
    .line 818
    .line 819
    .line 820
    .line 821
    .line 822
    .line 823
    .line 824
    .line 825
    .line 826
    .line 827
    .line 828
    .line 829
    .line 830
    .line 831
    .line 832
    .line 833
    .line 834
    .line 835
    .line 836
    .line 837
    :pswitch_data_1
    .packed-switch 0x3d
        :pswitch_19
        :pswitch_18
        :pswitch_17
    .end packed-switch

    .line 838
    .line 839
    .line 840
    .line 841
    .line 842
    .line 843
    .line 844
    .line 845
    .line 846
    .line 847
    :pswitch_data_2
    .packed-switch 0x45
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
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

.method public copyFrom(Landroidx/constraintlayout/widget/h;)V
    .locals 2

    .line 1
    iget-boolean v0, p1, Landroidx/constraintlayout/widget/h;->a:Z

    .line 2
    .line 3
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/h;->a:Z

    .line 4
    .line 5
    iget v0, p1, Landroidx/constraintlayout/widget/h;->b:I

    .line 6
    .line 7
    iput v0, p0, Landroidx/constraintlayout/widget/h;->b:I

    .line 8
    .line 9
    iget v0, p1, Landroidx/constraintlayout/widget/h;->c:I

    .line 10
    .line 11
    iput v0, p0, Landroidx/constraintlayout/widget/h;->c:I

    .line 12
    .line 13
    iget v0, p1, Landroidx/constraintlayout/widget/h;->d:I

    .line 14
    .line 15
    iput v0, p0, Landroidx/constraintlayout/widget/h;->d:I

    .line 16
    .line 17
    iget v0, p1, Landroidx/constraintlayout/widget/h;->e:I

    .line 18
    .line 19
    iput v0, p0, Landroidx/constraintlayout/widget/h;->e:I

    .line 20
    .line 21
    iget v0, p1, Landroidx/constraintlayout/widget/h;->f:F

    .line 22
    .line 23
    iput v0, p0, Landroidx/constraintlayout/widget/h;->f:F

    .line 24
    .line 25
    iget-boolean v0, p1, Landroidx/constraintlayout/widget/h;->g:Z

    .line 26
    .line 27
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/h;->g:Z

    .line 28
    .line 29
    iget v0, p1, Landroidx/constraintlayout/widget/h;->h:I

    .line 30
    .line 31
    iput v0, p0, Landroidx/constraintlayout/widget/h;->h:I

    .line 32
    .line 33
    iget v0, p1, Landroidx/constraintlayout/widget/h;->i:I

    .line 34
    .line 35
    iput v0, p0, Landroidx/constraintlayout/widget/h;->i:I

    .line 36
    .line 37
    iget v0, p1, Landroidx/constraintlayout/widget/h;->j:I

    .line 38
    .line 39
    iput v0, p0, Landroidx/constraintlayout/widget/h;->j:I

    .line 40
    .line 41
    iget v0, p1, Landroidx/constraintlayout/widget/h;->k:I

    .line 42
    .line 43
    iput v0, p0, Landroidx/constraintlayout/widget/h;->k:I

    .line 44
    .line 45
    iget v0, p1, Landroidx/constraintlayout/widget/h;->l:I

    .line 46
    .line 47
    iput v0, p0, Landroidx/constraintlayout/widget/h;->l:I

    .line 48
    .line 49
    iget v0, p1, Landroidx/constraintlayout/widget/h;->m:I

    .line 50
    .line 51
    iput v0, p0, Landroidx/constraintlayout/widget/h;->m:I

    .line 52
    .line 53
    iget v0, p1, Landroidx/constraintlayout/widget/h;->n:I

    .line 54
    .line 55
    iput v0, p0, Landroidx/constraintlayout/widget/h;->n:I

    .line 56
    .line 57
    iget v0, p1, Landroidx/constraintlayout/widget/h;->o:I

    .line 58
    .line 59
    iput v0, p0, Landroidx/constraintlayout/widget/h;->o:I

    .line 60
    .line 61
    iget v0, p1, Landroidx/constraintlayout/widget/h;->p:I

    .line 62
    .line 63
    iput v0, p0, Landroidx/constraintlayout/widget/h;->p:I

    .line 64
    .line 65
    iget v0, p1, Landroidx/constraintlayout/widget/h;->q:I

    .line 66
    .line 67
    iput v0, p0, Landroidx/constraintlayout/widget/h;->q:I

    .line 68
    .line 69
    iget v0, p1, Landroidx/constraintlayout/widget/h;->r:I

    .line 70
    .line 71
    iput v0, p0, Landroidx/constraintlayout/widget/h;->r:I

    .line 72
    .line 73
    iget v0, p1, Landroidx/constraintlayout/widget/h;->s:I

    .line 74
    .line 75
    iput v0, p0, Landroidx/constraintlayout/widget/h;->s:I

    .line 76
    .line 77
    iget v0, p1, Landroidx/constraintlayout/widget/h;->t:I

    .line 78
    .line 79
    iput v0, p0, Landroidx/constraintlayout/widget/h;->t:I

    .line 80
    .line 81
    iget v0, p1, Landroidx/constraintlayout/widget/h;->u:I

    .line 82
    .line 83
    iput v0, p0, Landroidx/constraintlayout/widget/h;->u:I

    .line 84
    .line 85
    iget v0, p1, Landroidx/constraintlayout/widget/h;->v:I

    .line 86
    .line 87
    iput v0, p0, Landroidx/constraintlayout/widget/h;->v:I

    .line 88
    .line 89
    iget v0, p1, Landroidx/constraintlayout/widget/h;->w:F

    .line 90
    .line 91
    iput v0, p0, Landroidx/constraintlayout/widget/h;->w:F

    .line 92
    .line 93
    iget v0, p1, Landroidx/constraintlayout/widget/h;->x:F

    .line 94
    .line 95
    iput v0, p0, Landroidx/constraintlayout/widget/h;->x:F

    .line 96
    .line 97
    iget-object v0, p1, Landroidx/constraintlayout/widget/h;->y:Ljava/lang/String;

    .line 98
    .line 99
    iput-object v0, p0, Landroidx/constraintlayout/widget/h;->y:Ljava/lang/String;

    .line 100
    .line 101
    iget v0, p1, Landroidx/constraintlayout/widget/h;->z:I

    .line 102
    .line 103
    iput v0, p0, Landroidx/constraintlayout/widget/h;->z:I

    .line 104
    .line 105
    iget v0, p1, Landroidx/constraintlayout/widget/h;->A:I

    .line 106
    .line 107
    iput v0, p0, Landroidx/constraintlayout/widget/h;->A:I

    .line 108
    .line 109
    iget v0, p1, Landroidx/constraintlayout/widget/h;->B:F

    .line 110
    .line 111
    iput v0, p0, Landroidx/constraintlayout/widget/h;->B:F

    .line 112
    .line 113
    iget v0, p1, Landroidx/constraintlayout/widget/h;->C:I

    .line 114
    .line 115
    iput v0, p0, Landroidx/constraintlayout/widget/h;->C:I

    .line 116
    .line 117
    iget v0, p1, Landroidx/constraintlayout/widget/h;->D:I

    .line 118
    .line 119
    iput v0, p0, Landroidx/constraintlayout/widget/h;->D:I

    .line 120
    .line 121
    iget v0, p1, Landroidx/constraintlayout/widget/h;->E:I

    .line 122
    .line 123
    iput v0, p0, Landroidx/constraintlayout/widget/h;->E:I

    .line 124
    .line 125
    iget v0, p1, Landroidx/constraintlayout/widget/h;->F:I

    .line 126
    .line 127
    iput v0, p0, Landroidx/constraintlayout/widget/h;->F:I

    .line 128
    .line 129
    iget v0, p1, Landroidx/constraintlayout/widget/h;->G:I

    .line 130
    .line 131
    iput v0, p0, Landroidx/constraintlayout/widget/h;->G:I

    .line 132
    .line 133
    iget v0, p1, Landroidx/constraintlayout/widget/h;->H:I

    .line 134
    .line 135
    iput v0, p0, Landroidx/constraintlayout/widget/h;->H:I

    .line 136
    .line 137
    iget v0, p1, Landroidx/constraintlayout/widget/h;->I:I

    .line 138
    .line 139
    iput v0, p0, Landroidx/constraintlayout/widget/h;->I:I

    .line 140
    .line 141
    iget v0, p1, Landroidx/constraintlayout/widget/h;->J:I

    .line 142
    .line 143
    iput v0, p0, Landroidx/constraintlayout/widget/h;->J:I

    .line 144
    .line 145
    iget v0, p1, Landroidx/constraintlayout/widget/h;->K:I

    .line 146
    .line 147
    iput v0, p0, Landroidx/constraintlayout/widget/h;->K:I

    .line 148
    .line 149
    iget v0, p1, Landroidx/constraintlayout/widget/h;->L:I

    .line 150
    .line 151
    iput v0, p0, Landroidx/constraintlayout/widget/h;->L:I

    .line 152
    .line 153
    iget v0, p1, Landroidx/constraintlayout/widget/h;->M:I

    .line 154
    .line 155
    iput v0, p0, Landroidx/constraintlayout/widget/h;->M:I

    .line 156
    .line 157
    iget v0, p1, Landroidx/constraintlayout/widget/h;->N:I

    .line 158
    .line 159
    iput v0, p0, Landroidx/constraintlayout/widget/h;->N:I

    .line 160
    .line 161
    iget v0, p1, Landroidx/constraintlayout/widget/h;->O:I

    .line 162
    .line 163
    iput v0, p0, Landroidx/constraintlayout/widget/h;->O:I

    .line 164
    .line 165
    iget v0, p1, Landroidx/constraintlayout/widget/h;->P:I

    .line 166
    .line 167
    iput v0, p0, Landroidx/constraintlayout/widget/h;->P:I

    .line 168
    .line 169
    iget v0, p1, Landroidx/constraintlayout/widget/h;->Q:I

    .line 170
    .line 171
    iput v0, p0, Landroidx/constraintlayout/widget/h;->Q:I

    .line 172
    .line 173
    iget v0, p1, Landroidx/constraintlayout/widget/h;->R:I

    .line 174
    .line 175
    iput v0, p0, Landroidx/constraintlayout/widget/h;->R:I

    .line 176
    .line 177
    iget v0, p1, Landroidx/constraintlayout/widget/h;->S:I

    .line 178
    .line 179
    iput v0, p0, Landroidx/constraintlayout/widget/h;->S:I

    .line 180
    .line 181
    iget v0, p1, Landroidx/constraintlayout/widget/h;->T:F

    .line 182
    .line 183
    iput v0, p0, Landroidx/constraintlayout/widget/h;->T:F

    .line 184
    .line 185
    iget v0, p1, Landroidx/constraintlayout/widget/h;->U:F

    .line 186
    .line 187
    iput v0, p0, Landroidx/constraintlayout/widget/h;->U:F

    .line 188
    .line 189
    iget v0, p1, Landroidx/constraintlayout/widget/h;->V:I

    .line 190
    .line 191
    iput v0, p0, Landroidx/constraintlayout/widget/h;->V:I

    .line 192
    .line 193
    iget v0, p1, Landroidx/constraintlayout/widget/h;->W:I

    .line 194
    .line 195
    iput v0, p0, Landroidx/constraintlayout/widget/h;->W:I

    .line 196
    .line 197
    iget v0, p1, Landroidx/constraintlayout/widget/h;->X:I

    .line 198
    .line 199
    iput v0, p0, Landroidx/constraintlayout/widget/h;->X:I

    .line 200
    .line 201
    iget v0, p1, Landroidx/constraintlayout/widget/h;->Y:I

    .line 202
    .line 203
    iput v0, p0, Landroidx/constraintlayout/widget/h;->Y:I

    .line 204
    .line 205
    iget v0, p1, Landroidx/constraintlayout/widget/h;->Z:I

    .line 206
    .line 207
    iput v0, p0, Landroidx/constraintlayout/widget/h;->Z:I

    .line 208
    .line 209
    iget v0, p1, Landroidx/constraintlayout/widget/h;->a0:I

    .line 210
    .line 211
    iput v0, p0, Landroidx/constraintlayout/widget/h;->a0:I

    .line 212
    .line 213
    iget v0, p1, Landroidx/constraintlayout/widget/h;->b0:I

    .line 214
    .line 215
    iput v0, p0, Landroidx/constraintlayout/widget/h;->b0:I

    .line 216
    .line 217
    iget v0, p1, Landroidx/constraintlayout/widget/h;->c0:I

    .line 218
    .line 219
    iput v0, p0, Landroidx/constraintlayout/widget/h;->c0:I

    .line 220
    .line 221
    iget v0, p1, Landroidx/constraintlayout/widget/h;->d0:F

    .line 222
    .line 223
    iput v0, p0, Landroidx/constraintlayout/widget/h;->d0:F

    .line 224
    .line 225
    iget v0, p1, Landroidx/constraintlayout/widget/h;->e0:F

    .line 226
    .line 227
    iput v0, p0, Landroidx/constraintlayout/widget/h;->e0:F

    .line 228
    .line 229
    iget v0, p1, Landroidx/constraintlayout/widget/h;->f0:I

    .line 230
    .line 231
    iput v0, p0, Landroidx/constraintlayout/widget/h;->f0:I

    .line 232
    .line 233
    iget v0, p1, Landroidx/constraintlayout/widget/h;->g0:I

    .line 234
    .line 235
    iput v0, p0, Landroidx/constraintlayout/widget/h;->g0:I

    .line 236
    .line 237
    iget v0, p1, Landroidx/constraintlayout/widget/h;->h0:I

    .line 238
    .line 239
    iput v0, p0, Landroidx/constraintlayout/widget/h;->h0:I

    .line 240
    .line 241
    iget-object v0, p1, Landroidx/constraintlayout/widget/h;->k0:Ljava/lang/String;

    .line 242
    .line 243
    iput-object v0, p0, Landroidx/constraintlayout/widget/h;->k0:Ljava/lang/String;

    .line 244
    .line 245
    iget-object v0, p1, Landroidx/constraintlayout/widget/h;->i0:[I

    .line 246
    .line 247
    if-eqz v0, :cond_0

    .line 248
    .line 249
    iget-object v1, p1, Landroidx/constraintlayout/widget/h;->j0:Ljava/lang/String;

    .line 250
    .line 251
    if-nez v1, :cond_0

    .line 252
    .line 253
    array-length v1, v0

    .line 254
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    .line 255
    .line 256
    .line 257
    move-result-object v0

    .line 258
    iput-object v0, p0, Landroidx/constraintlayout/widget/h;->i0:[I

    .line 259
    .line 260
    goto :goto_0

    .line 261
    :cond_0
    const/4 v0, 0x0

    .line 262
    iput-object v0, p0, Landroidx/constraintlayout/widget/h;->i0:[I

    .line 263
    .line 264
    :goto_0
    iget-object v0, p1, Landroidx/constraintlayout/widget/h;->j0:Ljava/lang/String;

    .line 265
    .line 266
    iput-object v0, p0, Landroidx/constraintlayout/widget/h;->j0:Ljava/lang/String;

    .line 267
    .line 268
    iget-boolean v0, p1, Landroidx/constraintlayout/widget/h;->l0:Z

    .line 269
    .line 270
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/h;->l0:Z

    .line 271
    .line 272
    iget-boolean v0, p1, Landroidx/constraintlayout/widget/h;->m0:Z

    .line 273
    .line 274
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/h;->m0:Z

    .line 275
    .line 276
    iget-boolean v0, p1, Landroidx/constraintlayout/widget/h;->n0:Z

    .line 277
    .line 278
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/h;->n0:Z

    .line 279
    .line 280
    iget p1, p1, Landroidx/constraintlayout/widget/h;->o0:I

    .line 281
    .line 282
    iput p1, p0, Landroidx/constraintlayout/widget/h;->o0:I

    .line 283
    .line 284
    return-void
.end method
