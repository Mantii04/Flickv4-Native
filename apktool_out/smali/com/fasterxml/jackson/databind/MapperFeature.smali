.class public final enum Lcom/fasterxml/jackson/databind/MapperFeature;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/fasterxml/jackson/databind/cfg/ConfigFeature;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/fasterxml/jackson/databind/MapperFeature;",
        ">;",
        "Lcom/fasterxml/jackson/databind/cfg/ConfigFeature;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fasterxml/jackson/databind/MapperFeature;

.field public static final enum ACCEPT_CASE_INSENSITIVE_ENUMS:Lcom/fasterxml/jackson/databind/MapperFeature;

.field public static final enum ACCEPT_CASE_INSENSITIVE_PROPERTIES:Lcom/fasterxml/jackson/databind/MapperFeature;

.field public static final enum ACCEPT_CASE_INSENSITIVE_VALUES:Lcom/fasterxml/jackson/databind/MapperFeature;

.field public static final enum ALLOW_COERCION_OF_SCALARS:Lcom/fasterxml/jackson/databind/MapperFeature;

.field public static final enum ALLOW_EXPLICIT_PROPERTY_RENAMING:Lcom/fasterxml/jackson/databind/MapperFeature;

.field public static final enum ALLOW_FINAL_FIELDS_AS_MUTATORS:Lcom/fasterxml/jackson/databind/MapperFeature;

.field public static final enum AUTO_DETECT_CREATORS:Lcom/fasterxml/jackson/databind/MapperFeature;

.field public static final enum AUTO_DETECT_FIELDS:Lcom/fasterxml/jackson/databind/MapperFeature;

.field public static final enum AUTO_DETECT_GETTERS:Lcom/fasterxml/jackson/databind/MapperFeature;

.field public static final enum AUTO_DETECT_IS_GETTERS:Lcom/fasterxml/jackson/databind/MapperFeature;

.field public static final enum AUTO_DETECT_SETTERS:Lcom/fasterxml/jackson/databind/MapperFeature;

.field public static final enum CAN_OVERRIDE_ACCESS_MODIFIERS:Lcom/fasterxml/jackson/databind/MapperFeature;

.field public static final enum DEFAULT_VIEW_INCLUSION:Lcom/fasterxml/jackson/databind/MapperFeature;

.field public static final enum IGNORE_DUPLICATE_MODULE_REGISTRATIONS:Lcom/fasterxml/jackson/databind/MapperFeature;

.field public static final enum IGNORE_MERGE_FOR_UNMERGEABLE:Lcom/fasterxml/jackson/databind/MapperFeature;

.field public static final enum INFER_CREATOR_FROM_CONSTRUCTOR_PROPERTIES:Lcom/fasterxml/jackson/databind/MapperFeature;

.field public static final enum INFER_PROPERTY_MUTATORS:Lcom/fasterxml/jackson/databind/MapperFeature;

.field public static final enum OVERRIDE_PUBLIC_ACCESS_MODIFIERS:Lcom/fasterxml/jackson/databind/MapperFeature;

.field public static final enum PROPAGATE_TRANSIENT_MARKER:Lcom/fasterxml/jackson/databind/MapperFeature;

.field public static final enum REQUIRE_SETTERS_FOR_GETTERS:Lcom/fasterxml/jackson/databind/MapperFeature;

.field public static final enum SORT_PROPERTIES_ALPHABETICALLY:Lcom/fasterxml/jackson/databind/MapperFeature;

.field public static final enum USE_ANNOTATIONS:Lcom/fasterxml/jackson/databind/MapperFeature;

.field public static final enum USE_BASE_TYPE_AS_DEFAULT_IMPL:Lcom/fasterxml/jackson/databind/MapperFeature;

.field public static final enum USE_GETTERS_AS_SETTERS:Lcom/fasterxml/jackson/databind/MapperFeature;

.field public static final enum USE_STATIC_TYPING:Lcom/fasterxml/jackson/databind/MapperFeature;

.field public static final enum USE_STD_BEAN_NAMING:Lcom/fasterxml/jackson/databind/MapperFeature;

.field public static final enum USE_WRAPPER_NAME_AS_PROPERTY_NAME:Lcom/fasterxml/jackson/databind/MapperFeature;


# instance fields
.field private final _defaultState:Z

.field private final _mask:I


