.class public final enum Lorg/threeten/bp/temporal/ChronoUnit;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lorg/threeten/bp/temporal/TemporalUnit;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/threeten/bp/temporal/ChronoUnit;",
        ">;",
        "Lorg/threeten/bp/temporal/TemporalUnit;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/threeten/bp/temporal/ChronoUnit;

.field public static final enum CENTURIES:Lorg/threeten/bp/temporal/ChronoUnit;

.field public static final enum DAYS:Lorg/threeten/bp/temporal/ChronoUnit;

.field public static final enum DECADES:Lorg/threeten/bp/temporal/ChronoUnit;

.field public static final enum ERAS:Lorg/threeten/bp/temporal/ChronoUnit;

.field public static final enum FOREVER:Lorg/threeten/bp/temporal/ChronoUnit;

.field public static final enum HALF_DAYS:Lorg/threeten/bp/temporal/ChronoUnit;

.field public static final enum HOURS:Lorg/threeten/bp/temporal/ChronoUnit;

.field public static final enum MICROS:Lorg/threeten/bp/temporal/ChronoUnit;

.field public static final enum MILLENNIA:Lorg/threeten/bp/temporal/ChronoUnit;

.field public static final enum MILLIS:Lorg/threeten/bp/temporal/ChronoUnit;

.field public static final enum MINUTES:Lorg/threeten/bp/temporal/ChronoUnit;

.field public static final enum MONTHS:Lorg/threeten/bp/temporal/ChronoUnit;

.field public static final enum NANOS:Lorg/threeten/bp/temporal/ChronoUnit;

.field public static final enum SECONDS:Lorg/threeten/bp/temporal/ChronoUnit;

.field public static final enum WEEKS:Lorg/threeten/bp/temporal/ChronoUnit;

.field public static final enum YEARS:Lorg/threeten/bp/temporal/ChronoUnit;


# instance fields
.field private final duration:Lorg/threeten/bp/Duration;

