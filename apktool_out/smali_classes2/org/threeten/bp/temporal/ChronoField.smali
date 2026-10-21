.class public final enum Lorg/threeten/bp/temporal/ChronoField;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lorg/threeten/bp/temporal/TemporalField;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/threeten/bp/temporal/ChronoField;",
        ">;",
        "Lorg/threeten/bp/temporal/TemporalField;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/threeten/bp/temporal/ChronoField;

.field public static final enum ALIGNED_DAY_OF_WEEK_IN_MONTH:Lorg/threeten/bp/temporal/ChronoField;

.field public static final enum ALIGNED_DAY_OF_WEEK_IN_YEAR:Lorg/threeten/bp/temporal/ChronoField;

.field public static final enum ALIGNED_WEEK_OF_MONTH:Lorg/threeten/bp/temporal/ChronoField;

.field public static final enum ALIGNED_WEEK_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

.field public static final enum AMPM_OF_DAY:Lorg/threeten/bp/temporal/ChronoField;

.field public static final enum CLOCK_HOUR_OF_AMPM:Lorg/threeten/bp/temporal/ChronoField;

.field public static final enum CLOCK_HOUR_OF_DAY:Lorg/threeten/bp/temporal/ChronoField;

.field public static final enum DAY_OF_MONTH:Lorg/threeten/bp/temporal/ChronoField;

.field public static final enum DAY_OF_WEEK:Lorg/threeten/bp/temporal/ChronoField;

.field public static final enum DAY_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

.field public static final enum EPOCH_DAY:Lorg/threeten/bp/temporal/ChronoField;

.field public static final enum ERA:Lorg/threeten/bp/temporal/ChronoField;

.field public static final enum HOUR_OF_AMPM:Lorg/threeten/bp/temporal/ChronoField;

.field public static final enum HOUR_OF_DAY:Lorg/threeten/bp/temporal/ChronoField;

.field public static final enum INSTANT_SECONDS:Lorg/threeten/bp/temporal/ChronoField;

.field public static final enum MICRO_OF_DAY:Lorg/threeten/bp/temporal/ChronoField;

.field public static final enum MICRO_OF_SECOND:Lorg/threeten/bp/temporal/ChronoField;

.field public static final enum MILLI_OF_DAY:Lorg/threeten/bp/temporal/ChronoField;

.field public static final enum MILLI_OF_SECOND:Lorg/threeten/bp/temporal/ChronoField;

.field public static final enum MINUTE_OF_DAY:Lorg/threeten/bp/temporal/ChronoField;

.field public static final enum MINUTE_OF_HOUR:Lorg/threeten/bp/temporal/ChronoField;

.field public static final enum MONTH_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

.field public static final enum NANO_OF_DAY:Lorg/threeten/bp/temporal/ChronoField;

.field public static final enum NANO_OF_SECOND:Lorg/threeten/bp/temporal/ChronoField;

.field public static final enum OFFSET_SECONDS:Lorg/threeten/bp/temporal/ChronoField;

.field public static final enum PROLEPTIC_MONTH:Lorg/threeten/bp/temporal/ChronoField;

.field public static final enum SECOND_OF_DAY:Lorg/threeten/bp/temporal/ChronoField;

.field public static final enum SECOND_OF_MINUTE:Lorg/threeten/bp/temporal/ChronoField;

.field public static final enum YEAR:Lorg/threeten/bp/temporal/ChronoField;

.field public static final enum YEAR_OF_ERA:Lorg/threeten/bp/temporal/ChronoField;


# instance fields
.field private final baseUnit:Lorg/threeten/bp/temporal/TemporalUnit;

.field private final name:Ljava/lang/String;

.field private final range:Lorg/threeten/bp/temporal/ValueRange;

.field private final rangeUnit:Lorg/threeten/bp/temporal/TemporalUnit;


