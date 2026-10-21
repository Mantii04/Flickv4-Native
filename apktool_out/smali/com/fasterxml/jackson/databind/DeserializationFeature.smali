.class public final enum Lcom/fasterxml/jackson/databind/DeserializationFeature;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/fasterxml/jackson/databind/cfg/ConfigFeature;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/fasterxml/jackson/databind/DeserializationFeature;",
        ">;",
        "Lcom/fasterxml/jackson/databind/cfg/ConfigFeature;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fasterxml/jackson/databind/DeserializationFeature;

.field public static final enum ACCEPT_EMPTY_ARRAY_AS_NULL_OBJECT:Lcom/fasterxml/jackson/databind/DeserializationFeature;

.field public static final enum ACCEPT_EMPTY_STRING_AS_NULL_OBJECT:Lcom/fasterxml/jackson/databind/DeserializationFeature;

.field public static final enum ACCEPT_FLOAT_AS_INT:Lcom/fasterxml/jackson/databind/DeserializationFeature;

.field public static final enum ACCEPT_SINGLE_VALUE_AS_ARRAY:Lcom/fasterxml/jackson/databind/DeserializationFeature;

.field public static final enum ADJUST_DATES_TO_CONTEXT_TIME_ZONE:Lcom/fasterxml/jackson/databind/DeserializationFeature;

.field public static final enum EAGER_DESERIALIZER_FETCH:Lcom/fasterxml/jackson/databind/DeserializationFeature;

.field public static final enum FAIL_ON_IGNORED_PROPERTIES:Lcom/fasterxml/jackson/databind/DeserializationFeature;

.field public static final enum FAIL_ON_INVALID_SUBTYPE:Lcom/fasterxml/jackson/databind/DeserializationFeature;

.field public static final enum FAIL_ON_MISSING_CREATOR_PROPERTIES:Lcom/fasterxml/jackson/databind/DeserializationFeature;

.field public static final enum FAIL_ON_MISSING_EXTERNAL_TYPE_ID_PROPERTY:Lcom/fasterxml/jackson/databind/DeserializationFeature;

.field public static final enum FAIL_ON_NULL_CREATOR_PROPERTIES:Lcom/fasterxml/jackson/databind/DeserializationFeature;

.field public static final enum FAIL_ON_NULL_FOR_PRIMITIVES:Lcom/fasterxml/jackson/databind/DeserializationFeature;

.field public static final enum FAIL_ON_NUMBERS_FOR_ENUMS:Lcom/fasterxml/jackson/databind/DeserializationFeature;

.field public static final enum FAIL_ON_READING_DUP_TREE_KEY:Lcom/fasterxml/jackson/databind/DeserializationFeature;

.field public static final enum FAIL_ON_TRAILING_TOKENS:Lcom/fasterxml/jackson/databind/DeserializationFeature;

.field public static final enum FAIL_ON_UNKNOWN_PROPERTIES:Lcom/fasterxml/jackson/databind/DeserializationFeature;

.field public static final enum FAIL_ON_UNRESOLVED_OBJECT_IDS:Lcom/fasterxml/jackson/databind/DeserializationFeature;

.field public static final enum READ_DATE_TIMESTAMPS_AS_NANOSECONDS:Lcom/fasterxml/jackson/databind/DeserializationFeature;

.field public static final enum READ_ENUMS_USING_TO_STRING:Lcom/fasterxml/jackson/databind/DeserializationFeature;

.field public static final enum READ_UNKNOWN_ENUM_VALUES_AS_NULL:Lcom/fasterxml/jackson/databind/DeserializationFeature;

.field public static final enum READ_UNKNOWN_ENUM_VALUES_USING_DEFAULT_VALUE:Lcom/fasterxml/jackson/databind/DeserializationFeature;

.field public static final enum UNWRAP_ROOT_VALUE:Lcom/fasterxml/jackson/databind/DeserializationFeature;

.field public static final enum UNWRAP_SINGLE_VALUE_ARRAYS:Lcom/fasterxml/jackson/databind/DeserializationFeature;

.field public static final enum USE_BIG_DECIMAL_FOR_FLOATS:Lcom/fasterxml/jackson/databind/DeserializationFeature;

.field public static final enum USE_BIG_INTEGER_FOR_INTS:Lcom/fasterxml/jackson/databind/DeserializationFeature;

