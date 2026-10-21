.class public final enum Lcom/fasterxml/jackson/databind/SerializationFeature;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/fasterxml/jackson/databind/cfg/ConfigFeature;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/fasterxml/jackson/databind/SerializationFeature;",
        ">;",
        "Lcom/fasterxml/jackson/databind/cfg/ConfigFeature;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fasterxml/jackson/databind/SerializationFeature;

.field public static final enum CLOSE_CLOSEABLE:Lcom/fasterxml/jackson/databind/SerializationFeature;

.field public static final enum EAGER_SERIALIZER_FETCH:Lcom/fasterxml/jackson/databind/SerializationFeature;

.field public static final enum FAIL_ON_EMPTY_BEANS:Lcom/fasterxml/jackson/databind/SerializationFeature;

.field public static final enum FAIL_ON_SELF_REFERENCES:Lcom/fasterxml/jackson/databind/SerializationFeature;

.field public static final enum FAIL_ON_UNWRAPPED_TYPE_IDENTIFIERS:Lcom/fasterxml/jackson/databind/SerializationFeature;

.field public static final enum FLUSH_AFTER_WRITE_VALUE:Lcom/fasterxml/jackson/databind/SerializationFeature;

.field public static final enum INDENT_OUTPUT:Lcom/fasterxml/jackson/databind/SerializationFeature;

.field public static final enum ORDER_MAP_ENTRIES_BY_KEYS:Lcom/fasterxml/jackson/databind/SerializationFeature;

.field public static final enum USE_EQUALITY_FOR_OBJECT_ID:Lcom/fasterxml/jackson/databind/SerializationFeature;

.field public static final enum WRAP_EXCEPTIONS:Lcom/fasterxml/jackson/databind/SerializationFeature;

.field public static final enum WRAP_ROOT_VALUE:Lcom/fasterxml/jackson/databind/SerializationFeature;

.field public static final enum WRITE_BIGDECIMAL_AS_PLAIN:Lcom/fasterxml/jackson/databind/SerializationFeature;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum WRITE_CHAR_ARRAYS_AS_JSON_ARRAYS:Lcom/fasterxml/jackson/databind/SerializationFeature;

.field public static final enum WRITE_DATES_AS_TIMESTAMPS:Lcom/fasterxml/jackson/databind/SerializationFeature;

.field public static final enum WRITE_DATES_WITH_ZONE_ID:Lcom/fasterxml/jackson/databind/SerializationFeature;

.field public static final enum WRITE_DATE_KEYS_AS_TIMESTAMPS:Lcom/fasterxml/jackson/databind/SerializationFeature;

.field public static final enum WRITE_DATE_TIMESTAMPS_AS_NANOSECONDS:Lcom/fasterxml/jackson/databind/SerializationFeature;

.field public static final enum WRITE_DURATIONS_AS_TIMESTAMPS:Lcom/fasterxml/jackson/databind/SerializationFeature;

.field public static final enum WRITE_EMPTY_JSON_ARRAYS:Lcom/fasterxml/jackson/databind/SerializationFeature;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum WRITE_ENUMS_USING_INDEX:Lcom/fasterxml/jackson/databind/SerializationFeature;

.field public static final enum WRITE_ENUMS_USING_TO_STRING:Lcom/fasterxml/jackson/databind/SerializationFeature;

.field public static final enum WRITE_ENUM_KEYS_USING_INDEX:Lcom/fasterxml/jackson/databind/SerializationFeature;

.field public static final enum WRITE_NULL_MAP_VALUES:Lcom/fasterxml/jackson/databind/SerializationFeature;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum WRITE_SINGLE_ELEM_ARRAYS_UNWRAPPED:Lcom/fasterxml/jackson/databind/SerializationFeature;


# instance fields
.field private final _defaultState:Z

.field private final _mask:I