# direct methods
.method static constructor <clinit>()V
    .locals 51

    .line 1
    new-instance v0, Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 2
    .line 3
    const-string v1, "USE_ANNOTATIONS"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    invoke-direct {v0, v1, v2, v3}, Lcom/fasterxml/jackson/databind/MapperFeature;-><init>(Ljava/lang/String;IZ)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/fasterxml/jackson/databind/MapperFeature;->USE_ANNOTATIONS:Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 11
    .line 12
    new-instance v1, Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 13
    .line 14
    const-string v4, "USE_GETTERS_AS_SETTERS"

    .line 15
    .line 16
    invoke-direct {v1, v4, v3, v3}, Lcom/fasterxml/jackson/databind/MapperFeature;-><init>(Ljava/lang/String;IZ)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lcom/fasterxml/jackson/databind/MapperFeature;->USE_GETTERS_AS_SETTERS:Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 20
    .line 21
    new-instance v4, Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 22
    .line 23
    const-string v5, "PROPAGATE_TRANSIENT_MARKER"

    .line 24
    .line 25
    const/4 v6, 0x2

    .line 26
    invoke-direct {v4, v5, v6, v2}, Lcom/fasterxml/jackson/databind/MapperFeature;-><init>(Ljava/lang/String;IZ)V

    .line 27
    .line 28
    .line 29
    sput-object v4, Lcom/fasterxml/jackson/databind/MapperFeature;->PROPAGATE_TRANSIENT_MARKER:Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 30
    .line 31
    new-instance v5, Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 32
    .line 33
    const-string v7, "AUTO_DETECT_CREATORS"

    .line 34
    .line 35
    const/4 v8, 0x3

    .line 36
    invoke-direct {v5, v7, v8, v3}, Lcom/fasterxml/jackson/databind/MapperFeature;-><init>(Ljava/lang/String;IZ)V

    .line 37
    .line 38
    .line 39
    sput-object v5, Lcom/fasterxml/jackson/databind/MapperFeature;->AUTO_DETECT_CREATORS:Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 40
    .line 41
    new-instance v7, Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 42
    .line 43
    const-string v9, "AUTO_DETECT_FIELDS"

    .line 44
    .line 45
    const/4 v10, 0x4

    .line 46
    invoke-direct {v7, v9, v10, v3}, Lcom/fasterxml/jackson/databind/MapperFeature;-><init>(Ljava/lang/String;IZ)V

    .line 47
    .line 48
    .line 49
    sput-object v7, Lcom/fasterxml/jackson/databind/MapperFeature;->AUTO_DETECT_FIELDS:Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 50
    .line 51
    new-instance v9, Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 52
    .line 53
    const-string v11, "AUTO_DETECT_GETTERS"

    .line 54
    .line 55
    const/4 v12, 0x5

    .line 56
    invoke-direct {v9, v11, v12, v3}, Lcom/fasterxml/jackson/databind/MapperFeature;-><init>(Ljava/lang/String;IZ)V

    .line 57
    .line 58
    .line 59
    sput-object v9, Lcom/fasterxml/jackson/databind/MapperFeature;->AUTO_DETECT_GETTERS:Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 60
    .line 61
    new-instance v11, Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 62
    .line 63
    const-string v13, "AUTO_DETECT_IS_GETTERS"

    .line 64
    .line 65
    const/4 v14, 0x6

    .line 66
    invoke-direct {v11, v13, v14, v3}, Lcom/fasterxml/jackson/databind/MapperFeature;-><init>(Ljava/lang/String;IZ)V

    .line 67
    .line 68
    .line 69
    sput-object v11, Lcom/fasterxml/jackson/databind/MapperFeature;->AUTO_DETECT_IS_GETTERS:Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 70
    .line 71
    new-instance v13, Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 72
    .line 73
    const-string v15, "AUTO_DETECT_SETTERS"

    .line 74
    .line 75
    move/from16 v16, v6

    .line 76
    .line 77
    const/4 v6, 0x7

    .line 78
    invoke-direct {v13, v15, v6, v3}, Lcom/fasterxml/jackson/databind/MapperFeature;-><init>(Ljava/lang/String;IZ)V

    .line 79
    .line 80
    .line 81
    sput-object v13, Lcom/fasterxml/jackson/databind/MapperFeature;->AUTO_DETECT_SETTERS:Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 82
    .line 83
    new-instance v15, Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 84
    .line 85
    move/from16 v17, v6

    .line 86
    .line 87
    const-string v6, "REQUIRE_SETTERS_FOR_GETTERS"

    .line 88
    .line 89
    move/from16 v18, v8

    .line 90
    .line 91
    const/16 v8, 0x8

    .line 92
    .line 93
    invoke-direct {v15, v6, v8, v2}, Lcom/fasterxml/jackson/databind/MapperFeature;-><init>(Ljava/lang/String;IZ)V

    .line 94
    .line 95
    .line 96
    sput-object v15, Lcom/fasterxml/jackson/databind/MapperFeature;->REQUIRE_SETTERS_FOR_GETTERS:Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 97
    .line 98
    new-instance v6, Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 99
    .line 100
    move/from16 v19, v8

    .line 101
    .line 102
    const-string v8, "ALLOW_FINAL_FIELDS_AS_MUTATORS"

    .line 103
    .line 104
    move/from16 v20, v10

    .line 105
    .line 106
    const/16 v10, 0x9

    .line 107
    .line 108
    invoke-direct {v6, v8, v10, v3}, Lcom/fasterxml/jackson/databind/MapperFeature;-><init>(Ljava/lang/String;IZ)V

    .line 109
    .line 110
    .line 111
    sput-object v6, Lcom/fasterxml/jackson/databind/MapperFeature;->ALLOW_FINAL_FIELDS_AS_MUTATORS:Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 112
    .line 113
    new-instance v8, Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 114
    .line 115
    move/from16 v21, v10

    .line 116
    .line 117
    const-string v10, "INFER_PROPERTY_MUTATORS"

    .line 118
    .line 119
    move/from16 v22, v12

    .line 120
    .line 121
    const/16 v12, 0xa

    .line 122
    .line 123
    invoke-direct {v8, v10, v12, v3}, Lcom/fasterxml/jackson/databind/MapperFeature;-><init>(Ljava/lang/String;IZ)V

    .line 124
    .line 125
    .line 126
    sput-object v8, Lcom/fasterxml/jackson/databind/MapperFeature;->INFER_PROPERTY_MUTATORS:Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 127
    .line 128
    new-instance v10, Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 129
    .line 130
    move/from16 v23, v12

    .line 131
    .line 132
    const-string v12, "INFER_CREATOR_FROM_CONSTRUCTOR_PROPERTIES"

    .line 133
    .line 134
    move/from16 v24, v14

    .line 135
    .line 136
    const/16 v14, 0xb

    .line 137
    .line 138
    invoke-direct {v10, v12, v14, v3}, Lcom/fasterxml/jackson/databind/MapperFeature;-><init>(Ljava/lang/String;IZ)V

    .line 139
    .line 140
    .line 141
    sput-object v10, Lcom/fasterxml/jackson/databind/MapperFeature;->INFER_CREATOR_FROM_CONSTRUCTOR_PROPERTIES:Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 142
    .line 143
    new-instance v12, Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 144
    .line 145
    move/from16 v25, v14

    .line 146
    .line 147
    const-string v14, "CAN_OVERRIDE_ACCESS_MODIFIERS"

    .line 148
    .line 149
    const/16 v2, 0xc

    .line 150
    .line 151
    invoke-direct {v12, v14, v2, v3}, Lcom/fasterxml/jackson/databind/MapperFeature;-><init>(Ljava/lang/String;IZ)V

    .line 152
    .line 153
    .line 154
    sput-object v12, Lcom/fasterxml/jackson/databind/MapperFeature;->CAN_OVERRIDE_ACCESS_MODIFIERS:Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 155
    .line 156
    new-instance v14, Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 157
    .line 158
    move/from16 v27, v2

    .line 159
    .line 160
    const-string v2, "OVERRIDE_PUBLIC_ACCESS_MODIFIERS"

    .line 161
    .line 162
    move-object/from16 v28, v0

    .line 163
    .line 164
    const/16 v0, 0xd

    .line 165
    .line 166
    invoke-direct {v14, v2, v0, v3}, Lcom/fasterxml/jackson/databind/MapperFeature;-><init>(Ljava/lang/String;IZ)V

    .line 167
    .line 168
    .line 169
    sput-object v14, Lcom/fasterxml/jackson/databind/MapperFeature;->OVERRIDE_PUBLIC_ACCESS_MODIFIERS:Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 170
    .line 171
    new-instance v2, Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 172
    .line 173
    move/from16 v29, v0

    .line 174
    .line 175
    const-string v0, "USE_STATIC_TYPING"

    .line 176
    .line 177
    const/16 v3, 0xe

    .line 178
    .line 179
    move-object/from16 v31, v1

    .line 180
    .line 181
    const/4 v1, 0x0

    .line 182
    invoke-direct {v2, v0, v3, v1}, Lcom/fasterxml/jackson/databind/MapperFeature;-><init>(Ljava/lang/String;IZ)V

    .line 183
    .line 184
    .line 185
    sput-object v2, Lcom/fasterxml/jackson/databind/MapperFeature;->USE_STATIC_TYPING:Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 186
    .line 187
    new-instance v0, Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 188
    .line 189
    move/from16 v32, v3

    .line 190
    .line 191
    const-string v3, "USE_BASE_TYPE_AS_DEFAULT_IMPL"

    .line 192
    .line 193
    move-object/from16 v33, v2

    .line 194
    .line 195
    const/16 v2, 0xf

    .line 196
    .line 197
    invoke-direct {v0, v3, v2, v1}, Lcom/fasterxml/jackson/databind/MapperFeature;-><init>(Ljava/lang/String;IZ)V

    .line 198
    .line 199
    .line 200
    sput-object v0, Lcom/fasterxml/jackson/databind/MapperFeature;->USE_BASE_TYPE_AS_DEFAULT_IMPL:Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 201
    .line 202
    new-instance v3, Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 203
    .line 204
    move/from16 v34, v2

    .line 205
    .line 206
    const-string v2, "DEFAULT_VIEW_INCLUSION"

    .line 207
    .line 208
    const/16 v1, 0x10

    .line 209
    .line 210
    move-object/from16 v35, v0

    .line 211
    .line 212
    const/4 v0, 0x1

    .line 213
    invoke-direct {v3, v2, v1, v0}, Lcom/fasterxml/jackson/databind/MapperFeature;-><init>(Ljava/lang/String;IZ)V

    .line 214
    .line 215
    .line 216
    sput-object v3, Lcom/fasterxml/jackson/databind/MapperFeature;->DEFAULT_VIEW_INCLUSION:Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 217
    .line 218
    new-instance v0, Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 219
    .line 220
    const-string v2, "SORT_PROPERTIES_ALPHABETICALLY"

    .line 221
    .line 222
    move/from16 v36, v1

    .line 223
    .line 224
    const/16 v1, 0x11

    .line 225
    .line 226
    move-object/from16 v37, v3

    .line 227
    .line 228
    const/4 v3, 0x0

    .line 229
    invoke-direct {v0, v2, v1, v3}, Lcom/fasterxml/jackson/databind/MapperFeature;-><init>(Ljava/lang/String;IZ)V

    .line 230
    .line 231
    .line 232
    sput-object v0, Lcom/fasterxml/jackson/databind/MapperFeature;->SORT_PROPERTIES_ALPHABETICALLY:Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 233
    .line 234
    new-instance v2, Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 235
    .line 236
    move/from16 v38, v1

    .line 237
    .line 238
    const-string v1, "ACCEPT_CASE_INSENSITIVE_PROPERTIES"

    .line 239
    .line 240
    move-object/from16 v39, v0

    .line 241
    .line 242
    const/16 v0, 0x12

    .line 243
    .line 244
    invoke-direct {v2, v1, v0, v3}, Lcom/fasterxml/jackson/databind/MapperFeature;-><init>(Ljava/lang/String;IZ)V

    .line 245
    .line 246
    .line 247
    sput-object v2, Lcom/fasterxml/jackson/databind/MapperFeature;->ACCEPT_CASE_INSENSITIVE_PROPERTIES:Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 248
    .line 249
    new-instance v1, Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 250
    .line 251
    move/from16 v40, v0

    .line 252
    .line 253
    const-string v0, "ACCEPT_CASE_INSENSITIVE_ENUMS"

    .line 254
    .line 255
    move-object/from16 v41, v2

    .line 256
    .line 257
    const/16 v2, 0x13

    .line 258
    .line 259
    invoke-direct {v1, v0, v2, v3}, Lcom/fasterxml/jackson/databind/MapperFeature;-><init>(Ljava/lang/String;IZ)V

    .line 260
    .line 261
    .line 262
    sput-object v1, Lcom/fasterxml/jackson/databind/MapperFeature;->ACCEPT_CASE_INSENSITIVE_ENUMS:Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 263
    .line 264
    new-instance v0, Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 265
    .line 266
    move/from16 v42, v2

    .line 267
    .line 268
    const-string v2, "ACCEPT_CASE_INSENSITIVE_VALUES"

    .line 269
    .line 270
    move-object/from16 v43, v1

    .line 271
    .line 272
    const/16 v1, 0x14

    .line 273
    .line 274
    invoke-direct {v0, v2, v1, v3}, Lcom/fasterxml/jackson/databind/MapperFeature;-><init>(Ljava/lang/String;IZ)V

    .line 275
    .line 276
    .line 277
    sput-object v0, Lcom/fasterxml/jackson/databind/MapperFeature;->ACCEPT_CASE_INSENSITIVE_VALUES:Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 278
    .line 279
    new-instance v2, Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 280
    .line 281
    move/from16 v44, v1

    .line 282
    .line 283
    const-string v1, "USE_WRAPPER_NAME_AS_PROPERTY_NAME"

    .line 284
    .line 285
    move-object/from16 v45, v0

    .line 286
    .line 287
    const/16 v0, 0x15

    .line 288
    .line 289
    invoke-direct {v2, v1, v0, v3}, Lcom/fasterxml/jackson/databind/MapperFeature;-><init>(Ljava/lang/String;IZ)V

    .line 290
    .line 291
    .line 292
    sput-object v2, Lcom/fasterxml/jackson/databind/MapperFeature;->USE_WRAPPER_NAME_AS_PROPERTY_NAME:Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 293
    .line 294
    new-instance v1, Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 295
    .line 296
    move/from16 v46, v0

    .line 297
    .line 298
    const-string v0, "USE_STD_BEAN_NAMING"

    .line 299
    .line 300
    move-object/from16 v47, v2

    .line 301
    .line 302
    const/16 v2, 0x16

    .line 303
    .line 304
    invoke-direct {v1, v0, v2, v3}, Lcom/fasterxml/jackson/databind/MapperFeature;-><init>(Ljava/lang/String;IZ)V

    .line 305
    .line 306
    .line 307
    sput-object v1, Lcom/fasterxml/jackson/databind/MapperFeature;->USE_STD_BEAN_NAMING:Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 308
    .line 309
    new-instance v0, Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 310
    .line 311
    const-string v2, "ALLOW_EXPLICIT_PROPERTY_RENAMING"

    .line 312
    .line 313
    move-object/from16 v48, v1

    .line 314
    .line 315
    const/16 v1, 0x17

    .line 316
    .line 317
    invoke-direct {v0, v2, v1, v3}, Lcom/fasterxml/jackson/databind/MapperFeature;-><init>(Ljava/lang/String;IZ)V

    .line 318
    .line 319
    .line 320
    sput-object v0, Lcom/fasterxml/jackson/databind/MapperFeature;->ALLOW_EXPLICIT_PROPERTY_RENAMING:Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 321
    .line 322
    new-instance v1, Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 323
    .line 324
    const-string v2, "ALLOW_COERCION_OF_SCALARS"

    .line 325
    .line 326
    const/16 v3, 0x18

    .line 327
    .line 328
    move-object/from16 v49, v0

    .line 329
    .line 330
    const/4 v0, 0x1

    .line 331
    invoke-direct {v1, v2, v3, v0}, Lcom/fasterxml/jackson/databind/MapperFeature;-><init>(Ljava/lang/String;IZ)V

    .line 332
    .line 333
    .line 334
    sput-object v1, Lcom/fasterxml/jackson/databind/MapperFeature;->ALLOW_COERCION_OF_SCALARS:Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 335
    .line 336
    new-instance v2, Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 337
    .line 338
    const-string v3, "IGNORE_DUPLICATE_MODULE_REGISTRATIONS"

    .line 339
    .line 340
    move-object/from16 v30, v1

    .line 341
    .line 342
    const/16 v1, 0x19

    .line 343
    .line 344
    invoke-direct {v2, v3, v1, v0}, Lcom/fasterxml/jackson/databind/MapperFeature;-><init>(Ljava/lang/String;IZ)V

    .line 345
    .line 346
    .line 347
    sput-object v2, Lcom/fasterxml/jackson/databind/MapperFeature;->IGNORE_DUPLICATE_MODULE_REGISTRATIONS:Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 348
    .line 349
    new-instance v1, Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 350
    .line 351
    const-string v3, "IGNORE_MERGE_FOR_UNMERGEABLE"

    .line 352
    .line 353
    move-object/from16 v50, v2

    .line 354
    .line 355
    const/16 v2, 0x1a

    .line 356
    .line 357
    invoke-direct {v1, v3, v2, v0}, Lcom/fasterxml/jackson/databind/MapperFeature;-><init>(Ljava/lang/String;IZ)V

    .line 358
    .line 359
    .line 360
    sput-object v1, Lcom/fasterxml/jackson/databind/MapperFeature;->IGNORE_MERGE_FOR_UNMERGEABLE:Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 361
    .line 362
    const/16 v2, 0x1b

    .line 363
    .line 364
    new-array v2, v2, [Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 365
    .line 366
    const/16 v26, 0x0

    .line 367
    .line 368
    aput-object v28, v2, v26

    .line 369
    .line 370
    aput-object v31, v2, v0

    .line 371
    .line 372
    aput-object v4, v2, v16

    .line 373
    .line 374
    aput-object v5, v2, v18

    .line 375
    .line 376
    aput-object v7, v2, v20

    .line 377
    .line 378
    aput-object v9, v2, v22

    .line 379
    .line 380
    aput-object v11, v2, v24

    .line 381
    .line 382
    aput-object v13, v2, v17

    .line 383
    .line 384
    aput-object v15, v2, v19

    .line 385
    .line 386
    aput-object v6, v2, v21

    .line 387
    .line 388
    aput-object v8, v2, v23

    .line 389
    .line 390
    aput-object v10, v2, v25

    .line 391
    .line 392
    aput-object v12, v2, v27

    .line 393
    .line 394
    aput-object v14, v2, v29

    .line 395
    .line 396
    aput-object v33, v2, v32

    .line 397
    .line 398
    aput-object v35, v2, v34

    .line 399
    .line 400
    aput-object v37, v2, v36

    .line 401
    .line 402
    aput-object v39, v2, v38

    .line 403
    .line 404
    aput-object v41, v2, v40

    .line 405
    .line 406
    aput-object v43, v2, v42

    .line 407
    .line 408
    aput-object v45, v2, v44

    .line 409
    .line 410
    aput-object v47, v2, v46

    .line 411
    .line 412
    const/16 v0, 0x16

    .line 413
    .line 414
    aput-object v48, v2, v0

    .line 415
    .line 416
    const/16 v0, 0x17

    .line 417
    .line 418
    aput-object v49, v2, v0

    .line 419
    .line 420
    const/16 v0, 0x18

    .line 421
    .line 422
    aput-object v30, v2, v0

    .line 423
    .line 424
    const/16 v0, 0x19

    .line 425
    .line 426
    aput-object v50, v2, v0

    .line 427
    .line 428
    const/16 v0, 0x1a

    .line 429
    .line 430
    aput-object v1, v2, v0

    .line 431
    .line 432
    sput-object v2, Lcom/fasterxml/jackson/databind/MapperFeature;->$VALUES:[Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 433
    .line 434
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
    iput-boolean p3, p0, Lcom/fasterxml/jackson/databind/MapperFeature;->_defaultState:Z

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
    iput p1, p0, Lcom/fasterxml/jackson/databind/MapperFeature;->_mask:I

    .line 13
    .line 14
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/MapperFeature;
    .locals 1

    .line 1
    const-class v0, Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/fasterxml/jackson/databind/MapperFeature;
    .locals 1

    .line 1
    sget-object v0, Lcom/fasterxml/jackson/databind/MapperFeature;->$VALUES:[Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/fasterxml/jackson/databind/MapperFeature;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public enabledByDefault()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/MapperFeature;->_defaultState:Z

    .line 2
    .line 3
    return v0
.end method

.method public enabledIn(I)Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/fasterxml/jackson/databind/MapperFeature;->_mask:I

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
    iget v0, p0, Lcom/fasterxml/jackson/databind/MapperFeature;->_mask:I

    .line 2
    .line 3
    return v0
.end method
