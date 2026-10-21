.class public final enum Lorg/apache/commons/lang3/JavaVersion;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/commons/lang3/JavaVersion;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/lang3/JavaVersion;

.field public static final enum JAVA_0_9:Lorg/apache/commons/lang3/JavaVersion;

.field public static final enum JAVA_10:Lorg/apache/commons/lang3/JavaVersion;

.field public static final enum JAVA_11:Lorg/apache/commons/lang3/JavaVersion;

.field public static final enum JAVA_1_1:Lorg/apache/commons/lang3/JavaVersion;

.field public static final enum JAVA_1_2:Lorg/apache/commons/lang3/JavaVersion;

.field public static final enum JAVA_1_3:Lorg/apache/commons/lang3/JavaVersion;

.field public static final enum JAVA_1_4:Lorg/apache/commons/lang3/JavaVersion;

.field public static final enum JAVA_1_5:Lorg/apache/commons/lang3/JavaVersion;

.field public static final enum JAVA_1_6:Lorg/apache/commons/lang3/JavaVersion;

.field public static final enum JAVA_1_7:Lorg/apache/commons/lang3/JavaVersion;

.field public static final enum JAVA_1_8:Lorg/apache/commons/lang3/JavaVersion;

.field public static final enum JAVA_1_9:Lorg/apache/commons/lang3/JavaVersion;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum JAVA_9:Lorg/apache/commons/lang3/JavaVersion;

.field public static final enum JAVA_RECENT:Lorg/apache/commons/lang3/JavaVersion;


# instance fields
.field private final name:Ljava/lang/String;

.field private final value:F