# direct methods
.method static constructor <clinit>()V
    .locals 48

    .line 1
    new-instance v0, Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 2
    .line 3
    const-string v1, "WRAP_ROOT_VALUE"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Lcom/fasterxml/jackson/databind/SerializationFeature;-><init>(Ljava/lang/String;IZ)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRAP_ROOT_VALUE:Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 10
    .line 11
    new-instance v1, Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 12
    .line 13
    const-string v3, "INDENT_OUTPUT"

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v3, v4, v2}, Lcom/fasterxml/jackson/databind/SerializationFeature;-><init>(Ljava/lang/String;IZ)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lcom/fasterxml/jackson/databind/SerializationFeature;->INDENT_OUTPUT:Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 20
    .line 21
    new-instance v3, Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 22
    .line 23
    const-string v5, "FAIL_ON_EMPTY_BEANS"

    .line 24
    .line 25
    const/4 v6, 0x2

    .line 26
    invoke-direct {v3, v5, v6, v4}, Lcom/fasterxml/jackson/databind/SerializationFeature;-><init>(Ljava/lang/String;IZ)V

    .line 27
    .line 28
    .line 29
    sput-object v3, Lcom/fasterxml/jackson/databind/SerializationFeature;->FAIL_ON_EMPTY_BEANS:Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 30
    .line 31
    new-instance v5, Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 32
    .line 33
    const-string v7, "FAIL_ON_SELF_REFERENCES"

    .line 34
    .line 35
    const/4 v8, 0x3

    .line 36
    invoke-direct {v5, v7, v8, v4}, Lcom/fasterxml/jackson/databind/SerializationFeature;-><init>(Ljava/lang/String;IZ)V

    .line 37
    .line 38
    .line 39
    sput-object v5, Lcom/fasterxml/jackson/databind/SerializationFeature;->FAIL_ON_SELF_REFERENCES:Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 40
    .line 41
    new-instance v7, Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 42
    .line 43
    const-string v9, "WRAP_EXCEPTIONS"

    .line 44
    .line 45
    const/4 v10, 0x4

    .line 46
    invoke-direct {v7, v9, v10, v4}, Lcom/fasterxml/jackson/databind/SerializationFeature;-><init>(Ljava/lang/String;IZ)V

    .line 47
    .line 48
    .line 49
    sput-object v7, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRAP_EXCEPTIONS:Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 50
    .line 51
    new-instance v9, Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 52
    .line 53
    const-string v11, "FAIL_ON_UNWRAPPED_TYPE_IDENTIFIERS"

    .line 54
    .line 55
    const/4 v12, 0x5

    .line 56
    invoke-direct {v9, v11, v12, v4}, Lcom/fasterxml/jackson/databind/SerializationFeature;-><init>(Ljava/lang/String;IZ)V

    .line 57
    .line 58
    .line 59
    sput-object v9, Lcom/fasterxml/jackson/databind/SerializationFeature;->FAIL_ON_UNWRAPPED_TYPE_IDENTIFIERS:Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 60
    .line 61
    new-instance v11, Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 62
    .line 63
    const-string v13, "CLOSE_CLOSEABLE"

    .line 64
    .line 65
    const/4 v14, 0x6

    .line 66
    invoke-direct {v11, v13, v14, v2}, Lcom/fasterxml/jackson/databind/SerializationFeature;-><init>(Ljava/lang/String;IZ)V

    .line 67
    .line 68
    .line 69
    sput-object v11, Lcom/fasterxml/jackson/databind/SerializationFeature;->CLOSE_CLOSEABLE:Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 70
    .line 71
    new-instance v13, Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 72
    .line 73
    const-string v15, "FLUSH_AFTER_WRITE_VALUE"

    .line 74
    .line 75
    move/from16 v16, v6

    .line 76
    .line 77
    const/4 v6, 0x7

    .line 78
    invoke-direct {v13, v15, v6, v4}, Lcom/fasterxml/jackson/databind/SerializationFeature;-><init>(Ljava/lang/String;IZ)V

    .line 79
    .line 80
    .line 81
    sput-object v13, Lcom/fasterxml/jackson/databind/SerializationFeature;->FLUSH_AFTER_WRITE_VALUE:Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 82
    .line 83
    new-instance v15, Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 84
    .line 85
    move/from16 v17, v6

    .line 86
    .line 87
    const-string v6, "WRITE_DATES_AS_TIMESTAMPS"

    .line 88
    .line 89
    move/from16 v18, v8

    .line 90
    .line 91
    const/16 v8, 0x8

    .line 92
    .line 93
    invoke-direct {v15, v6, v8, v4}, Lcom/fasterxml/jackson/databind/SerializationFeature;-><init>(Ljava/lang/String;IZ)V

    .line 94
    .line 95
    .line 96
    sput-object v15, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRITE_DATES_AS_TIMESTAMPS:Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 97
    .line 98
    new-instance v6, Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 99
    .line 100
    move/from16 v19, v8

    .line 101
    .line 102
    const-string v8, "WRITE_DATE_KEYS_AS_TIMESTAMPS"

    .line 103
    .line 104
    move/from16 v20, v10

    .line 105
    .line 106
    const/16 v10, 0x9

    .line 107
    .line 108
    invoke-direct {v6, v8, v10, v2}, Lcom/fasterxml/jackson/databind/SerializationFeature;-><init>(Ljava/lang/String;IZ)V

    .line 109
    .line 110
    .line 111
    sput-object v6, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRITE_DATE_KEYS_AS_TIMESTAMPS:Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 112
    .line 113
    new-instance v8, Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 114
    .line 115
    move/from16 v21, v10

    .line 116
    .line 117
    const-string v10, "WRITE_DATES_WITH_ZONE_ID"

    .line 118
    .line 119
    move/from16 v22, v12

    .line 120
    .line 121
    const/16 v12, 0xa

    .line 122
    .line 123
    invoke-direct {v8, v10, v12, v2}, Lcom/fasterxml/jackson/databind/SerializationFeature;-><init>(Ljava/lang/String;IZ)V

    .line 124
    .line 125
    .line 126
    sput-object v8, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRITE_DATES_WITH_ZONE_ID:Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 127
    .line 128
    new-instance v10, Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 129
    .line 130
    move/from16 v23, v12

    .line 131
    .line 132
    const-string v12, "WRITE_DURATIONS_AS_TIMESTAMPS"

    .line 133
    .line 134
    move/from16 v24, v14

    .line 135
    .line 136
    const/16 v14, 0xb

    .line 137
    .line 138
    invoke-direct {v10, v12, v14, v4}, Lcom/fasterxml/jackson/databind/SerializationFeature;-><init>(Ljava/lang/String;IZ)V

    .line 139
    .line 140
    .line 141
    sput-object v10, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRITE_DURATIONS_AS_TIMESTAMPS:Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 142
    .line 143
    new-instance v12, Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 144
    .line 145
    move/from16 v25, v14

    .line 146
    .line 147
    const-string v14, "WRITE_CHAR_ARRAYS_AS_JSON_ARRAYS"

    .line 148
    .line 149
    const/16 v4, 0xc

    .line 150
    .line 151
    invoke-direct {v12, v14, v4, v2}, Lcom/fasterxml/jackson/databind/SerializationFeature;-><init>(Ljava/lang/String;IZ)V

    .line 152
    .line 153
    .line 154
    sput-object v12, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRITE_CHAR_ARRAYS_AS_JSON_ARRAYS:Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 155
    .line 156
    new-instance v14, Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 157
    .line 158
    move/from16 v27, v4

    .line 159
    .line 160
    const-string v4, "WRITE_ENUMS_USING_TO_STRING"

    .line 161
    .line 162
    move-object/from16 v28, v0

    .line 163
    .line 164
    const/16 v0, 0xd

    .line 165
    .line 166
    invoke-direct {v14, v4, v0, v2}, Lcom/fasterxml/jackson/databind/SerializationFeature;-><init>(Ljava/lang/String;IZ)V

    .line 167
    .line 168
    .line 169
    sput-object v14, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRITE_ENUMS_USING_TO_STRING:Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 170
    .line 171
    new-instance v4, Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 172
    .line 173
    move/from16 v29, v0

    .line 174
    .line 175
    const-string v0, "WRITE_ENUMS_USING_INDEX"

    .line 176
    .line 177
    move-object/from16 v30, v1

    .line 178
    .line 179
    const/16 v1, 0xe

    .line 180
    .line 181
    invoke-direct {v4, v0, v1, v2}, Lcom/fasterxml/jackson/databind/SerializationFeature;-><init>(Ljava/lang/String;IZ)V

    .line 182
    .line 183
    .line 184
    sput-object v4, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRITE_ENUMS_USING_INDEX:Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 185
    .line 186
    new-instance v0, Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 187
    .line 188
    move/from16 v31, v1

    .line 189
    .line 190
    const-string v1, "WRITE_ENUM_KEYS_USING_INDEX"

    .line 191
    .line 192
    move-object/from16 v32, v3

    .line 193
    .line 194
    const/16 v3, 0xf

    .line 195
    .line 196
    invoke-direct {v0, v1, v3, v2}, Lcom/fasterxml/jackson/databind/SerializationFeature;-><init>(Ljava/lang/String;IZ)V

    .line 197
    .line 198
    .line 199
    sput-object v0, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRITE_ENUM_KEYS_USING_INDEX:Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 200
    .line 201
    new-instance v1, Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 202
    .line 203
    move/from16 v33, v3

    .line 204
    .line 205
    const-string v3, "WRITE_NULL_MAP_VALUES"

    .line 206
    .line 207
    const/16 v2, 0x10

    .line 208
    .line 209
    move-object/from16 v35, v0

    .line 210
    .line 211
    const/4 v0, 0x1

    .line 212
    invoke-direct {v1, v3, v2, v0}, Lcom/fasterxml/jackson/databind/SerializationFeature;-><init>(Ljava/lang/String;IZ)V

    .line 213
    .line 214
    .line 215
    sput-object v1, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRITE_NULL_MAP_VALUES:Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 216
    .line 217
    new-instance v3, Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 218
    .line 219
    move/from16 v36, v2

    .line 220
    .line 221
    const-string v2, "WRITE_EMPTY_JSON_ARRAYS"

    .line 222
    .line 223
    move-object/from16 v37, v1

    .line 224
    .line 225
    const/16 v1, 0x11

    .line 226
    .line 227
    invoke-direct {v3, v2, v1, v0}, Lcom/fasterxml/jackson/databind/SerializationFeature;-><init>(Ljava/lang/String;IZ)V

    .line 228
    .line 229
    .line 230
    sput-object v3, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRITE_EMPTY_JSON_ARRAYS:Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 231
    .line 232
    new-instance v0, Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 233
    .line 234
    const-string v2, "WRITE_SINGLE_ELEM_ARRAYS_UNWRAPPED"

    .line 235
    .line 236
    move/from16 v38, v1

    .line 237
    .line 238
    const/16 v1, 0x12

    .line 239
    .line 240
    move-object/from16 v39, v3

    .line 241
    .line 242
    const/4 v3, 0x0

    .line 243
    invoke-direct {v0, v2, v1, v3}, Lcom/fasterxml/jackson/databind/SerializationFeature;-><init>(Ljava/lang/String;IZ)V

    .line 244
    .line 245
    .line 246
    sput-object v0, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRITE_SINGLE_ELEM_ARRAYS_UNWRAPPED:Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 247
    .line 248
    new-instance v2, Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 249
    .line 250
    move/from16 v34, v1

    .line 251
    .line 252
    const-string v1, "WRITE_BIGDECIMAL_AS_PLAIN"

    .line 253
    .line 254
    move-object/from16 v40, v0

    .line 255
    .line 256
    const/16 v0, 0x13

    .line 257
    .line 258
    invoke-direct {v2, v1, v0, v3}, Lcom/fasterxml/jackson/databind/SerializationFeature;-><init>(Ljava/lang/String;IZ)V

    .line 259
    .line 260
    .line 261
    sput-object v2, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRITE_BIGDECIMAL_AS_PLAIN:Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 262
    .line 263
    new-instance v1, Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 264
    .line 265
    move/from16 v41, v0

    .line 266
    .line 267
    const-string v0, "WRITE_DATE_TIMESTAMPS_AS_NANOSECONDS"

    .line 268
    .line 269
    const/16 v3, 0x14

    .line 270
    .line 271
    move-object/from16 v43, v2

    .line 272
    .line 273
    const/4 v2, 0x1

    .line 274
    invoke-direct {v1, v0, v3, v2}, Lcom/fasterxml/jackson/databind/SerializationFeature;-><init>(Ljava/lang/String;IZ)V

    .line 275
    .line 276
    .line 277
    sput-object v1, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRITE_DATE_TIMESTAMPS_AS_NANOSECONDS:Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 278
    .line 279
    new-instance v0, Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 280
    .line 281
    move/from16 v26, v3

    .line 282
    .line 283
    const-string v3, "ORDER_MAP_ENTRIES_BY_KEYS"

    .line 284
    .line 285
    const/16 v2, 0x15

    .line 286
    .line 287
    move-object/from16 v45, v1

    .line 288
    .line 289
    const/4 v1, 0x0

    .line 290
    invoke-direct {v0, v3, v2, v1}, Lcom/fasterxml/jackson/databind/SerializationFeature;-><init>(Ljava/lang/String;IZ)V

    .line 291
    .line 292
    .line 293
    sput-object v0, Lcom/fasterxml/jackson/databind/SerializationFeature;->ORDER_MAP_ENTRIES_BY_KEYS:Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 294
    .line 295
    new-instance v3, Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 296
    .line 297
    move/from16 v42, v2

    .line 298
    .line 299
    const-string v2, "EAGER_SERIALIZER_FETCH"

    .line 300
    .line 301
    const/16 v1, 0x16

    .line 302
    .line 303
    move-object/from16 v46, v0

    .line 304
    .line 305
    const/4 v0, 0x1

    .line 306
    invoke-direct {v3, v2, v1, v0}, Lcom/fasterxml/jackson/databind/SerializationFeature;-><init>(Ljava/lang/String;IZ)V

    .line 307
    .line 308
    .line 309
    sput-object v3, Lcom/fasterxml/jackson/databind/SerializationFeature;->EAGER_SERIALIZER_FETCH:Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 310
    .line 311
    new-instance v1, Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 312
    .line 313
    const-string v2, "USE_EQUALITY_FOR_OBJECT_ID"

    .line 314
    .line 315
    move/from16 v44, v0

    .line 316
    .line 317
    const/16 v0, 0x17

    .line 318
    .line 319
    move-object/from16 v47, v3

    .line 320
    .line 321
    const/4 v3, 0x0

    .line 322
    invoke-direct {v1, v2, v0, v3}, Lcom/fasterxml/jackson/databind/SerializationFeature;-><init>(Ljava/lang/String;IZ)V

    .line 323
    .line 324
    .line 325
    sput-object v1, Lcom/fasterxml/jackson/databind/SerializationFeature;->USE_EQUALITY_FOR_OBJECT_ID:Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 326
    .line 327
    const/16 v0, 0x18

    .line 328
    .line 329
    new-array v0, v0, [Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 330
    .line 331
    aput-object v28, v0, v3

    .line 332
    .line 333
    aput-object v30, v0, v44

    .line 334
    .line 335
    aput-object v32, v0, v16

    .line 336
    .line 337
    aput-object v5, v0, v18

    .line 338
    .line 339
    aput-object v7, v0, v20

    .line 340
    .line 341
    aput-object v9, v0, v22

    .line 342
    .line 343
    aput-object v11, v0, v24

    .line 344
    .line 345
    aput-object v13, v0, v17

    .line 346
    .line 347
    aput-object v15, v0, v19

    .line 348
    .line 349
    aput-object v6, v0, v21

    .line 350
    .line 351
    aput-object v8, v0, v23

    .line 352
    .line 353
    aput-object v10, v0, v25

    .line 354
    .line 355
    aput-object v12, v0, v27

    .line 356
    .line 357
    aput-object v14, v0, v29

    .line 358
    .line 359
    aput-object v4, v0, v31

    .line 360
    .line 361
    aput-object v35, v0, v33

    .line 362
    .line 363
    aput-object v37, v0, v36

    .line 364
    .line 365
    aput-object v39, v0, v38

    .line 366
    .line 367
    aput-object v40, v0, v34

    .line 368
    .line 369
    aput-object v43, v0, v41

    .line 370
    .line 371
    aput-object v45, v0, v26

    .line 372
    .line 373
    aput-object v46, v0, v42

    .line 374
    .line 375
    const/16 v2, 0x16

    .line 376
    .line 377
    aput-object v47, v0, v2

    .line 378
    .line 379
    const/16 v2, 0x17

    .line 380
    .line 381
    aput-object v1, v0, v2

    .line 382
    .line 383
    sput-object v0, Lcom/fasterxml/jackson/databind/SerializationFeature;->$VALUES:[Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 384
    .line 385
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-boolean p3, p0, Lcom/fasterxml/jackson/databind/SerializationFeature;->_defaultState:Z

    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    shl-int/2addr p1, p2

    .line 12
    iput p1, p0, Lcom/fasterxml/jackson/databind/SerializationFeature;->_mask:I

    .line 13
    .line 14
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/SerializationFeature;
    .locals 1

    .line 1
    const-class v0, Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/fasterxml/jackson/databind/SerializationFeature;
    .locals 1

    .line 1
    sget-object v0, Lcom/fasterxml/jackson/databind/SerializationFeature;->$VALUES:[Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/fasterxml/jackson/databind/SerializationFeature;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public enabledByDefault()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/SerializationFeature;->_defaultState:Z

    .line 2
    .line 3
    return v0
.end method

.method public enabledIn(I)Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/fasterxml/jackson/databind/SerializationFeature;->_mask:I

    .line 2
    .line 3
    and-int/2addr p1, v0

    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    return p1

    .line 8
    :cond_0
    const/4 p1, 0x0

    .line 9
    return p1
.end method

.method public getMask()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/fasterxml/jackson/databind/SerializationFeature;->_mask:I

    .line 2
    .line 3
    return v0
.end method