.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 35

    .line 1
    new-instance v0, Lorg/threeten/bp/temporal/ChronoUnit;

    .line 2
    .line 3
    const-wide/16 v1, 0x1

    .line 4
    .line 5
    invoke-static {v1, v2}, Lorg/threeten/bp/Duration;->ofNanos(J)Lorg/threeten/bp/Duration;

    .line 6
    .line 7
    .line 8
    move-result-object v3

    .line 9
    const-string v4, "NANOS"

    .line 10
    .line 11
    const/4 v5, 0x0

    .line 12
    const-string v6, "Nanos"

    .line 13
    .line 14
    invoke-direct {v0, v4, v5, v6, v3}, Lorg/threeten/bp/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/Duration;)V

    .line 15
    .line 16
    .line 17
    sput-object v0, Lorg/threeten/bp/temporal/ChronoUnit;->NANOS:Lorg/threeten/bp/temporal/ChronoUnit;

    .line 18
    .line 19
    new-instance v3, Lorg/threeten/bp/temporal/ChronoUnit;

    .line 20
    .line 21
    const-wide/16 v6, 0x3e8

    .line 22
    .line 23
    invoke-static {v6, v7}, Lorg/threeten/bp/Duration;->ofNanos(J)Lorg/threeten/bp/Duration;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    const-string v6, "MICROS"

    .line 28
    .line 29
    const/4 v7, 0x1

    .line 30
    const-string v8, "Micros"

    .line 31
    .line 32
    invoke-direct {v3, v6, v7, v8, v4}, Lorg/threeten/bp/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/Duration;)V

    .line 33
    .line 34
    .line 35
    sput-object v3, Lorg/threeten/bp/temporal/ChronoUnit;->MICROS:Lorg/threeten/bp/temporal/ChronoUnit;

    .line 36
    .line 37
    new-instance v4, Lorg/threeten/bp/temporal/ChronoUnit;

    .line 38
    .line 39
    const-wide/32 v8, 0xf4240

    .line 40
    .line 41
    .line 42
    invoke-static {v8, v9}, Lorg/threeten/bp/Duration;->ofNanos(J)Lorg/threeten/bp/Duration;

    .line 43
    .line 44
    .line 45
    move-result-object v6

    .line 46
    const-string v8, "MILLIS"

    .line 47
    .line 48
    const/4 v9, 0x2

    .line 49
    const-string v10, "Millis"

    .line 50
    .line 51
    invoke-direct {v4, v8, v9, v10, v6}, Lorg/threeten/bp/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/Duration;)V

    .line 52
    .line 53
    .line 54
    sput-object v4, Lorg/threeten/bp/temporal/ChronoUnit;->MILLIS:Lorg/threeten/bp/temporal/ChronoUnit;

    .line 55
    .line 56
    new-instance v6, Lorg/threeten/bp/temporal/ChronoUnit;

    .line 57
    .line 58
    const-string v8, "Seconds"

    .line 59
    .line 60
    invoke-static {v1, v2}, Lorg/threeten/bp/Duration;->ofSeconds(J)Lorg/threeten/bp/Duration;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    const-string v2, "SECONDS"

    .line 65
    .line 66
    const/4 v10, 0x3

    .line 67
    invoke-direct {v6, v2, v10, v8, v1}, Lorg/threeten/bp/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/Duration;)V

    .line 68
    .line 69
    .line 70
    sput-object v6, Lorg/threeten/bp/temporal/ChronoUnit;->SECONDS:Lorg/threeten/bp/temporal/ChronoUnit;

    .line 71
    .line 72
    new-instance v1, Lorg/threeten/bp/temporal/ChronoUnit;

    .line 73
    .line 74
    const-wide/16 v11, 0x3c

    .line 75
    .line 76
    invoke-static {v11, v12}, Lorg/threeten/bp/Duration;->ofSeconds(J)Lorg/threeten/bp/Duration;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    const-string v8, "MINUTES"

    .line 81
    .line 82
    const/4 v11, 0x4

    .line 83
    const-string v12, "Minutes"

    .line 84
    .line 85
    invoke-direct {v1, v8, v11, v12, v2}, Lorg/threeten/bp/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/Duration;)V

    .line 86
    .line 87
    .line 88
    sput-object v1, Lorg/threeten/bp/temporal/ChronoUnit;->MINUTES:Lorg/threeten/bp/temporal/ChronoUnit;

    .line 89
    .line 90
    new-instance v2, Lorg/threeten/bp/temporal/ChronoUnit;

    .line 91
    .line 92
    const-wide/16 v12, 0xe10

    .line 93
    .line 94
    invoke-static {v12, v13}, Lorg/threeten/bp/Duration;->ofSeconds(J)Lorg/threeten/bp/Duration;

    .line 95
    .line 96
    .line 97
    move-result-object v8

    .line 98
    const-string v12, "HOURS"

    .line 99
    .line 100
    const/4 v13, 0x5

    .line 101
    const-string v14, "Hours"

    .line 102
    .line 103
    invoke-direct {v2, v12, v13, v14, v8}, Lorg/threeten/bp/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/Duration;)V

    .line 104
    .line 105
    .line 106
    sput-object v2, Lorg/threeten/bp/temporal/ChronoUnit;->HOURS:Lorg/threeten/bp/temporal/ChronoUnit;

    .line 107
    .line 108
    new-instance v8, Lorg/threeten/bp/temporal/ChronoUnit;

    .line 109
    .line 110
    const-wide/32 v14, 0xa8c0

    .line 111
    .line 112
    .line 113
    invoke-static {v14, v15}, Lorg/threeten/bp/Duration;->ofSeconds(J)Lorg/threeten/bp/Duration;

    .line 114
    .line 115
    .line 116
    move-result-object v12

    .line 117
    const-string v14, "HALF_DAYS"

    .line 118
    .line 119
    const/4 v15, 0x6

    .line 120
    move/from16 v16, v5

    .line 121
    .line 122
    const-string v5, "HalfDays"

    .line 123
    .line 124
    invoke-direct {v8, v14, v15, v5, v12}, Lorg/threeten/bp/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/Duration;)V

    .line 125
    .line 126
    .line 127
    sput-object v8, Lorg/threeten/bp/temporal/ChronoUnit;->HALF_DAYS:Lorg/threeten/bp/temporal/ChronoUnit;

    .line 128
    .line 129
    new-instance v5, Lorg/threeten/bp/temporal/ChronoUnit;

    .line 130
    .line 131
    const-wide/32 v17, 0x15180

    .line 132
    .line 133
    .line 134
    invoke-static/range {v17 .. v18}, Lorg/threeten/bp/Duration;->ofSeconds(J)Lorg/threeten/bp/Duration;

    .line 135
    .line 136
    .line 137
    move-result-object v12

    .line 138
    const-string v14, "DAYS"

    .line 139
    .line 140
    move/from16 v17, v7

    .line 141
    .line 142
    const/4 v7, 0x7

    .line 143
    move/from16 v18, v9

    .line 144
    .line 145
    const-string v9, "Days"

    .line 146
    .line 147
    invoke-direct {v5, v14, v7, v9, v12}, Lorg/threeten/bp/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/Duration;)V

    .line 148
    .line 149
    .line 150
    sput-object v5, Lorg/threeten/bp/temporal/ChronoUnit;->DAYS:Lorg/threeten/bp/temporal/ChronoUnit;

    .line 151
    .line 152
    new-instance v9, Lorg/threeten/bp/temporal/ChronoUnit;

    .line 153
    .line 154
    const-wide/32 v19, 0x93a80

    .line 155
    .line 156
    .line 157
    invoke-static/range {v19 .. v20}, Lorg/threeten/bp/Duration;->ofSeconds(J)Lorg/threeten/bp/Duration;

    .line 158
    .line 159
    .line 160
    move-result-object v12

    .line 161
    const-string v14, "WEEKS"

    .line 162
    .line 163
    move/from16 v19, v7

    .line 164
    .line 165
    const/16 v7, 0x8

    .line 166
    .line 167
    move/from16 v20, v10

    .line 168
    .line 169
    const-string v10, "Weeks"

    .line 170
    .line 171
    invoke-direct {v9, v14, v7, v10, v12}, Lorg/threeten/bp/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/Duration;)V

    .line 172
    .line 173
    .line 174
    sput-object v9, Lorg/threeten/bp/temporal/ChronoUnit;->WEEKS:Lorg/threeten/bp/temporal/ChronoUnit;

    .line 175
    .line 176
    new-instance v10, Lorg/threeten/bp/temporal/ChronoUnit;

    .line 177
    .line 178
    const-wide/32 v21, 0x282072

    .line 179
    .line 180
    .line 181
    invoke-static/range {v21 .. v22}, Lorg/threeten/bp/Duration;->ofSeconds(J)Lorg/threeten/bp/Duration;

    .line 182
    .line 183
    .line 184
    move-result-object v12

    .line 185
    const-string v14, "MONTHS"

    .line 186
    .line 187
    move/from16 v21, v7

    .line 188
    .line 189
    const/16 v7, 0x9

    .line 190
    .line 191
    move/from16 v22, v11

    .line 192
    .line 193
    const-string v11, "Months"

    .line 194
    .line 195
    invoke-direct {v10, v14, v7, v11, v12}, Lorg/threeten/bp/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/Duration;)V

    .line 196
    .line 197
    .line 198
    sput-object v10, Lorg/threeten/bp/temporal/ChronoUnit;->MONTHS:Lorg/threeten/bp/temporal/ChronoUnit;

    .line 199
    .line 200
    new-instance v11, Lorg/threeten/bp/temporal/ChronoUnit;

    .line 201
    .line 202
    const-wide/32 v23, 0x1e18558

    .line 203
    .line 204
    .line 205
    invoke-static/range {v23 .. v24}, Lorg/threeten/bp/Duration;->ofSeconds(J)Lorg/threeten/bp/Duration;

    .line 206
    .line 207
    .line 208
    move-result-object v12

    .line 209
    const-string v14, "YEARS"

    .line 210
    .line 211
    move/from16 v23, v7

    .line 212
    .line 213
    const/16 v7, 0xa

    .line 214
    .line 215
    move/from16 v24, v13

    .line 216
    .line 217
    const-string v13, "Years"

    .line 218
    .line 219
    invoke-direct {v11, v14, v7, v13, v12}, Lorg/threeten/bp/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/Duration;)V

    .line 220
    .line 221
    .line 222
    sput-object v11, Lorg/threeten/bp/temporal/ChronoUnit;->YEARS:Lorg/threeten/bp/temporal/ChronoUnit;

    .line 223
    .line 224
    new-instance v12, Lorg/threeten/bp/temporal/ChronoUnit;

    .line 225
    .line 226
    const-wide/32 v13, 0x12cf3570

    .line 227
    .line 228
    .line 229
    invoke-static {v13, v14}, Lorg/threeten/bp/Duration;->ofSeconds(J)Lorg/threeten/bp/Duration;

    .line 230
    .line 231
    .line 232
    move-result-object v13

    .line 233
    const-string v14, "DECADES"

    .line 234
    .line 235
    move/from16 v25, v7

    .line 236
    .line 237
    const/16 v7, 0xb

    .line 238
    .line 239
    move/from16 v26, v15

    .line 240
    .line 241
    const-string v15, "Decades"

    .line 242
    .line 243
    invoke-direct {v12, v14, v7, v15, v13}, Lorg/threeten/bp/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/Duration;)V

    .line 244
    .line 245
    .line 246
    sput-object v12, Lorg/threeten/bp/temporal/ChronoUnit;->DECADES:Lorg/threeten/bp/temporal/ChronoUnit;

    .line 247
    .line 248
    new-instance v13, Lorg/threeten/bp/temporal/ChronoUnit;

    .line 249
    .line 250
    const-wide v14, 0xbc181660L

    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    invoke-static {v14, v15}, Lorg/threeten/bp/Duration;->ofSeconds(J)Lorg/threeten/bp/Duration;

    .line 256
    .line 257
    .line 258
    move-result-object v14

    .line 259
    const-string v15, "CENTURIES"

    .line 260
    .line 261
    move/from16 v27, v7

    .line 262
    .line 263
    const/16 v7, 0xc

    .line 264
    .line 265
    move-object/from16 v28, v0

    .line 266
    .line 267
    const-string v0, "Centuries"

    .line 268
    .line 269
    invoke-direct {v13, v15, v7, v0, v14}, Lorg/threeten/bp/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/Duration;)V

    .line 270
    .line 271
    .line 272
    sput-object v13, Lorg/threeten/bp/temporal/ChronoUnit;->CENTURIES:Lorg/threeten/bp/temporal/ChronoUnit;

    .line 273
    .line 274
    new-instance v0, Lorg/threeten/bp/temporal/ChronoUnit;

    .line 275
    .line 276
    const-wide v14, 0x758f0dfc0L

    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    invoke-static {v14, v15}, Lorg/threeten/bp/Duration;->ofSeconds(J)Lorg/threeten/bp/Duration;

    .line 282
    .line 283
    .line 284
    move-result-object v14

    .line 285
    const-string v15, "MILLENNIA"

    .line 286
    .line 287
    move/from16 v29, v7

    .line 288
    .line 289
    const/16 v7, 0xd

    .line 290
    .line 291
    move-object/from16 v30, v1

    .line 292
    .line 293
    const-string v1, "Millennia"

    .line 294
    .line 295
    invoke-direct {v0, v15, v7, v1, v14}, Lorg/threeten/bp/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/Duration;)V

    .line 296
    .line 297
    .line 298
    sput-object v0, Lorg/threeten/bp/temporal/ChronoUnit;->MILLENNIA:Lorg/threeten/bp/temporal/ChronoUnit;

    .line 299
    .line 300
    new-instance v1, Lorg/threeten/bp/temporal/ChronoUnit;

    .line 301
    .line 302
    const-wide v14, 0x701ce172277000L

    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    invoke-static {v14, v15}, Lorg/threeten/bp/Duration;->ofSeconds(J)Lorg/threeten/bp/Duration;

    .line 308
    .line 309
    .line 310
    move-result-object v14

    .line 311
    const-string v15, "ERAS"

    .line 312
    .line 313
    move/from16 v31, v7

    .line 314
    .line 315
    const/16 v7, 0xe

    .line 316
    .line 317
    move-object/from16 v32, v0

    .line 318
    .line 319
    const-string v0, "Eras"

    .line 320
    .line 321
    invoke-direct {v1, v15, v7, v0, v14}, Lorg/threeten/bp/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/Duration;)V

    .line 322
    .line 323
    .line 324
    sput-object v1, Lorg/threeten/bp/temporal/ChronoUnit;->ERAS:Lorg/threeten/bp/temporal/ChronoUnit;

    .line 325
    .line 326
    new-instance v0, Lorg/threeten/bp/temporal/ChronoUnit;

    .line 327
    .line 328
    const-wide v14, 0x7fffffffffffffffL

    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    move/from16 v34, v7

    .line 334
    .line 335
    move-object/from16 v33, v8

    .line 336
    .line 337
    const-wide/32 v7, 0x3b9ac9ff

    .line 338
    .line 339
    .line 340
    invoke-static {v14, v15, v7, v8}, Lorg/threeten/bp/Duration;->ofSeconds(JJ)Lorg/threeten/bp/Duration;

    .line 341
    .line 342
    .line 343
    move-result-object v7

    .line 344
    const-string v8, "FOREVER"

    .line 345
    .line 346
    const/16 v14, 0xf

    .line 347
    .line 348
    const-string v15, "Forever"

    .line 349
    .line 350
    invoke-direct {v0, v8, v14, v15, v7}, Lorg/threeten/bp/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/Duration;)V

    .line 351
    .line 352
    .line 353
    sput-object v0, Lorg/threeten/bp/temporal/ChronoUnit;->FOREVER:Lorg/threeten/bp/temporal/ChronoUnit;

    .line 354
    .line 355
    const/16 v7, 0x10

    .line 356
    .line 357
    new-array v7, v7, [Lorg/threeten/bp/temporal/ChronoUnit;

    .line 358
    .line 359
    aput-object v28, v7, v16

    .line 360
    .line 361
    aput-object v3, v7, v17

    .line 362
    .line 363
    aput-object v4, v7, v18

    .line 364
    .line 365
    aput-object v6, v7, v20

    .line 366
    .line 367
    aput-object v30, v7, v22

    .line 368
    .line 369
    aput-object v2, v7, v24

    .line 370
    .line 371
    aput-object v33, v7, v26

    .line 372
    .line 373
    aput-object v5, v7, v19

    .line 374
    .line 375
    aput-object v9, v7, v21

    .line 376
    .line 377
    aput-object v10, v7, v23

    .line 378
    .line 379
    aput-object v11, v7, v25

    .line 380
    .line 381
    aput-object v12, v7, v27

    .line 382
    .line 383
    aput-object v13, v7, v29

    .line 384
    .line 385
    aput-object v32, v7, v31

    .line 386
    .line 387
    aput-object v1, v7, v34

    .line 388
    .line 389
    aput-object v0, v7, v14

    .line 390
    .line 391
    sput-object v7, Lorg/threeten/bp/temporal/ChronoUnit;->$VALUES:[Lorg/threeten/bp/temporal/ChronoUnit;

    .line 392
    .line 393
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/Duration;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/threeten/bp/Duration;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lorg/threeten/bp/temporal/ChronoUnit;->name:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p4, p0, Lorg/threeten/bp/temporal/ChronoUnit;->duration:Lorg/threeten/bp/Duration;

    .line 7
    .line 8
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/threeten/bp/temporal/ChronoUnit;
    .locals 1

    .line 1
    const-class v0, Lorg/threeten/bp/temporal/ChronoUnit;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/threeten/bp/temporal/ChronoUnit;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lorg/threeten/bp/temporal/ChronoUnit;
    .locals 1

    .line 1
    sget-object v0, Lorg/threeten/bp/temporal/ChronoUnit;->$VALUES:[Lorg/threeten/bp/temporal/ChronoUnit;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lorg/threeten/bp/temporal/ChronoUnit;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lorg/threeten/bp/temporal/ChronoUnit;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public addTo(Lorg/threeten/bp/temporal/Temporal;J)Lorg/threeten/bp/temporal/Temporal;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Lorg/threeten/bp/temporal/Temporal;",
            ">(TR;J)TR;"
        }
    .end annotation

    .line 1
    invoke-interface {p1, p2, p3, p0}, Lorg/threeten/bp/temporal/Temporal;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/temporal/Temporal;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public between(Lorg/threeten/bp/temporal/Temporal;Lorg/threeten/bp/temporal/Temporal;)J
    .locals 0

    .line 1
    invoke-interface {p1, p2, p0}, Lorg/threeten/bp/temporal/Temporal;->until(Lorg/threeten/bp/temporal/Temporal;Lorg/threeten/bp/temporal/TemporalUnit;)J

    .line 2
    .line 3
    .line 4
    move-result-wide p1

    .line 5
    return-wide p1
.end method

.method public getDuration()Lorg/threeten/bp/Duration;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/threeten/bp/temporal/ChronoUnit;->duration:Lorg/threeten/bp/Duration;

    .line 2
    .line 3
    return-object v0
.end method

.method public isDateBased()Z
    .locals 1

    .line 1
    sget-object v0, Lorg/threeten/bp/temporal/ChronoUnit;->DAYS:Lorg/threeten/bp/temporal/ChronoUnit;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-ltz v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lorg/threeten/bp/temporal/ChronoUnit;->FOREVER:Lorg/threeten/bp/temporal/ChronoUnit;

    .line 10
    .line 11
    if-eq p0, v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    return v0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    return v0
.end method

.method public isDurationEstimated()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/threeten/bp/temporal/ChronoUnit;->isDateBased()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    sget-object v0, Lorg/threeten/bp/temporal/ChronoUnit;->FOREVER:Lorg/threeten/bp/temporal/ChronoUnit;

    .line 8
    .line 9
    if-ne p0, v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    return v0

    .line 14
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 15
    return v0
.end method

.method public isSupportedBy(Lorg/threeten/bp/temporal/Temporal;)Z
    .locals 5

    .line 1
    sget-object v0, Lorg/threeten/bp/temporal/ChronoUnit;->FOREVER:Lorg/threeten/bp/temporal/ChronoUnit;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-ne p0, v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    instance-of v0, p1, Lorg/threeten/bp/chrono/ChronoLocalDate;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0}, Lorg/threeten/bp/temporal/ChronoUnit;->isDateBased()Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    return p1

    .line 16
    :cond_1
    instance-of v0, p1, Lorg/threeten/bp/chrono/ChronoLocalDateTime;

    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    if-nez v0, :cond_3

    .line 20
    .line 21
    instance-of v0, p1, Lorg/threeten/bp/chrono/ChronoZonedDateTime;

    .line 22
    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_2
    const-wide/16 v3, 0x1

    .line 27
    .line 28
    :try_start_0
    invoke-interface {p1, v3, v4, p0}, Lorg/threeten/bp/temporal/Temporal;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/temporal/Temporal;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .line 30
    .line 31
    return v2

    .line 32
    :catch_0
    const-wide/16 v3, -0x1

    .line 33
    .line 34
    :try_start_1
    invoke-interface {p1, v3, v4, p0}, Lorg/threeten/bp/temporal/Temporal;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/temporal/Temporal;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 35
    .line 36
    .line 37
    return v2

    .line 38
    :catch_1
    return v1

    .line 39
    :cond_3
    :goto_0
    return v2
.end method

.method public isTimeBased()Z
    .locals 1

    .line 1
    sget-object v0, Lorg/threeten/bp/temporal/ChronoUnit;->DAYS:Lorg/threeten/bp/temporal/ChronoUnit;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-gez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    return v0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/threeten/bp/temporal/ChronoUnit;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