# direct methods
.method static constructor <clinit>()V
    .locals 31

    .line 1
    new-instance v0, Lorg/apache/commons/lang3/JavaVersion;

    .line 2
    .line 3
    const-string v1, "0.9"

    .line 4
    .line 5
    const-string v2, "JAVA_0_9"

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/high16 v4, 0x3fc00000    # 1.5f

    .line 9
    .line 10
    invoke-direct {v0, v2, v3, v4, v1}, Lorg/apache/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lorg/apache/commons/lang3/JavaVersion;->JAVA_0_9:Lorg/apache/commons/lang3/JavaVersion;

    .line 14
    .line 15
    new-instance v1, Lorg/apache/commons/lang3/JavaVersion;

    .line 16
    .line 17
    const v2, 0x3f8ccccd    # 1.1f

    .line 18
    .line 19
    .line 20
    const-string v5, "1.1"

    .line 21
    .line 22
    const-string v6, "JAVA_1_1"

    .line 23
    .line 24
    const/4 v7, 0x1

    .line 25
    invoke-direct {v1, v6, v7, v2, v5}, Lorg/apache/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    .line 26
    .line 27
    .line 28
    sput-object v1, Lorg/apache/commons/lang3/JavaVersion;->JAVA_1_1:Lorg/apache/commons/lang3/JavaVersion;

    .line 29
    .line 30
    new-instance v2, Lorg/apache/commons/lang3/JavaVersion;

    .line 31
    .line 32
    const v5, 0x3f99999a    # 1.2f

    .line 33
    .line 34
    .line 35
    const-string v6, "1.2"

    .line 36
    .line 37
    const-string v8, "JAVA_1_2"

    .line 38
    .line 39
    const/4 v9, 0x2

    .line 40
    invoke-direct {v2, v8, v9, v5, v6}, Lorg/apache/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    .line 41
    .line 42
    .line 43
    sput-object v2, Lorg/apache/commons/lang3/JavaVersion;->JAVA_1_2:Lorg/apache/commons/lang3/JavaVersion;

    .line 44
    .line 45
    new-instance v5, Lorg/apache/commons/lang3/JavaVersion;

    .line 46
    .line 47
    const v6, 0x3fa66666    # 1.3f

    .line 48
    .line 49
    .line 50
    const-string v8, "1.3"

    .line 51
    .line 52
    const-string v10, "JAVA_1_3"

    .line 53
    .line 54
    const/4 v11, 0x3

    .line 55
    invoke-direct {v5, v10, v11, v6, v8}, Lorg/apache/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    .line 56
    .line 57
    .line 58
    sput-object v5, Lorg/apache/commons/lang3/JavaVersion;->JAVA_1_3:Lorg/apache/commons/lang3/JavaVersion;

    .line 59
    .line 60
    new-instance v6, Lorg/apache/commons/lang3/JavaVersion;

    .line 61
    .line 62
    const v8, 0x3fb33333    # 1.4f

    .line 63
    .line 64
    .line 65
    const-string v10, "1.4"

    .line 66
    .line 67
    const-string v12, "JAVA_1_4"

    .line 68
    .line 69
    const/4 v13, 0x4

    .line 70
    invoke-direct {v6, v12, v13, v8, v10}, Lorg/apache/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    .line 71
    .line 72
    .line 73
    sput-object v6, Lorg/apache/commons/lang3/JavaVersion;->JAVA_1_4:Lorg/apache/commons/lang3/JavaVersion;

    .line 74
    .line 75
    new-instance v8, Lorg/apache/commons/lang3/JavaVersion;

    .line 76
    .line 77
    const/4 v10, 0x5

    .line 78
    const-string v12, "1.5"

    .line 79
    .line 80
    const-string v14, "JAVA_1_5"

    .line 81
    .line 82
    invoke-direct {v8, v14, v10, v4, v12}, Lorg/apache/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    .line 83
    .line 84
    .line 85
    sput-object v8, Lorg/apache/commons/lang3/JavaVersion;->JAVA_1_5:Lorg/apache/commons/lang3/JavaVersion;

    .line 86
    .line 87
    new-instance v4, Lorg/apache/commons/lang3/JavaVersion;

    .line 88
    .line 89
    const v12, 0x3fcccccd    # 1.6f

    .line 90
    .line 91
    .line 92
    const-string v14, "1.6"

    .line 93
    .line 94
    const-string v15, "JAVA_1_6"

    .line 95
    .line 96
    move/from16 v16, v3

    .line 97
    .line 98
    const/4 v3, 0x6

    .line 99
    invoke-direct {v4, v15, v3, v12, v14}, Lorg/apache/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    .line 100
    .line 101
    .line 102
    sput-object v4, Lorg/apache/commons/lang3/JavaVersion;->JAVA_1_6:Lorg/apache/commons/lang3/JavaVersion;

    .line 103
    .line 104
    new-instance v12, Lorg/apache/commons/lang3/JavaVersion;

    .line 105
    .line 106
    const v14, 0x3fd9999a    # 1.7f

    .line 107
    .line 108
    .line 109
    const-string v15, "1.7"

    .line 110
    .line 111
    move/from16 v17, v3

    .line 112
    .line 113
    const-string v3, "JAVA_1_7"

    .line 114
    .line 115
    move/from16 v18, v7

    .line 116
    .line 117
    const/4 v7, 0x7

    .line 118
    invoke-direct {v12, v3, v7, v14, v15}, Lorg/apache/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    .line 119
    .line 120
    .line 121
    sput-object v12, Lorg/apache/commons/lang3/JavaVersion;->JAVA_1_7:Lorg/apache/commons/lang3/JavaVersion;

    .line 122
    .line 123
    new-instance v3, Lorg/apache/commons/lang3/JavaVersion;

    .line 124
    .line 125
    const v14, 0x3fe66666    # 1.8f

    .line 126
    .line 127
    .line 128
    const-string v15, "1.8"

    .line 129
    .line 130
    move/from16 v19, v7

    .line 131
    .line 132
    const-string v7, "JAVA_1_8"

    .line 133
    .line 134
    move/from16 v20, v9

    .line 135
    .line 136
    const/16 v9, 0x8

    .line 137
    .line 138
    invoke-direct {v3, v7, v9, v14, v15}, Lorg/apache/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    .line 139
    .line 140
    .line 141
    sput-object v3, Lorg/apache/commons/lang3/JavaVersion;->JAVA_1_8:Lorg/apache/commons/lang3/JavaVersion;

    .line 142
    .line 143
    new-instance v7, Lorg/apache/commons/lang3/JavaVersion;

    .line 144
    .line 145
    const-string v14, "JAVA_1_9"

    .line 146
    .line 147
    const/16 v15, 0x9

    .line 148
    .line 149
    move/from16 v21, v9

    .line 150
    .line 151
    const/high16 v9, 0x41100000    # 9.0f

    .line 152
    .line 153
    move/from16 v22, v10

    .line 154
    .line 155
    const-string v10, "9"

    .line 156
    .line 157
    invoke-direct {v7, v14, v15, v9, v10}, Lorg/apache/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    .line 158
    .line 159
    .line 160
    sput-object v7, Lorg/apache/commons/lang3/JavaVersion;->JAVA_1_9:Lorg/apache/commons/lang3/JavaVersion;

    .line 161
    .line 162
    new-instance v14, Lorg/apache/commons/lang3/JavaVersion;

    .line 163
    .line 164
    move/from16 v23, v11

    .line 165
    .line 166
    const-string v11, "JAVA_9"

    .line 167
    .line 168
    move/from16 v24, v13

    .line 169
    .line 170
    const/16 v13, 0xa

    .line 171
    .line 172
    invoke-direct {v14, v11, v13, v9, v10}, Lorg/apache/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    .line 173
    .line 174
    .line 175
    sput-object v14, Lorg/apache/commons/lang3/JavaVersion;->JAVA_9:Lorg/apache/commons/lang3/JavaVersion;

    .line 176
    .line 177
    new-instance v9, Lorg/apache/commons/lang3/JavaVersion;

    .line 178
    .line 179
    const/high16 v10, 0x41200000    # 10.0f

    .line 180
    .line 181
    const-string v11, "10"

    .line 182
    .line 183
    move/from16 v25, v13

    .line 184
    .line 185
    const-string v13, "JAVA_10"

    .line 186
    .line 187
    move/from16 v26, v15

    .line 188
    .line 189
    const/16 v15, 0xb

    .line 190
    .line 191
    invoke-direct {v9, v13, v15, v10, v11}, Lorg/apache/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    .line 192
    .line 193
    .line 194
    sput-object v9, Lorg/apache/commons/lang3/JavaVersion;->JAVA_10:Lorg/apache/commons/lang3/JavaVersion;

    .line 195
    .line 196
    new-instance v10, Lorg/apache/commons/lang3/JavaVersion;

    .line 197
    .line 198
    const/high16 v11, 0x41300000    # 11.0f

    .line 199
    .line 200
    const-string v13, "11"

    .line 201
    .line 202
    move/from16 v27, v15

    .line 203
    .line 204
    const-string v15, "JAVA_11"

    .line 205
    .line 206
    move-object/from16 v28, v0

    .line 207
    .line 208
    const/16 v0, 0xc

    .line 209
    .line 210
    invoke-direct {v10, v15, v0, v11, v13}, Lorg/apache/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    .line 211
    .line 212
    .line 213
    sput-object v10, Lorg/apache/commons/lang3/JavaVersion;->JAVA_11:Lorg/apache/commons/lang3/JavaVersion;

    .line 214
    .line 215
    new-instance v11, Lorg/apache/commons/lang3/JavaVersion;

    .line 216
    .line 217
    invoke-static {}, Lorg/apache/commons/lang3/JavaVersion;->maxVersion()F

    .line 218
    .line 219
    .line 220
    move-result v13

    .line 221
    invoke-static {}, Lorg/apache/commons/lang3/JavaVersion;->maxVersion()F

    .line 222
    .line 223
    .line 224
    move-result v15

    .line 225
    invoke-static {v15}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v15

    .line 229
    move/from16 v29, v0

    .line 230
    .line 231
    const-string v0, "JAVA_RECENT"

    .line 232
    .line 233
    move-object/from16 v30, v1

    .line 234
    .line 235
    const/16 v1, 0xd

    .line 236
    .line 237
    invoke-direct {v11, v0, v1, v13, v15}, Lorg/apache/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    .line 238
    .line 239
    .line 240
    sput-object v11, Lorg/apache/commons/lang3/JavaVersion;->JAVA_RECENT:Lorg/apache/commons/lang3/JavaVersion;

    .line 241
    .line 242
    const/16 v0, 0xe

    .line 243
    .line 244
    new-array v0, v0, [Lorg/apache/commons/lang3/JavaVersion;

    .line 245
    .line 246
    aput-object v28, v0, v16

    .line 247
    .line 248
    aput-object v30, v0, v18

    .line 249
    .line 250
    aput-object v2, v0, v20

    .line 251
    .line 252
    aput-object v5, v0, v23

    .line 253
    .line 254
    aput-object v6, v0, v24

    .line 255
    .line 256
    aput-object v8, v0, v22

    .line 257
    .line 258
    aput-object v4, v0, v17

    .line 259
    .line 260
    aput-object v12, v0, v19

    .line 261
    .line 262
    aput-object v3, v0, v21

    .line 263
    .line 264
    aput-object v7, v0, v26

    .line 265
    .line 266
    aput-object v14, v0, v25

    .line 267
    .line 268
    aput-object v9, v0, v27

    .line 269
    .line 270
    aput-object v10, v0, v29

    .line 271
    .line 272
    aput-object v11, v0, v1

    .line 273
    .line 274
    sput-object v0, Lorg/apache/commons/lang3/JavaVersion;->$VALUES:[Lorg/apache/commons/lang3/JavaVersion;

    .line 275
    .line 276
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IFLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lorg/apache/commons/lang3/JavaVersion;->value:F

    .line 5
    .line 6
    iput-object p4, p0, Lorg/apache/commons/lang3/JavaVersion;->name:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public static get(Ljava/lang/String;)Lorg/apache/commons/lang3/JavaVersion;
    .locals 6

    .line 1
    const-string v0, "0.9"

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    sget-object p0, Lorg/apache/commons/lang3/JavaVersion;->JAVA_0_9:Lorg/apache/commons/lang3/JavaVersion;

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    const-string v0, "1.1"

    .line 13
    .line 14
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    sget-object p0, Lorg/apache/commons/lang3/JavaVersion;->JAVA_1_1:Lorg/apache/commons/lang3/JavaVersion;

    .line 21
    .line 22
    return-object p0

    .line 23
    :cond_1
    const-string v0, "1.2"

    .line 24
    .line 25
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    sget-object p0, Lorg/apache/commons/lang3/JavaVersion;->JAVA_1_2:Lorg/apache/commons/lang3/JavaVersion;

    .line 32
    .line 33
    return-object p0

    .line 34
    :cond_2
    const-string v0, "1.3"

    .line 35
    .line 36
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_3

    .line 41
    .line 42
    sget-object p0, Lorg/apache/commons/lang3/JavaVersion;->JAVA_1_3:Lorg/apache/commons/lang3/JavaVersion;

    .line 43
    .line 44
    return-object p0

    .line 45
    :cond_3
    const-string v0, "1.4"

    .line 46
    .line 47
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_4

    .line 52
    .line 53
    sget-object p0, Lorg/apache/commons/lang3/JavaVersion;->JAVA_1_4:Lorg/apache/commons/lang3/JavaVersion;

    .line 54
    .line 55
    return-object p0

    .line 56
    :cond_4
    const-string v0, "1.5"

    .line 57
    .line 58
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-eqz v0, :cond_5

    .line 63
    .line 64
    sget-object p0, Lorg/apache/commons/lang3/JavaVersion;->JAVA_1_5:Lorg/apache/commons/lang3/JavaVersion;

    .line 65
    .line 66
    return-object p0

    .line 67
    :cond_5
    const-string v0, "1.6"

    .line 68
    .line 69
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-eqz v0, :cond_6

    .line 74
    .line 75
    sget-object p0, Lorg/apache/commons/lang3/JavaVersion;->JAVA_1_6:Lorg/apache/commons/lang3/JavaVersion;

    .line 76
    .line 77
    return-object p0

    .line 78
    :cond_6
    const-string v0, "1.7"

    .line 79
    .line 80
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    if-eqz v0, :cond_7

    .line 85
    .line 86
    sget-object p0, Lorg/apache/commons/lang3/JavaVersion;->JAVA_1_7:Lorg/apache/commons/lang3/JavaVersion;

    .line 87
    .line 88
    return-object p0

    .line 89
    :cond_7
    const-string v0, "1.8"

    .line 90
    .line 91
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    if-eqz v0, :cond_8

    .line 96
    .line 97
    sget-object p0, Lorg/apache/commons/lang3/JavaVersion;->JAVA_1_8:Lorg/apache/commons/lang3/JavaVersion;

    .line 98
    .line 99
    return-object p0

    .line 100
    :cond_8
    const-string v0, "9"

    .line 101
    .line 102
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    if-eqz v0, :cond_9

    .line 107
    .line 108
    sget-object p0, Lorg/apache/commons/lang3/JavaVersion;->JAVA_9:Lorg/apache/commons/lang3/JavaVersion;

    .line 109
    .line 110
    return-object p0

    .line 111
    :cond_9
    const-string v0, "10"

    .line 112
    .line 113
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    if-eqz v0, :cond_a

    .line 118
    .line 119
    sget-object p0, Lorg/apache/commons/lang3/JavaVersion;->JAVA_10:Lorg/apache/commons/lang3/JavaVersion;

    .line 120
    .line 121
    return-object p0

    .line 122
    :cond_a
    const-string v0, "11"

    .line 123
    .line 124
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result v0

    .line 128
    if-eqz v0, :cond_b

    .line 129
    .line 130
    sget-object p0, Lorg/apache/commons/lang3/JavaVersion;->JAVA_11:Lorg/apache/commons/lang3/JavaVersion;

    .line 131
    .line 132
    return-object p0

    .line 133
    :cond_b
    const/4 v0, 0x0

    .line 134
    if-nez p0, :cond_c

    .line 135
    .line 136
    return-object v0

    .line 137
    :cond_c
    invoke-static {p0}, Lorg/apache/commons/lang3/JavaVersion;->toFloatVersion(Ljava/lang/String;)F

    .line 138
    .line 139
    .line 140
    move-result v1

    .line 141
    float-to-double v2, v1

    .line 142
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 143
    .line 144
    sub-double/2addr v2, v4

    .line 145
    cmpg-double v2, v2, v4

    .line 146
    .line 147
    if-gez v2, :cond_d

    .line 148
    .line 149
    const/16 v1, 0x2e

    .line 150
    .line 151
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    .line 152
    .line 153
    .line 154
    move-result v1

    .line 155
    const/16 v2, 0x2c

    .line 156
    .line 157
    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    .line 158
    .line 159
    .line 160
    move-result v3

    .line 161
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    .line 162
    .line 163
    .line 164
    move-result v1

    .line 165
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 166
    .line 167
    .line 168
    move-result v3

    .line 169
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->indexOf(II)I

    .line 170
    .line 171
    .line 172
    move-result v2

    .line 173
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    .line 174
    .line 175
    .line 176
    move-result v2

    .line 177
    add-int/lit8 v1, v1, 0x1

    .line 178
    .line 179
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object p0

    .line 183
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 184
    .line 185
    .line 186
    move-result p0

    .line 187
    const v1, 0x3f666666    # 0.9f

    .line 188
    .line 189
    .line 190
    cmpl-float p0, p0, v1

    .line 191
    .line 192
    if-lez p0, :cond_e

    .line 193
    .line 194
    sget-object p0, Lorg/apache/commons/lang3/JavaVersion;->JAVA_RECENT:Lorg/apache/commons/lang3/JavaVersion;

    .line 195
    .line 196
    return-object p0

    .line 197
    :cond_d
    const/high16 p0, 0x41200000    # 10.0f

    .line 198
    .line 199
    cmpl-float p0, v1, p0

    .line 200
    .line 201
    if-lez p0, :cond_e

    .line 202
    .line 203
    sget-object p0, Lorg/apache/commons/lang3/JavaVersion;->JAVA_RECENT:Lorg/apache/commons/lang3/JavaVersion;

    .line 204
    .line 205
    return-object p0

    .line 206
    :cond_e
    return-object v0
.end method

.method public static getJavaVersion(Ljava/lang/String;)Lorg/apache/commons/lang3/JavaVersion;
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/apache/commons/lang3/JavaVersion;->get(Ljava/lang/String;)Lorg/apache/commons/lang3/JavaVersion;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static maxVersion()F
    .locals 2

    .line 1
    const-string v0, "java.specification.version"

    .line 2
    .line 3
    const-string v1, "99.0"

    .line 4
    .line 5
    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Lorg/apache/commons/lang3/JavaVersion;->toFloatVersion(Ljava/lang/String;)F

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x0

    .line 14
    cmpl-float v1, v0, v1

    .line 15
    .line 16
    if-lez v1, :cond_0

    .line 17
    .line 18
    return v0

    .line 19
    :cond_0
    const/high16 v0, 0x42c60000    # 99.0f

    .line 20
    .line 21
    return v0
.end method

.method private static toFloatVersion(Ljava/lang/String;)F
    .locals 3

    .line 1
    const-string v0, "."

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/high16 v1, -0x40800000    # -1.0f

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    const-string v0, "\\."

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    array-length v0, p0

    .line 18
    const/4 v2, 0x2

    .line 19
    if-lt v0, v2, :cond_0

    .line 20
    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    const/4 v2, 0x0

    .line 27
    aget-object v2, p0, v2

    .line 28
    .line 29
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const/16 v2, 0x2e

    .line 33
    .line 34
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const/4 v2, 0x1

    .line 38
    aget-object p0, p0, v2

    .line 39
    .line 40
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-static {p0, v1}, Lorg/apache/commons/lang3/math/NumberUtils;->toFloat(Ljava/lang/String;F)F

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    return p0

    .line 52
    :cond_0
    return v1

    .line 53
    :cond_1
    invoke-static {p0, v1}, Lorg/apache/commons/lang3/math/NumberUtils;->toFloat(Ljava/lang/String;F)F

    .line 54
    .line 55
    .line 56
    move-result p0

    .line 57
    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/lang3/JavaVersion;
    .locals 1

    .line 1
    const-class v0, Lorg/apache/commons/lang3/JavaVersion;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/apache/commons/lang3/JavaVersion;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lorg/apache/commons/lang3/JavaVersion;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/lang3/JavaVersion;->$VALUES:[Lorg/apache/commons/lang3/JavaVersion;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lorg/apache/commons/lang3/JavaVersion;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lorg/apache/commons/lang3/JavaVersion;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public atLeast(Lorg/apache/commons/lang3/JavaVersion;)Z
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/commons/lang3/JavaVersion;->value:F

    .line 2
    .line 3
    iget p1, p1, Lorg/apache/commons/lang3/JavaVersion;->value:F

    .line 4
    .line 5
    cmpl-float p1, v0, p1

    .line 6
    .line 7
    if-ltz p1, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    return p1

    .line 11
    :cond_0
    const/4 p1, 0x0

    .line 12
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/lang3/JavaVersion;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
