.class public final enum Lpl/droidsonroids/gif/GifError;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lpl/droidsonroids/gif/GifError;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum f:Lpl/droidsonroids/gif/GifError;

.field public static final enum j:Lpl/droidsonroids/gif/GifError;

.field public static final synthetic m:[Lpl/droidsonroids/gif/GifError;


# instance fields
.field public final b:Ljava/lang/String;

.field public e:I


# direct methods
.method static constructor <clinit>()V
    .locals 45

    .line 1
    new-instance v0, Lpl/droidsonroids/gif/GifError;

    .line 2
    .line 3
    const-string v1, "No error"

    .line 4
    .line 5
    const-string v2, "NO_ERROR"

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-direct {v0, v2, v3, v3, v1}, Lpl/droidsonroids/gif/GifError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v1, Lpl/droidsonroids/gif/GifError;

    .line 12
    .line 13
    const-string v2, "OPEN_FAILED"

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    const/16 v5, 0x65

    .line 17
    .line 18
    const-string v6, "Failed to open given input"

    .line 19
    .line 20
    invoke-direct {v1, v2, v4, v5, v6}, Lpl/droidsonroids/gif/GifError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sput-object v1, Lpl/droidsonroids/gif/GifError;->f:Lpl/droidsonroids/gif/GifError;

    .line 24
    .line 25
    new-instance v2, Lpl/droidsonroids/gif/GifError;

    .line 26
    .line 27
    const-string v5, "READ_FAILED"

    .line 28
    .line 29
    const/4 v6, 0x2

    .line 30
    const/16 v7, 0x66

    .line 31
    .line 32
    const-string v8, "Failed to read from given input"

    .line 33
    .line 34
    invoke-direct {v2, v5, v6, v7, v8}, Lpl/droidsonroids/gif/GifError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 35
    .line 36
    .line 37
    new-instance v5, Lpl/droidsonroids/gif/GifError;

    .line 38
    .line 39
    const-string v7, "NOT_GIF_FILE"

    .line 40
    .line 41
    const/4 v8, 0x3

    .line 42
    const/16 v9, 0x67

    .line 43
    .line 44
    const-string v10, "Data is not in GIF format"

    .line 45
    .line 46
    invoke-direct {v5, v7, v8, v9, v10}, Lpl/droidsonroids/gif/GifError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 47
    .line 48
    .line 49
    new-instance v7, Lpl/droidsonroids/gif/GifError;

    .line 50
    .line 51
    const-string v9, "NO_SCRN_DSCR"

    .line 52
    .line 53
    const/4 v10, 0x4

    .line 54
    const/16 v11, 0x68

    .line 55
    .line 56
    const-string v12, "No screen descriptor detected"

    .line 57
    .line 58
    invoke-direct {v7, v9, v10, v11, v12}, Lpl/droidsonroids/gif/GifError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 59
    .line 60
    .line 61
    new-instance v9, Lpl/droidsonroids/gif/GifError;

    .line 62
    .line 63
    const-string v11, "NO_IMAG_DSCR"

    .line 64
    .line 65
    const/4 v12, 0x5

    .line 66
    const/16 v13, 0x69

    .line 67
    .line 68
    const-string v14, "No image descriptor detected"

    .line 69
    .line 70
    invoke-direct {v9, v11, v12, v13, v14}, Lpl/droidsonroids/gif/GifError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 71
    .line 72
    .line 73
    new-instance v11, Lpl/droidsonroids/gif/GifError;

    .line 74
    .line 75
    const-string v13, "NO_COLOR_MAP"

    .line 76
    .line 77
    const/4 v14, 0x6

    .line 78
    const/16 v15, 0x6a

    .line 79
    .line 80
    move/from16 v16, v3

    .line 81
    .line 82
    const-string v3, "Neither global nor local color map found"

    .line 83
    .line 84
    invoke-direct {v11, v13, v14, v15, v3}, Lpl/droidsonroids/gif/GifError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 85
    .line 86
    .line 87
    new-instance v3, Lpl/droidsonroids/gif/GifError;

    .line 88
    .line 89
    const-string v13, "WRONG_RECORD"

    .line 90
    .line 91
    const/4 v15, 0x7

    .line 92
    move/from16 v17, v4

    .line 93
    .line 94
    const/16 v4, 0x6b

    .line 95
    .line 96
    move/from16 v18, v6

    .line 97
    .line 98
    const-string v6, "Wrong record type detected"

    .line 99
    .line 100
    invoke-direct {v3, v13, v15, v4, v6}, Lpl/droidsonroids/gif/GifError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 101
    .line 102
    .line 103
    new-instance v4, Lpl/droidsonroids/gif/GifError;

    .line 104
    .line 105
    const-string v6, "DATA_TOO_BIG"

    .line 106
    .line 107
    const/16 v13, 0x8

    .line 108
    .line 109
    move/from16 v19, v8

    .line 110
    .line 111
    const/16 v8, 0x6c

    .line 112
    .line 113
    move/from16 v20, v10

    .line 114
    .line 115
    const-string v10, "Number of pixels bigger than width * height"

    .line 116
    .line 117
    invoke-direct {v4, v6, v13, v8, v10}, Lpl/droidsonroids/gif/GifError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 118
    .line 119
    .line 120
    new-instance v6, Lpl/droidsonroids/gif/GifError;

    .line 121
    .line 122
    const-string v8, "NOT_ENOUGH_MEM"

    .line 123
    .line 124
    const/16 v10, 0x9

    .line 125
    .line 126
    move/from16 v21, v12

    .line 127
    .line 128
    const/16 v12, 0x6d

    .line 129
    .line 130
    move/from16 v22, v13

    .line 131
    .line 132
    const-string v13, "Failed to allocate required memory"

    .line 133
    .line 134
    invoke-direct {v6, v8, v10, v12, v13}, Lpl/droidsonroids/gif/GifError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 135
    .line 136
    .line 137
    new-instance v8, Lpl/droidsonroids/gif/GifError;

    .line 138
    .line 139
    const-string v12, "CLOSE_FAILED"

    .line 140
    .line 141
    const/16 v13, 0xa

    .line 142
    .line 143
    move/from16 v23, v10

    .line 144
    .line 145
    const/16 v10, 0x6e

    .line 146
    .line 147
    move/from16 v24, v14

    .line 148
    .line 149
    const-string v14, "Failed to close given input"

    .line 150
    .line 151
    invoke-direct {v8, v12, v13, v10, v14}, Lpl/droidsonroids/gif/GifError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 152
    .line 153
    .line 154
    new-instance v10, Lpl/droidsonroids/gif/GifError;

    .line 155
    .line 156
    const-string v12, "NOT_READABLE"

    .line 157
    .line 158
    const/16 v14, 0xb

    .line 159
    .line 160
    move/from16 v25, v13

    .line 161
    .line 162
    const/16 v13, 0x6f

    .line 163
    .line 164
    move/from16 v26, v15

    .line 165
    .line 166
    const-string v15, "Given file was not opened for read"

    .line 167
    .line 168
    invoke-direct {v10, v12, v14, v13, v15}, Lpl/droidsonroids/gif/GifError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 169
    .line 170
    .line 171
    new-instance v12, Lpl/droidsonroids/gif/GifError;

    .line 172
    .line 173
    const-string v13, "IMAGE_DEFECT"

    .line 174
    .line 175
    const/16 v15, 0xc

    .line 176
    .line 177
    move/from16 v27, v14

    .line 178
    .line 179
    const/16 v14, 0x70

    .line 180
    .line 181
    move-object/from16 v28, v0

    .line 182
    .line 183
    const-string v0, "Image is defective, decoding aborted"

    .line 184
    .line 185
    invoke-direct {v12, v13, v15, v14, v0}, Lpl/droidsonroids/gif/GifError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 186
    .line 187
    .line 188
    new-instance v0, Lpl/droidsonroids/gif/GifError;

    .line 189
    .line 190
    const-string v13, "EOF_TOO_SOON"

    .line 191
    .line 192
    const/16 v14, 0xd

    .line 193
    .line 194
    move/from16 v29, v15

    .line 195
    .line 196
    const/16 v15, 0x71

    .line 197
    .line 198
    move-object/from16 v30, v1

    .line 199
    .line 200
    const-string v1, "Image EOF detected before image complete"

    .line 201
    .line 202
    invoke-direct {v0, v13, v14, v15, v1}, Lpl/droidsonroids/gif/GifError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 203
    .line 204
    .line 205
    new-instance v1, Lpl/droidsonroids/gif/GifError;

    .line 206
    .line 207
    const-string v13, "NO_FRAMES"

    .line 208
    .line 209
    const/16 v15, 0xe

    .line 210
    .line 211
    move/from16 v31, v14

    .line 212
    .line 213
    const/16 v14, 0x3e8

    .line 214
    .line 215
    move-object/from16 v32, v0

    .line 216
    .line 217
    const-string v0, "No frames found, at least one frame required"

    .line 218
    .line 219
    invoke-direct {v1, v13, v15, v14, v0}, Lpl/droidsonroids/gif/GifError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 220
    .line 221
    .line 222
    new-instance v0, Lpl/droidsonroids/gif/GifError;

    .line 223
    .line 224
    const-string v13, "INVALID_SCR_DIMS"

    .line 225
    .line 226
    const/16 v14, 0xf

    .line 227
    .line 228
    move/from16 v33, v15

    .line 229
    .line 230
    const/16 v15, 0x3e9

    .line 231
    .line 232
    move-object/from16 v34, v1

    .line 233
    .line 234
    const-string v1, "Invalid screen size, dimensions must be positive"

    .line 235
    .line 236
    invoke-direct {v0, v13, v14, v15, v1}, Lpl/droidsonroids/gif/GifError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 237
    .line 238
    .line 239
    new-instance v1, Lpl/droidsonroids/gif/GifError;

    .line 240
    .line 241
    const-string v13, "INVALID_IMG_DIMS"

    .line 242
    .line 243
    const/16 v15, 0x10

    .line 244
    .line 245
    move/from16 v35, v14

    .line 246
    .line 247
    const/16 v14, 0x3ea

    .line 248
    .line 249
    move-object/from16 v36, v0

    .line 250
    .line 251
    const-string v0, "Invalid image size, dimensions must be positive"

    .line 252
    .line 253
    invoke-direct {v1, v13, v15, v14, v0}, Lpl/droidsonroids/gif/GifError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 254
    .line 255
    .line 256
    new-instance v0, Lpl/droidsonroids/gif/GifError;

    .line 257
    .line 258
    const-string v13, "IMG_NOT_CONFINED"

    .line 259
    .line 260
    const/16 v14, 0x11

    .line 261
    .line 262
    move/from16 v37, v15

    .line 263
    .line 264
    const/16 v15, 0x3eb

    .line 265
    .line 266
    move-object/from16 v38, v1

    .line 267
    .line 268
    const-string v1, "Image size exceeds screen size"

    .line 269
    .line 270
    invoke-direct {v0, v13, v14, v15, v1}, Lpl/droidsonroids/gif/GifError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 271
    .line 272
    .line 273
    new-instance v1, Lpl/droidsonroids/gif/GifError;

    .line 274
    .line 275
    const-string v13, "REWIND_FAILED"

    .line 276
    .line 277
    const/16 v15, 0x12

    .line 278
    .line 279
    move/from16 v39, v14

    .line 280
    .line 281
    const/16 v14, 0x3ec

    .line 282
    .line 283
    move-object/from16 v40, v0

    .line 284
    .line 285
    const-string v0, "Input source rewind failed, animation stopped"

    .line 286
    .line 287
    invoke-direct {v1, v13, v15, v14, v0}, Lpl/droidsonroids/gif/GifError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 288
    .line 289
    .line 290
    new-instance v0, Lpl/droidsonroids/gif/GifError;

    .line 291
    .line 292
    const-string v13, "INVALID_BYTE_BUFFER"

    .line 293
    .line 294
    const/16 v14, 0x13

    .line 295
    .line 296
    move/from16 v41, v15

    .line 297
    .line 298
    const/16 v15, 0x3ed

    .line 299
    .line 300
    move-object/from16 v42, v1

    .line 301
    .line 302
    const-string v1, "Invalid and/or indirect byte buffer specified"

    .line 303
    .line 304
    invoke-direct {v0, v13, v14, v15, v1}, Lpl/droidsonroids/gif/GifError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 305
    .line 306
    .line 307
    new-instance v1, Lpl/droidsonroids/gif/GifError;

    .line 308
    .line 309
    const-string v13, "UNKNOWN"

    .line 310
    .line 311
    const/16 v15, 0x14

    .line 312
    .line 313
    move/from16 v43, v14

    .line 314
    .line 315
    const/4 v14, -0x1

    .line 316
    move-object/from16 v44, v0

    .line 317
    .line 318
    const-string v0, "Unknown error"

    .line 319
    .line 320
    invoke-direct {v1, v13, v15, v14, v0}, Lpl/droidsonroids/gif/GifError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 321
    .line 322
    .line 323
    sput-object v1, Lpl/droidsonroids/gif/GifError;->j:Lpl/droidsonroids/gif/GifError;

    .line 324
    .line 325
    const/16 v0, 0x15

    .line 326
    .line 327
    new-array v0, v0, [Lpl/droidsonroids/gif/GifError;

    .line 328
    .line 329
    aput-object v28, v0, v16

    .line 330
    .line 331
    aput-object v30, v0, v17

    .line 332
    .line 333
    aput-object v2, v0, v18

    .line 334
    .line 335
    aput-object v5, v0, v19

    .line 336
    .line 337
    aput-object v7, v0, v20

    .line 338
    .line 339
    aput-object v9, v0, v21

    .line 340
    .line 341
    aput-object v11, v0, v24

    .line 342
    .line 343
    aput-object v3, v0, v26

    .line 344
    .line 345
    aput-object v4, v0, v22

    .line 346
    .line 347
    aput-object v6, v0, v23

    .line 348
    .line 349
    aput-object v8, v0, v25

    .line 350
    .line 351
    aput-object v10, v0, v27

    .line 352
    .line 353
    aput-object v12, v0, v29

    .line 354
    .line 355
    aput-object v32, v0, v31

    .line 356
    .line 357
    aput-object v34, v0, v33

    .line 358
    .line 359
    aput-object v36, v0, v35

    .line 360
    .line 361
    aput-object v38, v0, v37

    .line 362
    .line 363
    aput-object v40, v0, v39

    .line 364
    .line 365
    aput-object v42, v0, v41

    .line 366
    .line 367
    aput-object v44, v0, v43

    .line 368
    .line 369
    aput-object v1, v0, v15

    .line 370
    .line 371
    sput-object v0, Lpl/droidsonroids/gif/GifError;->m:[Lpl/droidsonroids/gif/GifError;

    .line 372
    .line 373
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lpl/droidsonroids/gif/GifError;->e:I

    .line 5
    .line 6
    iput-object p4, p0, Lpl/droidsonroids/gif/GifError;->b:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lpl/droidsonroids/gif/GifError;
    .locals 1

    .line 1
    const-class v0, Lpl/droidsonroids/gif/GifError;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lpl/droidsonroids/gif/GifError;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lpl/droidsonroids/gif/GifError;
    .locals 1

    .line 1
    sget-object v0, Lpl/droidsonroids/gif/GifError;->m:[Lpl/droidsonroids/gif/GifError;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lpl/droidsonroids/gif/GifError;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lpl/droidsonroids/gif/GifError;

    .line 8
    .line 9
    return-object v0
.end method