.field public static final enum USE_JAVA_ARRAY_FOR_JSON_ARRAY:Lcom/fasterxml/jackson/databind/DeserializationFeature;

.field public static final enum USE_LONG_FOR_INTS:Lcom/fasterxml/jackson/databind/DeserializationFeature;

.field public static final enum WRAP_EXCEPTIONS:Lcom/fasterxml/jackson/databind/DeserializationFeature;


# instance fields
.field private final _defaultState:Z

.field private final _mask:I


# direct methods
.method static constructor <clinit>()V
    .locals 52

    .line 1
    new-instance v0, Lcom/fasterxml/jackson/databind/DeserializationFeature;

    .line 2
    .line 3
    const-string v1, "USE_BIG_DECIMAL_FOR_FLOATS"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Lcom/fasterxml/jackson/databind/DeserializationFeature;-><init>(Ljava/lang/String;IZ)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/fasterxml/jackson/databind/DeserializationFeature;->USE_BIG_DECIMAL_FOR_FLOATS:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    .line 10
    .line 11
    new-instance v1, Lcom/fasterxml/jackson/databind/DeserializationFeature;

    .line 12
    .line 13
    const-string v3, "USE_BIG_INTEGER_FOR_INTS"

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v3, v4, v2}, Lcom/fasterxml/jackson/databind/DeserializationFeature;-><init>(Ljava/lang/String;IZ)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lcom/fasterxml/jackson/databind/DeserializationFeature;->USE_BIG_INTEGER_FOR_INTS:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    .line 20
    .line 21
    new-instance v3, Lcom/fasterxml/jackson/databind/DeserializationFeature;

    .line 22
    .line 23
    const-string v5, "USE_LONG_FOR_INTS"

    .line 24
    .line 25
    const/4 v6, 0x2

    .line 26
    invoke-direct {v3, v5, v6, v2}, Lcom/fasterxml/jackson/databind/DeserializationFeature;-><init>(Ljava/lang/String;IZ)V

    .line 27
    .line 28
    .line 29
    sput-object v3, Lcom/fasterxml/jackson/databind/DeserializationFeature;->USE_LONG_FOR_INTS:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    .line 30
    .line 31
    new-instance v5, Lcom/fasterxml/jackson/databind/DeserializationFeature;

    .line 32
    .line 33
    const-string v7, "USE_JAVA_ARRAY_FOR_JSON_ARRAY"

    .line 34
    .line 35
    const/4 v8, 0x3

    .line 36
    invoke-direct {v5, v7, v8, v2}, Lcom/fasterxml/jackson/databind/DeserializationFeature;-><init>(Ljava/lang/String;IZ)V

    .line 37
    .line 38
    .line 39
    sput-object v5, Lcom/fasterxml/jackson/databind/DeserializationFeature;->USE_JAVA_ARRAY_FOR_JSON_ARRAY:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    .line 40
    .line 41
    new-instance v7, Lcom/fasterxml/jackson/databind/DeserializationFeature;

    .line 42
    .line 43
    const-string v9, "FAIL_ON_UNKNOWN_PROPERTIES"

    .line 44
    .line 45
    const/4 v10, 0x4

    .line 46
    invoke-direct {v7, v9, v10, v4}, Lcom/fasterxml/jackson/databind/DeserializationFeature;-><init>(Ljava/lang/String;IZ)V

    .line 47
    .line 48
    .line 49
    sput-object v7, Lcom/fasterxml/jackson/databind/DeserializationFeature;->FAIL_ON_UNKNOWN_PROPERTIES:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    .line 50
    .line 51
    new-instance v9, Lcom/fasterxml/jackson/databind/DeserializationFeature;

    .line 52
    .line 53
    const-string v11, "FAIL_ON_NULL_FOR_PRIMITIVES"

    .line 54
    .line 55
    const/4 v12, 0x5

    .line 56
    invoke-direct {v9, v11, v12, v2}, Lcom/fasterxml/jackson/databind/DeserializationFeature;-><init>(Ljava/lang/String;IZ)V

    .line 57
    .line 58
    .line 59
    sput-object v9, Lcom/fasterxml/jackson/databind/DeserializationFeature;->FAIL_ON_NULL_FOR_PRIMITIVES:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    .line 60
    .line 61
    new-instance v11, Lcom/fasterxml/jackson/databind/DeserializationFeature;

    .line 62
    .line 63
    const-string v13, "FAIL_ON_NUMBERS_FOR_ENUMS"

    .line 64
    .line 65
    const/4 v14, 0x6

    .line 66
    invoke-direct {v11, v13, v14, v2}, Lcom/fasterxml/jackson/databind/DeserializationFeature;-><init>(Ljava/lang/String;IZ)V

    .line 67
    .line 68
    .line 69
    sput-object v11, Lcom/fasterxml/jackson/databind/DeserializationFeature;->FAIL_ON_NUMBERS_FOR_ENUMS:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    .line 70
    .line 71
    new-instance v13, Lcom/fasterxml/jackson/databind/DeserializationFeature;

    .line 72
    .line 73
    const-string v15, "FAIL_ON_INVALID_SUBTYPE"

    .line 74
    .line 75
    move/from16 v16, v6

    .line 76
    .line 77
    const/4 v6, 0x7

    .line 78
    invoke-direct {v13, v15, v6, v4}, Lcom/fasterxml/jackson/databind/DeserializationFeature;-><init>(Ljava/lang/String;IZ)V

    .line 79
    .line 80
    .line 81
    sput-object v13, Lcom/fasterxml/jackson/databind/DeserializationFeature;->FAIL_ON_INVALID_SUBTYPE:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    .line 82
    .line 83
    new-instance v15, Lcom/fasterxml/jackson/databind/DeserializationFeature;

    .line 84
    .line 85
    move/from16 v17, v6

    .line 86
    .line 87
    const-string v6, "FAIL_ON_READING_DUP_TREE_KEY"

    .line 88
    .line 89
    move/from16 v18, v8

    .line 90
    .line 91
    const/16 v8, 0x8

    .line 92
    .line 93
    invoke-direct {v15, v6, v8, v2}, Lcom/fasterxml/jackson/databind/DeserializationFeature;-><init>(Ljava/lang/String;IZ)V

    .line 94
    .line 95
    .line 96
    sput-object v15, Lcom/fasterxml/jackson/databind/DeserializationFeature;->FAIL_ON_READING_DUP_TREE_KEY:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    .line 97
    .line 98
    new-instance v6, Lcom/fasterxml/jackson/databind/DeserializationFeature;

    .line 99
    .line 100
    move/from16 v19, v8

    .line 101
    .line 102
    const-string v8, "FAIL_ON_IGNORED_PROPERTIES"

    .line 103
    .line 104
    move/from16 v20, v10

    .line 105
    .line 106
    const/16 v10, 0x9

    .line 107
    .line 108
    invoke-direct {v6, v8, v10, v2}, Lcom/fasterxml/jackson/databind/DeserializationFeature;-><init>(Ljava/lang/String;IZ)V

    .line 109
    .line 110
    .line 111
    sput-object v6, Lcom/fasterxml/jackson/databind/DeserializationFeature;->FAIL_ON_IGNORED_PROPERTIES:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    .line 112
    .line 113
    new-instance v8, Lcom/fasterxml/jackson/databind/DeserializationFeature;

    .line 114
    .line 115
    move/from16 v21, v10

    .line 116
    .line 117
    const-string v10, "FAIL_ON_UNRESOLVED_OBJECT_IDS"

    .line 118
    .line 119
    move/from16 v22, v12

    .line 120
    .line 121
    const/16 v12, 0xa

    .line 122
    .line 123
    invoke-direct {v8, v10, v12, v4}, Lcom/fasterxml/jackson/databind/DeserializationFeature;-><init>(Ljava/lang/String;IZ)V

    .line 124
    .line 125
    .line 126
    sput-object v8, Lcom/fasterxml/jackson/databind/DeserializationFeature;->FAIL_ON_UNRESOLVED_OBJECT_IDS:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    .line 127
    .line 128
    new-instance v10, Lcom/fasterxml/jackson/databind/DeserializationFeature;

    .line 129
    .line 130
    move/from16 v23, v12

    .line 131
    .line 132
    const-string v12, "FAIL_ON_MISSING_CREATOR_PROPERTIES"

    .line 133
    .line 134
    move/from16 v24, v14

    .line 135
    .line 136
    const/16 v14, 0xb

    .line 137
    .line 138
    invoke-direct {v10, v12, v14, v2}, Lcom/fasterxml/jackson/databind/DeserializationFeature;-><init>(Ljava/lang/String;IZ)V

    .line 139
    .line 140
    .line 141
    sput-object v10, Lcom/fasterxml/jackson/databind/DeserializationFeature;->FAIL_ON_MISSING_CREATOR_PROPERTIES:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    .line 142
    .line 143
    new-instance v12, Lcom/fasterxml/jackson/databind/DeserializationFeature;

    .line 144
    .line 145
    move/from16 v25, v14

    .line 146
    .line 147
    const-string v14, "FAIL_ON_NULL_CREATOR_PROPERTIES"

    .line 148
    .line 149
    const/16 v4, 0xc

    .line 150
    .line 151
    invoke-direct {v12, v14, v4, v2}, Lcom/fasterxml/jackson/databind/DeserializationFeature;-><init>(Ljava/lang/String;IZ)V

    .line 152
    .line 153
    .line 154
    sput-object v12, Lcom/fasterxml/jackson/databind/DeserializationFeature;->FAIL_ON_NULL_CREATOR_PROPERTIES:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    .line 155
    .line 156
    new-instance v14, Lcom/fasterxml/jackson/databind/DeserializationFeature;

    .line 157
    .line 158
    move/from16 v27, v4

    .line 159
    .line 160
    const-string v4, "FAIL_ON_MISSING_EXTERNAL_TYPE_ID_PROPERTY"

    .line 161
    .line 162
    const/16 v2, 0xd

    .line 163
    .line 164
    move-object/from16 v29, v0

    .line 165
    .line 166
    const/4 v0, 0x1

    .line 167
    invoke-direct {v14, v4, v2, v0}, Lcom/fasterxml/jackson/databind/DeserializationFeature;-><init>(Ljava/lang/String;IZ)V

    .line 168
    .line 169
    .line 170
    sput-object v14, Lcom/fasterxml/jackson/databind/DeserializationFeature;->FAIL_ON_MISSING_EXTERNAL_TYPE_ID_PROPERTY:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    .line 171
    .line 172
    new-instance v4, Lcom/fasterxml/jackson/databind/DeserializationFeature;

    .line 173
    .line 174
    move/from16 v30, v2

    .line 175
    .line 176
    const-string v2, "FAIL_ON_TRAILING_TOKENS"

    .line 177
    .line 178
    const/16 v0, 0xe

    .line 179
    .line 180
    move-object/from16 v31, v1

    .line 181
    .line 182
    const/4 v1, 0x0

    .line 183
    invoke-direct {v4, v2, v0, v1}, Lcom/fasterxml/jackson/databind/DeserializationFeature;-><init>(Ljava/lang/String;IZ)V

    .line 184
    .line 185
    .line 186
    sput-object v4, Lcom/fasterxml/jackson/databind/DeserializationFeature;->FAIL_ON_TRAILING_TOKENS:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    .line 187
    .line 188
    new-instance v2, Lcom/fasterxml/jackson/databind/DeserializationFeature;

    .line 189
    .line 190
    move/from16 v32, v0

    .line 191
    .line 192
    const-string v0, "WRAP_EXCEPTIONS"

    .line 193
    .line 194
    const/16 v1, 0xf

    .line 195
    .line 196
    move-object/from16 v33, v3

    .line 197
    .line 198
    const/4 v3, 0x1

    .line 199
    invoke-direct {v2, v0, v1, v3}, Lcom/fasterxml/jackson/databind/DeserializationFeature;-><init>(Ljava/lang/String;IZ)V

    .line 200
    .line 201
    .line 202
    sput-object v2, Lcom/fasterxml/jackson/databind/DeserializationFeature;->WRAP_EXCEPTIONS:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    .line 203
    .line 204
    new-instance v0, Lcom/fasterxml/jackson/databind/DeserializationFeature;

    .line 205
    .line 206
    const-string v3, "ACCEPT_SINGLE_VALUE_AS_ARRAY"

    .line 207
    .line 208
    move/from16 v34, v1

    .line 209
    .line 210
    const/16 v1, 0x10

    .line 211
    .line 212
    move-object/from16 v35, v2

    .line 213
    .line 214
    const/4 v2, 0x0

    .line 215
    invoke-direct {v0, v3, v1, v2}, Lcom/fasterxml/jackson/databind/DeserializationFeature;-><init>(Ljava/lang/String;IZ)V

    .line 216
    .line 217
    .line 218
    sput-object v0, Lcom/fasterxml/jackson/databind/DeserializationFeature;->ACCEPT_SINGLE_VALUE_AS_ARRAY:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    .line 219
    .line 220
    new-instance v3, Lcom/fasterxml/jackson/databind/DeserializationFeature;

    .line 221
    .line 222
    move/from16 v36, v1

    .line 223
    .line 224
    const-string v1, "UNWRAP_SINGLE_VALUE_ARRAYS"

    .line 225
    .line 226
    move-object/from16 v37, v0

    .line 227
    .line 228
    const/16 v0, 0x11

    .line 229
    .line 230
    invoke-direct {v3, v1, v0, v2}, Lcom/fasterxml/jackson/databind/DeserializationFeature;-><init>(Ljava/lang/String;IZ)V

    .line 231
    .line 232
    .line 233
    sput-object v3, Lcom/fasterxml/jackson/databind/DeserializationFeature;->UNWRAP_SINGLE_VALUE_ARRAYS:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    .line 234
    .line 235
    new-instance v1, Lcom/fasterxml/jackson/databind/DeserializationFeature;

    .line 236
    .line 237
    move/from16 v38, v0

    .line 238
    .line 239
    const-string v0, "UNWRAP_ROOT_VALUE"

    .line 240
    .line 241
    move-object/from16 v39, v3

    .line 242
    .line 243
    const/16 v3, 0x12

    .line 244
    .line 245
    invoke-direct {v1, v0, v3, v2}, Lcom/fasterxml/jackson/databind/DeserializationFeature;-><init>(Ljava/lang/String;IZ)V

    .line 246
    .line 247
    .line 248
    sput-object v1, Lcom/fasterxml/jackson/databind/DeserializationFeature;->UNWRAP_ROOT_VALUE:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    .line 249
    .line 250
    new-instance v0, Lcom/fasterxml/jackson/databind/DeserializationFeature;

    .line 251
    .line 252
    move/from16 v40, v3

    .line 253
    .line 254
    const-string v3, "ACCEPT_EMPTY_STRING_AS_NULL_OBJECT"

    .line 255
    .line 256
    move-object/from16 v41, v1

    .line 257
    .line 258
    const/16 v1, 0x13

    .line 259
    .line 260
    invoke-direct {v0, v3, v1, v2}, Lcom/fasterxml/jackson/databind/DeserializationFeature;-><init>(Ljava/lang/String;IZ)V

    .line 261
    .line 262
    .line 263
    sput-object v0, Lcom/fasterxml/jackson/databind/DeserializationFeature;->ACCEPT_EMPTY_STRING_AS_NULL_OBJECT:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    .line 264
    .line 265
    new-instance v3, Lcom/fasterxml/jackson/databind/DeserializationFeature;

    .line 266
    .line 267
    move/from16 v42, v1

    .line 268
    .line 269
    const-string v1, "ACCEPT_EMPTY_ARRAY_AS_NULL_OBJECT"

    .line 270
    .line 271
    move-object/from16 v43, v0

    .line 272
    .line 273
    const/16 v0, 0x14

    .line 274
    .line 275
    invoke-direct {v3, v1, v0, v2}, Lcom/fasterxml/jackson/databind/DeserializationFeature;-><init>(Ljava/lang/String;IZ)V

    .line 276
    .line 277
    .line 278
    sput-object v3, Lcom/fasterxml/jackson/databind/DeserializationFeature;->ACCEPT_EMPTY_ARRAY_AS_NULL_OBJECT:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    .line 279
    .line 280
    new-instance v1, Lcom/fasterxml/jackson/databind/DeserializationFeature;

    .line 281
    .line 282
    move/from16 v44, v0

    .line 283
    .line 284
    const-string v0, "ACCEPT_FLOAT_AS_INT"

    .line 285
    .line 286
    const/16 v2, 0x15

    .line 287
    .line 288
    move-object/from16 v45, v3

    .line 289
    .line 290
    const/4 v3, 0x1

    .line 291
    invoke-direct {v1, v0, v2, v3}, Lcom/fasterxml/jackson/databind/DeserializationFeature;-><init>(Ljava/lang/String;IZ)V

    .line 292
    .line 293
    .line 294
    sput-object v1, Lcom/fasterxml/jackson/databind/DeserializationFeature;->ACCEPT_FLOAT_AS_INT:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    .line 295
    .line 296
    new-instance v0, Lcom/fasterxml/jackson/databind/DeserializationFeature;

    .line 297
    .line 298
    const-string v3, "READ_ENUMS_USING_TO_STRING"

    .line 299
    .line 300
    move/from16 v46, v2

    .line 301
    .line 302
    const/16 v2, 0x16

    .line 303
    .line 304
    move-object/from16 v47, v1

    .line 305
    .line 306
    const/4 v1, 0x0

    .line 307
    invoke-direct {v0, v3, v2, v1}, Lcom/fasterxml/jackson/databind/DeserializationFeature;-><init>(Ljava/lang/String;IZ)V

    .line 308
    .line 309
    .line 310
    sput-object v0, Lcom/fasterxml/jackson/databind/DeserializationFeature;->READ_ENUMS_USING_TO_STRING:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    .line 311
    .line 312
    new-instance v2, Lcom/fasterxml/jackson/databind/DeserializationFeature;

    .line 313
    .line 314
    const-string v3, "READ_UNKNOWN_ENUM_VALUES_AS_NULL"

    .line 315
    .line 316
    move-object/from16 v48, v0

    .line 317
    .line 318
    const/16 v0, 0x17

    .line 319
    .line 320
    invoke-direct {v2, v3, v0, v1}, Lcom/fasterxml/jackson/databind/DeserializationFeature;-><init>(Ljava/lang/String;IZ)V

    .line 321
    .line 322
    .line 323
    sput-object v2, Lcom/fasterxml/jackson/databind/DeserializationFeature;->READ_UNKNOWN_ENUM_VALUES_AS_NULL:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    .line 324
    .line 325
    new-instance v0, Lcom/fasterxml/jackson/databind/DeserializationFeature;

    .line 326
    .line 327
    const-string v3, "READ_UNKNOWN_ENUM_VALUES_USING_DEFAULT_VALUE"

    .line 328
    .line 329
    move-object/from16 v49, v2

    .line 330
    .line 331
    const/16 v2, 0x18

    .line 332
    .line 333
    invoke-direct {v0, v3, v2, v1}, Lcom/fasterxml/jackson/databind/DeserializationFeature;-><init>(Ljava/lang/String;IZ)V

    .line 334
    .line 335
    .line 336
    sput-object v0, Lcom/fasterxml/jackson/databind/DeserializationFeature;->READ_UNKNOWN_ENUM_VALUES_USING_DEFAULT_VALUE:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    .line 337
    .line 338
    new-instance v1, Lcom/fasterxml/jackson/databind/DeserializationFeature;

    .line 339
    .line 340
    const-string v2, "READ_DATE_TIMESTAMPS_AS_NANOSECONDS"

    .line 341
    .line 342
    const/16 v3, 0x19

    .line 343
    .line 344
    move-object/from16 v50, v0

    .line 345
    .line 346
    const/4 v0, 0x1

    .line 347
    invoke-direct {v1, v2, v3, v0}, Lcom/fasterxml/jackson/databind/DeserializationFeature;-><init>(Ljava/lang/String;IZ)V

    .line 348
    .line 349
    .line 350
    sput-object v1, Lcom/fasterxml/jackson/databind/DeserializationFeature;->READ_DATE_TIMESTAMPS_AS_NANOSECONDS:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    .line 351
    .line 352
    new-instance v2, Lcom/fasterxml/jackson/databind/DeserializationFeature;

    .line 353
    .line 354
    const-string v3, "ADJUST_DATES_TO_CONTEXT_TIME_ZONE"

    .line 355
    .line 356
    move-object/from16 v26, v1

    .line 357
    .line 358
    const/16 v1, 0x1a

    .line 359
    .line 360
    invoke-direct {v2, v3, v1, v0}, Lcom/fasterxml/jackson/databind/DeserializationFeature;-><init>(Ljava/lang/String;IZ)V

    .line 361
    .line 362
    .line 363
    sput-object v2, Lcom/fasterxml/jackson/databind/DeserializationFeature;->ADJUST_DATES_TO_CONTEXT_TIME_ZONE:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    .line 364
    .line 365
    new-instance v1, Lcom/fasterxml/jackson/databind/DeserializationFeature;

    .line 366
    .line 367
    const-string v3, "EAGER_DESERIALIZER_FETCH"

    .line 368
    .line 369
    move-object/from16 v51, v2

    .line 370
    .line 371
    const/16 v2, 0x1b

    .line 372
    .line 373
    invoke-direct {v1, v3, v2, v0}, Lcom/fasterxml/jackson/databind/DeserializationFeature;-><init>(Ljava/lang/String;IZ)V

    .line 374
    .line 375
    .line 376
    sput-object v1, Lcom/fasterxml/jackson/databind/DeserializationFeature;->EAGER_DESERIALIZER_FETCH:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    .line 377
    .line 378
    const/16 v2, 0x1c

    .line 379
    .line 380
    new-array v2, v2, [Lcom/fasterxml/jackson/databind/DeserializationFeature;

    .line 381
    .line 382
    const/16 v28, 0x0

    .line 383
    .line 384
    aput-object v29, v2, v28

    .line 385
    .line 386
    aput-object v31, v2, v0

    .line 387
    .line 388
    aput-object v33, v2, v16

    .line 389
    .line 390
    aput-object v5, v2, v18

    .line 391
    .line 392
    aput-object v7, v2, v20

    .line 393
    .line 394
    aput-object v9, v2, v22

    .line 395
    .line 396
    aput-object v11, v2, v24

    .line 397
    .line 398
    aput-object v13, v2, v17

    .line 399
    .line 400
    aput-object v15, v2, v19

    .line 401
    .line 402
    aput-object v6, v2, v21

    .line 403
    .line 404
    aput-object v8, v2, v23

    .line 405
    .line 406
    aput-object v10, v2, v25

    .line 407
    .line 408
    aput-object v12, v2, v27

    .line 409
    .line 410
    aput-object v14, v2, v30

    .line 411
    .line 412
    aput-object v4, v2, v32

    .line 413
    .line 414
    aput-object v35, v2, v34

    .line 415
    .line 416
    aput-object v37, v2, v36

    .line 417
    .line 418
    aput-object v39, v2, v38

    .line 419
    .line 420
    aput-object v41, v2, v40

    .line 421
    .line 422
    aput-object v43, v2, v42

    .line 423
    .line 424
    aput-object v45, v2, v44

    .line 425
    .line 426
    aput-object v47, v2, v46

    .line 427
    .line 428
    const/16 v0, 0x16

    .line 429
    .line 430
    aput-object v48, v2, v0

    .line 431
    .line 432
    const/16 v0, 0x17

    .line 433
    .line 434
    aput-object v49, v2, v0

    .line 435
    .line 436
    const/16 v0, 0x18

    .line 437
    .line 438
    aput-object v50, v2, v0

    .line 439
    .line 440
    const/16 v0, 0x19

    .line 441
    .line 442
    aput-object v26, v2, v0

    .line 443
    .line 444
    const/16 v0, 0x1a

    .line 445
    .line 446
    aput-object v51, v2, v0

    .line 447
    .line 448
    const/16 v0, 0x1b

    .line 449
    .line 450
    aput-object v1, v2, v0

    .line 451
    .line 452
    sput-object v2, Lcom/fasterxml/jackson/databind/DeserializationFeature;->$VALUES:[Lcom/fasterxml/jackson/databind/DeserializationFeature;

    .line 453
    .line 454
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
    iput-boolean p3, p0, Lcom/fasterxml/jackson/databind/DeserializationFeature;->_defaultState:Z

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
    iput p1, p0, Lcom/fasterxml/jackson/databind/DeserializationFeature;->_mask:I

    .line 13
    .line 14
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/DeserializationFeature;
    .locals 1

    .line 1
    const-class v0, Lcom/fasterxml/jackson/databind/DeserializationFeature;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/fasterxml/jackson/databind/DeserializationFeature;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/fasterxml/jackson/databind/DeserializationFeature;
    .locals 1

    .line 1
    sget-object v0, Lcom/fasterxml/jackson/databind/DeserializationFeature;->$VALUES:[Lcom/fasterxml/jackson/databind/DeserializationFeature;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/fasterxml/jackson/databind/DeserializationFeature;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/fasterxml/jackson/databind/DeserializationFeature;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public enabledByDefault()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/DeserializationFeature;->_defaultState:Z

    .line 2
    .line 3
    return v0
.end method

.method public enabledIn(I)Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/fasterxml/jackson/databind/DeserializationFeature;->_mask:I

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
    iget v0, p0, Lcom/fasterxml/jackson/databind/DeserializationFeature;->_mask:I

    .line 2
    .line 3
    return v0
.end method