# direct methods
.method static constructor <clinit>()V
    .locals 62

    .line 1
    new-instance v0, Lorg/threeten/bp/temporal/ChronoField;

    .line 2
    .line 3
    sget-object v4, Lorg/threeten/bp/temporal/ChronoUnit;->NANOS:Lorg/threeten/bp/temporal/ChronoUnit;

    .line 4
    .line 5
    sget-object v9, Lorg/threeten/bp/temporal/ChronoUnit;->SECONDS:Lorg/threeten/bp/temporal/ChronoUnit;

    .line 6
    .line 7
    const-wide/16 v12, 0x0

    .line 8
    .line 9
    const-wide/32 v14, 0x3b9ac9ff

    .line 10
    .line 11
    .line 12
    invoke-static {v12, v13, v14, v15}, Lorg/threeten/bp/temporal/ValueRange;->of(JJ)Lorg/threeten/bp/temporal/ValueRange;

    .line 13
    .line 14
    .line 15
    move-result-object v6

    .line 16
    const-string v1, "NANO_OF_SECOND"

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    const-string v3, "NanoOfSecond"

    .line 20
    .line 21
    move-object v5, v9

    .line 22
    invoke-direct/range {v0 .. v6}, Lorg/threeten/bp/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/temporal/TemporalUnit;Lorg/threeten/bp/temporal/TemporalUnit;Lorg/threeten/bp/temporal/ValueRange;)V

    .line 23
    .line 24
    .line 25
    sput-object v0, Lorg/threeten/bp/temporal/ChronoField;->NANO_OF_SECOND:Lorg/threeten/bp/temporal/ChronoField;

    .line 26
    .line 27
    new-instance v1, Lorg/threeten/bp/temporal/ChronoField;

    .line 28
    .line 29
    sget-object v20, Lorg/threeten/bp/temporal/ChronoUnit;->DAYS:Lorg/threeten/bp/temporal/ChronoUnit;

    .line 30
    .line 31
    const-wide v2, 0x4e94914effffL

    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    invoke-static {v12, v13, v2, v3}, Lorg/threeten/bp/temporal/ValueRange;->of(JJ)Lorg/threeten/bp/temporal/ValueRange;

    .line 37
    .line 38
    .line 39
    move-result-object v7

    .line 40
    const-string v2, "NANO_OF_DAY"

    .line 41
    .line 42
    const/4 v3, 0x1

    .line 43
    move-object v5, v4

    .line 44
    const-string v4, "NanoOfDay"

    .line 45
    .line 46
    move-object/from16 v6, v20

    .line 47
    .line 48
    invoke-direct/range {v1 .. v7}, Lorg/threeten/bp/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/temporal/TemporalUnit;Lorg/threeten/bp/temporal/TemporalUnit;Lorg/threeten/bp/temporal/ValueRange;)V

    .line 49
    .line 50
    .line 51
    sput-object v1, Lorg/threeten/bp/temporal/ChronoField;->NANO_OF_DAY:Lorg/threeten/bp/temporal/ChronoField;

    .line 52
    .line 53
    new-instance v5, Lorg/threeten/bp/temporal/ChronoField;

    .line 54
    .line 55
    move-object v10, v9

    .line 56
    sget-object v9, Lorg/threeten/bp/temporal/ChronoUnit;->MICROS:Lorg/threeten/bp/temporal/ChronoUnit;

    .line 57
    .line 58
    const-wide/32 v2, 0xf423f

    .line 59
    .line 60
    .line 61
    invoke-static {v12, v13, v2, v3}, Lorg/threeten/bp/temporal/ValueRange;->of(JJ)Lorg/threeten/bp/temporal/ValueRange;

    .line 62
    .line 63
    .line 64
    move-result-object v11

    .line 65
    const-string v6, "MICRO_OF_SECOND"

    .line 66
    .line 67
    const/4 v7, 0x2

    .line 68
    const-string v8, "MicroOfSecond"

    .line 69
    .line 70
    invoke-direct/range {v5 .. v11}, Lorg/threeten/bp/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/temporal/TemporalUnit;Lorg/threeten/bp/temporal/TemporalUnit;Lorg/threeten/bp/temporal/ValueRange;)V

    .line 71
    .line 72
    .line 73
    move-object v2, v5

    .line 74
    move-object/from16 v21, v20

    .line 75
    .line 76
    move-object/from16 v20, v9

    .line 77
    .line 78
    move-object v9, v10

    .line 79
    sput-object v2, Lorg/threeten/bp/temporal/ChronoField;->MICRO_OF_SECOND:Lorg/threeten/bp/temporal/ChronoField;

    .line 80
    .line 81
    new-instance v16, Lorg/threeten/bp/temporal/ChronoField;

    .line 82
    .line 83
    const-wide v3, 0x141dd75fffL

    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    invoke-static {v12, v13, v3, v4}, Lorg/threeten/bp/temporal/ValueRange;->of(JJ)Lorg/threeten/bp/temporal/ValueRange;

    .line 89
    .line 90
    .line 91
    move-result-object v22

    .line 92
    const-string v17, "MICRO_OF_DAY"

    .line 93
    .line 94
    const/16 v18, 0x3

    .line 95
    .line 96
    const-string v19, "MicroOfDay"

    .line 97
    .line 98
    invoke-direct/range {v16 .. v22}, Lorg/threeten/bp/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/temporal/TemporalUnit;Lorg/threeten/bp/temporal/TemporalUnit;Lorg/threeten/bp/temporal/ValueRange;)V

    .line 99
    .line 100
    .line 101
    move-object/from16 v3, v16

    .line 102
    .line 103
    move-object/from16 v20, v21

    .line 104
    .line 105
    sput-object v3, Lorg/threeten/bp/temporal/ChronoField;->MICRO_OF_DAY:Lorg/threeten/bp/temporal/ChronoField;

    .line 106
    .line 107
    new-instance v5, Lorg/threeten/bp/temporal/ChronoField;

    .line 108
    .line 109
    sget-object v9, Lorg/threeten/bp/temporal/ChronoUnit;->MILLIS:Lorg/threeten/bp/temporal/ChronoUnit;

    .line 110
    .line 111
    const-wide/16 v6, 0x3e7

    .line 112
    .line 113
    invoke-static {v12, v13, v6, v7}, Lorg/threeten/bp/temporal/ValueRange;->of(JJ)Lorg/threeten/bp/temporal/ValueRange;

    .line 114
    .line 115
    .line 116
    move-result-object v11

    .line 117
    const-string v6, "MILLI_OF_SECOND"

    .line 118
    .line 119
    const/4 v7, 0x4

    .line 120
    const-string v8, "MilliOfSecond"

    .line 121
    .line 122
    invoke-direct/range {v5 .. v11}, Lorg/threeten/bp/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/temporal/TemporalUnit;Lorg/threeten/bp/temporal/TemporalUnit;Lorg/threeten/bp/temporal/ValueRange;)V

    .line 123
    .line 124
    .line 125
    move-object v4, v5

    .line 126
    move-object/from16 v20, v9

    .line 127
    .line 128
    move-object v9, v10

    .line 129
    sput-object v4, Lorg/threeten/bp/temporal/ChronoField;->MILLI_OF_SECOND:Lorg/threeten/bp/temporal/ChronoField;

    .line 130
    .line 131
    new-instance v16, Lorg/threeten/bp/temporal/ChronoField;

    .line 132
    .line 133
    const-wide/32 v5, 0x5265bff

    .line 134
    .line 135
    .line 136
    invoke-static {v12, v13, v5, v6}, Lorg/threeten/bp/temporal/ValueRange;->of(JJ)Lorg/threeten/bp/temporal/ValueRange;

    .line 137
    .line 138
    .line 139
    move-result-object v22

    .line 140
    const-string v17, "MILLI_OF_DAY"

    .line 141
    .line 142
    const/16 v18, 0x5

    .line 143
    .line 144
    const-string v19, "MilliOfDay"

    .line 145
    .line 146
    invoke-direct/range {v16 .. v22}, Lorg/threeten/bp/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/temporal/TemporalUnit;Lorg/threeten/bp/temporal/TemporalUnit;Lorg/threeten/bp/temporal/ValueRange;)V

    .line 147
    .line 148
    .line 149
    move-object/from16 v23, v16

    .line 150
    .line 151
    move-object/from16 v20, v21

    .line 152
    .line 153
    sput-object v23, Lorg/threeten/bp/temporal/ChronoField;->MILLI_OF_DAY:Lorg/threeten/bp/temporal/ChronoField;

    .line 154
    .line 155
    new-instance v5, Lorg/threeten/bp/temporal/ChronoField;

    .line 156
    .line 157
    sget-object v10, Lorg/threeten/bp/temporal/ChronoUnit;->MINUTES:Lorg/threeten/bp/temporal/ChronoUnit;

    .line 158
    .line 159
    const-wide/16 v6, 0x3b

    .line 160
    .line 161
    invoke-static {v12, v13, v6, v7}, Lorg/threeten/bp/temporal/ValueRange;->of(JJ)Lorg/threeten/bp/temporal/ValueRange;

    .line 162
    .line 163
    .line 164
    move-result-object v11

    .line 165
    move-wide v7, v6

    .line 166
    const-string v6, "SECOND_OF_MINUTE"

    .line 167
    .line 168
    move-wide/from16 v16, v7

    .line 169
    .line 170
    const/4 v7, 0x6

    .line 171
    const-string v8, "SecondOfMinute"

    .line 172
    .line 173
    move-wide/from16 v14, v16

    .line 174
    .line 175
    invoke-direct/range {v5 .. v11}, Lorg/threeten/bp/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/temporal/TemporalUnit;Lorg/threeten/bp/temporal/TemporalUnit;Lorg/threeten/bp/temporal/ValueRange;)V

    .line 176
    .line 177
    .line 178
    move-object/from16 v31, v5

    .line 179
    .line 180
    move-object/from16 v28, v10

    .line 181
    .line 182
    sput-object v31, Lorg/threeten/bp/temporal/ChronoField;->SECOND_OF_MINUTE:Lorg/threeten/bp/temporal/ChronoField;

    .line 183
    .line 184
    new-instance v5, Lorg/threeten/bp/temporal/ChronoField;

    .line 185
    .line 186
    const-wide/32 v6, 0x1517f

    .line 187
    .line 188
    .line 189
    invoke-static {v12, v13, v6, v7}, Lorg/threeten/bp/temporal/ValueRange;->of(JJ)Lorg/threeten/bp/temporal/ValueRange;

    .line 190
    .line 191
    .line 192
    move-result-object v11

    .line 193
    const-string v6, "SECOND_OF_DAY"

    .line 194
    .line 195
    const/4 v7, 0x7

    .line 196
    const-string v8, "SecondOfDay"

    .line 197
    .line 198
    move-object/from16 v10, v20

    .line 199
    .line 200
    invoke-direct/range {v5 .. v11}, Lorg/threeten/bp/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/temporal/TemporalUnit;Lorg/threeten/bp/temporal/TemporalUnit;Lorg/threeten/bp/temporal/ValueRange;)V

    .line 201
    .line 202
    .line 203
    move-object/from16 v32, v5

    .line 204
    .line 205
    sput-object v32, Lorg/threeten/bp/temporal/ChronoField;->SECOND_OF_DAY:Lorg/threeten/bp/temporal/ChronoField;

    .line 206
    .line 207
    new-instance v24, Lorg/threeten/bp/temporal/ChronoField;

    .line 208
    .line 209
    sget-object v37, Lorg/threeten/bp/temporal/ChronoUnit;->HOURS:Lorg/threeten/bp/temporal/ChronoUnit;

    .line 210
    .line 211
    invoke-static {v12, v13, v14, v15}, Lorg/threeten/bp/temporal/ValueRange;->of(JJ)Lorg/threeten/bp/temporal/ValueRange;

    .line 212
    .line 213
    .line 214
    move-result-object v30

    .line 215
    const-string v25, "MINUTE_OF_HOUR"

    .line 216
    .line 217
    const/16 v26, 0x8

    .line 218
    .line 219
    const-string v27, "MinuteOfHour"

    .line 220
    .line 221
    move-object/from16 v29, v37

    .line 222
    .line 223
    invoke-direct/range {v24 .. v30}, Lorg/threeten/bp/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/temporal/TemporalUnit;Lorg/threeten/bp/temporal/TemporalUnit;Lorg/threeten/bp/temporal/ValueRange;)V

    .line 224
    .line 225
    .line 226
    sput-object v24, Lorg/threeten/bp/temporal/ChronoField;->MINUTE_OF_HOUR:Lorg/threeten/bp/temporal/ChronoField;

    .line 227
    .line 228
    new-instance v16, Lorg/threeten/bp/temporal/ChronoField;

    .line 229
    .line 230
    const-wide/16 v5, 0x59f

    .line 231
    .line 232
    invoke-static {v12, v13, v5, v6}, Lorg/threeten/bp/temporal/ValueRange;->of(JJ)Lorg/threeten/bp/temporal/ValueRange;

    .line 233
    .line 234
    .line 235
    move-result-object v22

    .line 236
    const-string v17, "MINUTE_OF_DAY"

    .line 237
    .line 238
    const/16 v18, 0x9

    .line 239
    .line 240
    const-string v19, "MinuteOfDay"

    .line 241
    .line 242
    move-object/from16 v20, v28

    .line 243
    .line 244
    invoke-direct/range {v16 .. v22}, Lorg/threeten/bp/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/temporal/TemporalUnit;Lorg/threeten/bp/temporal/TemporalUnit;Lorg/threeten/bp/temporal/ValueRange;)V

    .line 245
    .line 246
    .line 247
    move-object/from16 v14, v16

    .line 248
    .line 249
    move-object/from16 v20, v21

    .line 250
    .line 251
    sput-object v14, Lorg/threeten/bp/temporal/ChronoField;->MINUTE_OF_DAY:Lorg/threeten/bp/temporal/ChronoField;

    .line 252
    .line 253
    new-instance v33, Lorg/threeten/bp/temporal/ChronoField;

    .line 254
    .line 255
    sget-object v38, Lorg/threeten/bp/temporal/ChronoUnit;->HALF_DAYS:Lorg/threeten/bp/temporal/ChronoUnit;

    .line 256
    .line 257
    const-wide/16 v5, 0xb

    .line 258
    .line 259
    invoke-static {v12, v13, v5, v6}, Lorg/threeten/bp/temporal/ValueRange;->of(JJ)Lorg/threeten/bp/temporal/ValueRange;

    .line 260
    .line 261
    .line 262
    move-result-object v39

    .line 263
    const-string v34, "HOUR_OF_AMPM"

    .line 264
    .line 265
    const/16 v35, 0xa

    .line 266
    .line 267
    const-string v36, "HourOfAmPm"

    .line 268
    .line 269
    invoke-direct/range {v33 .. v39}, Lorg/threeten/bp/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/temporal/TemporalUnit;Lorg/threeten/bp/temporal/TemporalUnit;Lorg/threeten/bp/temporal/ValueRange;)V

    .line 270
    .line 271
    .line 272
    move-object/from16 v15, v33

    .line 273
    .line 274
    sput-object v15, Lorg/threeten/bp/temporal/ChronoField;->HOUR_OF_AMPM:Lorg/threeten/bp/temporal/ChronoField;

    .line 275
    .line 276
    new-instance v33, Lorg/threeten/bp/temporal/ChronoField;

    .line 277
    .line 278
    const-wide/16 v5, 0x1

    .line 279
    .line 280
    const-wide/16 v7, 0xc

    .line 281
    .line 282
    invoke-static {v5, v6, v7, v8}, Lorg/threeten/bp/temporal/ValueRange;->of(JJ)Lorg/threeten/bp/temporal/ValueRange;

    .line 283
    .line 284
    .line 285
    move-result-object v39

    .line 286
    const-string v34, "CLOCK_HOUR_OF_AMPM"

    .line 287
    .line 288
    const/16 v35, 0xb

    .line 289
    .line 290
    const-string v36, "ClockHourOfAmPm"

    .line 291
    .line 292
    invoke-direct/range {v33 .. v39}, Lorg/threeten/bp/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/temporal/TemporalUnit;Lorg/threeten/bp/temporal/TemporalUnit;Lorg/threeten/bp/temporal/ValueRange;)V

    .line 293
    .line 294
    .line 295
    sput-object v33, Lorg/threeten/bp/temporal/ChronoField;->CLOCK_HOUR_OF_AMPM:Lorg/threeten/bp/temporal/ChronoField;

    .line 296
    .line 297
    new-instance v16, Lorg/threeten/bp/temporal/ChronoField;

    .line 298
    .line 299
    const-wide/16 v10, 0x17

    .line 300
    .line 301
    invoke-static {v12, v13, v10, v11}, Lorg/threeten/bp/temporal/ValueRange;->of(JJ)Lorg/threeten/bp/temporal/ValueRange;

    .line 302
    .line 303
    .line 304
    move-result-object v22

    .line 305
    const-string v17, "HOUR_OF_DAY"

    .line 306
    .line 307
    const/16 v18, 0xc

    .line 308
    .line 309
    const-string v19, "HourOfDay"

    .line 310
    .line 311
    move-object/from16 v20, v37

    .line 312
    .line 313
    invoke-direct/range {v16 .. v22}, Lorg/threeten/bp/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/temporal/TemporalUnit;Lorg/threeten/bp/temporal/TemporalUnit;Lorg/threeten/bp/temporal/ValueRange;)V

    .line 314
    .line 315
    .line 316
    move-object/from16 v25, v16

    .line 317
    .line 318
    move-object/from16 v20, v21

    .line 319
    .line 320
    sput-object v25, Lorg/threeten/bp/temporal/ChronoField;->HOUR_OF_DAY:Lorg/threeten/bp/temporal/ChronoField;

    .line 321
    .line 322
    new-instance v16, Lorg/threeten/bp/temporal/ChronoField;

    .line 323
    .line 324
    const-wide/16 v10, 0x18

    .line 325
    .line 326
    invoke-static {v5, v6, v10, v11}, Lorg/threeten/bp/temporal/ValueRange;->of(JJ)Lorg/threeten/bp/temporal/ValueRange;

    .line 327
    .line 328
    .line 329
    move-result-object v22

    .line 330
    const-string v17, "CLOCK_HOUR_OF_DAY"

    .line 331
    .line 332
    const/16 v18, 0xd

    .line 333
    .line 334
    const-string v19, "ClockHourOfDay"

    .line 335
    .line 336
    move-object/from16 v20, v37

    .line 337
    .line 338
    invoke-direct/range {v16 .. v22}, Lorg/threeten/bp/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/temporal/TemporalUnit;Lorg/threeten/bp/temporal/TemporalUnit;Lorg/threeten/bp/temporal/ValueRange;)V

    .line 339
    .line 340
    .line 341
    move-object/from16 v26, v16

    .line 342
    .line 343
    move-object/from16 v20, v21

    .line 344
    .line 345
    sput-object v26, Lorg/threeten/bp/temporal/ChronoField;->CLOCK_HOUR_OF_DAY:Lorg/threeten/bp/temporal/ChronoField;

    .line 346
    .line 347
    new-instance v16, Lorg/threeten/bp/temporal/ChronoField;

    .line 348
    .line 349
    const-string v19, "AmPmOfDay"

    .line 350
    .line 351
    invoke-static {v12, v13, v5, v6}, Lorg/threeten/bp/temporal/ValueRange;->of(JJ)Lorg/threeten/bp/temporal/ValueRange;

    .line 352
    .line 353
    .line 354
    move-result-object v22

    .line 355
    const-string v17, "AMPM_OF_DAY"

    .line 356
    .line 357
    const/16 v18, 0xe

    .line 358
    .line 359
    move-object/from16 v20, v38

    .line 360
    .line 361
    invoke-direct/range {v16 .. v22}, Lorg/threeten/bp/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/temporal/TemporalUnit;Lorg/threeten/bp/temporal/TemporalUnit;Lorg/threeten/bp/temporal/ValueRange;)V

    .line 362
    .line 363
    .line 364
    move-object/from16 v27, v16

    .line 365
    .line 366
    move-object/from16 v20, v21

    .line 367
    .line 368
    sput-object v27, Lorg/threeten/bp/temporal/ChronoField;->AMPM_OF_DAY:Lorg/threeten/bp/temporal/ChronoField;

    .line 369
    .line 370
    new-instance v16, Lorg/threeten/bp/temporal/ChronoField;

    .line 371
    .line 372
    sget-object v21, Lorg/threeten/bp/temporal/ChronoUnit;->WEEKS:Lorg/threeten/bp/temporal/ChronoUnit;

    .line 373
    .line 374
    const-wide/16 v10, 0x7

    .line 375
    .line 376
    invoke-static {v5, v6, v10, v11}, Lorg/threeten/bp/temporal/ValueRange;->of(JJ)Lorg/threeten/bp/temporal/ValueRange;

    .line 377
    .line 378
    .line 379
    move-result-object v22

    .line 380
    const-string v17, "DAY_OF_WEEK"

    .line 381
    .line 382
    const/16 v18, 0xf

    .line 383
    .line 384
    const-string v19, "DayOfWeek"

    .line 385
    .line 386
    invoke-direct/range {v16 .. v22}, Lorg/threeten/bp/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/temporal/TemporalUnit;Lorg/threeten/bp/temporal/TemporalUnit;Lorg/threeten/bp/temporal/ValueRange;)V

    .line 387
    .line 388
    .line 389
    move-object/from16 v28, v16

    .line 390
    .line 391
    sput-object v28, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_WEEK:Lorg/threeten/bp/temporal/ChronoField;

    .line 392
    .line 393
    new-instance v16, Lorg/threeten/bp/temporal/ChronoField;

    .line 394
    .line 395
    const-string v19, "AlignedDayOfWeekInMonth"

    .line 396
    .line 397
    invoke-static {v5, v6, v10, v11}, Lorg/threeten/bp/temporal/ValueRange;->of(JJ)Lorg/threeten/bp/temporal/ValueRange;

    .line 398
    .line 399
    .line 400
    move-result-object v22

    .line 401
    const-string v17, "ALIGNED_DAY_OF_WEEK_IN_MONTH"

    .line 402
    .line 403
    const/16 v18, 0x10

    .line 404
    .line 405
    invoke-direct/range {v16 .. v22}, Lorg/threeten/bp/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/temporal/TemporalUnit;Lorg/threeten/bp/temporal/TemporalUnit;Lorg/threeten/bp/temporal/ValueRange;)V

    .line 406
    .line 407
    .line 408
    move-object/from16 v29, v16

    .line 409
    .line 410
    sput-object v29, Lorg/threeten/bp/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_MONTH:Lorg/threeten/bp/temporal/ChronoField;

    .line 411
    .line 412
    new-instance v16, Lorg/threeten/bp/temporal/ChronoField;

    .line 413
    .line 414
    const-string v19, "AlignedDayOfWeekInYear"

    .line 415
    .line 416
    invoke-static {v5, v6, v10, v11}, Lorg/threeten/bp/temporal/ValueRange;->of(JJ)Lorg/threeten/bp/temporal/ValueRange;

    .line 417
    .line 418
    .line 419
    move-result-object v22

    .line 420
    const-string v17, "ALIGNED_DAY_OF_WEEK_IN_YEAR"

    .line 421
    .line 422
    const/16 v18, 0x11

    .line 423
    .line 424
    invoke-direct/range {v16 .. v22}, Lorg/threeten/bp/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/temporal/TemporalUnit;Lorg/threeten/bp/temporal/TemporalUnit;Lorg/threeten/bp/temporal/ValueRange;)V

    .line 425
    .line 426
    .line 427
    move-object/from16 v30, v16

    .line 428
    .line 429
    move-object/from16 v38, v21

    .line 430
    .line 431
    sput-object v30, Lorg/threeten/bp/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    .line 432
    .line 433
    new-instance v16, Lorg/threeten/bp/temporal/ChronoField;

    .line 434
    .line 435
    sget-object v43, Lorg/threeten/bp/temporal/ChronoUnit;->MONTHS:Lorg/threeten/bp/temporal/ChronoUnit;

    .line 436
    .line 437
    const-wide/16 v46, 0x1c

    .line 438
    .line 439
    const-wide/16 v48, 0x1f

    .line 440
    .line 441
    const-wide/16 v44, 0x1

    .line 442
    .line 443
    invoke-static/range {v44 .. v49}, Lorg/threeten/bp/temporal/ValueRange;->of(JJJ)Lorg/threeten/bp/temporal/ValueRange;

    .line 444
    .line 445
    .line 446
    move-result-object v22

    .line 447
    const-string v17, "DAY_OF_MONTH"

    .line 448
    .line 449
    const/16 v18, 0x12

    .line 450
    .line 451
    const-string v19, "DayOfMonth"

    .line 452
    .line 453
    move-object/from16 v21, v43

    .line 454
    .line 455
    invoke-direct/range {v16 .. v22}, Lorg/threeten/bp/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/temporal/TemporalUnit;Lorg/threeten/bp/temporal/TemporalUnit;Lorg/threeten/bp/temporal/ValueRange;)V

    .line 456
    .line 457
    .line 458
    move-object/from16 v46, v16

    .line 459
    .line 460
    sput-object v46, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_MONTH:Lorg/threeten/bp/temporal/ChronoField;

    .line 461
    .line 462
    new-instance v16, Lorg/threeten/bp/temporal/ChronoField;

    .line 463
    .line 464
    sget-object v51, Lorg/threeten/bp/temporal/ChronoUnit;->YEARS:Lorg/threeten/bp/temporal/ChronoUnit;

    .line 465
    .line 466
    const-wide/16 v54, 0x16d

    .line 467
    .line 468
    const-wide/16 v56, 0x16e

    .line 469
    .line 470
    const-wide/16 v52, 0x1

    .line 471
    .line 472
    invoke-static/range {v52 .. v57}, Lorg/threeten/bp/temporal/ValueRange;->of(JJJ)Lorg/threeten/bp/temporal/ValueRange;

    .line 473
    .line 474
    .line 475
    move-result-object v22

    .line 476
    const-string v17, "DAY_OF_YEAR"

    .line 477
    .line 478
    const/16 v18, 0x13

    .line 479
    .line 480
    const-string v19, "DayOfYear"

    .line 481
    .line 482
    move-object/from16 v21, v51

    .line 483
    .line 484
    invoke-direct/range {v16 .. v22}, Lorg/threeten/bp/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/temporal/TemporalUnit;Lorg/threeten/bp/temporal/TemporalUnit;Lorg/threeten/bp/temporal/ValueRange;)V

    .line 485
    .line 486
    .line 487
    move-object/from16 v54, v16

    .line 488
    .line 489
    sput-object v54, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    .line 490
    .line 491
    new-instance v16, Lorg/threeten/bp/temporal/ChronoField;

    .line 492
    .line 493
    sget-object v52, Lorg/threeten/bp/temporal/ChronoUnit;->FOREVER:Lorg/threeten/bp/temporal/ChronoUnit;

    .line 494
    .line 495
    const-wide v10, -0x550a313cdaL

    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    const-wide v12, 0x550a1b48f7L

    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    invoke-static {v10, v11, v12, v13}, Lorg/threeten/bp/temporal/ValueRange;->of(JJ)Lorg/threeten/bp/temporal/ValueRange;

    .line 506
    .line 507
    .line 508
    move-result-object v22

    .line 509
    const-string v17, "EPOCH_DAY"

    .line 510
    .line 511
    const/16 v18, 0x14

    .line 512
    .line 513
    const-string v19, "EpochDay"

    .line 514
    .line 515
    move-object/from16 v21, v52

    .line 516
    .line 517
    invoke-direct/range {v16 .. v22}, Lorg/threeten/bp/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/temporal/TemporalUnit;Lorg/threeten/bp/temporal/TemporalUnit;Lorg/threeten/bp/temporal/ValueRange;)V

    .line 518
    .line 519
    .line 520
    sput-object v16, Lorg/threeten/bp/temporal/ChronoField;->EPOCH_DAY:Lorg/threeten/bp/temporal/ChronoField;

    .line 521
    .line 522
    new-instance v34, Lorg/threeten/bp/temporal/ChronoField;

    .line 523
    .line 524
    const-wide/16 v19, 0x4

    .line 525
    .line 526
    const-wide/16 v21, 0x5

    .line 527
    .line 528
    const-wide/16 v17, 0x1

    .line 529
    .line 530
    invoke-static/range {v17 .. v22}, Lorg/threeten/bp/temporal/ValueRange;->of(JJJ)Lorg/threeten/bp/temporal/ValueRange;

    .line 531
    .line 532
    .line 533
    move-result-object v40

    .line 534
    const-string v35, "ALIGNED_WEEK_OF_MONTH"

    .line 535
    .line 536
    const/16 v36, 0x15

    .line 537
    .line 538
    const-string v37, "AlignedWeekOfMonth"

    .line 539
    .line 540
    move-object/from16 v39, v43

    .line 541
    .line 542
    invoke-direct/range {v34 .. v40}, Lorg/threeten/bp/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/temporal/TemporalUnit;Lorg/threeten/bp/temporal/TemporalUnit;Lorg/threeten/bp/temporal/ValueRange;)V

    .line 543
    .line 544
    .line 545
    move-object/from16 v12, v34

    .line 546
    .line 547
    move-object/from16 v21, v38

    .line 548
    .line 549
    sput-object v12, Lorg/threeten/bp/temporal/ChronoField;->ALIGNED_WEEK_OF_MONTH:Lorg/threeten/bp/temporal/ChronoField;

    .line 550
    .line 551
    new-instance v34, Lorg/threeten/bp/temporal/ChronoField;

    .line 552
    .line 553
    const-wide/16 v10, 0x35

    .line 554
    .line 555
    invoke-static {v5, v6, v10, v11}, Lorg/threeten/bp/temporal/ValueRange;->of(JJ)Lorg/threeten/bp/temporal/ValueRange;

    .line 556
    .line 557
    .line 558
    move-result-object v40

    .line 559
    const-string v35, "ALIGNED_WEEK_OF_YEAR"

    .line 560
    .line 561
    const/16 v36, 0x16

    .line 562
    .line 563
    const-string v37, "AlignedWeekOfYear"

    .line 564
    .line 565
    move-object/from16 v39, v51

    .line 566
    .line 567
    invoke-direct/range {v34 .. v40}, Lorg/threeten/bp/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/temporal/TemporalUnit;Lorg/threeten/bp/temporal/TemporalUnit;Lorg/threeten/bp/temporal/ValueRange;)V

    .line 568
    .line 569
    .line 570
    sput-object v34, Lorg/threeten/bp/temporal/ChronoField;->ALIGNED_WEEK_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    .line 571
    .line 572
    new-instance v39, Lorg/threeten/bp/temporal/ChronoField;

    .line 573
    .line 574
    const-string v42, "MonthOfYear"

    .line 575
    .line 576
    invoke-static {v5, v6, v7, v8}, Lorg/threeten/bp/temporal/ValueRange;->of(JJ)Lorg/threeten/bp/temporal/ValueRange;

    .line 577
    .line 578
    .line 579
    move-result-object v45

    .line 580
    const-string v40, "MONTH_OF_YEAR"

    .line 581
    .line 582
    const/16 v41, 0x17

    .line 583
    .line 584
    move-object/from16 v44, v51

    .line 585
    .line 586
    invoke-direct/range {v39 .. v45}, Lorg/threeten/bp/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/temporal/TemporalUnit;Lorg/threeten/bp/temporal/TemporalUnit;Lorg/threeten/bp/temporal/ValueRange;)V

    .line 587
    .line 588
    .line 589
    move-object/from16 v13, v39

    .line 590
    .line 591
    sput-object v13, Lorg/threeten/bp/temporal/ChronoField;->MONTH_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    .line 592
    .line 593
    new-instance v39, Lorg/threeten/bp/temporal/ChronoField;

    .line 594
    .line 595
    const-wide v7, -0x2cb4177f4L

    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    const-wide v10, 0x2cb4177ffL

    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    invoke-static {v7, v8, v10, v11}, Lorg/threeten/bp/temporal/ValueRange;->of(JJ)Lorg/threeten/bp/temporal/ValueRange;

    .line 606
    .line 607
    .line 608
    move-result-object v45

    .line 609
    const-string v40, "PROLEPTIC_MONTH"

    .line 610
    .line 611
    const/16 v41, 0x18

    .line 612
    .line 613
    const-string v42, "ProlepticMonth"

    .line 614
    .line 615
    move-object/from16 v44, v52

    .line 616
    .line 617
    invoke-direct/range {v39 .. v45}, Lorg/threeten/bp/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/temporal/TemporalUnit;Lorg/threeten/bp/temporal/TemporalUnit;Lorg/threeten/bp/temporal/ValueRange;)V

    .line 618
    .line 619
    .line 620
    sput-object v39, Lorg/threeten/bp/temporal/ChronoField;->PROLEPTIC_MONTH:Lorg/threeten/bp/temporal/ChronoField;

    .line 621
    .line 622
    new-instance v47, Lorg/threeten/bp/temporal/ChronoField;

    .line 623
    .line 624
    const-wide/32 v19, 0x3b9ac9ff

    .line 625
    .line 626
    .line 627
    const-wide/32 v21, 0x3b9aca00

    .line 628
    .line 629
    .line 630
    invoke-static/range {v17 .. v22}, Lorg/threeten/bp/temporal/ValueRange;->of(JJJ)Lorg/threeten/bp/temporal/ValueRange;

    .line 631
    .line 632
    .line 633
    move-result-object v53

    .line 634
    const-string v48, "YEAR_OF_ERA"

    .line 635
    .line 636
    const/16 v49, 0x19

    .line 637
    .line 638
    const-string v50, "YearOfEra"

    .line 639
    .line 640
    invoke-direct/range {v47 .. v53}, Lorg/threeten/bp/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/temporal/TemporalUnit;Lorg/threeten/bp/temporal/TemporalUnit;Lorg/threeten/bp/temporal/ValueRange;)V

    .line 641
    .line 642
    .line 643
    move-object/from16 v17, v47

    .line 644
    .line 645
    sput-object v17, Lorg/threeten/bp/temporal/ChronoField;->YEAR_OF_ERA:Lorg/threeten/bp/temporal/ChronoField;

    .line 646
    .line 647
    new-instance v47, Lorg/threeten/bp/temporal/ChronoField;

    .line 648
    .line 649
    const-wide/32 v7, -0x3b9ac9ff

    .line 650
    .line 651
    .line 652
    const-wide/32 v10, 0x3b9ac9ff

    .line 653
    .line 654
    .line 655
    invoke-static {v7, v8, v10, v11}, Lorg/threeten/bp/temporal/ValueRange;->of(JJ)Lorg/threeten/bp/temporal/ValueRange;

    .line 656
    .line 657
    .line 658
    move-result-object v53

    .line 659
    const-string v48, "YEAR"

    .line 660
    .line 661
    const/16 v49, 0x1a

    .line 662
    .line 663
    const-string v50, "Year"

    .line 664
    .line 665
    invoke-direct/range {v47 .. v53}, Lorg/threeten/bp/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/temporal/TemporalUnit;Lorg/threeten/bp/temporal/TemporalUnit;Lorg/threeten/bp/temporal/ValueRange;)V

    .line 666
    .line 667
    .line 668
    sput-object v47, Lorg/threeten/bp/temporal/ChronoField;->YEAR:Lorg/threeten/bp/temporal/ChronoField;

    .line 669
    .line 670
    const-wide/16 v7, 0x0

    .line 671
    .line 672
    new-instance v55, Lorg/threeten/bp/temporal/ChronoField;

    .line 673
    .line 674
    sget-object v59, Lorg/threeten/bp/temporal/ChronoUnit;->ERAS:Lorg/threeten/bp/temporal/ChronoUnit;

    .line 675
    .line 676
    invoke-static {v7, v8, v5, v6}, Lorg/threeten/bp/temporal/ValueRange;->of(JJ)Lorg/threeten/bp/temporal/ValueRange;

    .line 677
    .line 678
    .line 679
    move-result-object v61

    .line 680
    const-string v56, "ERA"

    .line 681
    .line 682
    const/16 v57, 0x1b

    .line 683
    .line 684
    const-string v58, "Era"

    .line 685
    .line 686
    move-object/from16 v60, v52

    .line 687
    .line 688
    invoke-direct/range {v55 .. v61}, Lorg/threeten/bp/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/temporal/TemporalUnit;Lorg/threeten/bp/temporal/TemporalUnit;Lorg/threeten/bp/temporal/ValueRange;)V

    .line 689
    .line 690
    .line 691
    sput-object v55, Lorg/threeten/bp/temporal/ChronoField;->ERA:Lorg/threeten/bp/temporal/ChronoField;

    .line 692
    .line 693
    new-instance v5, Lorg/threeten/bp/temporal/ChronoField;

    .line 694
    .line 695
    const-wide/high16 v6, -0x8000000000000000L

    .line 696
    .line 697
    const-wide v10, 0x7fffffffffffffffL

    .line 698
    .line 699
    .line 700
    .line 701
    .line 702
    invoke-static {v6, v7, v10, v11}, Lorg/threeten/bp/temporal/ValueRange;->of(JJ)Lorg/threeten/bp/temporal/ValueRange;

    .line 703
    .line 704
    .line 705
    move-result-object v11

    .line 706
    const-string v6, "INSTANT_SECONDS"

    .line 707
    .line 708
    const/16 v7, 0x1c

    .line 709
    .line 710
    const-string v8, "InstantSeconds"

    .line 711
    .line 712
    move-object/from16 v10, v52

    .line 713
    .line 714
    invoke-direct/range {v5 .. v11}, Lorg/threeten/bp/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/temporal/TemporalUnit;Lorg/threeten/bp/temporal/TemporalUnit;Lorg/threeten/bp/temporal/ValueRange;)V

    .line 715
    .line 716
    .line 717
    move-object/from16 v18, v5

    .line 718
    .line 719
    sput-object v18, Lorg/threeten/bp/temporal/ChronoField;->INSTANT_SECONDS:Lorg/threeten/bp/temporal/ChronoField;

    .line 720
    .line 721
    new-instance v5, Lorg/threeten/bp/temporal/ChronoField;

    .line 722
    .line 723
    const-wide/32 v6, -0xfd20

    .line 724
    .line 725
    .line 726
    const-wide/32 v10, 0xfd20

    .line 727
    .line 728
    .line 729
    invoke-static {v6, v7, v10, v11}, Lorg/threeten/bp/temporal/ValueRange;->of(JJ)Lorg/threeten/bp/temporal/ValueRange;

    .line 730
    .line 731
    .line 732
    move-result-object v11

    .line 733
    const-string v6, "OFFSET_SECONDS"

    .line 734
    .line 735
    const/16 v7, 0x1d

    .line 736
    .line 737
    const-string v8, "OffsetSeconds"

    .line 738
    .line 739
    move-object/from16 v10, v52

    .line 740
    .line 741
    invoke-direct/range {v5 .. v11}, Lorg/threeten/bp/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/temporal/TemporalUnit;Lorg/threeten/bp/temporal/TemporalUnit;Lorg/threeten/bp/temporal/ValueRange;)V

    .line 742
    .line 743
    .line 744
    sput-object v5, Lorg/threeten/bp/temporal/ChronoField;->OFFSET_SECONDS:Lorg/threeten/bp/temporal/ChronoField;

    .line 745
    .line 746
    const/16 v6, 0x1e

    .line 747
    .line 748
    new-array v6, v6, [Lorg/threeten/bp/temporal/ChronoField;

    .line 749
    .line 750
    const/4 v7, 0x0

    .line 751
    aput-object v0, v6, v7

    .line 752
    .line 753
    const/4 v0, 0x1

    .line 754
    aput-object v1, v6, v0

    .line 755
    .line 756
    const/4 v0, 0x2

    .line 757
    aput-object v2, v6, v0

    .line 758
    .line 759
    const/4 v0, 0x3

    .line 760
    aput-object v3, v6, v0

    .line 761
    .line 762
    const/4 v0, 0x4

    .line 763
    aput-object v4, v6, v0

    .line 764
    .line 765
    const/4 v0, 0x5

    .line 766
    aput-object v23, v6, v0

    .line 767
    .line 768
    const/4 v0, 0x6

    .line 769
    aput-object v31, v6, v0

    .line 770
    .line 771
    const/4 v0, 0x7

    .line 772
    aput-object v32, v6, v0

    .line 773
    .line 774
    const/16 v0, 0x8

    .line 775
    .line 776
    aput-object v24, v6, v0

    .line 777
    .line 778
    const/16 v0, 0x9

    .line 779
    .line 780
    aput-object v14, v6, v0

    .line 781
    .line 782
    const/16 v0, 0xa

    .line 783
    .line 784
    aput-object v15, v6, v0

    .line 785
    .line 786
    const/16 v0, 0xb

    .line 787
    .line 788
    aput-object v33, v6, v0

    .line 789
    .line 790
    const/16 v0, 0xc

    .line 791
    .line 792
    aput-object v25, v6, v0

    .line 793
    .line 794
    const/16 v0, 0xd

    .line 795
    .line 796
    aput-object v26, v6, v0

    .line 797
    .line 798
    const/16 v0, 0xe

    .line 799
    .line 800
    aput-object v27, v6, v0

    .line 801
    .line 802
    const/16 v0, 0xf

    .line 803
    .line 804
    aput-object v28, v6, v0

    .line 805
    .line 806
    const/16 v0, 0x10

    .line 807
    .line 808
    aput-object v29, v6, v0

    .line 809
    .line 810
    const/16 v0, 0x11

    .line 811
    .line 812
    aput-object v30, v6, v0

    .line 813
    .line 814
    const/16 v0, 0x12

    .line 815
    .line 816
    aput-object v46, v6, v0

    .line 817
    .line 818
    const/16 v0, 0x13

    .line 819
    .line 820
    aput-object v54, v6, v0

    .line 821
    .line 822
    const/16 v0, 0x14

    .line 823
    .line 824
    aput-object v16, v6, v0

    .line 825
    .line 826
    const/16 v0, 0x15

    .line 827
    .line 828
    aput-object v12, v6, v0

    .line 829
    .line 830
    const/16 v0, 0x16

    .line 831
    .line 832
    aput-object v34, v6, v0

    .line 833
    .line 834
    const/16 v0, 0x17

    .line 835
    .line 836
    aput-object v13, v6, v0

    .line 837
    .line 838
    const/16 v0, 0x18

    .line 839
    .line 840
    aput-object v39, v6, v0

    .line 841
    .line 842
    const/16 v0, 0x19

    .line 843
    .line 844
    aput-object v17, v6, v0

    .line 845
    .line 846
    const/16 v0, 0x1a

    .line 847
    .line 848
    aput-object v47, v6, v0

    .line 849
    .line 850
    const/16 v0, 0x1b

    .line 851
    .line 852
    aput-object v55, v6, v0

    .line 853
    .line 854
    const/16 v0, 0x1c

    .line 855
    .line 856
    aput-object v18, v6, v0

    .line 857
    .line 858
    const/16 v0, 0x1d

    .line 859
    .line 860
    aput-object v5, v6, v0

    .line 861
    .line 862
    sput-object v6, Lorg/threeten/bp/temporal/ChronoField;->$VALUES:[Lorg/threeten/bp/temporal/ChronoField;

    .line 863
    .line 864
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/temporal/TemporalUnit;Lorg/threeten/bp/temporal/TemporalUnit;Lorg/threeten/bp/temporal/ValueRange;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/threeten/bp/temporal/TemporalUnit;",
            "Lorg/threeten/bp/temporal/TemporalUnit;",
            "Lorg/threeten/bp/temporal/ValueRange;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lorg/threeten/bp/temporal/ChronoField;->name:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p4, p0, Lorg/threeten/bp/temporal/ChronoField;->baseUnit:Lorg/threeten/bp/temporal/TemporalUnit;

    .line 7
    .line 8
    iput-object p5, p0, Lorg/threeten/bp/temporal/ChronoField;->rangeUnit:Lorg/threeten/bp/temporal/TemporalUnit;

    .line 9
    .line 10
    iput-object p6, p0, Lorg/threeten/bp/temporal/ChronoField;->range:Lorg/threeten/bp/temporal/ValueRange;

    .line 11
    .line 12
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/threeten/bp/temporal/ChronoField;
    .locals 1

    .line 1
    const-class v0, Lorg/threeten/bp/temporal/ChronoField;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/threeten/bp/temporal/ChronoField;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lorg/threeten/bp/temporal/ChronoField;
    .locals 1

    .line 1
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->$VALUES:[Lorg/threeten/bp/temporal/ChronoField;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lorg/threeten/bp/temporal/ChronoField;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lorg/threeten/bp/temporal/ChronoField;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public adjustInto(Lorg/threeten/bp/temporal/Temporal;J)Lorg/threeten/bp/temporal/Temporal;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Lorg/threeten/bp/temporal/Temporal;",
            ">(TR;J)TR;"
        }
    .end annotation

    .line 1
    invoke-interface {p1, p0, p2, p3}, Lorg/threeten/bp/temporal/Temporal;->with(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/temporal/Temporal;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public checkValidIntValue(J)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/threeten/bp/temporal/ChronoField;->range()Lorg/threeten/bp/temporal/ValueRange;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1, p2, p0}, Lorg/threeten/bp/temporal/ValueRange;->checkValidIntValue(JLorg/threeten/bp/temporal/TemporalField;)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public checkValidValue(J)J
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/threeten/bp/temporal/ChronoField;->range()Lorg/threeten/bp/temporal/ValueRange;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1, p2, p0}, Lorg/threeten/bp/temporal/ValueRange;->checkValidValue(JLorg/threeten/bp/temporal/TemporalField;)J

    .line 6
    .line 7
    .line 8
    move-result-wide p1

    .line 9
    return-wide p1
.end method

.method public getBaseUnit()Lorg/threeten/bp/temporal/TemporalUnit;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/threeten/bp/temporal/ChronoField;->baseUnit:Lorg/threeten/bp/temporal/TemporalUnit;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDisplayName(Ljava/util/Locale;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "locale"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lorg/threeten/bp/temporal/ChronoField;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public getFrom(Lorg/threeten/bp/temporal/TemporalAccessor;)J
    .locals 2

    .line 1
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/TemporalAccessor;->getLong(Lorg/threeten/bp/temporal/TemporalField;)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public getRangeUnit()Lorg/threeten/bp/temporal/TemporalUnit;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/threeten/bp/temporal/ChronoField;->rangeUnit:Lorg/threeten/bp/temporal/TemporalUnit;

    .line 2
    .line 3
    return-object v0
.end method

.method public isDateBased()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sget-object v1, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_WEEK:Lorg/threeten/bp/temporal/ChronoField;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-lt v0, v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    sget-object v1, Lorg/threeten/bp/temporal/ChronoField;->ERA:Lorg/threeten/bp/temporal/ChronoField;

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-gt v0, v1, :cond_0

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    return v0

    .line 27
    :cond_0
    const/4 v0, 0x0

    .line 28
    return v0
.end method

.method public isSupportedBy(Lorg/threeten/bp/temporal/TemporalAccessor;)Z
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/TemporalAccessor;->isSupported(Lorg/threeten/bp/temporal/TemporalField;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public isTimeBased()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sget-object v1, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_WEEK:Lorg/threeten/bp/temporal/ChronoField;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-ge v0, v1, :cond_0

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

.method public range()Lorg/threeten/bp/temporal/ValueRange;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/threeten/bp/temporal/ChronoField;->range:Lorg/threeten/bp/temporal/ValueRange;

    .line 2
    .line 3
    return-object v0
.end method

.method public rangeRefinedBy(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/temporal/ValueRange;
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/TemporalAccessor;->range(Lorg/threeten/bp/temporal/TemporalField;)Lorg/threeten/bp/temporal/ValueRange;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public resolve(Ljava/util/Map;Lorg/threeten/bp/temporal/TemporalAccessor;Lorg/threeten/bp/format/ResolverStyle;)Lorg/threeten/bp/temporal/TemporalAccessor;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lorg/threeten/bp/temporal/TemporalField;",
            "Ljava/lang/Long;",
            ">;",
            "Lorg/threeten/bp/temporal/TemporalAccessor;",
            "Lorg/threeten/bp/format/ResolverStyle;",
            ")",
            "Lorg/threeten/bp/temporal/TemporalAccessor;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/threeten/bp/temporal/ChronoField;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
